unit Dt_ServerService;

{ $Id: Dt_ServerService.pas,v 1.63 2010/09/28 13:06:09 fireton Exp $ }

// $Log: Dt_ServerService.pas,v $
// Revision 1.63  2010/09/28 13:06:09  fireton
// - Распределяем память для PChar своими средствами
//
// Revision 1.62  2007/11/26 09:35:59  voba
// - use cUndefDictID, cUndefDocID, cUndefSubID
//
// Revision 1.61  2007/08/14 19:31:56  lulin
// - оптимизируем очистку памяти.
//
// Revision 1.60  2007/08/14 14:30:08  lulin
// - оптимизируем перемещение блоков памяти.
//
// Revision 1.59  2006/10/04 08:37:43  voba
// - remove tdSingle
//
// Revision 1.58  2006/06/08 15:54:46  fireton
// - подготовка к переходу на большой User ID
//
// Revision 1.57.18.1  2006/06/08 09:08:02  fireton
// - перевод User ID на Longword
//
// Revision 1.57  2005/12/23 10:37:46  step
// переименование Host --> Station
//
// Revision 1.56  2005/11/15 12:46:45  step
// добавлен  вывод отладочного сообщения в лог
//
// Revision 1.55  2005/10/07 10:16:34  step
// в методе TServerServiceMessenger.ReciveGetActiveUsersList убран assert
//
// Revision 1.54  2005/09/21 08:05:05  step
// слияние с веткой B_UPDATE_INDY_TO_10_1_1
//
// Revision 1.53  2005/09/05 13:13:58  voba
// no message
//
// Revision 1.52  2005/09/02 12:28:08  narry
// - update: замена директивы компилятора
//
// Revision 1.51  2005/09/01 14:19:37  narry
// - new: приоритет задания на импорт
//
// Revision 1.50.4.1  2005/08/15 15:44:26  step
// подгонка под новую библиотеку Indy
//
// Revision 1.50  2005/07/01 15:59:25  step
// поправлена TServerServiceMessenger.SendImportNotifyMessage
//
// Revision 1.49  2005/06/24 18:09:27  step
// исправлена TServerServiceMessenger.SendImportNotifyMessage
//
// Revision 1.48  2005/06/24 09:56:43  step
// отправка текстовых сообщений - рефакторинг
//
// Revision 1.47  2005/06/23 11:44:07  step
// новый адрес широковещательной рассылки: c_AllStations
//
// Revision 1.46  2005/06/23 08:35:55  step
// переименование SendMessage --> SendNetMessage (во избежание путаницы)
//
// Revision 1.45  2005/06/22 15:28:39  step
// широковещательную отправку сообщения заменяем на отправку по адресу '' ,
// замена GlobalHTServer.SendServ.SendMessage --> GlobalHTServer.SendMessage
//
// Revision 1.44  2005/06/22 14:14:24  step
// исправлена ошибка приводившая к широковещательной рассылке вместо адресной, в случае когда адресат вышел их архивариуса
//
// Revision 1.43  2005/06/16 12:29:26  step
// слияние с веткой b_use_net_comm
//
// Revision 1.42.2.1  2005/06/07 16:42:56  step
// отказ от использования "старых" сокетов
//
// Revision 1.42  2005/05/18 09:46:21  narry
// - bug fix: обработка исключения при невозможности получения IP-адреса пользователя
//
// Revision 1.41  2005/05/03 14:21:11  narry
// - bug fix: неправильная упаковка параметров сообщения
//
// Revision 1.40  2005/03/24 12:15:07  narry
// - изменение формата сообщения об экспорте аннотаций
//
// Revision 1.39  2005/03/23 10:28:16  narry
// - добавлена отправка номера пользователя, инициировавшего экспорт аннотаций
//
// Revision 1.38  2005/03/14 14:01:45  narry
// - update: поддержка пользовательского импорта сторонних аннотаций
//
// Revision 1.37  2005/03/14 11:08:33  narry
// - update: экспорт аннотаций
//
// Revision 1.36  2005/03/11 16:40:01  narry
// - update: поддержка "большой красной кнопки" (экспорт специальных аннотаций)
//
// Revision 1.35  2005/03/02 16:24:22  narry
// - обновление: подготовка к разрешению пользователям импортировать подключенные документы
//
// Revision 1.34  2004/08/03 08:52:49  step
// замена dt_def.pas на DtDefine.inc
//
// Revision 1.33  2004/03/05 16:56:45  step
// чистка кода
//
// Revision 1.32  2004/01/28 16:09:28  narry
// - update
//
// Revision 1.31  2003/12/18 09:02:47  voba
// - bug fix
//
// Revision 1.30  2003/12/17 11:27:01  narry
// - add: расширение списка параметров сообщения на импорт - отслеживание Группы Доступа "Передано в регионы"
//
// Revision 1.29  2003/11/19 17:05:30  narry
// - add: процедура отправления сообщения об автоматическом выходе
//
// Revision 1.28  2003/01/17 14:13:08  demon
// - new behavior: изменен принцип нотификации об изменении словарей.
// Теперь все централизовано и сообщение получает только DictServer, а все кому нужна дополнительная
// нотификация должны зарегистрироваться на нем.
//
// Revision 1.27  2002/11/21 17:14:55  law
// - bug fix: неправильно обрабатывалась директива MonoUser.
//
// Revision 1.26  2002/05/20 11:41:37  law
// - new behavior: берем время перед самой посылкой.
//
// Revision 1.25  2002/05/17 08:29:11  law
// - bug fix: ошибки при посылке времени.
//
// Revision 1.24  2002/05/15 14:47:20  narry
// - bug fix: куча разных ошибок при рассылке сообщений и закрытии сеанса.
//
// Revision 1.23  2002/05/15 13:48:23  law
// - new unit: DT_AsyncBroadcast.
//
// Revision 1.22  2001/10/22 08:50:15  demon
// new behavior: change params and types in Remote Export procedures
//
// Revision 1.21  2001/10/04 07:39:52  demon
// - new behavior: changed export mechanizm throu server
//
// Revision 1.20  2001/03/01 11:44:46  demon
// - add feature of getting User Active list through Server
//
// Revision 1.19  2001/01/03 14:33:50  demon
// bug fix
//
// Revision 1.18  2001/01/03 14:14:50  demon
// Add function SendTextMessageToUser
//
// Revision 1.17  2000/12/15 15:36:17  law
// - вставлены директивы Log.
//

{$I DtDefine.inc}

interface
uses
 l3Base, l3Date,
 Dt_Types, Dt_EFltr, Dt_IFltr;

type
 TServerServiceMessenger = class(Tl3Base)
  private
   fAutoAnnotationExportNotify: TAutoAnnotationExportNotify;
   fAutoImportNotify : TAutoImportNotify;
   fAutoExportNotify : TAutoExportNotify;
  public
   function  IsEnable : Boolean;

   (* Function for Auto Import procedure *)
   procedure SendImportNotifyMessage(const Catalog : string; const IsReg: Boolean
       = False; isAnnotation : Boolean = False; const DeleteIncluded : Boolean =
       False; Priority : Longint = 50);
   procedure ReceiveImportNotifyMessage(aMessage : PChar);

   procedure SendDoneImportMessage(aUserID: TUserID;
                                   const aMessage: string = 'Импорт успешно завершен!');

   (* Function for Auto Export procedure *)
   procedure SendExportNotifyMessage(aExpType : TDiapType;
                                     const aData : LongInt;
                                     aParam : TExpQueryRec); overload;

   procedure SendExportNotifyMessage(aExpType : TDiapType;
                                     const aData : string;
                                     aParam : TExpQueryRec); overload;

   procedure SendAnnotationExportNotifyMessage(AnnoDate: TstDate);

   procedure ReceiveAnnotationExportNotifyMessage(aMessage : PChar);

   procedure ReceiveExportNotifyMessage(aMessage : PChar);

   procedure SendDoneExportMessage(UserID : TUserID);

   (* Functions for retranslation of messages to all active Users *)
   procedure SendBroadcastMessage(aMessage : PChar;aMessLen : Word);
   procedure ReceiveBroadcastMessage(aMessage : PChar;aMessLen : Word);

   (* Send text message to user or All Users if UserID = 0 *)
   procedure SendTextMessageToUser(aUserID: TUserID; const aText: string);

   (* Procedures for geting Active Users list through Server *)
   procedure ReciveGetActiveUsersList(aMessage : PChar);
   procedure SendGetActiveUsersList(UserID : TUserID);

   procedure SendAutoLogoffMessage(const UserID : TUserID = 0);

   property  AutoImportNotify : TAutoImportNotify
    read fAutoImportNotify
    write fAutoImportNotify;
   property  AutoExportNotify : TAutoExportNotify
    read fAutoExportNotify
    write fAutoExportNotify;
   property AutoAnnotationExportNotify : TAutoAnnotationExportNotify
    read fAutoAnnotationExportNotify
    write fAutoAnnotationExportNotify;
 end;

const
  ServerServiceMessenger : TServerServiceMessenger = nil;

implementation
uses Dt_Const,Dt_Serv,Dt_NetUs,{$IFNDEF MonoUser}DT_Conn,{$ENDIF}SysUtils,Dt_User,l3Datlst,Windows,
     Dt_Dict, Dt_NetCommSup;

(********************* TServerServiceMessenger **********************)

function TServerServiceMessenger.IsEnable : Boolean;
var
 TmpStr : ShortString;
begin
 Result:=False;
 {$IFNDEF MonoUser}
 if GlobalHTServer.SendServ <> nil then
  begin
   TmpStr:=StationJornal.GetHostName(usServerService);
   Result:=TmpStr <> '';
  end;
 {$ENDIF}
end;

type
 PAnnoRec = ^TAnnoRec;
 TAnnoRec = record
  UserID  : TUserID;
  AnnoDate: TstDate;
 end;

procedure TServerServiceMessenger.ReceiveAnnotationExportNotifyMessage(aMessage : PChar);
var
 l_Rec : PAnnoRec;
begin
 if Assigned(fAutoAnnotationExportNotify) then
 begin
  l_Rec := PAnnoRec(aMessage);
  fAutoAnnotationExportNotify(l_Rec^.UserID, l_Rec^.AnnoDate);
 end; // Assigned(fAutoAnnotationExportNotify)
end;

procedure TServerServiceMessenger.SendImportNotifyMessage(const Catalog :
    string; const IsReg: Boolean = False; isAnnotation : Boolean = False; const
    DeleteIncluded : Boolean = False; Priority : Longint = 50);
var
 l_Catalog   : ShortString;
 TmpStr      : ShortString;
 TmpPos,
 TmpMessage  : PChar;
 TmpLen      : Word;
 {$IFNDEF NotImportTaskPriority}
 l_Params : TImportParams;
 {$ENDIF}
begin
 {$IFNDEF MonoUser}
 if GlobalHTServer.SendServ <> nil then
  begin
   TmpStr:=StationJornal.GetStationName(usServerService);
   if TmpStr <> '' then
    begin
     {$IFNDEF NotImportTaskPriority}
     TmpLen:=msPrefLength+SizeOf(TUserID)+SizeOf(TImportParams);
     TmpMessage := l3StrAlloc(TmpLen);
     try
      l3FillChar(TmpMessage^,TmpLen,#0);
      l3Move(msAutoImport,TmpMessage^,msPrefLength);
      TmpPos:=TmpMessage+msPrefLength;
      l3Move(GlobalHTServer.CurUserID,TmpPos^,SizeOf(TUserID));
      TmpPos:= TmpPos+SizeOf(TUserID);
      l3FillChar(l_Params, SizeOf(l_Params), #0);
      l_Params.IsReg := IsReg;
      l_Params.Folder := Catalog;
      l_Params.IsAnnotation := IsAnnotation;
      l_Params.DeleteIncluded := DeleteIncluded;
      l_Params.TaskPriority := Priority;
      l3Move(l_Params, TmpPos^, SizeOf(l_Params));
      GlobalHTServer.SendNetMessage(TmpStr, TmpMessage, TmpLen);
     finally
      l3StrDispose(TmpMessage);
     end;
     {$ELSE}
     TmpLen:=msPrefLength+SizeOf(TUserID)+SizeOf(Boolean)+SizeOf(ShortString)+SizeOf(Boolean)+SizeOf(Boolean);
     TmpMessage := l3StrAlloc(TmpLen);
     try
      l3FillChar(TmpMessage^,TmpLen,#0);
      l3Move(msAutoImport,TmpMessage^,msPrefLength);
      TmpPos:=TmpMessage+msPrefLength;
      l3Move(GlobalHTServer.CurUserID,TmpPos^,SizeOf(TUserID));
      TmpPos:= TmpPos+SizeOf(TUserID);
      l3Move(IsReg,TmpPos^,SizeOf(Boolean));
      TmpPos:=TmpPos+SizeOf(Boolean);
      l_Catalog := Catalog;
      l3Move(l_Catalog, TmpPos^, SizeOf(ShortString));
      TmpPos := TmpPos + SizeOf(ShortString);
      l3Move(DeleteIncluded, TmpPos^, SizeOf(Boolean));
      TmpPos := TmpPos + SizeOf(Boolean);
      l3Move(IsAnnotation, TmpPos^, SizeOf(Boolean));
      GlobalHTServer.SendNetMessage(TmpStr, TmpMessage, TmpLen);
     finally
      l3StrDispose(TmpMessage);
     end;
     {$ENDIF}
    end;
   end;
 {$ENDIF}
end;

procedure TServerServiceMessenger.ReceiveImportNotifyMessage(aMessage : PChar);
var
 CurUser       : TUserID;
 {$IFNDEF NotImportTaskPriority}
 l_Params : TImportParams;
 {$ELSE}
 IsReg         : Boolean;
 CurCatalog    : ShortString;
 IsAnnotation  : Boolean;
 DeleteIncluded: Boolean;
 {$ENDIF}
begin
 if Assigned(fAutoImportNotify) then
  begin
   CurUser:=PUserID(aMessage)^;
   {$IFNDEF NotImportTaskPriority}
   l_Params := PImportParams(aMessage+SizeOf(TUserID))^;
   fAutoImportNotify(CurUser, l_Params);
   {$ELSE}
   IsReg:= PBoolean(aMessage+SizeOf(TUserID))^;
   l3Move((aMessage+SizeOf(TUserID)+SizeOf(Boolean))^ , CurCatalog, SizeOf(ShortString));
   DeleteIncluded := PBoolean(aMessage+SizeOf(TUserID)+SizeOf(Boolean)+SizeOf(ShortString))^;
   IsAnnotation := PBoolean(aMessage+SizeOf(TUserID)+SizeOf(Boolean)+SizeOf(ShortString) + SizeOf(Boolean))^;
   fAutoImportNotify(CurUser, IsReg, CurCatalog, IsAnnotation, DeleteIncluded);
   {$ENDIF}
  end;
end;

procedure TServerServiceMessenger.SendDoneImportMessage(aUserID: TUserID;
                                                        const aMessage: string = 'Импорт успешно завершен!');
begin
 SendTextMessageToUser(aUserID, aMessage);
end;

procedure TServerServiceMessenger.SendExportNotifyMessage(aExpType : TDiapType;
                                                          const aData : LongInt;
                                                          aParam : TExpQueryRec);
var
 TmpStr      : ShortString;
 TmpPos,
 TmpMessage  : PChar;
 TmpLen      : Word;
begin
 {$IFNDEF MonoUser}
 if GlobalHTServer.SendServ <> nil then
  begin
   TmpStr:=StationJornal.GetStationName(usServerService);
   if TmpStr <> '' then
    begin
     TmpLen:=msPrefLength+SizeOf(TUserID)+SizeOf(TDiapType)+SizeOf(LongInt)+SizeOf(TExpQueryRec);
     TmpMessage := l3StrAlloc(TmpLen);
     try
      l3FillChar(TmpMessage^,TmpLen,#0);
      l3Move(msAutoExport,TmpMessage^,msPrefLength);
      TmpPos:=TmpMessage+msPrefLength;
      l3Move(GlobalHTServer.CurUserID,TmpPos^,SizeOf(TUserID));
      TmpPos:=TmpPos+SizeOf(TUserID);
      l3Move(aExpType,TmpPos^,SizeOf(TDiapType));
      TmpPos:=TmpPos+SizeOf(TDiapType);
      l3Move(aData,TmpPos^,SizeOf(LongInt));
      TmpPos:=TmpPos+SizeOf(LongInt);
      l3Move(aParam,TmpPos^,SizeOf(TExpQueryRec));
      GlobalHTServer.SendNetMessage(TmpStr,TmpMessage,TmpLen);
     finally
      l3StrDispose(TmpMessage);
     end;
    end;
   end;
 {$ENDIF}
end;

procedure TServerServiceMessenger.SendExportNotifyMessage(aExpType : TDiapType;
                                                          const aData : string;
                                                          aParam : TExpQueryRec);
var
 TmpStr      : ShortString;
 TmpPos,
 TmpMessage  : PChar;
 TmpLen      : Word;
begin
 {$IFNDEF MonoUser}
 if GlobalHTServer.SendServ <> nil then
  begin
   TmpStr:=StationJornal.GetStationName(usServerService);
   if TmpStr <> '' then
    begin
     TmpLen:=msPrefLength+SizeOf(TUserID)+SizeOf(TDiapType)+Length(aData)+1+SizeOf(TExpQueryRec);
     TmpMessage := l3StrAlloc(TmpLen);
     try
      l3FillChar(TmpMessage^,TmpLen,#0);
      l3Move(msAutoExport,TmpMessage^,msPrefLength);
      TmpPos:=TmpMessage+msPrefLength;
      l3Move(GlobalHTServer.CurUserID,TmpPos^,SizeOf(TUserID));
      TmpPos:=TmpPos+SizeOf(TUserID);
      l3Move(aExpType,TmpPos^,SizeOf(TDiapType));
      TmpPos:=TmpPos+SizeOf(TDiapType);
      l3Move(PChar(aData)^,TmpPos^,Length(aData));
      TmpPos:=TmpPos+Length(aData)+1;
      l3Move(aParam,TmpPos^,SizeOf(TExpQueryRec));
      GlobalHTServer.SendNetMessage(TmpStr,TmpMessage,TmpLen);
     finally
      l3StrDispose(TmpMessage);
     end;
    end;
   end;
 {$ENDIF}
end;

procedure TServerServiceMessenger.ReceiveExportNotifyMessage(aMessage : PChar);
var
 CurUser    : TUserID;
 CurType    : TDiapType;
 LIData     : LongInt;
 StrData    : string;
 CurParam   : TExpQueryRec;
 TmpPos     : PChar;
begin
 if Assigned(fAutoExportNotify) then
  begin
   tmpPos:=aMessage;
   CurUser:=PUserID(tmpPos)^;
   tmpPos:=tmpPos+SizeOf(TUserID);
   CurType:=PDiapType(tmpPos)^;
   tmpPos:=tmpPos+SizeOf(TDiapType);
   if CurType in [tdGroup,tdAll] then
    begin
     LIData:=PLongInt(tmpPos)^;
     tmpPos:=tmpPos+SizeOf(LongInt);
     CurParam:=PExpQueryRec(tmpPos)^;
     fAutoExportNotify(CurUser,CurType,LIData,'',CurParam);
    end
   else
    begin
     StrData:=StrPas(tmpPos);
     tmpPos:=tmpPos+Length(strData)+1;
     CurParam:=PExpQueryRec(tmpPos)^;
     fAutoExportNotify(CurUser,CurType,cUndefDocID,StrData,CurParam);
    end;
  end;
end;

procedure TServerServiceMessenger.SendDoneExportMessage(UserID : TUserID);
var
 TmpStr      : ShortString;
 TmpMessage  : PChar;
 MsgLen      : Word;
begin
 {$IFNDEF MonoUser}
 if GlobalHTServer.SendServ <> nil then
  begin
   TmpStr:=StationJornal.GetStationName(UserID);
   if TmpStr <> '' then
    begin
     MsgLen:=msPrefLength;
     TmpMessage := l3StrAlloc(MsgLen);
     try
      l3FillChar(TmpMessage^,MsgLen,#0);
      l3Move(msExportDone,TmpMessage^,msPrefLength);

      GlobalHTServer.SendNetMessage(TmpStr,TmpMessage,MsgLen);
     finally
      l3StrDispose(TmpMessage);
     end;
    end;
   end;
 {$ENDIF}
end;

procedure TServerServiceMessenger.SendBroadcastMessage(aMessage : PChar;aMessLen : Word);
var
 l_Server: ShortString;
 TmpPos,
 TmpMessage  : PChar;
 TmpLen      : Word;
begin
 {$IFNDEF MonoUser}
 if GlobalHTServer.SendServ <> nil then
 begin
  GlobalHTServer.SendServ.SendNetMessage(c_AllStations, PByte(aMessage), aMessLen);
{
  l_Server := StationJornal.GetHostName(usServerService);
  if l_Server <> '' then
  begin
   TmpLen:=msPrefLength+SizeOf(THostID)+aMessLen+1;
   TmpMessage := l3StrAlloc(TmpLen);
   try
    l3FillChar(TmpMessage^,TmpLen,#0);
    l3Move(msBroadcast,TmpMessage^,msPrefLength);
    TmpPos:=TmpMessage+msPrefLength;
    l3Move(StationJornal.CurHostArr,TmpPos^,SizeOf(THostID));
    TmpPos:=TmpPos+SizeOf(THostID);
    l3Move(aMessage^,TmpPos^,aMessLen);
    GlobalHTServer.SendMessageToAllUsers(TmpMessage,TmpLen, False);
   finally
    l3StrDispose(TmpMessage);
   end;
  end;
}
 end;
 {$ENDIF}
end;

procedure TServerServiceMessenger.ReceiveBroadcastMessage(aMessage : PChar;aMessLen : Word);
begin
 {$IFNDEF MonoUser}
 if SendServer is TServerSender then
  (SendServer as TServerSender).Broadcast(PByte(aMessage + SizeOf(THostID)),
                                          aMessLen - SizeOf(THostID),
                                          PHostID(aMessage));
 {$ENDIF}
end;

procedure TServerServiceMessenger.SendAutoLogoffMessage(const UserID : TUserID = 0);
var
 I         : LongInt;
 lStations : Tl3StringDataList;
 l_Station : ShortString;
 lPos,
 lMessage  : PChar;
 lLen      : Word;
begin
 {$IFNDEF MonoUser}
 if GlobalHTServer.SendServ <> nil then
  begin
   lLen:=msPrefLength;
   lMessage := l3StrAlloc(lLen);
   try
    l3FillChar(lMessage^,lLen,#0);
    l3Move(msAutoLogoff,lMessage^,msPrefLength);
    if UserID = 0 then
     l_Station := c_AllStations
    else
     l_Station := StationJornal.GetStationName(UserID);
    GlobalHTServer.SendNetMessage(l_Station, lMessage, lLen);
   finally
    l3StrDispose(lMessage);
   end;
  end;
 {$ENDIF}
end;

procedure TServerServiceMessenger.SendTextMessageToUser(aUserID: TUserID; const aText: string);
var
 l_Station: string;
 l_Message: PChar;
 l_Len: Word;
begin
 {$IFNDEF MonoUser}
 if GlobalHTServer.SendServ <> nil then
 begin
  if aUserID = 0 then
   l_Station := c_AllStations
  else
   l_Station := StationJornal.GetStationName(aUserID);
  if l_Station <> '' then
  begin
   l_Len := msPrefLength + Length(aText);
   l_Message := l3StrAlloc(l_Len);
   try
    l3FillChar(l_Message^, l_Len, #0);
    l3Move( msText, l_Message^, msPrefLength);
    l3Move(aText[1], (l_Message + msPrefLength)^, Length(aText));
    GlobalHTServer.SendNetMessage(l_Station, l_Message, l_Len);
   finally
    l3StrDispose(l_Message);
   end;
  end
  else
   l3System.Msg2Log('!!! Не удалось определить адрес станции у UserId=' + IntToStr(aUserID));
 end;
 {$ENDIF}
end;

procedure TServerServiceMessenger.ReciveGetActiveUsersList(aMessage : PChar);
var
 lUsers    : Tl3LongintList;
 l_Station : ShortString;
 lPos,
 lMessage  : PChar;
 lLen      : Word;
 I         : LongInt;
begin
 {$IFNDEF MonoUser}
 if PLongArr(aMessage)^[0]<>0 then
  begin
   l_Station:=StationJornal.GetStationName(PLongArr(aMessage)^[1]);
   if l_Station <> '' then
   begin
    lUsers:=StationJornal.GetActiveUsersList;
    try
     lLen:=msPrefLength+(lUsers.Count+1)*SizeOf(LongInt);
     lMessage := l3StrAlloc(lLen);
     try
      l3FillChar(lMessage^,lLen,#0);
      l3Move(msActiveUsers,lMessage^,msPrefLength);
      lPos:=lMessage+msPrefLength;

      PLongArr(lPos)^[0]:=lUsers.Count;
      for I:=0 to lUsers.Count-1 do
       PLongArr(lPos)^[I+1]:=lUsers.Items[I];

      GlobalHTServer.SendNetMessage(l_Station,lMessage,lLen);
     finally
      l3StrDispose(lMessage);
     end;
    finally
     l3Free(lUsers);
    end;
   end; // if
  end;
 {$ENDIF}
end;

procedure TServerServiceMessenger.SendAnnotationExportNotifyMessage(AnnoDate:
    TstDate);
var
 TmpStr      : ShortString;
 TmpMessage  : PChar;
 TmpLen      : Word;
 TmpPos      : PChar;
begin
 {$IFNDEF MonoUser}
 if GlobalHTServer.SendServ <> nil then
  begin
   TmpStr:=StationJornal.GetStationName(usServerService);
   if TmpStr <> '' then
    begin
     TmpLen := msPrefLength + SizeOf(TUserID) + SizeOf(TstDate);
     TmpMessage := l3StrAlloc(TmpLen);
     try
      l3FillChar(TmpMessage^, TmpLen, #0);
      l3Move(msAutoAnno, TmpMessage^, msPrefLength);
      TmpPos := TmpMessage + msPrefLength;
      l3Move(GlobalHTServer.CurUserID, TmpPos^, SizeOf(TUserID));
      TmpPos:=TmpPos+SizeOf(TUserID);
      l3Move(AnnoDate, TmpPos^, SizeOf(TstDate));
      GlobalHTServer.SendNetMessage(TmpStr, TmpMessage, TmpLen);
     finally
      l3StrDispose(TmpMessage);
     end;
    end;
   end;
 {$ENDIF}
end;

procedure TServerServiceMessenger.SendGetActiveUsersList(UserID : TUserID);
var
 lStationName : ShortString;
 lPos,
 lMessage  : PChar;
 lLen      : Word;
begin
 {$IFNDEF MonoUser}
 if GlobalHTServer.SendServ <> nil then
  begin
   lLen:=msPrefLength+2*SizeOf(LongInt);
   lMessage := l3StrAlloc(lLen);
   try
    l3FillChar(lMessage^,lLen,#0);
    l3Move(msActiveUsers,lMessage^,msPrefLength);
    lPos:=lMessage+msPrefLength;
    PLongArr(lPos)^[0]:=1;
    PLongArr(lPos)^[1]:=UserID;

    lStationName:=StationJornal.GetStationName(usServerService);
    if lStationName <> '' then
     GlobalHTServer.SendNetMessage(lStationName,lMessage,lLen);
   finally
    l3StrDispose(lMessage);
   end;
  end;
 {$ENDIF}
end;
end.
