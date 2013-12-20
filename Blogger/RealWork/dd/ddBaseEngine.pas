unit ddBaseEngine;

interface

{$Include l3XE.inc}

uses
 classes,
 l3Base,
 ddAppConfig, ddAppConfigTypes, ddClosingWin,
 dt_Types,
 IdGlobal, l3ProtoObject

 {$ifDef XE}
 ,
 System.SyncObjs
 {$EndIf}
 ;

type
 TBaseEngine = class(Tl3ProtoObject)
 private

  f_AliasList: TStrings;
  f_AppKind: TAppKind;
  f_BaseLockCount: Integer;
  f_Config: TddAppConfiguration;
  f_Dlg: TddClosingForm;

  f_ShowSplash: Boolean;
  f_Started: Boolean;
  f_StationName: AnsiString;
  function LockFileName: AnsiString;
  function pm_GetIsStarted: Boolean;
  procedure CreateConfig;
  procedure DestroyConfig;
  function pm_GetDocImagePath: AnsiString;
  function pm_GetFamilyRootFolder: AnsiString;
  function pm_GetLogin: AnsiString;
  function pm_GetPassword: AnsiString;
  function pm_GetSavePassword: Boolean;
  function pm_GetServerIP: AnsiString;
  function pm_GetServerPort: Integer;
  function pm_GetTempPath: AnsiString;
  function pm_GetWorkWithServer: Boolean;
  procedure pm_SetDocImagePath(const Value: AnsiString);
  procedure pm_SetFamilyRootFolder(const aValue: AnsiString);
  procedure pm_SetLogin(const aValue: AnsiString);
  procedure pm_SetPassword(const aValue: AnsiString);
  procedure pm_SetPathRec(const aValue: TPathRec);
  procedure pm_SetSavePassword(const aValue: Boolean);
  procedure pm_SetServerIP(const aValue: AnsiString);
  procedure pm_SetServerPort(const aValue: Integer);
  procedure pm_SetTempPath(const Value: AnsiString);
  procedure pm_SetWorkWithServer(const aValue: Boolean);
  procedure _HideSplash;
  procedure _ShowSplash(aShowMode: TddWaitDialogType);
 protected
  f_CS: TCriticalSection;
  f_AdminBaseVersion: Integer;
  f_DocBaseVersion: Integer;
  f_PathRec: TPathRec;
  procedure CheckFamilyPathAlias;
  procedure Cleanup; override;
  procedure CreateCommunications; virtual; abstract;
  function DoStart: Boolean; virtual; abstract;
  procedure DoStop; virtual; abstract;
  property FamilyRootFolder: AnsiString read pm_GetFamilyRootFolder write pm_SetFamilyRootFolder;
 public
  constructor Create; virtual;
  function GetFamilyPath(aFamily: Integer): AnsiString;
  function IsBaseLocked: Boolean; overload;
  function IsBaseLocked(var aMsg: AnsiString): Boolean; overload; virtual;
  function LockBase: Boolean; overload;
  function LockBase(const aMsg: AnsiString): Boolean; overload;
  function LockBase(aMsg: AnsiString; const aStartLock, aStopLock: TDateTime): Boolean; overload;
  function NeverExpireDate: TDateTime;
  procedure Pause;
  procedure Restart;
  procedure Stop; virtual;
  function Start: Boolean;
  procedure UnlockBase;
  property AppKind: TAppKind read f_AppKind write f_AppKind;
  property IsStarted: Boolean read pm_GetIsStarted;
  property AdminBaseVersion: Integer read f_AdminBaseVersion write f_AdminBaseVersion;
  property AliasList: TStrings read f_AliasList write f_AliasList;
  property Config: TddAppConfiguration read f_Config write f_Config;
  property DocBaseVersion: Integer read f_DocBaseVersion write f_DocBaseVersion;
  property DocImagePath: AnsiString read pm_GetDocImagePath write pm_SetDocImagePath;
  property Login: AnsiString read pm_GetLogin write pm_SetLogin;
  property Password: AnsiString read pm_GetPassword write pm_SetPassword;
  property PathRec: TPathRec read f_PathRec write pm_SetPathRec;
  property SavePassword: Boolean read pm_GetSavePassword write pm_SetSavePassword;
  property ServerIP: AnsiString read pm_GetServerIP write pm_SetServerIP;
  property ServerPort: Integer read pm_GetServerPort write pm_SetServerPort;
  property ShowSplash: Boolean read f_ShowSplash write f_ShowSplash;
  property WorkWithServer: Boolean read pm_GetWorkWithServer write pm_SetWorkWithServer;
  property StationName: AnsiString read f_StationName write f_StationName;
  property TempPath: AnsiString read pm_GetTempPath write pm_SetTempPath;
 end;

implementation

Uses
 Types,
 SysUtils,
 DateUtils,
 StrUtils,
 Math,

 l3FileUtils,
 l3IniFile,

 dt_Const,
 dt_Serv,
 dt_DocImages,
 dt_UserConst,

 afwFacade,
 Base_CFG,

 ddAppConfigTypesModelPart,
 ddAppConfigStrings;

const
 dd_LockSection    = 'LockInfo';
 dd_Message        = 'Message';
 dd_ExpireDate     = 'ExpireDate';
 dd_StartDate      = 'StartDate';
 dd_DefaultMessage = 'База используется в монопольном режиме';
 ddLockFileName = 'lock.txt';
 


constructor TBaseEngine.Create;
begin
 inherited;
 CreateConfig;
 ShowSplash := False;
 f_AliasList:= TStringList.Create;
 f_Started:= False;
 f_CS:= TCriticalSection.Create;
 f_BaseLockCount := 0;
 CreateCommunications;
end;

procedure TBaseEngine.CheckFamilyPathAlias;
begin
 f_AliasList.Clear;
 if {(f_AliasList.Count = 0) and} (f_PathRec.DocsPath <> '') then
  f_AliasList.Add(SysUtils.Format('FamilyPath=%s', [f_PathRec.DocsPath]));
end;

procedure TBaseEngine.Cleanup;
begin
 DestroyConfig;
 l3Free(f_AliasList);
 Stop;
 l3Free(f_CS);
 inherited;
end;

procedure TBaseEngine.CreateConfig;
var
 l_Main: TddBaseConfigItem;
 l_C: TddContainerConfigItem;
 l_Item: TddVisualConfigItem;
begin
 f_Config:= TddAppConfiguration.Create;
 with f_Config do
 begin
  AddFolderNameItem('Family', 'База документов');
   Hint:= 'Путь к папке с административными данными (MAIN)';
  AddFolderNameItem('Main', 'Административная база');
   Hint:= 'Путь к папке с административными данными (MAIN)';
  AddFolderNameItem('Homes', 'Настройки пользователя');
   Hint:= 'Папка, в которой хранятся настройки пользователей';
  AddFolderNameItem('Share', 'Служебные данные');
   Hint:= 'папка для хранения служебных файлов во время работы Архивариуса';
  AddFolderNameItem('Images', 'Образы документов');
   Hint:= 'Папка для хранения сканированных образов документов';

  AddNode('Common', 'Подключение');
   LabelTop:= False;
   //AddDivider('Пользователь');
   AddStringItem('Login', 'Имя пользователя');
    Hint:= 'Имя пользователя для входа в базу данных';
   AddStringItem('Password', 'Пароль пользователя');
    PAsswordChar:= '*';
    Hint:= 'Пароль пользователя для входа в базу данных';
   l_Item:= TddVisualConfigItem(AddBooleanItem(l3CStr('SavePassword'), l3CStr('Запомнить пароль')));
    Hint:= '';
    l_Item.Visible:= False;

   //AddDivider('Коммуникации');
   AddContainerGroup('Advanced', 'Дополнительно');
    Hint:= 'Параметры подключения к Серверу Автоматизации';
   (*
   l_Main:= AddBooleanItem(l3CStr('WorkWithServer'), l3CStr('Подключаться к серверу'));
    Hint:= 'Работа без участия сервера';
    AddStringItem('ServerIP', 'IP-адрес сервера', '', l_Main);
     Hint:= 'Адрес сервера';
    AddIntegerItem(l3CStr('ServerPort'), l3CStr('Порт сервера'), 32100, l_Main);
     Hint:= 'Порт сервера';
    *)
    l_C:= AddContainerGroup('WorkWithServer', ''{'Параметры подключения'}) as TddContainerConfigItem;
     l_C.AddCase('Подключаться к серверу');
      l_C.Add(TddStringConfigItem.Make('ServerIP', 'IP-адрес сервера', ''));
      l_C.Add(TddIntegerConfigItem.Create('ServerPort', 'Порт сервера', 32100));
     l_C.AddCase('Работать автономно');
      l_C.Add(TddFolderNameConfigItem.Make('BaseRoot', 'База документов'));
    CloseGroup;
   CloseGroup;
   Load;
 end;
end;

procedure TBaseEngine.DestroyConfig;
begin
 l3Free(f_Config);
end;

function TBaseEngine.GetFamilyPath(aFamily: Integer): AnsiString;
begin
 Result := IfThen(aFamily = 0, f_PathRec.TblPath, ConcatDirName(FamilyRootFolder, 'garant'));
end;

function TBaseEngine.IsBaseLocked: Boolean;
var
  l_S: AnsiString;
begin
 if IsStarted then
  Result:= IsBaseLocked(l_S)
 else
  Result:= True;
end;

function TBaseEngine.IsBaseLocked(var aMsg: AnsiString): Boolean;
var
 l_StartDate,
 l_ExpireDate: TDateTime;
begin
 if FileExists(LockFileName) then
 begin
  try
   with TCfgList.Create(LockFileName)do
   try
    Section:= dd_LockSection;
    aMsg:= ReadParamStrDef(dd_Message, dd_DefaultMessage);
    l_StartDate:= ReadParamDateTimeDef(dd_StartDate, 0);
    l_ExpireDate:= ReadParamDateTimeDef(dd_ExpireDate, NeverExpireDate);
    if CompareDateTime(l_ExpireDate, NeverExpireDate) = EqualsValue then
     aMsg:= aMsg + #10 + 'Базу должен открыть администратор системы.'
    else
     aMsg:= aMsg + #10 + FormatDateTime('База закрыта до hh:nn:ss dd mmm yyyy', l_ExpireDate);
   finally
    Free;
   end; // try..finally
   if CompareDateTime(Now, l_StartDate) = GreaterThanValue then
   begin
    if CompareDateTime(Now, l_ExpireDate) <> GreaterThanValue then
      Result:= True
    else
    begin
      Result:= False;
      UnlockBase;
    end;
   end
   else
    Result:= False;
  except
   Result:= False;
  end;
 end
 else
  Result:= False;
 if Result and (f_BaseLockCount = 0) then
  Inc(f_BaseLockCount);
end;

function TBaseEngine.LockBase: Boolean;
begin
  Result:= LockBase(dd_DefaultMessage, Now, NeverExpireDate);
end;

function TBaseEngine.LockBase(const aMsg: AnsiString): Boolean;
begin
  Result:= LockBase(aMsg, Now, NeverExpireDate);
end;

function TBaseEngine.LockBase(aMsg: AnsiString; const aStartLock, aStopLock: TDateTime): Boolean;
begin
 if not FileExists(LockFileName) then
 try
  with TCfgList.Create(LockFileName)do
  try
   Section:= dd_LockSection;
   if aMsg = '' then aMsg:= dd_DefaultMessage;
   WriteParamStr(dd_Message, aMsg);
   WriteParamDateTime(dd_StartDate, aStartLock);
   if CompareDateTime(Now, aStopLock) = LessThanValue then
    WriteParamDateTime(dd_ExpireDate, aStopLock)
   else
    WriteParamDateTime(dd_ExpireDate, NeverExpireDate);
   Result:= True;
  finally
   Free;
  end; // try..finally
 except
  Result:= False;
 end;
 Inc(f_BaseLockCount);
end;

function TBaseEngine.LockFileName: AnsiString;
begin
  Result:= ConcatDirName(FamilyRootFolder, ddLockFileName);
end;

function TBaseEngine.NeverExpireDate: TDateTime;
begin
  Result:= EncodeDateTime(9999, 1, 1, 0, 0, 0, 0);
end;

procedure TBaseEngine.Pause;
begin
 // TODO -cMM: TBaseEngine.Pause default body inserted
end;

function TBaseEngine.pm_GetDocImagePath: AnsiString;
begin
 Result := f_PathRec.DocImgPath;
end;

function TBaseEngine.pm_GetFamilyRootFolder: AnsiString;
begin
 Result := f_PathRec.DocsPath;
end;

function TBaseEngine.pm_GetIsStarted: Boolean;
begin
 Result := (GlobalHtServer <> nil) and f_Started;
end;

function TBaseEngine.pm_GetLogin: AnsiString;
begin
 Result := f_Config.AsString['Login'];
end;

function TBaseEngine.pm_GetPassword: AnsiString;
begin
 Result := f_Config.AsString['Password'];
end;

function TBaseEngine.pm_GetSavePassword: Boolean;
begin
 if f_Config.HasValue('SavePassword') then
  Result := f_Config.AsBoolean['SavePassword']
 else
  Result:= False;
end;

function TBaseEngine.pm_GetServerIP: AnsiString;
begin
 Result := f_Config.AsString['ServerIP'];
end;

function TBaseEngine.pm_GetServerPort: Integer;
begin
 Result := f_Config.AsInteger['ServerPort'];
end;

function TBaseEngine.pm_GetTempPath: AnsiString;
begin
 Result := f_PathRec.TmpPath;
end;

function TBaseEngine.pm_GetWorkWithServer: Boolean;
begin
 Result := f_Config.AsInteger['WorkWithServer'] = 0;
end;

procedure TBaseEngine.pm_SetDocImagePath(const Value: AnsiString);
begin
 f_PathRec.DocImgPath:= TPathStr(Value);
end;

procedure TBaseEngine.pm_SetFamilyRootFolder(const aValue: AnsiString);
begin
 f_PathRec.DocsPath := aValue;
 CheckFamilyPathAlias;
end;

procedure TBaseEngine.pm_SetLogin(const aValue: AnsiString);
begin
 f_Config.AsString['Login']:= aValue;
end;

procedure TBaseEngine.pm_SetPassword(const aValue: AnsiString);
begin
 f_Config.AsString['Password']:= aValue;
end;

procedure TBaseEngine.pm_SetPathRec(const aValue: TPathRec);
begin
 f_PathRec := aValue;
 CheckFamilyPathAlias;
end;

procedure TBaseEngine.pm_SetSavePassword(const aValue: Boolean);
begin
 f_Config.AsBoolean['SavePassword']:= aValue;
end;

procedure TBaseEngine.pm_SetServerIP(const aValue: AnsiString);
begin
 f_Config.AsString['ServerIP']:= aValue;
end;

procedure TBaseEngine.pm_SetServerPort(const aValue: Integer);
begin
 f_Config.AsInteger['ServerPort']:= aValue
end;

procedure TBaseEngine.pm_SetTempPath(const Value: AnsiString);
begin
 f_PathRec.TmpPath:= Value;
end;

procedure TBaseEngine.pm_SetWorkWithServer(const aValue: Boolean);
begin
 f_Config.AsInteger['WorkWithServer']:= IfThen(aValue, 0, 1);
end;

procedure TBaseEngine.Restart;
begin
 // TODO -cMM: TBaseEngine.Restart default body inserted
end;

function TBaseEngine.Start: Boolean;
begin
 if IsStarted then
  Result:= True
 else
 begin
  Result:= False;
  _ShowSplash(dd_cwtStart);
  try
   LoadDBVersion(f_PathRec.DocsPath, f_PathRec.TblPath, f_DocBaseVersion, f_AdminBaseVersion);
   Result:= DoStart;
   if Result then
   begin
    if GlobalHTServer.CurUserID <> usSupervisor then
     UserConfig := TCfgList.Create(ConcatDirName(GlobalHtServer.CurHomePath, 'user.ini'))
    else
     UserConfig := nil; 
    InitBaseConfig(CurrentFamily);
    f_Started:= True;
   end;
  finally
   _HideSplash;
  end;
 end;
end;

procedure TBaseEngine.Stop;
var
 l_Dlg: TddClosingForm;
begin
  if ShowSplash then
   _ShowSplash(dd_cwtStop);
  DoStop;
  if GlobalHTServer <> nil then
   DestroyHt;
  l3Free(UserConfig);

  if ShowSplash then
   _HideSplash;
end;

procedure TBaseEngine.UnlockBase;
begin
 Dec(f_BaseLockCount);
 if FileExists(LockFileName) and (f_BaseLockCount <= 0) then
  DeleteFile(LockFileName);
end;

procedure TBaseEngine._HideSplash;
begin
 if ShowSplash then
  f_Dlg.Free;
end;

procedure TBaseEngine._ShowSplash(aShowMode: TddWaitDialogType);
begin
 if ShowSplash then
 begin
  f_Dlg:= TddClosingForm.Create(nil, aShowMode);
  f_Dlg.Show;
  afw.ProcessMessages;
 end;
end;


end.
 