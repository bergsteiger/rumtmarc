unit CsQueryRequester;

{ $Id: CsQueryRequester.pas,v 1.25 2013/04/24 09:35:37 lulin Exp $ }

// $Log: CsQueryRequester.pas,v $
// Revision 1.25  2013/04/24 09:35:37  lulin
// - ���������.
//
// Revision 1.24  2013/04/19 13:09:32  lulin
// - ���������.
//
// Revision 1.23  2011/12/08 12:32:12  narry
// ������������ �� ��� ������� ������� (304874341)
//
// Revision 1.22  2011/04/22 11:48:38  narry
// ������� ������ (262636461)
//
// Revision 1.21  2010/02/24 10:30:50  narry
// - �������� ����������� �������� �� �����
//
// Revision 1.20  2009/07/22 08:20:23  narry
// - ����� ��������� KeepAlive
// - cleanup
//
// Revision 1.19  2008/11/25 12:59:34  narry
// - ����������
//
// Revision 1.18  2008/04/04 14:49:21  narry
// - �� ����������
//
// Revision 1.17  2007/10/04 07:53:59  narry
// - ���������� ��������� ����������� �������
//
// Revision 1.16  2007/08/30 08:34:37  narry
// - ������������� ����������
//
// Revision 1.15  2006/11/30 15:36:18  fireton
// - ����� ����: ��������� ������������
//
// Revision 1.14  2006/09/21 09:59:51  narry
// no message
//
// Revision 1.13  2006/09/01 13:55:01  narry
// - ��� ����������� ������� � ������� ����������� ������ ������� � �������
//
// Revision 1.12  2006/08/24 08:48:30  narry
// - �����������: ���������� ��������� ������ ������
//
// Revision 1.11  2006/08/03 13:22:01  narry
// - ���������� ������ ��������� � ������� �� �� �� ����������
//
// Revision 1.10  2006/08/02 12:18:46  narry
// - ������� ��� ��������� � �������
//
// Revision 1.9  2006/03/16 15:50:16  narry
// - ��� ���� ����� � ������� ������-�������
//
// Revision 1.8  2006/03/10 09:29:12  voba
// - enh. ����� CsFree etc.
//
// Revision 1.7  2006/02/08 17:24:29  step
// ���������� �������� ���������� �� �������-�������� � ��������� ��������
//

{$I CsDefine.inc}

interface

uses
 IdTcpClient, IdGlobal, IdIOHandler, idIOHandlerStream, IdComponent,
 l3Stream, l3Types,
 CsCommon, CsObject, CsListener, CsDataPipe, CsQueryTypes;

const
 c_ClientConnectTimeout = 10 * 1000; // ��������.

 {$IFDEF CsDebug}
 c_ClientReadTimeout = 1000 * 1000; // ��������.
 {$ELSE}
 c_ClientReadTimeout = 10 * 1000; // ��������.
 {$ENDIF}

type
 TCsQueryProc = procedure (aPipe: TCsDataPipe) of object;

 TcsWorkCount = {$IfDef XE} Int64 {$Else} Integer {$EndIf};

 TCsQueryRequester = class(TCsObject)
 private
  f_IsStarted: Boolean;
  f_ClientId: TCsClientId;
  f_OnProgressProc: Tl3ProgressProc;
  f_TcpClient: TIdTcpClient;
  f_ServerIp: TCsIp;
  f_Write2Log: Boolean;
  function DoConnect: Boolean;
  procedure DoDisconnect;
  procedure Work(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: TcsWorkCount);
  procedure WorkBegin(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: TcsWorkCount);
  procedure WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
  procedure WriteDataToFile(aStr: String);
 protected
  function CheckProtocolVersion: Boolean;
  procedure Cleanup; override;
  procedure _ReadVersion(aPipe: TCsDataPipe);
 public
  constructor Create;
  procedure Start(const aServerName: string; aPort: TCsPort);
  procedure Stop;
  function Exec(aQueryId: TCsQueryId; aQueryProc: TCsQueryProc): TcsError;
  property ClientId: TCsClientId read f_ClientId write f_ClientId;
  property OnProgressProc: Tl3ProgressProc read f_OnProgressProc write f_OnProgressProc;
  property ServerIp: TCsIp read f_ServerIp;
  property Write2Log: Boolean read f_Write2Log write f_Write2Log;
 end;

implementation

uses
 Forms, SysUtils, StrUtils,
 l3Base, l3FileUtils,
 IdStack, IdStackConsts, IdExceptionCore, IdException,
 CsConst, csErrors, l3Interfaces, TypInfo;

{ TCsQueryRequester }

procedure TCsQueryRequester.Cleanup;
begin
 l3Free(f_TcpClient);
 inherited;
end;

procedure TCsQueryRequester.Start(const aServerName: string;
                                  aPort: TCsPort);
begin
 if f_IsStarted then
  Exit;

 f_ServerIp := GStack.ResolveHost(aServerName);
 f_TcpClient.Host := f_ServerIp;
 f_TcpClient.Port := aPort;

 f_IsStarted := True;
 if not CheckProtocolVersion then
  Stop;
end;

constructor TCsQueryRequester.Create;
begin
 inherited Create;

 f_ClientId := c_WrongClientId; // ���� �� ������������

 f_TcpClient := TIdTcpClient.Create(nil);
 f_TcpClient.ConnectTimeout := c_ClientConnectTimeout;
 f_TcpClient.ReadTimeout := c_ClientReadTimeout;
 f_tcpClient.OnWork:= Work;
 f_tcpClient.OnWorkBegin:= WorkBegin;
 f_tcpClient.OnWorkEnd:= WorkEnd;
 Write2Log:= False;
end;

function TCsQueryRequester.CheckProtocolVersion: Boolean;
begin
 Result := Exec(qtGetProtocolVersion, _ReadVersion) = cs_errOk;
end;

procedure TCsQueryRequester.Stop;
begin
 if not f_IsStarted then
  Exit;

 f_IsStarted := False;
end;

function TCsQueryRequester.DoConnect: Boolean;
begin
 Result := False;
 //if f_TcpClient.Host = '' then
 // Exit;
 try
  f_TcpClient.Connect;
  f_TcpClient.IOHandler.WriteBufferOpen;
  Result := True;
 except
  on E: EidException do
   l3System.Exception2Log(E);
 end;
end;

procedure TCsQueryRequester.DoDisconnect;
begin
// if f_TcpClient.Connected then
 begin
  f_TcpClient.IOHandler.WriteBufferClose;
  f_TcpClient.Disconnect(False);
 end;
end;

function TCsQueryRequester.Exec(aQueryId: TCsQueryId; aQueryProc: TCsQueryProc): TcsError;
var
 l_Pipe: TCsDataPipe;
 l_ServerVersion : Integer;
begin
 Result := cs_errError;
 try
  if f_IsStarted and DoConnect then
   try
    f_tcpClient.IOHandler.OnWork:= Work;
    f_tcpClient.IOHandler.OnWorkBegin:= WorkBegin;
    f_tcpClient.IOHandler.OnWorkEnd:= WorkEnd;
    l_Pipe := TCsDataPipe.Create(f_TcpClient.IOHandler);
    try
     l_Pipe.Write(Integer(c_CsVersion));
     l_Pipe.Write(Integer(f_ClientId));
     l_Pipe.Write(Integer(Ord(aQueryId)));

     if Write2Log then
      l3System.Msg2Log('��������: %s'#13#10, [GetEnumName(TypeInfo(TcsQueryID), ord(aQueryID))]);
     if Assigned(aQueryProc) then
     begin
      aQueryProc(l_Pipe);
      Result := cs_errOk;
     end;
    finally
     l3Free(l_Pipe);
    end;
   finally
    DoDisconnect;
   end;
 except
  on EIdConnClosedGracefully do
  begin
   l3System.Msg2Log('������: %s, ���������� �������', [GetEnumName(TypeInfo(TcsQueryID), ord(aQueryID))]);
   Result := cs_errConnClosedGracefully;
  end;
  on EIdConnectTimeout do
  begin
   l3System.Msg2Log('������: %s, ����� �������� ��������', [GetEnumName(TypeInfo(TcsQueryID), ord(aQueryID))]);
   Result := cs_errConnectTimeout;
  end;
  on E: EIdSocketError do
   if (E.LastError = Id_WSAECONNABORTED) then
   begin
    l3System.Msg2Log('������: %s, ���������� ��������', [GetEnumName(TypeInfo(TcsQueryID), ord(aQueryID))]);
    Result := cs_errConnAborted;
   end
   else if (E.LastError = Id_WSAECONNREFUSED) then
   begin
    l3System.Msg2Log('������: %s, � ����������� ��������', [GetEnumName(TypeInfo(TcsQueryID), ord(aQueryID))]);
    Result := cs_errConnRefused;
   end
   else
    raise;
 end; // except
end;

procedure TCsQueryRequester.Work(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: TcsWorkCount);
begin
 if Assigned(f_OnProgressProc) then
  f_OnProgressProc(piCurrent, aWorkCount, IfThen(aWorkMode = wmRead, '���������', '��������'));
end;

procedure TCsQueryRequester.WorkBegin(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: TcsWorkCount);
begin
 if Assigned(f_OnProgressProc) then
  f_OnProgressProc(piStart, aWorkCountMax, IfThen(aWorkMode = wmRead, '���������', '��������'));
end;

procedure TCsQueryRequester.WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
 if Assigned(f_OnProgressProc) then
  f_OnProgressProc(piEnd, 0, IfThen(aWorkMode = wmRead, '���������', '��������'));
end;

procedure TCsQueryRequester.WriteDataToFile(aStr: String);
var
 l_Str: String;
begin
 with Tl3FileStream.Create(ConcatDirName(ExtractFilePath(Application.ExeName), 'RequesterStream.dat'), l3_fmAppend) do
 try
  Write(aStr[1], Length(aStr));
 finally
  Free;
 end;
end;

procedure TCsQueryRequester._ReadVersion(aPipe: TCsDataPipe);
var
 l_ServerVersion: Integer;
begin
 l_ServerVersion := aPipe.ReadInteger;
 if l_ServerVersion <> c_CSVersion then
 begin
  l3System.Msg2Log('������ ��������� ������� (%d) ���������� �� ������ ������� (%d)', [c_csVersion, l_ServerVersion]);
  raise ECsWrongVersionError.CreateFmt('������ ��������� ������� (%d) ���������� �� ������ ������� (%d)', [c_csVersion, l_ServerVersion]);
 end;
end;

end.
  
