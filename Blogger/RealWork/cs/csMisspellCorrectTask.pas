unit csMisspellCorrectTask;

interface

uses
  csProcessTask, Classes, DT_Types;

type
 TcsMisspellCorrectTask = class(TddProcessTask)
 private
  f_SABStream: TStream;
 protected
  procedure Cleanup; override;
  function GetDescription: AnsiString; override;
  procedure LoadFrom(aStream: TStream; aIsPipe: Boolean); override;
 public
  constructor Create(aOwner: TObject; aUserID: TUserID); override;
  procedure SaveTo(aStream: TStream; aIsPipe: Boolean); override;
  property SABStream: TStream read f_SABStream write f_SABStream;
 end;

implementation

uses
  csTaskTypes, ddServerTask, l3TempMemoryStream, SysUtils;

{
****************************** TcsMisspellCorrectTask *******************************
}
constructor TcsMisspellCorrectTask.Create(aOwner: TObject; aUserID: TUserID);
begin
 inherited;
 TaskType := cs_ttMisspellCorrect;
 Version:= 1;
 f_SABStream := Tl3TempMemoryStream.Create;
end;

procedure TcsMisspellCorrectTask.Cleanup;
begin
 inherited;
 FreeAndNil(f_SABStream);
end;

function TcsMisspellCorrectTask.GetDescription: AnsiString;
begin
 Result := 'Исправление опечаток';
end;

procedure TcsMisspellCorrectTask.LoadFrom(aStream: TStream; aIsPipe: Boolean);
var
  l_Value: Integer;
begin
 inherited;
 with aStream do
 begin
  Read(l_Value, SizeOf(Integer));
  if l_Value > 0 then
  begin
   f_SABStream.Seek(0, 0);
   l_Value := f_SABStream.CopyFrom(aStream, l_Value);
   f_SABStream.Seek(0, 0);
  end;
 end;
end;

procedure TcsMisspellCorrectTask.SaveTo(aStream: TStream; aIsPipe: Boolean);
var
  l_Value: Integer;
begin
  inherited;
  with aStream do
  begin
   (* %<---Потом нужно удалить--->% *)
   l_Value := f_SABStream.Size;
   Write(l_Value, SizeOf(l_Value));
   f_SABStream.Seek(0, 0);
   CopyFrom(f_SABStream, l_Value);
   f_SABStream.Seek(0, 0);
  end; // with aStream
end;

end.
