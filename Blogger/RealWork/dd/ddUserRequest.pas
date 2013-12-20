//..........................................................................................................................................................................................................................................................
Unit ddUserRequest;
{* Модуль, отвечающий за общение пользователя с Парнем на сервере
  (звучит практически так же, как "Парень с нимбом") }

{ $Id: ddUserRequest.pas,v 1.69 2013/04/11 16:46:29 lulin Exp $ }

// $Log: ddUserRequest.pas,v $
// Revision 1.69  2013/04/11 16:46:29  lulin
// - отлаживаем под XE3.
//
// Revision 1.68  2010/09/28 13:06:06  fireton
// - Распределяем память для PAnsiChar своими средствами
//
// Revision 1.67  2008/03/21 14:09:22  lulin
// - cleanup.
//
// Revision 1.66  2007/08/14 19:31:52  lulin
// - оптимизируем очистку памяти.
//
// Revision 1.65  2007/08/14 14:30:05  lulin
// - оптимизируем перемещение блоков памяти.
//
// Revision 1.64  2006/11/22 16:23:58  fireton
// - подготовка к большому UserID
//
// Revision 1.63  2006/03/07 12:27:34  narry
// - изменение: новая технология передачи заданий
//
// Revision 1.62  2006/01/05 15:04:58  narry
// - исправления и улучшения
//
// Revision 1.61  2005/12/23 10:40:39  step
// переименование Host --> Station
//
// Revision 1.60  2005/12/01 11:46:26  narry
// - обновление: переход на новый способ передачи задач
//
// Revision 1.59  2005/11/29 13:44:05  narry
// - обновление: переход на новый способ передачи задач
//
// Revision 1.58  2005/11/02 16:32:57  narry
// - изменение: обрезка длины передаваемой очереди в зависимости от  константы длины
//
// Revision 1.57  2005/10/07 08:47:03  narry
// - обновление: расчет приоритета задания для конкретного пользователя
// - обновление: искусственное ограничение длины передаваемого сообщения
//
// Revision 1.56  2005/09/02 12:47:37  narry
// - update: заточка напильником приоритета импорта аннотаций, исправление описания заданий
//
// Revision 1.55  2005/07/14 15:53:45  narry
// - update: включение отображения очереди заданий на стороне пользователя
//
// Revision 1.54  2005/06/23 08:36:07  step
// переименование SendMessage --> SendNetMessage (во избежание путаницы)
//
// Revision 1.53  2005/04/28 12:58:28  narry
// - update
//
// Revision 1.52  2005/03/25 12:17:26  voba
// - расширение списка параметров задания на импорт
//
// Revision 1.51  2005/03/24 12:14:35  narry
// - изменение формата сообщения об экспорте аннотаций
//
// Revision 1.50  2005/03/23 10:07:33  voba
// - расширение функциональности
//
// Revision 1.49  2005/03/19 12:54:05  voba
// - bug fix
//
// Revision 1.48  2005/03/18 16:34:10  narry
// - update: расширение списка сохраняемых параметров
//
// Revision 1.47  2005/03/18 12:29:51  fireton
// - bug fix: сообщения не проходили
//
// Revision 1.46  2005/03/14 14:01:43  narry
// - update: поддержка пользовательского импорта сторонних аннотаций
//
// Revision 1.45  2005/03/14 11:08:31  narry
// - update: экспорт аннотаций
//
// Revision 1.44  2005/03/11 11:38:05  narry
// - update:
//
// Revision 1.43  2005/02/16 17:10:41  narry
// - update: Delphi 2005
//
// Revision 1.42  2004/12/23 11:42:08  lulin
// - rename unit: User_Cfg -> l3IniFile.
//
// Revision 1.41  2004/12/11 12:02:58  lulin
// - bug fix: не компилировалось.
//
// Revision 1.40  2004/11/05 14:34:05  narry
// - update
//
// Revision 1.39  2004/11/04 16:26:23  narry
// - update
//
// Revision 1.38  2004/11/03 15:29:48  narry
// - update
//
// Revision 1.37  2004/11/02 16:08:49  narry
// - update
//
// Revision 1.36  2004/09/21 12:21:06  lulin
// - Release заменил на Cleanup.
//
// Revision 1.35  2004/08/17 06:26:47  narry
// - bug fix: ошибка записи-чтения заданий
//
// Revision 1.34  2004/07/06 10:45:42  narry
// - update
//
// Revision 1.33  2004/06/02 08:18:04  voba
// -bug fix
//
// Revision 1.32  2004/06/01 17:04:23  law
// - удален конструктор Tl3VList.MakePersistent - пользуйтесь _Tl3ObjectRefList.
//
// Revision 1.31  2004/04/06 13:08:15  narry
// - bug fix: чтение/запись заданий
//
// Revision 1.30  2004/02/24 14:40:00  narry
// - update
//
// Revision 1.29  2004/01/30 13:11:08  narry
// - update:
//
// Revision 1.28  2003/12/29 12:40:06  voba
// -bug fix
//
// Revision 1.27  2003/12/19 12:12:54  narry
// - update
//
// Revision 1.26  2003/12/17 11:32:51  narry
// - add: расширение списка параметров сообщения на импорт - отслеживание Группы Доступа "Передано в регионы"
//
// Revision 1.25  2003/12/05 16:55:38  voba
// -code clean
//
// Revision 1.24  2003/09/15 14:40:02  narry
// - update: мониторинг пользователей
//
// Revision 1.23  2003/07/31 14:31:11  narry
// - bug fix: "смерть" Архивариуса при просмотре очереди заданий
// - update: откат к посылке сообщений о заданиях
//
// Revision 1.22  2003/07/29 09:01:26  narry
// - bug fix: повторные несанкционированные ответы о состоянии очереди
//
// Revision 1.21  2003/07/29 07:58:12  narry
// - bug fix: повторные несанкционированные ответы о состоянии очереди
//
// Revision 1.20  2003/07/22 15:29:20  narry
// - update: фильтрация заданий происходит на стороне клиента
//
// Revision 1.19  2003/07/22 14:04:20  narry
// - update: отслеживание изменение статуса только "своих" заданий
//
// Revision 1.18  2003/07/22 13:18:31  narry
// - bug fix: вместо списка заданий клиенту передалась информация о последнем задании в списке
//
// Revision 1.17  2003/07/22 12:03:43  narry
// - update & bug fix
//
// Revision 1.16  2003/07/21 16:37:42  narry
// - update & bug fix
//
// Revision 1.15  2003/07/21 10:51:25  voba
// - bug fix: не добавлялась информация о прогрессе выполнения
// - bug fix: окошко мониторинга появлялось самопроизвольно
//
// Revision 1.14  2003/07/21 10:15:46  voba
// - bug fix: не занулялась переменная окно списка
// - bug fix: изменение комментария задачи не обновляло список задач
//
// Revision 1.13  2003/07/21 09:51:47  voba
// - bug fix
//
// Revision 1.12  2003/07/18 08:30:24  narry
// - update: борьба с неправильными DateSeparator
//
// Revision 1.11  2003/07/16 15:56:38  narry
// - new: рассылка сообщений об изменении очереди пользователям, которые в данный момент наблюдают за очередью
//
// Revision 1.10  2003/07/16 08:52:52  narry
// - update
//
// Revision 1.9  2003/07/10 14:35:22  narry
// - update: подготовка к встраиванию в "Архивариус"
//
// Revision 1.8  2003/07/10 08:15:55  narry
// - update: объединение с основной веткой
//
// Revision 1.7.2.4  2003/07/09 06:59:39  narry
// - update
//
// Revision 1.7.2.3  2003/07/08 15:22:42  narry
// - update: приоритет заданий, сортировка заданий по приоритету и многое другое
//
// Revision 1.7.2.2  2003/06/18 13:58:10  narry
// - update:
//
// Revision 1.7.2.1  2003/06/06 13:00:16  narry
// - update, new property (TaskByIndex)
//
// Revision 1.7  2003/06/03 14:35:51  narry
// - update: расширение функциональности для автоклассификатора
//
// Revision 1.6  2003/04/19 12:30:38  law
// - new file: ddDefine.inc.
//
// Revision 1.5  2002/08/28 08:15:52  narry
// - update
//
// Revision 1.4  2002/07/16 08:52:12  narry
// - отображение списка пользователей
//
// Revision 1.3  2002/07/15 14:20:59  narry
// - update: занесение в очередь заданий на экспорт
//
// Revision 1.2  2002/07/15 13:17:21  narry
// - update
//
// Revision 1.1  2002/07/10 08:28:13  narry
//  организация диалога пользователя с "Парнем на сервере"
//

{$I ddDefine.inc }

interface

Uses
 Classes,
 l3IniFile,
 l3Base, l3Types, l3Date,
 dt_Types, dt_NetCommSup, dt_User,
 ddTaskListDlg;

type
 PddUserRequestType = ^TddUserRequestType;
 TddUserRequestType = (dd_urNone,              // 0 Пустая задача
                       dd_urGetServerStatus,   // 1 Запросить статус сервера
                       dd_urGetQueryStatus,    // 2 Запросить статус очереди
                       dd_urGetMyQueryStatus,  // 3 Запросить статус "моих" заданий
                       dd_urDeleteTask,        // 4 Удалить задачу

                       dd_urPutServerStatus,   // 5 Сообщить статус сервера
                       dd_urPutQueryStatus,    // 6 Сообщить статус очереди
                       dd_urPutMyQueryStatus,  // 7 Сообщить статус заданий пользователя
                       dd_urPutQueryID,        // 8 Сообщить номер задания

                       dd_urPutTaskAdded,      //  9 Сообщить, что задание добавлено
                       dd_urPutTaskRunning,    // 10 ...                   выполняется
                       dd_urPutTaskDone,       // 11 ...                   выполнено
                       dd_urPutTaskDeleted,    // 12 ...                   удалено

                       dd_urEndMonitoring);    // 13 Отказ от мониторинга очереди

 TddTaskStatus = (dd_tsQuery,       { в очереди }
                  dd_tsRun,         { выполняется }
                  dd_tsFrozen,      { заморожено }
                  dd_tsFrozenRun,   { выполнение приостановлено }
                  dd_tsDone,        { обработано }
                  dd_tsDeleted,     { удалено }
                  dd_tsError        { выполнение привело к ошибке }
                  );
 TddTaskType = (dd_ttImport,        // Импорт
                dd_ttExport,        // Экспорт документов
                dd_ttAutoClass,     // Автоклассификация
                dd_ttAnnoExport     // Экспорт специальных аннотаций
                );
 TddTaskTypes = set of TddTaskType;

 TddQueryRec = record
  TaskID  : ShortString;
  TaskType: Longint;
  TaskStatus: Longint;
  TaskDate: ShortString;
  TaskDescription: ShortString;
  TaskComment: ShortString;
  TaskPriority: Longint;
  UserID  : Longint;
  Index: Longint;
 end;

const
 RequiredReply = [dd_urGetServerStatus, dd_urGetQueryStatus, dd_urGetMyQueryStatus,
                  dd_urDeleteTask];
 ddQueryRecFormat = 'SDDSSSDDD';

 ReplyRequests = [     dd_urPutServerStatus,   // 5 Сообщить статус сервера
                       dd_urPutQueryStatus,    // 6 Сообщить статус очереди
                       dd_urPutMyQueryStatus,  // 7 Сообщить статус заданий пользователя
                       dd_urPutQueryID,        // 8 Сообщить номер задания

                       dd_urPutTaskAdded,      //  9 Сообщить, что задание добавлено
                       dd_urPutTaskRunning,    // 10 ...                   выполняется
                       dd_urPutTaskDone,       // 11 ...                   выполнено
                       dd_urPutTaskDeleted];    // 12 ...                   удалено

 dd_ttAllTypes = [dd_ttImport, dd_ttExport, dd_ttAutoClass, dd_ttAnnoExport];

type
 TddTaskItem = class(Tl3Base)
 private
  f_TaskID       : ShortString;
  f_TaskType     : TddTaskType;
  f_Status       : TddTaskStatus;
  f_Date         : TDateTime;
  f_Comment      : ShortString;
  f_Priority: Integer;
  f_Description  : AnsiString;
  f_Index        : Integer;
  FTask          : TTask;
  FUserID        : Longint;
  f_OnChange: TNotifyEvent;
  function GetUserID: Longint;
  procedure SetPriority(const Value: Integer);
  procedure SetStatus(const Value: TddTaskStatus);
  procedure SetUserID(const Value: Longint);
 protected
  function GetDescription: AnsiString; virtual;
  procedure Cleanup; override;
 public
  constructor Create(aOwner: TObject);
  function  Compare(const aCompareData : Tl3CompareData;
                    aSortIndex         : Tl3SortIndex = l3_siNative): Long;override;

  procedure SaveToIni(const Ini: TCFGList);
  function LoadFromIni(const Ini: TCFGList): Boolean;
  procedure DeleteFromIni(const Ini: TCFGList); virtual;
  procedure WriteToQueryRecord(var aRec: TddQueryRec);
  procedure ReadFromQueryRecord(aRec: TddQueryRec);
  function AsQueryString: ShortString;
  procedure Delay;
  procedure Delete;
  procedure Done;
  class function MakeFromIni(aIni : TCFGList; aSection : AnsiString): TddTaskItem;
  procedure Run;
 public
  property Index: Longint
   read f_Index  write f_Index;
  property TaskID : ShortString
   read f_TaskID
   write f_TAskID;
  property Status: TddTaskStatus read f_Status write SetStatus;
  property UserID: Longint
   read GetUserID
   write SetUserID;
  property Date: TDateTime
   read f_Date
   write f_Date;
  property Description: AnsiString
   read GetDescription
   write f_Description;
  property TaskType : TddTaskType
   read f_TaskType
   write f_TaskType;
  property Priority: Integer read f_Priority write SetPriority;
  property Comment  : ShortString
  { Комментарий о задании. В основном сюда заносится прогресс выполнения задания }
   read f_Comment
   write f_Comment;
  property OnChange: TNotifyEvent read f_OnChange write f_OnChange;
  property Task: TTask
   read FTask
   write FTask;
 end;



 TddExportTaskItem = class(TddTaskItem)
 private
   function GetAnnoTopicFileName: AnsiString;
   function GetDiapasonType: TDiapType;
   function GetDocID: TDocID;
   function GetDocumentFileNameMask: AnsiString;
   function GetExportAnnoTopics: Boolean;
   function GetExportDirectory: AnsiString;
   function GetExportDocImage: Boolean;
   function GetExportDocument: Boolean;
   function GetExportEmpty: Boolean;
   function GetExportKW: Boolean;
   function GetExportRTFBody: Boolean;
   function GetFamily: Integer;
   function GetInternalFormat: Boolean;
   function GetKWFileName: AnsiString;
   function GetMultiUser: Boolean;
   function GetNumListFileName: AnsiString;
   function GetObjTopicFileName: AnsiString;
   function GetOnlyStructure: Boolean;
   function GetOutFileType: Longint;
   function GetOutputFileSize: LongInt;
   function GetReferenceFileNameMask: AnsiString;
   function GetSeparateFiles: Longint;
 protected
   function GetDescription: AnsiString; override;
 public
   procedure DeleteFromIni(const Ini: TCFGList); override;
   property AnnoTopicFileName: AnsiString read GetAnnoTopicFileName;
   property DiapasonType: TDiapType read GetDiapasonType;
   property DocID: TDocID read GetDocID;
   property DocumentFileNameMask: AnsiString read GetDocumentFileNameMask;
   property ExportAnnoTopics: Boolean read GetExportAnnoTopics;
   property ExportDirectory: AnsiString read GetExportDirectory;
   property ExportDocImage: Boolean read GetExportDocImage;
   property ExportDocument: Boolean read GetExportDocument;
   property ExportEmpty: Boolean read GetExportEmpty;
   property ExportKW: Boolean read GetExportKW;
   property ExportRTFBody: Boolean read GetExportRTFBody;
   property Family: Integer read GetFamily;
   property InternalFormat: Boolean read GetInternalFormat;
   property KWFileName: AnsiString read GetKWFileName;
   property MultiUser: Boolean read GetMultiUser;
   property NumListFileName: AnsiString read GetNumListFileName;
   property ObjTopicFileName: AnsiString read GetObjTopicFileName;
   property OnlyStructure: Boolean read GetOnlyStructure;
   property OutFileType: Longint read GetOutFileType;
   property OutputFileSize: LongInt read GetOutputFileSize;
   property ReferenceFileNameMask: AnsiString read GetReferenceFileNameMask;
   property SeparateFiles: Longint read GetSeparateFiles;
 end;

 TddImportTaskItem = class(TddTaskItem)
 private
   function GetDeleteIncluded: Boolean;
   function GetIsAnnotation: Boolean;
   function GetIsRegion: Boolean;
   function GetSourceFolder: ShortString;
 protected
   function GetDescription: AnsiString; override;
 public
   procedure DeleteFromIni(const Ini: TCFGList); override;
   property DeleteIncluded: Boolean read GetDeleteIncluded;
   property SourceFolder: ShortString read GetSourceFolder;
   property IsAnnotation: Boolean read GetIsAnnotation;
   property IsRegion: Boolean read GetIsRegion;
 end;


 TddRequest = class(Tl3Base)
  private
    FData: AnsiString;
    FRequestType: TddUserRequestType;
    FUserID: TDictID;
  public
    property Data: AnsiString read FData write FData;
    property RequestType: TddUserRequestType read FRequestType write FRequestType;
    property UserID: TDictID read FUserID write FUserID;
  end;



 TddRequestEvent = procedure (aUserID: TUserID;
                              aRequest: TddUserRequestType;
                              aData: AnsiString) of object;
 TddTaskListChangedEvent = procedure (const aTaskID: ShortString;
                                      aStatus: TddTaskStatus) of object;
 TddProcessTaskEvent = procedure (aTask: TddTaskItem) of object;
 TddUserRequestManager = class(Tl3Base)
 private
  FOnProcessTask: TddProcessTaskEvent;
  FUpdatePeriod: LongInt;
  f_OnRequest: TddRequestEvent;
  f_OnTaskListChanged: TddTaskListChangedEvent;
  f_TaskList     : Tl3PVList;
  f_ActiveTaskList: Tl3PVList;
  f_RefreshEvent : TTaskListRefreshEvent;
  f_DeleteEvent  : TTaskListDeleteEvent;
  f_DoWorkup: Boolean;
  f_TaskListDlg: TTaskListDialog;
  f_MonitorUsers: Tl3LongintList;
  f_PrivateMonitorUsers: Tl3LongintList;
  f_LastRequest: TddUserRequestType;
  f_LastUpdate: TDateTime;
  f_RequestQuery: Tl3ObjectRefList;
  f_StartDate : TDateTime;
  procedure AddRequest(aRequest: PAnsiChar);
  function GetTaskList: Tl3PVList;
 protected
  procedure Cleanup; override;
  function SendMsg(aUserHost: AnsiString; aRequestType: TddUserRequestType; const
      aData: AnsiString = ''): Boolean; overload;
  function SendMsg(aUserID: TUserID; aRequestType: TddUserRequestType; const
      aData: AnsiString = ''): Boolean; overload;
  procedure RefreshTaskList(Sender: TObject);
  procedure DeleteTaskFromList(Sender: TObject; TaskID: ShortString);
  function GetTaskByID(aTaskID: ShortString): TddTaskItem;
  function GetTaskByIndex(aTaskIndex: Integer): TddTaskItem;
  function GetActiveTask: TddTaskItem;
  function QueryAsMessage(const aUserID: TUserID = 0): AnsiString;
  function IsMonitoring(aUserID: TUserID; aStatus: TddTaskStatus): Boolean;
  procedure StopMonitoring;
  procedure WorkupRequest(aRequest: TddRequest);
  procedure WorkupRequestQuery;
 public
  constructor Create(aOwner: TObject); override;

  function AddTask(aTask: TddTaskItem): AnsiString;
  function AddExportTask(aTask: TExportTask): TddTaskItem; overload;
  function AddImportTask(aTask: TImportTask): TddTaskItem; overload;
  procedure ProcessActiveQuery;
  procedure TaskDone(aTaskID: ShortString);

  procedure RecieveRequest(aRequest: PAnsiChar);
  {* Формат сообщения - <номер_пользователя><тип_запроса> }
  function SendRequest(aRequestType: TddUserRequestType;
                       const aData: AnsiString = ''): Boolean;
  {* От пользователя к серверу }
  function SendReply(aUser: TDictID; aRequestType: TddUserRequestType; aData:
      String): Boolean;
  {* От сервера к пользователю }

  { Методы для обработки запросов на экспорт/импорт }
  procedure SendImportNotifyMessage(const Catalog : AnsiString; const IsRegion: Boolean = False;
                                    const IsAnnotation: Boolean = False;const DeleteIncluded: Boolean = False);

  procedure SendExportNotifyMessage(aExpType : TDiapType;
                                     const aData : LongInt;
                                     aParam : TExpQueryRec); overload;

  procedure SendExportNotifyMessage(aExpType : TDiapType;
                                     const aData : AnsiString;
                                     aParam : TExpQueryRec); overload;
  procedure SendAnnotationExportNotifyMessage(AnnoDate: TstDate);
  procedure ShowTaskList(const aList: Tl3PVList = nil);
  procedure SetTaskStatus(aTaskID: ShortString; aStatus: TddTaskStatus);
  procedure SetTaskComment(aComment: AnsiString);
  procedure SetTaskPriority(aTaskID: ShortString; aPriority: Integer);
  procedure TaskListChanged(aTask: TddTaskItem);
  procedure TaskChange(Sender: TObject);
 public
  property TaskList: Tl3PVList read GetTaskList;
  property TaskByID[ID: ShortString]: TddTaskItem
   read GetTaskByID;
  property TaskByIndex[Index: Integer]: TddTaskItem
   read GetTaskByIndex;
  property ActiveTask: TddTaskItem
   read GetActiveTask;
  property UpdatePeriod: LongInt
   read FUpdatePeriod
   write FUpdatePeriod;
 public
  property ActiveTaskList: Tl3PVList read f_ActiveTaskList;
  property OnRequest: TddRequestEvent
   read f_OnRequest
   write f_OnRequest;
  property OnTaskListChanged : TddTaskListChangedEvent
   read f_OnTaskListChanged
   write f_OnTaskListChanged;
  property OnRefresh : TTaskListRefreshEvent
  {* Вызывается по нажатию кнопки "Обновить" в окошке списка заданий }
   read f_RefreshEvent
   write f_RefreshEvent;
  property OnDelete  : TTaskListDeleteEvent
   read f_DeleteEvent
   write f_DeleteEvent;
  property OnProcessTask: TddProcessTaskEvent read FOnProcessTask write
      FOnProcessTask;

 end;


function CompareTaskStatus(aStatus1, aStatus2 : TddTaskStatus): Integer;



const
 dd_tpHighest      = 0;
 dd_tpHigh         = 25;
 dd_tpNormal       = 50;
 dd_tpLow          = 75;
 dd_tpLowest       = 100;
 dd_tpDead         = High(Integer);
 dd_tpAutoClass    = dd_tpLowest;//Pred(dd_tpDead);
 dd_tpAutoClassRun = Pred(dd_tpAutoClass);

 dd_MaxQueryLen    = c_MaxUdpMessageLen - 512;

var
 ddRequestManager: TddUserRequestManager = nil;
 ddEnableMonitoring: Boolean = False;

 const
 CorrectPriorities : array[TPriority] of Integer =
     (dd_tpLowest, dd_tpLow, dd_tpNormal, dd_tpHigh, dd_tpHighest);


//function CompareTaskStatus(aStatus1, aStatus2 : TddTaskStatus): Integer;

implementation

Uses
 dt_Serv,  dt_Conn, dt_ServerService, m0DTFLib,
 l3FileUtils, l3String, l3Stream,
 SysUtils, Forms, Math, Dialogs,  DateUtils, Types,
 ddUtils, ExportPipe,
 ddImportPipe;
 { TODO -oДмитрий Дудко -cУлучшение : Избавиться от ссылок на трубы }

resourcestring
 STaskFileExt = '.task';
  rsSavedTaskList = 'SavedTaskList';
  rsParamsMask =                  'BBBBBBD2BDDSSSSSBDDBS'; { TODO -oДмитрий Дудко -cРазвитие : Расширить маску на новые поля }
(*                                 ^^^^^^^ ^^^^^^^^^^^^^
                                   ||||||| |||||||||||||
ExportEmpty           : Boolean; --`|||||| |||||||||||||
ExportDocument        : Boolean; ---`||||| |||||||||||||
ExportRTFBody         : Boolean; ----`|||| |||||||||||||
ExportKW              : Boolean; -----`||| |||||||||||||
ExportDocImage        : Boolean; ------`|| |||||||||||||
MultiUser             : Boolean; -------`| |||||||||||||
Family                : TFamilyID;-------` |||||||||||||
InternalFormat        : Boolean; ----------`||||||||||||
OutFileType           : Longint; -----------`|||||||||||
SeparateFiles         : Longint; ------------`||||||||||
DocumentFileNameMask  : ShortString;----------`|||||||||
ReferenceFileNameMask : ShortString;-----------`||||||||
ObjTopicFileName      : ShortString;------------`|||||||
ExportDirectory       : ShortString;-------------`||||||
KWFileName            : ShortString;--------------`|||||
WorkVAnonced          : Boolean; ------------------`||||
OutputFileSize        : LongInt; -------------------`|||
TaskPriority          : Longint; --------------------`||
ExportAnnoTopics      : Boolean; ---------------------`|
AnnoTopicFileName     : ShortString; ------------------`

*)
type
 TddTaskItemClass = class of TddTaskItem;

const
 TaskTypes : array[TddTaskType] of TddTaskItemClass = (
                TddImportTaskItem,      // Импорт
                TddExportTaskItem,      // Экспорт документов
                TddExportTaskItem,      // Автоклассификация
                TddExportTaskItem);     // Экспорт специальных аннотаций


constructor TddUserRequestManager.Create(aOwner: TObject);
begin
 inherited;
 f_TaskList:= Tl3ObjectRefList.Make;
 f_ActiveTaskList := Tl3ObjectRefList.Make;
 f_MonitorUsers:= Tl3LongintList.MakeSorted;
 f_PrivateMonitorUsers:= Tl3LongintList.MakeSorted;
 f_LastRequest:= dd_urNone;
 f_RequestQuery := Tl3ObjectRefList.Make;
 f_DoWorkup := False;
 f_LastUpdate := Now;
 FUpdatePeriod := 10;
end;

procedure TddUserRequestManager.Cleanup;
begin
 l3Free(f_ActiveTaskList);
 l3Free(f_RequestQuery);
 l3Free(f_PrivateMonitorUsers);
 l3Free(f_MonitorUsers);
 l3Free(f_TaskList);
 inherited;
end;

function TddUserRequestManager.QueryAsMessage(const aUserID: TUserID = 0): AnsiString;
var
 i: Integer;
 l_task: TddTaskItem;
 l_AddTask: Boolean;
 l_Rec: TddQueryRec;
 l_ValidStatus: set of TddTaskStatus;
begin
 Result:= '';
 if TaskList.Count > 0 then
 begin
  for i:= TaskList.Hi downto 0 do
  //for i:= 0 to TaskList.Hi do
  begin
   l_task:= TddTaskItem(TaskList.Items[i]);
   //if l_Task.Status in l_ValidStatus then
   if CompareDate(l_Task.Date, Date) = EqualsValue then
   begin
    if aUserID > 0 then
     l_AddTask:= (l_Task.UserID = aUserID)// and (CompareDate(l_Task.Date, Date) = EqualsValue)
    else
     l_AddTask:= True;
    if l_AddTask then
    begin
     if Result <> '' then
      Result:= #10 + Result;
     l_Task.WriteToQueryRecord(l_Rec);
     Result:= Format('"%s"', [RecToFormatString(l_Rec, ddQueryRecFormat)]) + Result ;
     (* Искусственное ограничение длины сообщения *)
     if Length(Result) > dd_MaxQueryLen then
     begin
      l3System.Msg2Log(Format('Очередь обрезана - %d заданий вместо %d', [TaskList.Count-i, TaskList.Count]));
      break;
     end; // Length(Result) > dd_MaxQueryLen
     (* *)
    end; // l_AddTask
   end; // l_Task.Status in [dd_tsQuery, dd_tsRun]
  end; // for i
 end; // TaskList.Count > 0
 if Result = '' then
  Result:= #10
 else
  l3System.Msg2Log(Format('Длина передаваемого сообщения %d', [Length(Result)]));
end;

procedure TddUserRequestManager.RecieveRequest(aRequest: PAnsiChar);
begin
 AddRequest(aRequest);
 WorkupRequestQuery;
end;

function TddUserRequestManager.SendMsg(aUserID: TUserID; aRequestType:
    TddUserRequestType; const aData: AnsiString = ''): Boolean;
begin
 Result := SendMsg(StationJornal.GetStationName(aUserID), aRequestType, aData);
end;

function TddUserRequestManager.SendMsg(aUserHost: AnsiString; aRequestType:
    TddUserRequestType; const aData: AnsiString = ''): Boolean;
var
 TmpStr      : ShortString;
 TmpPos,
 TmpMessage  : PAnsiChar;
 TmpLen      : Word;
begin
 Result:= False;
 if GlobalHTServer.SendServ <> nil then
 begin
  TmpStr:= aUserHost;
  if TmpStr <> '' then
  begin
   TmpLen:=msPrefLength+SizeOf(TDictID)+SizeOf(TddUserRequestType)+Length(aData)+1;
   TmpMessage := l3StrAlloc(TmpLen);
   try
    l3FillChar(TmpMessage^,TmpLen,#0);
    // префикс
    l3Move(msUserRequest,TmpMessage^,msPrefLength);
    TmpPos:= TmpMessage+msPrefLength;
    // номер пользователя
    l3Move(GlobalHTServer.CurUserID,TmpPos^,SizeOf(TDictID));
    TmpPos:= TmpPos+SizeOf(TDictID);
    // данные
    l3Move(aRequestType, TmpPos^, SizeOf(TddUserRequestType));
    TmpPos:= TmpPos + SizeOf(TddUserRequestType);

    if aData <> '' then
     l3Move(aData[1], TmpPos^, Length(aData));

    GlobalHTServer.SendNetMessage(TmpStr,TmpMessage,TmpLen);
    Result:= True;
   finally
    l3StrDispose(TmpMessage);
   end; // tmpMessage
  end; // TmpStr <> ''
 end; // GlobalHTServer.SendServ <> nil
end;

function TddUserRequestManager.SendRequest(aRequestType: TddUserRequestType;
                                           const aData: AnsiString = ''): Boolean;
begin
 Result:= SendMsg(usServerService, aRequestType, aData);
 f_LastRequest:= aRequestType;
end;

function TddUserRequestManager.SendReply(aUser: TDictID; aRequestType:
    TddUserRequestType; aData: AnsiString): Boolean;
begin
 Result:= SendMsg(StationJornal.GetStationName(aUser), aRequestType, aData);
end;

procedure TddUserRequestManager.SendAnnotationExportNotifyMessage(AnnoDate: TstDate);
begin
 ServerServiceMessenger.SendAnnotationExportNotifyMessage(AnnoDate);
end;

procedure TddUserRequestManager.SendImportNotifyMessage(const Catalog : AnsiString;
                                                        const IsRegion: Boolean = False;
                                                        const IsAnnotation: Boolean = False;
                                                        const DeleteIncluded: Boolean = False);
begin
 ServerServiceMessenger.SendImportNotifyMessage(Catalog, IsRegion, IsAnnotation, DeleteIncluded);
end;

procedure TddUserRequestManager.SendExportNotifyMessage(aExpType : TDiapType;
                                  const aData : LongInt;
                                  aParam : TExpQueryRec);
begin
 ServerServiceMessenger.SendExportNotifyMessage(aExpType, aData, aParam);
end;

procedure TddUserRequestManager.SendExportNotifyMessage(aExpType : TDiapType;
                                  const aData : AnsiString;
                                  aParam : TExpQueryRec);
var
 l_Task: TddTaskItem;
begin
 ServerServiceMessenger.SendExportNotifyMessage(aExpType, aData, aParam);
 l_Task:= TddTaskItem.Create(nil);
 try
  l_Task.TaskType:= dd_ttExport;
  //l_Task.Directory:= aParam.ExportDirectory;
  TaskList.Add(TObject(l_Task));
 finally
  l3Free(l_Task);
 end;
end;

procedure TddUserRequestManager.RefreshTaskList(Sender: TObject);
begin
 if Assigned(f_RefreshEvent) then
  f_RefreshEvent(Sender)
 else
 begin
  SendRequest(dd_urGetQueryStatus);
 end;
end;

procedure TddUserRequestManager.DeleteTaskFromList(Sender: TObject; TaskID: ShortString);
begin
 if Assigned(f_DeleteEvent) then
  f_DeleteEvent(Sender, TaskID)
 else
 begin

  SendRequest(dd_urDeleteTask, TaskID);
 end;
end;

procedure TddUserRequestManager.ShowTaskList(const aList: Tl3PVList = nil);
begin
 ddEnableMonitoring:= False;
  if f_TaskListDlg = nil then
  begin
   f_TaskListDlg:= TTaskListDialog.Create(Application);
   with f_TaskListDlg do
   try
    if aList = nil then
     TaskLst:= TaskList
    else
     TaskLst:= aList;
    OnRefresh:= RefreshTaskList;
    OnDelete := DeleteTaskFromList;
    if Execute and (aList = nil) then
     TaskList.Assign(TaskLst);
    StopMonitoring;
   finally
    FreeAndNil(f_TaskListDlg);
   end;
  end
  else
  begin
//   f_TaskListDlg.UpdateListView;
   f_TaskListDlg.TaskLst:= aList;
  end;
end;


function TddUserRequestManager.AddExportTask(aTask: TExportTask): TddTaskItem;
var
 l_Task: TddTaskItem;
begin
 l_Task:= TddExportTaskItem.Create(nil);
 try
  l_Task.Task := aTask.Use;
  if TepSupportFileType(aTask.OutFileType) in [outAutoClass, outAutoClassDelayed] then
   l_Task.TaskType:= dd_ttAutoClass
  else
  if TepSupportFileType(aTask.OutFileType) = outAnnotation then
   l_Task.TaskType:= dd_ttAnnoExport
  else
   l_Task.TaskType:= dd_ttExport;
  AddTask(l_Task);
  Result := l_Task;
 finally
  l3Free(l_Task);
 end;
end;

function TddUserRequestManager.AddImportTask(aTask: TImportTask): TddTaskItem;
var
 l_Task: TddTaskItem;
begin
 l_Task:= TddImportTaskItem.Create(nil);
 try
  l_Task.Task := aTask.Use;
  AddTask(l_Task);
  Result := l_Task;
 finally
  l3Free(l_Task);
 end;
end;

procedure TddUserRequestManager.AddRequest(aRequest: PAnsiChar);
var
 l_Request : TddRequest;
 l_Tmp : PAnsiChar;
 l_NotAdd : Boolean;
begin
 l_Request := TddRequest.Create;
 try
  l_Request.UserID:= PDictID(aRequest)^;
  l_Tmp:= aRequest+SizeOf(TDictID);
  l_Request.RequestType:= PddUserRequestType(l_Tmp)^;
  l_Tmp:= l_Tmp + SizeOf(TddUserRequestType);
  l_Request.Data:= l3GetStrPas(l_Tmp);
  if not ((f_LastRequest in [dd_urNone, dd_urEndMonitoring]) and
     (l_Request.RequestType in ReplyRequests)) then
   f_RequestQuery.Add(l_Request);
 finally
  L3Free(l_Request);
 end;
end;

function TddUserRequestManager.AddTask(aTask: TddTaskItem): AnsiString;
var
 l_ExportPriority,
 l_ImportPriority : TPriority;
begin
 aTask.OnChange := TaskChange;
 aTask.Date:= Now;
 if aTask.TaskID = '' then
  aTask.TaskID:= Format('%d-%s', [aTask.UserID, FormatDateTime('dd-mm-ss-zzz', aTask.Date)]);
 aTask.Comment := 'ожидание выполнения';
 ActiveTaskList.Add(TObject(aTask));
 TaskList.Add(TObject(aTask));
 aTask.Index:= TaskList.IndexOf(aTask);
 Result:= aTask.TaskID;
 TaskListChanged(aTask); {!!}
end;

procedure TddUserRequestManager.TaskDone(aTaskID: ShortString);
begin
 SetTaskStatus(aTaskID, dd_tsDone);
end;

function TddUserRequestManager.GetActiveTask: TddTaskItem;
var
 i: Integer;
 l_Task: TddTaskItem;
begin
 Result:= nil;
 for i:= 0 to TaskList.Hi do
 begin
  l_Task:= TddTaskItem(TaskList.Items[i]);
  if l_Task.Status = dd_tsRun then
  begin
   Result:= l_Task;
   break;
  end; // l_Task.Status = dd_tsRun
 end; // for i
end;

function TddUserRequestManager.GetTaskByIndex(aTaskIndex: Integer): TddTaskItem;
begin
 if (aTaskIndex > 0) and (aTaskIndex < TaskList.Count) then
  Result:= TddTaskItem(TaskList.Items[aTaskIndex])
 else
  Result:= nil;
end;

function TddUserRequestManager.GetTaskByID(aTaskID: ShortString): TddTaskItem;
var
 i: Integer;
 l_Task: TddTaskItem;
begin
 Result:= nil;
 (*
 if TaskListDlg <> nil then
  for i:= 0 to f_TaskListDlg.TaskLst.Hi do
  begin
   l_Task:= TddTaskItem(f_TaskListDlg.TaskLst.Items[i]);
   if l_Task.TaskID = aTaskID then
   begin
    Result:= l_Task;
    break;
   end; // l_Task.TaskID = aTaskID
  end // for i
  else
  *)
  for i:= 0 to TaskList.Hi do
  begin
   l_Task:= TddTaskItem(TaskList.Items[i]);
   if l_Task.TaskID = aTaskID then
   begin
    Result:= l_Task;
    break;
   end; // l_Task.TaskID = aTaskID
  end; // for i
end;

function TddUserRequestManager.GetTaskList: Tl3PVList;
begin
 if f_TaskListDlg <> nil then
  Result := f_TaskListDlg.TaskLst
 else
  Result := f_TaskList;
end;

procedure TddUserRequestManager.SetTaskStatus(aTaskID: ShortString; aStatus: TddTaskStatus);
var
 l_Task: TddTaskItem;
 i: Integer;
 l_R: TddUserRequestType;
begin
 l_Task:= TaskByID[aTaskID];
 if l_Task <> nil then
 begin
  l_Task.Status:= aStatus;
  case l_Task.Status of
   dd_tsQuery     :
    l_R:= dd_urPutTaskAdded;       { в очереди }
   dd_tsDone      :
    begin
     l_Task.Comment:= Format('Обработано за %s', [CalcElapsedTime(Now, f_StartDate)]);
     l_R:= dd_urPutTaskDone;
    end;        { обработано }
   dd_tsRun       :
    begin
     f_StartDate:= Now;
     l_R:= dd_urPutTaskRunning;
    end;         { выполняется }
   dd_tsDeleted   :
    l_R:= dd_urPutTaskDeleted;     { удалено }
   dd_tsFrozen    :
    l_R:= dd_urPutTaskRunning;      { заморожено }
   dd_tsFrozenRun :
    l_R:= dd_urPutTaskRunning;
  end;
  if f_MonitorUsers.IndexOf(l_Task.UserID) = -1 then
   SendReply(l_Task.UserID, l_R, l_Task.AsQueryString);
  i:= 0;
  while i < f_MonitorUsers.Count do
  begin
   { Рассылаем сообщения пользователям, у которых открыты окна с очередью
     Тех пользователей, которым отправить сообщение не удалось, удаляем из списка }
   if SendReply(f_MonitorUsers.Items[i], l_R, l_Task.AsQueryString) then
    inc(i)
   else
    f_MonitorUsers.Delete(i);
  end;  // while
  i:= 0;
  while i < f_PrivateMonitorUsers.Count do
  begin
   { Рассылаем сообщения пользователям, у которых открыты окна с очередью
     Тех пользователей, которым отправить сообщение не удалось, удаляем из списка }
   if SendReply(f_PrivateMonitorUsers.Items[i], l_R, l_Task.AsQueryString) then
    inc(i)
   else
    f_PrivateMonitorUsers.Delete(i);
  end;  // while
  if Assigned(f_OnTaskListChanged) then
   f_OnTaskListChanged(l_Task.TaskID, aStatus)
  //TaskListChanged(l_Task.TaskID, l_Task.Status);
 end; // l_Task <> nil
end;

procedure TddUserRequestManager.SetTaskComment(aComment: AnsiString);
var
 l_Task: TddTaskItem;
begin
 l_Task:= ActiveTask;
 if l_Task <> nil then
 begin
  l_Task.Comment:= aComment;
  // Нужно передавать информацию только об одной задаче
  TaskListChanged(l_Task); {!!}
 end;
end;

procedure TddUserRequestManager.TaskListChanged(aTask: TddTaskItem);
var
 i: Integer;
 l_Task: TddTaskItem;
 l_Request : TddUserRequestType;
begin
 if Assigned(f_OnTaskListChanged) then
  f_OnTaskListChanged(aTask.TaskID, aTask.Status);
 if SecondsBetween(f_LastUpdate, Now) > UpdatePeriod then
 begin
  f_LastUpdate := Now;
  case aTask.Status of
   dd_tsQuery : l_Request := dd_urPutTaskAdded;
   dd_tsDone  : l_Request := dd_urPutTaskDone;
   dd_tsDeleted: l_Request := dd_urPutTaskDeleted;
  else
   l_Request := dd_urPutTaskRunning;
  end; // aTask.Status

  i:= 0;
  while i < f_MonitorUsers.Count do
  begin
   if SendReply(f_MonitorUsers.Items[i], l_Request, aTask.AsQueryString) then
    inc(i)
   else
    f_MonitorUsers.Delete(i);
  end; // i < f_MonitorUsers.Count
  i:= 0;
  while i < f_PrivateMonitorUsers.Count do
  begin
   { Рассылаем сообщения пользователям, у которых открыты окна с очередью
     Тех пользователей, которым отправить сообщение не удалось, удаляем из списка }
   if aTask.UserID = f_PrivateMonitorUsers.Items[i] then
    if SendReply(f_PrivateMonitorUsers.Items[i], l_Request, aTask.AsQueryString) then
     inc(i)
    else
     f_PrivateMonitorUsers.Delete(i)
   else
    inc(i);
  end; // i < f_PrivateMonitorUsers.Count
  if IsMonitoring(aTask.UserID, aTask.Status) then
  begin
   if f_TaskListDlg <> nil then
    f_TaskListDlg.UpdateListView
   else
    ShowTaskList(TaskList);
  end; // IsMonitoring(TaskByID[aTaskID].UserID, aStatus)
 end; // MilliSecondsBetween(Now, f_LastUpdate) > UpdatePeriod
end;

function TddUserRequestManager.IsMonitoring(aUserID: TUserID; aStatus: TddTaskStatus): Boolean;
begin
 if f_LastRequest = dd_urGetQueryStatus then
  Result:= AStatus in [dd_tsQuery, dd_tsRun, dd_tsFrozen, dd_tsFrozenRun, dd_tsDone]
 else
 if f_LastRequest = dd_urGetMyQueryStatus then
  Result:= aUserID = GlobalHtServer.CurUserID
 else
  Result:= False;
end;

procedure TddUserRequestManager.ProcessActiveQuery;
var
 i: Integer;
 l_Task : TddTaskItem;
begin
 i:= 0;
 while i < ActiveTaskList.Count do
 begin
  l_task := TddTaskItem(ActiveTaskList.Items[i]);
  if l_Task.Status = dd_tsQuery then
   if Assigned(FOnProcessTask) then
    FOnProcessTask(l_Task)
   else
    l_Task.Status := dd_tsFrozen;
  Inc(i);
 end;
end;

procedure TddUserRequestManager.SetTaskPriority(aTaskID: ShortString;
    aPriority: Integer);
var
 l_Task: TddTaskItem;
begin
 l_Task:= TaskByID[aTaskID];
 if (l_Task <> nil) and (l_task.Priority <> aPriority) then
 begin
  l_Task.Priority := aPriority;
  if Assigned(f_OnTaskListChanged) then
   f_OnTaskListChanged(l_Task.TaskID, l_Task.Status)
 end; // (l_Task <> nil) and (l_task.Priority <> aPriority)
end;

procedure TddUserRequestManager.StopMonitoring;
begin
 f_LastRequest:= dd_urNone;
 ddRequestManager.SendRequest(dd_urEndMonitoring);
end;

procedure TddUserRequestManager.TaskChange(Sender: TObject);
begin
  // TODO -cMM: TddUserRequestManager.TaskStatusChange default body inserted
end;

procedure TddUserRequestManager.WorkupRequest(aRequest: TddRequest);
var
 l_Request : TddUserRequestType;
 l_S,
 l_Message, l_Date: AnsiString;
 l_Task: TddTaskItem;
 i, l_Pos : Integer;
 l_List    : TStrings;
 l_TaskList: Tl3PVList;
 l_AddTask: Boolean;
 lSaveShortDateFormat,
 lSaveShortTimeFormat : AnsiString;
 l_Rec: TddQueryRec;
begin
 f_DoWorkup := True;
 try
  //l3System.Msg2Log(Format('User:%d, Request:%d, Data:%s', [l_UserID, Ord(l_RequestType), l_Data]));
  case aRequest.RequestType of
   dd_urGetServerStatus:
    begin
     { Отдать состояние сервера:
        - состояние (ожидание, работа...)
        - количество пользователей
        - длина очереди (?)
     }
    end;
   dd_urGetQueryStatus,
   dd_urGetMyQueryStatus :
    begin
     //ServerServiceMessenger.SendTextMessageToUser(aRequest.UserID, 'По техническим причинам сервис отображения очереди заданий отключен.');
     if aRequest.RequestType = dd_urGetMyQueryStatus then
     begin
      l_Message:= QueryAsMessage(aRequest.UserID);
      l_Request:= dd_urPutMyQueryStatus;
     end
     else
     begin
      l_Message:= QueryAsMessage;
      l_Request:= dd_urPutQueryStatus;
     end;
     if l_Message[1] <> #10 then
      if aRequest.RequestType = dd_urGetMyQueryStatus then
       f_PrivateMonitorUsers.Add(aRequest.UserID)
      else
       f_MonitorUsers.Add(aRequest.UserID);
     SendReply(aRequest.UserID, l_Request, l_Message);
    end; // dd_urGetQueryStatus
   dd_urPutTaskAdded,
   dd_urPutTaskRunning,
   dd_urPutTaskDone,
   dd_urPutTaskDeleted:
    begin
     FormatStringToRec(aRequest.Data, l_Rec, ddQueryRecFormat);
     //if l_Rec.UserID = GlobalHtServer.CurUserID then
     { Обрабатываем только собственные задания. На остальные "плюем" }
     begin
      l_Task:= TaskByID[l_Rec.TaskID];
      if (l_Task = nil) and (aRequest.RequestType = dd_urPutTaskAdded) then
      begin
       l_Task:= TddTaskItem.Create(nil);
       try
        l_Task.ReadFromQueryRecord(l_Rec);
        TaskList.Add(TObject(l_Task));
       finally
        l3Free(l_Task);
       end;
       l_Task:= TaskByID[l_Rec.TaskID];
      end;
      if l_Task <> nil then
      begin
       l_Task.ReadFromQueryRecord(l_Rec);
       TaskListChanged(l_Task); {!!}
      end;
     end; // l_Rec.UserID = GlobalHtServer.CurUserID
    end; // dd_urTaskDone
   dd_urPutServerStatus:
    begin
     {!!!! Отображение информации, полученной от сервера
     ddUserListDialog.ListBox1.Items.CommaText:= l_Data;
     ddUserListDialog.ShowModal;
     }
    end;
   dd_urPutQueryStatus,
   dd_urPutMyQueryStatus  :
     begin
      if (aRequest.Data = '') or (aRequest.Data[1] = #10) then
      begin
       ShowMessage('Очередь заданий пуста');
       StopMonitoring;
      end
      else
      begin
       ddEnableMonitoring:= False;
       l_List:= TStringList.Create;
       try
        l_List.Delimiter:= #10;
        l_List.DelimitedText:= aRequest.Data;
        l_TaskList:= Tl3ObjectRefList.MakeSorted;
        try
         i:= 0;
         while i < l_List.Count do
         begin
          l_Task:= TddTaskItem.Create(nil);
          try
           l_S:= l_List.Strings[i];
           try
            FormatStringToRec(l_S, l_Rec, ddQueryRecFormat);
            l_Task.ReadFromQueryRecord(l_Rec);
            if IsMonitoring(l_Task.UserID, l_Task.Status) then
             l_TaskList.Add(TObject(l_Task));
           except
            i:= l_List.Count;
           end;
          finally
           l3Free(l_Task);
          end; // l_Task
          Inc(i);
         end; // for i
         if l_TaskList.Count > 0 then
         begin
          f_DoWorkup := False;
          ShowTaskList(l_TaskList);
         end
         else
         begin
          ShowMessage('Очередь заданий пуста');
          StopMonitoring;
         end;
        finally
         l3Free(l_TaskList);
        end; // l_TaskList
       finally
        l3Free(l_List);
       end; // l_List
      end;
     end; // dd_urPutQueryStatus
   dd_urPutQueryID:
    begin
     for i:= 0 to TaskList.Hi do
     begin
      l_Task:= TddTaskItem(TaskList.Items[i]);
      if l_Task.TaskID = '' then
      begin
       l_Task.TaskID:= aRequest.Data;
       break;
      end; //l_Task.TaskID = ''
     end; //for i
    end;
   dd_urEndMonitoring:
    begin
     { Удалить пользователя из списка }
     f_MonitorUsers.Remove(aRequest.UserID);
     f_PrivateMonitorUsers.Remove(aRequest.UserID);
    end;
  else
   if Assigned(f_OnRequest) then
    f_OnRequest(aRequest.UserID, aRequest.RequestType, aRequest.Data);
  end;
 finally
  f_DoWorkup := False;
 end;
end;

procedure TddUserRequestManager.WorkupRequestQuery;
begin
 if not f_DoWorkup then
  while f_RequestQuery.Count > 0 do
  begin
   WorkupRequest(TddRequest(f_RequestQuery.Items[0]));
   if f_RequestQuery.Count > 0 then
    f_RequestQuery.Delete(0);
  end; // f_RequestQuery.Count > 0
end;


{ TddTaskItem }
constructor TddTaskItem.Create(aOwner: TObject);
begin
 inherited;
 f_Priority:= High(f_Priority) div 2;
end;

procedure TddTaskItem.SaveToIni(const Ini: TCFGList);
var
 l_Stream: TStream;
 l_FileName : AnsiString;
begin
{ TODO -oДмитрий Дудко -cРазвитие : переделать }
 with Ini do
 begin
  Section:= TaskID;
  WriteParamDate('Date', f_Date);
  WriteParamInt('TaskType', Ord(f_TaskType));
  WriteParamInt('Priority', f_Priority);
  writeParamStr('TaskID', f_TaskID);
  Section:= rsSavedTaskList;
  WriteParamStr(TaskID, TaskID);
 end;
 l_FileName := ConcatDirName(ExtractFilePath(Application.Exename), ChangeFileExt(TaskID, STaskFileExt));
 l_Stream := Tl3FileStream.Create(l_FileName, l3_fmWrite);
 try
  Task.SaveTo(l_Stream);
 finally
  l3Free(l_Stream);
 end;
end;

function TddTaskItem.LoadFromIni(const Ini: TCFGList): Boolean;
var
 l_Int: Longint;
 l_V: Integer;
 l_Stream: TStream;
 l_FileName : AnsiString;
begin
 l_FileName := ConcatDirName(ExtractFilePath(Application.Exename), ChangeFileExt(TaskID, STaskFileExt));
 with Ini do
 begin
  Section:= TaskID;
  if ReadParamDate('Date', f_Date) and FileExists(l_FileName) then
  begin
   ReadParamInt('UserID', l_V);
   UserID := l_V;
   ReadParamInt('TaskType', l_V);
   f_TaskType:= TddTaskType(l_V);
   ReadParamInt('Priority', f_Priority);
   l_Stream := Tl3FileStream.Create(l_FileName, l3_fmRead);
   try
    try
     Task := TTask.RestoreFrom(l_Stream);
    except
     Result:= False;
     DeleteSection(TaskID);
     DeleteFile(l_FileName);
    end;
   finally
    l3Free(l_Stream);
   end;
   Result:= True;
  end
  else
  begin
   Result:= False;
   DeleteSection(TaskID);
   if FileExists(l_FileName) then
    DeleteFile(l_FileName);
  end;
 end;
end;

procedure TddTaskItem.DeleteFromIni(const Ini: TCFGList);
begin
 Ini.DeleteSection(TaskID);
 DeleteFile(ConcatDirName(ExtractFilePath(Application.Exename), ChangeFileExt(TaskID, STaskFileExt)));
end;

function TddTaskItem.GetDescription: AnsiString;
begin
 Result := '';
end;


function TddTaskItem.Compare(const aCompareData: Tl3CompareData;
  aSortIndex: Tl3SortIndex): Long;
begin
 if (aCompareData.CompareType = l3_ctObject) and (aCompareData.AsObject is TddTaskItem) then
 begin
  Result:= CompareValue(Priority, TddTaskItem(aCompareData.AsObject).Priority);
  if Result = 0 then
   Result := CompareDateTime(Date, TddTaskItem(aCompareData.AsObject).Date);
 end
 else
  inherited Compare(aCompareData, aSortIndex);
end;

function TddTaskItem.AsQueryString: ShortString;
var
 l_Rec: TddQueryRec;
begin
 WriteToQueryRecord(l_Rec);
 Result:= RecToFormatString(l_Rec, ddQueryRecFormat);
end;

procedure TddTaskItem.Cleanup;
begin
  l3Free(FTask);
  inherited;
end;

procedure TddTaskItem.Delay;
begin
  Status := dd_tsFrozen;
end;

procedure TddTaskItem.Delete;
begin
  Status := dd_tsDeleted;
end;

procedure TddTaskItem.Done;
begin
 Status := dd_tsDone;
end;

function TddTaskItem.GetUserID: Longint;
begin
 if Task <> nil then
  Result := Task.UserID
 else
  Result := FUserID;
end;

class function TddTaskItem.MakeFromIni(aIni : TCFGList; aSection : AnsiString):
    TddTaskItem;
var
 l_V: Integer;
begin
 with aIni do
 begin
  Section:= aSection;
  ReadParamInt('TaskType', l_V);
  if InRange(l_V, Ord(Low(TddTaskType)), Ord(High(TddTaskType))) then
  begin
   Result := TaskTypes[TddTaskType(l_V)].Create(nil);
   Result.TaskID := ReadParamStrDef('TaskID', '');
  end
  else
   Result := nil;
 end;
end;

procedure TddTaskItem.WriteToQueryRecord(var aRec: TddQueryRec);
var
 l_Date: AnsiString;
begin
 DateTimeToString(l_Date, 'dd/mm/yyyy hh:nn:ss', f_Date);
 if DateSeparator <> '/' then
  while Pos(DateSeparator, l_Date) <> 0 do
   l_Date[Pos(DateSeparator, l_Date)]:= '/';

 aRec.TaskID  := TaskID;
 aRec.TaskType:= Ord(TaskType);
 aRec.TaskStatus:= Ord(Status);
 aRec.TaskDate:= l_Date;
 aRec.TaskDescription:= Description;
 aRec.TaskComment:= Comment;
 aRec.TaskPriority := Priority;
 aRec.UserID:= UserID;
 aRec.Index:= Index;
end;

procedure TddTaskItem.ReadFromQueryRecord(aRec: TddQueryRec);
begin
 TaskID:= aRec.TaskID;
 TaskType:= TddTaskType(aRec.TaskType);
 Status:= TddTaskStatus(aRec.TaskStatus);
 Date:= m0DTFStrToDateTime(aRec.TaskDate);
 Description:= aRec.TaskDescription;
 Comment:= aRec.TaskComment;
 Priority := aRec.TaskPriority;
 UserID:= aRec.UserID;
 Index:= aRec.Index;
end;

procedure TddTaskItem.Run;
begin
  Status := dd_tsRun;
end;

procedure TddTaskItem.SetPriority(const Value: Integer);
begin
 if f_Priority <> Value then
 begin
  f_Priority := Value;
  if Assigned(f_OnChange) then
   f_OnChange(Self);
 end; // f_Priority <> Value
end;

procedure TddTaskItem.SetStatus(const Value: TddTaskStatus);
begin
 if f_Status <> Value then
 begin
  f_Status := Value;
  if Assigned(f_OnChange) then
   f_OnChange(Self);
 end;
end;

procedure TddTaskItem.SetUserID(const Value: Longint);
begin
  if Task <> nil then
   Task.UserID := Value
  else
   FUserID := Value;
end;


function CompareTaskStatus(aStatus1, aStatus2 : TddTaskStatus): Integer;
begin
 Result := CompareValue(Ord(aStatus1), Ord(aStatus2));
end;

procedure TddExportTaskItem.DeleteFromIni(const Ini: TCFGList);
begin
 inherited;
 DeleteFile(NumListFileName);
end;

function TddExportTaskItem.GetAnnoTopicFileName: AnsiString;
begin
 if Task <> nil then
  Result := TExportTask(Task).AnnoTopicFileName
 else
  Result := '';
end;

function TddExportTaskItem.GetDescription: AnsiString;
var
 l_SR: TSearchRec;
 l_Mask, l_Descript: AnsiString;
 l_Total, l_Count: Int64;
begin
 if f_Description = '' then
  case TaskType of
   dd_ttExport:
    begin
     Result := '';
     if TepDivideBy(SeparateFiles) = divTopic then
      Result:= 'По документам, '
     else
     begin
      if DocumentFileNameMask <> '' then
       Result := SysUtils.Format('%s, ', [DocumentFileNameMask]);
      if TepDivideBy(SeparateFiles) = divSize then
       Result := Result + SysUtils.Format('размер части: %s, ', [Bytes2Str(OutputFileSize)]);
     end;
     Result := Result + SysUtils.Format('папка: %s, формат: %s',
                                       [ExportDirectory,
                                       SupportFileTypeNames[TepSupportFileType(OutFileType)]]);
    end;
   dd_ttAutoClass: Result:= 'Автоклассификация документов';
   dd_ttAnnoExport: Result := 'Экспорт аннотаций конечным пользователям';
  end
 else
  Result:= f_Description;
end;

function TddExportTaskItem.GetDiapasonType: TDiapType;
begin
 if Task <> nil then
  Result := TExportTask(Task).DiapasonType
 else
  Result := tdNone;
end;

function TddExportTaskItem.GetDocID: TDocID;
begin
 if Task <> nil then
  Result := TExportTask(Task).DocID
 else
  Result := -1;
end;

function TddExportTaskItem.GetDocumentFileNameMask: AnsiString;
begin
 if Task <> nil then
  Result := TExportTask(Task).DocumentFileNameMask
 else
  Result := '';
end;

function TddExportTaskItem.GetExportAnnoTopics: Boolean;
begin
 if Task <> nil then
  Result := TExportTask(Task).ExportAnnoTopics
 else
  Result := False;
end;

function TddExportTaskItem.GetExportDirectory: AnsiString;
begin
 if Task <> nil then
  Result := TExportTask(Task).ExportDirectory
 else
  Result := '';
end;

function TddExportTaskItem.GetExportDocImage: Boolean;
begin
 if Task <> nil then
  Result := TExportTask(Task).ExportDocImage
 else
  Result := False;
end;

function TddExportTaskItem.GetExportDocument: Boolean;
begin
 if Task <> nil then
  Result := TExportTask(Task).ExportDocument
 else
  Result := False;
end;

function TddExportTaskItem.GetExportEmpty: Boolean;
begin
 if Task <> nil then
  Result := TExportTask(Task).ExportEmpty
 else
  Result := False;
end;

function TddExportTaskItem.GetExportKW: Boolean;
begin
 if Task <> nil then
  Result := TExportTask(Task).ExportKW
 else
  Result := False;
end;

function TddExportTaskItem.GetExportRTFBody: Boolean;
begin
 if Task <> nil then
  Result := TExportTask(Task).ExportRTFBody
 else
  Result := False;
end;

function TddExportTaskItem.GetFamily: Integer;
begin
 if Task <> nil then
  Result := TExportTask(Task).Family
 else
  Result := 0;
end;

function TddExportTaskItem.GetInternalFormat: Boolean;
begin
 if Task <> nil then
  Result := TExportTask(Task).InternalFormat
 else
  Result := False;
end;

function TddExportTaskItem.GetKWFileName: AnsiString;
begin
 if Task <> nil then
  Result := TExportTask(Task).KWFileName
 else
  Result := '';
end;

function TddExportTaskItem.GetMultiUser: Boolean;
begin
 if Task <> nil then
  Result := TExportTask(Task).MultiUser
 else
  Result := True;
end;

function TddExportTaskItem.GetNumListFileName: AnsiString;
begin
 if Task <> nil then
  Result := TExportTask(Task).NumListFileName
 else
  Result := '';
end;

function TddExportTaskItem.GetObjTopicFileName: AnsiString;
begin
 if Task <> nil then
  Result := TExportTask(Task).ObjTopicFileName
 else
  Result := '';
end;

function TddExportTaskItem.GetOnlyStructure: Boolean;
begin
 if Task <> nil then
  Result := TExportTask(Task).OnlyStructure
 else
  Result := False;
end;

function TddExportTaskItem.GetOutFileType: Longint;
begin
 if Task <> nil then
  Result := TExportTask(Task).OutFileType
 else
  Result := 0;
end;

function TddExportTaskItem.GetOutputFileSize: LongInt;
begin
 if Task <> nil then
  Result := TExportTask(Task).OutputFileSize
 else
  Result := 0;
end;

function TddExportTaskItem.GetReferenceFileNameMask: AnsiString;
begin
 if Task <> nil then
  Result := TExportTask(Task).ReferenceFileNameMask
 else
  Result := '';
end;

function TddExportTaskItem.GetSeparateFiles: Longint;
begin
 if Task <> nil then
  Result := TExportTask(Task).SeparateFiles
 else
  Result := 0;
end;

procedure TddImportTaskItem.DeleteFromIni(const Ini: TCFGList);
begin
 inherited;
 DelDir(SourceFolder);
end;

function TddImportTaskItem.GetDeleteIncluded: Boolean;
begin
 if (Task <> nil)  then
  Result := TImportTask(Task).DeleteIncluded
 else
  Result := False;
end;

function TddImportTaskItem.GetDescription: AnsiString;
var
 l_SR: TSearchRec;
 l_Mask, l_Descript: AnsiString;
 l_Total, l_Count: Int64;
begin
 if f_Description = '' then
 begin
  case CheckFileType(SourceFolder, IsAnnotation) of
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
  if FindFirst(ConcatDirName(SourceFolder, l_Mask), faAnyFile, l_SR) = 0 then
  repeat
   Inc(l_Total, l_SR.Size);
   Inc(l_Count);
  until FindNext(l_SR) <> 0;
  FindClose(l_SR);
  f_Description:= Format('файлов %s: %d (%s)', [l_Descript, l_Count, Bytes2Str(l_Total)]);
  Result:= f_Description;
 end
 else
  Result:= f_Description;
end;

function TddImportTaskItem.GetIsAnnotation: Boolean;
begin
 if Task <> nil then
  Result := TImportTask(Task).IsAnnotation
 else
  Result := False;
end;

function TddImportTaskItem.GetIsRegion: Boolean;
begin
 if Task <> nil then
  Result := TImportTask(Task).IsRegion
 else
  Result := False;
end;

function TddImportTaskItem.GetSourceFolder: ShortString;
begin
 if Task <> nil then
  Result := TImportTask(Task).SourceFolder
 else
  Result:= ''
end;

end.
