unit ddUserRequestManager;
{ $Id: ddUserRequestManager.pas,v 1.72 2013/04/19 13:10:10 lulin Exp $ }

// $Log: ddUserRequestManager.pas,v $
// Revision 1.72  2013/04/19 13:10:10  lulin
// - ���������.
//
// Revision 1.71  2013/04/11 16:46:29  lulin
// - ���������� ��� XE3.
//
// Revision 1.70  2013/04/03 09:51:29  fireton
// - ������ ����������� VANONCED
//
// Revision 1.69  2012/12/27 11:18:54  fireton
// - ServerOnline � OnServerStatusChanged
//
// Revision 1.68  2012/11/01 09:43:24  lulin
// - ����� ����� � �������.
//
// Revision 1.67  2012/11/01 07:45:49  lulin
// - ������ ����������� ����������� �������� �������� �������.
//
// Revision 1.66  2012/06/14 10:56:39  narry
// ����������� �� ���������� ��������� ���������
//
// Revision 1.65  2012/02/17 10:46:19  narry
// - �� ����������� �������
//
// Revision 1.64  2012/02/16 06:03:26  narry
// - �� ����������
//
// Revision 1.63  2012/02/15 13:59:07  narry
// ����������
//
// Revision 1.62  2011/04/22 11:46:00  narry
// ������� ������ (262636461)
//
// Revision 1.61  2010/07/22 08:44:54  narry
// �221675581. �� ������������ ���������� ��������.
//
// Revision 1.60  2010/07/14 12:47:43  narry
// - �226001558
//
// Revision 1.59  2010/07/14 07:31:11  narry
// - �226001558
//
// Revision 1.58  2010/07/06 12:29:14  narry
// - �222759027
//
// Revision 1.57  2010/05/17 10:37:56  narry
// - K211878122
//
// Revision 1.56  2010/05/17 08:31:20  narry
// - K211878129
// - �������������� �����
//
// Revision 1.55  2010/03/02 08:24:14  narry
// - ��������� splash
//
// Revision 1.54  2010/02/24 10:24:24  narry
// - �������� ����������� �������� �� �����
//
// Revision 1.53  2009/11/10 09:12:33  narry
// - ����������
//
// Revision 1.52  2009/07/23 08:02:43  voba
// - bug fix: �� �������� ��� �������
//
// Revision 1.51  2009/07/22 08:20:26  narry
// - ����� ��������� KeepAlive
// - cleanup
//
// Revision 1.50  2009/07/20 13:13:31  lulin
// - bug fix: �� �������������� ����������.
//
// Revision 1.49  2009/04/15 13:26:03  narry
// - ��� ������ ������ �������������
//
// Revision 1.48  2009/04/15 08:45:10  narry
// - ���������� ����������� � �������
//
// Revision 1.47  2009/04/13 07:12:57  narry
// - ���������� ����������� ����� � ����������
//
// Revision 1.46  2009/03/13 15:12:47  narry
// - ��������� ������ � ���� ���������� �� �������� ����� � ����������
//
// Revision 1.45  2009/01/23 15:58:15  narry
// - ��������� � ������� ������
//
// Revision 1.44  2008/11/24 12:43:54  narry
// - ����������
//
// Revision 1.43  2008/09/29 13:51:29  narry
// - ��� ������� �� ������� ����� � ���
//
// Revision 1.42  2008/07/23 09:07:38  fireton
// - ���� �������� � ��������, �� ����������� ���� ������ � ����
//
// Revision 1.41  2008/07/21 11:45:03  fireton
// - ������ (������ � ����������)
//
// Revision 1.40  2008/07/10 12:56:28  fireton
// - refactoring: ���� ����������� ������� ��������� "������"
//
// Revision 1.39  2008/04/23 07:27:19  narry
// - ��������� ��� �������
//
// Revision 1.38  2008/02/14 09:40:33  lulin
// - ����� �������� �����.
//
// Revision 1.37  2008/02/13 20:20:06  lulin
// - <TDN>: 73.
//
// Revision 1.36  2008/02/06 15:37:00  lulin
// - ������� �������� ������� �� ������������ ������.
//
// Revision 1.35  2008/02/05 09:58:00  lulin
// - �������� ������� ������� � ��������� ����� � ��������� �� �� ������.
//
// Revision 1.34  2008/02/01 15:14:44  lulin
// - ����������� �� �������� ��������������� �������.
//
// Revision 1.33  2007/12/06 11:11:58  narry
// - ��������� �����������������
//
// Revision 1.32  2007/09/28 05:38:19  narry
// - ��������� ��������� � ������
//
// Revision 1.31  2007/09/05 15:44:23  narry
// - ����������� ������ �������� ������� ������� ������������ (��������)
// - ��������� �������� ������ ����� �������� � ��������
//
// Revision 1.30  2007/08/30 08:34:32  narry
// - ������������� ����������
//
// Revision 1.29  2007/08/23 14:37:10  fireton
// - ��������� ������� � ����� ��������� � ������� � ������ ��������� ������ ����� �������
//
// Revision 1.28  2007/08/14 12:25:39  narry
// - ������� ����� �������������� ���������
//
// Revision 1.27  2007/07/25 15:04:32  narry
// - ���������� ������� ��������� ���� ������
//
// Revision 1.26  2007/07/25 11:07:18  narry
// - ����������
//
// Revision 1.25  2007/07/24 14:15:37  voba
// - bug fix
//
// Revision 1.24  2007/07/24 12:32:29  narry
// - ����������� ������� ���������
//
// Revision 1.23  2006/11/28 11:19:28  narry
// - ������: ���������� ���� ��� ��������� ��������� �� �������
//
// Revision 1.22  2006/10/11 07:58:03  narry
// - �������
//
// Revision 1.21  2006/09/21 09:59:54  narry
// no message
//
// Revision 1.20  2006/09/15 06:50:57  narry
// - ������� ������ ����������� ����� �������� � ��������
//
// Revision 1.19  2006/09/14 08:11:27  narry
// - ������ � ����������� ������ ��������� ���������
//
// Revision 1.18  2006/09/07 08:57:06  narry
// - ������ � ������������ ���������
//
// Revision 1.17  2006/09/01 13:59:20  narry
// no message
//
// Revision 1.16  2006/08/29 09:24:01  voba
// - ������ c AV
//
// Revision 1.15  2006/08/28 12:55:40  narry
// - ������ �� ������� ����������� � ��������� �����������
//
// Revision 1.14  2006/08/25 14:46:54  narry
// - ������ �� ������������
//
// Revision 1.13  2006/08/25 11:35:11  narry
// - ������ �� ���������� � �������
//
// Revision 1.12  2006/08/04 09:28:46  narry
// - ������� �������� ������
//
// Revision 1.11  2006/08/04 09:01:00  narry
// - �������� �� ������� ��������� � ���������� ������� � �������
//
// Revision 1.10  2006/08/02 12:18:38  narry
// - ������� ��� ��������� � �������
//
// Revision 1.9  2006/06/14 12:25:06  narry
// - �����: ������� �� ����� �������� �������� �����������
//
// Revision 1.8  2006/06/05 14:56:20  narry
// - �����: ������� �� ����� �������� �������� �����������
//
// Revision 1.7  2006/04/05 08:20:17  narry
// - ���������: �������� ��� CVS
//

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs,
  l3Base,
  dt_Types, dt_UserTypes,
  CSClient, CSNotification, CsQueryTypes,
  csProcessTask, CsDataPipe, l3Types,
  l3ObjectRefList, ddCalendarEvents,
  csTaskTypes, csServerTaskTypes, csTaskRequest, csClientCommandsManager,
  Menus, l3ProtoObject;

type
  TOnVersionDateChanged  = procedure(aNewDate, aNextDate: TDateTime) of object;
  TOnServerStatusChanged = procedure(aOnline: Boolean) of object;
  TddTextMessageEvent = procedure (aCount: Integer; const aLastMsg: AnsiString) of object;
  TddUserRequestManager = class(Tl3ProtoObject)
  private
   f_CSClient: TCSClient;
   f_Locked: Boolean;
   f_NotifyList: Tl3ObjectRefList;
   f_OnTextMessage: TddTextMessageEvent;
   f_OnVersionDateChanged: TOnVersionDateChanged;
   f_ServerTime: TDateTime;
   f_TextMessages: TStrings;
   f_wmLogoff: Integer;
   f_Write2Log: Boolean;
   f_Commands: TcsClientCommandsManager;
   f_KeepAliveInterval: Integer;
   f_LastKeepAlive: TDateTime;
   f_Logo: TPicture;
   f_MyMessagesCount: Integer;
   f_OnServerStatusChanged: TOnServerStatusChanged;
   f_ServerOnline: Boolean;
   f_ShowTextMessages: Boolean;
   function CSClientNotify(aNotificationType: TCsNotificationType; aNumber: Integer; const aText: AnsiString): Boolean;
   procedure GetCommandsList;
   procedure GetMyMessages;
   procedure pm_SetCSClient(const Value: TCSClient); virtual;
   procedure pm_SetWrite2Log(const Value: Boolean);
   procedure ProcessCalendarNotify(aTaskType: TddCalendarTaskType);
   function SendRequest(theRequest: TCsQueryId): Boolean;
   procedure pipe_readMessages(aPipe: TCsDataPipe);
   procedure pipe_ReadServerTime(aPipe: TcsDataPipe);
   procedure pipe_ReadLogoFile(aPipe: TcsDataPipe);
   procedure pipe_ReadVersionDate(aPipe: TcsDataPipe);
   procedure SetServerOnline(aValue: Boolean);
  protected
   procedure Cleanup; override;
   procedure ProcessNotify(aType: TcsNotificationType; aData: Integer; const
       aText: AnsiString); virtual;
  public
   constructor Create; virtual;
   function GetServerStatus(out theStatus: AnsiString; out theUserCount, theLineLen:
        Integer): Boolean;
   property CSClient: TCSClient read f_CSClient write pm_SetCSClient;
   property OnTextMessage: TddTextMessageEvent read f_OnTextMessage write f_OnTextMessage;
   property OnVersionDateChanged: TOnVersionDateChanged read f_OnVersionDateChanged write f_OnVersionDateChanged;
   property KeepAliveInterval: Integer read f_KeepAliveInterval write
       f_KeepAliveInterval;
   property Locked: Boolean read f_Locked write f_Locked;
   property OnServerStatusChanged: TOnServerStatusChanged read f_OnServerStatusChanged write f_OnServerStatusChanged;
   property ServerOnline: Boolean read f_ServerOnline;
   property ShowTextMessages: Boolean read f_ShowTextMessages write f_ShowTextMessages;
   property TextMessages: TStrings read f_TextMessages;
   property wmLogoff: Integer read f_wmLogoff write f_wmLogoff;
   property Write2Log: Boolean read f_Write2Log write pm_SetWrite2Log;
   procedure CheckLocalTime;
   procedure CorrectLogoImage(aPicture: TPicture);
   procedure FillServerMenu(aMenu: TMenuItem);
   function GetTextMessages: AnsiString;
   procedure KeepAlive(aImmediateCheck: Boolean = False);
   procedure ProcessNotifyList;
   procedure RequestNextVersionDate;
   procedure ShowMessage(aText: AnsiString);
  end;


function UserRequestManager: TddUserRequestManager;

implementation

Uses
 Math, StrUtils,
 ddUtils,
 csMessageManager,
 dt_Dict, dt_Mail,
 vConst,
 l3Memory,
 IdException, DateUtils, l3LongintList, dt_DictConst, dt_Const, TypInfo,
 csServerStatusRequest, csRequestTask,
 l3FileUtils,
 csCommandsManager, l3Stream;



const
  _UserRequestManager : TddUserRequestManager = nil;
  MaxTryCount = 10;

function UserRequestManager: TddUserRequestManager;
begin
 if _UserRequestManager = nil then
  _UserRequestManager:= TddUserRequestManager.Create;
 Result := _UserRequestManager;
end;

{
**************************** TddUserRequestManager *****************************
}
constructor TddUserRequestManager.Create;
begin
 inherited;
 f_NotifyList := Tl3ObjectRefList.Make;
 f_TextMessages:= TStringList.Create;
 f_Locked := False;
 f_Write2Log := False;
 f_wmLogoff:= WM_LogOff;
 f_LastKeepAlive:= Now;
 f_KeepAliveInterval:= 30;
 f_MyMessagesCount := 0;
 f_Commands:= TcsClientCommandsManager.Create(nil);
 f_ShowTextMessages := True;
end;

procedure TddUserRequestManager.Cleanup;
begin
 FreeAndNil(f_Commands);
 FreeAndNil(f_TextMessages);
 FreeAndNil(f_NotifyList);
 inherited;
end;

function TddUserRequestManager.CSClientNotify(aNotificationType: TCsNotificationType; aNumber: Integer; const aText:
    AnsiString): Boolean;
begin
 Result := True;
 if Write2Log then
  l3System.Msg2Log('��������� %s (Number: %d, Text: "%s")'#13#10, [GetEnumName(TypeInfo(TCsNotificationType), ord(aNotificationType)), aNumber, aText]);

 case aNotificationType of
  ntAutoLogoff     : Windows.SendMessage(Application.MainForm.Handle, f_wmLogoff, 0, 0);
  ntRepeatLogin    : if f_CSClient <> nil then f_CSClient.RepeatLogin;
  ntInformation    :
   if ShowTextMessages then
   begin
    if aText <> '' then
     if aNumber = 0 then
      ShowMessage(aText)
     else
      Dialogs.ShowMessage(aText);
   end;
  ntHaveNewMessages:
   begin
    if aNumber > 0 then
     GetMyMessages; // ��� ���� ���� ����� ���������
   end;
 else
  Result := False
 end;
end;

function TddUserRequestManager.GetServerStatus(out theStatus: AnsiString; out
    theUserCount, theLineLen: Integer): Boolean;
var
 l_ServerStatus : TddServerStatusRequest;
begin
 Result := False;
 if f_CSClient <> nil then
 begin
  l_ServerStatus:= TddServerStatusRequest.Create(nil, csClient.ClientID);
  try
   if f_CSClient.Exec(qtServerStatus, l_ServerStatus.SaveToPipe) then
   begin
    Result := True;
    theStatus := l_ServerStatus.ServerStatus;
    theUserCount:= l_ServerStatus.UsersCount;
    theLineLen := l_ServerStatus.LineLength;
   end;
  finally
   FreeAndNil(l_ServerStatus);
  end;
 end; // f_CSClient <> nil
end;

procedure TddUserRequestManager.CheckLocalTime;
const
 c_MeasurementPrecision = 2; // ���
 c_TimeGap = 10; // ���
var
 l_ClientTime: TDateTime;
 l_Delta: Int64; // ������� ����� �������� � �������� � ��������
begin
 if (CSClient <> nil) and CSClient.IsStarted then
 begin
  f_CSClient.Exec(qtGetTime, pipe_ReadServerTime);
  l_ClientTime := Now;
  l_Delta := 0;
  if SecondsBetween(Now, l_ClientTime) < c_MeasurementPrecision then // ���� ������ ������� ���������� ������
  begin
   l_Delta := SecondsBetween(l_ClientTime, f_ServerTime);
   // ������ ��������� ����
   if (Abs(l_Delta) > c_TimeGap) then
    {$IFDEF DisableTimeDiff}
     raise Exception.CreateFmt('��������� ����� �� ������� %s �� %d ���.', [IfThen(l_Delta > 0, '������', '�������'), Abs(l_Delta)])
    {$ELSE}
     l3System.Msg2Log('��������� ����� �� ������� %s �� %d ���.', [IfThen(l_Delta > 0, '������', '�������'), Abs(l_Delta)])
    {$ENDIF}
  end
  else
   l3System.Msg2Log('�������� �������� �������� ������� �������');
 end; // (CSClient <> nil) and CSClient.IsStarted
end;

procedure TddUserRequestManager.CorrectLogoImage(aPicture: TPicture);
begin
 if f_CSClient <> nil then
 begin
  f_Logo:= aPicture;
  f_CSClient.Exec(qtGetLogo, pipe_ReadLogoFile);
 end;
end;

procedure TddUserRequestManager.FillServerMenu(aMenu: TMenuItem);
begin
 GetCommandsList;
 f_Commands.UpdateServerMenu(aMenu);
 { TODO : �������� ��������� ��������� �������� �� �������� }
 //if f_Commands.CommandExists()
end;

procedure TddUserRequestManager.GetCommandsList;
begin
 if f_CSClient <> nil then
   f_CSClient.Exec(qtGetCommands, f_Commands.LoadCommands);
end;

function TddUserRequestManager.GetTextMessages: AnsiString;
begin
 Result := f_TextMessages.Text;
 f_TextMessages.Clear;
end;

procedure TddUserRequestManager.GetMyMessages;
begin
 // ��������� ���� ������������ ��� ���������
 if f_CSClient <> nil then
   f_CSClient.Exec(qtGetMyMessages, pipe_readMessages)
end;

procedure TddUserRequestManager.KeepAlive(aImmediateCheck: Boolean = False);
begin
 if aImmediateCheck or (SecondsBetween(Now, f_LastKeepAlive) > KeepAliveInterval) then
 begin
  f_LastKeepAlive:= Now;
  if (f_CSClient <> nil) and f_CSClient.IsStarted then
   SetServerOnline(f_CSClient.KeepAlive)
  else
   SetServerOnline(False);
 end;
end;

procedure TddUserRequestManager.pm_SetCSClient(const Value: TCSClient);
begin
 if f_CSClient <> Value then
 begin
  if f_CSClient <> nil then
   f_CSClient.RemoveNotifyProc(CSClientNotify);
  f_CSClient := Value;
  if f_CSClient <> nil then
  begin
   SetServerOnline(f_CSClient.IsStarted);
   f_CSClient.AddNotifyProc(CSClientNotify);
   f_Commands.CSClient:= Value;
  end
  else
   SetServerOnline(False);
 end;
end;

procedure TddUserRequestManager.pm_SetWrite2Log(const Value: Boolean);
begin
 if f_Write2Log <> Value then
 begin
  f_Write2Log := Value;
  if CSClient <> nil then
   CSClient.Write2Log := Value;
 end;
end;

procedure TddUserRequestManager.ProcessCalendarNotify(aTaskType: TddCalendarTaskType);
begin
 case aTaskType of
  ctVersion: RequestNextVersionDate;
 end;
end;

procedure TddUserRequestManager.ProcessNotifyList;
var
 l_Type : TcsNotificationType;
 l_Data : Integer;
 l_Text : AnsiString;
 l_Notify: TddClientMessage;
 l_Index : Integer;
begin
 if f_Locked then
  exit;
 f_Locked := True;
 try
  l_Index := 0;
  while l_Index < f_NotifyList.Count do
  begin
   l_Notify := TddClientMessage(f_NotifyList.Items[l_Index]).Use;
   try
    l_Notify.TryCount:= l_Notify.TryCount + 1;
    if InRange(l_Notify.TryCount, 0, MaxTryCount) then
    begin
     f_NotifyList.Delete(l_Index);
     with l_Notify do
     begin
      l_Type := NotifyType;
      l_Data := Data;
      l_Text := Text;
     end; // with
     // ���������, ������ ����� ����������� �������������� �����, � ����� � CSClientNotify?
     // ������ ��� �� ���� �������, ����� MessageManager... ��� �����������
     try
      ProcessNotify(l_Type, l_Data, l_text);
     except
      on E: EIdException do
      begin
       l3System.Msg2Log('������ "%s" ��������� ��������� � �������', [E.Message]);
       if l_Notify.TryCount < MaxTryCount then
        l_Notify.TryCount:= -l_Notify.TryCount;
       if l_Notify.TryCount <> 0 then
        f_NotifyList.Insert(0, l_Notify);
       Inc(l_Index);
      end; // EIdException
     end; // try..except
    end // InRange(l_Notify.TryCount, 0, MaxTryCount)
    else
     Inc(l_Index);
   finally
    FreeAndNil(l_Notify);
   end;
  end; // while l_Index < f_NotifyList.Count do
  KeepAlive;
 finally
  f_Locked := False;
 end;
end;

procedure TddUserRequestManager.RequestNextVersionDate;
begin
 if (f_CSClient <> nil) and Assigned(f_OnVersionDateChanged) then
  f_CSClient.Exec(qtGetVersionDate, pipe_ReadVersionDate);
end;

function TddUserRequestManager.SendRequest(theRequest: TCsQueryId): Boolean;
var
 l_Request: TddRequestTask;
begin
 Result := False;
 if f_CSClient <> nil then
 begin
  l_Request:= TddRequestTask.Create(nil, CSClient.ClientID);
  try
   l_Request.UserID := f_CSClient.ClientId;
   if f_CSClient.Exec(theRequest, l_Request.SaveToPipe) then
    Result := True;
  finally
   FreeAndNil(l_Request);
  end;
 end; // f_CSClient <> nil;
end;

procedure TddUserRequestManager.ShowMessage(aText: AnsiString);
begin
 f_TextMessages.Add(aText);
 if Assigned(f_OnTextMessage) then
  f_OnTextMessage(f_TextMessages.Count, aText);
end;

procedure TddUserRequestManager.pipe_readMessages(aPipe: TCsDataPipe);
var
 i, j, l_Count, l_Dummy: Integer;
 l_Msg: TddClientMessage;
 l_Stream: TStream;
 l_Add: Boolean;

 l_MR: TcsMessageRecepient;
begin
 with aPipe do
 begin
  Write(CSClient.ClientId);
  l_Stream := Tl3MemoryStream.Create(nil);
  try
   ReadStream(l_Stream);
   l_Stream.Seek(0, 0);
   l_MR:= TcsMessageRecepient.Create(nil);
   try
    l_MR.LoadFromStream(l_Stream);
    for i:= 0 to Pred(l_MR.Count) do
    begin
     l_Msg:= l_MR.Messages[i];
     f_NotifyList.Add(l_Msg);
      if Write2Log then
       l3System.Msg2Log('��������: %s (Number: %d, Text: "%s")'#13#10, [GetEnumName(TypeInfo(TCsNotificationType), ord(l_Msg.NotifyType)), l_Msg.Data, l_Msg.Text]);
    end; // for i
    f_MyMessagesCount:= l_MR.Count;
   finally
    FreeAndNil(l_MR);
   end;
  finally
   FreeAndNil(l_Stream);
  end;
 end; // with aPipe
end;

procedure TddUserRequestManager.pipe_ReadServerTime(aPipe: TcsDataPipe);
begin
 f_ServerTime := aPipe.ReadDateTime;
end;

procedure TddUserRequestManager.pipe_ReadLogoFile(aPipe: TcsDataPipe);
var
 l_FileName: AnsiString;
 l_Stream: TStream;
begin
 l_FileName:= aPipe.ReadStr;
 if l_FileName <> '' then
 begin
  l_FIleName:= ChangeFileExt(Application.ExeName, ExtractFileExt(l_FileName));
  l_Stream:= Tl3FileStream.Create(l_FileName, l3_fmWrite);
  try
   aPipe.ReadStream(l_Stream);
  finally
   l_Stream.Free;
  end;
  f_Logo.LoadFromFile(l_FileName);
  //DeleteFile(l_FileName);
 end;
end;

procedure TddUserRequestManager.pipe_ReadVersionDate(aPipe: TcsDataPipe);
begin
 f_OnVersionDateChanged(aPipe.ReadDateTime, aPipe.REadDateTime);
end;

procedure TddUserRequestManager.ProcessNotify(aType: TcsNotificationType;
    aData: Integer; const aText: AnsiString);
begin
 case aType of
  ntDictEdit       : DictServer(CurrentFamily).CSClientNotify(aType, aData, aText); //����� ��������� ���������� �� ���� ���-������
  ntCalendar       : ProcessCalendarNotify(TddCalendarTaskType(aData));
  ntServerStarted  : SetServerOnline(True);
  ntServerStopped  : SetServerOnline(False);
 else
  CSClientNotify(aType, aData, aText);
 end;
end;

procedure TddUserRequestManager.SetServerOnline(aValue: Boolean);
begin
 if aValue <> f_ServerOnline then
 begin
  f_ServerOnline := aValue;
  if Assigned(f_OnServerStatusChanged) then
   f_OnServerStatusChanged(f_ServerOnline);
 end;
end;


initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\dd\ddUserRequestManager.pas initialization enter'); {$EndIf}
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\dd\ddUserRequestManager.pas initialization leave'); {$EndIf}
finalization
 FreeAndNil(_UserRequestManager);
end.
