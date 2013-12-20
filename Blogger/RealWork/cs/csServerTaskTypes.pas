unit csServerTaskTypes;

interface

uses
 csProcessTask,
 Classes, ActnList,
 CsDataPipe,
 dt_Types,
 l3ObjectRefList, l3Date, CsNotification, csCommandsTypes, ddProgressObj;

type

 TDictRec = record
             Family      : Integer;
             DictType    : Integer;
             Operation   : Integer;
             ID,
             ParentID,
             NextID      : LongInt;
            end;

 TDictEditQuery = class(TddProcessTask)
 public
  constructor Create(aOwner: TObject; aUserID: TUserID); override;
  procedure LoadFrom(aStream: TStream; aIsPipe: Boolean); override;
  procedure SaveTo(aStream: TStream; aIsPipe: Boolean); override;
 public
  DictInfo: TDictRec;
 end;

 TGetDictEditQuery = class(TDictEditQuery)
 public
  procedure SaveToPipe(aPipe: TCsDataPipe); override;
 end;

 TUserEditQuery = class(TddProcessTask)
 private
  f_ID: TUserID;
  f_IsGroup: Boolean;
 public
  constructor Create(aOwner: TObject; aUserID: TUserID); override;
  procedure LoadFrom(aStream: TStream; aIsPipe: Boolean); override;
  procedure SaveTo(aStream: TStream; aIsPipe: Boolean); override;
  property ID: TUserID read f_ID write f_ID;
  property IsGroup: Boolean read f_IsGroup write f_IsGroup;
 end;

 TRemoteDictEditQuery = class(TddProcessTask)
 private
  f_Data: PAnsiChar;
  f_FreeData: Boolean;
  procedure pm_SetData(const aValue: PAnsiChar);
 protected
  procedure Cleanup; override;
  function DataSize: Word;
 public
  constructor Create(aOwner: TObject; aUserID: TUserID);
  function _GetName: AnsiString;
  procedure LoadFrom(aStream: TStream; aIsPipe: Boolean); override;
  procedure SaveTo(aStream: TStream; aIsPipe: Boolean); override;
 public
  Family       : Integer;
  DictType     : Integer;
  Operation    : Integer;
  ID,
  ParentID,
  NextID       : TDictID;
  NameCyr, NameShort, NameLat: AnsiString;
  IsPrivate    : TIsPrivate;
  IsNonPeriodic: TIsNonperiodic;
  DateToDelete : TstDate;
  property Data: PAnsiChar read f_Data write pm_SetData;
 end;

 TDocArray = array of Longint;
 TDeleteDocsQuery = class(TddProcessTask)
 private
  procedure pm_SetDocs(const Value: TDocArray);
 public
  constructor Create(aOwner: TObject; aUserID: TUserID); override;
  property Docs: TDocArray write pm_SetDocs;
 end;

 TddRunCommandTask = class(TddProcessTask)
 private
  f_Command: TcsCommand;
 protected
  procedure DoRun(aProgressor: TddProgressObject); override;
 public
  constructor Create(aOwner: TObject; aUserID: TUserID); override;
  property Command: TcsCommand read f_Command write f_Command;
 end;

 TalcuFNSExport = class(TddProcessTask)
 protected
  function GetDescription: AnsiString; override;
 public
  constructor Create(aOwner: TObject; aUserID: TUserID); override;
 end;

 TddAutoExportTask = class(TddProcessTask)
 protected
  function GetDescription: AnsiString; override;
  procedure LoadFrom(aStream: TStream; aIsPipe: Boolean); override;
 public
  constructor Create(aOwner: TObject; aUserID: TUserID); override;
 end;

 TalcuAnnotationTaskItem = class(TddProcessTask)
 protected
  function GetDescription: AnsiString; override;
  procedure LoadFrom(aStream: TStream; aIsPipe: Boolean); override;
 public
  constructor Create(aOwner: TObject; aUserID: TUserID); override;
 end;

implementation

uses
 CsTaskTypes, DT_Const, dt_AttrSchema, l3TempMemoryStream, l3Base, SysUtils, ddUtils, l3FileUtils,
 dt_DictConst, dt_DictTypes, DT_UserConst, l3Memory, StrUtils, DateUtils,
 ddServerTask;

procedure TGetDictEditQuery.SaveToPipe(aPipe: TCsDataPipe);
begin
 aPipe.Write(Index);
 with aPipe, DictInfo do
 begin
  Family := ReadInteger;
  DictType := ReadInteger;
  Operation := ReadInteger;
  ID := ReadInteger;
  ParentID := ReadInteger;
  NextID := ReadInteger;
 end;
end;

{
******************************** TddProcessTask ********************************
}
constructor TDictEditQuery.Create(aOwner: TObject; aUserID: TUserID);
begin
 inherited;
 TaskType := cs_ttDictEdit;
end;

procedure TDictEditQuery.LoadFrom(aStream: TStream; aIsPipe: Boolean);
begin
 inherited;
 with aStream, DictInfo do
 begin
  Read(Family, SizeOf(Family));
  Read(DictType, SizeOf(Integer));
  Read(Operation, SizeOf(Integer));
  Read(ID, SizeOf(Integer));
  Read(ParentID, SizeOf(Integer));
  Read(NextID, SizeOf(Integer));
 end;
end;

procedure TDictEditQuery.SaveTo(aStream: TStream; aIsPipe: Boolean);
begin
 inherited;
 with aStream, DictInfo do
 begin
  Write(Family, SizeOf(Family));
  Write(DictType, SizeOf(Integer));
  Write(Operation, SizeOf(Integer));
  Write(ID, SizeOf(Integer));
  Write(ParentID, SizeOf(Integer));
  Write(NextID, SizeOf(Integer));
 end;
end;

constructor TUserEditQuery.Create(aOwner: TObject; aUserID: TUserID);
begin
 inherited;
 TaskType := cs_ttUserEdit;
end;

procedure TUserEditQuery.LoadFrom(aStream: TStream; aIsPipe: Boolean);
begin
 inherited;
 aStream.Read(f_IsGroup, SizeOf(f_IsGroup));
 aStream.Read(f_ID, SizeOf(f_ID));
end;

procedure TUserEditQuery.SaveTo(aStream: TStream; aIsPipe: Boolean);
begin
 inherited;
 aStream.Write(f_IsGroup, SizeOf(f_IsGroup));
 aStream.Write(f_ID, SizeOf(f_ID));
end;

{
******************************** TddProcessTask ********************************
}
constructor TRemoteDictEditQuery.Create(aOwner: TObject; aUserID: TUserID);
begin
 inherited;
 TaskType := cs_ttRemoteDictEdit;
 ID:= cUndefDictID;
 ParentID:= cUndefDictID;
 NextID:= cUndefDictID;
 IsNonPeriodic:= cEmptyByte;
 IsPrivate:= cEmptyByte;
 f_FreeData:= False;
end;

procedure TRemoteDictEditQuery.Cleanup;
begin
 inherited;
 if f_FreeData then
  FreeMem(Data);
end;

function TRemoteDictEditQuery.DataSize: Word;
begin
 case TDLType(DictType) of
  (*
  dlDateNums: l_DataSize:= SizeOf(TDNDictRec);
  TCorrectDictRec = record
  TPublishedDictRec = packed record
  TPublishedUniqueKeyRec = packed record
  *)
  dlPublisheds: Result:= SizeOf(TPublishedDictRec);
  dlSources: Result:= SizeOf(TSourDictRec);
  dlNewClasses: Result:= SizeOf(TNewClassDictRec);
  else
   Result:= SizeOF(TDictMessageRec)
 end;
end;

function TRemoteDictEditQuery._GetName: AnsiString;
begin
 (*
 if Data = nil then
 begin
  if ID = cUndefDictID then
   Result := NameCyr
  else
   Result:= Result:= IfThen(NameCyr <> '', NameCyr, DictServer.Dict[TDLType(DictType)].DictTbl.getNameR(ID));
 end
 else
  case TDLType(DictType) of
  { TODO -oДмитрий Дудко -cЕдиный КВ : Расширить }
   dlsources: Result:= TrimRight(PSourDictRec(Data)^.FNameR);
  else
   Result:= ''
  end;
 *) 
end;

procedure TRemoteDictEditQuery.LoadFrom(aStream: TStream; aIsPipe: Boolean);
var
 l_DataSize: Integer;
begin
 inherited;
 with aStream do
 begin
  Read(Family, SizeOf(Family));
  Read(DictType, SizeOf(Integer));
  Read(Operation, SizeOf(Integer));
  Read(ID, SizeOf(ID));
  Read(ParentID, SizeOf(ParentID));
  Read(NextID, SizeOf(NextID));
  ReadString(aStream, NameCyr);
  ReadString(aStream, NameShort);
  ReadString(aStream, NameLat);
  Read(IsPrivate, SizeOf(IsPrivate));
  Read(IsNonPeriodic, SizeOf(IsNonPeriodic));
  Read(DateToDelete, SizeOf(TstDate));
  Read(l_DataSize, SizeOF(l_DataSize));
  f_FreeData:= True;
  GetMem(f_Data, l_DataSize);
  Read(f_Data[0], l_DataSize);
 end; // with aStream
end;

procedure TRemoteDictEditQuery.pm_SetData(const aValue: PAnsiChar);
var
 l_DataSize: Word;
begin
 f_FreeData:= True;
 l_DataSize:= DataSize;
 GetMem(f_Data, l_DataSize);
 l3Move(aValue[0], f_Data[0], l_DataSize);
end;

procedure TRemoteDictEditQuery.SaveTo(aStream: TStream; aIsPipe: Boolean);
var
 l_DataSize: Integer;
begin
 inherited;
 with aStream do
 begin
  Write(Family, SizeOf(Family));
  Write(DictType, SizeOf(Integer));
  Write(Operation, SizeOf(Integer));
  Write(ID, SizeOf(ID));
  Write(ParentID, SizeOf(ParentID));
  Write(NextID, SizeOf(NextID));
  WriteString(aStream, NameCyr);
  WriteString(aStream, NameShort);
  WriteString(aStream, NameLat);
  Write(IsPrivate, SizeOf(IsPrivate));
  write(IsNonPeriodic, SizeOf(IsNonPeriodic));
  Write(DateToDelete, SizeOf(TstDate));
  if Data <> nil then
  begin
   l_DataSize:= DataSize;
   Write(l_DataSize, SizeOF(l_DataSize));
   Write(Data[0], l_DataSize);
  end;
 end; // with aStream
end;

{
******************************** TddProcessTask ********************************
}
constructor TDeleteDocsQuery.Create(aOwner: TObject; aUserID: TUserID);
begin
 inherited;
 TaskType := cs_ttDeleteDocs;
end;

procedure TDeleteDocsQuery.pm_SetDocs(const Value: TDocArray);
var
 index: Integer;
begin
 DocumentIDList.Clear;
 for index := 0 to pred(Length(Value)) do
  DocumentIDList.Add(Value[index]);
end;

constructor TddRunCommandTask.Create(aOwner: TObject; aUserID: TUserID);
begin
  inherited;
  TaskType := cs_ttRunCommand;
end;

procedure TddRunCommandTask.DoRun(aProgressor: TddProgressObject);
begin
 f_Command.Execute(Self);
end;

constructor TalcuFNSExport.Create(aOwner: TObject; aUserID: TUserID);
begin
  inherited;
  TaskType := cs_ttFNSExport;
  USerID := usServerService;
end;

function TalcuFNSExport.GetDescription: AnsiString;
begin
 Result:= 'Экспорт документов для ФНС России'
end;

constructor TddAutoExportTask.Create(aOwner: TObject; aUserID: TUserID);
begin
  inherited;
  TaskType := cs_ttAExportDoc;
end;

function TddAutoExportTask.GetDescription: AnsiString;
begin
 Result:= 'Автоматический экспорт документов и аннотаций'
end;

procedure TddAutoExportTask.LoadFrom(aStream: TStream; aIsPipe: Boolean);
begin
  inherited;
  if aIsPipe then
   UserID := usServerService;
end;

constructor TalcuAnnotationTaskItem.Create(aOwner: TObject; aUserID: TUserID);
begin
  inherited;
  TaskType := cs_ttAnnoExport;
end;

function TalcuAnnotationTaskItem.GetDescription: AnsiString;
begin
 Result:= 'Экспорт аннотаций конечным пользователям'
end;

procedure TalcuAnnotationTaskItem.LoadFrom(aStream: TStream; aIsPipe: Boolean);
begin
  inherited;
  if aIsPipe then
   UserID := usServerService;
end;

initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\cs\csServerTaskTypes.pas initialization enter'); {$EndIf}
 RegisterTaskClass(cs_ttAutoClass, TddProcessTask, 'автоклассификация документов');
 RegisterTaskClass(cs_ttAnnoExport, TalcuAnnotationTaskItem, 'экспорт специальных аннотаций');
 RegisterTaskClass(cs_ttDictEdit, TDictEditQuery, 'изменение словаря');
 RegisterTaskClass(cs_ttFNSExport, TalcuFNSExport, 'экпорт для ФНС');
 RegisterTaskClass(cs_ttUserEdit, TUserEditQuery, 'изменения данных пользователей');
 RegisterTaskClass(cs_ttDeleteDocs, TDeleteDocsQuery, 'Удаление документов');
 RegisterTaskClass(cs_ttAExportDoc, TddAutoExportTask, 'Автоматический экспорт документов');
 RegisterTaskClass(cs_ttRemoteDictEdit, TRemoteDictEditQuery, 'Удаленное редактирование словарей');
 RegisterTaskClass(cs_ttRunCommand, TddRunCommandTask, 'Выполнение команды на сервере');
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\cs\csServerTaskTypes.pas initialization leave'); {$EndIf}
end.
