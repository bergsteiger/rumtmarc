unit CsServer;

{ $Id: CsServer.pas,v 1.14 2013/04/24 09:35:37 lulin Exp $ }

// $Log: CsServer.pas,v $
// Revision 1.14  2013/04/24 09:35:37  lulin
// - портируем.
//
// Revision 1.13  2010/03/04 07:47:56  narry
// - обновление списка пользователей
//
// Revision 1.12  2009/07/22 08:20:23  narry
// - новая процедура KeepAlive
// - cleanup
//
// Revision 1.11  2008/07/14 07:47:53  narry
// - получение путей к базе с сервера (первый шаг, немного в сторону)
//
// Revision 1.10  2006/09/21 11:47:59  narry
// - логгирование сетевых сообщений на стороне сервера
//
// Revision 1.9  2006/03/31 12:46:18  narry
// - обновление
//
// Revision 1.8  2006/03/16 15:50:16  narry
// - еще один шажок в сторону клиент-сервера
//
// Revision 1.7  2006/03/10 09:29:12  voba
// - enh. убрал CsFree etc.
//
// Revision 1.6  2006/03/09 11:47:12  narry
// - изменение: новая технология передачи заданий
//
// Revision 1.5  2006/02/08 17:24:29  step
// выполнение запросов перенесено из классов-потомков в процедуры объектов
//

{$I CsDefine.inc}

interface

uses
 SysUtils,
 IdSocketHandle, IdContext, IdTCPServer,
 IdGlobal, IdCustomTCPServer, IdIOHandler,
 CsObject, CsQueryExecutor, CsNotifier, CsActiveClients, CsCommon,
 CsEventsProcessor, CsServerSettings, CsQueryTypes, CsReplyProcedures;

type
 TCsServer = class(TCsObject)
 private
  f_IsStarted: Boolean;
  f_ActiveClients: TCsActiveClients;
  f_QueryExecutor: TCsQueryExecutor;
  f_Notifier: TCsNotifier;
  f_EventsProcessor: TCsEventsProcessor;
  f_EventProc: TOnCsEventProc;
  f_LogMessages: Boolean;
  f_OnLoginExData: TcsLoginExDataEvent;
  f_SystemFolder: string;
  procedure SetEventProc(const aProc: TOnCsEventProc);
  function GetEventProc: TOnCsEventProc;
  procedure pm_SetLogMessages(const Value: Boolean);
  function _LoginUser(aClientInfo: TcsClientInfo): Boolean;
 protected
  procedure Cleanup; override;
 public
  constructor Create(aSystemFolder: String; aCheckPassword: TCSCheckPasswordProc); reintroduce;
  procedure AllLoginRequest;
  procedure RegisterReplyProcedure(aQueryId: TCsQueryId; aReplyProc: TCsReplyProc);
  procedure RequestLogin(aIP: String; aPort: Integer); overload;
  procedure RequestLogin(aClientID: TcsClientID); overload;
  procedure Start(const aIp: TCsIp; aPort: TCsPort);
  procedure Stop;
  property ActiveClients: TCsActiveClients read f_ActiveClients;
  property Notifier: TCsNotifier read f_Notifier;
  property EventsProcessor: TCsEventsProcessor read f_EventsProcessor;
  property LogMessages: Boolean read f_LogMessages write pm_SetLogMessages;
  property OnEvent: TOnCsEventProc read GetEventProc write SetEventProc;
  property OnLoginExData: TcsLoginExDataEvent read f_OnLoginExData write f_OnLoginExData;
 end;

implementation

uses
 l3Base,
 Forms,
 IdException,
 CsReply, CsConst, CsErrors, csNotification;

{ TCsServer }

procedure TCsServer.Cleanup;
begin
 if f_IsStarted then
  Stop;

 l3Free(f_EventsProcessor);
 l3Free(f_QueryExecutor);
 l3Free(f_Notifier);
 l3Free(f_ActiveClients);

 inherited;
end;

constructor TCsServer.Create(aSystemFolder: String; aCheckPassword: TCSCheckPasswordProc);
begin
 inherited Create;
 if aSystemFolder = '' then
  f_SystemFolder := ExtractFilePath(Application.ExeName)
 else
  f_SystemFolder := aSystemFolder;

 f_ActiveClients := TCsActiveClients.Create(f_SystemFolder, aCheckPassword);
 f_ActiveClients.OnRequestLogin := _LoginUser;
 f_Notifier := TCsNotifier.Create(f_ActiveClients);
 f_QueryExecutor := TCsQueryExecutor.Create(Self);
 f_EventsProcessor := TCsEventsProcessor.Create;
end;

procedure TCsServer.AllLoginRequest;
begin
 f_ActiveClients.IterateClients(_LoginUser);
end;

procedure TCsServer.SetEventProc(const aProc: TOnCsEventProc);
begin
 f_EventsProcessor.EventProc := aProc;
end;

function TCsServer.GetEventProc: TOnCsEventProc;
begin
 Result := f_EventsProcessor.EventProc;
end;

procedure TCsServer.pm_SetLogMessages(const Value: Boolean);
begin
 if f_LogMessages <> Value then
 begin
  f_LogMessages := Value;
  f_QueryExecutor.LogMessages := f_LogMessages;
 end;
end;

procedure TCsServer.Start(const aIp: TCsIp;
                          aPort: TCsPort);
begin
 if f_IsStarted then
  Exit;

 f_QueryExecutor.Start(aIp, aPort);
 f_IsStarted := True;
 AllLoginRequest;
end;

procedure TCsServer.Stop;
begin
 if not f_IsStarted then
  Exit;

 f_QueryExecutor.Stop;
 f_IsStarted := False;
end;

procedure TCsServer.RegisterReplyProcedure(aQueryId: TCsQueryId; aReplyProc: TCsReplyProc);
begin
 Assert(not f_IsStarted);
 f_QueryExecutor.RegisterReplyProcedure(aQueryId, aReplyProc);
end;

procedure TCsServer.RequestLogin(aIP: String; aPort: Integer);
begin
 Notifier.SendNotify(aIP, aPort, ntRepeatLogin, 0, '');
end;

procedure TCsServer.RequestLogin(aClientID: TcsClientID);
begin
 Notifier.SendNotify(aClientID, ntRepeatLogin, 0, '');
end;

function TCsServer._LoginUser(aClientInfo: TcsClientInfo): Boolean;
begin
 Result := False;
 RequestLogin(aClientInfo.ClientId);
 aClientInfo.ClientID := c_DeadClient;
end;

end.

