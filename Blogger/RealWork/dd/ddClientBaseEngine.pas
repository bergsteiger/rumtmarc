//..........................................................................................................................................................................................................................................................
unit ddClientBaseEngine;

// $Id: ddClientBaseEngine.pas,v 1.42 2013/04/11 16:46:27 lulin Exp $

// $Log: ddClientBaseEngine.pas,v $
// Revision 1.42  2013/04/11 16:46:27  lulin
// - отлаживаем под XE3.
//
// Revision 1.41  2013/02/05 11:00:13  voba
// Игнорировался параметр StandAlone
//
// Revision 1.40  2013/02/04 08:55:14  dinishev
// Bug fix: не запускался тестовый Арчи.
//
// Revision 1.39  2013/02/01 12:47:03  narry
// Не сохранялись настройки подключения
//
// Revision 1.38  2012/12/25 08:41:16  narry
// Не обновлялся IP-сервера
//
// Revision 1.37  2012/11/20 13:54:08  narry
// Всегда спрашивать логин-пароль                               
//
// Revision 1.36  2012/11/20 13:19:13  narry
// Обновление
//
// Revision 1.35  2012/10/18 07:06:13  narry
// Обновление
//
// Revision 1.34  2012/10/18 06:46:39  narry
// Пользователи заходят на закрытую базу (404360520)
//
// Revision 1.33  2012/10/17 09:29:38  fireton
// - bugfix: не работал Cancel в окошке логина
//
// Revision 1.32  2012/10/17 07:48:13  fireton
// - запрещаем входить под супервизором
//
// Revision 1.31  2012/10/10 10:15:19  narry
// Обновление
//
// Revision 1.30  2012/10/02 08:05:57  narry
// Обновление
//
// Revision 1.29  2012/09/06 11:13:14  narry
// Не работают два архивариуса запущенных на одной машине (390583699)
//
// Revision 1.28  2012/03/15 07:50:52  narry
// Некорректная диагностика ошибки подключения
//
// Revision 1.27  2012/03/06 13:24:53  narry
// Предупреждение о задержке подключения
//
// Revision 1.26  2012/03/06 13:20:51  narry
// Предупреждение о задержке подключения
//
// Revision 1.25  2012/02/20 09:44:14  narry
// Сообщение о состоянии экспорта (340167865)
//
// Revision 1.24  2012/02/15 13:59:24  narry
// Обновление
//
// Revision 1.23  2012/01/24 08:52:03  narry
// - не запрашивал логин-пароль в арчи
//
// Revision 1.22  2011/12/29 08:16:49  narry
// Не работало переключение сервер-без сервера
//
// Revision 1.21  2011/12/16 11:55:04  narry
// Не переинициализировался CSClient при смене IP-Port
//
// Revision 1.20  2011/12/15 13:00:46  narry
// Управление из Парня (319488062)
//
// Revision 1.19  2011/06/10 11:52:40  voba
// - DocumentServer сделал функцией function DocumentServer(aFamily : TFamilyID), что бы отдельно Family не присваивать
//
// Revision 1.18  2011/05/31 12:01:24  narry
// AV при подключении к базе (267878505)
//
// Revision 1.17  2010/04/01 09:51:51  narry
// - запуск без запроса логин-пароля
//
// Revision 1.16  2010/02/26 09:45:23  narry
// - защита от повторного входа
//
// Revision 1.15  2010/02/24 10:24:24  narry
// - удаление зависимости проектов от парня
//
// Revision 1.14  2009/07/24 05:49:25  voba
// - remove procedure DefaultIdleProc;
//
// Revision 1.13  2009/07/22 11:27:31  narry
// - изменение доступа к DictServer
//
// Revision 1.12  2009/04/16 11:48:20  fireton
// [$143396358]. Переносим base64 из DD в L3
//
// Revision 1.11  2009/04/13 08:56:17  narry
// - разделение определения типов и реализации
//
// Revision 1.10  2009/03/13 15:07:51  narry
// - обновление запроса параметров подключения
//
// Revision 1.9  2009/02/11 10:56:39  narry
// - рефакторинг механизма подключения к базе
//
// Revision 1.8  2009/02/11 07:37:44  narry
// - пользователи с пустым паролем не могли войти в Арчи
//
// Revision 1.7  2009/02/10 14:04:42  narry
// - рефакторинг механизма подключения к базе
//
// Revision 1.6  2009/02/05 12:36:58  narry
// - рефакторинг механизма получения языка базы
//
// Revision 1.5  2009/02/05 10:27:28  narry
// - рефакторинг механизма получения языка базы
//
// Revision 1.4  2009/01/27 11:36:40  narry
// - корректное формирование имени станции при логине в базу
//
// Revision 1.3  2009/01/23 15:53:57  narry
// - исправление окошка подключения к базе
//
// Revision 1.2  2009/01/13 16:17:52  narry
// - обновление механизма
//
// Revision 1.1  2008/11/24 12:38:02  narry
// - рефакторинг
//
// Revision 1.65  2008/11/18 09:03:01  narry
// - Обновление
//
// Revision 1.64  2008/11/12 14:18:17  narry
// - можно было зайти на закрытую базу
//
// Revision 1.63  2008/11/01 12:23:20  narry
// - Обновление
//
// Revision 1.62  2008/10/30 13:06:57  narry
// - Обновление
//
// Revision 1.61  2008/10/21 08:00:24  narry
// - не подставлялись логин-пароль в пользовательскую функцию
//
// Revision 1.60  2008/10/15 09:06:29  fireton
// - кодируем зашифорованные строки в base64 (иначе в ini может записаться каша)
// - рефакторинг кода, связанного с образами документов (выделение DocImageServer)
//
// Revision 1.59  2008/10/13 12:39:27  narry
// - промежуточное обновление
//
// Revision 1.58  2008/10/07 12:13:18  narry
// - загрузка-сохранение параметров в функциях Init(Done)BaseEngine
//
// Revision 1.57  2008/10/06 12:38:55  narry
// - обновление
//
// Revision 1.56  2008/10/03 09:31:06  fireton
// - bugfix: выводим окно ввода пароля в любом случае
//
// Revision 1.55  2008/10/03 09:02:44  narry
// - обновление
//
// Revision 1.54  2008/10/03 07:04:53  narry
// - рефакторинг, исправление ошибок
//
// Revision 1.53  2008/10/01 10:49:57  narry
// - в StandAlone не устанавливался путь к образам
//
// Revision 1.52  2008/10/01 07:28:02  narry
// - при наличии в инишнике FamilyPath неправильно открывались таблицы семейства
//
// Revision 1.51  2008/09/29 13:50:53  narry
// - путь к образам документов получается с сервера
//
// Revision 1.50  2008/09/29 12:24:56  fireton
// - кастомизация инишников
//
// Revision 1.49  2008/09/29 08:09:10  narry
// - рефакторинг механизма подключения к базе
//
// Revision 1.48  2008/07/14 07:48:07  narry
// - получение путей к базе с сервера (первый шаг, немного в сторону)
//
// Revision 1.47  2008/04/17 13:21:29  fireton
// - упразднен модуль DocImgSup
//
// Revision 1.46  2008/03/21 17:19:49  narry
// - мелкие исправления
//
// Revision 1.45  2008/03/13 14:42:59  narry
// - процедуры починки таблиц
//
// Revision 1.44  2008/02/27 15:36:14  narry
// - выключенная база всегда закрыта
//
// Revision 1.43  2007/12/25 07:16:11  fireton
// - bug fix: неправильная инициализация параметров сервера, если ServerConfig не прописан
//
// Revision 1.42  2007/12/11 13:55:24  fireton
// - сообщение об ошибке, если версии протокола не совпадают
//
// Revision 1.41  2007/11/16 08:50:13  narry
// - проверка свободного места в папке Temp
//
// Revision 1.40  2007/10/10 07:05:22  narry
// - шифрованая запись пароля
//
// Revision 1.39  2007/10/04 11:18:48  narry
// - сохранение логина-пароля для старой процедуры регистрации
//
// Revision 1.38  2007/10/04 11:14:40  narry
// - сохранение логина-пароля для старой процедуры регистрации
//
// Revision 1.37  2007/09/28 05:39:10  narry
// - исправление ошибок подключения как клиент
//
// Revision 1.36  2007/07/25 10:42:24  narry
// - более логичное название метода
//
// Revision 1.35  2007/07/24 12:32:29  narry
// - рефакторинг системы сообщений
//
// Revision 1.34  2007/07/04 09:12:13  narry
// - рефакторинг процедуры инициализации HyTech
//
// Revision 1.33  2007/04/19 11:56:28  fireton
// - выкинут совершенно неясный код обработки исключения
//
// Revision 1.32  2006/12/01 15:03:50  fireton
// - доработка: теперь мы пытаемся прочитать настройки базы из серверного конфига
//
// Revision 1.31  2006/11/29 11:31:36  fireton
// no message
//
// Revision 1.30  2006/11/28 13:54:12  narry
// - корректный вход в К-С
//
// Revision 1.29  2006/10/12 11:31:30  narry
// - работа над ошибками
//
// Revision 1.28  2006/03/07 12:27:34  narry
// - изменение: новая технология передачи заданий
//
// Revision 1.27  2006/01/12 09:05:53  narry
// - исправление: правильный порядок создания коммуникационных объектов
//
// Revision 1.26  2005/12/23 10:40:11  step
// переделки под CS
//
// Revision 1.25  2005/12/01 11:35:51  narry
// - обновление: переход на новый способ передачи задач
//
// Revision 1.24  2005/11/02 16:16:17  narry
// - новое: тип приложения
// - новое: инициализация пути к графическим образам
//
// Revision 1.23  2005/10/21 15:24:33  step
// внутри InitBaseEngine указываем тип приложения
//
// Revision 1.22  2005/09/30 07:51:06  narry
// - обновление: новый параметр
//
// Revision 1.21  2005/06/22 15:55:25  step
// согласованы создание-очистка SendServer и g_DbServer
//
// Revision 1.20  2005/06/16 12:31:01  step
// слияние с веткой b_use_net_comm
//
// Revision 1.19.4.2  2005/06/06 16:12:33  step
// Использование автоматич. вычисления Ip-адреса сервера.
//
// Revision 1.19.4.1  2005/06/03 13:27:06  step
// используем g_DbServer : TDbServer
//
// Revision 1.19  2005/04/28 13:21:37  narry
// - update
//
// Revision 1.18  2005/04/19 15:41:42  lulin
// - переходим на "правильный" ProcessMessages.
//
// Revision 1.17  2005/02/16 17:10:41  narry
// - update: Delphi 2005
//
// Revision 1.16  2004/12/23 11:42:08  lulin
// - rename unit: User_Cfg -> l3IniFile.
//
// Revision 1.15  2003/12/19 12:11:59  narry
// - new: инициализация BaseConfig
//
// Revision 1.14  2003/05/28 11:52:03  narry
// - cleanup
//
// Revision 1.13  2003/04/19 12:30:37  law
// - new file: ddDefine.inc.
//
// Revision 1.12  2003/03/17 13:20:00  narry
// Новые команды версионности
//
// Revision 1.11  2002/08/28 08:14:57  narry
// - bug fix & update
//
// Revision 1.10  2002/07/15 13:16:43  narry
// - bug fix: после перезапуска механизма доступа к базе не принимались сообщения
//
// Revision 1.9  2002/05/22 12:06:48  narry
// no message
//
// Revision 1.8  2002/02/01 11:57:12  narry
// - bug fix: оставались объекты при переинициализации базы
//
// Revision 1.7  2001/12/27 13:44:43  narry
// - bug fix: при переинициализации механизма оставались неосввобожденные объекты
//
// Revision 1.6  2001/11/22 13:58:43  narry
// - update : начало реализации Групп доступа
//
// Revision 1.5  2001/09/28 07:11:28  narry
// - bug fix: были ошибки в курсоре для списка строк.
//
// Revision 1.4  2001/08/21 12:27:06  narry
// - bug fix: повторное освобождение указателя
//
// Revision 1.3  2000/12/15 15:29:53  law
// - вставлены директивы Log и Id.
//

{$I ddDefine.inc }

interface
Uses
  l3Base, l3IniFile,
  Dt_Types,
  CSServer, CSClient, CsDataPipe,
  ddClosingWin, ddAppConfig, ddBaseEngine, ddAppConfigTypes,
  Forms, Classes,
  IdGlobal;

type

 TbeError = (beOk, beUserParams, beNetwork, beDuplicateClient, beDeadClient);
 TbeErrors = set of TbeError;
 TGetLoginPasswordProc = function(var aLogin, aPassword: AnsiString): Boolean;
 TGetUserNetworkParamSProc = function(var aLogin, aPassword, aServerIP: AnsiString; var aServerPort: Integer): Boolean;


 TClientBaseEngine = class(TBaseEngine)
 private
  f_AlwaysPrompt: Boolean;
  f_AutoSave: Boolean;
  f_Canceled: Boolean;
  f_CSClient: TCSClient;
  f_IsAdmin: Boolean;
  f_IsSupervisorAllowed: Boolean;
  f_LastError: AnsiString;
  f_LastErrorID: TbeError;
  f_LocalPathRec: TPathRec;
  f_OnGetLoginPassword: TGetLoginPasswordProc;
  f_QuietMode: Boolean;
  f_ServerPathRec: TPathRec;
  procedure BeginWork;
  procedure FinishWork;
  function CheckLockStatus: Boolean;
  function CheckLoginPassword(var aError: TbeError): Boolean; virtual;
  procedure CheckPathRec;
  function CheckStandAlone(var aError: TbeError): Boolean;
  function CheckViaServer(var aError: TbeError): Boolean;
  procedure CreateTempStationName;
  //procedure DefaultIdleProc;
  procedure GetBaseParams;
  function PromptForLoginPassword(aErrors: TbeErrors): Boolean;
  procedure SetLastError(aErrors: TbeErrors);
  procedure StartCommunications;
  procedure _GetBaseParams(aPipe: TcsDataPipe);
 protected
  procedure CreateCommunications; override;
  function DoStart: Boolean; override;
  procedure DoStop; override;
 public
  constructor Make(const aStationName: AnsiString; const aPathRec: TPathRec; const aLogin, aPassword, aServerIP: AnsiString;
      aServerPort: Integer = 32100; const aShowSplash: Boolean = False; const aStandAlone: Boolean = False); overload;
  procedure ChangeBaseRoot(aBaseFolder: AnsiString);
  function IsBaseLocked(var aMsg: AnsiString): Boolean; overload; override;
  property AlwaysPrompt: Boolean read f_AlwaysPrompt write f_AlwaysPrompt;
  property AutoSave: Boolean read f_AutoSave write f_AutoSave;
  property CSClient: TCSClient read f_CSClient;
  property IsAdmin: Boolean read f_IsAdmin write f_IsAdmin;
  property IsSupervisorAllowed: Boolean read f_IsSupervisorAllowed write f_IsSupervisorAllowed;
  property LastError: TbeError read f_LastErrorID write f_LastErrorID;
  property QuietMode: Boolean read f_QuietMode write f_QuietMode;
  property OnGetLoginPassword: TGetLoginPasswordProc read f_OnGetLoginPassword write f_OnGetLoginPassword;
 end;

const
 ddMinTempSpace = 10000000; // 10 Mb

function CheckTempFolder(var aMessage: AnsiString; theMinFreeSpace: Int64 = ddMinTempSpace): Boolean;

procedure LoadUserList(aUserList: TStrings; aConfig: TCfgList);

procedure SaveUserList(aUserList: TStrings; aConfig: TCfgList; aSavePasswords: Boolean);

function MakePathRec(aBaseFolder: AnsiString): TPathRec;

implementation

Uses
 SysUtils,
 Controls,
 Dialogs,
 DateUtils,
 Types,
 Messages,

 l3String,
 l3FileUtils,
 l3Base64,

 CsErrors,
 CsServerSettings,
 csBaseStatusRequest,

 //ddUserRequestManager,
 ddPasswordDialog,
 ddUtils,

 Base_CFG,

 dt_Serv,
 dt_NetUs,
 Dt_user,
 dt_Const,
 dt_Dict,
 DT_DocImages,

 afwFacade,

 vtDialogs,
 StrUtils, dt_Doc, dt_Mail, ddAppConfigUtils, csQueryTypes, dt_Acces, csConst;

type
 ERunNonServer = class(Exception);

const
 c_MaxLoginAttempts = 3;


function CheckTempFolder(var aMessage: AnsiString; theMinFreeSpace: Int64 = ddMinTempSpace): Boolean;
var
 l_Drive: Byte;
begin
 l_Drive:= Ord(ExtractFileDrive(GetWindowsTempFolder)[1]) - Ord('A') + 1;
 Result := DiskFree(l_Drive) > theMinFreeSpace;
 aMessage:= IfThen(Result,
                   '',
                   Format('На диске %s необходимо освободить минимум %',
                          [Char(l_Drive), Bytes2Str(theMinFreeSpace-DiskFree(l_Drive))]));
end;

procedure LoadUserList(aUserList: TStrings; aConfig: TCfgList);
var
 l_Count: Integer;
 i: Integer;
begin
 aUserList.Clear;
 with aConfig do
 begin
  Section:= 'User';
  l_Count:= ReadParamIntDef('Count', 0);
  if l_Count > 0 then
   for i:= 0 to Pred(l_Count) do
    aUserList.Add(Format('%s=%s', [ReadParamStrDef('Username'+IntToStr(i), ''), Decrypt(l3DecodeBase64(ReadParamStrDef('Userpassword'+IntToStr(i), '')))]))
  else
   aUserList.Add(Format('%s=%s', [ReadParamStrDef('Username', ''), Decrypt(l3DecodeBase64(ReadParamStrDef('Userpassword', '')))]));
 end;
end;

procedure SaveUserList(aUserList: TStrings; aConfig: TCfgList; aSavePasswords: Boolean);
var
 l_List: TStrings;
 i: Integer;
 l_Count: Integer;

begin
 if aUserList.Count > 0 then
 begin
  l_List:= TStringList.Create;
  try
   LoadUserList(l_List, aConfig);
   // Сравнить списки?
   l_Count:= aUserList.Count;
   with aConfig do
   begin
    Section:= 'User';
    if l_Count > 1 then
    begin
     WriteParamInt('Count', l_Count);
     for i:= 0 to Pred(l_Count) do
     begin
      WriteParamStr('Username'+IntToStr(i), aUserList.Names[i]);
      if aSavePasswords then
       WriteParamStr('Userpassword'+IntToStr(i), l3EncodeBase64(Encrypt(aUserList.ValueFromIndex[i])));
     end
    end
    else
    begin
     WriteParamStr('Username', aUserList.Names[0]);
     if aSavePasswords then
      WriteParamStr('Userpassword', l3EncodeBase64(Encrypt(aUserList.ValueFromIndex[0])));
    end
   end;
  finally
   l_List.Free;
  end;
 end;
end;

function MakePathRec(aBaseFolder: AnsiString): TPathRec;
begin
 with Result do
 begin
  TblPath:= ConcatDirName(aBaseFolder, 'main');
  HomePath:= ConcatDirName(aBaseFolder, 'homes');
  LockPath:= ConcatDirName(aBaseFolder, 'share');
  TmpPath:= GetWindowsTempFolder;
  DocImgPath:= ConcatDirName(aBaseFolder, 'images');;
  DocsPath:= aBaseFolder{ConcatDirName(aBaseFolder, 'garant')};
 end;
end;

constructor TClientBaseEngine.Make(const aStationName: AnsiString; const aPathRec: TPathRec; const aLogin, aPassword,
    aServerIP: AnsiString; aServerPort: Integer = 32100; const aShowSplash: Boolean = False; const aStandAlone: Boolean =
    False);
begin
 Create;
 AppKind:= akClient;
 // получаем все пути на тот случай, если не сможем получить с сервера
 StationName := aStationName;
 AlwaysPrompt:= False;
 if aLogin <> '' then
  Login:= aLogin;
  Password := aPassword;
 if aServerIP <> '' then
  ServerIP := aServerIP;
 if aServerPort <> 0 then
  ServerPort := aServerPort;
 ShowSplash := aShowSplash;
 WorkWithServer := not aStandAlone;
 f_LocalPathRec := aPathRec;
 PathRec:= aPathRec;
 if not WorkWithServer and (PathRec.DocsPath <> '') then
  Config.AsString['BaseRoot']:= PathRec.DocsPath;
 StartCommunications;
 GetBaseParams;
 AutoSave:= True;
 IsAdmin:= False;
 QuietMode:= False;
 f_LastErrorID:= beOk;
end;

procedure TClientBaseEngine.BeginWork;
var
 l_Count: Integer;
begin
 if GlobalHTServer <> nil then
  DestroyHT;
 StationName:= IfThen(WorkWithServer, IntToHex(CSClient.ClientId, 8), StationName);
 CheckPathRec;
 CreateHtEx(False, AppKind, StationName, PathRec, f_DocBaseVersion, f_AdminBaseVersion, AliasList);
  //GlobalHTServer.OnIdle:= DefaultIdleProc;
 GlobalHTServer.CheckArchivariusPassword(Login, Password); // Здесь присваивается GlobalHtServer.CurUserID
 (*
 // Не работает
 if not WorkWithServer then
 begin
  l_Count:= GlobalHTServer.ClearTableLocks;
  if l_Count > 0 then
   l3System.Msg2Log('Удалено %d захватов таблиц', [l_Count]);
 end; // not WorkWithServer
 *)
 InitBaseConfig(CurrentFamily);
 GlobalHTServer.CSClient := f_CSClient;
 UserManager.CSClient := CSClient;
 CSClient.AddNotifyProc(UserManager.CSNotifyProc);
 DictServer(CurrentFamily).CSClient := CSClient;
 DocumentServer(CurrentFamily).CSClient:= CSClient;
 MailServer.CSClient := CSClient;
 AccessServer.CSClient:= CSClient;
 if AutoSave then
  Config.Save;
end;

procedure TClientBaseEngine.ChangeBaseRoot(aBaseFolder: AnsiString);
begin
 with f_PathRec do
 begin
  TblPath:= ConcatDirName(aBaseFolder, 'main');
  HomePath:= ConcatDirName(aBaseFolder, 'homes');
  LockPath:= ConcatDirName(aBaseFolder, 'share');
  if TmpPath = '' then
   TmpPath:= GetWindowsTempFolder;
  DocImgPath:= ConcatDirName(aBaseFolder, 'images');;
  DocsPath:= aBaseFolder{ConcatDirName(aBaseFolder, 'garant')};
 end;
 CheckFamilyPathAlias;
end;

procedure TClientBaseEngine.FinishWork;
begin
 //UserRequestManager.CSClient:= nil;
 if GlobalHTServer <> nil then
  DestroyHt;
 DoneBaseConfig;
end;

function TClientBaseEngine.CheckLockStatus: Boolean;
var
 l_LockMsg: AnsiString;
 l_MsgType: TMsgDlgType;
 l_Buttons: TMsgDlgButtons;
begin
 Result := True;
 if IsBaseLocked(l_LockMsg) then
 begin
  if QuietMode then
   Result:= IsAdmin
  else
  begin
   if IsAdmin then
   begin
    l_MsgType:= mtWarning;
    l_LockMsg:= 'ВНИМАНИЕ! Продолжение работы может разрушить базу данных.'^M^M + l_LockMsg + ^M^M'Продолжить?';
    l_Buttons:= [mbYes, mbNo];
   end
   else
   begin
    l_MsgType:= mtError;
    l_LockMsg:= 'ВНИМАНИЕ! Продолжение работы невозможно.'^M^M + l_LockMsg;
    l_Buttons:= [mbCancel];
   end;
   Result:= IsPositiveResult(MessageDlg(l_LockMsg, l_MsgType, l_Buttons, 0));
  end; 
 end; // g_BaseEngine.IsBaseLocked(lLockMsg)
end;

function TClientBaseEngine.CheckLoginPassword(var aError: TbeError): Boolean;
begin
 Result:= False;
 if (Login <> '') and
    not ((AnsiLowerCase(Login) = c_SupervisorUserName) and not f_IsSupervisorAllowed) then
 begin
  if WorkWithServer then
   Result:= CheckViaServer(aError)
  else
   Result:= CheckStandAlone(aError);
 end; // l_Ok
end;

procedure TClientBaseEngine.CheckPathRec;
var
 l_BaseID: AnsiString;
begin
 if TempPath = '' then
  TempPath:= GetWindowsTempFolder;

 with TBaseMagic.Create(ConcatDirName(PathRec.DocsPath, 'main\base.ini')) do
 try
  l_BaseID:= Magicstring['Base', 'ID'];
 finally
  Free;
 end;
 if (l_BaseID <> '') and not AnsiEndsText(l_BaseID, TempPath) then
  TempPath:= ConcatDirName(TempPath, l_BaseID);
end;

function TClientBaseEngine.CheckStandAlone(var aError: TbeError): Boolean;
begin
 Result:= False;
 LoadDBVersion(PathRec.DocsPath, PathRec.TblPath, f_DocBaseVersion, f_AdminBaseVersion);
 if StationName = '' then
  CreateTempStationName;
 if (f_DocBaseVersion <> 0) and (f_AdminBaseVersion <> 0) then
 try
  CreateHtEx(False, AppKind, StationName, PathRec, f_DocBaseVersion, f_AdminBaseVersion, AliasList);
 except
  on E: Exception do
   f_LastError:= E.Message;
 end;
 if GlobalHtServer <> nil then
  Result:= GlobalHtServer.CheckArchivariusPassword(Login, Password)
 else
  Result:= False;
end;

function TClientBaseEngine.CheckViaServer(var aError: TbeError): Boolean;
var
 l_OldVersion: Boolean;
 l_Family, l_TblPath, l_HomePath, l_LockPath, l_ImagesPath: AnsiString;
 l_PathRec: TPathRec;
begin
 Result:= False;
 CSClient.Start(ServerIP, ServerPort);
 if CSClient.IsStarted then
 begin
  l_OldVersion := False;
  Result:= CSClient.LoginEx(Login, Password, f_DocBaseVersion, f_AdminBaseVersion, l_Family,
                            l_TblPath, l_HomePath, l_LockPath, l_ImagesPath);
  if Result then
  begin
   AliasList.Clear;
   FamilyRootFolder := l_Family;
   l_PathRec.DocsPath:= l_Family;
   l_PathRec.TblPath := l_TblPath;
   l_PathRec.HomePath := l_HomePath;
   l_PathRec.LockPath := l_LockPath;
   l_PathRec.DocImgPath := l_ImagesPath;
   PathRec:= l_PathRec;
   aError:= beOk;
  end
  else
  begin
   l_OldVersion := True;
   Result := CSClient.Login(Login, Password);
   if Result then
   begin
    LoadDBVersion(PathRec.DocsPath, PathRec.TblPath, f_DocBaseVersion, f_AdminBaseVersion);
    aError:= beOk;
   end;
  end; // not Result
  if not Result then
   if CSClient.ClientId = c_WrongClientId then
    aError:= beUserParams
   else
   if CSClient.ClientId = c_DuplicateClient then
    aError:= beDuplicateClient
   else
   if CSClient.ClientId = c_DeadClient then
    aError:= beDeadClient;
 end // CSClient.IsStarted
 else
  aError:= beNetwork;
end;

procedure TClientBaseEngine.CreateCommunications;
begin
 if CSClient = nil then
  f_CSClient := TCSClient.Create;
end;

procedure TClientBaseEngine.CreateTempStationName;
begin
 StationName := Format('S%7x', [MilliSecondOfTheDay(Now)]);
end;

//procedure TClientBaseEngine.DefaultIdleProc;
//begin
 //Application.ProcessMessages;
//end;

function TClientBaseEngine.DoStart: Boolean;
var
 l_DocBaseVersion: Integer;
 l_AdminBaseVersion: Integer;
 l_TryCount: Byte;
 l_WWS: Boolean;
 l_PrevPath: TPathRec;
 l_Ok: Boolean;
 l_Error: TbeError;
 l_Errors: TbeErrors;

 function lp_RequestLoginPassword: Boolean;
 begin
  Result:= True;
  if AlwaysPrompt or (not QuietMode) and ((Login = '') or ((Password = '') and (l_TryCount = 1))) then
  begin
   l_WWS:= WorkWithServer;
   if PromptForLoginPassword([]) then
   begin
    //if (l_WWS <> WorkWithServer) then
     if WorkWithServer then
     begin
      PathRec:= f_ServerPathRec;
      if CSClient.IsStarted then
       CSClient.Stop;
      CSClient.Start(ServerIP, ServerPort);
     end;
    Result:= True;
   end
   else
    Result:= False;
  end;
 end;

begin
 Result:= False;
 CreateCommunications;
 l_TryCount:= 0;
 l3FillChar(l_PrevPath, SizeOf(l_PrevPath));
 repeat
  //Inc(l_TryCount);
  if (l_PrevPath.TblPath <> PathRec.TblPath) then
  begin
   l_Ok:= CheckLockStatus;
   l_PrevPath:= PathRec;
  end
  else
   l_Ok:= True;

  if l_Ok then
  begin
   if WorkWithServer then
   begin
    l_WWS:= WorkWithServer;
    CSClient.Start(ServerIP, ServerPort);
    if (not QuietMode) and (not CSClient.IsStarted) then
    begin
     // Нужно запросить параметры сервера, или отказаться от совместной работы, или вообще отказаться от работы
     if PromptForLoginPassword([beNetwork]) then
     begin
      if (l_WWS <> WorkWithServer) then
       if WorkWithServer then
        PathRec:= f_ServerPathRec;
      continue
     end
     else
      break;
    end; // not CSClient.IsStarted
   end; // WorkWithServer

   if Assigned(f_OnGetLoginPassword) then
    if not lp_RequestLoginPassword then
     break;
   // Проверяем имеющиеся логин-пароль - вдруг подойдут?
   l_Error:= beUserParams;
   if CheckLoginPassword(l_Error) then
   begin
    BeginWork;
    Result:= True;
   end // CheckLoginPassword
   else // не подошли
   begin
    if not lp_RequestLoginPassword then
     break;

    if {WorkWithServer and} CheckLoginPassword(l_Error) then
    begin
     BeginWork;
     Result:= True;
    end // CheckLoginPassword
    else

    if f_Canceled then
     l_TryCount:= c_MaxLoginAttempts
    else
    begin
     if l_TryCount = 0 then
      l_Errors:= []
     else
      l_Errors:= [l_Error];
     if QuietMode or not PromptForLoginPassword(l_Errors) then
      l_TryCount:= c_MaxLoginAttempts;
    end;
   end; // not CheckLoginPassword
  end // l_Ok
  else
   l_TryCount:= c_MaxLoginAttempts;

  if l_TryCount < c_MaxLoginAttempts then Inc(l_TryCount);

 until Result or (l_TryCount = c_MaxLoginAttempts);
end;

procedure TClientBaseEngine.DoStop;
begin
 FinishWork;
 l3Free(f_CSClient);
end;

procedure TClientBaseEngine.GetBaseParams;
begin
 if CSClient.IsStarted then
  CSClient.Exec(qtGetBaseParams, _GetBaseParams);
end;

function TClientBaseEngine.IsBaseLocked(var aMsg: AnsiString): Boolean;
begin
 Result:= True;
 aMsg:= 'Сервер Автоматизации недоступен';
 if CSClient.IsStarted then
 begin
  with TddBaseStatusRequest.Create(nil, CSClient.ClientID) do
  try
   if CSClient.Exec(qtGetBaseStatus, SaveToPipe) then
   begin
    Result:= IsFree;
    aMsg:= Message;
   end
   else
   if not WorkWithServer then
    Result:= inherited IsbaseLocked(aMsg);
  finally
   Free;
  end;
 end
 else
 if not WorkWithServer then
  Result:= inherited IsbaseLocked(aMsg);
end;

function TClientBaseEngine.PromptForLoginPassword(aErrors: TbeErrors): Boolean;
var
 l_Login, l_Password: AnsiString;
 l_WorkWithServer: Boolean;
 l_PR: TPathRec;
begin
 Result:= False;
 SetLastError(aErrors);
 if not QuietMode and (f_Lasterror <> '') then
  MessageDlg(f_LastError, mtError, [mbOK], 0);

 if Assigned(f_OnGetLoginPassword) then
 begin
  l_Login:= Login; l_Password:= Password;
  Result:= f_OnGetLoginPassword(l_Login, l_Password);
  if Result then
  begin
   Login:= l_Login;
   Password:= l_Password;
  end;
 end
 else
 begin
  if aErrors <> [] then
  begin
   if beNetwork in aErrors then
    Config.AsBoolean['Advanced']:= True;
  end;
  { TODO : Хочется узнать состояние Shift, чтобы включить невидимые элементы }
  Result:= Config.ShowNodeDialog('Common');
  if Result then
  begin
   WorkWithServer:= Config.AsInteger['WorkWithServer'] = 0;
   if not WorkWithServer then
    ChangeBaseRoot(Config.AsString['BaseRoot'])
   else
    CSClient.Restart(ServerIP, ServerPort);
  end;
 end;
 { TODO : Вернуть код ошибки }
 f_Canceled:= not Result;
end;

procedure TClientBaseEngine.SetLastError(aErrors: TbeErrors);
begin
 f_LastError:= '';
 if aErrors <> [] then
 begin
  if beNetwork in aErrors then
   f_LastError:= f_Lasterror + Format('Cервер Автоматизации (IP: %s, Порт: %d) не найден'#10,
                                      [IfThen(ServerIP <> '', ServerIP, 'не указан'),
                                       ServerPort]);
  if beUserParams in aErrors then
   f_LastError:= f_LastError + 'Несоответствие имени пользователя и пароля'#10
  else
  if beDuplicateClient in aErrors then
   f_LastError:= f_LastError + 'Пользователь с указанным именем уже работает с базой'
  else
  if beDeadClient in aErrors then
   f_LastError:= f_LastError + 'Повторное подключение возможно не ранее, чем через 5 минут' ;
 end;
end;

procedure TClientBaseEngine.StartCommunications;
begin
 if AppKind = akClient then
 begin
  if f_CSClient = nil then
   f_CSClient := TCSClient.Create;
  if not CSClient.IsStarted  and WorkWithServer then
   CSClient.Start(ServerIP, ServerPort);
//  if CSClient.IsStarted then
//   GlobalHTServer.CSClient := CSClient;
 end;
end;

procedure TClientBaseEngine._GetBaseParams(aPipe: TcsDataPipe);
var
 l_PathRec: TPathRec;
begin
 f_CS.Acquire;
 try
  // Считываем все пути из трубы
  l_PathRec.TblPath:= aPipe.ReadStr;
  l_PathRec.HomePath:= aPipe.ReadStr;
  l_PathRec.LockPath:= aPipe.ReadStr;
  l_PathRec.TmpPath:= aPipe.ReadStr;
  l_PathRec.TmpPath:= GetWindowsTempFolder;
  l_PathRec.DocImgPath:= aPipe.ReadStr;
  l_PathRec.DocsPath:= aPipe.ReadStr;
  PathRec:= l_PathRec;
  f_ServerPathRec:= l_PathRec;
  // Считываем версии базы
  DocBaseVersion:= aPipe.ReadInteger;
  AdminBaseVersion:= aPipe.ReadInteger;
 finally
  f_CS.Leave;
 end;
end;

end.
