unit csExportResultRequest;

interface

uses CsDataPipe, csProcessTask, csRequestTask;

type
 TcsExportResultRequest = class(TddRequestTask)
 private
  f_DestFolder: string;
  f_Success: Boolean;
 public
  constructor Make(aTask: TddProcessTask);
  procedure SaveToPipe(aPipe: TCsDataPipe); override;
  property DestFolder: string read f_DestFolder write f_DestFolder;
  property Success: Boolean read f_Success write f_Success;
 end;

implementation

constructor TcsExportResultRequest.Make(aTask: TddProcessTask);
begin
 Assert(aTask <> nil);
 Create(nil, aTask.UserID);
 Assign(aTask);
end;

procedure TcsExportResultRequest.SaveToPipe(aPipe: TCsDataPipe);
begin
 aPipe.Write(TaskID);
 Success:= aPipe.ReadFolder(DestFolder);
end;

end.
