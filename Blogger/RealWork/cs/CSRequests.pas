unit CSRequests;
{ Задачи и запросы, которыми обменивается клиент с сервером }

{ $Id: CSRequests.pas,v 1.1 2010/02/24 10:30:50 narry Exp $ }

// $Log: CSRequests.pas,v $
// Revision 1.1  2010/02/24 10:30:50  narry
// - удаление зависимости проектов от парня
//

interface

uses
  Classes,
  l3Base,l3Types,
  dt_Types,
  CsDataPipe, csRequestTypes, csInterfaces,
  ddProgressObj, ddAppConfigTypes;

type
  TcsRequest = class(Tl3Base, IcsRequest)
  private
    f_Data: TddAppConfigNode;
    f_OnChange: TcsRequestNotifyEvent;
    function IsFiles(aStrings: TStrings): Boolean;
    function pm_GetData: TddAppConfigNode; stdcall;
    function pm_GetDate: TDateTime; stdcall;
    function pm_GetDescription: string; stdcall;
    function pm_GetIndex: LongInt; stdcall;
    function pm_GetOnChange: TcsRequestNotifyEvent; stdcall;
    function pm_GetPriority: Integer; stdcall;
    function pm_GetTaskFolder: string; stdcall;
    function pm_GetTaskID: ShortString;
    function pm_GetTaskType: TcsRequestType; stdcall;
    function pm_GetUserID: TUserID; stdcall;
    function pm_GetVersion: Integer; stdcall;
    procedure pm_SetDescription(const Value: string); stdcall;
    procedure pm_SetIndex(const Value: LongInt); stdcall;
    procedure pm_SetOnChange(const Value: TcsRequestNotifyEvent); stdcall;
    procedure pm_SetPriority(const Value: Integer); stdcall;
    procedure pm_SetTaskType(const Value: TcsRequestType); stdcall;
    procedure pm_SetUserID(const Value: TUserID); stdcall;
    procedure pm_SetVersion(const Value: Integer); stdcall;
  protected
    procedure Cleanup; override;
    procedure pm_SetTaskFolder(const Value: string); virtual;
    procedure ReadFileFrom(aStream: TStream; aFolderName: String; aMode: TddFileRenameMode = dd_frmUnique);
    procedure ReadFilesFrom(aStream: TStream; aFilesList: TStrings; const aTempFolder: String; aMode: TddFileRenameMode =
        dd_frmUnique);
    procedure ReadFolderFrom(aStream: TStream; const aFolder: String; aMode: TddFileRenameMode =
        dd_frmUnique);
    procedure ReadString(aStream: TStream; out aStr: String);
    procedure ReadStrings(aStream: TStream; aStrings: TStrings);
    procedure WriteFilesTo(aStream: TStream; aFilesList: TStrings);
    procedure WriteFileTo(aStream: TStream; aFileName: String; const aLocalName: String = '');
    procedure WriteFolderTo(aStream: TStream; const aFolder: String);
    procedure WriteString(aStream: TStream; const Str: String);
    procedure WriteStrings(aStream: TStream; aStrings: TStrings);
  public
    constructor Create(aOwner: TObject; aUserID: TUserID); reintroduce; virtual;
    procedure Assign(P: TPersistent); override;
    procedure LoadFrom(aStream: TStream; aIsPipe: Boolean);
    function OCompare(anObject: TObject): Long; override;
    procedure SaveTo(aStream: TStream; aIsPipe: Boolean);
    procedure SaveToPipe(aPipe: TCsDataPipe); virtual;
    property Data: TddAppConfigNode read pm_GetData;
    property Date: TDateTime read pm_GetDate;
    property Description: string read pm_GetDescription write pm_SetDescription;
    property Index: LongInt read pm_GetIndex write pm_SetIndex;
    property Priority: Integer read pm_GetPriority write pm_SetPriority;
    property TaskFolder: string read pm_GetTaskFolder write pm_SetTaskFolder;
    property TaskID: ShortString read pm_GetTaskID;
    property TaskType: TcsRequestType read pm_GetTaskType write pm_SetTaskType;
    property UserID: TUserID read pm_GetUserID write pm_SetUserID;
    property Version: Integer read pm_GetVersion write pm_SetVersion;
    property OnChange: TcsRequestNotifyEvent read pm_GetOnChange write pm_SetOnChange;
  end;

 TcsRequestClass = class of TcsRequest;
 TcsRequestRecord = record
  TaskClass: TcsRequestClass;
  Description: String;
 end;

type
 TcsRequestArray = array[TcsRequestType] of TcsRequestRecord;

function CompareTaskStatus(aStatus1, aStatus2 : TcsRequestStatus): Integer;

const
 dd_tpHighest      = 0;
 dd_tpHigh         = 25;
 dd_tpNormal       = 50;
 dd_tpLow          = 75;
 dd_tpLowest       = 100;
 dd_tpDead         = High(Integer);
 dd_tpAutoClass    = dd_tpLowest;
 dd_tpAutoClassRun = Pred(dd_tpAutoClass);

 CorrectPriorities : array[TPriority] of Integer =
     (dd_tpLowest, dd_tpLow, dd_tpNormal, dd_tpHigh, dd_tpHighest);


 TaskStatusNames: array[TcsRequestStatus] of String = (
                  'не определен',
                  'в очереди',
                  'выполняется',
                  'заморожено',
                  'выполнение приостановлено',
                  'ожидание доставки пользователю',
                  'обработано',
                  'удалено',
                  'выполнение привело к ошибке'
                  );

const
 reqDescription = 0;
 reqIndex       = 1;
 reqDate        = 2;
 reqPriority    = 3;
 reqID          = 4;
 reqType        = 5;
 reqUser        = 6;
 reqVersion     = 7;
 reqFolder      = 8;

 reqChildProperty = 9;

implementation

Uses
 Math, DateUtils, SysUtils, StrUtils,
 ddAppConfigUtils, ddAppConfigConst,
 l3FileUtils, l3Stream, l3Memory, ddAppConfigStrings, l3LongintList;

(*
const
 TaskTypeNames: TcsRequestArray = (
  (TaskClass:TddImportTaskItem; Description:'импорт'),
  (TaskClass:TddExportTaskItem; Description:'экспорт'),
  (TaskClass:TddProcessTask; Description:'автоклассификация документов'),
  (TaskClass:TddAnnotationTaskItem; Description:'экспорт специальных аннотаций'),
  (TaskClass:TDictEditQuery; Description:'изменение словаря'),
  (TaskClass:TddRequestTask; Description:'запрос'),
  (TaskClass:TddGetTaskRequest; Description:'запрос задания'),
  (TaskClass:TddLineRequest; Description:'запрос очереди'),
  (TaskClass:TddServerStatusRequest; Description:'запрос статуса сервера'),
  (TaskClass:TcsRequestResultRequest; Description:'запрос результата задания'),
  (TaskClass:TddFNSExport; Description:'экпорт для ФНС'),
  (TaskClass:TUserEditQuery; Description:'изменения данных пользователей'),
  (TaskClass:TDeleteDocsQuery; Description:'Удаление документов'),
  (TaskClass:TddCommonDataRequest; Description:'Общие данные'),
  (TaskClass:TddAutoExportTask; Description:'Автоматический экспорт документов'),
  (TaskClass:TalcuAutoAnnoExport; Description:'Автоматический экспорт аннотаций'),
  (TaskClass:TRemoteDictEditQuery; Description:'Удаленное редактирование словарей'),
  (TaskClass:TddRegionUploadTask; Description:'Экспорт внешних дельт'),
  (TaskClass:TddRunCommandTask; Description:'Выполнение команды на сервере'),
  (TaskClass:TddDossierMakeTask; Description:'Создание справок постановленим ААС'),
  (TaskClass:TddCaseCodeTask; Description:'Создание номеров дел для постановлений ФАС'),
  (TaskClass:TalcuPrimeExportLite; Description:'Экспорт аннотаций в формате Прайм')
  );
*)


function CompareTaskStatus(aStatus1, aStatus2 : TcsRequestStatus): Integer;
begin
 Result := CompareValue(Ord(aStatus1), Ord(aStatus2));
end;


{
********************************* TcsRequest **********************************
}

constructor TcsRequest.Create(aOwner: TObject; aUserID: TUserID);
begin
 inherited Create(aOwner);
 f_Data:= MakeNode('RequestData', 'Данные',
           makeString('Описание', '', #0,
           makeInteger('Индекс', -1,
           MakedateTime('Дата создания', Now,
           MakeInteger('Приоритет', dd_tpNormal,
           MakeString('ID запроса','', #0,
           makeInteger('Тип', 0,
           makeInteger('ID пользователя', aUserID,
           MakeInteger('Версия', 1,
           MakeFolderName('Папка', '',
           nil))))))))));
end;

procedure TcsRequest.Assign(P: TPersistent);
var
 l_Task: TcsRequest;
begin
 if P is TcsRequest then
 begin
  l_Task := TcsRequest(P);
  f_Data.Assign(l_Task.Data);
 end
 else
  inherited;
end;

procedure TcsRequest.Cleanup;
begin
 inherited;
 l3Free(f_Data);
end;

procedure TcsRequest.LoadFrom(aStream: TStream; aIsPipe: Boolean);
var
 l_Type: Integer;
 i: Integer;
 l_Bool: Boolean;
 l_DT: TDateTime;
 l_Int: Integer;
 l_Str: String;
 l_Obj: TObject;
 l_Item: TddBaseConfigItem;
begin
 with aStream do
 begin
  for i:= 0 to Pred(data.Count) do
  begin
   l_Item:= Data.Items[i];
   case l_Item.Value.Kind of
    dd_vkBoolean:
     begin
      astream.Read(l_Bool, SizeOf(Boolean));
      l_Item.BooleanValue:= l_Bool;
     end;
    dd_vkDateTime:
     begin
      aStream.Read(l_DT, SizeOf(TDateTime));
      l_Item.DateTimeValue:= l_DT;
     end;
    dd_vkInteger:
     begin
      aStream.Read(l_Int, SizeOf(Integer));
      l_Item.IntegerValue:= l_Int;
     end;
    dd_vkString:
     begin
      ReadString(aStream, l_Str);
      l_Item.StringValue:= l_Str;
      if aIsPipe then
       if l_Item is TddFolderNameConfigItem then
        ReadFolderFrom(aStream, TaskFolder)
       else
       if l_Item is TddFileNameConfigItem then
        ReadFileFrom(aStream, TaskFolder);
     end;
    dd_vkObject:
     begin
      // Дальше временный код
      l_Obj:= l_Item.ObjectValue;
      (*
      if l_Obj is TStrings then
      //Тут может быть как список строк, так и имена файлов...
       if IsFiles(TStrings(l_Obj)) then
        WriteFilesTo(aStream, TStrings(l_Obj))
       else
        WriteStrings(aStream, TStrings(l_Obj))
      else
      if l_Obj is Tl3LongintList then
       Tl3LongintList(l_Obj).Save(aStream);
      *) 
     end;
   end;
  end; // for i
 end; // with aStream
end;

function TcsRequest.IsFiles(aStrings: TStrings): Boolean;
begin
 Result:= False;
 if aStrings.Count > 0 then
  Result := ExtractFileName(aStrings[0]) <> '';
end;

function TcsRequest.OCompare(anObject: TObject): Long;
begin
 Result:= CompareValue(Priority, TcsRequest(anObject).Priority);
 if Result = 0 then
  Result := CompareDateTime(Date, TcsRequest(anObject).Date);
end;

function TcsRequest.pm_GetData: TddAppConfigNode;
begin
 Result:= f_Data;
end;

function TcsRequest.pm_GetDate: TDateTime;
begin
 Result:= f_Data.Items[reqDate].DateTimeValue;
end;

function TcsRequest.pm_GetDescription: string;
begin
 Result:= f_Data.Items[reqDescription].StringValue;
end;

function TcsRequest.pm_GetIndex: LongInt;
begin
 Result:= f_Data.Items[reqIndex].IntegerValue;
end;

function TcsRequest.pm_GetOnChange: TcsRequestNotifyEvent;
begin
  Result:= f_OnChange;
end;

function TcsRequest.pm_GetPriority: Integer;
begin
 Result:= f_Data.Items[reqPriority].IntegerValue;
end;

function TcsRequest.pm_GetTaskFolder: string;
begin
 Result:= f_Data.Items[reqFolder].StringValue;
end;

function TcsRequest.pm_GetTaskID: ShortString;
begin
 Result := SysUtils.Format('%d-%s', [UserID, FormatDateTime('dd-mm-ss-zzz', Date)]);
end;

function TcsRequest.pm_GetTaskType: TcsRequestType;
begin
 Result:= TcsRequestType(f_Data.Items[reqType].IntegerValue);
end;

function TcsRequest.pm_GetUserID: TUserID;
begin
 Result:= f_Data.Items[reqUser].IntegerValue;
end;

function TcsRequest.pm_GetVersion: Integer;
begin
 Result:= f_Data.Items[reqVersion].IntegerValue;
end;

procedure TcsRequest.pm_SetDescription(const Value: string);
begin
 f_Data.Items[reqDescription].StringValue:= Value;
end;

procedure TcsRequest.pm_SetIndex(const Value: LongInt);
begin
 f_Data.Items[reqIndex].IntegerValue:= Value;
end;

procedure TcsRequest.pm_SetOnChange(const Value: TcsRequestNotifyEvent);
begin
 f_OnChange:= Value;
end;

procedure TcsRequest.pm_SetPriority(const Value: Integer);
begin
 f_Data.Items[reqPriority].IntegerValue:= Value;
end;

procedure TcsRequest.pm_SetTaskFolder(const Value: string);
begin
 f_Data.Items[reqFolder].StringValue:= Value;
end;

procedure TcsRequest.pm_SetTaskType(const Value: TcsRequestType);
begin
 f_Data.Items[reqType].IntegerValue:= Ord(Value);
end;

procedure TcsRequest.pm_SetUserID(const Value: TUserID);
begin
 f_Data.Items[reqUser].IntegerValue:= Value;
end;

procedure TcsRequest.pm_SetVersion(const Value: Integer);
begin
 f_Data.Items[reqVersion].IntegerValue:= Value;
end;

procedure TcsRequest.ReadFileFrom(aStream: TStream; aFolderName: String; aMode: TddFileRenameMode = dd_frmUnique);
var
  l_Stream: TStream;
  l_FileName, l_LocalFileName: string;
  l_Len: Int64;
  l_FileOpenMode: Tl3FileMode;
begin
{ TODO 1 -oДмитрий Дудко -cнедоделка : Нужно провести рефакторинг }
 ReadString(aStream, l_FileName);
 if l_FileName <> '' then
 begin
  l_LocalFileName := ConcatDirName(aFolderName, l_FileName);
  ForceDirectories(ExtractFilePath(l_LocalFileName));
  if FileExists(l_LocalFileName) then
   case aMode of
    dd_frmUnique : // создать уникальное имя Для нового файла
     begin
      l_FileName := GetUniqFileName(aFolderName, l_FileName, ''); // Для чего это нужно?!!!!
      l_FileOpenMode:= l3_fmWrite;
     end;
    dd_frmBackup: // создать bak-копию старого файла
     begin
      RenameToBack(l_LocalFileName);
      l_FileName := l_LocalFileName;
      l_FileOpenMode:= l3_fmWrite;
     end;
    dd_frmAdd:    // добавить в существующие
     begin
      l_FileOpenMode:= l3_fmAppend;
      l_FileName := l_LocalFileName;
     end;
    dd_frmReplace: // Заменить существующий
     begin
      l_FileName := l_LocalFileName;
      l_FileOpenMode:= l3_fmWrite;
     end;
   end
  else
  begin
   l_FileName := l_LocalFileName;
   l_FileOpenMode:= l3_fmWrite;
  end;
  aStream.Read(l_Len, SizeOf(Int64));
  if l_Len > 0 then
  begin
   l_Stream := Tl3FileStream.Create(l_FileName, l_FileOpenMode);
   try
    l_Stream.CopyFrom(aStream, l_Len);
   finally
    l3Free(l_Stream);
   end;
  end; // l_Len > 0 
 end;
end;

procedure TcsRequest.ReadFilesFrom(aStream: TStream; aFilesList: TStrings; const aTempFolder: String; aMode:
    TddFileRenameMode = dd_frmUnique);
var
  i, l_Count: Integer;
begin
 aStream.Read(l_Count, SizeOf(Integer));
 for i:= 0 to Pred(l_Count) do
  ReadFileFrom(aStream, aTempFolder, aMode);
end;

procedure TcsRequest.ReadFolderFrom(aStream: TStream; const aFolder: String; aMode:
    TddFileRenameMode = dd_frmUnique);
var
 l_Files: TStrings;
begin
 l_Files:= TStringList.Create;
 try
  ReadFilesFrom(aStream, l_Files, aFolder, aMode);
 finally
  l3Free(l_Files);
 end;
end;

procedure TcsRequest.ReadString(aStream: TStream; out aStr: String);
var
  l_Len: Integer;
begin
 aStr := '';
 if aStream.Size - aStream.Position >= SizeOf(l_Len) then
 begin
  aStream.Read(l_Len, SizeOf(l_Len));
  if l_Len <= aStream.Size - aStream.Position then
  begin
   SetLength(aStr, l_Len);
   if l_Len > 0 then
    aStream.Read(aStr[1], l_Len);
  end;
 end; // aStream.Size - aStream.Position >= SizeOf(l_Len)
end;

procedure TcsRequest.ReadStrings(aStream: TStream; aStrings: TStrings);
var
 i, l_Count: Integer;
 l_S: String;
begin
 aStrings.Clear;
 if aStream.Size - aStream.Position >= SizeOf(l_Count) then
 begin
  aStream.Read(l_Count, SizeOf(l_Count));
  for i:= 0 to Pred(l_Count) do
  begin
   ReadString(aStream, l_S);
   aStrings.Add(l_S);
  end;
 end;
end;

procedure TcsRequest.SaveTo(aStream: TStream; aIsPipe: Boolean);
var
 l_Type: Integer;
 i: Integer;
 l_Bool: Boolean;
 l_DT: TDateTime;
 l_Int: Integer;
 l_Str: String;
 l_Obj: TObject;
 l_Item: TddBaseConfigItem;
begin
 with aStream do
 begin
  for i:= 0 to Pred(data.Count) do
  begin
   l_Item:= Data.Items[i];
   case l_Item.Value.Kind of
    dd_vkBoolean:
     begin
      l_Bool:= l_Item.BooleanValue;
      astream.Write(l_Bool, SizeOf(Boolean));
     end;
    dd_vkDateTime:
     begin
      l_DT:= l_Item.DateTimeValue;
      aStream.Write(l_DT, SizeOf(TDateTime));
     end;
    dd_vkInteger:
     begin
      l_Int:= l_Item.IntegerValue;
      aStream.write(l_Int, SizeOf(Integer));
     end;
    dd_vkString:
     begin
      l_Str:= l_Item.StringValue;
      writeString(aStream, l_Str);
      if aIsPipe then
       if l_Item is TddFolderNameConfigItem then
        WriteFolderTo(aStream, l_Str)
       else
       if l_Item is TddFileNameConfigItem then
        WriteFileTo(aStream, l_str);
     end;
    dd_vkObject:
     begin
      // Дальше временный код
      l_Obj:= l_Item.ObjectValue;
      if l_Obj is TStrings then
      //Тут может быть как список строк, так и имена файлов...
       if IsFiles(TStrings(l_Obj)) then
        WriteFilesTo(aStream, TStrings(l_Obj))
       else
        WriteStrings(aStream, TStrings(l_Obj))
      else
      if l_Obj is Tl3LongintList then
       Tl3LongintList(l_Obj).Save(aStream);
     end;
   end;
  end; // for i
 end; // with aStream
end;

procedure TcsRequest.SaveToPipe(aPipe: TCsDataPipe);
var
  l_Stream: Tl3MemoryStream;
begin
  l_Stream:= Tl3MemoryStream.Create;
  try
   SaveTo(l_Stream, True);
   l_Stream.Seek(0, 0);
   aPipe.Write(l_Stream);
  finally
   l3Free(l_Stream);
  end;
end;

procedure TcsRequest.WriteFilesTo(aStream: TStream; aFilesList: TStrings);
var
  i, l_Count, j: Integer;
  l_FileName, l_LocalFile, l_LocalFolder: String;
begin
 l_LocalFolder:= '';
 l_Count := aFilesList.Count;
 if l_Count > 0 then
  if AnsiStartsText('###', aFilesList.Strings[0]) then
   Dec(l_Count);
 aStream.Write(l_Count, SizeOf(Integer));
 for i:= 0 to Pred(aFilesList.Count) do
 begin
  l_FileName := aFilesList.Strings[i];
  if AnsiStartsText('###', l_FileName) then
  begin
   Delete(l_FileName, 1, 3);
   l_LocalFolder := l_FileName;
  end
  else
  begin
   l_LocalFile := l_FileName;
   Delete(l_LocalFile, 1, Length(l_LocalFolder));
   WriteFileTo(aStream, l_FileName, l_LocalFile);
  end;
 end;
end;

procedure TcsRequest.WriteFileTo(aStream: TStream; aFileName: String; const aLocalName: String = '');
var
  l_Stream: TStream;
  l_Len: Int64;
begin
  if aLocalName = '' then
   WriteString(aStream, ExtractFileName(aFileName))
  else
   WriteString(aStream, aLocalName);
  l_Len := GetFileSize(aFileName);
  aStream.Write(l_Len, SizeOf(Int64));
  l_Stream := Tl3FileStream.Create(aFileName, l3_fmRead);
  try
   aStream.CopyFrom(l_Stream, l_Len);
  finally
   l3Free(l_Stream);
  end;
end;

procedure TcsRequest.WriteFolderTo(aStream: TStream; const aFolder: String);
var
 l_FileList: TStrings;

 procedure _LoadFolder(aSubFolder: String; aList: TStrings);
 var
  l_SR : TSearchRec;
  l_Name : String;
 begin
  if FindFirst(ConcatDirName(aSubFolder, '\*.*'), faAnyFile, l_SR) = 0 then
  begin
   repeat
    if l_SR.Name[1] <> '.' then
    begin
     l_Name := ConcatDirName(aSubFolder, l_SR.Name);
     if l_SR.Attr and faDirectory = faDirectory then
      _LoadFolder(l_Name, aList)
     else
      l_FileList.Add(l_Name);
    end; // l_SR.Name[1] <> '.'
   until FindNext(l_sr) <> 0;
   FindClose(l_SR);
  end; // FindFirst(aFolder, faAnyFile, l_SR)
 end;

begin
 l_FileList := TStringList.Create;
 try
  l_FileList.Add(IncludeTrailingBackslash('###'+aFolder));
  _LoadFolder(aFolder, l_FileList);
  WriteFilesTo(aStream, l_FileList);
 finally
  l3Free(l_FileList);
 end;
end;

procedure TcsRequest.WriteString(aStream: TStream; const Str: String);
var
  l_Len: Integer;
begin
  l_Len := Length(Str);
  aStream.Write(l_Len, SizeOf(l_Len));
  if l_Len > 0 then
   aStream.Write(Str[1], l_Len);
end;

procedure TcsRequest.WriteStrings(aStream: TStream; aStrings: TStrings);
var
 i, l_Count: Integer;
begin
 l_Count := aStrings.Count;
 aStream.Write(l_Count, SizeOf(l_Count));
 for i:= 0 to Pred(l_Count) do
  WriteString(aStream, aStrings[i]);
end;


end.
