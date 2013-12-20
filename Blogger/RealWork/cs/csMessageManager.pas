unit csMessageManager;

{ $Id: csMessageManager.pas,v 1.33 2013/04/19 13:09:32 lulin Exp $ }

// $Log: csMessageManager.pas,v $
// Revision 1.33  2013/04/19 13:09:32  lulin
// - портируем.
//
// Revision 1.32  2013/02/06 10:05:47  narry
// Обновление
//
// Revision 1.31  2013/01/21 11:15:31  fireton
// - [$362978911]
//
// Revision 1.30  2011/04/22 11:48:38  narry
// Большая кнопка (262636461)
//
// Revision 1.29  2010/02/24 10:30:50  narry
// - удаление зависимости проектов от парня
//
// Revision 1.28  2009/07/22 08:20:23  narry
// - новая процедура KeepAlive
// - cleanup
//
// Revision 1.27  2009/04/13 07:10:24  narry
// - обновление
//
// Revision 1.26  2009/03/13 15:15:30  narry
// - увеличено время доставки сообщений пользователю
//
// Revision 1.25  2008/03/20 09:48:27  lulin
// - cleanup.
//
// Revision 1.24  2008/02/21 18:37:19  lulin
// - вычищен ненужный параметр.
//
// Revision 1.23  2008/02/21 18:13:23  lulin
// - избавляемся от ненужных типов.
//
// Revision 1.22  2008/02/07 14:44:35  lulin
// - класс _Tl3LongintList переехал в собственный модуль.
//
// Revision 1.21  2008/02/05 09:57:57  lulin
// - выделяем базовые объекты в отдельные файлы и переносим их на модель.
//
// Revision 1.20  2008/02/01 15:14:42  lulin
// - избавляемся от излишней универсальности списков.
//
// Revision 1.19  2007/08/14 12:25:41  narry
// - Фоновый прием информационных сообщений
//
// Revision 1.18  2007/05/07 07:32:02  narry
// - range check
//
// Revision 1.17  2006/12/01 15:03:49  narry
// - борьба с range check
//
// Revision 1.16  2006/11/29 08:34:47  narry
// - борьба с range check
//
// Revision 1.15  2006/11/28 11:19:25  narry
// - ошибка: подвисание Арчи при получении сообщения от сервера
//
// Revision 1.14  2006/11/27 15:57:40  narry
// - range check
//
// Revision 1.13  2006/09/26 12:10:17  narry
// - ошибка вывода сообщения в лог
//
// Revision 1.12  2006/09/21 09:59:51  narry
// no message
//
// Revision 1.11  2006/09/15 06:50:55  narry
// - починка обмена сообщениями между сервером и клиентом
//
// Revision 1.10  2006/09/14 08:11:25  narry
// - борьба с бесконечным циклом обработки сообщений
//
// Revision 1.9  2006/09/07 09:51:16  narry
// no message
//
// Revision 1.8  2006/08/24 08:49:11  narry
// no message
//
// Revision 1.7  2006/08/02 12:57:14  narry
// - чистка
//
// Revision 1.6  2006/08/02 12:18:46  narry
// - ловушка для сообщений с сервера
//
// Revision 1.5  2006/06/26 13:17:04  lulin
// - убраны исправления, случайно попавшие из ветки.
//
// Revision 1.3  2006/06/07 14:11:15  narry
// - исправление: битый файл сообщений читался с ошибкой
//
// Revision 1.2  2006/06/05 15:00:09  narry
// - обновление
//
// Revision 1.1  2006/06/05 14:51:01  narry
// - новый модуль: система рассылки нотификаций
//

interface

uses
 CsServer, CsDataPipe, csNotification, csCommon,
 csRequestTask,
 l3Base, l3Types,
 SyncObjs, IdGlobal,
 Classes,
 l3ObjectRefList
 ;

type
 TddClientMessage = class(TddRequestTask)
 private
  f_Data: Integer;
  f_NotifyType: TCsNotificationType;
  f_Text: AnsiString;
  f_TryCount: Integer;
 protected
  procedure LoadFrom(aStream: TStream; aIsPipe: Boolean); override;
 public
        {* - функция сравнения объекта с различного рода значениями. }
  function OCompare(anObject: TObject): Long; override;
  procedure FromPipe(aDataPipe: TcsDataPipe);
  procedure SaveTo(aStream: TStream; aIsPipe: Boolean); override;
  property Data: Integer read f_Data write f_Data;
  property NotifyType: TCsNotificationType read f_NotifyType write f_NotifyType;
  property Text: AnsiString read f_Text write f_Text;
  property TryCount: Integer read f_TryCount write f_TryCount;
 end;


 TcsMessageRecepient = class(Tl3base)
 private
  f_ClientID: TcsClientID;
  f_Messages: Tl3ObjectRefList;
  f_TryCount: Integer;
  function pm_GetCount: Integer;
  function pm_GetHaveMessages: Boolean;
  function pm_GetMessages(Index: Integer): TddClientMessage;

 protected
  procedure Cleanup; override;

 public
  constructor Create(aOwner: TObject); reintroduce;
  constructor Make(aClientID: TCsClientId);
  procedure AddMessage(aMessage: TddClientMessage);
  procedure ClearMessages;
  procedure LoadFromStream(aStream: TStream);
  procedure Messages2Log;
  procedure SaveToStream(aStream: TStream);
  procedure WriteMessages(aDataPipe: TcsDataPipe);
  property ClientID: TcsClientID read f_ClientID write f_ClientID;
  property Count: Integer read pm_GetCount;
  property HaveMessages: Boolean read pm_GetHaveMessages;
  property Messages[Index: Integer]: TddClientMessage read pm_GetMessages;
  property TryCount: Integer read f_TryCount write f_TryCount;
 end;

 TcsMessageManager = class(Tl3Base)
 private
  f_CS: TCriticalSection;
  f_CSServer: TcsServer;
  f_FileName: AnsiString;
  f_LogMessages: Boolean;
  f_maxTryCount: Integer;
  f_NotifyList: Tl3ObjectRefList;
  function FindRecipient(aClientID: TCsClientId): TcsMessageRecepient;
  procedure MarkRecepientAsDead(aRecepient: TcsMessageRecepient);
  procedure pm_SetCSServer(const Value: TcsServer);
  procedure _SendOne(aClientID: Integer; aMessage: TddClientMessage);
 protected
  procedure Cleanup; override;
 public
  constructor Create(aOwner: TObject; aFileName: AnsiString); reintroduce;
  procedure cs_GetMyMessagesReply(aPipe: TCSDataPipe);
  function GetRecepient(aClientID: TCsClientId): TcsMessageRecepient;
  procedure DropAllMessagesForUser(aRecepient: TCsClientId);
  procedure LoadMessages;
  procedure ProcessList;
  procedure SaveMessages;
  procedure SendMessage(aClientID: TCsClientId; aMessage: TddClientMessage; ExcludeID : Integer = -1);
  procedure SendNotify(aClientId: TCsClientId; aType: TCsNotificationType; aNumber: Integer; const aText: AnsiString;
      ExcludeID: Integer = -1);
  procedure SendTextMessage(aClientID: TCsClientId; aMessage: AnsiString; aPriority: Integer = 0);
  property CSServer: TcsServer read f_CSServer write pm_SetCSServer;
  property maxTryCount: Integer read f_maxTryCount write f_maxTryCount;
 published
  property LogMessages: Boolean read f_LogMessages write f_LogMessages;
 end;


implementation

uses
 csQueryTypes, CsNotifier,
 l3Stream, l3Memory,
dt_UserConst,
 SysUtils,
 l3LongintList
 , TypInfo;

constructor TcsMessageManager.Create(aOwner: TObject; aFileName: AnsiString);
begin
 inherited Create(nil);
 f_CS := TCriticalSection.Create;
 f_NotifyList := Tl3ObjectRefList.Make;
 f_FileName := aFileName;
 f_MaxTryCount := 120;
 LogMessages:= False;
 LoadMessages;
end;

procedure TcsMessageManager.Cleanup;
begin
 SaveMessages;
 l3Free(f_NotifyList);
 l3Free(f_CS);
 inherited;
end;

procedure TcsMessageManager.cs_GetMyMessagesReply(aPipe: TCSDataPipe);
var
 l_ClientID: Integer;
 l_Recepient: TcsMessageRecepient;
begin
 f_CS.Acquire;
 try
  l_ClientID := aPipe.ReadInteger;
  l_Recepient:= GetRecepient(l_ClientID);
  if LogMessages then
  begin
   l3System.Msg2Log('Отправка %d сообщений:', [l_Recepient.Count]);
   l_Recepient.Messages2Log;
  end; // LogMessages
  l_Recepient.WriteMessages(aPipe);
 finally
  f_CS.Leave;
 end;
end;

function TcsMessageManager.FindRecipient(aClientID: TCsClientId): TcsMessageRecepient;
var
 i: Integer;
begin
 Result := nil;
 for i := 0 to f_NotifyList.Hi do
 begin
  if TcsMessageRecepient(f_NotifyList.Items[i]).ClientID = aClientID then
  begin
   Result := TcsMessageRecepient(f_NotifyList.Items[i]);
   break;
  end;
 end;
end;

function TcsMessageManager.GetRecepient(aClientID: TCsClientId): TcsMessageRecepient;
var
 l_MR: TcsMessageRecepient;
begin
 Result := FindRecipient(aClientID);
 if Result = nil then
 begin
  l_MR:= TcsMessageRecepient.make(aClientID);
  try
   Result := TcsMessageRecepient(f_NotifyList.Items[f_NotifyList.Add(l_MR)]);
  finally
   l3Free(l_MR);
  end;
 end;
end;

procedure TcsMessageManager.LoadMessages;
var
 l_Count, i: Integer;
 l_Stream: TStream;
 l_Mr: TcsMessageRecepient;
begin
 if FileExists(f_FileName) then
 begin
  f_NotifyList.Clear;
  l_Stream := Tl3FileStream.Create(f_FileName, l3_fmRead);
  try
   if l_Stream.Size > SizeOf(Integer) then
   begin
    l_Stream.ReadBuffer(l_Count, SizeOf(Integer));
    for i:= 0 to Pred(l_Count) do
    begin
     l_MR := TcsMessageRecepient.Create(nil);
     try
      l_MR.LoadFromStream(l_Stream);
      if l_MR.HaveMessages then
       f_NotifyList.Add(l_MR);
     finally
      l3Free(l_MR);
     end;
    end; // for i
   end; // l_Stream.Size > SizeOf(Integer)
  finally
   l3Free(l_Stream);
  end; // try..finally
 end; // FileExists(f_FileName)
end;

procedure TcsMessageManager.MarkRecepientAsDead(aRecepient: TcsMessageRecepient);
begin
 // пока сбрасываем все сообщения для мертвых пользователей, потом можно будет придумать что-нибудь похитрее
 // Вываливаем в лог недоставленные сообщения
 l3System.Msg2Log('Удаляются сообщения для пользователя %d', [aRecepient.ClientID]);
 aRecepient.Messages2Log;
 aRecepient.ClearMessages;
end;

procedure TcsMessageManager.DropAllMessagesForUser(aRecepient: TCsClientId);
var
 l_MR: TcsMessageRecepient;
begin
 l_MR := FindRecipient(aRecepient);
 if l_MR <> nil then
  MarkRecepientAsDead(l_MR);
end;

procedure TcsMessageManager.pm_SetCSServer(const Value: TcsServer);
begin
 if f_CSServer <> Value then
 begin
  f_CSServer := Value;
  f_CSServer.RegisterReplyProcedure(qtGetMymessages, cs_GetMyMessagesReply);
 end; // f_CSServer <> Value
end;

procedure TcsMessageManager.ProcessList;
var
 i: Integer;
 l_MR: TcsMessageRecepient;
begin
 // перебрать всех клиентов, послать им нотификацию
 Assert(CSServer <> nil, 'Для работы нужно присвоить CSServer');
 for i:= 0 to f_NotifyList.Hi do
 begin
  l_MR := TcsMessageRecepient(f_NotifyList.Items[i]);
  if l_MR.HaveMessages then
  begin
   if CSServer.ActiveClients.IsLogged(l_MR.ClientID) then
   begin
    if l_MR.TryCount < MaxTryCount then
    begin
     CSServer.Notifier.SendNotify(l_MR.ClientID, ntHaveNewMessages, l_MR.Count, '');
     l_MR.TryCount := l_MR.TryCount + 1;
    end
    else // повторяем попытки пять минут
     MarkRecepientAsDead(l_MR); // Клиент не реагирует на запросы сервера, пометить как "мертвого"
   end
   else
    MarkRecepientAsDead(l_MR); // Клиент отлогинился, пометить как "мертвого"
  end; // l_MR.HaveMessages
 end; // for i
end;

procedure TcsMessageManager.SaveMessages;
var
 l_Count, i: Integer;
 l_Stream: TStream;
begin
  l_Stream := Tl3FileStream.Create(f_FileName, l3_fmWrite);
  try
   l_Count:= f_NotifyList.Count;
   l_Stream.WriteBuffer(l_Count, SizeOf(Integer));
   for i:= 0 to Pred(l_Count) do
    TcsMessageRecepient(f_NotifyList.Items[i]).SaveToStream(l_Stream);
  finally
   l3Free(l_Stream);
  end;
end;

procedure TcsMessageManager.SendMessage(aClientID: TCsClientId; aMessage: TddClientMessage; ExcludeID : Integer = -1);
var
 i: Integer;
 l_List : Tl3LongintList;
begin
 f_CS.Acquire;
 try
  if aClientID = c_AllClients then
  begin
   l_List := Tl3LongintList.make;
   try
    CSServer.ActiveClients.AllClientIds(l_List);
    for i:= 0 to l_List.Hi do
     if l_List.Items[i] <> ExcludeID then
      _SendOne(l_List.Items[i], aMessage);
   finally
    l3Free(l_List);
   end;
  end
  else
   _SendOne(aClientID, aMessage);
  SaveMessages; 
 finally
  f_CS.Leave;
 end;
end;

procedure TcsMessageManager.SendNotify(aClientId: TCsClientId; aType: TCsNotificationType; aNumber: Integer; const
    aText: AnsiString; ExcludeID: Integer = -1);
var
 l_Msg : TddClientMessage;
begin
 if (aClientID <> ExcludeID) then
 begin
  l_Msg := TddClientMessage.Create(nil, usServerService);
  try
   l_Msg.Data := aNumber;
   l_Msg.NotifyType := aType;
   l_Msg.Text := aText;
   SendMessage(aClientID, l_Msg, ExcludeID);
  finally
   l3free(l_Msg);
  end;
 end;
end;

procedure TcsMessageManager._SendOne(aClientID: Integer; aMessage: TddClientMessage);
begin
 // Добавляем в список к конкретному пользователю новое сообщение, отсылаем ему нотификацию
 GetRecepient(aClientID).AddMessage(aMessage);
 if LogMessages then
  l3System.Msg2Log('Отправка уведомления %d про %s', [aClientID, GetEnumName(TypeInfo(TCsNotificationType), ord(aMessage.NotifyType))]);
 CSServer.Notifier.SendNotify(aClientID, ntHaveNewMessages, GetRecepient(aClientID).Count, '');
end;

procedure TcsMessageManager.SendTextMessage(aClientID: TCsClientId; aMessage: AnsiString; aPriority: Integer = 0);
begin
 SendNotify(aClientID, ntInformation, aPriority, aMessage);
end;



constructor TcsMessageRecepient.Create(aOwner: TObject);
begin
 inherited Create(nil);
 f_Messages := Tl3ObjectRefList.MakeSorted;
end;

constructor TcsMessageRecepient.Make(aClientID: TCsClientId);
begin
 Create(nil);
 f_ClientID := aClientID;
end;

procedure TcsMessageRecepient.AddMessage(aMessage: TddClientMessage);
begin
 if f_Messages.Count = 0 then
  f_TryCount := 0;
 aMessage.UserID := ClientID;
 f_Messages.add(aMessage);
end;

procedure TcsMessageRecepient.Cleanup;
begin
 l3Free(f_Messages);
 inherited;
end;

procedure TcsMessageRecepient.ClearMessages;
begin
 f_Messages.Clear;
 f_TryCount := 0;
// l3System.Stack2Log('Ощищен список сообщений');
end;

procedure TcsMessageRecepient.LoadFromStream(aStream: TStream);
var
 l_Count, i: Integer;
 l_Message: TddClientMessage;
begin
 ClearMessages;
 with aStream do
 begin
  if (Size-Position) >= 2*SizeOf(l_Count) then
  begin
   Read(f_ClientID, SizeOf(f_ClientID));
   Read(l_Count, SizeOf(l_Count));
   if l_Count < 10000 then
    for i:= 0 to Pred(l_Count) do
    begin
     l_Message := TddClientMessage.Create(nil, usServerService);
     try
      l_Message.LoadFrom(aStream, True);
      f_Messages.Add(l_Message);
     finally
      l3Free(l_Message);
     end;
    end; // for i
  end; // (Size-Position) >= SizeOf(l_Count)
 end; // with aStream
end;

procedure TcsMessageRecepient.Messages2Log;
var
 i: Integer;
begin
 for i:= 0 to f_Messages.Hi do
  with  TddClientMessage(f_Messages.Items[i]) do
  l3System.Msg2Log(' %s (Data: %d, Text: "%s")', [GetEnumName(TypeInfo(TCsNotificationType), ord(NotifyType)), Data, Text]);
end;

function TcsMessageRecepient.pm_GetCount: Integer;
begin
 Result := f_Messages.Count;
end;

function TcsMessageRecepient.pm_GetHaveMessages: Boolean;
begin
 Result := f_Messages.Count > 0;
end;

function TcsMessageRecepient.pm_GetMessages(Index: Integer): TddClientMessage;
begin
 Result := TddClientMessage(f_Messages.Items[Index]);
end;

procedure TcsMessageRecepient.SaveToStream(aStream: TStream);
var
 l_Count, i: Integer;
begin
 with aStream do
 begin
  Write(f_ClientID, SizeOf(f_ClientID));
  l_Count := f_Messages.Count;
  Write(l_Count, SizeOf(l_Count));
  for i:= 0 to f_Messages.Hi do
   TddClientMessage(f_Messages.Items[i]).SaveTo(aStream, True);
 end; // with aStream
end;

procedure TcsMessageRecepient.WriteMessages(aDataPipe: TcsDataPipe);
var
 i: Integer;
 l_Stream: TStream;
begin
 l_Stream := Tl3memoryStream.Create;
 try
  SaveToStream(l_Stream);
  ClearMessages;
  l_Stream.Seek(0, 0);
  aDataPipe.Write(l_Stream, l_Stream.Size);
 finally
  l3Free(l_Stream);
 end;
 
 f_TryCount := 0;
end;

function TddClientMessage.OCompare(anObject: TObject): Long;
begin
  if (anObject is TddClientMessage) then
  begin
   if (Data = TddClientMessage(anObject).Data) and
      (NotifyType = TddClientMessage(anObject).NotifyType) and
      (Text = TddClientMessage(anObject).Text) then
    Result := 0
   else
    Result := 1;
  end
  else
   inherited OCompare(anObject);

end;

procedure TddClientMessage.FromPipe(aDataPipe: TcsDataPipe);
begin
 with aDataPipe do
 begin
  f_NotifyType := TCsNotificationType(ReadInteger);
  f_Data := ReadInteger;
  f_Text := ReadStr;
 end;
end;

procedure TddClientMessage.LoadFrom(aStream: TStream; aIsPipe: Boolean);
var
 l_N: Integer;
begin
 inherited;
 with aStream do
 begin
  Read(l_N, SizeOf(Integer));
  f_NotifyType := TCsNotificationType(l_N);
  Read(f_Data, SizeOf(f_Data));
  ReadString(aStream, f_Text);
 end; // with aStream
end;

procedure TddClientMessage.SaveTo(aStream: TStream; aIsPipe: Boolean);
var
 l_N: Integer;
begin
 inherited;
 with aStream do
 begin
  l_N := Ord(f_NotifyType);
  Write(l_N, SizeOf(Integer));
  Write(f_Data, SizeOf(f_Data));
  WriteString(aStream, f_Text);
 end; // with aStream
end;


end.
