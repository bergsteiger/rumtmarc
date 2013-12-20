unit ddServerTaskList;

interface
Uses
 SyncObjs,
 l3Base, l3ObjectRefList,
 csProcessTask;

type
 TddServerTaskList = class(Tl3ObjectRefList)
 private
  f_CS: TCriticalSection;
 protected
  procedure Cleanup; override;
 public
  constructor Create(anOwner: TObject);
  function Pop: TddProcessTask;
  function Push(aTask: TddProcessTask): Integer;
 end;

implementation

function TddServerTaskList.Push(aTask: TddProcessTask): Integer;
begin
 f_CS.Acquire;
 try
  Result:= Add(aTask);
 finally
  f_CS.Release;
 end;
end;

constructor TddServerTaskList.Create(anOwner: TObject);
begin
 inherited Create(anOwner);
 f_CS := TCriticalSection.Create;
 Sorted := True;
end;

procedure TddServerTaskList.Cleanup;
begin
 l3Free(f_CS);
 inherited;
end;

function TddServerTaskList.Pop: TddProcessTask;
begin
 f_CS.Acquire;
 try
  Result := TddProcessTask(Items[0]).Use;
  Delete(0);
 finally
  f_CS.Release
 end;
end;

end.
