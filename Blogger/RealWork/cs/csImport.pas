unit csImport;

interface

uses Classes, csProcessTask, DT_types, l3Base,
 csMessageManager;

type
  TcsImportTaskItem = class(TddProcessTask)
  private
    f_DeleteIncluded: Boolean;
    f_IsAnnotation: Boolean;
    f_IsRegion: Boolean;
    f_MessageManager: TcsMessageManager;
    f_SourceDir: AnsiString;
    f_SourceFiles: TStrings;
    procedure LoadSourceFolderFrom(aStream: TStream);
    procedure pm_SetSourceFiles(const Value: TStrings);
    procedure SaveSourceFolderTo(aStream: TStream);
  protected
    procedure Cleanup; override;
    function GetDescription: AnsiString; override;
    procedure LoadFrom(aStream: TStream; aIsPipe: Boolean); override;
    procedure pm_SetTaskFolder(const Value: AnsiString); override;
  public
    constructor Create(aOwner: TObject; aUserID: TUserID); override;
    procedure SaveTo(aStream: TStream; aIsPipe: Boolean); override;
    property DeleteIncluded: Boolean read f_DeleteIncluded write
            f_DeleteIncluded;
    property IsAnnotation: Boolean read f_IsAnnotation write f_IsAnnotation;
    property IsRegion: Boolean read f_IsRegion write f_IsRegion;
    property MessageManager: TcsMessageManager read f_MessageManager write
        f_MessageManager;
    property SourceDir: AnsiString read f_SourceDir write f_SourceDir;
    property SourceFiles: TStrings read f_SourceFiles write pm_SetSourceFiles;
  published
  end;

 TcsAACImport = class(TcsImportTaskItem)
 public
  constructor Create(aOwner: TObject; aUserID: TUserID); override;
 end;

implementation

uses
 csTaskTypes, SysUtils,
 l3FileUtils, ddUtils, StrUtils, l3Types,
 l3Stream, ddFileIterator;


{
****************************** TcsImportTaskItem *******************************
}
constructor TcsImportTaskItem.Create(aOwner: TObject; aUserID: TUserID);
begin
 inherited;
 f_SourceFiles := TStringList.Create;
 TaskType := cs_ttImport;
end;

procedure TcsImportTaskItem.Cleanup;
begin
 l3Free(f_SourceFiles);
 inherited;
end;

function TcsImportTaskItem.GetDescription: AnsiString;
var
 i: Integer;
 l_Mask, l_Descript: AnsiString;
 l_Total, l_Count: Int64;
begin
 if (SourceFiles.Count > 0) and (f_Description = '') then
 begin
  case CheckFileType(SourceFiles, IsAnnotation) of
    dd_itGarant:
     begin
      l_Descript:= 'гарант';
      l_Mask := '*.nsr';
     end;
    dd_itEverest,
    dd_itEverestInternal:
     begin
      l_Descript:= 'эверест';
      l_Mask := '*.evd';
     end;
    dd_itRTFAnnotation :
     begin
      l_Descript := 'ms word'; // ddDocReader
      l_Mask := '*.doc';
     end;
    dd_itTXTAnnotation :
     begin
      l_Descript := 'текст'; // evPlainText
      l_Mask := '*.txt';
     end;
  else
   begin
    l_Descript := 'формат неизвестен';
    l_Mask := '*.*';
   end;
  end;
  l_Count:= 0; l_Total:= 0;
  for i := 0 to Pred(SourceFiles.Count) do
  begin
   Inc(l_Total, SizeofFile(SourceFiles.Strings[i]));
   Inc(l_Count);
  end;
  Result:= Format('Импорт файлов %s: %d (%s)', [l_Descript, l_Count, Bytes2Str(l_Total)]);
 end
 else
  Result:= f_Description;
end;

procedure TcsImportTaskItem.LoadFrom(aStream: TStream; aIsPipe: Boolean);
begin
  inherited;
  aStream.Read(F_DeleteIncluded, SizeOf(Boolean));
  aStream.Read(F_IsAnnotation, SizeOf(Boolean));
  aStream.Read(F_IsRegion, SizeOf(Boolean));
  ReadString(aStream, f_SourceDir);
  if aIsPipe then
   LoadSourceFolderFrom(aStream);
end;

procedure TcsImportTaskItem.LoadSourceFolderFrom(aStream: TStream);
var
 i, l_Count: Integer;

begin
 aStream.Read(l_Count, SizeOf(Integer));
 for i:= 0 to Pred(l_Count) do
  ReadFileFrom(aStream, TaskFolder);
 // Заполнить список
 with TddFileIterator.Make(TaskFolder, '*.*') do
 try
  SourceFiles:= FileList;
 finally
  Free;
 end;
end;

procedure TcsImportTaskItem.pm_SetSourceFiles(const Value: TStrings);
begin
 if f_SourceFiles <> Value then
 begin
  f_SourceFiles.Assign(Value);
 end;
end;

procedure TcsImportTaskItem.pm_SetTaskFolder(const Value: AnsiString);
begin
 f_TaskFolder := GetUniqFileName(Value, 'Import', '');
end;

procedure TcsImportTaskItem.SaveSourceFolderTo(aStream: TStream);
var
  i, l_Count, j: Integer;
  l_FileName, l_LocalFile, l_LocalFolder: AnsiString;
begin
 l_Count := SourceFiles.Count;
 aStream.Write(l_Count, SizeOf(Integer));
 for i:= 0 to Pred(SourceFiles.Count) do
 begin
  l_FileName := SourceFiles.Strings[i];
  if AnsiStartsText('###', l_FileName) then
  begin
   Delete(l_FileName, 1, 3);
   l_LocalFile := ExtractFileName(l_FileName);
   l_LocalFolder := ExtractFilePath(l_FileName);
   j:= Pred(Length(l_LocalFolder));
   while (j > 0) and (l_LocalFolder[j] <> '\') do
    Dec(j);
   Delete(l_LocalFolder, 1, j);
   l_LocalFile := ConcatDirName(l_LocalFolder, l_LocalFile);
  end
  else
   l_LocalFile := '';
  WriteFileTo(aStream, l_FileName, l_LocalFile);
 end;
end;

procedure TcsImportTaskItem.SaveTo(aStream: TStream; aIsPipe: Boolean);
begin
  inherited;
  aStream.Write(F_DeleteIncluded, SizeOf(Boolean));
  aStream.Write(F_IsAnnotation, SizeOf(Boolean));
  aStream.Write(F_IsRegion, SizeOf(Boolean));
  WriteString(aStream, f_SourceDir);
  if aIsPipe then
   SaveSourceFolderTo(aStream);
end;

{
****************************** TcsAACImport *******************************
}
constructor TcsAACImport.Create(aOwner: TObject; aUserID: TUserID);
begin
 inherited;
 TaskType := cs_ttAACImport;
end;

end.
