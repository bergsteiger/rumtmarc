unit ddServerTask;
{ Задачи, которыми обменивается клиент с сервером }

{ $Id: ddServerTask.pas,v 1.75 2013/04/19 13:10:10 lulin Exp $ }

// $Log: ddServerTask.pas,v $
// Revision 1.75  2013/04/19 13:10:10  lulin
// - портируем.
//
// Revision 1.74  2013/04/11 16:46:29  lulin
// - отлаживаем под XE3.
//
// Revision 1.73  2013/04/11 08:44:34  narry
// Избавляемся от мусора в логе
//
// Revision 1.72  2013/02/05 10:16:35  narry
// Ловушка для пользователя 0
//
// Revision 1.71  2012/11/01 09:43:24  lulin
// - забыл точку с запятой.
//
// Revision 1.70  2012/11/01 07:45:49  lulin
// - делаем возможность логирования процесса загрузки модулей.
//
// Revision 1.69  2012/10/18 06:50:41  narry
// Обновление
//
// Revision 1.68  2012/10/15 04:52:11  fireton
// - не собиралось
//
// Revision 1.67  2012/10/02 07:21:58  narry
// Обновление
//
// Revision 1.66  2012/02/20 10:46:23  narry
// Терялось описание задачи
//
// Revision 1.65  2012/01/31 10:49:12  narry
// Падала очередь заданий на неизвестном типе
//
// Revision 1.64  2011/04/11 10:25:01  narry
// Названия для ФАС (259885290)
//
// Revision 1.63  2010/07/14 12:47:43  narry
// - К226001558
//
// Revision 1.62  2010/05/19 11:00:21  narry
// - K211878089
//
// Revision 1.61  2010/05/17 08:31:20  narry
// - K211878129
// - переименование типов
//
// Revision 1.60  2010/03/24 05:59:23  narry
// - не распознавалось задание Экспорт для Прайм
//
// Revision 1.59  2010/02/24 10:24:24  narry
// - удаление зависимости проектов от парня
//
// Revision 1.58  2009/11/16 10:11:38  narry
// - обновление
//
// Revision 1.57  2009/11/10 09:12:33  narry
// - обновление
//
// Revision 1.56  2009/04/13 07:12:57  narry
// - разделение определения типов и реализации
//
// Revision 1.55  2009/03/13 15:11:55  narry
// - дата удаления элемента словаря
//
// Revision 1.54  2009/01/23 15:58:42  narry
// - переделки в сторону службы
//
// Revision 1.53  2008/11/24 12:43:41  narry
// - обновление
//
// Revision 1.52  2008/10/30 13:02:11  narry
// - Единый КВ
//
// Revision 1.51  2008/10/06 13:17:27  narry
// - Обрезалась очередь заданий на клиенте
//
// Revision 1.50  2008/08/18 12:40:16  narry
// - удален лишний класс
//
// Revision 1.49  2008/07/16 16:11:09  narry
// - реализация Автовыливки
//
// Revision 1.48  2008/07/15 14:53:48  voba
// - refact. перетаскивание методов в TDictionary
//
// Revision 1.47  2008/07/14 07:37:14  narry
// - промежуточное обновление Единого КВ
//
// Revision 1.46  2008/07/03 12:24:59  narry
// - промежуточное обновление Единого КВ
//
// Revision 1.45  2008/05/16 11:56:21  narry
// - борьба с Integer overflow при показе очереди заданий
//
// Revision 1.44  2008/04/23 07:27:19  narry
// - переделки для сервиса
//
// Revision 1.43  2008/03/25 14:02:34  narry
// - корректный формат выходного файла
//
// Revision 1.42  2008/03/20 09:48:29  lulin
// - cleanup.
//
// Revision 1.41  2008/03/13 14:45:36  narry
// - новые объекты
//
// Revision 1.40  2008/03/03 20:06:00  lulin
// - <K>: 85721135.
//
// Revision 1.39  2008/02/27 15:50:20  narry
// - внешний процесс для обработки результатов экспорта
//
// Revision 1.38  2008/02/21 18:37:21  lulin
// - вычищен ненужный параметр.
//
// Revision 1.37  2008/02/21 18:13:25  lulin
// - избавляемся от ненужных типов.
//
// Revision 1.36  2008/02/14 09:40:33  lulin
// - удалён ненужный класс.
//
// Revision 1.35  2008/02/13 20:20:06  lulin
// - <TDN>: 73.
//
// Revision 1.34  2008/02/07 14:44:37  lulin
// - класс _Tl3LongintList переехал в собственный модуль.
//
// Revision 1.33  2008/02/06 15:37:00  lulin
// - каждому базовому объекту по собственному модулю.
//
// Revision 1.32  2008/02/05 09:58:00  lulin
// - выделяем базовые объекты в отдельные файлы и переносим их на модель.
//
// Revision 1.31  2008/02/01 15:14:44  lulin
// - избавляемся от излишней универсальности списков.
//
// Revision 1.30  2007/12/07 08:44:57  narry
// - запись в лог об изменении статуса задачи стала более информативной
//
// Revision 1.29  2007/12/06 11:11:58  narry
// - поддержка автоклассификации
//
// Revision 1.28  2007/11/27 10:41:12  fireton
// - имя папки в письме об окончании импорта
//
// Revision 1.27  2007/09/05 15:44:23  narry
// - исправление ошибки доставки больших заданий пользователю (заплатка)
// - индикация передачи данных между клиентом и сервером
//
// Revision 1.26  2007/09/04 10:13:26  narry
// - ошибка возврата заданий в евд-формате
//
// Revision 1.25  2007/08/30 08:34:32  narry
// - Промежуточное сохранение
//

interface

uses
  Classes,
  l3Base, l3Types,/// l3LongintList, l3ObjectRefList,
  dt_Types,
  csClient, CsDataPipe, csNotification, csTaskTypes;

type
  TddTaskItem = class(Tl3Base)
  private
    f_Date: TDateTime;
    f_Index: LongInt;
    f_OnChange: TcsTaskNotifyEvent;
    f_Priority: Integer;
    f_TaskType: TcsTaskType;
    f_UserID: TUserID;
    f_Version: Integer;
    function pm_GetDescription: AnsiString;
    function pm_GetTaskID: ShortString;
    procedure SetPriority(const Value: Integer);
  protected
    f_Description: AnsiString;
    f_TaskFolder: AnsiString;
  protected
    procedure Cleanup; override;
    function GetDescription: AnsiString; virtual;
    procedure ReadFileFrom(aStream: TStream; aFolderName: AnsiString; aMode: TcsFileRenameMode =
        cs_frmUnique);
    procedure ReadStrings(aStream: TStream; aStrings: TStrings);
    procedure pm_SetTaskFolder(const Value: AnsiString); virtual;
    procedure ReadFilesFrom(aStream: TStream; aFilesList: TStrings; const aTempFolder: AnsiString; aMode:
        TcsFileRenameMode = cs_frmUnique);
    procedure ReadString(aStream: TStream; out aStr: AnsiString);
    procedure WriteFilesTo(aStream: TStream; aFilesList: TStrings);
    procedure WriteFileTo(aStream: TStream; aFileName: AnsiString; const aLocalName: AnsiString = '');
    procedure WriteFolderTo(aStream: TStream; const aFolder: AnsiString);
    procedure WriteStrings(aStream: TStream; aStrings: TStrings);
    procedure WriteString(aStream: TStream; const Str: AnsiString);
  public
    constructor Create(aOwner: TObject; aUserID: TUserID); reintroduce; virtual;
    function OCompare(anObject: TObject): Long; override;
    class function MakeFrom(aUserID: TUserID; aStream: TStream; aTaskFolder: AnsiString; aIsPipe: Boolean): TddTaskItem;
    procedure Assign(P: TPersistent); override;
    procedure Changed(aStatus: TcsTaskStatus);
    procedure LoadFrom(aStream: TStream; aIsPipe: Boolean); virtual;
    procedure ReadFolderFrom(aStream: TStream; const aFolder: AnsiString; aMode: TcsFileRenameMode =
        cs_frmUnique);
    procedure SaveTo(aStream: TStream; aIsPipe: Boolean); virtual;
    procedure SaveToPipe(aPipe: TCsDataPipe); virtual;
    property Date: TDateTime read f_Date write f_Date;
    property Description: AnsiString read pm_GetDescription write f_Description;
    property Index: LongInt read f_Index write f_Index;
    property Priority: Integer read f_Priority write SetPriority;
    property TaskFolder: AnsiString read f_TaskFolder write pm_SetTaskFolder;
    property TaskID: ShortString read pm_GetTaskID;
    property TaskType: TcsTaskType read f_TaskType write f_TaskType;
    property UserID: TUserID read f_UserID write f_UserID;
    property Version: Integer read f_Version write f_Version;
    property OnChange: TcsTaskNotifyEvent read f_OnChange write f_OnChange;
  end;

 TddTaskClass = class of TddTaskItem;

function CompareTaskStatus(aStatus1, aStatus2: TcsTaskStatus): Integer;

procedure RegisterTaskClass(aType: TcsTaskType; aClass: TddTaskClass; const aDescription: AnsiString);

const
 dd_tpHighest      = 0;
 dd_tpHigh         = 25;
 dd_tpNormal       = 50;
 dd_tpLow          = 75;
 dd_tpLowest       = 100;
 dd_tpDead         = High(Integer);
 dd_tpAutoClass    = dd_tpLowest;//Pred(dd_tpDead);
 dd_tpAutoClassRun = Pred(dd_tpAutoClass);

 CorrectPriorities : array[TPriority] of Integer =
     (dd_tpLowest, dd_tpLow, dd_tpNormal, dd_tpHigh, dd_tpHighest);


 TaskStatusNames: array[TcsTaskStatus] of String = (
                  'не определен',
                  'в очереди',
                  'выполняется',
                  'заморожено',
                  'выполнение приостановлено',
                  'ожидание доставки пользователю',
                  'обработано',
                  'удалено',
                  'выполнение привело к ошибке',
                  'задание отложено',
                  'доставляются результаты'
                  );



implementation

Uses
 Math, DateUtils, SysUtils, StrUtils,
 l3FileUtils, l3Stream, l3Memory, l3ObjectRefList,
 csProcessTask, csPrimeTask, TypInfo;

type
 TddTaskRecord = class(Tl3Base)
 public
  TaskType: TcsTaskType;
  TaskClass: TddTaskClass;
  Description: AnsiString;
 end;

  TddTaskClassManager = class(Tl3Base)
  private
    FClassList: Tl3ObjectRefList;
  protected
    procedure Cleanup; override;
  public
    constructor Create(anOwner: TObject); override;
    function GetClass(aClassType: TcsTaskType; out aDescription: AnsiString): TddTaskClass; overload;
    function GetClass(const AClassName: AnsiString): TddTaskClass; overload;
    procedure RegisterClass(aType: TcsTaskType; aClass: TddTaskClass; const aDescription: AnsiString);
    function Registered(aTaskType: TcsTaskType): Boolean;
    procedure UnregisterClass(AClass: TddTaskClass);
  end;

const
 g_TaskClassManager : TddTaskClassManager = nil;

function _TaskClassManager: TddTaskClassManager;
begin
 if g_TaskClassManager = nil then
  g_TaskClassManager:= TddTaskClassManager.Create(nil);
 Result:= g_TaskClassmanager;
end;

function CompareTaskStatus(aStatus1, aStatus2: TcsTaskStatus): Integer;
begin
 Result := CompareValue(Ord(aStatus1), Ord(aStatus2));
end;

procedure RegisterTaskClass(aType: TcsTaskType; aClass: TddTaskClass; const aDescription: AnsiString);
begin
 _TaskClassManager.RegisterClass(aType, aClass, aDescription);
end;

resourcestring
 STaskFileExt = '.task';
 rsSavedTaskList = 'SavedTaskList';

{
********************************* TddTaskItem **********************************
}
constructor TddTaskItem.Create(aOwner: TObject; aUserID: TUserID);
begin
 inherited Create(aOwner);
 f_Priority := dd_tpNormal;
 f_Date := Now;
 f_Version := 1;
 UserID := aUserID;
 if UserID < 1 then
  l3System.Stack2Log('UserID < 1');
end;

procedure TddTaskItem.Assign(P: TPersistent);
var
 l_Task: TddTaskItem;
begin
 if P is TddTaskItem then
 begin
  l_Task := TddTaskItem(P);
  f_Date := l_Task.Date;
  f_Description := l_Task.Description;
  f_Priority := l_Task.Priority;
  f_TaskFolder := l_Task.TaskFolder;
  f_TaskType := l_Task.TaskType;
  f_UserID := l_Task.UserID;
 end
 else
  inherited;
end;

procedure TddTaskItem.Changed(aStatus: TcsTaskStatus);
begin
 if Assigned(f_OnChange) then
  f_OnChange(Self, aStatus);
end;

procedure TddTaskItem.Cleanup;
begin
  inherited;
end;

function TddTaskItem.OCompare(anObject: TObject): Long;
begin
 Result:= CompareValue(Priority, TddProcessTask(anObject).Priority);
 if Result = 0 then
  Result := CompareDateTime(Date, TddProcessTask(anObject).Date);
end;

function TddTaskItem.GetDescription: AnsiString;
begin
 Result:= IfThen(f_Description = '', ClassName, f_Description);
end;

procedure TddTaskItem.ReadFileFrom(aStream: TStream; aFolderName: AnsiString; aMode: TcsFileRenameMode
    = cs_frmUnique);
var
  l_Stream: TStream;
  l_FileName, l_LocalFileName: AnsiString;
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
    cs_frmUnique : // создать уникальное имя Для нового файла
     begin
      l_FileName := GetUniqFileName(aFolderName, l_FileName, ''); // Для чего это нужно?!!!!
      l_FileOpenMode:= l3_fmWrite;
     end;
    cs_frmBackup: // создать bak-копию старого файла
     begin
      RenameToBack(l_LocalFileName);
      l_FileName := l_LocalFileName;
      l_FileOpenMode:= l3_fmWrite;
     end;
    cs_frmAdd:    // добавить в существующие
     begin
      l_FileOpenMode:= l3_fmAppend;
      l_FileName := l_LocalFileName;
     end;
    cs_frmReplace: // Заменить существующий
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

procedure TddTaskItem.LoadFrom(aStream: TStream; aIsPipe: Boolean);
var
 l_T: Integer;
 l_S: AnsiString;
begin
  with aStream do
  begin
   Read(l_T, Sizeof(Integer));
   f_TaskType := TcsTaskType(l_T);
   Read(f_Version, SizeOf(Integer));
   Read(f_UserID, Sizeof(f_UserID));
   Read(f_Date, SizeOf(f_Date));
   Read(f_Priority, SizeOF(f_Priority));
   ReadString(aStream, l_S);
   f_Description := l_S;
   if not aIsPipe then
    ReadString(aStream, f_TaskFolder)
  end;
end;

procedure TddTaskItem.ReadStrings(aStream: TStream; aStrings: TStrings);
var
 i, l_Count: Integer;
 l_S: AnsiString;
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

class function TddTaskItem.MakeFrom(aUserID: TUserID; aStream: TStream; aTaskFolder: AnsiString; aIsPipe: Boolean):
    TddTaskItem;
var
 l_V: Integer;
 l_Pos: Cardinal;
 l_Description: AnsiString;
 l_Count: Integer;
begin
 Result := nil;
 with aStream do
 begin
  l_Pos := Position;
  l_Count:= Read(l_V, SizeOf(Integer));
  if l_Count = SizeOf(Integer) then
  begin
   if InRange(l_V, Ord(Low(TcsTaskType)), Ord(High(TcsTaskType))) then
   begin
    if _TaskClassManager.Registered(TcsTaskType(l_V)) then
    begin
     Result:= _TaskClassManager.GetClass(TcsTaskType(l_V), l_Description).Create(nil, aUserID);
     Result.Description:= l_Description;
     Result.TaskFolder := aTaskFolder;
     Position := l_Pos;
     try
      Result.LoadFrom(aStream, aIsPipe);
     except
      on E: Exception do
      begin
       l3System.Msg2Log('Ошибка (%s) загрузки задачи %s', [E.message, Result.ClassName]);
       FreeAndNil(Result);
      end;
     end;
    end // _TaskClassManager.Registered(TcsTaskType(l_V))
    else
    begin
     //l3System.Msg2Log('Незарегистрированный тип задания %s', [GetEnumName(TypeInfo(TcsTaskType), l_V)]);
     Position:= l_Pos;
    end;
   end // InRange(l_V, Ord(Low(TcsTaskType)), Ord(High(TcsTaskType)))
   else
   begin
    l3System.Msg2Log('Неправильный тип задания %d', [l_V]);
    l3System.Msg2Log('Данные о потоке: размер %d, позиция %d', [Size, l_Pos]);
    raise EStreamError.Create('Очередь заданий повреждена');
   end;
  end; // l_Count = SizeOf(Integer)
 end; // with aStream
end;

function TddTaskItem.pm_GetDescription: AnsiString;
begin
 Result := GetDescription//IfThen(f_Description = '', GetDescription, f_Description)
end;

function TddTaskItem.pm_GetTaskID: ShortString;
begin
 Result := SysUtils.Format('%d-%s', [f_UserID, FormatDateTime('dd-mm-ss-zzz', f_Date)]);
end;

procedure TddTaskItem.pm_SetTaskFolder(const Value: AnsiString);
begin
 f_TaskFolder := Value;
end;

procedure TddTaskItem.ReadFilesFrom(aStream: TStream; aFilesList: TStrings; const aTempFolder:
    AnsiString; aMode: TcsFileRenameMode = cs_frmUnique);
var
  i, l_Count: Integer;
begin
 aStream.Read(l_Count, SizeOf(Integer));
 for i:= 0 to Pred(l_Count) do
  ReadFileFrom(aStream, aTempFolder, aMode);
end;

procedure TddTaskItem.ReadFolderFrom(aStream: TStream; const aFolder: AnsiString; aMode:
    TcsFileRenameMode = cs_frmUnique);
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

procedure TddTaskItem.ReadString(aStream: TStream; out aStr: AnsiString);
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

procedure TddTaskItem.WriteFilesTo(aStream: TStream; aFilesList: TStrings);
var
  i, l_Count, j: Integer;
  l_FileName, l_LocalFile, l_LocalFolder: AnsiString;
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

procedure TddTaskItem.WriteFileTo(aStream: TStream; aFileName: AnsiString; const aLocalName: AnsiString = '');
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

procedure TddTaskItem.WriteFolderTo(aStream: TStream; const aFolder: AnsiString);
var
 l_FileList: TStrings;

 procedure _LoadFolder(aSubFolder: AnsiString; aList: TStrings);
 var
  l_SR : TSearchRec;
  l_Name : AnsiString;
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

procedure TddTaskItem.WriteStrings(aStream: TStream; aStrings: TStrings);
var
 i, l_Count: Integer;
begin
 l_Count := aStrings.Count;
 aStream.Write(l_Count, SizeOf(l_Count));
 for i:= 0 to Pred(l_Count) do
  WriteString(aStream, aStrings[i]);
end;

procedure TddTaskItem.SaveTo(aStream: TStream; aIsPipe: Boolean);
var
 l_Type: Integer;
begin
  with aStream do
  begin
   l_Type:= Integer(Ord(f_TaskType));
   Write(l_Type, SizeOf(Integer));
   Write(f_Version, SizeOf(Integer));
   Write(f_UserID, Sizeof(f_UserID));
   Write(f_Date, SizeOf(f_Date));
   Write(f_Priority, SizeOF(f_Priority));
   WriteString(aStream, Description);
   if not aIsPipe then
    WriteString(aStream, f_TaskFolder);
  end;
end;

procedure TddTaskItem.SaveToPipe(aPipe: TCsDataPipe);
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

procedure TddTaskItem.SetPriority(const Value: Integer);
begin
  if f_Priority <> Value then
  begin
   f_Priority := Value;
   Changed(cs_tsNone);
  end; // f_Priority <> Value
end;

procedure TddTaskItem.WriteString(aStream: TStream; const Str: AnsiString);
var
  l_Len: Integer;
begin
  l_Len := Length(Str);
  aStream.Write(l_Len, SizeOf(l_Len));
  if l_Len > 0 then
   aStream.Write(Str[1], l_Len);
end;

constructor TddTaskClassManager.Create(anOwner: TObject);
begin
  inherited Create;
  FClassList := Tl3ObjectRefList.Make;
end;

procedure TddTaskClassManager.Cleanup;
begin
  l3Free(FClassList);
  inherited Cleanup;
end;

function TddTaskClassManager.GetClass(aClassType: TcsTaskType; out aDescription: AnsiString):
    TddTaskClass;
var
  I: Integer;
begin
  for I := 0 to FClassList.Count - 1 do
  begin
    if TddTaskRecord(FClassList[I]).TaskType = aClassType then
    begin
     Result:= TddTaskRecord(FClassList[I]).TaskClass;
     aDescription:= TddTaskRecord(FClassList[I]).Description;
     exit;
    end;
  end;
  Result := nil;
end;

function TddTaskClassManager.GetClass(const AClassName: AnsiString): TddTaskClass;
var
  I: Integer;
begin
  for I := 0 to FClassList.Count - 1 do
  begin
    Result := TddTaskRecord(FClassList[I]).TaskClass;
    if Result.ClassNameIs(AClassName) then Exit;
  end;
  Result := nil;
end;

procedure TddTaskClassManager.RegisterClass(aType: TcsTaskType; aClass: TddTaskClass; const
    aDescription: AnsiString);
var
  LClassName: AnsiString;
  l_ClassRef: TddTaskRecord;
begin
  (*
  LClassName := AClass.ClassName;
  if GetClass(LClassName) <> nil then
    raise EFilerError.CreateFmt('%s уже зарегистрирован', [LClassName]);
  *)  
  l_ClassRef:= TddTaskRecord.Create(nil);
  try
   l_ClassRef.TaskType:= aType;
   l_ClassRef.TaskClass:= aClass;
   l_ClassRef.Description:= aDescription;
   FClassList.Add(l_ClassRef);
  finally
   l3Free(l_ClassRef);
  end;
end;

function TddTaskClassManager.Registered(aTaskType: TcsTaskType): Boolean;
var
 l_Descript: AnsiString;
begin
 Result:= GetClass(aTaskType, l_Descript) <> nil;
end;

procedure TddTaskClassManager.UnregisterClass(AClass: TddTaskClass);
var
  I: Integer;
begin
{ TODO : Восстановить функционал }
//  FClassList.Remove(AClass);
end;

initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\dd\ddServerTask.pas initialization enter'); {$EndIf}
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\dd\ddServerTask.pas initialization leave'); {$EndIf}
finalization
 _TaskClassManager.Free;
end.
