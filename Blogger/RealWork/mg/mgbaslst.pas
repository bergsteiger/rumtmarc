unit mgBasLst;

(*
//
// module:  mgbaslst.pas
// author:  Mickael P. Golovin
//
// $Id: mgbaslst.pas,v 1.19 2011/05/18 12:10:47 lulin Exp $
//
*)

{$Include m0Define.inc}

interface

uses
  Windows,
  Messages,
  SysUtils,
  Consts,
  Classes,

  l3Types,
  l3Except,
  l3Base,
  l3ProtoObjectRefList,
  l3ProtoObject,

  m0Const,
  m0AddTyp,
  m0S32Lib,
  m0MEMLib,
  m0HASLib,
  m0IDPLib,
  mgConst,
  mgBasObj
  ;

type
 TmgBaseList = class(Tl3ProtoObjectRefList)
 private
 protected
  FClaDoneProcHandle: Pm0IDPLibDoneProcHandle;
  procedure Cleanup; override;
 end;

 EmgBasePointerList = class(El3Exception);

 TmgBasePointerList = class(TmgBaseList)
 private
 protected
  FItemsCRC: Longint;
  procedure pm_SetCount(ACount: Longint); override;
  procedure DoSetItem(AIndex: Longint; const AItem: Tl3ProtoObject); override;
  procedure AllocItem(var AItem: Pointer); virtual; abstract;
  procedure AssignItem(AItem1: Pointer; AItem2: Pointer); virtual; abstract;
(*  procedure LoadItem(AStream: TStream; AItem: Pointer); virtual;
  procedure SaveItem(AStream: TStream; AItem: Pointer); virtual;
  procedure ExportItem(AStream: TStream; AItem: Pointer); virtual;*)
  function CompareKeyByItem(AKey: Pointer; AItem: Pointer): Integer; virtual;
  function FindItemByKey(AKey: Pointer; var AIndex: Longint): LongBool;
 public
  procedure DirectInsert(AIndex: Longint; const AItem: Tl3ProtoObject); override;
(*  procedure Assign(ASource: TmgBasePointerList); reintroduce;
  procedure LoadFromStream(AStream: TStream);
  procedure LoadFromStreamEx(APos: LongWord; AStream: TStream);
  procedure SaveToStream(AStream: TStream);
    reintroduce;
  function SaveToStreamEx(AStream: TStream): int64;
  procedure ExportToStream(AStream: TStream);*)
 end;

 EmgBaseHandle = class(El3Exception);

 TmgBaseHandle = class(TmgBaseObject)
(* private
 protected
  procedure LoadBuff(var ACRC: Longint; ABuff: Pointer; ASize: LongWord; AStream: TStream);
  procedure SaveBuff(var ACRC: Longint; ABuff: Pointer; ASize: LongWord; AStream: TStream);
  procedure LoadString(var ACRC: Longint; var AString: string; AStream: TStream);
  procedure SaveString(var ACRC: Longint; const AString: string; AStream: TStream);
  procedure ExportString(const AString: string; AStream: TStream);*)
 public
  procedure AssignHandle(AItem: TmgBaseHandle); virtual;
(*  procedure LoadHandle(var ACRC: Longint; AStream: TStream); virtual;
  procedure SaveHandle(var ACRC: Longint; AStream: TStream); virtual;
  procedure ExportHandle(AStream: TStream); virtual;*)
 end;

 TmgBaseHandleList = class(TmgBasePointerList)
 private
 protected
  procedure AssignItem(AItem1: Pointer; AItem2: Pointer); override;
(*  procedure LoadItem(AStream: TStream; AItem: Pointer); override;
  procedure SaveItem(AStream: TStream; AItem: Pointer); override;
  procedure ExportItem(AStream: TStream; AItem: Pointer); override;*)
 end;

(* TmgBaseFrameHandleList = class(TmgBasePointerList)
 private
 protected
  procedure AssignItem(AItem1: Pointer; AItem2: Pointer); override;
  procedure LoadItem(AStream: TStream; AItem: Pointer); override;
  procedure SaveItem(AStream: TStream; AItem: Pointer); override;
  procedure ExportItem(AStream: TStream; AItem: Pointer); override;
 end;*)

implementation

resourcestring
(*  SELoadItem                = 'Не могу загрузить элемент списка (метод не определен)';
  SESaveItem                = 'Не могу сохранить элемент списка (метод не определен)';
  SEExportItem              = 'Не могу экспортировать элемент списка (метод не определен)';
  SEBadItemsCRC             = 'Неправильная CRC элементов списка: 0x%.8x';*)
  SEAssignHandle            = 'Не могу присвоить описатель (метод не определен)';
(*  SELoadHandle              = 'Не могу загрузить описатель (метод не определен)';
  SESaveHandle              = 'Не могу сохранить описатель (метод не определен)';*)

// start class TmgBaseList

procedure TmgBaseList.Cleanup;
begin
 m0IDPDelDoneProc(FClaDoneProcHandle);
 inherited;
end;

// start class TmgBasePointerList

procedure TmgBasePointerList.pm_SetCount(ACount: Longint);
var
 LCount: Longint;
 LIndex: Longint;
 LItem:  Pointer;
begin
 LCount := Count;
 if (LCount < ACount) then
 begin
  inherited pm_SetCount(ACount);
  for LIndex := LCount to Pred(ACount) do
  begin
   AllocItem(LItem);
   try
    inherited DoSetItem(LIndex, LItem);
   finally
    l3Free(LItem);
   end;//try..finally
  end;
 end//LCount < ACount
 else
 if (LCount > ACount) then
  inherited pm_SetCount(ACount);
end;

procedure TmgBasePointerList.DoSetItem(AIndex: Longint; const AItem: Tl3ProtoObject);
var
 LItem: Pointer;
begin
 AllocItem(LItem);
 try
  AssignItem(LItem, Pointer(AItem));
  inherited DoSetItem(AIndex, LItem);
 finally
  l3Free(LItem);
 end;//try..finally
end;

(*procedure TmgBasePointerList.LoadItem(AStream: TStream; AItem: Pointer);
begin
 raise EmgBasePointerList.Create(SELoadItem);
end;

procedure TmgBasePointerList.SaveItem(AStream: TStream; AItem: Pointer);
begin
 raise EmgBasePointerList.Create(SESaveItem);
end;

procedure TmgBasePointerList.ExportItem(AStream: TStream; AItem: Pointer);
begin
 raise EmgBasePointerList.Create(SEExportItem);
end;*)

function TmgBasePointerList.CompareKeyByItem(AKey: Pointer; AItem: Pointer): Integer;
begin
 Result := 1;
end;

function TmgBasePointerList.FindItemByKey(AKey: Pointer; var AIndex: Longint): LongBool;
var
 LIndex1: Longint;
 LIndex2: Longint;
 LIndex3: Longint;
 LResult: Integer;
begin
 Result  := False;
 LIndex1 := 1;
 LIndex2 := Count;
 if (LIndex2 <> 0) then
 begin
  repeat
   if (LIndex2 < LIndex1) then
    Break;
   LIndex3 := (LIndex1 + LIndex2) shr 1;
   LResult := CompareKeyByItem(AKey, GetItem(Pred(LIndex3)));
   if (LResult < 0) then
    LIndex2 := Pred(LIndex3)
   else
   begin
    if (LResult > 0) then
     LIndex1 := Succ(LIndex3)
    else
    begin
     LIndex1 := LIndex3;
     Result  := True;
     Break;
    end;
   end;
  until False;
 end;
 AIndex := Pred(LIndex1);
end;

procedure TmgBasePointerList.DirectInsert(AIndex: Longint; const AItem: Tl3ProtoObject);
var
 LItem: Pointer;
begin
 AllocItem(LItem);
 try
  AssignItem(LItem, Pointer(AItem));
  inherited DirectInsert(AIndex, LItem);
 finally
  l3Free(LItem);
 end;//try..finally
end;

(*procedure TmgBasePointerList.Assign(ASource: TmgBasePointerList);
var
 LIndex: Longint;
begin
 Clear;
 if (ASource <> nil) then
 begin
  Count := ASource.Count;
  for LIndex := 0 to Pred(Count) do
   AssignItem(GetItem(LIndex), ASource.GetItem(LIndex));
 end;
end;

procedure TmgBasePointerList.LoadFromStream(AStream: TStream);
var
 LCount:    Longint;
 LIndex:    Longint;
 LItemsCRC: Longint;
begin
 Clear;
 with AStream do
 begin
  FItemsCRC := 0;
  ReadBuffer(LCount, SizeOf(LCount));
  Count := LCount;
  for LIndex := 0 to Pred(LCount) do
   LoadItem(AStream, GetItem(LIndex));
  ReadBuffer(LItemsCRC, SizeOf(LItemsCRC));
  if ((FItemsCRC <> LItemsCRC) and (LItemsCRC <> 0)) then
   raise EmgBasePointerList.Create(Format(SEBadItemsCRC, [FItemsCRC]));
 end;
end;

procedure TmgBasePointerList.LoadFromStreamEx(APos: LongWord; AStream: TStream);
begin
 if (APos = LongWord(Cm0MaxLongWord)) then
 else
 begin
  with AStream do
  begin
   Seek(APos, soBeginning);
   LoadFromStream(AStream);
  end;
 end;
end;

procedure TmgBasePointerList.SaveToStream(AStream: TStream);
var
 LCount:    Longint;
 LIndex:    Longint;
 LItemsCRC: Longint;
begin
 with AStream do
 begin
  FItemsCRC := 0;
  LCount    := Count;
  WriteBuffer(LCount, SizeOf(LCount));
  for LIndex := 0 to Pred(LCount) do
   SaveItem(AStream, GetItem(LIndex));
  LItemsCRC := FItemsCRC;
  WriteBuffer(LItemsCRC, SizeOf(LItemsCRC));
 end;
end;

function TmgBasePointerList.SaveToStreamEx(AStream: TStream): int64;
begin
 with AStream do
 begin
  Result := Seek(0, soCurrent);
  SaveToStream(AStream);
 end;
end;

procedure TmgBasePointerList.ExportToStream(AStream: TStream);
var
 LCount: Longint;
 LIndex: Longint;
begin
 with AStream do
 begin
  LCount := Count;
  if (LCount <> 0) then
  begin
   for LIndex := 0 to Pred(LCount) do
    ExportItem(AStream, GetItem(LIndex));
  end;
 end;
end;*)

// start class TmgBaseHandle

(*procedure TmgBaseHandle.LoadBuff(var ACRC: Longint; ABuff: Pointer; ASize: LongWord; AStream: TStream);
begin
 with AStream do
 begin
  if (ASize <> 0) then
  begin
   ReadBuffer(ABuff^, ASize);
   ACRC := m0HASUpdate32(ACRC, ABuff, ASize, Cm0HASLibVersionCRC);
  end;
 end;
end;

procedure TmgBaseHandle.SaveBuff(var ACRC: Longint; ABuff: Pointer; ASize: LongWord; AStream: TStream);
begin
 with AStream do
 begin
  if (ASize <> 0) then
  begin
   ACRC := m0HASUpdate32(ACRC, ABuff, ASize, Cm0HASLibVersionCRC);
   WriteBuffer(ABuff^, ASize);
  end;
 end;
end;

procedure TmgBaseHandle.LoadString(var ACRC: Longint; var AString: string; AStream: TStream);
var
 LLength: Longint;
begin
 with AStream do
 begin
  ReadBuffer(LLength, SizeOf(LLength));
  ACRC := m0HASUpdate32(ACRC, @LLength, SizeOf(LLength), Cm0HASLibVersionCRC);
  SetLength(AString, LLength);
  if (LLength <> 0) then
  begin
   ReadBuffer(Pointer(AString)^, LLength);
   ACRC := m0HASUpdate32(ACRC, Pointer(AString), LLength, Cm0HASLibVersionCRC);
  end;
 end;
end;

procedure TmgBaseHandle.SaveString(var ACRC: Longint; const AString: string; AStream: TStream);
var
 LLength: Longint;
begin
 with AStream do
 begin
  LLength := Length(AString);
  ACRC    := m0HASUpdate32(ACRC, @LLength, SizeOf(LLength), Cm0HASLibVersionCRC);
  WriteBuffer(LLength, SizeOf(LLength));
  if (LLength <> 0) then
  begin
   ACRC := m0HASUpdate32(ACRC, Pointer(AString), LLength, Cm0HASLibVersionCRC);
   WriteBuffer(Pointer(AString)^, LLength);
  end;
 end;
end;

procedure TmgBaseHandle.ExportString(const AString: string; AStream: TStream);
var
 LLength: Longint;
begin
 with AStream do
 begin
  LLength := Length(AString);
  if (LLength <> 0) then
   WriteBuffer(Pointer(AString)^, LLength);
  WriteBuffer(Cm0EndOfLine, Length(Cm0EndOfLine));
 end;
end;*)

procedure TmgBaseHandle.AssignHandle(AItem: TmgBaseHandle);
begin
 raise EmgBaseHandle.Create(SEAssignHandle);
end;

(*procedure TmgBaseHandle.LoadHandle(var ACRC: Longint; AStream: TStream);
begin
 raise EmgBaseHandle.Create(SELoadHandle);
end;

procedure TmgBaseHandle.SaveHandle(var ACRC: Longint; AStream: TStream);
begin
 raise EmgBaseHandle.Create(SESaveHandle);
end;

procedure TmgBaseHandle.ExportHandle(AStream: TStream);
begin
 raise EmgBaseHandle.Create(SESaveHandle);
end;*)

// start class TmgBaseHandleList

procedure TmgBaseHandleList.AssignItem(AItem1: Pointer; AItem2: Pointer);
var
 LItem1: TmgBaseHandle absolute AItem1;
 LItem2: TmgBaseHandle absolute AItem2;
begin
 LItem1.AssignHandle(LItem2);
end;

(*procedure TmgBaseHandleList.LoadItem(AStream: TStream; AItem: Pointer);
var
 LItem: TmgBaseHandle absolute AItem;
begin
 LItem.LoadHandle(FItemsCRC, AStream);
end;

procedure TmgBaseHandleList.SaveItem(AStream: TStream; AItem: Pointer);
var
 LItem: TmgBaseHandle absolute AItem;
begin
 LItem.SaveHandle(FItemsCRC, AStream);
end;

procedure TmgBaseHandleList.ExportItem(AStream: TStream; AItem: Pointer);
var
 LItem: TmgBaseHandle absolute AItem;
begin
 LItem.ExportHandle(AStream);
end;*)

// start class TmgBaseFrameHandleList

(*procedure TmgBaseFrameHandleList.AssignItem(AItem1: Pointer; AItem2: Pointer);
var
 LItem1: TmgBaseHandleList absolute AItem1;
 LItem2: TmgBaseHandleList absolute AItem2;
begin
 LItem1.Assign(LItem2);
end;*)

(*procedure TmgBaseFrameHandleList.LoadItem(AStream: TStream; AItem: Pointer);
var
 LItem: TmgBaseHandleList absolute AItem;
begin
 LItem.LoadFromStream(AStream);
end;

procedure TmgBaseFrameHandleList.SaveItem(AStream: TStream; AItem: Pointer);
var
 LItem: TmgBaseHandleList absolute AItem;
begin
 LItem.SaveToStream(AStream);
end;

procedure TmgBaseFrameHandleList.ExportItem(AStream: TStream; AItem: Pointer);
var
 LItem: TmgBaseHandleList absolute AItem;
begin
 LItem.ExportToStream(AStream);
end;*)

end.
