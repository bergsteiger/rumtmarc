//..........................................................................................................................................................................................................................................................
unit ddAutoClassPipe;
{ Труба для выполнения автоклассификации  }

{ $Id: ddAutoClassPipe.pas,v 1.8 2013/04/11 16:46:27 lulin Exp $ }

// $Log: ddAutoClassPipe.pas,v $
// Revision 1.8  2013/04/11 16:46:27  lulin
// - отлаживаем под XE3.
//
// Revision 1.7  2007/09/28 05:35:40  narry
// - обновление
//
// Revision 1.6  2005/03/11 16:40:23  narry
// - bug fix: не компилировалось
//
// Revision 1.5  2005/02/16 17:10:41  narry
// - update: Delphi 2005
//
// Revision 1.4  2004/09/21 12:21:04  lulin
// - Release заменил на Cleanup.
//
// Revision 1.3  2004/06/02 16:24:49  narry
// - update: изменения в иерархии листов
//
// Revision 1.2  2003/07/10 08:15:56  narry
// - update: объединение с основной веткой
//
// Revision 1.1.2.1  2003/07/08 15:29:48  narry
// - change: ведение списка обработанных топиков
//
// Revision 1.1  2003/06/03 11:15:20  narry
// - update: расширение функциональности для автоклассификатора
//

interface

Uses
 ddAutoClassReader, SewerPipe,
 evAutoClassGenerator,
 l3Date, l3Base,
 dt_Types,
 Classes;

type
 TddAutoClassPipe = class(TSewerPipe)
 private
  f_TopicList: Tl3LongintList;
  f_ACReader: TddAutoClassReader;
  f_AC: TevAutoClassGenerator;
  f_OnDone: TNotifyEvent;
 protected
  procedure Cleanup; override;
  procedure _OnDone(Sender: TObject);
 public
  constructor Create(const aDictionaryPath: AnsiString; aAsync: Boolean; aOnDone: TNotifyEvent); reintroduce;
  function Execute(TaskDate: TstTime): Boolean; reintroduce;
  property TopicList: Tl3LongintList read f_TopicList write f_TopicList;
 end;

implementation

Uses
 ddNSRC_w,
 dt_Link, dt_Const;

{ TddAutoClassPipe }

constructor TddAutoClassPipe.Create;
begin
 inherited Create(nil);
 ExportDocTypes:= [dtText];
 ExportEmpty:= False;
 ExportDocument:= True;
 InternalFormat:= False;
 ExportKW:= False;
 f_OnDone:= aOnDone;
 f_TopicList:= Tl3LongintList.Make;
 f_TopicList.Sorted:= True;
 f_ACReader:= TddAutoClassReader.Create(nil);
 f_ACReader.Family:= Family;
 f_ACReader.TopicList:= TopicList;
 f_AC:= TevAutoClassGenerator.Create(aDictionaryPath, f_ACReader, aAsync,
                                      nil, _OnDone, TddNSRCGenerator);
 Writer:= f_AC;
end;

procedure TddAutoClassPipe.Cleanup;
begin
 l3Free(f_ACReader);
 l3Free(f_AC);
 l3Free(f_TopicList);
 inherited;
end;


function TddAutoClassPipe.Execute(TaskDate: TstTime): Boolean;
var
 l_AutoClassLink: TAutoClassesLinkTbl;
begin
(*
 LinkServer.Family:= Family;
 l_AutoClassLink:= TAutoClassesLinkTbl(LinkServer.Links[dlAutoClasses]);
 if l_AutoClassLink <> nil then
  l_AutoClassLink.DelAllNodesOnIDs(Diapason.List);
*)
 f_TopicList.Clear;
 f_ACReader.TaskDate:= TaskDate;
 Result:= inherited Execute;
end;

procedure TddAutoClassPipe._OnDone(Sender: TObject);
begin
 if (TopicDone = TopicsNeedDo) and Assigned(f_OnDone) then
  f_OnDone(Sender)
end;

end.
