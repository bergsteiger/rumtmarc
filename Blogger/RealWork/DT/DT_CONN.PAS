Unit Dt_Conn;

{ $Id: DT_CONN.PAS,v 1.55 2010/09/28 13:06:08 fireton Exp $ }

// $Log: DT_CONN.PAS,v $
// Revision 1.55  2010/09/28 13:06:08  fireton
// - –аспредел€ем пам€ть дл€ PChar своими средствами
//
// Revision 1.54  2006/10/04 08:28:20  voba
// - bug fix procedure TServerSender.SendNetMessage
//
// Revision 1.53  2006/03/16 15:50:19  narry
// - еще один шажок в сторону клиент-сервера
//
// Revision 1.52  2006/03/09 12:15:11  narry
// - изменение: нова€ технологи€ передачи заданий
//
// Revision 1.51  2005/12/23 10:39:45  step
// переделки под CS
//
// Revision 1.50  2005/09/21 08:05:05  step
// сли€ние с веткой B_UPDATE_INDY_TO_10_1_1
//
// Revision 1.49.4.1  2005/08/15 15:43:58  step
// подгонка под новую библиотеку Indy
//
// Revision 1.49  2005/06/23 11:44:07  step
// новый адрес широковещательной рассылки: c_AllStations
//
// Revision 1.48  2005/06/23 08:35:54  step
// переименование SendMessage --> SendNetMessage (во избежание путаницы)
//
// Revision 1.47  2005/06/22 17:47:53  step
// замена метода Broadcast_ на глобальную процедуру ForAllStations
//
// Revision 1.46  2005/06/22 15:23:44  step
// вставлена проверка адреса (д.б. не пустым)
//
// Revision 1.45  2005/06/16 12:29:26  step
// сли€ние с веткой b_use_net_comm
//
// Revision 1.44.6.4  2005/06/08 10:27:21  step
// подправлена TServerSender.Broadcast
//
// Revision 1.44.6.3  2005/06/07 16:41:40  step
// new: TServerSender.Broadcast
//
// Revision 1.44.6.2  2005/06/06 16:11:50  step
// ”чтено переименование некоторых констант, методов.
//
// Revision 1.44.6.1  2005/06/03 13:25:56  step
// добавлены два потомка от TdtSendServer (использующие dt_NetComm)
//
// Revision 1.44  2005/05/11 15:05:50  step
// добавлено новое сообщение msServerStarted
//
// Revision 1.43  2005/03/14 11:08:33  narry
// - update: экспорт аннотаций
//
// Revision 1.42  2005/03/11 16:40:01  narry
// - update: поддержка "большой красной кнопки" (экспорт специальных аннотаций)
//
// Revision 1.41  2004/09/21 12:04:19  lulin
// - Release заменил на Cleanup.
//
// Revision 1.40  2004/08/23 12:08:01  step
// сн€т временный комментарий
//
// Revision 1.39  2004/08/23 12:04:18  step
// временно закомментирован кусок кода с возможной ошибкой
//
// Revision 1.38  2004/08/19 12:13:20  step
// в TClientReceiveServer.ReciveOwnMessage изменена обработка сообщени€ об удаленных документах
//
// Revision 1.37  2004/08/03 08:52:49  step
// замена dt_def.pas на DtDefine.inc
//
// Revision 1.36  2003/11/19 17:04:48  narry
// - change: перенос константы сообщени€ в другой модуль
//
// Revision 1.35  2003/11/19 16:54:26  narry
// - add: команда принудительного выхода из "јрхивариуса"
//
// Revision 1.34  2003/07/16 16:00:14  voba
// - new: добавление TClientReceiveServer обработки пользовательского сообщени€ (дл€ наблюдени€ за состо€нием очереди заданий)
//
// Revision 1.33  2003/01/17 14:13:09  demon
// - new behavior: изменен принцип нотификации об изменении словарей.
// “еперь все централизовано и сообщение получает только DictServer, а все кому нужна дополнительна€
// нотификаци€ должны зарегистрироватьс€ на нем.
//
// Revision 1.32  2002/07/10 08:27:05  narry
// - new behavior: организаци€ диалога с пользователем
//
// Revision 1.31  2002/07/03 07:32:55  demon
// - add new message
//
// Revision 1.30  2002/06/13 07:05:27  law
// - new behavior: используем WaitMessage вместо Suspend.
//
// Revision 1.29  2002/05/27 12:05:51  law
// - cleanup.
//
// Revision 1.28  2002/05/27 11:54:29  law
// - new behavior: пытаетмс€ избавитьс€ от использовани€ TWinControl.
//
// Revision 1.27  2002/05/23 15:37:59  law
// - new proc: dtListen.
//
// Revision 1.26  2002/05/23 14:58:32  law
// - rename class: TCommonReceiveServer -> TdtCommonReceiveServer.
//
// Revision 1.25  2002/05/23 14:52:45  law
// - new const: WM_GoReceive.
//
// Revision 1.24  2002/05/23 14:45:11  law
// - new unit: DT_AsyncReceive.
//
// Revision 1.23  2002/05/22 11:11:43  law
// - new behavior: пытаемс€ посылать сообщени€ из другой нити.
//
// Revision 1.22  2001/11/30 11:58:02  demon
// - bug fix: in TServiceReceiveServer.ReciveOwnMessage when msChngDt vessage recieve
//
// Revision 1.21  2001/10/04 07:39:52  demon
// - new behavior: changed export mechanizm throu server
//
// Revision 1.20  2001/03/01 15:31:12  demon
// - some fix
//
// Revision 1.19  2001/03/01 15:14:09  demon
// - using new version of WSocket and others...
//
// Revision 1.17  2001/03/01 11:44:46  demon
// - add feature of getting User Active list through Server
//
// Revision 1.16  2001/01/12 15:16:13  demon
// - fixed bug with unsuccessful sending message
//
// Revision 1.15  2001/01/04 11:43:51  demon
// - fixed - text message in MessageBox now called from Application
//
// Revision 1.14  2000/12/15 15:36:15  law
// - вставлены директивы Log.
//

{$I DtDefine.inc}

Interface

uses
  Windows,
  Messages,

  Classes,

  l3Base,

  Dt_Types, Dt_NetComm
  ;

const
 ReciveBufLen = 32000;
 CurrentPort = '32001';
 msPrefLength = 2;

 WM_GoReceive = wm_User + 1;
 WM_GoClose   = wm_User + 2;
 WM_Wake      = wm_User + 3;

 (************* Messages ***************)

 msText         : Array [1..2] of Char = #1#0;
 msClsTbl       : Array [1..3] of Char = #1#1#0;
 msOpnTbl       : Array [1..3] of Char = #1#2#0;
 msChngDt       : Array [1..2] of Char = #1#3;
 msChkMl        : Array [1..2] of Char = #1#4;
 msUsLgIn       : Array [1..2] of Char = #1#5;
 msUsLgOff      : Array [1..2] of Char = #1#6;
 msDelDoc       : Array [1..2] of Char = #1#7;
 msAutoImport   : Array [1..2] of Char = #1#8;
 msAutoExport   : Array [1..2] of Char = #1#9;
 msExportDone   : Array [1..2] of Char = #1#10;
 msBroadcast    : Array [1..2] of Char = #1#11;
 msServerTime   : Array [1..2] of Char = #1#12;
 msActiveUsers  : Array [1..2] of Char = #1#13;
 msUserRequest  : Array [1..2] of Char = #1#14;
 msAutoLogoff   : Array [1..2] of Char = #1#15;
 msAutoAnno     : Array [1..2] of Char = #1#16;
 msServerStarted: Array [1..2] of Char = #1#17;

Type
  TdtCommonReceiveServer = Class(Tl3Base)
    private
    // internal fields
      f_Handle : hWnd;
    protected
    // internal methods
      procedure WMGoReceive(var Message: TMessage);
        message WM_GoReceive;
        {-}
      procedure WndProc(var Message: TMessage);
        {-}
      procedure Cleanup;
        override;
        {-}
    public
    // public methods
     constructor Create(anOwner : TObject = nil);
       override;
       {-}
     function  ReciveOwnMessage(aMessage : PChar) : Boolean;
       virtual;
       {-}
    public
    // public properties
      property Handle: hWnd
        read f_Handle;
        {-}
  end;//TdtCommonReceiveServer

 TCommonArchiReceiveServer = Class(TdtCommonReceiveServer)
  protected
   fOnCloseTbls : TPromProc;
   fOnOpenTbls  : TPromProc;
  public
   Function  ReciveOwnMessage(aMessage : PChar) : Boolean; override;

   Property  OnCloseTbls : TPromProc write fOnCloseTbls;
   Property  OnOpenTbls : TPromProc write fOnOpenTbls;
 end;

 TClientReceiveServer = Class(TCommonArchiReceiveServer)
  public
   Function  ReciveOwnMessage(aMessage : PChar) : Boolean; override;
 end;

 TServiceReceiveServer = Class(TCommonArchiReceiveServer)
  public
   Function  ReciveOwnMessage(aMessage : PChar) : Boolean; override;
 end;

 TdtSendServer = Class(Tl3Base)
   public
   // publiс methods
    procedure SendNetMessage(const aRecipient: string;
                             aMessage: PByte;
                             aMessLen: Integer); virtual; abstract;
 end;//TdtSendServer

 TClientSender = Class(TdtSendServer)
 private
  f_DbClient: TDbClient;
 public
  constructor Create(aDbClient: TDbClient); reintroduce;
  procedure SendNetMessage(const aRecipient: string;
                           aMessage: PByte;
                           aMessLen: Integer); override;
 end;

 TServerSender = Class(TdtSendServer)
 private
  f_DbServer: TDbServer;
 public
  constructor Create(aDbServer: TDbServer); reintroduce;
  procedure SendNetMessage(const aRecipient: string;
                           aMessage:  PByte;
                           aMessLen: Integer); override;
  procedure Broadcast(aMessage: PByte;
                      aMessLen: Integer;
                      aExcludeHost: PHostId = nil);
 end;

Const
 SendServer : TdtSendServer = Nil;
 ReceiveServer : TdtCommonReceiveServer = Nil;

implementation

uses
  SysUtils,
  Forms,

  l3String,
  Dt_Serv,
  Dt_Dict,
  Dt_Mail,
  Dt_User,
  Dt_ServerService,

  Dt_NetCommSup,

  vConst;

(*********************** TdtCommonReceiveServer *****************************)

Constructor TdtCommonReceiveServer.Create(anOwner : TObject = nil);
Begin
 inherited;
 f_Handle := AllocateHWnd(WndProc);
 //dtListen(Self);
end;

procedure TdtCommonReceiveServer.Cleanup;
Begin
 DeallocateHWnd(f_Handle);
 f_Handle := 0;
 inherited;
end;

Procedure TdtCommonReceiveServer.WMGoReceive(var Message: TMessage);
Var
 CurData : PChar;
Begin
 CurData:=PChar(Message.LParam);
 Try
  ReciveOwnMessage(CurData);
 finally
  l3StrDispose(CurData);
 end;
end;

procedure TdtCommonReceiveServer.WndProc(var Message: TMessage);
  {-}
begin
 Dispatch(Message);
end;

Function TdtCommonReceiveServer.ReciveOwnMessage(aMessage : PChar) : Boolean;
Begin
 Result:=False;
 If StrLComp(aMessage,@msText,msPrefLength)=0 then
  begin
   Application.MessageBox(aMessage+msPrefLength,'—ообщение',MB_ICONINFORMATION);
   Result:=True;
  end;
end;

(*********************** TCommonArchiReceiveServer *****************************)

Function TCommonArchiReceiveServer.ReciveOwnMessage(aMessage : PChar) : Boolean;
Begin
 Result:=Inherited ReciveOwnMessage(aMessage);
 If Not Result then
  If StrLComp(aMessage,@msClsTbl,msPrefLength)=0 then
   Begin
    If Assigned(fOnCloseTbls) then
     fOnCloseTbls;
    GlobalHtServer.CloseAllTbls(1);
    Result:=True;
   end
  else
   If StrLComp(aMessage,@msOpnTbl,msPrefLength)=0 then
    Begin
     GlobalHtServer.OpenClosedTbls;
     If Assigned(fOnOpenTbls) then
      fOnOpenTbls;
     Result:=True;
    end
   else
    If StrLComp(aMessage,@msUsLgIn,msPrefLength)=0 then
     Begin
      UserManager.ReciveUserLogInMess(aMessage+msPrefLength);
      Result:=True;
     end
    else
     If StrLComp(aMessage,@msUsLgOff,msPrefLength)=0 then
      Begin
       UserManager.ReciveUserLogOffMess(aMessage+msPrefLength);
       Result:=True;
      end;
end;

(*********************** TClientReceiveServer *****************************)

function TClientReceiveServer.ReciveOwnMessage(aMessage : PChar) : Boolean;
var
 I: Integer;
begin
 Result := inherited ReciveOwnMessage(aMessage);
 if Result then
  Exit;

 if StrLComp(aMessage,@msChngDt,msPrefLength)=0 then
  DictServer.ReciveMessage(aMessage+msPrefLength)

 else if StrLComp(aMessage,@msDelDoc,msPrefLength)=0 then
 begin
  for I := 0 to PLongint(aMessage + msPrefLength)^ - 1 do
  begin
   Windows.SendMessage(Application.MainForm.Handle,
                       wm_DelDoc,
                       0,
                       PLongInt(aMessage + msPrefLength
                                         + SizeOf(Longint)
                                         + I * SizeOf(Longint))^);
  end; // for
  Windows.SendMessage(Application.MainForm.Handle,
                      wm_RefreshDocs,
                      0,
                      0);
 end

 else if StrLComp(aMessage,@msExportDone,msPrefLength)=0 then
  GlobalHtServer.CheckExportResults

 else if StrLComp(aMessage,@msServerTime,msPrefLength)=0 then
  GlobalHtServer.ReceiveServerTime(aMessage+msPrefLength)

 else if StrLComp(aMessage,@msActiveUsers,msPrefLength)=0 then
  UserManager.ReceiveActiveUsersList(aMessage+msPrefLength)

 else if StrLComp(aMessage,@msAutoLogoff,msPrefLength)=0 then
  Windows.SendMessage(Application.MainForm.Handle,
                      wm_Logoff,0,PLongInt(aMessage+msPrefLength)^)

 else if StrLComp(aMessage,@msServerStarted,msPrefLength)=0 then
  GlobalHtServer.CheckExportResults;

 Result := True;
end;

(*********************** TServiceReceiveServer *****************************)

Function TServiceReceiveServer.ReciveOwnMessage(aMessage : PChar) : Boolean;
Var
 CurLen : Cardinal;
Begin
 Result:=Inherited ReciveOwnMessage(aMessage);
 If Not Result then
  If StrLComp(aMessage,@msAutoImport,msPrefLength)=0 then
   Begin
    ServerServiceMessenger.ReceiveImportNotifyMessage(aMessage+msPrefLength);
    Result:=True;
   end
  else
   If StrLComp(aMessage,@msAutoExport,msPrefLength)=0 then
    Begin
     ServerServiceMessenger.ReceiveExportNotifyMessage(aMessage+msPrefLength);
     Result:=True;
    end
   else
    If StrLComp(aMessage,@msBroadcast,msPrefLength)=0 then
     Begin
      CurLen := l3StrBufSize(aMessage);
      ServerServiceMessenger.ReceiveBroadcastMessage(aMessage+msPrefLength,
                                                     CurLen - msPrefLength);
      Result:=True;
     end
    else
     If StrLComp(aMessage,@msChngDt,msPrefLength)=0 then
      Begin
       DictServer.ReciveMessage(aMessage+msPrefLength);
       Result:=True;
      end
     else
      If StrLComp(aMessage,@msActiveUsers,msPrefLength)=0 then
       begin
        ServerServiceMessenger.ReciveGetActiveUsersList(aMessage+msPrefLength);
        Result:=True;
       end
      else
       If StrLComp(aMessage,@msAutoAnno, msPrefLength)=0 then
        begin
         ServerServiceMessenger.ReceiveAnnotationExportNotifyMessage(aMessage+msPrefLength);
         Result:=True;
        end;
end;

(********************************************************************************)

{ TServerSender }

procedure TServerSender.Broadcast(aMessage: PByte;
                                  aMessLen: Integer;
                                  aExcludeHost: PHostId = nil);
var
 l_ExcludeId: TClientId;
 l_Message: TNotifyMessage;
 l_ExcludedId: TClientId;
begin
 GlobalHTServer.SendSelfMessage(PChar(aMessage), aMessLen);

 if aExcludeHost = nil then
  l_ExcludedId := c_WrongClientId
 else
  l_ExcludedId := f_DbServer.Clients.IdOf(l3ArrayToString(PHostId(aExcludeHost)^, SizeOf(THostId)));

 l_Message := TNotifyMessage.Create(mkOldStyled, aMessage, aMessLen);
 try
  f_DbServer.Notifier.Broadcast(l_Message, l_ExcludedId);
 finally
  l3Free(l_Message);
 end;
end;

constructor TServerSender.Create(aDbServer: TDbServer);
begin
 inherited Create;
 f_DbServer := aDbServer;
end;

procedure TServerSender.SendNetMessage(const aRecipient: string;
                                       aMessage:  PByte;
                                       aMessLen: Integer);
var
 l_Message: TNotifyMessage;
begin
 if f_DbServer = nil then Exit;

 l_Message := TNotifyMessage.Create(mkOldStyled, aMessage, aMessLen);
 try
  f_DbServer.Notifier.Send(aRecipient, l_Message);
 finally
  l3Free(l_Message);
 end;
end;

{ TClientSender }

constructor TClientSender.Create(aDbClient: TDbClient);
begin
 inherited Create;
 f_DbClient := aDbClient;
end;

procedure TClientSender.SendNetMessage(const aRecipient: string;
                                       aMessage: PByte;
                                       aMessLen: Integer);
var
 l_Message: TNotifyMessage;
begin
 l_Message := TNotifyMessage.Create(mkOldStyled, aMessage, aMessLen);
 try
  f_DbClient.Send(aRecipient, l_Message);
 finally
  l3Free(l_Message);
 end;
end;

end.
