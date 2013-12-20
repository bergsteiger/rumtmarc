unit csSpellCorrectTask;

interface
{$I CsDefine.inc}

uses
 csProcessTask, Classes, ddProgressObj, DT_Types;

type
 TcsSpellCorrectTask = class(TddProcessTask)
 private
  f_ReplacementFile: AnsiString;
 protected
  function GetDescription: AnsiString; override;
  procedure LoadFrom(aStream: TStream; aIsPipe: Boolean); override;
 public
  constructor Create(aOwner: TObject; aUserID: TUserID); override;
  procedure SaveTo(aStream: TStream; aIsPipe: Boolean); override;
  property ReplacementFile: AnsiString read f_ReplacementFile write f_ReplacementFile;
 end;

implementation

uses
 csTaskTypes,
 l3FileUtils,
 SysUtils;

{
******************************** TddProcessTask ********************************
}
constructor TcsSpellCorrectTask.Create(aOwner: TObject; aUserID: TUserID);
begin
 inherited;
 TaskType:= cs_ttSpellCheck;
 Status := cs_tsDelayed;
end;

function TcsSpellCorrectTask.GetDescription: AnsiString;
begin
 Result:= 'Исправление опечаток по файлу '+ ExtractFileName(ReplacementFile);
end;

procedure TcsSpellCorrectTask.LoadFrom(aStream: TStream; aIsPipe: Boolean);
var
  l_S: AnsiString;
begin
 inherited;
 if Status <> cs_tsDone then
 begin
  ReadFileFrom(aStream, TaskFolder);
  ReadString(aStream, l_S);
  f_ReplacementFile:= ConcatDirName(TaskFolder, l_S);
 end;
end;

procedure TcsSpellCorrectTask.SaveTo(aStream: TStream; aIsPipe: Boolean);
var
 l_Filename: AnsiString;
begin
 inherited;
 if Status <> cs_tsDone then
 begin
  l_FileName:= ExtractFileName(f_replacementFile);
  WriteFileTo(aStream, f_replacementFile, l_FileName);
  WriteString(aStream, l_FileName);
 end;
end;


end.
