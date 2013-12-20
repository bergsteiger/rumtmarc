unit CsReply;

{ $Id: CsReply.pas,v 1.17 2012/02/24 09:15:25 narry Exp $ }

// $Log: CsReply.pas,v $
// Revision 1.17  2012/02/24 09:15:25  narry
// Запись последнего пинга
// вывод в лог информации
//
// Revision 1.16  2011/12/08 12:32:12  narry
// Отображается не вся очередь заданий (304874341)
//
// Revision 1.15  2011/04/22 11:48:38  narry
// Большая кнопка (262636461)
//
// Revision 1.14  2010/05/17 08:34:02  narry
// - не выводим в лог записи KeepAlive
//
// Revision 1.13  2010/02/26 09:45:25  narry
// - защита от повторного входа
//
// Revision 1.12  2009/07/22 08:20:23  narry
// - новая процедура KeepAlive
// - cleanup
//
// Revision 1.11  2008/10/01 07:45:40  narry
// - добавлен путь к образам документов
//
// Revision 1.10  2008/07/14 07:47:53  narry
// - получение путей к базе с сервера (первый шаг, немного в сторону)
//
// Revision 1.9  2008/03/21 17:32:22  narry
// - задел для превращения Парня в сервис
//
// Revision 1.8  2006/10/12 11:30:40  narry
// - вывод в лог дополнительной информации
//
// Revision 1.7  2006/09/21 11:47:59  narry
// - логгирование сетевых сообщений на стороне сервера
//
// Revision 1.6  2006/09/01 13:55:01  narry
// - при подключении клиента к серверу проверяются версии клиента и сервера
//
// Revision 1.5  2006/08/24 08:48:46  narry
// - исправление: отключение получения номера версии
//
// Revision 1.4  2006/08/03 13:22:01  narry
// - увеличение версии протокола и реакция на ее не совпадение
//
// Revision 1.3  2006/03/16 15:50:16  narry
// - еще один шажок в сторону клиент-сервера
//
// Revision 1.2  2006/03/10 09:29:12  voba
// - enh. убрал CsFree etc.
//
// Revision 1.1  2006/02/08 17:24:29  step
// выполнение запросов перенесено из классов-потомков в процедуры объектов
//

{$I CsDefine.inc}

interface

uses
 Contnrs,
 IdContext, IdIOHandler,
 CsObject, CsCommon, CsConst, CsServer, CsReplyProcedures, CsQueryTypes;

type
 TCsReply = class(TCsObject)
 private
  f_ClientId: TCsClientId;
  f_Context: TIdContext;
  f_ReplyProcedures: TCsReplyProcedures;
  f_Server: TCsServer;
  function IOHandler: TIdIOHandler;
  procedure OnClientIpQuery;
  procedure OnClientLogin;
  procedure OnClientLoginEx;
  procedure OnClientLogout;
  procedure OnGetProtocolVersion;
  procedure OnKeepAlive;
  function ProcessInternarQuery(aQueryId: TCsQueryId): Boolean;
 protected
  procedure Cleanup; override;
 public
  constructor Create(aServer: TCsServer;
                     aContext: TIdContext;
                     aReplyProcedures: TCsReplyProcedures); reintroduce;
  procedure Run(aLogMessages: Boolean);
  property ClientId: TCsClientId read f_ClientId;
  property Context: TIdContext read f_Context;
  property Server: TCsServer read f_Server;
 end;

implementation

uses
 Classes, SysUtils,
 l3Base,
 IdGlobal,
 CsErrors, CsDataPipe, CsEventsProcessor, csNotification, csNotifier,
  CsActiveClients, TypInfo;

constructor TCsReply.Create(aServer: TCsServer;
                                    aContext: TIdContext;
                                    aReplyProcedures: TCsReplyProcedures);
begin
 inherited Create;
 Assert(aServer <> nil);
 Assert(aContext <> nil);
 f_Server := aServer;
 f_Context := aContext;
 f_Context.Connection.IOHandler.MaxLineLength := c_MaxDataStringLength;
 f_Context.Connection.IOHandler.MaxLineAction := maException;
 f_ReplyProcedures := aReplyProcedures;
 f_ClientId := c_WrongClientId; // пока не известно
end;

{ TCsReply }

procedure TCsReply.Cleanup;
begin
 f_Server := nil;
 f_ReplyProcedures := nil;
 inherited;
end;

function TCsReply.IOHandler: TIdIOHandler;
begin
 Result := f_Context.Connection.IOHandler;
end;

procedure TCsReply.OnClientIpQuery;
var
 l_ClientIp: TCsIp;
begin
 l_ClientIp := f_Context.Binding.PeerIP;
 IOHandler.WriteLn(l_ClientIp);
end;

procedure TCsReply.OnClientLogin;
var
 l_LoginName: string;
 l_Password: string;
 l_ListenIp: TCsIp;
 l_ListenPort: TCsPort;
 l_ClientId: TCsClientId;
 l_UID: Int64;
begin
 // чтение
 l_LoginName := IOHandler.ReadLn;
 l_Password := IOHandler.ReadLn;
 l_ListenIp := IOHandler.ReadLn;
 l_ListenPort := IOHandler.ReadInteger;
 l_UID := IOHandler.ReadInt64;

 // вычисление
 l_ClientId := f_Server.ActiveClients.Login(l_LoginName,
                                            l_Password,
                                            l_ListenIp,
                                            l_ListenPort,
                                            l_UID);

 // отправка
 IOHandler.Write(l_ClientId);
 IOHandler.Write(l_UID);
 // нотификация
 if (l_ClientID <> c_WrongClientID) and (l_ClientID <> c_DuplicateClient) then
 begin
  f_Server.EventsProcessor.ProcessEvent(c_ClientLogedInEvent, l_ClientId);
  f_Server.Notifier.SendNotify(c_AllClients, ntUserLogin, l_ClientID, '');
 end;
end;

procedure TCsReply.OnClientLoginEx;
var
 l_LoginName: string;
 l_Password: string;
 l_ListenIp: TCsIp;
 l_ListenPort: TCsPort;
 l_ClientId: TCsClientId;
 l_UID: Int64;
 l_DVer, l_AVer: Integer;
 l_Family, l_Table, l_Homes, l_Lock, l_Images: String;
begin
 // чтение
 l_LoginName := IOHandler.ReadLn;
 l_Password := IOHandler.ReadLn;
 l_ListenIp := IOHandler.ReadLn;
 l_ListenPort := IOHandler.ReadInteger;
 l_UID := IOHandler.ReadInt64;

 // вычисление
 l_ClientId := f_Server.ActiveClients.Login(l_LoginName,
                                            l_Password,
                                            l_ListenIp,
                                            l_ListenPort,
                                            l_UID);
 if Assigned(f_Server.OnLoginExData) then
  f_Server.OnLoginExData(l_DVer, l_AVer, l_Family, l_Table, l_Homes, l_Lock, l_Images);

 // отправка
 IOHandler.Write(l_ClientId);
 IOHandler.Write(l_UID);
 IOHandler.Write(l_DVer);
 IOHandler.Write(l_AVer);
 IOHandler.WriteLn(l_Family);
 IOHandler.WriteLn(l_Table);
 IOHandler.WriteLn(l_Homes);
 IOHandler.WriteLn(l_Lock);
 IOHandler.WriteLn(l_Images);
 // нотификация
 if (l_ClientID <> c_WrongClientID) and (l_ClientID <> c_DuplicateClient) then
 begin
  f_Server.EventsProcessor.ProcessEvent(c_ClientLogedInEvent, l_ClientId);
  f_Server.Notifier.SendNotify(c_AllClients, ntUserLogin, l_ClientID, '');
 end;
end;

procedure TCsReply.OnClientLogout;
begin
 f_Server.ActiveClients.Logout(ClientId);
 f_Server.EventsProcessor.ProcessEvent(c_ClientLogedOutEvent, ClientId);
 f_Server.Notifier.SendNotify(c_AllClients, ntUserLogout, ClientID, '');
end;

procedure TCsReply.OnGetProtocolVersion;
begin
 IOHandler.Write(Integer(c_CsVersion));
end;

procedure TCsReply.OnKeepAlive;
var
 l_Port: Integer;
 l_IP: String;
begin
 l_IP:= IOHandler.Readln;
 l_Port:= IOHandler.readInteger;
 if not f_Server.ActiveClients.IsLogged(ClientID) then
  f_Server.RequestLogin(l_IP, l_Port)
 else
  f_Server.ActiveClients.ClientInfoOf(ClientID).LastPing:= Now;
end;

function TCsReply.ProcessInternarQuery(aQueryId: TCsQueryId): Boolean;
begin
 Result := True;
 case aQueryId of
  qtClientIp:           OnClientIpQuery;
  qtLogin:              OnClientLogin;
  qtLoginEx:            OnClientLoginEx;
  qtLogout:             OnClientLogout;
  qtKeepAlive:          OnKeepAlive;
  qtGetProtocolVersion: OnGetProtocolVersion;
 else
  Result := False;
 end;
end;

procedure TCsReply.Run(aLogMessages: Boolean);
var
 l_CsVersion: Integer;
 l_QueryId: TCsQueryId;
 l_ReplyProc: TCsReplyProc;
 l_Pipe: TCsDataPipe;
 I: Integer;
begin
 try
  IOHandler.WriteBufferOpen;
  try
   l_Pipe := TCsDataPipe.Create(IOHandler);
   try
    l_CsVersion := l_Pipe.ReadInteger;
    f_ClientId := l_Pipe.ReadInteger;
    l_QueryId := TcsQueryId(l_Pipe.ReadInteger);

    if aLogMessages and (l_QueryID <> qtKeepAlive) then
     l3System.Msg2Log('Обработка %s от %d', [GetEnumName(TypeInfo(TcsQueryID), ord(l_QueryID)), f_ClientID]);

    if l_QueryID <> qtGetProtocolVersion then
     ECsWrongVersionError.IfNot(l_CsVersion = c_CsVersion);

    if not ProcessInternarQuery(l_QueryId) then
    begin
     l_ReplyProc := f_ReplyProcedures.ProcBy(l_QueryId);
     if Assigned(l_ReplyProc) then
     try
      l_ReplyProc(l_Pipe)
     except
      on E: Exception do
       l3System.Exception2Log(E);
     end
     else
     if aLogMessages and (l_QueryID <> qtKeepAlive)  then
      l3System.Msg2Log('Не зарегистрирован обработчик для %s', [GetEnumName(TypeInfo(TcsQueryID), ord(l_QueryID))]);
    end; // not ProcessInternarQuery(l_QueryId)
    if aLogMessages and (l_QueryID <> qtKeepAlive)  then
     l3System.Msg2Log('%s от %d обработан', [GetEnumName(TypeInfo(TcsQueryID), ord(l_QueryID)), f_ClientID]);

   finally
    l3Free(l_Pipe);
   end;
  finally
   IOHandler.WriteBufferClose;
  end;
 finally
  f_Context.Connection.Disconnect(False);
  f_Context.Connection.IOHandler.InputBuffer.Clear;
 end;
end;

end.

