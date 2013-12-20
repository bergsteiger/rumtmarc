unit nsStartupSupport;

interface

uses Windows, Messages, Classes, ExtCtrls, Forms, SyncObjs, vcmBase;

type
 TnsStartupSupport = class(TvcmCacheableBase)
 private
  f_CheckRunTimer: TTimer;
  //
  f_DataInstallerCommandLine: string;
  f_DataInstallerProcessHandle: THandle;
  //
  f_DataUpdaterCommandLine: string;
  f_DataUpdaterProcessHandle: THandle;
  //
  f_DownloaderCommandLine: string;
  f_DownloaderProcessHandle: THandle;
  //
  f_StartupSupportWindow: HWND;
  //
  f_LoginLockCount: Integer;
  //
  class function  UniqueClassName: string;
  //
  class function  ShowActiveFormMessage: Longword;
  class function  UnlockLoginMessage: Longword;
  class function  GetAppHandleMessage: Longword;
  //
  class function  OpenByNumberMessage: Longword;
  //
  class function  RunDataInstallerMessage: Longword;
  class function  RunDataUpdaterMessage: Longword;
  class function  RunDownloaderMessage: Longword;
  //
  class function  TrySendMessage(const aClassName: string; const aMessage: Longword; const aCopyDataBuffer: Pointer = nil; const aCopyDataBufferLength: Integer = 0): Boolean;
  //
  class function  IsParamStrExist(const aParamStr: string): Boolean;
  //
  class function  QuoteStringIfNeed(const aString: string): string;
  //
  class function  GetCommandLine: string;
  //
  class function  GetDataInstallerCommandLine: string;
  class function  GetDataUpdaterCommandLine: string;
  class function  GetDownloaderCommandLine: string;
  //
  class function  GetDataInstallerMutexName: string;
  class function  GetDataUpdaterMutexName: string;
  class function  GetDownloaderMutexName: string;
  //
  class function  GetPrimeRunningCopyMutexName: string;
  class function  GetShellRunningCopyMutexName: string;
  class function  GetAdminRunningCopyMutexName: string;
  //
  class function  GetShutdownEventName: string;
  //
  class function  GetStartupMutexName: string;
  //
  class function  IsCopyRunning(var a_MutexHandle: THandle; var a_MutexHoldCount: Integer; const a_MutexName: string): Boolean;
  //
  class procedure InitMutex(var a_MutexHandle: THandle; var a_MutexHoldCount: Integer; const a_MutexName: string; const a_Result: PBoolean = nil);
  class procedure DoneMutex(var a_MutexHandle: THandle; var a_MutexHoldCount: Integer);
  //
  class procedure InitEvent(var a_EventHandle: THandle; var a_EventOpenCount: Integer; const a_EventName: string);
  class procedure DoneEvent(var a_EventHandle: THandle; var a_EventOpenCount: Integer);
  //
  class procedure WaitEvent(const a_EventName: string; var a_MutexHandle: THandle; var a_MutexHoldCount: Integer; const a_MutexName: string);
  //
  class procedure WaitWhileMutexNotExist(const a_MutexName: string);
  //
  function  AllocateHWnd(const aWndMethod: TWndMethod): HWND;
  procedure DeallocateHWnd(var aHWnd: HWND);
  //
  procedure WndProc(var aMessage: TMessage);
  //
  procedure LockLogin;
  procedure UnlockLogin;
  //
  function  IsLoginLocked: Boolean;
  //
  function  ShowActiveForm: Boolean;
  //
  procedure RunProcess(const aProcessName: string; const aCommandLine: string; var aProcessHandle: THandle);
  function  IsProcessRunning(const aProcessHandle: THandle): Boolean;
  function  WaitWhileProcessIsRunning(const HardWait, aIsProcessRunning: Boolean; var aProcessHandle: THandle): Boolean;
  //
  procedure RunDataInstallerProcess(const aCommandLine: string);
  function  IsDataInstallerProcessRunning: Boolean;
  function  WaitWhileDataInstallerProcessIsRunning(HardWait: Boolean): Boolean;
  //
  procedure RunDataUpdaterProcess(const aCommandLine: string);
  function  IsDataUpdaterProcessRunning: Boolean;
  function  WaitWhileDataUpdaterProcessIsRunning(HardWait: Boolean): Boolean;
  //
  procedure RunDownloaderProcess(const aCommandLine: string);
  function  IsDownloaderProcessRunning: Boolean;
  function  WaitWhileDownloaderProcessIsRunning(HardWait: Boolean): Boolean;
  //
  procedure OnTimer(a_Sender: TObject);
 protected
  procedure Cleanup; override;
 public
  constructor Create; reintroduce;
  //
  class function  Instance: TnsStartupSupport;
  class procedure DestroyInstance;
  //
  class function  IsRunDataInstallerParamExist: Boolean;
  class function  IsRunDataUpdaterParamExist: Boolean;
  class function  IsRunDownloaderParamExist: Boolean;
  //
  class function  IsRunParamExist: Boolean;
  //
  class function  IsEqualCopyRunning: Boolean;
  //
  class function  IsPrimeCopyRunning: Boolean;
  class function  IsShellCopyRunning: Boolean;
  class function  IsAdminCopyRunning: Boolean;
  //
  class function  TryUnlockLogin: Boolean;
  //
  class procedure TrySendOpenByNumer;
  //
  class function  TryRunDataInstaller: Boolean;
  class function  TryRunDataUpdater: Boolean;
  class function  TryRunDownloader: Boolean;
  //
  class function  TrySwitchToOtherRunningCopy: Boolean;
  //
  class function  CheckAndCreatePrimeRunningCopyMutex: Boolean;
  class procedure CreatePrimeRunningCopyMutex;
  class procedure ReleasePrimeRunningCopyMutex;
  //
  class function  CheckAndCreateShellRunningCopyMutex: Boolean;
  class procedure CreateShellRunningCopyMutex;
  class procedure ReleaseShellRunningCopyMutex;
  //
  class function  CheckAndCreateAdminRunningCopyMutex: Boolean;
  class procedure CreateAdminRunningCopyMutex;
  class procedure ReleaseAdminRunningCopyMutex;
  //
  class function  CheckAndCreateRunningCopyMutex: Boolean;
  class procedure CreateRunningCopyMutex;
  class procedure ReleaseRunningCopyMutex;
  //
  class procedure ShutdownPendingNotify;
  class procedure ShutdownCompletedNotify;
  //
  class procedure StartupPendingNotify;
  class procedure StartupCompletedNotify;
  //
  class procedure WaitForDataInstallerExit;
  class procedure WaitForDataUpdaterExit;
  class procedure WaitForDownloaderExit;
  //
  function CheckAndRunSupportProcessesIfNeed: Boolean;
 end;

function  nsIsOtherPrimeOrShellRunning(aTopForm: TCustomForm): Boolean;
procedure nsCheckRequiredFonts(aTopForm: TCustomForm);

implementation

uses
  SysUtils,
  ShellAPI,

  l3Types,
  l3Base,
  l3FontManager,

  afwFacade,

  vcmForm,

  nsFlashWindow,
  nsUtils,

  StdRes,

  vcmMessagesSupport
  ;

const
 c_RunDataInstallerParamStr = '-RunDataInstaller';
 c_DataInstallerProcessName = 'F1DataSetup.run';
 c_DataInstallerDefaultCommandLine = 'C:\\';
 //
 c_RunDataUpdaterParamStr = '-RunDataUpdater';
 c_DataUpdaterProcessName = 'F1DataUpd.run';
 c_DataUpdaterDefaultCommandLine = '';
 //
 c_RunDownloaderParamStr = '-RunDownloader';
 c_DownloaderProcessName = 'F1Download.run';
 c_DownloaderDefaultCommandLine = '';
 //
 c_ShowActiveFormMessageName = '{2A2BF3E9-EE0F-4F30-A698-9EF166EC51CB}';
 c_UnlockLoginMessageName = '{461CFCA5-CFCE-4FB4-B56C-192C6FA96201}';
 c_OpenByNumberMessageName = '{0DD3BAF8-2DCE-47B7-ABF2-1373BB590016}';
 c_RunDataInstallerMessageName = '{465AA2E3-DD43-429F-AE3C-DEE2F89749B7}';
 c_RunDataUpdaterMessageName = '{EC86497D-E85F-472A-A444-379B230D1BC5}';
 c_RunDownloaderMessageName = '{8DFDDB6A-C46A-4F9B-8F1B-82A305BBC3B0}';
 c_GetAppHandleMessageName = '{90F2FE9B-2BE0-4BA1-9779-447B716884BD}';
 //
 c_SleepTime = 250; // 0.25 seconds

var
 g_DataInstallerMutexHandle: THandle = THandle(INVALID_HANDLE_VALUE);
 g_DataInstallerMutexHoldCount: Integer = 0;
 //
 g_DataUpdaterMutexHandle: THandle = THandle(INVALID_HANDLE_VALUE);
 g_DataUpdaterMutexHoldCount: Integer = 0;
 //
 g_DownloaderMutexHandle: THandle = THandle(INVALID_HANDLE_VALUE);
 g_DownloaderMutexHoldCount: Integer = 0;
 //
 g_StartupSupportMutexHandle: THandle = THandle(INVALID_HANDLE_VALUE);
 g_StartupSupportMutexHoldCount: Integer = 0;
 //
 g_PrimeRunningCopyMutexHandle: THandle = THandle(INVALID_HANDLE_VALUE);
 g_PrimeRunningCopyMutexHoldCount: Integer = 0;
 //
 g_ShellRunningCopyMutexHandle: THandle = THandle(INVALID_HANDLE_VALUE);
 g_ShellRunningCopyMutexHoldCount: Integer = 0;
 //
 g_AdminRunningCopyMutexHandle: THandle = THandle(INVALID_HANDLE_VALUE);
 g_AdminRunningCopyMutexHoldCount: Integer = 0;
 //
 g_StartupMutex: THandle = THandle(INVALID_HANDLE_VALUE);
 g_StartupMutexHoldCount: Integer = 0;
 //
 g_ShutdownEvent: THandle = THandle(INVALID_HANDLE_VALUE);
 g_ShutdownEventOpenCount: Integer = 0;
 //
 g_StartupSupportInstance: TnsStartupSupport = nil;
 //
 g_ShowActiveFormMessage: UInt = 0;
 g_UnlockLoginMessage: UInt = 0;
 g_OpenByNumberMessage: UInt = 0;
 g_RunDataInstallerMessage: UInt = 0;
 g_RunDataUpdaterMessage: UInt = 0;
 g_RunDownloaderMessage: UInt = 0;
 g_GetAppHandleMessage: UInt = 0;
 //
 g_CriticalSection: TCriticalSection = nil;

class function TnsStartupSupport.UniqueClassName: string;
begin
 Result := Format('%s:{65591D5E-77E5-4699-BF40-E7B1FB186037}', [ClassName]);
end;

class function TnsStartupSupport.ShowActiveFormMessage: Longword;
begin
 Result := g_ShowActiveFormMessage;
end;

class function TnsStartupSupport.UnlockLoginMessage: Longword;
begin
 Result := g_UnlockLoginMessage;
end;

class function TnsStartupSupport.OpenByNumberMessage: Longword;
begin
 Result := g_OpenByNumberMessage;
end;

class function TnsStartupSupport.RunDataInstallerMessage: Longword;
begin
 Result := g_RunDataInstallerMessage;
end;

class function TnsStartupSupport.RunDataUpdaterMessage: Longword;
begin
 Result := g_RunDataUpdaterMessage;
end;

class function TnsStartupSupport.RunDownloaderMessage: Longword;
begin
 Result := g_RunDownloaderMessage;
end;

class function TnsStartupSupport.TrySendMessage(const aClassName: string; const aMessage: Longword; const aCopyDataBuffer: Pointer; const aCopyDataBufferLength: Integer): Boolean;
var
 l_CopyDataStruct: TCopyDataStruct;
 l_WindowHandle: HWND;
begin
 l_WindowHandle := FindWindow(PChar(aClassName), nil);
 //
 Result := (l_WindowHandle <> HWND(0));
 if Result then
 begin
  if ((aCopyDataBuffer <> nil) and (aCopyDataBufferLength <> 0)) then
  begin
   with l_CopyDataStruct do
   begin
    Assert((SizeOf(aMessage) = SizeOf(DWORD)) and (SizeOf(aCopyDataBufferLength) = SizeOf(DWORD)));
    //
    dwData := DWORD(aMessage);
    cbData := DWORD(aCopyDataBufferLength);
    lpData := aCopyDataBuffer;
   end;
   //
   if (SendMessage(l_WindowHandle, WM_COPYDATA, WPARAM(0), LPARAM(@l_CopyDataStruct)) <> LRESULT(aMessage)) then
   begin
    Result := False;
    Exit;
   end;
  end;
  //
  Assert(SizeOf(aMessage) = SizeOf(UINT));
  //
  Result := (SendMessage(l_WindowHandle, UINT(aMessage), WPARAM(0), LPARAM(0)) = LRESULT(aMessage));
 end;
 //
 afw.ProcessMessages;
end;

class function TnsStartupSupport.IsParamStrExist(const aParamStr: string): Boolean;
var
 l_Index: Integer;
begin
 Result := False;
 //
 for l_Index := 1 to ParamCount do
  if (StrIComp(PChar(ParamStr(l_Index)), PChar(aParamStr)) = 0) then
  begin
   Result := True;
   Break;
  end;
end;

class function TnsStartupSupport.QuoteStringIfNeed(const aString: string): string;
begin
 if ((Pos(' ', aString) <> 0) or (Pos('''', aString) <> 0)) then
  Result := Format('"%s"', [aString])
 else
  Result := aString;
end;

class function TnsStartupSupport.GetCommandLine: string;
 //
 function AddParamStrToCommandLine(const aCommandLine: string; const aParamStr: string): string;
 begin
  if (aCommandLine = '') then
   Result := aParamStr
  else
   Result := Format('%s %s', [aCommandLine, aParamStr]);
 end;
 //
var
 l_Index: Integer;
 l_ParamStr: string;
begin
 Result := '';
 //
 for l_Index := 1 to ParamCount do
 begin
  l_ParamStr := ParamStr(l_Index);
  //
  if (ANSICompareText(l_ParamStr, c_RunDataInstallerParamStr) <> 0) and
     (ANSICompareText(l_ParamStr, c_RunDataUpdaterParamStr) <> 0) and
     (ANSICompareText(l_ParamStr, c_RunDownloaderParamStr) <> 0) then
   Result := AddParamStrToCommandLine(Result, QuoteStringIfNeed(l_ParamStr));
 end;
end;

class function TnsStartupSupport.GetDataInstallerCommandLine: string;
begin
 Result := GetCommandLine;
 //
 if (Result = '') then
  Result := c_DataInstallerDefaultCommandLine;
end;

class function TnsStartupSupport.GetDataUpdaterCommandLine: string;
begin
  Result := GetCommandLine;
 //
 if (Result = '') then
  Result := c_DataUpdaterDefaultCommandLine;
end;

class function TnsStartupSupport.GetDownloaderCommandLine: string;
begin
 Result := GetCommandLine;
 //
 if (Result = '') then
  Result := c_DownloaderDefaultCommandLine;
end;

class function TnsStartupSupport.GetDataInstallerMutexName: string;
begin
 Result := '{36D6F6B9-0F28-4116-9294-7B1FE4BA88CD}';
end;

class function TnsStartupSupport.GetDataUpdaterMutexName: string;
begin
 Result := '{5B78E993-D593-4A45-8ECA-354E6E7701C6}';
end;

class function TnsStartupSupport.GetDownloaderMutexName: string;
begin
 Result := '{EE316E6D-97EB-47E1-90A1-5CC7E8E14C7D}';
end;

class function TnsStartupSupport.GetPrimeRunningCopyMutexName: string;
begin
 Result := '{C5105D38-60D1-4EBB-8CC2-A61BA61EA72D}';
end;

class function TnsStartupSupport.GetShellRunningCopyMutexName: string;
begin
 Result := '{42C5893E-0DE0-4A5F-BE50-BA602DA4A73E}';
end;

class function TnsStartupSupport.GetShutdownEventName: string;
begin
 Result := '{7C9B7D1E-D28D-48D6-9FC5-D07C29BD9802}';
end;

class function TnsStartupSupport.GetStartupMutexName: string;
begin
 Result := '{0765EE38-91E1-4662-91B1-5F5FB01716DB}';
end;

class function TnsStartupSupport.IsCopyRunning(var a_MutexHandle: THandle; var a_MutexHoldCount: Integer; const a_MutexName: string): Boolean;
begin
 with g_CriticalSection do
 begin
  Enter;
  try
   Result := True;
   //
   if (a_MutexHandle = THandle(INVALID_HANDLE_VALUE)) then
   begin
    a_MutexHandle := CreateMutex(nil, False, PChar(a_MutexName));
    if (a_MutexHandle = THandle(0)) then
    begin
     a_MutexHandle := THandle(INVALID_HANDLE_VALUE);
     //
     Win32Check(False);
    end;
   end;
   //
   if (a_MutexHoldCount = 0) then
   begin
    case WaitForSingleObject(a_MutexHandle, 0) of
     WAIT_FAILED:
      Win32Check(False);
     //
     WAIT_OBJECT_0:
     begin
      Result := False;
      //
      Win32Check(ReleaseMutex(a_MutexHandle));
      Win32Check(CloseHandle(a_MutexHandle));
     end;
    end;
    //
    a_MutexHandle := THandle(INVALID_HANDLE_VALUE);
   end;
  finally
   Leave;
  end;
 end;
end;

class procedure TnsStartupSupport.InitMutex(var a_MutexHandle: THandle; var a_MutexHoldCount: Integer; const a_MutexName: string; const a_Result: PBoolean);
begin
 with g_CriticalSection do
 begin
  Enter;
  try
   if (a_MutexHandle = THandle(INVALID_HANDLE_VALUE)) then
   begin
    a_MutexHandle := CreateMutex(nil, False, PChar(a_MutexName));
    if (a_MutexHandle = THandle(0)) then
    begin
     a_MutexHandle := THandle(INVALID_HANDLE_VALUE);
     //
     Win32Check(False);
    end;
   end;
   //
   if (a_MutexHoldCount = 0) then
    if (a_Result = nil) then
     while (True) do
      case WaitForSingleObject(a_MutexHandle, c_SleepTime) of
       WAIT_ABANDONED,
       WAIT_OBJECT_0:
        Break;
       //
       WAIT_TIMEOUT:
        afw.ProcessMessages;
      else
       Win32Check(False);
      end
    else
    begin
     case WaitForSingleObject(a_MutexHandle, 0) of
      WAIT_ABANDONED,
      WAIT_OBJECT_0:
       a_Result^ := True;
      //
      WAIT_TIMEOUT:
      begin
       a_Result^ := False;
       //
       Dec(a_MutexHoldCount); // mutex is not hold
      end;
     else
      Win32Check(False);
     end;
     //
     afw.ProcessMessages;
    end;
    //
    Inc(a_MutexHoldCount);
  finally
   Leave;
  end;
 end;
end;

class procedure TnsStartupSupport.DoneMutex(var a_MutexHandle: THandle; var a_MutexHoldCount: Integer);
begin
 with g_CriticalSection do
 begin
  Enter;
  try
   if (a_MutexHandle <> THandle(INVALID_HANDLE_VALUE)) then
   begin
    Dec(a_MutexHoldCount);
    //
    if (a_MutexHoldCount = 0) then
    begin
     Win32Check(ReleaseMutex(a_MutexHandle));
     Win32Check(CloseHandle(a_MutexHandle));
     //
     a_MutexHandle := THandle(INVALID_HANDLE_VALUE);
    end;
   end;
  finally
   Leave;
  end;
 end;
end;

class procedure TnsStartupSupport.InitEvent(var a_EventHandle: THandle; var a_EventOpenCount: Integer; const a_EventName: string);
begin
 with g_CriticalSection do
 begin
  Enter;
  try
   if (a_EventHandle = THandle(INVALID_HANDLE_VALUE)) then
   begin
    a_EventHandle := CreateEvent(nil, False, False, PChar(a_EventName));
    if (a_EventHandle = THandle(0)) then
    begin
     a_EventHandle := THandle(INVALID_HANDLE_VALUE);
     //
     Win32Check(False);
    end;
   end;
   //
   Inc(a_EventOpenCount);
  finally
   Leave;
  end;
 end;
end;

class procedure TnsStartupSupport.DoneEvent(var a_EventHandle: THandle; var a_EventOpenCount: Integer);
begin
 with g_CriticalSection do
 begin
  Enter;
  try
   if (a_EventHandle <> THandle(INVALID_HANDLE_VALUE)) then
   begin
    Dec(a_EventOpenCount);
    //
    if (a_EventOpenCount = 0) then
    begin
     Win32Check(SetEvent(a_EventHandle));
     Win32Check(CloseHandle(a_EventHandle));
     //
     a_EventHandle := THandle(INVALID_HANDLE_VALUE);
    end;
   end;
  finally
   Leave;
  end;
 end;
end;

class procedure TnsStartupSupport.WaitEvent(const a_EventName: string; var a_MutexHandle: THandle; var a_MutexHoldCount: Integer; const a_MutexName: string);
var
 l_Event: THandle;
begin
 with g_CriticalSection do
 begin
  Enter;
  try
   while (True) do
   begin
    l_Event := OpenEvent(EVENT_ALL_ACCESS, False, PChar(a_EventName));
    //
    if (l_Event <> THandle(0)) then
     try
      case WaitForSingleObject(l_Event, c_SleepTime) of
       WAIT_ABANDONED,
       WAIT_OBJECT_0:
        Break;
       //
       WAIT_TIMEOUT:
        afw.ProcessMessages;
      else
       Win32Check(False);
      end;
     finally
      Win32Check(CloseHandle(l_Event));
     end
    else
     Break;
   end;
   //
   InitMutex(a_MutexHandle, a_MutexHoldCount, a_MutexName);
  finally
   Leave;
  end;
 end;
end;

class procedure TnsStartupSupport.WaitWhileMutexNotExist(const a_MutexName: string);
var
 l_Handle: THandle;
begin
 repeat
  l_Handle := CreateMutex(nil, False, PChar(a_MutexName));
  //
  if (l_Handle <> THandle(0)) then
  begin
   if (GetLastError = ERROR_ALREADY_EXISTS) then
   begin
    // WAIT OPTIMIZATION {
    case WaitForSingleObject(l_Handle, INFINITE) of
     WAIT_ABANDONED,
     WAIT_OBJECT_0:
      Win32Check(ReleaseMutex(l_Handle));
     else
      Win32Check(False);
    end;
    // } WAIT OPTIMIZATION
    //
    Win32Check(CloseHandle(l_Handle));
    l_Handle := THandle(0);
    //
    afw.ProcessMessages;
   end;
  end
  else
   Win32Check(False);
 until (l_Handle <> THandle(0));
 //
 Win32Check(CloseHandle(l_Handle));
end;

function TnsStartupSupport.AllocateHWnd(const aWndMethod: TWndMethod): HWND;
 //
 procedure RegisterWndClass;
  //
  function IsWndClassRegistered(const aClassName: PChar): Boolean;
  var
   l_WndClass: TWndClass;
  begin
   Result := GetClassInfo(HInstance, aClassName, l_WndClass);
  end;
  //
 var
  l_WndClass: TWndClass;
 begin
  l3FillChar(l_WndClass, SizeOf(l_WndClass), $00);
  //
  with l_WndClass do
  begin
   lpfnWndProc := @DefWindowProc;
   hInstance := SysInit.HInstance;
   lpszClassName := PChar(UniqueClassName);
   //
   if IsWndClassRegistered(lpszClassName) then
    Windows.UnregisterClass(lpszClassName, hInstance);
  end;
  Windows.RegisterClass(l_WndClass);
 end;
 //
begin
 RegisterWndClass;
 //
 Result := CreateWindowEx(WS_EX_TOOLWINDOW, PChar(UniqueClassName), nil, WS_POPUP , 0, 0, 0, 0, 0, 0, HInstance, nil);
 //
 if Assigned(aWndMethod) then
  SetWindowLong(Result, GWL_WNDPROC, Longint(MakeObjectInstance(aWndMethod)));
end;

procedure TnsStartupSupport.DeallocateHWnd(var aHWnd: HWND);
var
 l_ObjectInstance: Pointer;
begin
 l_ObjectInstance := Pointer(GetWindowLong(aHWnd, GWL_WNDPROC));
 DestroyWindow(aHWnd);
 //
 FreeObjectInstance(l_ObjectInstance);
 //
 Windows.UnregisterClass(PChar(UniqueClassName), HInstance);
 //
 aHWnd := HWND(0);
end;

procedure TnsStartupSupport.WndProc(var aMessage: TMessage);
var
 l_Param: string;
begin
 try
  with aMessage do
  begin
   {$If not Defined(Admin) AND not Defined(Monitorings)}
   if (Msg = WM_COPYDATA) then
   begin
    with PCopyDataStruct(LParam)^ do
    begin
{$If not Defined(Admin) AND not Defined(Monitorings)}
     if (dwData = DWORD(OpenByNumberMessage)) then
     begin
      SetString(l_Param, PChar(lpData), Integer(cbData));
      nsOpenDocumentByNumber(l_Param, True, True);
      //
      Result := Longint(dwData);
      Exit;
     end;
{$IfEnd}
     //
     if (dwData = DWORD(RunDataInstallerMessage)) then
     begin
      SetString(f_DataInstallerCommandLine, PChar(lpData), Integer(cbData));
      //
      Result := Longint(dwData);
      Exit;
     end;
     //
     if (dwData = DWORD(RunDataUpdaterMessage)) then
     begin
      SetString(f_DataUpdaterCommandLine, PChar(lpData), Integer(cbData));
      //
      Result := Longint(dwData);
      Exit;
     end;
     //
     if (dwData = DWORD(RunDownloaderMessage)) then
     begin
      SetString(f_DownloaderCommandLine, PChar(lpData), Integer(cbData));
      //
      Result := Longint(dwData);
      Exit;
     end;
    end;
   end//Msg = WM_COPYDATA
   else
   {$IfEnd}
   //
   if (Msg = ShowActiveFormMessage) then
   begin
    if ShowActiveForm then
    begin
     Result := Longint(ShowActiveFormMessage);
     Exit;
    end;
   end
   else
   //
   if (Msg = GetAppHandleMessage) then
   begin
    Result := Application.Handle;
    Exit;
   end
   else
   //
   if (Msg = UnlockLoginMessage) then
   begin
    if IsLoginLocked then
    begin
     UnlockLogin;
     //
     Result := Longint(UnlockLoginMessage);
     Exit;
    end;
   end
   else
   //
   if (Msg = RunDataInstallerMessage) then
   begin
    InitMutex(g_DataInstallerMutexHandle, g_DataInstallerMutexHoldCount, GetDataInstallerMutexName);
    try
     RunDataInstallerProcess(f_DataInstallerCommandLine);
     f_CheckRunTimer.Enabled := True;
    except
     DoneMutex(g_DataInstallerMutexHandle, g_DataInstallerMutexHoldCount);
     //
     raise;
    end;
    //
    Result := Longint(RunDataInstallerMessage);
    Exit;
   end
   else
   //
   if (Msg = RunDataUpdaterMessage) then
   begin
    InitMutex(g_DataUpdaterMutexHandle, g_DataUpdaterMutexHoldCount, GetDataUpdaterMutexName);
    try
     RunDataUpdaterProcess(f_DataUpdaterCommandLine);
     f_CheckRunTimer.Enabled := True;
    except
     DoneMutex(g_DataUpdaterMutexHandle, g_DataUpdaterMutexHoldCount);
     //
     raise;
    end;
    //
    Result := Longint(RunDataUpdaterMessage);
    Exit;
   end
   else
   //
   if (Msg = RunDownloaderMessage) then
   begin
    InitMutex(g_DownloaderMutexHandle, g_DownloaderMutexHoldCount, GetDownloaderMutexName);
    try
     RunDownloaderProcess(f_DownloaderCommandLine);
     f_CheckRunTimer.Enabled := True;
    except
     DoneMutex(g_DownloaderMutexHandle, g_DownloaderMutexHoldCount);
     //
     raise;
    end;
    //
    Result := Longint(RunDownloaderMessage);
    Exit;
   end;//Msg = RunDownloaderMessage
   //
   Result := DefWindowProc(f_StartupSupportWindow, Msg, WParam, LParam);
  end;
 except
  on E: Exception do
   l3System.Exception2Log(E);
 end;
end;

procedure TnsStartupSupport.LockLogin;
begin
 l3InterlockedIncrement(f_LoginLockCount);
end;

procedure TnsStartupSupport.UnlockLogin;
begin
 l3InterlockedDecrement(f_LoginLockCount);
end;

function TnsStartupSupport.IsLoginLocked: Boolean;
begin
 Result := (l3InterlockedExchangeAdd(@f_LoginLockCount, 0) <> 0);
end;

function TnsStartupSupport.ShowActiveForm: Boolean;
var
 l_ActiveForm: TForm;
 l_WindowPlacement: TWindowPlacement;
begin
 Result := False;
 //
 l_ActiveForm := Screen.ActiveForm;
 if (l_ActiveForm <> nil) then
 begin
  with Application do
  begin
   BringToFront;
   OpenIcon(Handle);
  end;
  //
  with l_ActiveForm do
  begin
   l_WindowPlacement.Length := SizeOf(l_WindowPlacement);
   GetWindowPlacement(Handle, @l_WindowPlacement);
   //
   BringToFront;
   OpenIcon(Handle);
   //
   if ((l_WindowPlacement.Flags and WPF_RESTORETOMAXIMIZED) <> 0) then
    ShowWindow(Handle, SW_MAXIMIZE);
  end;
  //
  Result := True;
 end;
end;

procedure TnsStartupSupport.RunProcess(const aProcessName: string; const aCommandLine: string; var aProcessHandle: THandle);
 function GetCreationFlags: DWORD;
 begin
  Result := CREATE_DEFAULT_ERROR_MODE or DETACHED_PROCESS or NORMAL_PRIORITY_CLASS;
 end;
 //
 function GetOsDependentCatalog: string;
 begin
  if (Longint(GetVersion) < 0) then
   Result := Format('%s%s', [ExtractFilePath(ParamStr(0)), 'win9X\'])
  else
   Result := Format('%s%s', [ExtractFilePath(ParamStr(0)), 'winNT\']);
 end;
 //
 function RunProcessWithParams(const aProcessName: string; const aCommandLine: string; const aCurrentDirectory: string; var aProcessHandle: THandle): Boolean;
 const
  ERROR_ELEVATION_REQUIRED = 740;
 var
  l_ProcessInformation: TProcessInformation;
  l_ProcessName: string;
  l_StartupInfo: TStartupInfo;
  //
  l_CommandLine: string;
  l_NameServiceIOR: string;
  l_ShellExecuteInfo: TShellExecuteInfo;
 begin
  l3FillChar(l_StartupInfo, SizeOf(l_StartupInfo), $00);
  with l_StartupInfo do
  begin
   cb := DWORD(SizeOf(l_StartupInfo));
   dwFlags := STARTF_USESTDHANDLES;
  end;
  //
  l_ProcessName := Format('%s%s', [aCurrentDirectory, aProcessName]);
  //
  Result := CreateProcess(nil, PChar(Format('%s %s', [QuoteStringIfNeed(l_ProcessName), aCommandLine])), nil, nil, False, GetCreationFlags, nil, PChar(aCurrentDirectory), l_StartupInfo, l_ProcessInformation);
  if Result then
   with l_ProcessInformation do
   begin
    CloseHandle(hThread);
    //
    if (aProcessHandle = THandle(INVALID_HANDLE_VALUE)) then
     aProcessHandle := hProcess
    else
     Win32Check(CloseHandle(hProcess));
   end
  else
   // UAC: Run through "Elevation Dialog" ShellExecuteEx-implementation
   if ({GetLastError = ERROR_ELEVATION_REQUIRED // MoleBox <= 4_5408 BUG}True) then
   begin
    l_CommandLine := aCommandLine;
    l_NameServiceIOR := GetEnvironmentVariable('NameServiceIOR');
    if (l_NameServiceIOR <> '') then
     l_CommandLine := Format('-ORBInitRef NameService=%s %s', [l_NameServiceIOR, l_CommandLine]);
    //
    l3FillChar(l_ShellExecuteInfo, SizeOf(l_ShellExecuteInfo), $00);
    //
    with l_ShellExecuteInfo do
    begin
     cbSize := SizeOf(l_ShellExecuteInfo);
     //
     fMask := SEE_MASK_CLASSNAME or SEE_MASK_FLAG_DDEWAIT or SEE_MASK_FLAG_NO_UI or SEE_MASK_NOCLOSEPROCESS;
     lpVerb := 'runas';
     //
     lpFile := PChar(l_ProcessName);
     lpParameters := PChar(l_CommandLine);
     //
     nShow := SW_SHOWDEFAULT;
     //
     lpClass := 'exefile';
    end;
    //
    Result := ShellExecuteEx(@l_ShellExecuteInfo);
    if (Result) then
     with l_ShellExecuteInfo do
     begin
      if (aProcessHandle = THandle(INVALID_HANDLE_VALUE)) then
       aProcessHandle := hProcess
      else
       Win32Check(CloseHandle(hProcess));
     end;
   end;
 end;
begin
 if not(RunProcessWithParams(aProcessName, aCommandLine, GetOsDependentCatalog, aProcessHandle) or RunProcessWithParams(aProcessName, aCommandLine, ExtractFilePath(ParamStr(0)), aProcessHandle)) then
   ; // $TODO: сообщение, что не смогли удачно запустить процесс
end;

function TnsStartupSupport.IsProcessRunning(const aProcessHandle: THandle): Boolean;
var
 l_ExitCode: DWORD absolute ExitCode;
begin
 Result := (aProcessHandle <> THandle(INVALID_HANDLE_VALUE));
 //
 if (Result) then
 begin
  Result := (WaitForSingleObject(aProcessHandle, 0) = WAIT_TIMEOUT);
  //
  if (not Result) then
  begin
   Assert(SizeOf(l_ExitCode) = SizeOf(ExitCode));
   Win32Check(GetExitCodeProcess(aProcessHandle, l_ExitCode));
   //
   if (l_ExitCode = DWORD(STILL_ACTIVE)) then
    Result := False;
  end;
 end;
end;

function TnsStartupSupport.WaitWhileProcessIsRunning(const HardWait, aIsProcessRunning: Boolean; var aProcessHandle: THandle): Boolean;
var
 l_ExitCode: DWORD absolute ExitCode;
begin
 Result := True;
 if (aProcessHandle <> THandle(INVALID_HANDLE_VALUE)) then
 begin
  if aIsProcessRunning then
  begin
   while (True) do
    case WaitForSingleObject(aProcessHandle, c_SleepTime) of
     WAIT_ABANDONED,
     WAIT_OBJECT_0:
      Break;
     //
     WAIT_TIMEOUT:
      if HardWait then
       afw.ProcessMessages
      else
      begin
       Result := False;
       Break;
      end;
    else
     TerminateProcess(aProcessHandle, WAIT_FAILED);
     Win32Check(False);
    end;
   //
   if Result then
   begin
    Assert(SizeOf(l_ExitCode) = SizeOf(ExitCode));
    Win32Check(GetExitCodeProcess(aProcessHandle, l_ExitCode));
   end; 
  end;
  //
  if Result then
  begin
   CloseHandle(aProcessHandle);
   aProcessHandle := THandle(INVALID_HANDLE_VALUE);
  end;
 end;
end;

procedure TnsStartupSupport.RunDataInstallerProcess(const aCommandLine: string);
begin
 if not (IsDataInstallerProcessRunning) then
  RunProcess(c_DataInstallerProcessName, aCommandLine, f_DataInstallerProcessHandle);
end;

function TnsStartupSupport.IsDataInstallerProcessRunning: Boolean;
begin
 Result := IsProcessRunning(f_DataInstallerProcessHandle);
end;

function TnsStartupSupport.WaitWhileDataInstallerProcessIsRunning(HardWait: Boolean): Boolean;
begin
 Result := WaitWhileProcessIsRunning(HardWait, IsDataInstallerProcessRunning, f_DataInstallerProcessHandle);
 //
 if Result and (g_DataInstallerMutexHandle <> THandle(INVALID_HANDLE_VALUE)) then
  while (l3InterlockedExchangeAdd(g_DataInstallerMutexHoldCount, 0) <> 0) do
   DoneMutex(g_DataInstallerMutexHandle, g_DataInstallerMutexHoldCount);
end;

procedure TnsStartupSupport.RunDataUpdaterProcess(const aCommandLine: string);
begin
 if not (IsDataUpdaterProcessRunning) then
  RunProcess(c_DataUpdaterProcessName, aCommandLine, f_DataUpdaterProcessHandle);
end;

function TnsStartupSupport.IsDataUpdaterProcessRunning: Boolean;
begin
 Result := IsProcessRunning(f_DataUpdaterProcessHandle);
end;

function TnsStartupSupport.WaitWhileDataUpdaterProcessIsRunning(HardWait: Boolean): Boolean;
begin
 Result := WaitWhileProcessIsRunning(HardWait, IsDataUpdaterProcessRunning, f_DataUpdaterProcessHandle);
 //
 if Result and (g_DataUpdaterMutexHandle <> THandle(INVALID_HANDLE_VALUE)) then
  while (l3InterlockedExchangeAdd(g_DataUpdaterMutexHoldCount, 0) <> 0) do
   DoneMutex(g_DataUpdaterMutexHandle, g_DataUpdaterMutexHoldCount);
end;

procedure TnsStartupSupport.RunDownloaderProcess(const aCommandLine: string);
begin
 if not (IsDownloaderProcessRunning) then
  RunProcess(c_DownloaderProcessName, aCommandLine, f_DownloaderProcessHandle);
end;

function TnsStartupSupport.IsDownloaderProcessRunning: Boolean;
begin
 Result := IsProcessRunning(f_DownloaderProcessHandle);
end;

function TnsStartupSupport.WaitWhileDownloaderProcessIsRunning(HardWait: Boolean): Boolean;
begin
 Result := WaitWhileProcessIsRunning(HardWait, IsDownloaderProcessRunning, f_DownloaderProcessHandle);
 //
 if Result and (g_DownloaderMutexHandle <> THandle(INVALID_HANDLE_VALUE)) then
  while (l3InterlockedExchangeAdd(g_DownloaderMutexHoldCount, 0) <> 0) do
   DoneMutex(g_DownloaderMutexHandle, g_DownloaderMutexHoldCount);
end;

procedure TnsStartupSupport.OnTimer(a_Sender: TObject);
var
 l_Waited: Boolean;
begin
 with f_CheckRunTimer do
 begin
  Enabled := False;
  l_Waited := True;
  try
   if (not IsDataInstallerProcessRunning) then
    l_Waited := WaitWhileDataInstallerProcessIsRunning(False);
   //
   if (not IsDataUpdaterProcessRunning) then
    l_Waited := WaitWhileDataUpdaterProcessIsRunning(False);
   //
   if (not IsDownloaderProcessRunning) then
    l_Waited := WaitWhileDownloaderProcessIsRunning(False);
  finally
   Enabled := (not l_Waited) or IsDataInstallerProcessRunning or IsDataUpdaterProcessRunning or IsDownloaderProcessRunning;
  end;
 end;
end;

procedure TnsStartupSupport.Cleanup;
begin
 l3Free(f_CheckRunTimer);
 DeallocateHWnd(f_StartupSupportWindow);
 //
 f_LoginLockCount := 0;
 //
 inherited;
end;

constructor TnsStartupSupport.Create;
begin
 inherited Create{(nil)};
 //
 f_DataInstallerCommandLine := c_DataInstallerDefaultCommandLine;
 f_DataUpdaterCommandLine := c_DataUpdaterDefaultCommandLine;
 f_DownloaderCommandLine := c_DownloaderDefaultCommandLine;
 //
 f_DataInstallerProcessHandle := THandle(INVALID_HANDLE_VALUE);
 f_DataUpdaterProcessHandle := THandle(INVALID_HANDLE_VALUE);
 f_DownloaderProcessHandle := THandle(INVALID_HANDLE_VALUE);
 //
 f_StartupSupportWindow := AllocateHWnd(WndProc);
 //
 f_CheckRunTimer := TTimer.Create(nil);
 //
 with f_CheckRunTimer do
 begin
  Enabled := False;
  Interval := 0500; // 0.5 of second
  //
  OnTimer := Self.OnTimer;
 end;
end;

class function TnsStartupSupport.Instance: TnsStartupSupport;
begin
 if (g_StartupSupportInstance = nil) then
  g_StartupSupportInstance := TnsStartupSupport.Create;
 //
 Result := g_StartupSupportInstance;
end;

class procedure TnsStartupSupport.DestroyInstance;
begin
 if (g_StartupSupportInstance <> nil) then
 begin
  with g_StartupSupportInstance do
  begin
   WaitWhileDataInstallerProcessIsRunning(True);
   WaitWhileDataUpdaterProcessIsRunning(True);
   WaitWhileDownloaderProcessIsRunning(True);
  end;
  vcmFree(g_StartupSupportInstance);
 end;
end;

class function TnsStartupSupport.IsRunDataInstallerParamExist: Boolean;
begin
 Result := IsParamStrExist(c_RunDataInstallerParamStr);
end;

class function TnsStartupSupport.IsRunDataUpdaterParamExist: Boolean;
begin
 Result := IsParamStrExist(c_RunDataUpdaterParamStr);
end;

class function TnsStartupSupport.IsRunDownloaderParamExist: Boolean;
begin
 Result := IsParamStrExist(c_RunDownloaderParamStr);
end;

class function TnsStartupSupport.IsRunParamExist: Boolean;
begin
 Result := IsRunDataInstallerParamExist or IsRunDataUpdaterParamExist or IsRunDownloaderParamExist;
end;

class function TnsStartupSupport.TryUnlockLogin: Boolean;
begin
 Result := TrySendMessage(UniqueClassName, UnlockLoginMessage);
end;

class function TnsStartupSupport.IsEqualCopyRunning: Boolean;
begin
{$IFDEF Monitorings}
 Result := IsPrimeCopyRunning;
{$ELSEIF defined(Admin)}
 Result := IsAdminCopyRunning;
{$ELSE}
 Result := IsShellCopyRunning;
{$IFEND Monitorings}
end;

class function TnsStartupSupport.IsPrimeCopyRunning: Boolean;
begin
 Result := IsCopyRunning(g_PrimeRunningCopyMutexHandle, g_PrimeRunningCopyMutexHoldCount, GetPrimeRunningCopyMutexName);
end;

class function TnsStartupSupport.IsShellCopyRunning: Boolean;
begin
 Result := IsCopyRunning(g_ShellRunningCopyMutexHandle, g_ShellRunningCopyMutexHoldCount, GetShellRunningCopyMutexName);
end;

class procedure TnsStartupSupport.TrySendOpenByNumer;
{$If not Defined(Admin) AND not Defined(Monitorings)}
 //
 function IsOpenByNumberParamExist(out a_Param: string): Boolean;
 var
  l_Index: Integer;
 begin
  Result := False;
  //
  for l_Index := 1 to ParamCount do
   if (StrIComp(PChar(ParamStr(l_Index)), '-OpenByNumber') = 0) then
   begin
    Result := (l_Index < ParamCount);
    //
    if (Result) then
     a_Param := ParamStr (Succ(l_Index));
    //
    Break;
   end;
 end;
 //
var
 l_Param: string;
{$IfEnd}
begin
{$If not Defined(Admin) AND not Defined(Monitorings)}
 if (IsOpenByNumberParamExist(l_Param) and (l_Param <> '')) then
  TrySendMessage(UniqueClassName, OpenByNumberMessage, PChar(l_Param), Length(l_Param));
{$IfEnd}
end;

class function TnsStartupSupport.TryRunDataInstaller: Boolean;
var
 l_CommandLine: string;
 l_CommandLineLength: Integer;
begin
 l_CommandLine := GetDataInstallerCommandLine;
 l_CommandLineLength := Length(l_CommandLine);
 //
 Result := TrySendMessage(UniqueClassName, RunDataInstallerMessage, PChar(l_CommandLine), l_CommandLineLength);
end;

class function TnsStartupSupport.TryRunDataUpdater: Boolean;
var
 l_CommandLine: string;
 l_CommandLineLength: Integer;
begin
 l_CommandLine := GetDataInstallerCommandLine;
 l_CommandLineLength := Length(l_CommandLine);
 //
 Result := TrySendMessage(UniqueClassName, RunDataUpdaterMessage, PChar(l_CommandLine), l_CommandLineLength);
end;

class function TnsStartupSupport.TryRunDownloader: Boolean;
var
 l_CommandLine: string;
 l_CommandLineLength: Integer;
begin
 l_CommandLine := GetDataInstallerCommandLine;
 l_CommandLineLength := Length(l_CommandLine);
 //
 Result := TrySendMessage(UniqueClassName, RunDownloaderMessage, PChar(l_CommandLine), l_CommandLineLength);
end;

class function TnsStartupSupport.TrySwitchToOtherRunningCopy: Boolean;
var
 l_Form: THandle;
 l_AppHandle: THandle;
begin
 Result := False;
 //
 while (IsEqualCopyRunning) do
 begin
  l_Form := FindWindow(PChar(UniqueClassName), nil);
  if (l_Form <> THandle(0)) then
  begin
   l_AppHandle := SendMessage(l_Form, GetAppHandleMessage, 0, 0);
   //
   if (l_AppHandle <> THandle(0)) then
    Result := SetForegroundWindow(l_AppHandle) and (SendMessage(l_Form, ShowActiveFormMessage, 0, 0) = LRESULT(ShowActiveFormMessage));
   //
   Break;
  end;
  //
  Sleep(250);
 end;
end;

class function TnsStartupSupport.CheckAndCreatePrimeRunningCopyMutex: Boolean;
begin
 InitMutex(g_PrimeRunningCopyMutexHandle, g_PrimeRunningCopyMutexHoldCount, GetPrimeRunningCopyMutexName, @Result);
end;

class procedure TnsStartupSupport.CreatePrimeRunningCopyMutex;
begin
 InitMutex(g_PrimeRunningCopyMutexHandle, g_PrimeRunningCopyMutexHoldCount, GetPrimeRunningCopyMutexName);
end;

class procedure TnsStartupSupport.ReleasePrimeRunningCopyMutex;
begin
 DoneMutex(g_PrimeRunningCopyMutexHandle, g_PrimeRunningCopyMutexHoldCount);
end;

class function TnsStartupSupport.CheckAndCreateShellRunningCopyMutex: Boolean;
begin
 InitMutex(g_ShellRunningCopyMutexHandle, g_ShellRunningCopyMutexHoldCount, GetShellRunningCopyMutexName, @Result);
end;

class procedure TnsStartupSupport.CreateShellRunningCopyMutex;
begin
 InitMutex(g_ShellRunningCopyMutexHandle, g_ShellRunningCopyMutexHoldCount, GetShellRunningCopyMutexName);
end;

class procedure TnsStartupSupport.ReleaseShellRunningCopyMutex;
begin
 DoneMutex(g_ShellRunningCopyMutexHandle, g_ShellRunningCopyMutexHoldCount);
end;

class function TnsStartupSupport.CheckAndCreateRunningCopyMutex: Boolean;
begin
{$IFDEF Monitorings}
 Result := CheckAndCreatePrimeRunningCopyMutex;
{$ELSEIF defined(Admin)}
 Result := CheckAndCreateAdminRunningCopyMutex;
{$ELSE  Monitorings}
 Result := CheckAndCreateShellRunningCopyMutex;
{$IFEND Monitorings}
end;

class procedure TnsStartupSupport.CreateRunningCopyMutex;
begin
 while (not CheckAndCreateRunningCopyMutex) do
  Sleep(0);
end;

class procedure TnsStartupSupport.ReleaseRunningCopyMutex;
begin
{$IFDEF Monitorings}
 ReleasePrimeRunningCopyMutex;
{$ELSEIF defined(Admin)}
 ReleaseAdminRunningCopyMutex;
{$ELSE  Monitorings}
 ReleaseShellRunningCopyMutex;
{$IFEND Monitorings}
end;

class procedure TnsStartupSupport.ShutdownPendingNotify;
begin
 InitEvent(g_ShutdownEvent, g_ShutdownEventOpenCount, GetShutdownEventName);
end;

class procedure TnsStartupSupport.ShutdownCompletedNotify;
begin
 ReleaseRunningCopyMutex;
 //
 DoneEvent(g_ShutdownEvent, g_ShutdownEventOpenCount);
end;

class procedure TnsStartupSupport.StartupPendingNotify;
begin
 WaitEvent(GetShutdownEventName, g_StartupMutex, g_StartupMutexHoldCount, GetStartupMutexName);
end;

class procedure TnsStartupSupport.StartupCompletedNotify;
begin
 DoneMutex(g_StartupMutex, g_StartupMutexHoldCount);
end;

class procedure TnsStartupSupport.WaitForDataInstallerExit;
begin
 WaitWhileMutexNotExist(GetDataInstallerMutexName);
end;

class procedure TnsStartupSupport.WaitForDataUpdaterExit;
begin
 WaitWhileMutexNotExist(GetDataUpdaterMutexName);
end;

class procedure TnsStartupSupport.WaitForDownloaderExit;
begin
 WaitWhileMutexNotExist(GetDownloaderMutexName);
end;

function TnsStartupSupport.CheckAndRunSupportProcessesIfNeed: Boolean;
type
 TIsProcessRunningFunc = function: Boolean of object;
 //
 procedure WaitWhileLoginIsLocked(const aIsProcessRunningFunc: TIsProcessRunningFunc);
 begin
  while IsLoginLocked do
   if aIsProcessRunningFunc then
   begin
    afw.ProcessMessages;
    Sleep(c_SleepTime);
   end
   else
    Abort;
 end;
 //
begin
 Result := False;
 //
 if IsRunDataInstallerParamExist then
 begin
  RunDataInstallerProcess(GetDataInstallerCommandLine);
  //
  StartupCompletedNotify;
  try
   LockLogin;
   WaitWhileLoginIsLocked(IsDataInstallerProcessRunning);
  finally
   StartupPendingNotify;
  end;
  //
  Result := IsDataInstallerProcessRunning;
 end
 else
  if IsRunDataUpdaterParamExist then
  begin
   RunDataUpdaterProcess(GetDataUpdaterCommandLine);
   //
   StartupCompletedNotify;
   try
    LockLogin;
    WaitWhileLoginIsLocked(IsDataUpdaterProcessRunning);
   finally
    StartupPendingNotify;
   end;
   //
   Result := IsDataUpdaterProcessRunning;
  end
  else
   if IsRunDownloaderParamExist then
   begin
    RunDownloaderProcess(GetDownloaderCommandLine);
    //
    StartupCompletedNotify;
    try
     LockLogin;
     WaitWhileLoginIsLocked(IsDownloaderProcessRunning);
    finally
     StartupPendingNotify;
    end;
    //
    Result := IsDownloaderProcessRunning;
   end;
end;

function nsIsOtherPrimeOrShellRunning(aTopForm: TCustomForm): Boolean;
begin
 Result := False;
 //
 if (aTopForm <> nil) then
 begin
  aTopForm.Hide;
  afw.ProcessMessages;
 end;
 //
 try
  with TnsStartupSupport do
  begin
{$IFDEF Monitorings}
   if (IsShellCopyRunning) then
   begin
    vcmSay(err_ShellIsRunning);
    Result := True;
   end;
   if (IsAdminCopyRunning) then
   begin
    vcmSay(err_AdminIsRunningForPrime);
    Result := True;
   end;
{$ELSEIF defined(Admin)}
   if (IsShellCopyRunning) then
   begin
    vcmSay(err_ShellIsRunningForAdmin);
    Result := True;
   end;
   if (IsPrimeCopyRunning) then
   begin
    vcmSay(err_PrimeIsRunningForAdmin);
    Result := True;
   end;
{$ELSE  Monitorings}
   if (IsPrimeCopyRunning) then
   begin
    vcmSay(err_PrimeIsRunning);
    Result := True;
   end;
   if (IsAdminCopyRunning) then
   begin
    vcmSay(err_AdminIsRunningForShell);
    Result := True;
   end;
{$IFEND Monitorings}
  end;
 finally
  if (aTopForm <> nil) then
  begin
   aTopForm.Show;
   afw.ProcessMessages;
  end;
 end;
end;

procedure nsCheckRequiredFonts(aTopForm: TCustomForm);
var
 l_ArialNotExist: Boolean;
 l_CourierNewNotExist: Boolean;
 //
 function Iterator(aFont: PObject; aIndex: Long): Boolean;
 begin
  Result := True;
  //
  with Tl3LogFont(aFont^).LogFont.elfLogFont do
   if (StrIComp(@lfFaceName, PChar('Arial')) = 0) then
    l_ArialNotExist := False
   else
    if (StrIComp(@lfFaceName, PChar('Courier New')) = 0) then
     l_CourierNewNotExist := False;
 end;
 //
begin
 l_ArialNotExist := True;
 l_CourierNewNotExist := True;
 //
 with Fonts do
  IterateAllF(l3L2IA(@Iterator));
 //
 if (l_ArialNotExist or l_CourierNewNotExist) then
 begin
  if (aTopForm <> nil) then
  begin
   aTopForm.Hide;
   afw.ProcessMessages;
  end;
  try
   vcmSay(war_RequiredFontsNotExist);
  finally
   if (aTopForm <> nil) then
   begin
    aTopForm.Show;
    afw.ProcessMessages;
   end;
  end;
 end;
end;

class function TnsStartupSupport.GetAppHandleMessage: Longword;
begin
 Result := g_GetAppHandleMessage;
end;

procedure ExitProc;
begin
 FreeAndNil(g_CriticalSection);
end;

class function TnsStartupSupport.IsAdminCopyRunning: Boolean;
begin
 Result := IsCopyRunning(g_AdminRunningCopyMutexHandle, g_AdminRunningCopyMutexHoldCount, GetAdminRunningCopyMutexName);
end;

class function TnsStartupSupport.CheckAndCreateAdminRunningCopyMutex: Boolean;
begin
 InitMutex(g_AdminRunningCopyMutexHandle, g_AdminRunningCopyMutexHoldCount, GetAdminRunningCopyMutexName, @Result);
end;

class procedure TnsStartupSupport.CreateAdminRunningCopyMutex;
begin
 InitMutex(g_AdminRunningCopyMutexHandle, g_AdminRunningCopyMutexHoldCount, GetAdminRunningCopyMutexName);
end;

class procedure TnsStartupSupport.ReleaseAdminRunningCopyMutex;
begin
 DoneMutex(g_AdminRunningCopyMutexHandle, g_AdminRunningCopyMutexHoldCount);
end;

class function TnsStartupSupport.GetAdminRunningCopyMutexName: string;
begin
 Result := '{5040A698-A262-4AF0-BB46-9DD7AC93A559}';
end;

initialization
 g_ShowActiveFormMessage := RegisterWindowMessage(c_ShowActiveFormMessageName);
 g_UnlockLoginMessage := RegisterWindowMessage(c_UnlockLoginMessageName);
 g_OpenByNumberMessage := RegisterWindowMessage(c_OpenByNumberMessageName);
 g_RunDataInstallerMessage := RegisterWindowMessage(c_RunDataInstallerMessageName);
 g_RunDataUpdaterMessage := RegisterWindowMessage(c_RunDataUpdaterMessageName);
 g_RunDownloaderMessage := RegisterWindowMessage(c_RunDownloaderMessageName);
 g_GetAppHandleMessage := RegisterWindowMessage(c_GetAppHandleMessageName);
 //
 g_CriticalSection := TCriticalSection.Create;
 l3System.AddExitProc(ExitProc);
end.
