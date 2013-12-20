unit Dt_NetComm;

{ $Id: Dt_NetComm.pas,v 1.50 2013/04/24 09:35:37 lulin Exp $ }
// $Log: Dt_NetComm.pas,v $
// Revision 1.50  2013/04/24 09:35:37  lulin
// - портируем.
//
// Revision 1.49  2010/09/28 13:06:09  fireton
// - Распределяем память для PChar своими средствами
//
// Revision 1.48  2008/02/01 16:41:34  lulin
// - используем кошерные потоки.
//
// Revision 1.47  2007/08/14 19:31:56  lulin
// - оптимизируем очистку памяти.
//
// Revision 1.46  2007/08/14 14:30:08  lulin
// - оптимизируем перемещение блоков памяти.
//
// Revision 1.45  2006/03/09 12:15:11  narry
// - изменение: новая технология передачи заданий
//
// Revision 1.44  2006/01/12 07:28:39  step
// изменена обработка ошибок в DoConnect
//
// Revision 1.43  2006/01/11 13:45:42  step
// вставлен временный код для отладки
//
// Revision 1.42  2006/01/11 07:33:34  step
// чистка комментариев
//
// Revision 1.41  2006/01/11 07:26:35  step
// Исправлен TDbClient для правильной работы без сервера
//
// Revision 1.40  2005/12/27 08:52:47  step
// Исправлена TDbClient.QuerySystemTime
//
// Revision 1.39  2005/12/26 16:00:55  step
// Убран адрес отправителя из TNetMessage за ненадобностью
//
// Revision 1.38  2005/12/26 15:55:47  step
// Обработка сообщений с сервера вынесена из TDbClient
//
// Revision 1.37  2005/12/23 17:30:21  step
// запросы выполняются только если прошел коннект
//
// Revision 1.36  2005/12/23 10:32:10  step
// переделки под CS
//
// Revision 1.35  2005/11/29 13:08:09  narry
// - новое: функция отправки запроса на экспорт аннотаций
//
// Revision 1.34  2005/11/23 12:58:52  step
// исправлена TDbClient.Send(aTask)
//
// Revision 1.33  2005/11/23 11:06:05  step
// добавлены login/logout
//
// Revision 1.32  2005/11/22 12:53:05  step
// исправлена ошибка копирования директорий большой глубины вложенности
//
// Revision 1.31  2005/11/22 09:36:57  step
// исправлена TDbClient.Send(aTask)
//
// Revision 1.30  2005/11/22 07:43:18  step
// слияние с веткой b_change_protocol
//
// Revision 1.29  2005/11/18 15:53:29  step
// добавлена обработка Task'ов
//
// Revision 1.28  2005/11/18 15:36:58  step
// использование TQueuedActions вместо отправки виндовых сообщений
//
// Revision 1.27  2005/11/16 09:17:31  step
// оптимизированы ForAllStations и LocalAddress
//
// Revision 1.26  2005/11/16 07:41:06  step
// отправка и получение датаграмм в TDbClient теперь с разных сокетов
//
// Revision 1.25.2.7  2005/11/07 17:16:28  step
// добавлены два публичных метода Connect/Disconnect
//
// Revision 1.25.2.6  2005/11/07 16:46:59  step
// явно закрываем сеанс с использованием GoodBye
//
// Revision 1.25.2.5  2005/11/07 15:47:49  step
// Открытие-закрытие буфера записи перенесено в TcpConnect-TcpDisconnect. Новая процедура HandShake.
//
// Revision 1.25.2.4  2005/11/07 13:20:48  step
// обработка команд вынесена в отдельную процедуру ProcessCommands
//
// Revision 1.25.2.3  2005/11/02 08:11:55  step
// new: function TDbServer.IsWelcome
//
// Revision 1.25.2.2  2005/11/02 07:43:39  step
// new: TDbClientList
//
// Revision 1.25.2.1  2005/11/02 07:42:26  step
// произвольный выбор порта udp-server'а
//
// Revision 1.25  2005/11/01 13:06:37  step
// исправлен размер макс. длины udp сообщения в TDbClient
//
// Revision 1.24  2005/10/20 11:32:17  step
// убран отладочный код
//
// Revision 1.23  2005/10/06 11:09:18  step
// TDbClient.QueryFiles превращена в function
//
// Revision 1.22  2005/10/06 09:14:19  step
// Вернули обратно ReadLn, WriteLn
//
// Revision 1.21  2005/10/03 12:43:10  step
// Замена: ReadLn, WriteLn --> ReadFileName, WriteFileName
//
// Revision 1.20  2005/09/30 07:56:40  step
// перед выполнением _Move делаем проверку длины данных
//
// Revision 1.19  2005/09/27 11:14:03  step
// bugfix: TDbClient.OnUdpServerRead (чтение из пустого сообщения)
//
// Revision 1.18  2005/09/21 08:05:05  step
// слияние с веткой B_UPDATE_INDY_TO_10_1_1
//
// Revision 1.17.2.3  2005/08/30 09:37:26  step
// подправлена TDbServer.SendUdpMessage
//
// Revision 1.17.2.2  2005/08/16 12:25:39  step
// подгонка под новую библиотеку Indy
//
// Revision 1.17.2.1  2005/08/15 15:40:35  step
// подгонка под новую библиотеку
//
// Revision 1.17  2005/07/27 16:08:08  step
// при QueryFiles не затираем старые файлы
//
// Revision 1.16  2005/07/19 08:59:38  step
// временная заплатка на EIdConnClosedGracefully
//
// Revision 1.15  2005/07/07 16:49:38  step
// при отправке-получении файлов учитываются и вложенные папки
//
// Revision 1.14  2005/07/06 10:23:11  step
// изменена константа c_NoMoreFiles
//
// Revision 1.13  2005/07/05 09:22:32  step
// сервер явно отключается после обработки запроса
//
// Revision 1.12  2005/06/29 16:16:08  step
// вставлена доп. проверка в fn_SendFileProc
//
// Revision 1.11  2005/06/29 14:44:56  step
// для размера файла используется Int64
//
// Revision 1.10  2005/06/29 10:32:22  step
// добавлена запись в лог попыток соединения при нессотв. версиях протокола
//
// Revision 1.9  2005/06/29 10:06:41  step
// сделан механизм проверки версий сборки
//
// Revision 1.8  2005/06/29 08:41:02  step
// игнорируем исключение EIdConnClosedGracefully
//
// Revision 1.7  2005/06/24 09:53:10  step
// добавлена обработка исключений на сервере
//
// Revision 1.6  2005/06/23 11:44:07  step
// новый адрес широковещательной рассылки: c_AllStations
//
// Revision 1.5  2005/06/22 17:46:54  step
// замена метода Broadcast_ на глобальную процедуру ForAllStations
//
// Revision 1.4  2005/06/21 12:44:44  step
// удаляется папка после отправки файлов
//
// Revision 1.3  2005/06/16 16:35:26  step
// включена буферизация отправляемых данных
//
// Revision 1.2  2005/06/16 12:29:26  step
// слияние с веткой b_use_net_comm
//
// Revision 1.1.2.7  2005/06/08 11:29:50  step
// изменена TDbClient.Connect
//
// Revision 1.1.2.6  2005/06/08 10:26:22  step
// подправлена TDbServer.BroadcastUdpMessage
//
// Revision 1.1.2.5  2005/06/07 16:42:31  step
// добавлен параметр aExcludeHost в TDbServer.BroadcastUdpMessage
//
// Revision 1.1.2.4  2005/06/07 15:20:54  step
// new function LocalAddress
//
// Revision 1.1.2.3  2005/06/06 16:10:45  step
// Переименование некоторых констант, методов.
// Автоматич. вычисление  Ip-адреса сервера.
// Если не задан GlobalHtServer.ReceiveServ, то ничего не делается.
//
// Revision 1.1.2.2  2005/06/03 16:54:43  step
// добавлены запросы файлов и системного времени
//
// Revision 1.1.2.1  2005/06/03 13:24:37  step
// занесено в CVS
//

{$I DtDefine.inc}

interface

uses
 Windows, Messages, SysUtils, Classes, Contnrs,
 IdBaseComponent, IdUDPBase, IdSocketHandle, IdUDPClient, IdUdpServer,
 IdComponent, IdContext, IdTcpClient, IdTCPServer, IdGlobal, IdCustomTCPServer,
 IdIOHandler,
 l3Base, l3Date,
 Dt_Types, Dt_NetCommSup, Dt_Tasks, Dt_NetUs;

type
 TClientId = Integer;

 TOnChangeTasksProc = procedure(aTaskList: TThreadList) of object;
 TOnAppMessageProc = procedure(aMessageKind: TNetMessageKind; aData: Integer) of object;
 TOnNetMessageProc = procedure(const aMessage: TNetMessage) of object;

 TDbClientInfo = class(Tl3Base)
 private
  UdpAddressAsDWord: Cardinal;
 public
  ClientName: string;
  UdpAddress: string;
  UdpPort: TIdPort;
  Id: TClientId;
 end;

 TDbLoggedClients = class(Tl3Base)
 private
  f_Synchronizer: TMultiReadExclusiveWriteSynchronizer;
  f_Clients: TObjectList;
  f_FreeId: Integer;
 protected
  procedure Cleanup; override;
  function IndexOf(aClientId: TClientId): Integer;
 public
  constructor Create; reintroduce;
  function Add(const aClientName: string;
               const aUdpAddress: string;
               aUdpPort: TIdPort): TClientId; // Не допускаются повторения имен (при запуске несколько прог использовать разные логины)
                                              // Если такой логин уже есть, то "Add превращается в Update"
  function IsLogged(aClientId: TClientId): Boolean;
  function InfoOf(aClientId: TClientId): TDbClientInfo; // при отсутствии возвр. nil
  function FindAddressOf(const aClientName: string;
                         out aDestIp: string;
                         out aDestPort: TIdPort): Boolean;
  function IdOf(const aClientName: string): TClientId; // если не найдет, то вернет c_WrongClientId
  procedure Delete(aClientId: TClientId);
 end;

 TNotifyMessage = class(Tl3Base)
 private
  f_Bytes: TIdBytes;
  procedure CheckDataLength(aDataLength: Integer); // выбрасывает исключение
  procedure CheckFormat(const aBytes: TIdBytes); // выбрасывает исключение
  procedure SetBytes(const aBytes: TIdBytes);

  function  GetKind: TNetMessageKind;
  procedure SetKind(const aKind: TNetMessageKind);
  function  GetData: TIdBytes;
 protected
  procedure Cleanup; override;
 public
  constructor Create; overload;
  constructor Create(aKind: TNetMessageKind;
                     aData: PByte = nil;
                     aDataLength: Integer = 0); overload;
  procedure SaveTo(aIOHandler: TIdIOHandler);
  procedure RestoreFrom(aIOHandler: TIdIOHandler);
  procedure SetData(aData: PByte; aDataLength: Integer);
  property AsBytes: TIdBytes read f_Bytes write SetBytes;
  property Kind: TNetMessageKind read GetKind write SetKind;
  property Data: TIdBytes read GetData;
 end;

 TDbClient = class(Tl3Base)
 private
  f_TcpClient: TIdTcpClient;
  f_UdpServer: TIdUdpServer;
  f_Notifications: TQueuedActions;
  f_LastMessages: TThreadList;
  f_Messages: TObjectList;
//  f_UserName: string;
//  f_Password: string;
  f_ClientId: TClientId;
  f_ServerName: string;
  f_OnNetMessage: TOnNetMessageProc;

  procedure OnUdpServerRead(Sender: TObject;
                            aData: TIdBytes;
                            aBinding: TIdSocketHandle);
  procedure OnUDPListenerException(Sender :TObject;
                                   aBinding: TIdSocketHandle;
                                   const aMessage : string;
                                   const aExceptionClass : TClass);
  function DoConnect: Boolean;
  procedure DoDisconnect;
  procedure OnChangeLastMessList(aLastMessId: Integer = 0; aLastMessData: Integer = 0);
  procedure OnOldStyledMessage(const aNetMessage: TNetMessage);

  procedure ProcessUdpMessage(const aNetMessage: TNetMessage);
  procedure ProcessServerReply(aReply: TServerReply);
  procedure SetServerName(const aValue: string);
 protected
  procedure Cleanup; override;
 public
  constructor Create;
  function Send(const aTask: TTask): Boolean; overload;
  function Send(const aRecipient: string;
                const aMessage: TNotifyMessage): Boolean; overload;

  function  Login: Boolean;
  function  Logout: Boolean;
  function  QueryFiles(const aFromPath, aToPath: string): Boolean;
  function  QuerySystemTime(out aTime: TDateTime): Boolean;

  function  ListenPort: TIdPort;
  property  ClientId: TClientId read f_ClientId write f_ClientId;

  property  ServerName: string read f_ServerName write SetServerName;
//  property  UserName: string read f_UserName write f_UserName;
//  property  Password: string read f_Password write f_Password;
  property  OnNetMessage: TOnNetMessageProc read f_OnNetMessage write f_OnNetMessage;
 end;

 TDbNotifier = class(Tl3Base)
 private
  f_CriticalSection: TCriticalSection;
  f_UdpClient: TIdUdpClient;
 protected
  //f_ClientList: TDbLoggedClients;
  f_Stations: TNetUsersJournal;
  procedure Cleanup; override;
 public
  constructor Create(const aStations: TNetUsersJournal); reintroduce;
  procedure Send(const aRecipientName: string;
                 aMessage: TNotifyMessage);
  procedure Broadcast(aMessage: TNotifyMessage;
                      aExcludeClientId: TClientId = c_WrongClientId);
 end;

 TDbServer = class(Tl3Base)
 private
  f_TcpServer: TIdTcpServer;
  f_Notifications: TQueuedActions;
  f_Tasks: TThreadList;
  f_OnChangeTasks: TOnChangeTasksProc;
  f_DbNotifier: TDbNotifier;
  f_AppMessages: TQueuedActions;
  f_OnAppMessage: TOnAppMessageProc;

  f_Clients: TDbLoggedClients;
  procedure OnTCPServerExecute(aContext: TIdContext);

  // обработка исключений
  procedure TcpServerListenExceptionHandler(aThread: TIdListenerThread; aException: Exception);
  procedure TcpServerExceptionHandler(aContext: TIdContext; aException: Exception);

  function IsPasswordValid(const aName, aPassword: string): Boolean;

  procedure OnNewTask(aTaskId: Integer; aData: Integer);
  procedure OnAppMessageProc(aMessageId: Integer; aData: Integer);
  procedure ClearTasks;
 protected
  procedure Cleanup; override;
 public
  constructor Create(aPort: TIdPort = c_TcpServerPort; const aIp: string = ''); reintroduce;
  property Clients: TDbLoggedClients read f_Clients;
  property Tasks: TThreadList read f_Tasks;
  property OnChangeTasks: TOnChangeTasksProc read f_OnChangeTasks write f_OnChangeTasks;
  property OnAppMessage: TOnAppMessageProc read f_OnAppMessage write f_OnAppMessage;

  property Notifier: TDbNotifier read f_DbNotifier;
 end;

 TExecutor = class(Tl3Base)
 private
  f_Server: TDbServer;
  f_Context: TIdContext;
  f_UserId: TUserId;
  function GetIOHandler: TIdIOHandler;
  property IOHandler: TIdIOHandler read GetIOHandler;
 protected
  procedure OnConnect;
  procedure ProcessCommands;
  procedure Process(aCommand: TNetMessageKind);

  procedure OnOldStyledMessage;
  procedure OnTask;
  procedure OnQueryFiles;
  procedure OnQuerySystemTime;
  procedure OnPassMessage;
  procedure OnLogin;
  procedure OnLogout;

  procedure Cleanup; override;
 public
  constructor Create(aServer: TDbServer; aContext: TIdContext); reintroduce;
  procedure Run;
 end;

 TSendUdpMessageProc = procedure(const aDestIp: string;
                                 aMessageKind: TNetMessageKind;
                                 aMessage: PByte;
                                 aMessageLen: Integer) of object;

// широковещательное сообщение по UDP (для отправки используется aSendProc)
procedure ForAllStations(aSendProc: TSendUdpMessageProc;
                         aMessageKind: TNetMessageKind;
                         aMessage: PByte;
                         aMessageLen: Integer;
                         const aExcludeHost: string = '');

function LocalAddress: string;

procedure SaveTasks(aTasks: TThreadList; aStream: TStream);
procedure RestoreTasks(aTasks: TThreadList; aStream: TStream);


const
 g_DbClient: TDbClient = nil;
 g_DbServer: TDbServer = nil;

implementation

uses
 Math,
 IdStack, IdThread, IdException,
 l3Memory, l3DatLst, l3FileUtils,
 Dt_Serv, Dt_Conn,
 IdTCPConnection, IdStreamVCL, IdTask, IdIOHandlerSocket, IdStackConsts, IdExceptionCore,
 l3Stream
 ;

const
 c_NoMoreFiles: string = '<>';
 g_LocalAddress: string = '';

 c_NotifyMessageHeaderLength = SizeOf(c_NetCommVersion) +
                               SizeOf(Integer); // это под aKind

function LocalAddress: string;
var
 l_StackIsTemporal: Boolean;
 l_Stack: TIdStack;
begin
 if g_LocalAddress = '' then
 begin
  l_StackIsTemporal := GStack = nil;

  if l_StackIsTemporal then
   l_Stack := IdStackFactory
  else
   l_Stack := GStack;

  try
   g_LocalAddress := l_Stack.LocalAddress;

   // временно (begin) - чтоб работало на компе Вована, где имеет место сет. адаптер с адресом "0.1.0.4"
   g_LocalAddress := Trim(g_LocalAddress);
   if (Length(g_LocalAddress) > 0) and (g_LocalAddress[1] = '0') then
   begin
    if l_Stack.LocalAddresses.Count > 1 then
     g_LocalAddress := l_Stack.LocalAddresses[1];
   end;
   // временно (end)


   if not l_Stack.IsIP(g_LocalAddress) then
    g_LocalAddress := l_Stack.ResolveHost(g_LocalAddress);
  finally
   if l_StackIsTemporal then
    l3Free(l_Stack);
  end;
 end;
 Result := g_LocalAddress;
end;

procedure ForAllStations(aSendProc: TSendUdpMessageProc;
                         aMessageKind: TNetMessageKind;
                         aMessage: PByte;
                         aMessageLen: Integer;
                         const aExcludeHost: string = '');
var
 l_Stations: Tl3StringDataList;
 I: Integer;
 l_DestAddr: string;
 l_ExclHost: PAnsiChar;
begin
 if Length(aExcludeHost) = 0 then
  l_ExclHost := nil
 else
  l_ExclHost := @aExcludeHost[1];
 l_Stations := StationJornal.GetActiveStationList(l_ExclHost);
 try
  for I := 0 to l_Stations.Count - 1 do
  begin
   l_DestAddr := StrPas(l_Stations.Strings[I]);
   if l_DestAddr <> c_AllStations then
    aSendProc(l_DestAddr, aMessageKind, aMessage, aMessageLen);
  end; // for
 finally
  l3Free(l_Stations);
 end;
end;

function IsValidVersion(aVersion: Integer; aSocket: TIdSocketHandle): Boolean;
begin
 Result := (aVersion = c_NetCommVersion);
 if not Result then
  l3System.Msg2Log(SysUtils.Format('Сообщение со станции %s проигнорировано из-за несоответствия версий протокола (верс. удален. %d, верс. локальн. %d).',
                                   [aSocket.PeerIp, aVersion, c_NetCommVersion]));
end;

procedure SaveTasks(aTasks: TThreadList; aStream: TStream);
var
 l_List: TList;
 l_Count: Integer;
 I: Integer;
begin
 l_List := aTasks.LockList;
 try
  l_Count := l_List.Count;
  aStream.Write(l_Count, SizeOf(Integer));
  for I := 0 to l_Count - 1 do
   TTask(l_List[I]).SaveTo(aStream);
 finally
  aTasks.UnlockList;
 end;
end;

procedure RestoreTasks(aTasks: TThreadList; aStream: TStream);
var
 l_Task: TTask;
 l_List: TList;
 l_Count: Integer;
 I: Integer;
begin
 l_List := aTasks.LockList;
 try
  // сначала очистка от "прошлого"
  for I := 0 to l_List.Count - 1 do
  begin
   l_Task := TTask(l_List[I]);
   l3Free(l_Task);
  end;
  l_List.Clear;

  l_Count := aStream.Read(l_Count, SizeOf(Integer));
  for I := 0 to l_Count - 1 do
  begin
   l_Task := TTask.RestoreFrom(aStream);
   l_List.Add(l_Task);
  end;
 finally
  aTasks.UnlockList;
 end;
end;


{ TDbClient }

procedure TDbClient.OnUdpServerRead(Sender: TObject;
                                    aData: TIdBytes;
                                    aBinding: TIdSocketHandle);
const
 c_PrefLen: Integer = SizeOf(Integer) +  // это под l_Version
                      SizeOf(Integer);   // это под l_MessageKind
var
 l_Version: Integer;
 l_MessageKind: TNetMessageKind;
 l_MessageData: PByte;
 l_MessageDataLength: Integer;
 l_Message: TNetMessage;
 l_LockedList: TList;
begin
 // создаем объект-сообщение
 l_MessageDataLength := Length(aData) - c_PrefLen;
 if l_MessageDataLength < 0 then
  Exit; // пропускаем кривые данные (неполный заголовок)
 if l_MessageDataLength > 0 then
  l_MessageData := @aData[c_PrefLen]
 else
  l_MessageData := nil;
 l_Version := PInteger(@aData[0])^;
 l_MessageKind := TNetMessageKind(PInteger(@aData[SizeOf(l_Version)])^);
 if not IsValidVersion(l_Version, aBinding) then
  Exit; // просто игнорируем пакеты "не той версии"
 l_Message := TNetMessage.Create(l_MessageKind,
                                 l_MessageData,
                                 l_MessageDataLength);

 // кладем его в список
 l_LockedList := f_LastMessages.LockList;
 try
  l_LockedList.Add(l_Message);
 finally
  f_LastMessages.UnlockList;
 end;

 // сообщаем об изменении этого списка
 f_Notifications.Enqueue;
end;

procedure TDbClient.OnChangeLastMessList(aLastMessId: Integer = 0;
                                         aLastMessData: Integer = 0);
var
 l_Message: TNetMessage;
 l_LockedList: TList;
 I: Integer;
begin
 // перенос из одного списка в другой
 l_LockedList := f_LastMessages.LockList;
 try
  for I := 0 to l_LockedList.Count - 1 do
   f_Messages.Add(l_LockedList[I]);
  l_LockedList.Clear;
 finally
  f_LastMessages.UnlockList;
 end;

 // обработка сообщений
 while f_Messages.Count > 0 do
 begin
  l_Message := TNetMessage(f_Messages.Extract(f_Messages.First));
  try
   ProcessUdpMessage(l_Message);
  finally
   l3Free(l_Message);
  end;
 end;
end;

procedure TDbClient.ProcessUdpMessage(const aNetMessage: TNetMessage);
begin
 case aNetMessage.Kind of
  mkOldStyled:
   OnOldStyledMessage(aNetMessage);
 else
  if Assigned(f_OnNetMessage) then
   f_OnNetMessage(aNetMessage);
 end; // case
end;

procedure TDbClient.Cleanup;
var
 l_List: TList;
 l_Message: TNetMessage;
 I: Integer;
begin
 if f_TcpClient.Connected then
 begin
  f_TcpClient.Disconnect;
  f_TcpClient.IOHandler.WriteBufferCancel;
 end; 
 l3Free(f_TcpClient);

 f_UdpServer.Active := False;
 l3Free(f_UdpServer);

 l3Free(f_Notifications);

 l_List := f_LastMessages.LockList;
 try
  for I := 0 to l_List.Count - 1 do
  begin
   l_Message := l_List.Items[I];
   l3Free(l_Message);
  end;
  l_List.Clear;
 finally
  f_LastMessages.UnlockList;
 end;
 l3Free(f_LastMessages);

 l3Free(f_Messages);

 inherited;
end;

constructor TDbClient.Create;
begin
 inherited Create;

 f_ClientId := c_WrongClientId; // пока не залогинились

 f_Notifications := TQueuedActions.Create(OnChangeLastMessList);

 f_Messages := TObjectList.Create(True);
 f_LastMessages := TThreadList.Create;
 f_LastMessages.Duplicates := dupAccept;

 // f_TcpClient
 f_TcpClient := TIdTcpClient.Create(nil);
 f_TcpClient.Port := c_TcpServerPort;
 f_TcpClient.ConnectTimeout := c_ClientConnectTimeout;
 f_TcpClient.ReadTimeout := c_ClientReadTimeout;

 // f_UdpServer
 f_UdpServer := TIdUdpServer.Create(nil);
 f_UdpServer.OnUDPRead := OnUdpServerRead;
 f_UdpServer.OnUDPException :=  OnUDPListenerException;
 f_UdpServer.BufferSize := c_MaxUdpMessageLen;
 f_UdpServer.ThreadedEvent := True;
 with f_UdpServer.Bindings.Add do
 begin
  ClientPortMin := c_UdpServerPortMin;
  ClientPortMax := c_UdpServerPortMax;
 end;
 f_UdpServer.Active := True;
end;

procedure TDbClient.SetServerName(const aValue: string);
begin
 f_ServerName := Trim(aValue);
 if Length(f_ServerName) > 0 then
  f_TcpClient.Host := GStack.ResolveHost(f_ServerName)
 else
  f_TcpClient.Host := '';
end;

function TDbClient.QueryFiles(const aFromPath, aToPath: string): Boolean;
var
 l_FileName: string;
 l_FileSize: Int64;
 l_FileStream: Tl3FileStream;
 l_FullFileName: string;
 l_Dir: string;
begin
 Result := DoConnect;
 if Result then
 try
  // запрос
  with f_TcpClient.IOHandler do
  begin
   Write(Integer(Ord(mkQueryFiles)));
   WriteLn(aFromPath);
   WriteBufferFlush;
  end; // with
  // получение
  if not DirExists(aToPath) then
   CreateDir(aToPath);
  while f_TcpClient.Connected do
  begin
   l_FileName := f_TcpClient.IOHandler.ReadLn;
   if l_FileName = c_NoMoreFiles then
    Break;
   l_FullFileName := ConcatDirName(aToPath, l_FileName);
   l_Dir := ExtractFilePath(l_FullFileName);
   if not DirExists(l_Dir) then
    MakeDir(l_Dir);
   if FileExists(l_FullFileName) then
    RenametoBack(l_FullFileName);
   l_FileSize := f_TcpClient.IOHandler.ReadInt64;
   l_FileStream := Tl3FileStream.Create(l_FullFileName, l3_fmCreateReadWrite);
   try
    f_TcpClient.IOHandler.ReadStream(l_FileStream, l_FileSize);
   finally
    l3Free(l_FileStream);
   end;
  end; // while
 finally
  DoDisconnect;
 end;
end;

function TDbClient.QuerySystemTime(out aTime: TDateTime): Boolean;
var
 l_Bytes: TIdBytes;
begin
 Result := DoConnect;
 if Result then
 try
  // запрос
  f_TcpClient.IOHandler.Write(Integer(Ord(mkQuerySystemTime)));
  f_TcpClient.IOHandler.WriteBufferFlush;

  // получение
  f_TcpClient.IOHandler.ReadBytes(l_Bytes, SizeOf(aTime));
  aTime := PDateTime(@l_Bytes[0])^;
 finally
  DoDisconnect;
 end;
end;

procedure TDbClient.OnOldStyledMessage(const aNetMessage: TNetMessage);
var
 l_Data: PChar;
 l_DataLen: Integer;
begin
 if GlobalHtServer.ReceiveServ <> nil then
 begin
  l_DataLen := Length(aNetMessage.Data);
  l_Data := l3StrAlloc(l_DataLen + 1);
  l3FillChar(l_Data^, l_DataLen + 1, #0);
  if l_DataLen > 0 then
   l3Move(aNetMessage.Data[0], l_Data^, l_DataLen);

  PostMessage(GlobalHtServer.ReceiveServ.Handle,
              WM_GoReceive,
              Ord(aNetMessage.Kind),
              LongInt(l_Data));
 end;
end;

procedure TDbClient.OnUDPListenerException(Sender: TObject;
                                           aBinding: TIdSocketHandle;
                                           const aMessage: string;
                                           const aExceptionClass: TClass);
begin
 with aBinding do
  l3System.Msg2Log(SysUtils.Format('UdpServer %s:%d - Exception in listener thread.',
                                   [Ip, Port]));
 l3System.Msg2Log(aMessage);
end;

function TDbClient.Send(const aTask: TTask): Boolean;
begin
 if (aTask = nil) then
 begin
  Result := True;
  Exit;
 end;

 Result := DoConnect;
 if Result then
 try
  with f_TcpClient.IOHandler do
  begin
   Write(Integer(Ord(mkTask)));
   aTask.SaveTo(f_TcpClient.IOHandler);
   WriteBufferFlush;
  end; // with
 finally
  DoDisconnect;
 end;
end;

function TDbClient.DoConnect: Boolean;
begin
 Result := False;
 if f_TcpClient.Host = '' then
  Exit;

 // подключение
 try
  f_TcpClient.Connect;
 except
  on EIdConnectTimeout do {пусто};
  on E: EIdSocketError do
  begin
   if (E.LastError <> Id_WSAECONNREFUSED)
    {and (E.LastError <> Id_WSAETIMEDOUT)}
   then
    raise;
  end;
 end; // except

 if f_TcpClient.Connected then
 begin
  // откроем буфер
  if not f_TcpClient.IOHandler.WriteBufferingActive then
   f_TcpClient.IOHandler.WriteBufferOpen(c_MaxPacketSize);

  // запись
  f_TcpClient.IOHandler.Write(Integer(c_NetCommVersion));
  f_TcpClient.IOHandler.Write(Integer(f_ClientId));
  f_TcpClient.IOHandler.WriteBufferFlush;

  // чтение
  ProcessServerReply(TServerReply(f_TcpClient.IOHandler.ReadInteger));
  
  Result := True;
 end;
end;

procedure TDbClient.DoDisconnect;
begin
 if f_TcpClient.Connected then
 begin
  f_TcpClient.IOHandler.Write(Integer(Ord(mkGoodBye)));
  f_TcpClient.IOHandler.WriteBufferFlush;
  f_TcpClient.IOHandler.WriteBufferClear;
  f_TcpClient.Disconnect;
 end;
end;

function TDbClient.Login: Boolean;
begin
 Result := DoConnect;
 if Result then
 try
  with f_TcpClient.IOHandler do
  begin
   Write(Integer(Ord(mkLogin)));
   Write(Integer(f_ClientId));
   WriteBufferFlush;
  end;
 finally
  DoDisconnect;
 end;
end;

function TDbClient.Logout: Boolean;
begin
 Result := DoConnect;
 if Result then
 try
  with f_TcpClient.IOHandler do
  begin
   Write(Integer(Ord(mkLogout)));
   Write(Integer(f_ClientId));
   WriteBufferFlush;
  end;
 finally
  DoDisconnect;
 end;
end;

procedure TDbClient.ProcessServerReply(aReply: TServerReply);
begin
 case aReply of
  srWelcome:
   begin
    {ну и хорошо};
   end;
  srGoodbye:
   begin
    DoDisconnect;
   end;
  srNeedLogin:
   begin
    begin
     {пока ничего не предпринимаем}
//     DoDisconnect;
//     raise ENetCommError.Create('Неверный пользователь/пароль.');
    end;
   end;
  srWrongProtocol:
   begin
    DoDisconnect;
    raise ENetCommError.Create('Обнаружено несоответствие клиентской и ' +
                               'серверной программ (по протоколу обмена данными).');
   end;
 end; // case
end;

function TDbClient.Send(const aRecipient: string;
                        const aMessage: TNotifyMessage): Boolean;
begin
 Result := DoConnect;
 if Result then
 try
  f_TcpClient.IOHandler.Write(Integer(Ord(mkPassMessage)));
  f_TcpClient.IOHandler.WriteLn(aRecipient);
  aMessage.SaveTo(f_TcpClient.IOHandler);
  //f_TcpClient.IOHandler.WriteBufferFlush;
 finally
  DoDisconnect;
 end;
end;

function TDbClient.ListenPort: TIdPort;
begin
 Result := f_UdpServer.Binding.Port;
end;

{ TDbServer }

procedure TDbServer.Cleanup;
var
 l_Message: TNotifyMessage;
begin
 if f_DbNotifier <> nil then
 begin
  l_Message := TNotifyMessage.Create(mkServerStopped);
  try
   f_DbNotifier.Broadcast(l_Message);
  finally
   l3Free(l_Message);
  end;
 end;

 l3Free(f_AppMessages);
 l3Free(f_Notifications);
 l3Free(f_DbNotifier);

 if f_Tasks <> nil then
  ClearTasks;
 l3Free(f_Tasks);

 if f_TcpServer <> nil then
  f_TcpServer.Active := False;

 l3Free(f_Clients);
 l3Free(f_TcpServer);

 inherited;
end;

constructor TDbServer.Create(aPort: TIdPort = c_TcpServerPort; const aIp: string = '');
var
 l_Binding: TIdSocketHandle;
begin
 f_AppMessages := TQueuedActions.Create(OnAppMessageProc);
 f_Notifications := TQueuedActions.Create(OnNewTask);
 f_Tasks := TThreadList.Create;
 f_Tasks.Duplicates := dupAccept;

 f_TcpServer := TIdTcpServer.Create(nil);
 with f_TcpServer do
 begin
  l_Binding := Bindings.Add;
  l_Binding.Port := aPort;
  if aIp <> '' then
   l_Binding.IP := aIp
  else
   l_Binding.IP := LocalAddress;

  ListenQueue := c_TcpServerListenQueueSize;
  MaxConnections := 0;
  TerminateWaitTime := c_TcpServerTerminateWaitTime;

  OnExecute := OnTCPServerExecute;
  OnListenException := TcpServerListenExceptionHandler;
  OnException := TcpServerExceptionHandler;
  Active := True;
 end; // with

 f_Clients := TDbLoggedClients.Create;
 f_DbNotifier := TDbNotifier.Create(StationJornal);

 //SendUdpMessage(c_AllStations, mkServerStarted, nil, 0); слать-то некому, список адресатов еще пуст.
end;

procedure TDbServer.TcpServerListenExceptionHandler(aThread: TIdListenerThread;
                                                    aException: Exception);
begin
 with aThread.Server.Bindings[0] do
  l3System.Msg2Log(SysUtils.Format('TcpServer %s:%d - Exception in listener thread.',
                                   [Ip, Port]));
 l3System.Exception2Log(aException);

 aThread.TerminateAndWaitFor;
end;

procedure TDbServer.OnTCPServerExecute(aContext: TIdContext);
var
 l_Executor: TExecutor;
begin
 l_Executor := TExecutor.Create(Self, aContext);
 try
  l_Executor.Run;
 finally
  l3Free(l_Executor);
 end;
end;

procedure TDbServer.TcpServerExceptionHandler(aContext: TIdContext;
                                              aException: Exception);
begin
 if aException is EIdConnClosedGracefully then
  Exit;
 with aContext.Connection.Socket.Binding do
  l3System.Msg2Log(SysUtils.Format('TcpServer %s:%d - Exception in peer thread.',
                                   [Ip, Port]));
 l3System.Exception2Log(aException);
end;

procedure TDbServer.OnNewTask(aTaskId: Integer; aData: Integer);
begin
 if Assigned(f_OnChangeTasks) then
  f_OnChangeTasks(f_Tasks);
end;

procedure TDbServer.ClearTasks;
var
 l_List: TList;
 l_Task: TTask;
 I: Integer;
begin
 l_List := f_Tasks.LockList;
 try
  for I := 0 to l_List.Count - 1 do
  begin
   l_Task := TTask(l_List[I]);
   l3Free(l_Task);
  end;
 finally
  f_Tasks.UnlockList;
 end;
end;

function TDbServer.IsPasswordValid(const aName,
                                   aPassword: string): Boolean;
begin
 Result := True; // TODO
end;

procedure TDbServer.OnAppMessageProc(aMessageId: Integer; aData: Integer);
begin
 if Assigned(f_OnAppMessage) then
  f_OnAppMessage(TNetMessageKind(aMessageId), aData);
end;

{ TDbLoggedClients }

procedure TDbLoggedClients.Cleanup;
begin
 l3Free(f_Clients);
 l3Free(f_Synchronizer);
 inherited;
end;

constructor TDbLoggedClients.Create;
begin
 f_Synchronizer := TMultiReadExclusiveWriteSynchronizer.Create;
 f_Clients := TObjectList.Create(True);
end;

function TDbLoggedClients.Add(const aClientName: string;
                              const aUdpAddress: string;
                              aUdpPort: TIdPort): TClientId;
var
 l_Client: TDbClientInfo;
 I: Integer;
 l_IpAsDWord: Cardinal;
 l_ClientName: string;
begin
 l_IpAsDWord := IPv4ToDWord(aUdpAddress);
 l_ClientName := Trim(aClientName);
 f_Synchronizer.BeginWrite;
 try
  // может уже имеется?
  for I := 0 to f_Clients.Count - 1 do
  begin
   l_Client := f_Clients[I] as TDbClientInfo;
   if AnsiCompareText(l_Client.ClientName, l_ClientName) = 0 then
   begin
    if (l_Client.UdpAddressAsDWord <> l_IpAsDWord) then
    begin
     l_Client.UdpAddress := aUdpAddress;
     l_Client.UdpAddressAsDWord := l_IpAsDWord;
    end;
    if l_Client.UdpPort <> aUdpPort then
    begin
     l_Client.UdpPort := aUdpPort;
    end;
    Result := l_Client.Id;
    Exit;
   end; // if
  end; // for

  // вставка
  l_Client := TDbClientInfo.Create;
  l_Client.ClientName := Trim(aClientName);
  l_Client.UdpAddress := aUdpAddress;
  l_Client.UdpPort := aUdpPort;
  l_Client.UdpAddressAsDWord := l_IpAsDWord;
  Inc(f_FreeId);
  l_Client.Id := f_FreeId;
  f_Clients.Add(l_Client);
  Result := l_Client.Id;
 finally
  f_Synchronizer.EndWrite;
 end;
end;

procedure TDbLoggedClients.Delete(aClientId: TClientId);
var
 l_Index: Integer;
begin
 f_Synchronizer.BeginWrite;
 try
  l_Index := IndexOf(aClientId);
  if l_Index > -1 then
   f_Clients.Delete(l_Index);
 finally
  f_Synchronizer.EndWrite;
 end;
end;

function TDbLoggedClients.IsLogged(aClientId: TClientId): Boolean;
begin
 Result := IndexOf(aClientId) > -1;
end;

function TDbLoggedClients.InfoOf(aClientId: TClientId): TDbClientInfo;
var
 l_Index: Integer;
begin
 f_Synchronizer.BeginRead;
 try
  l_Index := IndexOf(aClientId);
  if l_Index > -1 then
   Result := f_Clients[l_Index] as TDbClientInfo
  else
   Result := nil;
 finally
  f_Synchronizer.EndRead;
 end;
end;

function TDbLoggedClients.IndexOf(aClientId: TClientId): Integer;
var
 I: Integer;
 l_Client: TDbClientInfo;
begin
 Result := -1;
 f_Synchronizer.BeginRead;
 try
  for I := 0 to f_Clients.Count - 1 do
  begin
   l_Client := f_Clients[I] as TDbClientInfo;
   if l_Client.Id = aClientId then
   begin
    Result := I;
    Break;
   end;
  end; // for
 finally
  f_Synchronizer.EndRead;
 end;
end;

function TDbLoggedClients.FindAddressOf(const aClientName: string;
                                        out aDestIp: string;
                                        out aDestPort: TIdPort): Boolean;
var
 I: Integer;
 l_ClientName: string;
begin
 aDestIp := '';
 aDestPort := 0;
 l_ClientName := Trim(aClientName);
 f_Synchronizer.BeginRead;
 try
  Result := False;
  for I := 0 to f_Clients.Count - 1 do
   if AnsiCompareText((f_Clients[I] as TDbClientInfo).ClientName,
                      l_ClientName) = 0 then
   begin
    aDestIp   := (f_Clients[I] as TDbClientInfo).UdpAddress;
    aDestPort := (f_Clients[I] as TDbClientInfo).UdpPort;
    Result := True;
    Break;
   end;
 finally
  f_Synchronizer.EndRead;
 end;
end;

function TDbLoggedClients.IdOf(const aClientName: string): TClientId;
var
 I: Integer;
 l_ClientName: string;
begin
 l_ClientName := Trim(aClientName);
 f_Synchronizer.BeginRead;
 try
  Result := c_WrongClientId;
  for I := 0 to f_Clients.Count - 1 do
   if AnsiCompareText((f_Clients[I] as TDbClientInfo).ClientName,
                      l_ClientName) = 0 then
   begin
    Result := (f_Clients[I] as TDbClientInfo).Id;
    Break;
   end;
 finally
  f_Synchronizer.EndRead;
 end;
end;

{ TExecutor }

procedure TExecutor.Cleanup;
begin

 inherited;
end;

constructor TExecutor.Create(aServer: TDbServer; aContext: TIdContext);
begin
 inherited Create;

 Assert(aServer <> nil);
 f_Server := aServer;
 Assert(aContext <> nil);
 f_Context := aContext;
end;

function TExecutor.GetIOHandler: TIdIOHandler;
begin
 Result := f_Context.Connection.IOHandler;
end;

procedure TExecutor.OnConnect;
var
 l_NetCommVer: Integer;
 l_Answer: TServerReply;
begin
 // читаем (строго в определенном порядке!!!)
 l_NetCommVer := IOHandler.ReadInteger;
 f_UserId     := IOHandler.ReadInteger;

 // думаем
// if not f_Server.Clients.IsLogged(f_UserId) then
//  f_UserId := c_WrongClientId;

 if l_NetCommVer <> c_NetCommVersion then
  l_Answer := srWrongProtocol
 else if f_UserId = c_WrongClientId then
  l_Answer := srNeedLogin
 else
  l_Answer := srWelcome;

 // отвечаем
 IOHandler.Write(Integer(Ord(l_Answer)));
end;

procedure TExecutor.OnLogin;
var
 l_ClientId: TClientId;
 l_Message: TNotifyMessage;
begin
 // чтение
 l_ClientId := IOHandler.ReadInteger;

 // пересылка
 l_Message := TNotifyMessage.Create(mkUsLgIn);
 try
  l_Message.SetData(PByte(@l_ClientId), SizeOf(l_ClientId));
  f_Server.Notifier.Broadcast(l_Message, l_ClientId);
 finally
  l3Free(l_Message);
 end;

 // сообщение приложению (в основном для визуалки)
 f_Server.f_AppMessages.Enqueue(Ord(mkUsLgIn), l_ClientId);

{ может потом пригодится
 // запись
 if f_Server.IsPasswordValid(l_Name, l_Password) then
  l_ClientId := f_Server.Clients.Add(l_Name, l_UdpIp, l_UdpPort)
 else
  l_ClientId := c_WrongClientId;
 IOHandler.Write(Integer(l_ClientId));
}
end;

procedure TExecutor.OnLogout;
var
 l_ClientId: TClientId;
 l_Message: TNotifyMessage;
begin
 // чтение
 l_ClientId := IOHandler.ReadInteger;

 // пересылка
 l_Message := TNotifyMessage.Create(mkUsLgOff);
 try
  l_Message.SetData(PByte(@l_ClientId), SizeOf(l_ClientId));
  f_Server.Notifier.Broadcast(l_Message, l_ClientId);
 finally
  l3Free(l_Message);
 end;

 // сообщение приложению (в основном для визуалки)
 f_Server.f_AppMessages.Enqueue(Ord(mkUsLgOff), l_ClientId);

{
 f_Server.Clients.Delete(l_ClientId);
}
end;

procedure TExecutor.OnOldStyledMessage;
var
 l_MessageLen: Integer;
 l_Message: PChar;
 l_Bytes: TIdBytes;
begin
 if GlobalHtServer.ReceiveServ <> nil then
 begin
  l_MessageLen := IOHandler.ReadInteger;
  l_Message := l3StrAlloc(l_MessageLen + 1);
  l3FillChar(l_Message^, l_MessageLen + 1, #0);
  if l_MessageLen > 0 then
  begin
   IOHandler.ReadBytes(l_Bytes, l_MessageLen);
   try
    l3Move(l_Bytes[0], l_Message^, l_MessageLen);
   finally
    l_Bytes := nil;
   end;
  end;
  PostMessage(GlobalHtServer.ReceiveServ.Handle,
              WM_GoReceive,
              Ord(mkOldStyled),
              LongInt(l_Message));
 end;
end;

procedure TExecutor.OnQueryFiles;
var
 l_BaseDir: string;

 function SendFile(const aFileName: string): Boolean;
 var
  l_FileSize: Int64;
  l_RelPath: string;
  l_DelimPos: Integer;
 begin
  Result := f_Context.Connection.Connected;
  if Result and FileExists(aFileName) then
  begin
   l_RelPath := ExtractRelativePath(l_BaseDir, aFileName);
   // отрезаем первую папку (она лишняя)
   l_DelimPos := Pos(PathDelim, l_RelPath);
   IOHandler.WriteLn(Copy(l_RelPath, l_DelimPos + 1, Length(l_RelPath)));
   l_FileSize := SizeOfFile(aFileName);
   IOHandler.Write(l_FileSize); // размер файла
   IOHandler.WriteFile(aFileName, False); // сам файл
  end;
 end;

 procedure SendAllFiles(const aDir: TFileName);
 var
  l_SearchRec: TSearchRec;
  l_FileFound: Boolean;
  l_Name: TFileName;
 begin
  l_FileFound := FindFirst(ConcatDirName(aDir, '*.*'), faAnyFile, l_SearchRec) = 0;
  try
   while l_FileFound do
   begin
    if l_SearchRec.Name[1] <> '.' then
    begin
     l_Name := ConcatDirName(aDir, l_SearchRec.Name);
     if (l_SearchRec.Attr and faDirectory) <> 0 then // директория ==> запуск рекурсии
      SendAllFiles(l_Name)
     else if (l_SearchRec.Attr and (faReadOnly or faHidden	or faSysFile	or faArchive)) <> 0 then // файл
      if not SendFile(l_Name) then
       Break;
    end;
    l_FileFound := FindNext(l_SearchRec) = 0;
   end; // while
  finally
   FindClose(l_SearchRec);
  end;
 end;

begin
 l_BaseDir := IOHandler.ReadLn;

 if DirExists(l_BaseDir) then
 begin
  IOHandler.WriteBufferOpen(c_MaxPacketSize);
  try
   SendAllFiles(l_BaseDir);
   IOHandler.WriteLn(c_NoMoreFiles); // ставим точку
   IOHandler.WriteBufferClose;
  except
   IOHandler.WriteBufferClear;
   raise;
  end;
  DelDir(l_BaseDir);
 end
 else
  IOHandler.WriteLn(c_NoMoreFiles); // только точка
end;

procedure TExecutor.OnQuerySystemTime;
var
 l_Time: TDateTime;
 l_Bytes: TIdBytes;
begin
 l_Time := Now;
 SetLength(l_Bytes, SizeOf(l_Time));
 try
  l3Move(l_Time, l_Bytes[0], SizeOf(l_Time));
  IOHandler.Write(l_Bytes);
 finally
  l_Bytes := nil;
 end;
end;

procedure TExecutor.OnPassMessage;
var
 l_Recipient: string;
 l_MessageKind: TNetMessageKind;
 l_Data: TIdBytes;
 l_DataLength: Integer;
 l_Message: TNotifyMessage;
begin
 l_Message := TNotifyMessage.Create;
 try
  // чтение
  l_Recipient := IOHandler.ReadLn;
  l_Message.RestoreFrom(IOHandler);

  // отправка
  if Trim(l_Recipient) = c_AllStations then
   f_Server.Notifier.Broadcast(l_Message, f_UserId)
  else
   f_Server.Notifier.Send(l_Recipient, l_Message);
 finally
  l3Free(l_Message);
 end;
end;

procedure TExecutor.OnTask;
var
 l_Task: TTask;
begin
 l_Task := TTask.RestoreFrom(IOHandler);
 f_Server.Tasks.Add(l_Task);
 f_Server.f_Notifications.Enqueue;
end;

procedure TExecutor.Process(aCommand: TNetMessageKind);
begin
 case aCommand of
  mkOldStyled       : OnOldStyledMessage;
  mkQueryFiles      : OnQueryFiles;
  mkQuerySystemTime : OnQuerySystemTime;
  mkTask            : OnTask;
  mkPassMessage     : OnPassMessage;
  mkLogin           : OnLogin;
  mkLogout          : OnLogout;
  //mkGoodBye - обрабатывается в другом месте
 else
  ;
 end;
end;

procedure TExecutor.ProcessCommands;
var
 l_MessageKind: TNetMessageKind;
begin
 while True do
 begin
  l_MessageKind := TNetMessageKind(IOHandler.ReadInteger);

  // проверка спец. случаев
  if ((f_UserId = c_WrongClientId) and (l_MessageKind <> mkLogin))
   or (l_MessageKind = mkGoodBye)
  then
   Break;

  Process(l_MessageKind);
 end; // while
end;

procedure TExecutor.Run;
begin
 OnConnect;
 try
  ProcessCommands;
 finally
  f_Context.Connection.Disconnect;
 end; 
end;

{ TDbNotifier }

procedure TDbNotifier.Broadcast(aMessage: TNotifyMessage;
                                aExcludeClientId: TClientId = c_WrongClientId);
var
 l_DestIp: string;
 l_DestPort: TIdPort;
 I: Integer;
 l_Stations: Tl3StringDataList;
 l_pStationData: PStationAddress;
begin
 f_CriticalSection.Enter;
 try
  l_Stations := Tl3StringDataList.CreateSize(SizeOf(TStationAddress));
  try
   StationJornal.GetActiveStations(l_Stations);
   for I := 0 to l_Stations.Count - 1 do
   begin
    l_pStationData := PStationAddress(l_Stations.Data[I]);
    if l_pStationData^.ClientId = aExcludeClientId then
     Continue;
    f_UdpClient.SendBuffer(l_pStationData^.Host,
                           l_pStationData^.Port,
                           aMessage.AsBytes);
   end; // for
  finally
   l3Free(l_Stations);
  end;
 finally
  f_CriticalSection.Leave;
 end;
end;

procedure TDbNotifier.Cleanup;
begin
 f_Stations := nil;
 l3Free(f_UdpClient);
 l3Free(f_CriticalSection);
 inherited;
end;

constructor TDbNotifier.Create(const aStations: TNetUsersJournal);
begin
 inherited Create;

 Assert(aStations <> nil);
 f_Stations := aStations;

 f_CriticalSection := TCriticalSection.Create;

 f_UdpClient := TIdUdpClient.Create;
 f_UdpClient.BufferSize := c_MaxUdpMessageLen;
end;

{
procedure TDbNotifier.Send(const aRecipient: string;
                           aMessageKind: TNetMessageKind;
                           aMessage: PByte;
                           aMessageLen: Integer;
                           aExcludeId: TClientId);
var
 l_DataLen: Integer;
 l_Bytes: TIdBytes;
 l_DestIp: string;
 l_DestPort: TIdPort;
 I: Integer;
 l_ClientInfo: TDbClientInfo;
begin
? l_DataLen := SizeOf(c_NetCommVersion) +
              SizeOf(Integer) + // это под aMessageKind
              aMessageLen;
 if l_DataLen > c_MaxUdpMessageLen then
  raise ENetCommError.Create(SysUtils.Format('Превышен объем отправляемых по UDP данных (Макс.: %d, Текущ.: %d).',
                                             [c_MaxUdpMessageLen, l_DataLen]));

 SetLength(l_Bytes, l_DataLen);
 try
  PInteger(@l_Bytes[0])^ := c_NetCommVersion;
  PInteger(@l_Bytes[SizeOf(c_NetCommVersion)])^ := Ord(aMessageKind);
  if (aMessageLen > 0) and (aMessage <> nil) then
   l3Move(aMessage^, l_Bytes[SizeOf(c_NetCommVersion) + SizeOf(Integer)], aMessageLen);

  if aRecipient = c_AllStations then
  begin
   f_Clients.Lock; // см. коммент. ниже
   try
    for I := 0 to f_Clients.Count - 1 do
    begin
     l_ClientInfo := f_Clients[I] as TDbClientInfo;
     if l_ClientInfo.Id <> aExcludeId then
      f_UdpClient.SendBuffer(l_ClientInfo.UdpAddress,
                             l_ClientInfo.UdpPort,
                             l_Bytes); // ВНИМАНИЕ! f_UdpClient не имеет своей крит.секции, взамен этого он опирается на крит.секцию f_Clients.
    end; // for
   finally
    f_Clients.Unlock; // см. коммент. выше
   end;
  end
  else
  begin
   f_Clients.Lock; // см. коммент. со словами "ВНИМАНИЕ! ..."
   try
    if f_Clients.FindAddressOf(aRecipient, l_DestIp, l_DestPort) then
     f_UdpClient.SendBuffer(l_DestIp, l_DestPort, l_Bytes);
   finally
    f_Clients.Unlock;
   end;
  end;
 finally
  l_Bytes := nil;
 end;
end;
}
procedure TDbNotifier.Send(const aRecipientName: string;
                           aMessage: TNotifyMessage);
var
 l_DestIp: string;
 l_Address: TStationAddress;
begin
 f_CriticalSection.Enter;
 try
  if StationJornal.FindAddress(aRecipientName, l_Address) then
   f_UdpClient.SendBuffer(l_Address.Host, l_Address.Port, aMessage.AsBytes);
 finally
  f_CriticalSection.Leave;
 end;
end;

{ TNotifyMessage }

procedure TNotifyMessage.Cleanup;
begin
 f_Bytes := nil;
 inherited;
end;

constructor TNotifyMessage.Create;
begin
 inherited Create;
 SetLength(f_Bytes, c_NotifyMessageHeaderLength);
 PInteger(@f_Bytes[0])^ := c_NetCommVersion;
 Kind := mkUnknown;
end;

procedure TNotifyMessage.SetData(aData: PByte; aDataLength: Integer);
begin
 if (aData = nil) or (aDataLength < 0) then
  aDataLength := 0;
 CheckDataLength(aDataLength);
 SetLength(f_Bytes, c_NotifyMessageHeaderLength + aDataLength);
 if aDataLength > 0 then
  l3Move(aData^,
       f_Bytes[c_NotifyMessageHeaderLength],
       aDataLength);
end;

procedure TNotifyMessage.CheckDataLength(aDataLength: Integer);
var
 l_FullLength: Integer;
begin
 Assert(aDataLength >= 0);
 l_FullLength := c_NotifyMessageHeaderLength + aDataLength;
 if (l_FullLength > c_MaxUdpMessageLen) then
  raise ENetCommError.Create(SysUtils.Format('Превышение размера сообщения UDP (%d байт).',
                                             [l_FullLength]));
end;

procedure TNotifyMessage.SetBytes(const aBytes: TIdBytes);
begin
 CheckFormat(aBytes);
 f_Bytes := Copy(aBytes);
end;

procedure TNotifyMessage.CheckFormat(const aBytes: TIdBytes);
begin
 if (Length(aBytes) < c_NotifyMessageHeaderLength)
  or (PInteger(@aBytes[0])^ <> c_NetCommVersion)
 then
  raise ENetCommError.Create('Сообщение UDP неизвестного формата.');
end;

function TNotifyMessage.GetKind: TNetMessageKind;
begin
 Result := TNetMessageKind(PInteger(@f_Bytes[SizeOf(c_NetCommVersion)])^);
end;

procedure TNotifyMessage.SetKind(const aKind: TNetMessageKind);
begin
 PInteger(@f_Bytes[SizeOf(c_NetCommVersion)])^ := Ord(aKind);
end;

function TNotifyMessage.GetData: TIdBytes;
begin
 Result := Copy(f_Bytes, c_NotifyMessageHeaderLength, MaxInt);
end;

constructor TNotifyMessage.Create(aKind: TNetMessageKind;
                                  aData: PByte = nil;
                                  aDataLength: Integer = 0);
begin
 Create;
 Kind := aKind;
 SetData(aData, aDataLength);
end;

procedure TNotifyMessage.RestoreFrom(aIOHandler: TIdIOHandler);
var
 l_Size: Integer;
begin
 Assert(aIOHandler <> nil);
 l_Size := aIOHandler.ReadInteger;
 aIOHandler.ReadBytes(f_Bytes, l_Size, False);
end;

procedure TNotifyMessage.SaveTo(aIOHandler: TIdIOHandler);
begin
 Assert(aIOHandler <> nil);
 aIOHandler.Write(Integer(Length(f_Bytes)));
 aIOHandler.Write(f_Bytes);
end;

end.

