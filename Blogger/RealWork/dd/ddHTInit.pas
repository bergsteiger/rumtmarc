//..........................................................................................................................................................................................................................................................
unit ddHTinit;

// $Id: ddHTInit.pas,v 1.90 2013/04/11 16:46:27 lulin Exp $

// $Log: ddHTInit.pas,v $
// Revision 1.90  2013/04/11 16:46:27  lulin
// - отлаживаем под XE3.
//
// Revision 1.89  2013/04/03 09:34:33  narry
// Не проходили тесты
//
// Revision 1.88  2013/02/07 13:19:59  narry
// Обновление
//
// Revision 1.87  2013/02/01 12:47:03  narry
// Не сохранялись настройки подключения
//
// Revision 1.86  2012/10/17 08:19:52  fireton
// - разрешаем супервизора в Админе
//
// Revision 1.85  2012/10/10 10:16:44  narry
// Обновление
//
// Revision 1.84  2012/02/07 06:51:41  narry
// Повторная инициализация приводила к AV
//
// Revision 1.83  2012/02/06 08:18:00  narry
// Не присваивался CSClient
//
// Revision 1.82  2012/02/01 08:35:51  narry
// мелкие правки
//
// Revision 1.81  2011/12/15 13:00:46  narry
// Управление из Парня (319488062)
//
// Revision 1.80  2010/04/21 09:57:09  voba
// [K:204932853]
//
// Revision 1.79  2010/04/16 14:08:10  narry
// - нельзя работать без правильных настроек в StandAlone
//
// Revision 1.78  2010/04/01 09:51:51  narry
// - запуск без запроса логин-пароля
//
// Revision 1.77  2009/11/16 12:10:57  narry
// - неправильно выводилось предупреждение о свободном месте на диске
//
// Revision 1.76  2009/09/15 08:18:21  narry
// - обновление
//
// Revision 1.75  2009/07/22 11:27:31  narry
// - изменение доступа к DictServer
//
// Revision 1.74  2009/04/23 08:18:52  narry
// - процедура инициализации через корень базы
// - параметр StandAlone по умолчанию был True
//
// Revision 1.73  2009/04/16 11:48:20  fireton
// [$143396358]. Переносим base64 из DD в L3
//
// Revision 1.72  2009/04/13 08:56:17  narry
// - разделение определения типов и реализации
//
// Revision 1.71  2009/03/16 16:18:00  narry
// - вывод предупреждений только в режме работы "без сервера"
//
// Revision 1.70  2009/02/10 14:23:45  voba
// - bug fix
//
// Revision 1.69  2009/02/05 10:28:14  narry
// - рефакторинг механизма подключения к базе
//
// Revision 1.68  2009/01/23 15:54:30  narry
// - рефакторинг
//
// Revision 1.67  2008/11/25 13:29:06  voba
// - оставался  UserConfig
//
// Revision 1.66  2008/11/24 12:38:02  narry
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
  ddClosingWin, ddClientBaseEngine,
  {Forms,} Classes,
  IdGlobal;

type

 TbeError = (beOk, beUserParams, beNetwork);
 TbeErrors = set of TbeError;


const
 ddMinTempSpace = 10000000; // 10 Mb

function InitBaseEngine(const ShowDialog: Boolean = False; aPromptUserPasswordProc:
    TGetLoginPasswordProc = nil; aQuiteMode: Boolean = False;
    aAllowSupervisor: Boolean = False): Boolean; overload;

function InitBaseEngine(const aServerIP: AnsiString; aServerPort: Integer; const
    aUserName: AnsiString = ''; const aPassword: AnsiString = ''): Boolean; overload;

procedure DoneBaseEngine(const ShowDialog: Boolean = False);

function CheckTempFolder(var aMessage: AnsiString; theMinFreeSpace: Int64 = ddMinTempSpace): Boolean;

procedure LoadUserList(aUserList: TStrings; aConfig: TCfgList);

procedure SaveUserList(aUserList: TStrings; aConfig: TCfgList; aSavePasswords: Boolean);

function InitBaseEngine(aBaseFolder: AnsiString; const aUserName: AnsiString = '';
    const aPassword: AnsiString = ''): Boolean; overload;

procedure LoadFromCfg(out theServerName: AnsiString; out theServerPort: Integer; out theStandAlone:
    Boolean; out theLogin, thePassword: AnsiString; out theAdmin, theShowSplash: Boolean);



var
 g_BaseEngine: TClientBaseEngine;

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

 ddUtils,
 ddServerTask,

 Base_CFG,

 dt_Serv,
 dt_NetUs,
 Dt_user,
 dt_Const,
 dt_Dict,
 DT_DocImages,

 afwFacade,

 vtDialogs

 , ddFileIterator, ht_dll, StrUtils, dt_Doc, dt_Mail, ddAppConfigUtils,
 csQueryTypes, dt_Acces, ddUserRequestManager;


function InitBaseEngine(const ShowDialog: Boolean = False; aPromptUserPasswordProc:
    TGetLoginPasswordProc = nil; aQuiteMode: Boolean = False;
    aAllowSupervisor: Boolean = False): Boolean;
 var
  Ok            : Boolean;
  I             : Integer;
  J             : Integer;
  lShowSplash   : Boolean;
  l_Admin       : Boolean;
  ServerCfgPath : AnsiString;
  lLockMsg      : AnsiString;
  lStr          : AnsiString;

  l_IniPathStr  : AnsiString;
  l_LogPathStr  : AnsiString;
  lImageStoragePath : ShortString;
  l_StartKey    : Boolean;
  lServerName   : AnsiString;
  lServerPort   : Integer;
  lStationName  : TStationName;
  lPathRec      : TPathRec;
  lDocFolder   : AnsiString;
 lStandAlone: Boolean;
 l_Dlg: TddClosingForm;
 l_Login: AnsiString;
 l_Password: AnsiString;
 l_MsgType: TMsgDlgType;
 l_Buttons: TMsgDlgButtons;
begin
 Result:= False;
 if CheckTempFolder(lStr) then
 begin
  l_StartKey   := false;

  LoadFromCfg(lServerName, lServerPort, lStandAlone, l_Login, l_Password, l_Admin, lShowSplash);

  MailServer:= TMailServer.Create;
  if lStandAlone then
   ExtractParams(lStationName, lPathRec, lStandAlone);
   //if not ExtractParams(lStationName, lPathRec, lStandAlone) then // Некоторая двойная работа
   // Exit;


  g_BaseEngine:= TClientBaseEngine.Make(lStationName, lPathRec, l_Login, l_Password,
                lServerName, lServerPort, ShowDialog, lStandAlone);
  Ok:= True;
  if Ok then
  begin
   g_BaseEngine.IsAdmin:= l_Admin;
   g_BaseEngine.OnGetLoginPassword:= aPromptUserPasswordProc;
   g_BaseEngine.QuietMode:= aQuiteMode;
   g_BaseEngine.IsSupervisorAllowed := aAllowSupervisor;
   g_BaseEngine.Start;
   if g_BaseEngine.IsStarted and Ok then
   begin
    Result:= True;
    UserRequestManager.CSClient:= g_BaseEngine.CSClient;
   end
   else
   begin
    DoneBaseEngine;
    Result:= False;
   end; // not g_BaseEngine.IsStarted
  end; // Ok
 end// if CheckTempFree
 else
 begin
  l3System.Msg2Log(lStr);
  ShowMessage(lStr);
 end;
end;

procedure DoneBaseEngine(const ShowDialog: Boolean = False);
var
 l_Dlg: TddClosingForm;
begin
 if ShowDialog then
 begin
  l_Dlg:= TddClosingForm.Create(nil, dd_cwtStop);
  l_Dlg.Show;
  afw.ProcessMessages;
 end;
 l3Free(MailServer);

 UserRequestManager.CSClient:= nil;
 { TODO : Нужно дописать информацию о пути к базе }
 if (ServerConfig <> nil) and (g_BaseEngine <> nil) then
  with ServerConfig do
  begin
   Section:='Network';
   WriteParamStr('ServerName', g_BaseEngine.ServerIP);
   WriteParamInt('ServerPort', g_BaseEngine.ServerPort);
   WriteParamBool('StandAlone', not g_BaseEngine.WorkWithServer);
  end;
 if (StationConfig <> nil) and (g_BaseEngine <> nil) then
  with StationConfig do
  begin
   Section:='User';
   WriteParamStr('UserName', g_BaseEngine.Login);
   if g_BaseEngine.SavePassword then
    WriteParamStr('UserPassword', l3EncodeBase64(Encrypt(g_BaseEngine.Password)));
  end;

 l3Free(g_BaseEngine);

 if ServerConfig = StationConfig then
   ServerConfig:= nil;
 l3Free(UserConfig);

 if ShowDialog then
  l_Dlg.Free;
end;

function CheckTempFolder(var aMessage: AnsiString; theMinFreeSpace: Int64 = ddMinTempSpace): Boolean;
var
 l_Drive: Byte;
 l_DriveStr: AnsiString;
begin
 l_DriveStr:= ExtractFileDrive(GetWindowsTempFolder);
 l_Drive:= Ord(l_DriveStr[1]) - Ord('A') + 1;
 Result := DiskFree(l_Drive) > theMinFreeSpace;
 aMessage:= IfThen(Result,
                   '',
                   Format('На диске %s необходимо освободить минимум %s',
                          [l_DriveStr, Bytes2Str(theMinFreeSpace-DiskFree(l_Drive))]));
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

function InitBaseEngine(aBaseFolder: AnsiString; const aUserName: AnsiString = '';
    const aPassword: AnsiString = ''): Boolean;
var
 Ok            : Boolean;
 lStr          : AnsiString;
 lPathRec      : TPathRec;
 lDocFolder   : AnsiString;
 lStandAlone: Boolean;
begin
 Result:= False;
 if CheckTempFolder(lStr) then
 begin
  MailServer:= TMailServer.Create;
  lPathRec:= MakePathRec(aBaseFolder);
  g_BaseEngine:= TClientBaseEngine.Make('', lPathRec, aUserName, aPassword, '', 0, False, True);
  Ok:= True;
  if Ok then
  begin
   g_BaseEngine.IsAdmin:= False;
   g_BaseEngine.Start;
   if g_BaseEngine.IsStarted and Ok then
   begin
    Result:= True;
    UserRequestManager.CSClient:= g_BaseEngine.CSClient;
   end
   else
   begin
    DoneBaseEngine;
    Result:= False;
   end; // not g_BaseEngine.IsStarted
  end; // Ok
 end// if CheckTempFree
 else
 begin
  l3System.Msg2Log(lStr);
  ShowMessage(lStr);
 end;
end;

function InitBaseEngine(const aServerIP: AnsiString; aServerPort: Integer; const
    aUserName: AnsiString = ''; const aPassword: AnsiString = ''): Boolean;
var
 Ok            : Boolean;
 lStr          : AnsiString;
 lPathRec      : TPathRec;
 lDocFolder   : AnsiString;
 lStandAlone: Boolean;
begin
 Result:= False;
 if CheckTempFolder(lStr) then
 begin
  MailServer:= TMailServer.Create;
  l3FillChar(lPathRec, SizeOf(lPathRec));
  g_BaseEngine:= TClientBaseEngine.Make('', lPathRec, aUserName, aPassword, aServerIP, aServerPort, False, False);
  Ok:= True;
  if Ok then
  begin
   g_BaseEngine.IsAdmin:= False;
   g_BaseEngine.Start;
   if g_BaseEngine.IsStarted and Ok then
   begin
    Result:= True;
    UserRequestManager.CSClient:= g_BaseEngine.CSClient;
   end
   else
   begin
    DoneBaseEngine;
    Result:= False;
   end; // not g_BaseEngine.IsStarted
  end; // Ok
 end// if CheckTempFree
 else
 begin
  l3System.Msg2Log(lStr);
  ShowMessage(lStr);
 end;
end;

procedure LoadFromCfg(out theServerName: AnsiString; out theServerPort: Integer; out theStandAlone:
    Boolean; out theLogin, thePassword: AnsiString; out theAdmin, theShowSplash: Boolean);
var
 l_ServerCfgPath: AnsiString;
begin
 if not Assigned(StationConfig) then
   StationConfig:= TCfgList.Create('');

  with StationConfig do
  begin
   Section:= 'Preferences';
   theAdmin:= ReadParamBoolDef('Admin', False);
   theShowSplash:= ReadParamBoolDef('SplashScreen', True);
  end;

  if not Assigned(ServerConfig) then
  begin
   StationConfig.Section := 'ServerConfig';
   l_ServerCfgPath := StationConfig.ReadParamStrDef('ServerConfigINI','');
   If Length(l_ServerCfgPath) = 0  then
    ServerConfig := StationConfig
   else
    ServerConfig := TCfgList.Create(l_ServerCfgPath);
  end; // not Assigned(ServerConfig)

  with ServerConfig do
  begin
   Section:='Network';
   theServerName   := ReadParamStrDef('ServerName', '');
   theServerPort   := ReadParamIntDef('ServerPort', 32100);
   theStandAlone   := ReadParamBoolDef('StandAlone', True);
  end;

  StationConfig.Section:='User';
  theLogin :=StationConfig.ReadParamStrDef('UserName','');
  thePassword := Decrypt(l3DecodeBase64(StationConfig.ReadParamStrDef('UserPassword','')));

end;

end.
