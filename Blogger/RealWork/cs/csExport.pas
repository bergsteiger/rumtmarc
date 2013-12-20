unit csExport;

interface

uses
 Classes,
 dt_Types,
 CsDataPipe, csProcessTask, CsTaskTypes, dt_Sab;

type
  TcsExport = class(TddProcessTask)
  private
    f_AdditionalProcess: AnsiString;
    f_AnnoTopicFileName: AnsiString;
    f_DiapasonType: TDiapType;
    f_DocID: TDocID;
    f_DocSab: ISab;
    f_DocumentFileNameMask: AnsiString;
    f_ExportAnnoTopics: Boolean;
    f_ExportDirectory: AnsiString;
    f_ExportDocImage: Boolean;
    f_ExportDocument: Boolean;
    f_ExportEditions: Boolean;
    f_ExportEmptyKW: Boolean;
    f_ExportKW: Boolean;
    f_ExportReferences: Boolean;
    f_ExportRTFBody: Boolean;
    f_Family: Integer;
    f_FormulaAsPicture: Boolean;
    f_InternalFormat: Boolean;
    f_KWFileName: AnsiString;
    f_MultiUser: Boolean;
    f_ObjTopicFileName: AnsiString;
    f_OnlyStructure: Boolean;
    f_OutFileType: LongInt;
    f_OutputFileSize: LongInt;
    f_ReferenceFileNameMask: AnsiString;
    f_SABStream: TStream;
    f_SeparateFiles: LongInt;
    f_ServerSide: Boolean;
    f_StartNumber: Integer;
    f_ToRegion: TDictID;
    procedure pm_SetDocSab(Value: ISab);
    procedure pm_SetExportDirectory(const Value: AnsiString);
  protected
    procedure Cleanup; override;
    function GetDescription: AnsiString; override;
    procedure LoadFrom(aStream: TStream; aIsPipe: Boolean); override;
    procedure pm_SetTaskFolder(const Value: AnsiString); override;
  public
    constructor Create(aOwner: TObject; aUserID: TUserID); override;
    procedure MakeSab;
    procedure SaveTo(aStream: TStream; aIsPipe: Boolean); override;
    procedure WriteResult(aStream: TStream); overload; override;
    procedure WriteResult(aPipe: TcsDataPipe); overload; override;
    property AdditionalProcess: AnsiString
     read f_AdditionalProcess
     write f_AdditionalProcess;
    property AnnoTopicFileName: AnsiString read f_AnnoTopicFileName write
            f_AnnoTopicFileName;
    property DiapasonType: TDiapType read f_DiapasonType write f_DiapasonType;
    property DocID: TDocID read f_DocID write f_DocID;
    property DocSab: ISab read f_DocSab write pm_SetDocSab;
    property DocumentFileNameMask: AnsiString read f_DocumentFileNameMask write
            f_DocumentFileNameMask;
    property ExportAnnoTopics: Boolean read f_ExportAnnoTopics write
            f_ExportAnnoTopics;
    property ExportDirectory: AnsiString read f_ExportDirectory write
        pm_SetExportDirectory;
    property ExportDocImage: Boolean read f_ExportDocImage write
            f_ExportDocImage;
    property ExportDocument: Boolean read f_ExportDocument write
            f_ExportDocument;
    property ExportEditions: Boolean read f_ExportEditions write f_ExportEditions;
    property ExportEmptyKW: Boolean read f_ExportEmptyKW write f_ExportEmptyKW;
    property ExportKW: Boolean read f_ExportKW write f_ExportKW;
    property ExportReferences: Boolean read f_ExportReferences write f_ExportReferences;
    property ExportRTFBody: Boolean read f_ExportRTFBody write f_ExportRTFBody;
    property Family: Integer read f_Family write f_Family;
    property FormulaAsPicture: Boolean read f_FormulaAsPicture write
        f_FormulaAsPicture;
    property InternalFormat: Boolean read f_InternalFormat write
            f_InternalFormat;
    property KWFileName: AnsiString read f_KWFileName write f_KWFileName;
    property MultiUser: Boolean read f_MultiUser write f_MultiUser;
    property ObjTopicFileName: AnsiString read f_ObjTopicFileName write
            f_ObjTopicFileName;
    property OnlyStructure: Boolean read f_OnlyStructure write f_OnlyStructure;
    property OutFileType: LongInt read f_OutFileType write f_OutFileType;
    property OutputFileSize: LongInt read f_OutputFileSize write
            f_OutputFileSize;
    property ReferenceFileNameMask: AnsiString read f_ReferenceFileNameMask write
            f_ReferenceFileNameMask;
    property SABStream: TStream read f_SABStream write f_SABStream;
    property SeparateFiles: LongInt read f_SeparateFiles write f_SeparateFiles;
    property ServerSide: Boolean read f_ServerSide write f_ServerSide;
    property StartNumber: Integer read f_StartNumber write f_StartNumber;
    property ToRegion: TDictID read f_ToRegion write f_ToRegion;
  end;

implementation

uses
 l3TempMemoryStream,
 SysUtils, ddUtils, L3FileUtils, DT_DictConst, dt_Doc, DT_Const;

{
****************************** TcsExport *******************************
}
constructor TcsExport.Create(aOwner: TObject; aUserID: TUserID);
begin
  inherited;
  TaskType := cs_ttExport;
  Version:= 4;
  f_SABStream := Tl3TempMemoryStream.Create;
  ServerSide:= False;
  StartNumber:= 1;
  f_ToRegion:= cUndefDictID;
  f_FormulaAsPicture:= False;
end;

procedure TcsExport.Cleanup;
begin
 f_DocSab:= nil;
 FreeAndNil(f_SABStream);
 inherited;
end;

function TcsExport.GetDescription: AnsiString;
var
  l_SR: TSearchRec;
  l_Mask, l_Descript: AnsiString;
  l_Total, l_Count: Int64;
begin
 Result := 'Экспорт ';
 if TepDivideBy(SeparateFiles) = divTopic then
  Result:= Result + 'по документам, '
 else
 begin
  if DocumentFileNameMask <> '' then
   Result := Result + SysUtils.Format('%s, ', [DocumentFileNameMask]);
  if TepDivideBy(SeparateFiles) = divSize then
   Result := Result + SysUtils.Format('размер части: %s, ', [Bytes2Str(OutputFileSize)]);
 end;
 Result := Result + SysUtils.Format('папка: %s, формат: %s',
                                     [ExportDirectory,
                                     SupportFileTypeNames[TepSupportFileType(OutFileType)]]);
end;

procedure TcsExport.LoadFrom(aStream: TStream; aIsPipe: Boolean);
var
  l_Value: Integer;
begin
  inherited;
  with aStream do
  begin
   ReadString(aStream, F_AnnoTopicFileName);
   Read(l_Value, SizeOf(Integer));
   F_DiapasonType := TDiapType(l_Value);
   Read(F_DOcID, SizeOf(Integer));
   ReadString(aStream, F_DocumentFileNameMask);
   Read(F_ExportAnnoTopics, SizeOf(Boolean));
   ReadString(aStream, F_ExportDirectory);
   Read(F_ExportDocImage, SizeOf(Boolean));
   Read(F_ExportDocument, SizeOf(Boolean));
   Read(f_ExportEmptyKW, SizeOf(Boolean));
   Read(F_ExportKW, SizeOf(Boolean));
   Read(F_ExportRTFBody, SizeOF(Boolean));
   Read(F_Family, SizeOf(Integer));
   Read(F_InternalFormat, SizeOf(Boolean));
   ReadString(aStream, F_KWFileName);
   Read(F_MultiUser, SizeOf(Boolean));
   Read(l_Value, SizeOf(Integer));
   if l_Value > 0 then
   begin
    f_SABStream.Seek(0, 0);
    l_Value := f_SABStream.CopyFrom(aStream, l_Value);
    f_SABStream.Seek(0, 0);
   end;
   if not aIsPipe then // Нельзя использовать HyTech в другой нити :(
   begin
    (*TODO: extracted code
    f_DocSab:= MakeValueSet(DocumentServer(CurrentFamily).FileTbl, fID_Fld, SABStream);
    f_DocSab.Sort;
    *)
    //MakeSab;
   end; // not aIsPipe
   ReadString(aStream, F_ObjTopicFileName);
   Read(F_OnlyStructure, SizeOf(Boolean));
   Read(F_OutFileType, SizeOf(Longint));
   Read(F_OutputFileSize, SizeOf(LongInt));
   ReadString(aStream, F_ReferenceFileNameMask);
   Read(F_SeparateFiles, SizeOf(Longint));
   Read(f_ToRegion, SizeOf(f_ToRegion));
   f_ExportReferences:= F_ExportDocument;
   f_ExportEditions:= False;
   f_FormulaAsPicture:= False;
   if Version > 1 then
    Read(F_ExportReferences, SizeOf(Boolean));
   if Version > 2 then
    read(f_ExportEditions, SizeOf(Boolean));
   if Version > 3 then
    read(f_FormulaAsPicture, SizeOf(Boolean));
  end; // with aStream
end;

procedure TcsExport.MakeSab;
begin
 f_DocSab:= MakeValueSet(DocumentServer(CurrentFamily).FileTbl, fID_Fld, SABStream);
 f_DocSab.Sort;
end;

procedure TcsExport.pm_SetDocSab(Value: ISab);
begin
 f_DocSab := Value;
end;

procedure TcsExport.pm_SetExportDirectory(const Value: AnsiString);
begin
 f_ExportDirectory := Value;
 //if UserID
 //TaskFolder := ConcatDirName(GlobalHtServer.GetHomePath(aTask.UserID), rsExport);
end;

procedure TcsExport.pm_SetTaskFolder(const Value: AnsiString);
begin
 f_TaskFolder := GetUniqFileName(Value, 'Export', '');
end;

procedure TcsExport.SaveTo(aStream: TStream; aIsPipe: Boolean);
var
  l_Value: Integer;
begin
  inherited;
  with aStream do
  begin
   WriteString(aStream, F_AnnoTopicFileName);
   l_Value := Integer(Ord(F_DiapasonType));
   Write(l_Value, SizeOf(Integer));
   Write(F_DocID, SizeOf(F_DocID));
   WriteString(aStream, F_DocumentFileNameMask);
   Write(F_ExportAnnoTopics, SizeOf(Boolean));
   WriteString(aStream, F_ExportDirectory);
   Write(F_ExportDocImage, SizeOf(Boolean));
   Write(F_ExportDocument, SizeOf(Boolean));
   Write(f_ExportEmptyKW, SizeOf(Boolean));
   Write(F_ExportKW, SizeOf(Boolean));
   Write(F_ExportRTFBody, SizeOF(Boolean));
   write(F_Family, SizeOf(Integer));
   Write(F_InternalFormat, SizeOf(Boolean));
   WriteString(aStream, F_KWFileName);
   Write(F_MultiUser, SizeOf(Boolean));

   //if not aIsPipe and (DocSab <> nil) and not DocSab.IsEmpty then
   // dtOutSabToStream(DocSab, SABStream);

   (* %<---Потом нужно удалить--->% *)
   l_Value := f_SABStream.Size;
   Write(l_Value, SizeOf(l_Value));
   f_SABStream.Seek(0, 0);
   CopyFrom(f_SABStream, l_Value);
   f_SABStream.Seek(0, 0);
   (*=======================*)
   WriteString(aStream, F_ObjTopicFileName);
   Write(F_OnlyStructure, SizeOf(Boolean));
   Write(F_OutFileType, SizeOf(Longint));
   Write(F_OutputFileSize, SizeOf(LongInt));
   WriteString(aStream, F_ReferenceFileNameMask);
   Write(F_SeparateFiles, SizeOf(Longint));
   Write(f_ToRegion, SizeOf(f_ToRegion));
   if Version > 1 then
    Write(F_ExportReferences, SizeOf(Boolean));
   if Version > 2 then
   begin
    Write(f_ExportEditions, SizeOf(Boolean));
   end;
   if Version > 3 then
   begin
    Write(f_FormulaAsPicture, SizeOf(Boolean));
   end;
  end; // with aStream
end;

procedure TcsExport.WriteResult(aStream: TStream);
begin
 inherited;
 // Бросить в трубу все вылитые файлы
 WriteFolderTo(aStream, TaskFolder)
end;

procedure TcsExport.WriteResult(aPipe: TcsDataPipe);
begin
 aPipe.WriteFolder(TaskFolder);
 PureDir(TaskFolder);
 RemoveDir(TaskFolder);
end;

end.
