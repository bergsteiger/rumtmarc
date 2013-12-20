unit csNonEditableDictsRequest;

interface

uses CsDataPipe, csRequestTask;

type
 TddNonEditableDictsRequest = class(TddRequestTask)
 private
  f_DictsMask: LongInt;
 public
  procedure SaveToPipe(aPipe: TCsDataPipe); override;
  property DictsMask: LongInt read f_DictsMask write f_DictsMask;
 end;

implementation

procedure TddNonEditableDictsRequest.SaveToPipe(aPipe: TCsDataPipe);
begin
 inherited SaveToPipe(aPipe);
 f_DictsMask := aPipe.ReadInteger;
end;

end.
