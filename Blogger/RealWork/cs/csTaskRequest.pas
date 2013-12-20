unit csTaskRequest;

interface

uses Classes, CsDataPipe, ddServerTask, csRequestTask, DT_types, csProcessTask;

type
 TaskRequest = class(TddRequestTask)
 private
 public
  procedure SetTaskID(aTaskID: String);
 end;

 TddTaskResultRequest = class(TaskRequest)
 private
  f_RequestTaskID: ShortString;
  f_TaskResult: TStream;
 protected
  procedure Cleanup; override;
 public
  constructor Create(aOwner: TObject; aUserID: TUserID); override;
  constructor Make(aTask: TddProcessTask);
  procedure SaveToPipe(aPipe: TCsDataPipe); override;
  property TaskResult: TStream read f_TaskResult;
 end;

 TddGetTaskRequest = class(TaskRequest)
 private
  f_Task: TddTaskItem;
 protected
  procedure Cleanup; override;
 public
  constructor Create(aOwner: TObject; aUserID: TUserID); override;
  procedure SaveToPipe(aPipe: TCsDataPipe); override;
  property Task: TddTaskItem read f_Task;
 end;


implementation

uses CsTaskTypes, l3Memory, l3TempMemoryStream, l3Base, SysUtils, StrUtils, DateUtils;

constructor TddTaskResultRequest.Create(aOwner: TObject; aUserID: TUserID);
begin
  inherited;
  TaskType := cs_ttTaskResult;
  f_TaskResult := Tl3TempMemoryStream.Create;
end;

constructor TddTaskResultRequest.Make(aTask: TddProcessTask);
begin
 Create(nil, 0);
 if aTask <> nil then
  Assign(aTask);
end;

procedure TddTaskResultRequest.Cleanup;
begin
 l3Free(f_TaskResult);
 inherited Cleanup;
end;

procedure TddTaskResultRequest.SaveToPipe(aPipe: TCsDataPipe);
begin
 aPipe.Write(TaskID);
 aPipe.ReadStream(f_TaskResult);
 f_TaskResult.Seek(0, 0);
end;

{
******************************** TddRequestTask ********************************
}
constructor TddGetTaskRequest.Create(aOwner: TObject; aUserID: TUserID);
begin
 inherited;
 TaskType := cs_ttGetTask;
end;

procedure TddGetTaskRequest.Cleanup;
begin
 l3Free(f_Task);
 inherited Cleanup;
end;

procedure TddGetTaskRequest.SaveToPipe(aPipe: TCsDataPipe);
var
 i: Integer;
 l_Stream: TStream;
begin
 //inherited SaveToPipe(aPipe);
 aPipe.Write(TaskID);
 l_Stream := Tl3MemoryStream.Make;
 try
  aPipe.ReadStream(l_Stream);
  l_Stream.Seek(0, 0);
  f_Task := TddTaskItem.MakeFrom(UserID, l_Stream, '', False);
 finally
  l3Free(l_Stream);
 end;
end;

procedure TaskRequest.SetTaskID(aTaskID: String);
var
 l_Day, l_Month, l_Sec, l_MSec: Word;
 l_Pos, l_PredPos: Integer;
begin
 // строка вида UserID-Day-Month-Second-Millicecond
 l_Pos := Pos('-', aTaskID);
 UserID := StrToIntDef(Copy(aTaskID, 1, Pred(l_Pos)), 0);
 l_PredPos := Succ(l_Pos);
 l_Pos := PosEx('-', aTaskID, l_PredPos);
 l_Day := StrToIntDef(Copy(aTaskID, l_PredPos, l_Pos-l_PredPos), 0);
 l_PredPos := Succ(l_Pos);
 l_Pos := PosEx('-', aTaskID, l_PredPos);
 l_Month := StrToIntDef(Copy(aTaskID, l_PredPos, l_Pos-l_PredPos), 0);
 l_PredPos := Succ(l_Pos);
 l_Pos := PosEx('-', aTaskID, l_PredPos);
 l_Sec := StrToIntDef(Copy(aTaskID, l_PredPos, l_Pos-l_PredPos), 0);
 l_PredPos := Succ(l_Pos);
 l_MSec := StrToIntDef(Copy(aTaskID, l_PredPos, Length(aTaskID)), 0);
 Date := RecodeDate(Date, 2004, l_Month, l_Day);
 Date := RecodeTime(Date, 0, 0, l_Sec, l_MSec);
end;


initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\cs\csTaskRequest.pas initialization enter'); {$EndIf}
 RegisterTaskClass(cs_ttGetTask, TddGetTaskRequest, 'запрос задания');
 RegisterTaskClass(cs_ttTaskResult, TddTaskResultRequest, 'запрос результата задания');
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\cs\csTaskRequest.pas initialization leave'); {$EndIf}
end.
