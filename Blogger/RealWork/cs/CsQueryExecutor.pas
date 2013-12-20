unit CsQueryExecutor;

{ $Id: CsQueryExecutor.pas,v 1.9 2013/04/24 09:35:37 lulin Exp $ }

// $Log: CsQueryExecutor.pas,v $
// Revision 1.9  2013/04/24 09:35:37  lulin
// - портируем.
//
// Revision 1.8  2006/09/21 11:47:59  narry
// - логгирование сетевых сообщений на стороне сервера
//
// Revision 1.7  2006/03/10 09:29:12  voba
// - enh. убрал CsFree etc.
//
// Revision 1.6  2006/02/08 17:24:29  step
// выполнение запросов перенесено из классов-потомков в процедуры объектов
//

{$I CsDefine.inc}

interface

uses
 SysUtils, Contnrs,
 IdSocketHandle, IdContext, IdTCPServer,
 IdGlobal, IdCustomTCPServer, IdIOHandler,
 CsObject, CsCommon, CsDataPipe, CsQueryTypes, CsReplyProcedures;

const
 c_TcpServerListenQueueSize = 50;
 c_TcpServerTerminateWaitTime = 60 * 1000;

type
 TCsQueryExecutor = class(TCsObject)
 private
  f_Server: TCsObject;
  f_IsStarted: Boolean;
  f_LogMessages: Boolean;
  f_TcpServer: TIdTcpServer;
  f_RegisteredReplyProcedures: TCsReplyProcedures;
  procedure OnTCPServerExecute(aContext: TIdContext);
  procedure TcpServerListenExceptionHandler(aThread: TIdListenerThread; aException: Exception);
  procedure TcpServerExceptionHandler(aContext: TIdContext; aException: Exception);
 protected
  procedure Cleanup; override;
 public
  constructor Create(aServer: TCsObject); reintroduce;
  procedure RegisterReplyProcedure(aQueryId: TCsQueryId; aReplyProc: TCsReplyProc);
  procedure Start(const aIp: string; aPort: TCsPort);
  procedure Stop;
  property LogMessages: Boolean read f_LogMessages write f_LogMessages;
 end;

implementation

uses
 l3Base,
 IdException,
 CsReply, CsConst, CsErrors, CsServer,
 CsEventsProcessor;

{ TCsQueryExecutor }

procedure TCsQueryExecutor.Cleanup;
begin
 if f_IsStarted then
  Stop;

 l3Free(f_TcpServer);
 l3Free(f_RegisteredReplyProcedures);
 f_Server := nil;
 inherited;
end;

constructor TCsQueryExecutor.Create(aServer: TCsObject);
begin
 inherited Create;

 Assert(aServer.InheritsFrom(TCsServer));
 f_Server := aServer;
 f_RegisteredReplyProcedures := TCsReplyProcedures.Create;

 f_TcpServer := TIdTcpServer.Create(nil);
 with f_TcpServer do
 begin
  ListenQueue := c_TcpServerListenQueueSize;
  MaxConnections := 0;
  TerminateWaitTime := c_TcpServerTerminateWaitTime;
  OnExecute := OnTCPServerExecute;
  OnListenException := TcpServerListenExceptionHandler;
  // OnException := TcpServerExceptionHandler;
 end; // with
end;

procedure TCsQueryExecutor.OnTCPServerExecute(aContext: TIdContext);
var
 l_Reply: TCsReply;
begin
 try
  l_Reply := TCsReply.Create(TCsServer(f_Server), aContext, f_RegisteredReplyProcedures);
  try
   l_Reply.Run(LogMessages);
  finally
   l3Free(l_Reply);
  end;
 except
  on E: Exception do
   TcpServerExceptionHandler(aContext, E);
 end; 
end;

procedure TCsQueryExecutor.RegisterReplyProcedure(aQueryId: TCsQueryId;
                                                    aReplyProc: TCsReplyProc);
begin
 Assert(not f_IsStarted);
 Assert(Assigned(aReplyProc));
 f_RegisteredReplyProcedures.Add(aQueryId, aReplyProc);
end;

procedure TCsQueryExecutor.Start(const aIp: string; aPort: TCsPort);
var
 l_Binding: TIdSocketHandle;
begin
 if f_IsStarted then
  Exit;

 with f_TcpServer do
 begin
  Bindings.Clear;
  l_Binding := Bindings.Add;
  l_Binding.Port := aPort;
  l_Binding.IP := aIp;
  Active := True;
 end; // with

 f_IsStarted := True;
end;

procedure TCsQueryExecutor.Stop;
begin
 if not f_IsStarted then
  Exit;

 f_TcpServer.Active := False;
 f_TcpServer.Bindings.Clear;

 f_IsStarted := False;
end;

procedure TCsQueryExecutor.TcpServerExceptionHandler(aContext: TIdContext;
                                                       aException: Exception);
begin
 if aException is EIdConnClosedGracefully then
  Exit
 else if aException is ECsWrongVersionError then
  TCsServer(f_Server).EventsProcessor.ProcessEvent(c_WrongProtocolVersion,
                                                   Integer(IPv4ToDWord(aContext.Binding.PeerIp)))
 else if aException is ECsUnregisteredQueryError then
  TCsServer(f_Server).EventsProcessor.ProcessEvent(c_UnregisteredQuery,
                                                   Integer(IPv4ToDWord(aContext.Binding.PeerIp)));
end;

procedure TCsQueryExecutor.TcpServerListenExceptionHandler(aThread: TIdListenerThread;
                                                             aException: Exception);
begin
 TCsServer(f_Server).EventsProcessor.ProcessEvent(c_ServerListenerError,
                                                  Integer(IPv4ToDWord(aThread.Server.Bindings[0].Ip)));
 aThread.TerminateAndWaitFor;
end;

end.

