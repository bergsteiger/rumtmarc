unit l3ExceptionsLog;

(*
//
// module:  l3ExceptionsLog
// author:  Mickael P. Golovin
//
// Copyright (c) 1997-2000 by Archivarius Team, free for non commercial use.
//
// $Id: l3ExceptionsLog.pas,v 1.25 2013/04/19 13:08:17 lulin Exp $
//
*)

// $Log: l3ExceptionsLog.pas,v $
// Revision 1.25  2013/04/19 13:08:17  lulin
// - портируем.
//
// Revision 1.24  2013/04/16 10:16:46  lulin
// - портируем.
//
// Revision 1.23  2013/04/05 16:45:00  lulin
// - портируем.
//
// Revision 1.22  2013/04/03 15:03:20  lulin
// - портируем.
//
// Revision 1.21  2013/03/28 14:03:17  lulin
// - портируем.
//
// Revision 1.20  2012/11/01 09:42:57  lulin
// - забыл точку с запятой.
//
// Revision 1.19  2012/11/01 07:45:08  lulin
// - делаем возможность логирования процесса загрузки модулей.
//
// Revision 1.18  2011/05/06 15:49:38  lulin
// - делаем "предложения".
//
// Revision 1.17  2011/05/06 14:28:16  lulin
// - правим IfDef'ы.
//
// Revision 1.16  2011/01/31 13:06:22  lulin
// {RequestLink:252513593}.
//
// Revision 1.15  2010/11/16 06:56:01  voba
// - не компилировалось
//
// Revision 1.14  2010/05/26 14:32:07  lulin
// {RequestLink:216072357}.
// - теперь падение при отрисовке неправильного документа считается положительным результатом теста.
//
// Revision 1.13  2010/05/13 14:26:02  lulin
// {RequestLink:210438932}.
// - сделано построчное сроллирование.
// - уменьшен размер тестового файла.
//
// Revision 1.12  2010/01/26 15:33:42  lulin
// - пытаемся писать максимум ошибок в лог.
//
// Revision 1.11  2010/01/20 12:58:51  lulin
// - пишем не пустую строку, а имя класса исключения.
//
// Revision 1.10  2010/01/18 11:40:19  lulin
// - новый JEDI.
//
// Revision 1.9  2006/08/29 11:46:18  lulin
// - bug fix: лог не разделял файл между процессами.
//
// Revision 1.8  2005/08/11 11:02:10  migel
// - change: убрали хинт компилятора о неиспользуемых переменных.
//
// Revision 1.7  2005/07/08 12:31:29  mmorozov
// change: миллисекунды выводим в трех знаках;
//
// Revision 1.6  2005/07/06 10:46:34  lulin
// - new behavior: ловим исключение и выводим сообщение об ошибке.
//
// Revision 1.5  2005/07/06 10:32:00  lulin
// - new behavior: не висим если не можем открыть файл лога, а кидаем исключение.
//
// Revision 1.4  2005/07/06 09:35:22  lulin
// - new behavior: выводим в лог время в миллисекундах.
//
// Revision 1.3  2005/06/30 11:02:47  lulin
// - bug fix: не собирался конвертер everest2everest.
//
// Revision 1.2  2005/05/26 10:45:05  lulin
// - bug fix: в лог не писалось время.
//
// Revision 1.1  2005/05/24 11:07:37  lulin
// - cleanup.
//
// Revision 1.41  2005/05/24 10:03:02  lulin
// - cleanup.
//
// Revision 1.40  2005/04/18 13:36:23  voba
// -bug fix: неправильно обрабатывался El3NoLoggedException
// -refactoring
//
// Revision 1.39  2005/04/16 12:15:22  lulin
// - отключаем трассировку стека для релизной сборки.
//
// Revision 1.38  2004/10/07 09:21:23  lulin
// - new directive: l3TraceMemAllocStat.
//
// Revision 1.37  2004/09/16 09:25:19  lulin
// - bug fix: наследники от evCtrl убивались в DesignTime произвольным образом.
//
// Revision 1.36  2004/08/23 09:03:23  voba
// - add El3NoLoggedException  - предок ошибок, которые в лог не попадают
//
// Revision 1.35  2004/06/04 15:25:18  voba
// - formating
//
// Revision 1.34  2004/04/09 08:28:17  law
// - bug fix: не писалиьсь Exception'ы в лог.
//
// Revision 1.33  2004/04/08 07:52:57  voba
// no message
//
// Revision 1.32  2004/04/07 10:43:19  law
// - вставлены директивы CVS.
//

{$Include l3Define.inc}

{$IfNDef l3ConsoleApp}
 {$IfNDef notDebugStackTrace}
  {$Define _m0USEFORMS1}
 {$EndIf  notDebugStackTrace}
{$EndIf  l3ConsoleApp}

{$IfOpt D+}
 {$Define _m0LOGSAV1}
{$EndIf D+}

{$Define _m0LANGUAGE_RUS}

interface

uses
  Windows,
  Messages,
  SysUtils,
  Consts,
  Classes,
  {$IFDEF _m0USEFORMS1}
  Forms,
  {$ENDIF}
  IniFiles

  {$IfDef DebugStackTrace}
  ,
  jclDebug,
  jclHookExcept
  {$EndIf}
  ;

type
 Tm0EXCLibMessageStyle = (Cm0EXCLibINF, Cm0EXCLibWRG, Cm0EXCLibERR);

 Tm0ExceptionServer = class(TObject)
 private
  f_UseJCL : Boolean;
  f_Disable : Integer;
{$IFDEF _m0USEFORMS1}
  FExceptionEvent: TExceptionEvent;
{$ENDIF}
{$IFDEF _m0LOGSAV1}
  FCompHandle: AnsiString;
  FFileHandle: {$IfDef XE}THandle{$Else XE}Integer{$EndIf};
  FNameHandle: AnsiString;
{$ENDIF}

{$IFDEF _m0USEFORMS1}
  procedure SetOnException;
{$ENDIF}

{$IFDEF _m0USEFORMS1}
  procedure ResOnException;
{$ENDIF}

{$IFDEF _m0USEFORMS1}
  procedure ExceptionHandler(ASender: TObject; AException: Exception);
  {- привешивается в application}
  procedure HandleException(aException: Exception);
  {- собственно обработчик}
{$ENDIF}

{$IfDef DebugStackTrace}
 procedure SaveStack(AStackList: TJclStackInfoList);
{$EndIf}

 protected

{$IFDEF _m0LOGSAV1}
 procedure SetNameHandle(Value: AnsiString);
 procedure CloseLogFile;
{$ENDIF}

 public
  constructor Create(const ALogFileName : AnsiString = '';
                     aUseJCL            : Boolean = true);

  destructor Destroy;
   override;

  procedure SaveString(const AString: AnsiString);

  procedure ShowMessage(AMessageStyle: Tm0EXCLibMessageStyle;
                        const AMessage: AnsiString);

  procedure SaveMessage(AMessageStyle: Tm0EXCLibMessageStyle;
                        AMessage: AnsiString
                       {$IfDef DebugStackTrace};
                        AWithStack: Boolean = False; AStackRaw: Boolean = False
                       {$EndIf});

  procedure ShowSaveMessage(AMessageStyle: Tm0EXCLibMessageStyle;
   const AMessage: AnsiString); overload;

  procedure ShowSaveMessage(AMessageStyle: Tm0EXCLibMessageStyle;
   const AException: Exception); overload;
  procedure SaveException(AException: Exception);
  {-}
 procedure DisableExceptionToLog;
 procedure EnableExceptionToLog;

 {$IFDEF _m0LOGSAV1}
  property LogFileName: AnsiString read FNameHandle write SetNameHandle;
 {$ENDIF}
 end;


procedure m0EXCHandleException;
function m0EXCUnknownError(AHandle: Word): AnsiString;

{$IfNDef DesignTimeLibrary}
var
  Gm0EXCLibDefSrv: Tm0ExceptionServer = nil;
{$EndIf DesignTimeLibrary}

procedure OpenLog;

implementation

uses
  l3Chars,
  l3Except,
  l3Base,
  l3DateSt
  ;

{ -- unit.private -- }

resourcestring
{$IFDEF _m0LANGUAGE_ENG}
 SIInfo = 'INFORMATION';
 SIWarning = 'WARNING';
 SIError = 'ERROR';
 SIUnknownError = 'Unknown error: %.5d(0x%.4x)';
{$ENDIF}

{$IFDEF _m0LANGUAGE_RUS}
 SIInfo = 'ИНФОРМАЦИЯ';
 SIWarning = 'ВНИМАНИЕ';
 SIError = 'ОШИБКА';
 SIUnknownError = 'Неизвестная ошибка: %.5d(0x%.4x)';
{$ENDIF}

const
 CLogFileExt: AnsiString = '.log';

procedure OpenLog;
begin
 {$If Declared(Gm0EXCLibDefSrv)}
 with TIniFile.Create(ChangeFileExt(ParamStr(0), '.ini')) do
  try
   Gm0EXCLibDefSrv := Tm0ExceptionServer.Create(
    ReadString('EXE', 'LOGFILE', ChangeFileExt(ParamStr(0), '.log')));
  finally
   Free;
  end;
 {$IfEnd}
end;

procedure _Finalization;
begin
 {$If Declared(Gm0EXCLibDefSrv)}
 FreeAndNil(Gm0EXCLibDefSrv);
 {$IfEnd}
end;

{ -- unit.public -- }

procedure m0EXCHandleException;
{$If Declared(Gm0EXCLibDefSrv)}
var
 LExceptObject : TObject;

procedure _ShowExceptProc(AObject: TObject; AAddress: Pointer);
var
 LMessage : String;
begin
 if AObject is Exception then
  Gm0EXCLibDefSrv.ShowSaveMessage(Cm0EXCLibERR, Exception(AObject))
 else
 begin
  SetLength(LMessage, 1024);
  ExceptionErrorMessage(AObject, AAddress, PChar(LMessage), Length(LMessage));
  Gm0EXCLibDefSrv.ShowSaveMessage(Cm0EXCLibERR, LMessage);
 end;
end;
{$IfEnd}

begin
 {$If Declared(Gm0EXCLibDefSrv)}
 LExceptObject := ExceptObject;
 {$IFDEF _m0USEFORMS1}
 if (LExceptObject is Exception) then
  Gm0EXCLibDefSrv.HandleException(Exception(LExceptObject))
 else
 {$EndIF _m0USEFORMS1}
  _ShowExceptProc(LExceptObject, ExceptAddr);
 {$IfEnd}
end;

function m0EXCUnknownError(AHandle: Word): AnsiString;
begin
 Result := Format(SIUnknownError, [AHandle, AHandle]);
end;

{ -- Tm0ExceptionServer.private -- }

{$IFDEF _m0USEFORMS1}
procedure Tm0ExceptionServer.SetOnException;
begin
 FExceptionEvent := Application.OnException;
 Application.OnException := ExceptionHandler;
end;
{$ENDIF}

{$IFDEF _m0USEFORMS1}
procedure Tm0ExceptionServer.ResOnException;
begin
 if (Application <> nil) then
  Application.OnException := FExceptionEvent;
 FExceptionEvent := nil;
end;
{$ENDIF}

{$IFDEF _m0USEFORMS1}
procedure Tm0ExceptionServer.ExceptionHandler(ASender: TObject; AException: Exception);
begin
 ResOnException;
 try
  HandleException(aException);
 finally
  SetOnException;
 end;//try..finally
end;

procedure Tm0ExceptionServer.HandleException(aException: Exception);
{$If Defined(nsTest) AND not Defined(InsiderTest)}
type
 RException = class of Exception;
{$IfEnd}
begin
 if not (aException is EAbort) then
 begin
  if (aException is EReadError) then
  begin
   if (f_Disable <= 0) then
    SaveMessage(Cm0EXCLibERR, aException.Message)
  end//aException is EReadError
  else
  if (aException is El3NoLoggedException) then
   ShowMessage(Cm0EXCLibERR, aException.Message)
  else
   ShowSaveMessage(Cm0EXCLibERR, aException);
  {$If Defined(nsTest) AND not Defined(InsiderTest)}
  raise RException(aException.ClassType).Create(aException.Message);
  {$IfEnd}
 end;
end;

{$ENDIF}

procedure Tm0ExceptionServer.DisableExceptionToLog;
begin
 Inc(f_Disable);
end;

procedure Tm0ExceptionServer.EnableExceptionToLog;
begin
 Dec(f_Disable);
end;

{$IFDEF _m0LOGSAV1}

const
 cInvalidHandle =
{$IfDef XE}
 INVALID_HANDLE_VALUE
{$Else  XE}
 -1
{$EndIf XE};

procedure Tm0ExceptionServer.SetNameHandle(Value: AnsiString);
var
 l_Error : Cardinal;
begin
 CloseLogFile;
 if f_UseJCL then
 begin
  if (Value = '') then
   FNameHandle := ChangeFileExt(ParamStr(0), CLogFileExt)
  else
   FNameHandle := ChangeFileExt(Value, CLogFileExt);
 end//f_UseJCL
 else
  FNameHandle := Value;
 try
  repeat
   FFileHandle := FileOpen(FNameHandle, fmOpenReadWrite + fmShareDenyNone);
   if (FFileHandle = cInvalidHandle) then
   begin
    l_Error := GetLastError;
    if (l_Error <> ERROR_SHARING_VIOLATION) AND
       (l_Error <> ERROR_FILE_NOT_FOUND) then
     l3RaiseOSError(l_Error, ^M + FNameHandle);
    FFileHandle := FileCreate(FNameHandle);
    if (FFileHandle <> cInvalidHandle) then
    begin
     FileClose(FFileHandle);
     FFileHandle := cInvalidHandle;
    end//FFileHandle >= 0
    else
    begin
     l_Error := GetLastError;
     if (l_Error <> ERROR_SHARING_VIOLATION) then
      l3RaiseOSError(l_Error, ^M + FNameHandle);
    end;//FFileHandle <> cInvalidHandle
   end;//FFileHandle < 0
  until (FFileHandle <> 0) AND (FFileHandle <> cInvalidHandle);
 except
  on E : Exception do
   {$IFDEF _m0USEFORMS1}
   MessageBox(0, PChar(E.Message), nil, MB_OK or MB_ICONEXCLAMATION);
   {$Else  _m0USEFORMS1}
   WriteLn(E.Message);
   {$EndIF _m0USEFORMS1}
 end;//try..except 
end;

procedure Tm0ExceptionServer.CloseLogFile;
begin
 if (FFileHandle = 0) OR (FFileHandle = cInvalidHandle) then
  Exit;
 if (FileSeek(FFileHandle, 0, soFromEnd) = 0) then
 begin
  FileClose(FFileHandle);
  DeleteFile(FNameHandle);
 end
 else
  FileClose(FFileHandle);
end;
{$ENDIF}

{ -- Tm0ExceptionServer.public -- }

constructor Tm0ExceptionServer.Create(const ALogFileName : AnsiString ='';
                                      aUseJCL            : Boolean = true);
{$IFDEF _m0LOGSAV1}
var
 LCompSize : LongInt;
{$ENDIF}
begin
 inherited Create;
 f_UseJCL := aUseJCL;
{$IFDEF _m0LOGSAV1}
 LCompSize := MAX_COMPUTERNAME_LENGTH + 1;
 SetLength(FCompHandle, LCompSize);

 Win32Check(GetComputerNameA(PAnsiChar(FCompHandle), LongWord(LCompSize)));
 SetLength(FCompHandle, LCompSize);

 LogFileName := ALogFileName;
{$ENDIF}

{$IFDEF _m0USEFORMS1}
 SetOnException;
{$ENDIF}

{$IfDef DebugStackTrace}
 if f_UseJCL then
  JclStartExceptionTracking;
{$EndIf}
end;

destructor Tm0ExceptionServer.Destroy;
begin
{$IfDef DebugStackTrace}
 if f_UseJCL then
  JclStopExceptionTracking;
{$EndIf}
{$IFDEF _m0USEFORMS1}
 ResOnException;
{$ENDIF}
{$IFDEF _m0LOGSAV1}
 CloseLogFile;
{$ENDIF}
 inherited;
end;

procedure Tm0ExceptionServer.SaveString(const AString: AnsiString);
begin
{$IFDEF _m0LOGSAV1}
 if (AString <> '') then
 begin
{$IFDEF l3SharedLog}
  repeat
  until LockFile(FFileHandle, 0, 0, 1, 0);
  try
{$ENDIF l3SharedLog}
   FileSeek(FFileHandle, 0, soFromEnd);
   FileWrite(FFileHandle, Pointer(AString)^, Length(AString));
{$IFDEF l3SharedLog}
  finally
   Win32Check(UnlockFile(FFileHandle, 0, 0, 1, 0));
  end;
{$ENDIF l3SharedLog}
 end;
{$ENDIF}
end;

procedure Tm0ExceptionServer.ShowMessage(AMessageStyle: Tm0EXCLibMessageStyle;
 const AMessage: AnsiString);
{$IFDEF _m0MSGBOX1}
{$IFNDEF NotShowException}
type
 TMessageBoxCaption = packed array [Tm0EXCLibMessageStyle] of AnsiString;
 TMessageBoxStyle = packed array [Tm0EXCLibMessageStyle] of Integer;
const
 CMessageBoxCaption: TMessageBoxCaption = (SIInfo, SIWarning, SIError);
 CMessageBoxStyle: TMessageBoxStyle = (MB_ICONINFORMATION, MB_ICONEXCLAMATION, MB_ICONSTOP);
var
 LMessage : AnsiString;
 LMessageLength : Integer;
 LOEMMessage : AnsiString;
{$ENDIF}
{$ENDIF}
begin
{$IFDEF _m0MSGBOX1}
{$IFNDEF NotShowException}
 if (AMessage <> '') and ((AMessage[Length(AMessage)] <> '.')) then
  LMessage := AMessage + '.'
 else
  LMessage := AMessage;

 if IsConsole then
 begin
  LMessageLength := Length(LMessage);
  SetLength(LOEMMessage, LMessageLength);
  CharToOemBuffA(PAnsiChar(LMessage), PAnsiChar(LOEMMessage), LMessageLength);
  WriteLN;
  WriteLN(LOEMMessage);
 end
 else
 begin
  MessageBoxA(0, PAnsiChar(LMessage), PAnsiChar(CMessageBoxCaption[AMessageStyle]), (MB_OK or CMessageBoxStyle[AMessageStyle]));
 end;
{$ENDIF}
{$ENDIF}
end;

procedure Tm0ExceptionServer.SaveMessage(AMessageStyle: Tm0EXCLibMessageStyle;
                                         AMessage: AnsiString
                                        {$IfDef DebugStackTrace};
                                         AWithStack: Boolean = False; AStackRaw: Boolean = False
                                        {$EndIf});
{$IFDEF _m0LOGSAV1}
type
 TSaveStringStyle = packed array [Tm0EXCLibMessageStyle] of Char;
const
 CSaveStringStyle: TSaveStringStyle = ('i', 'w', 'e');
var
 LIndex : LongInt;
{$IfDef DebugStackTrace}
 LStackList : TJclStackInfoList;
{$EndIf}
{$ENDIF}
begin
{$IFDEF _m0LOGSAV1}
 if (AMessage <> '') then
 begin
  for LIndex := 1 to Length(AMessage) do
   if (AMessage[LIndex] in [''^J'', ''^M'']) then
    AMessage[LIndex] := ' ';
  //{$If Defined(nsTest) AND not Defined(InsiderTest)}
  {$If Defined(nsTest)}
  // - чтобы дату/время в логи не писать, чтобы К не расстраивался
  SaveString(Format('%1s.%-15s %s%s', [CSaveStringStyle[AMessageStyle], FCompHandle, AMessage, cc_EOL]));
  {$Else}
  SaveString(Format('%1s.%-15s %-19s %s%s', [CSaveStringStyle[AMessageStyle], FCompHandle, l3DateTimeToStr(Now(), 'dd/mm/yyyy hh:nn:ss:zzz'), AMessage, cc_EOL]));
  {$IfEnd}
 end
 else
  SaveString(cc_EOL);

{$IfDef DebugStackTrace}
 if AWithStack then
 begin
  LStackList := JclCreateStackList(AStackRaw, 2 + 4 * Ord(AStackRaw), nil);
  try
   SaveStack(LStackList);
  finally
   LStackList.Free;
  end;
 end;
{$EndIf}
{$ENDIF}
end;

procedure Tm0ExceptionServer.ShowSaveMessage(AMessageStyle: Tm0EXCLibMessageStyle; const AMessage: AnsiString);
begin
 ShowMessage(AMessageStyle, AMessage);
 SaveMessage(AMessageStyle, AMessage);
end;

procedure Tm0ExceptionServer.SaveException(AException: Exception);
{-}
begin
 if (AException.Message = '') then
  SaveMessage(Cm0EXCLibERR, AException.ClassName)
 else
  SaveMessage(Cm0EXCLibERR, AException.Message);
{$IfDef DebugStackTrace}
{$IfDef StackInExeption}
 SaveStack(JclLastExceptStackList(AException));
{$Else StackInExeption}
 SaveStack(JclLastExceptStackList);
{$EndIf StackInExeption}
{$EndIf}
end;

procedure Tm0ExceptionServer.ShowSaveMessage(AMessageStyle: Tm0EXCLibMessageStyle; const AException: Exception);
begin
 ShowMessage(AMessageStyle, AException.Message);
 if (f_Disable <= 0) then
  SaveMessage(AMessageStyle, AException.Message);
{$IfDef DebugStackTrace}
{$IfDef StackInExeption}
 SaveStack(JclLastExceptStackList(AException));
{$Else StackInExeption}
 SaveStack(JclLastExceptStackList);
{$EndIf StackInExeption}
{$EndIf}
end;

{$IfDef DebugStackTrace}
procedure Tm0ExceptionServer.SaveStack(AStackList: TJclStackInfoList);
var
 I : Integer;
begin
 if (f_Disable <= 0) then
  try
   if (AStackList = nil) or (AStackList.Count <= 0) then
    SaveMessage(Cm0EXCLibINF, '  [Stack is absent]')
   else
    with AStackList do
     for I := 0 to Count - 1 do
      SaveMessage(Cm0EXCLibINF, Format('  [Stack #%3d] %s',
       [I, GetLocationInfoStr(Pointer(Items[I].StackInfo.CallerAddr))]));
  except
  end;//try..except
end;
{$EndIf}

initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\L3\l3ExceptionsLog.pas initialization enter'); {$EndIf}
 OpenLog;

{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\L3\l3ExceptionsLog.pas initialization leave'); {$EndIf}
finalization
 _Finalization;

end.

