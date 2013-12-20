unit CsActiveClients;

{ $Id: CsActiveClients.pas,v 1.25 2013/05/31 07:20:42 lulin Exp $ }

// $Log: CsActiveClients.pas,v $
// Revision 1.25  2013/05/31 07:20:42  lulin
// - портируем под XE4.
//
// Revision 1.24  2013/04/24 09:35:37  lulin
// - портируем.
//
// Revision 1.23  2012/02/28 13:11:58  narry
// ”лучшение ловушки
//
// Revision 1.22  2012/02/28 12:49:08  narry
// ”лучшение ловушки
//
// Revision 1.21  2012/02/24 09:15:25  narry
// «апись последнего пинга
// вывод в лог информации
//
// Revision 1.20  2010/03/05 07:35:44  narry
// - ошибка индекса
//
// Revision 1.19  2010/03/04 07:47:56  narry
// - обновление списка пользователей
//
// Revision 1.18  2010/02/26 09:45:25  narry
// - защита от повторного входа
//
// Revision 1.17  2010/02/24 10:30:50  narry
// - удаление зависимости проектов от парн€
//
// Revision 1.16  2008/04/23 07:28:40  narry
// - переделки дл€ сервиса
//
// Revision 1.15  2008/03/21 17:32:22  narry
// - задел дл€ превращени€ ѕарн€ в сервис
//
// Revision 1.14  2008/03/20 09:48:27  lulin
// - cleanup.
//
// Revision 1.13  2008/02/07 14:44:35  lulin
// - класс _Tl3LongintList переехал в собственный модуль.
//
// Revision 1.12  2008/02/01 16:41:30  lulin
// - используем кошерные потоки.
//
// Revision 1.11  2006/06/14 12:25:15  narry
// - новое: переход на новый механизм рассылки нотификаций
//
// Revision 1.10  2006/06/08 15:54:40  fireton
// - подготовка к переходу на большой User ID
//
// Revision 1.9.2.1  2006/06/08 08:43:19  fireton
// - перевод User ID на Longword
//
// Revision 1.9  2006/03/31 12:46:18  narry
// - обновление
//
// Revision 1.8  2006/03/24 09:43:01  narry
// - исправление: изменен механизм записи-чтени€ строковых параметров
//
// Revision 1.7  2006/03/16 15:50:16  narry
// - еще один шажок в сторону клиент-сервера
//
// Revision 1.6  2006/03/10 09:29:12  voba
// - enh. убрал CsFree etc.
//
// Revision 1.5  2006/03/09 11:47:12  narry
// - изменение: нова€ технологи€ передачи заданий
//
// Revision 1.4  2006/02/14 13:44:36  step
// по просьбе ƒудко в TCsClientInfo добавлены 3 пол€.
//
// Revision 1.3  2006/02/08 17:24:29  step
// выполнение запросов перенесено из классов-потомков в процедуры объектов
//

{$I CsDefine.inc}

interface

uses
 Classes, Contnrs, Math,
 l3Base,
 CsCommon, CsObject, CsDataPipe, SyncObjs,
 l3LongintList
 ;

type
 TCsClientInfo = class(TCsObject)
 private
  procedure SaveTo(aStream: TStream);
  procedure RestoreFrom(aStream: TStream);
 public
  ClientId: TCsClientId;
  LoginName: string;
  ListenIp: TCsIp;
  ListenPort: TCsPort;
  UID : Longint;
  LastPing: TDateTime;
 end;

 TOnLoginProc = procedure (aClientId: TCsClientId) of object;
 TOnLogoutProc = procedure (aClientId: TCsClientId) of object;
 TCSCheckPasswordProc = function (const aLogin, aPassword: String; out theUserID: TcsClientID): Boolean of object;
 TcsClientProc = function(aClientInfo: TcsClientInfo): Boolean of object;

 TCsActiveClients = class(TCsObject)
 private
  f_CheckPasswordProc: TCSCheckPasswordProc;
  f_CriticalSection: TCriticalSection;
  f_List: TObjectList;
  f_ClientsLogFile: string;
  f_OnRequestLogin: TcsClientProc;
  function AddClient(const aLoginName: string; const aListenIp: TCsIp; aListenPort: TCsPort; aUserID: TcsClientID):
      TCsClientId;
  function CheckClient(const aLoginName: string; const aListenIp: TCsIp; aListenPort: TCsPort; var aUID: TcsClientID):
      TCsClientId;
  function NewClientId: TCsClientId;
  function pm_GetClientsCount: Integer;
  procedure RequestLogin(aClientID: TcsClientInfo);
  function ValidPassword(const aLoginName: string; const aPassword: string; out theUserID: TcsClientID): Boolean;
  procedure SaveToFile;
  procedure RestoreFromFile;
 protected
  procedure Cleanup; override;
 public
  constructor Create(const aSystemFolder: string; aCheckPasswordProc:
      TCSCheckPasswordProc);
  function Login(const aLoginName, aPassword: string; const aListenIp: TCsIp; aListenPort: TCsPort; var aUID: Int64):
      TCsClientId;
  procedure Logout(aClientId: TCsClientId);
  function ClientInfoOf(aClientId: TCsClientId): TCsClientInfo;
  function FindAddress(const aClientId: TCsClientId;
                       out aIp: TCsIp;
                       out aPort: TCsPort): Boolean;

  procedure AllClientIds(aList: Tl3LongintList);
  procedure IterateClients(theClientProc: TcsClientProc);
  function IsLogged(aClientId: TCsClientId): Boolean;
  procedure Pack;
  property ClientsCount: Integer read pm_GetClientsCount;
  property OnRequestLogin: TcsClientProc read f_OnRequestLogin write f_OnRequestLogin;
 end;

implementation

uses
 SysUtils,
 l3FileUtils,
 CsConst, CsServer,
 l3Types,
 l3Stream
 , DateUtils;

const
 c_LoginAction = 1;
 c_LogoutAction = 2;
 cClientsFileName = 'clients.dat';

{ TCsActiveClients }

procedure TCsActiveClients.AllClientIds(aList: Tl3LongintList);
var
 I: Integer;
begin
 if aList = nil then
  Exit;
 aList.Clear;
 f_CriticalSection.Enter;
 try
  aList.Count := f_List.Count;
  for I := 0 to f_List.Count - 1 do
   aList.Items[I] := TCsClientInfo(f_List[I]).ClientId;
 finally
  f_CriticalSection.Leave;
 end;
end;

procedure TCsActiveClients.Cleanup;
begin
 l3Free(f_List);
 l3Free(f_CriticalSection);
 inherited;
end;

function TCsActiveClients.ClientInfoOf(aClientId: TCsClientId): TCsClientInfo;
var
 I: Integer;
begin
 Result := nil;
 f_CriticalSection.Enter;
 try
  for I := 0 to f_List.Count - 1 do
   if TCsClientInfo(f_List[I]).ClientId = aClientId then
   begin
    Result := TCsClientInfo(f_List[I]);
    Break;
   end;
 finally
  f_CriticalSection.Leave;
 end;
end;

constructor TCsActiveClients.Create(const aSystemFolder: string;
    aCheckPasswordProc: TCSCheckPasswordProc);
begin
 inherited Create;
 f_ClientsLogFile := ConcatDirName(aSystemFolder, cClientsFileName);
 f_CriticalSection := TCriticalSection.Create;
 f_List := TObjectList.Create(True);
 f_CheckPasswordProc:= aCheckPasswordProc;
 //if FileExists(f_ClientsLogFile) then
 // RestoreFromFile;
end;

function TCsActiveClients.AddClient(const aLoginName: string; const aListenIp: TCsIp; aListenPort: TCsPort; aUserID:
    TcsClientID): TCsClientId;
var
 l_ClientInfo: TCsClientInfo;
begin
 l_ClientInfo := TCsClientInfo.Create;
 l_ClientInfo.ClientId := aUserID;
 l_ClientInfo.LoginName := aLoginName;
 l_ClientInfo.ListenIp := aListenIp;
 l_ClientInfo.ListenPort := aListenPort;
 l_CLientInfo.LastPing := Now;
 f_List.Add(l_ClientInfo);
 Result := l_ClientInfo.ClientId;
end;

function TCsActiveClients.CheckClient(const aLoginName: string; const aListenIp: TCsIp; aListenPort: TCsPort; var aUID:
    TcsClientID): TCsClientId;
var
 l_Client: TCsClientInfo;
begin
 Result:= c_WrongClientId;
 f_CriticalSection.Enter;
 try
  l_Client:= ClientInfoOf(aUID);
  if l_Client <> nil then
   with l_CLient do
   begin
    l3System.Msg2Log('CheckClient:');
    l3System.Msg2Log('==>%s(%s) from %s:%d(%s:%d) (LP:%s)', [aLoginName, LoginName, aListenIP, aListenPort, ListenIP, ListenPort, DateTimeToStr(LastPing)]);
    if (LoginName = aLoginName) and (ListenIP = aListenIP) and (ListenPort = aListenPort) then
    begin
     if MinutesBetween(Now, l_Client.LastPing) > 5 then
     begin
      l_Client.ClientId:= c_DeadClient;
     end
     else
     begin
      ClientId:= aUID;
      Result:= aUID
     end;
    end
    else // «аход с другой машины или другого клиентского приложени€ (—корее всего, попадем сюда)
    if MinutesBetween(Now, l_Client.LastPing) > 5 then
      l_Client.ClientId:= c_DeadClient
     else
      Result:= c_DuplicateClient;
    l3System.Msg2Log('Result=%d', [Result]); 
   end;
 finally
  f_CriticalSection.Leave;
 end;
end;

procedure TCsActiveClients.IterateClients(theClientProc: TcsClientProc);
var
 i: Integer;
begin
 if Assigned(theClientProc) then
 begin
  f_CriticalSection.Enter;
  try
   for i:= 0 to Pred(f_List.Count) do
    if theClientProc(TCsClientInfo(f_List[i])) then
     break;
  finally
   f_CriticalSection.Leave;
  end;
 end;
end;

function TCsActiveClients.FindAddress(const aClientId: TCsClientId;
                                      out aIp: TCsIp;
                                      out aPort: TCsPort): Boolean;
var
 l_ClientInfo: TCsClientInfo;
begin
 Result := False;
 f_CriticalSection.Enter;
 try
  l_ClientInfo := ClientInfoOf(aClientId);
  if l_ClientInfo <> nil then
  begin
   aIp   := l_ClientInfo.ListenIp;
   aPort := l_ClientInfo.ListenPort;
   Result := True;
  end;
 finally
  f_CriticalSection.Leave;
 end;
end;

function TCsActiveClients.IsLogged(aClientId: TCsClientId): Boolean;
begin
 f_CriticalSection.Enter;
 try
  Result := ClientInfoOf(aClientId) <> nil;
 finally
  f_CriticalSection.Leave;
 end;
end;

function TCsActiveClients.Login(const aLoginName, aPassword: string; const aListenIp: TCsIp; aListenPort: TCsPort; var
    aUID: Int64): TCsClientId;
var
 l_UserID: TcsClientID;
begin
 Result := c_WrongClientId;
 f_CriticalSection.Enter;
 try
  if ValidPassword(aLoginName, aPassword, l_UserID) then
  begin
   // уже залогинилс€
   Result:= CheckClient(aLoginName, aListenIp, aListenPort, l_UserID);
   // заносим в список
   if Result = c_WrongClientId then
    Result:= AddClient(aLoginName, aListenIp, aListenPort, l_UserID);
   //SaveToFile;
  end; // if ValidPassword(aLoginName, aPassword, l_UserID)
 finally
  f_CriticalSection.Leave;
 end;
end;

procedure TCsActiveClients.Logout(aClientId: TCsClientId);
var
 I: Integer;
begin
 f_CriticalSection.Enter;
 try
  for I := 0 to f_List.Count - 1 do
   if TCsClientInfo(f_List[I]).ClientId = aClientId then
   begin
    f_List.Delete(I);
    //SaveToFile;
    Break;
   end;
 finally
  f_CriticalSection.Leave;
 end;
end;

function TCsActiveClients.NewClientId: TCsClientId;
var
 I: Integer;
begin
 Result := 0;
 // ищем самый большой Id
 for I := 0 to f_List.Count - 1 do
  Result := Max(Result, TCsClientInfo(f_List[I]).ClientId);
 Inc(Result);
end;

procedure TCsActiveClients.Pack;
var
 i: Integer;
 l_Client: TcsClientInfo;
begin
 // —писок чиститс€ от "мертвых" клиентов
 i:= Pred(f_List.Count);
 while i >= 0 do
 begin
  l_Client:= TcsClientInfo(f_List.Items[i]);
  if l_Client.ClientId = c_DeadClient then
  begin
   f_List.Delete(i);
  end;
  Dec(i);
 end;
end;

function TCsActiveClients.pm_GetClientsCount: Integer;
var
 i: Integer;
begin
 Result := 0;
 for i := 0 to Pred(f_List.Count) do
  if TcsClientInfo(f_List.Items[i]).ClientId <> c_DeadClient then
   Inc(Result);
end;

procedure TCsActiveClients.RequestLogin(aClientID: TcsClientInfo);
begin
 if Assigned(f_OnRequestLogin) then
  f_OnRequestLogin(aClientID);
end;

procedure TCsActiveClients.RestoreFromFile;
var
 l_FileStream: Tl3FileStream;
 I: Integer;
 l_ClientInfo: TCsClientInfo;
 l_Count: Integer;
begin
 f_CriticalSection.Enter;
 try
  f_List.Clear;
  l_FileStream := Tl3FileStream.Create(f_ClientsLogFile, l3_fmRead);
  try
   l_FileStream.Read(l_Count, SizeOf(l_Count));
   for I := 0 to l_Count - 1 do
   begin
    l_ClientInfo := TCsClientInfo.Create;
    l_ClientInfo.RestoreFrom(l_FileStream);
    if l_ClientInfo.ClientId <> c_DeadClient then
     f_List.Add(l_ClientInfo)
    else
     l3Free(l_ClientInfo);
   end;
  finally
   l3Free(l_FileStream);
  end;
  DeleteFile(f_ClientsLogFile);
 finally
  f_CriticalSection.Leave;
 end;
end;

procedure TCsActiveClients.SaveToFile;
var
 l_FileStream: Tl3FileStream;
 I: Integer;
 l_ClientInfo: TCsClientInfo;
 l_Count: Integer;
begin
 if f_CLientsLogFile <> '' then
 begin
  f_CriticalSection.Enter;
  try
   l_FileStream := Tl3FileStream.Create(f_ClientsLogFile, l3_fmWrite);
   try
    // Count
    l_Count := f_List.Count;
    l_FileStream.Write(l_Count, SizeOf(l_Count));
    // Items
    for I := 0 to f_List.Count - 1 do
    begin
     l_ClientInfo := TCsClientInfo(f_List[I]);
     l_ClientInfo.SaveTo(l_FileStream);
    end;
   finally
    l3Free(l_FileStream);
   end;
  finally
   f_CriticalSection.Leave;
  end;
 end; 
end;

function TCsActiveClients.ValidPassword(const aLoginName: string; const aPassword: string; out theUserID: TcsClientID):
    Boolean;
begin
 Result := True; // доделать
 if Assigned(f_CheckPasswordProc) then
  Result := f_CheckPasswordProc(aLoginName, aPassword, theUserID)
end;

{ TCsClientInfo }

procedure TCsClientInfo.RestoreFrom(aStream: TStream);
var
 l_StrSize: Integer;
 l_Str: String;
begin
 Assert(aStream <> nil);

 // ClientId
 aStream.Read(ClientId, SizeOf(ClientId));

 // LoginName
 aStream.Read(l_StrSize, SizeOf(l_StrSize));
 SetLength(l_Str, l_StrSize);
 if l_StrSize > 0 then
  aStream.Read(l_Str[1], l_StrSize);
 LoginName := l_Str;

 // ListenIp
 aStream.Read(l_StrSize, SizeOf(l_StrSize));
 SetLength(l_Str, l_StrSize);
 if l_StrSize > 0 then
  aStream.Read(l_Str[1], l_StrSize);
 ListenIP := l_Str;

 // ListenPort
 aStream.Read(ListenPort, SizeOf(ListenPort));

 // LastPing
 aStream.Read(LastPing, SizeOf(LastPing));
end;

procedure TCsClientInfo.SaveTo(aStream: TStream);
var
 l_StrSize: Integer;
begin
 Assert(aStream <> nil);

 // ClientId
 aStream.Write(ClientId, SizeOf(ClientId));

 // LoginName
 l_StrSize := Length(LoginName);
 aStream.Write(l_StrSize, SizeOf(l_StrSize));
 if l_StrSize > 0 then
  aStream.Write(LoginName[1], l_StrSize);

 // ListenIp
 l_StrSize := Length(ListenIp);
 aStream.Write(l_StrSize, SizeOf(l_StrSize));
 if l_StrSize > 0 then
  aStream.Write(ListenIP[1], l_StrSize);

 // ListenPort
 aStream.Write(ListenPort, SizeOf(ListenPort));

 // LastPing
 aStream.Write(LastPing, SizeOf(LastPing));
end;

end.


