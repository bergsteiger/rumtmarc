unit CsReplyProcedures;

{ $Id: CsReplyProcedures.pas,v 1.4 2013/04/24 09:35:37 lulin Exp $ }

// $Log: CsReplyProcedures.pas,v $
// Revision 1.4  2013/04/24 09:35:37  lulin
// - портируем.
//
// Revision 1.3  2011/12/08 12:32:12  narry
// Отображается не вся очередь заданий (304874341)
//
// Revision 1.2  2006/03/10 09:29:12  voba
// - enh. убрал CsFree etc.
//
// Revision 1.1  2006/02/08 17:24:29  step
// выполнение запросов перенесено из классов-потомков в процедуры объектов
//

{$I CsDefine.inc}

interface

uses
 Classes, Contnrs, SysUtils,
 IdGlobal,
 CsCommon, CsObject, CsDataPipe, CsQueryTypes;

type
 TCsReplyProc = procedure (aPipe: TCsDataPipe) of object;

 TCsProcWithId = class(TCsObject)
 public
  QueryId: TCsQueryId;
  Proc: TCsReplyProc;
  constructor Create(aQueryId: TCsQueryId; aProc: TCsReplyProc); reintroduce;
 end;

 TCsReplyProcedures = class(TCsObject)
 private
  f_List: TObjectList;
  f_Synchronizer: TMultiReadExclusiveWriteSynchronizer;
 protected
  procedure Cleanup; override;
  function ListItemBy(aQueryId: TCsQueryId): TCsProcWithId;
 public
  constructor Create;
  procedure Add(aQueryId: TCsQueryId; aProc: TCsReplyProc);
  procedure Clear;
  function ProcBy(aQueryId: TCsQueryId): TCsReplyProc;
 end;

implementation

uses
 l3Base, TypInfo;

{ TCsProcWithId }

constructor TCsProcWithId.Create(aQueryId: TCsQueryId;
                                 aProc: TCsReplyProc);
begin
 QueryId := aQueryId;
 Proc := aProc;
end;

{ TCsReplyProcedures }

procedure TCsReplyProcedures.Add(aQueryId: TCsQueryId;
                                 aProc: TCsReplyProc);
var
 l_ProcWithId: TCsProcWithId;
begin
 Assert(Assigned(aProc));
 f_Synchronizer.BeginWrite;
 try
  l_ProcWithId := ListItemBy(aQueryId);
  if l_ProcWithId <> nil then
  begin
   l_ProcWithId.Proc := aProc;
   l3System.Msg2Log('Переопределение обработчика для %s', [GetEnumName(TypeInfo(TcsQueryID), ord(aQueryID))]);
  end
  else
   f_List.Add(TCsProcWithId.Create(aQueryId, aProc));
 finally
  f_Synchronizer.EndWrite;
 end;
end;

procedure TCsReplyProcedures.Cleanup;
begin
 l3Free(f_Synchronizer);
 l3Free(f_List);
 inherited;
end;

procedure TCsReplyProcedures.Clear;
begin
 f_Synchronizer.BeginWrite;
 try
  f_List.Clear;
 finally
  f_Synchronizer.EndWrite;
 end;
end;

constructor TCsReplyProcedures.Create;
begin
 f_List := TObjectList.Create(True);
 f_Synchronizer := TMultiReadExclusiveWriteSynchronizer.Create;
end;

function TCsReplyProcedures.ListItemBy(aQueryId: TCsQueryId): TCsProcWithId;
var
 I: Integer;
begin
 Result := nil;
 for I := 0 to f_List.Count - 1 do
  if TCsProcWithId(f_List[I]).QueryId = aQueryId then
  begin
   Result := TCsProcWithId(f_List[I]);
   Break;
  end;
end;

function TCsReplyProcedures.ProcBy(aQueryId: TCsQueryId): TCsReplyProc;
var
 l_ProcWithId: TCsProcWithId;
begin
 f_Synchronizer.BeginRead;
 try
  l_ProcWithId := ListItemBy(aQueryId);
  if l_ProcWithId <> nil then
   Result := l_ProcWithId.Proc
  else
   Result := nil;
 finally
  f_Synchronizer.EndRead;
 end;
end;

end.

