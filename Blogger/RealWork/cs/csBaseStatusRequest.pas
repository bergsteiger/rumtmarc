unit csBaseStatusRequest;

interface

uses
 CsDataPipe, csRequestTask;

type
 TddBaseStatusRequest = class(TddRequestTask)
 private
  f_IsFree: Boolean;
  f_Message: string;
 public
  procedure SaveToPipe(aPipe: TCsDataPipe); override;
  property IsFree: Boolean read f_IsFree write f_IsFree;
  property Message: string read f_Message write f_Message;
 end;

implementation

procedure TddBaseStatusRequest.SaveToPipe(aPipe: TCsDataPipe);
begin
 inherited SaveToPipe(aPipe);
 f_IsFree := Boolean(aPipe.ReadSmallInt);
 f_Message:= aPipe.ReadStr;
end;

end.
