unit Dt_NetCommSup;

{ $Id: Dt_NetCommSup.pas,v 1.23 2013/04/24 09:35:37 lulin Exp $ }
// $Log: Dt_NetCommSup.pas,v $
// Revision 1.23  2013/04/24 09:35:37  lulin
// - портируем.
//
// Revision 1.22  2007/08/14 14:30:08  lulin
// - оптимизируем перемещение блоков пам€ти.
//
// Revision 1.21  2006/06/08 15:54:46  fireton
// - подготовка к переходу на большой User ID
//
// Revision 1.20.18.1  2006/06/08 09:08:01  fireton
// - перевод User ID на Longword
//
// Revision 1.20  2005/12/26 16:00:55  step
// ”бран адрес отправител€ из TNetMessage за ненадобностью
//
// Revision 1.19  2005/12/23 10:32:10  step
// переделки под CS
//
// Revision 1.18  2005/11/23 11:06:05  step
// добавлены login/logout
//
// Revision 1.17  2005/11/22 07:43:18  step
// сли€ние с веткой b_change_protocol
//
// Revision 1.16  2005/11/18 14:50:20  step
// new: TQueuedActions
//
// Revision 1.15.2.2  2005/11/07 16:47:23  step
// изменен TNetMessageKind
//
// Revision 1.15.2.1  2005/11/02 07:42:26  step
// произвольный выбор порта udp-server'а
//
// Revision 1.15  2005/10/21 08:05:18  step
// исправлен размер макс. длины udp сообщени€
//
// Revision 1.14  2005/10/06 09:13:29  step
// изменен c_NetCommVersion
//
// Revision 1.13  2005/10/05 07:42:11  step
// изменен c_NetCommVersion
//
// Revision 1.12  2005/10/05 06:34:52  step
// увеличены константы
//
// Revision 1.11  2005/09/27 11:08:19  step
// подправлена TNetMessage.Create
//
// Revision 1.10  2005/09/21 08:05:05  step
// сли€ние с веткой B_UPDATE_INDY_TO_10_1_1
//
// Revision 1.9.4.1  2005/08/15 15:40:35  step
// подгонка под новую библиотеку
//
// Revision 1.9  2005/07/07 16:51:01  step
// при отправке-получении файлов учитываютс€ и вложенные папки
//
// Revision 1.8  2005/07/06 10:24:04  step
// изменена константа c_NoMoreFiles
//
// Revision 1.7  2005/07/05 15:00:38  step
// увеличен таймаут на чтение (до п€ти минут)
//
// Revision 1.6  2005/07/01 09:46:02  step
// убрана отметка времени получени€
//
// Revision 1.5  2005/06/29 09:59:49  step
// увеличен таймаут на чтение
//
// Revision 1.4  2005/06/23 11:44:07  step
// новый адрес широковещательной рассылки: c_AllStations
//
// Revision 1.3  2005/06/16 16:35:26  step
// включена буферизаци€ отправл€емых данных
//
// Revision 1.2  2005/06/16 12:29:26  step
// сли€ние с веткой b_use_net_comm
//
// Revision 1.1.2.4  2005/06/08 11:31:09  step
// изменена TNetMessage.Create
//
// Revision 1.1.2.3  2005/06/06 16:06:29  step
// переименование констант
//
// Revision 1.1.2.2  2005/06/03 16:53:41  step
// расширен тип TNetMessageKind
//
// Revision 1.1.2.1  2005/06/03 13:24:37  step
// занесено в CVS
//

{$I DtDefine.inc}

interface

uses
 Windows, Messages, SysUtils, Classes,
 IdGlobal, IdIOHandler, IdWinSock2,
 l3Base,

 dt_Types;

const
 c_NetCommVersion: Integer = 7;

 c_UdpServerPortMin = 5000;
 c_UdpServerPortMax = 6000;

 c_UdpServerPort = 5128;
 c_TcpServerPort = 5129;

 c_MaxPacketSize = GSendBufferSizeDefault; // = 32*1024
 c_ClientConnectTimeout = 10 * 1000; // миллисек.
 c_ClientReadTimeout = 10 * 1000; // миллисек.
 c_MaxUdpMessageLen = SO_MAX_MSG_SIZE;

 c_TcpServerListenQueueSize = 50;
 c_TcpServerTerminateWaitTime = 60 * 1000;

 c_AllStations = '*'; // адрес дл€ широковещани€
 c_WrongClientId = MaxInt; // говорит об отказе в регистрации

type
 ENetCommError = class(Exception);
 ELoginError = class(ENetCommError);

 //TUserId = Integer;
 TNetMessageKind = (mkUnknown = 0, mkOldStyled = 1, mkText, mkImport, mkAutoImport,
                    mkAutoExport, mkUsLgIn,
                    mkExportDone, mkBroadcast, mkServerTime, mkAutoLogOff,
                    mkActiveUsers, mkAutoAnno, mkChkMl, mkUsLgOff, mkUserRequest,
                    mkDelDoc, mkClsTbl, mkOpnTbl, mkChngDt, mkServerStarted,
                    mkServerStopped, mkQueryFiles, mkQuerySystemTime, mkTask,
                    mkGoodBye, mkLogin, mkLogout, mkPassMessage);
 TServerReply = (srWelcome, srGoodbye, srNeedLogin, srWrongProtocol);

 TNetMessage = class(Tl3Base)
 private
  f_Kind: TNetMessageKind;
  f_Data: TIdBytes;
 protected
  procedure Cleanup; override;
 public
  constructor Create(aMessageKind: TNetMessageKind;
                     aData: PByte;
                     aDataLen: Integer);
  property Kind: TNetMessageKind read f_Kind;
  property Data: TIdBytes read f_Data;
 end;

const
 WM_CallAction = WM_USER + 10;

type
 TQueuedActionProc = procedure(aEventId: Integer; aData: Integer) of object;

 TQueuedActions = class(Tl3Base)
 private
  f_Handle: HWND;
  f_ActionProc: TQueuedActionProc;
  procedure WndProc(var Message: TMessage);
  procedure OnMessage(var Message: TMessage); message WM_CallAction;
 protected
  procedure Cleanup; override;
 public
  constructor Create(aActionProc: TQueuedActionProc); reintroduce;
  procedure Enqueue(aActionId: Integer = 0; aActionData: Integer = 0);
 end;

implementation

{ TNetMessage }

procedure TNetMessage.Cleanup;
begin
 f_Data := nil;

 inherited;
end;

constructor TNetMessage.Create(aMessageKind: TNetMessageKind;
                               aData: PByte;
                               aDataLen: Integer);
begin
 inherited Create;

 f_Kind := aMessageKind;
 if (aDataLen > 0) and (aData <> nil) then
 begin
  SetLength(f_Data, aDataLen);
  l3Move(aData^, f_Data[0], aDataLen);
 end;
end;

{ TQueuedActions }

procedure TQueuedActions.Cleanup;
begin
 DeallocateHWnd(f_Handle);

 inherited;
end;

constructor TQueuedActions.Create(aActionProc: TQueuedActionProc);
begin
 f_Handle := AllocateHWnd(WndProc);
 f_ActionProc := aActionProc;
end;

procedure TQueuedActions.Enqueue(aActionId: Integer = 0; aActionData: Integer = 0);
begin
 PostMessage(f_Handle, WM_CallAction, aActionId, aActionData);
end;

procedure TQueuedActions.OnMessage(var Message: TMessage);
begin
 if Assigned(f_ActionProc) then
  f_ActionProc(Message.WParam, Message.LParam)
end;

procedure TQueuedActions.WndProc(var Message: TMessage);
begin
 Dispatch(Message);
end;

end.

