unit bsConsultationManager;

{------------------------------------------------------------------------------}
{ �����: �. �������.                                                           }
{ �����: 10.05.2006 �.                                                         }
{ ����������: �������� ������������.                                           }
{------------------------------------------------------------------------------}

// $Id: bsConsultationManager.pas,v 1.5 2011/05/19 12:16:55 lulin Exp $
// $Log: bsConsultationManager.pas,v $
// Revision 1.5  2011/05/19 12:16:55  lulin
// {RequestLink:266409354}.
//
// Revision 1.4  2010/04/20 14:34:01  oman
// - new: {RequestLink:185205022}
//
// Revision 1.3  2009/12/11 14:22:36  lulin
// {RequestLink:172984520}.
//
// Revision 1.2  2009/12/11 14:14:52  lulin
// {RequestLink:172984520}.
//
// Revision 1.1  2009/09/14 11:28:47  lulin
// - ������� ���� � ��� ������������� �������.
//
// Revision 1.12  2009/08/17 11:10:54  lulin
// {RequestLink:129240934}. �47.
//
// Revision 1.11  2009/08/14 14:57:46  lulin
// {RequestLink:129240934}. �42.
//
// Revision 1.10  2009/01/21 19:17:42  lulin
// - <K>: 135602528.
//
// Revision 1.9  2008/12/25 12:19:30  lulin
// - <K>: 121153186.
//
// Revision 1.8  2008/12/24 18:23:35  lulin
// - <K>: 121153186.
//
// Revision 1.7  2008/08/21 06:31:30  oman
// - fix: ������������� ������� ����� �� ����������� (�-109511093)
//
// Revision 1.6  2008/02/07 19:14:21  lulin
// - ����������� �� ������� ������������� ������� ������� �������.
//
// Revision 1.5  2006/10/03 13:29:32  mmorozov
// - new: �������� ���������� �� ����������� ������� � ������������� (CQ: OIT500022637);
//
// Revision 1.4  2006/09/29 07:19:22  mmorozov
// - change: ���������� ��������� ������������ ������������� � ������ bsConsultationManager;
//
// Revision 1.3  2006/08/01 09:29:27  mmorozov
// - new: ��������� ����������� � �������� ������������ (CQ: OIT500021819);
//
// Revision 1.2  2006/07/28 14:24:08  mmorozov
// - new: ��������� �������� �������� �� ����� "��������� �������";
// - new: ��������� ����������� ��� �������� ������������ (�� ������ ���������, ��� ����� � ��������);
//
// Revision 1.1  2006/05/12 07:43:40  mmorozov
// - new: �������� ������������;
//

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3Interfaces,
  l3Base,
  l3LongintList,
  l3NotifyPtrList,

  eeInterfaces,

  vcmBase,

  bsInterfaces
  ;
{$IfEnd}  

{$If not defined(Admin) AND not defined(Monitorings)}
type
  _l3Notifier_Parent_ = TvcmBase;
  {$Include l3Notifier.imp.pas}
  TbsConsultationManager = class(_l3Notifier_, IbsConsultationManager)
  {* �������� ������������. }
  private
  // internal fields
    f_Unread: Integer;
  private
  // internal methods
    procedure UpdateUnread;
      {-}
  private
  // IbsConsultationManager
    function pm_GetHasUnread: Boolean;
      {* - ������� �� ����������� ������������. }
  // public methods
    procedure UnreadChanged;
      {* - ���������� ���������� �� ����������. }
    procedure NoConnection;
      {* - ��� ������� � ������� ������������. }
    procedure NoSubscription;
      {* - � ������������ ��� ������� � ������� ������������. }
    procedure InternetConnected;
      {-}
    procedure InternetDisConnected;
      {-}
  public
  // public methods
    constructor Create{(anOwner: TObject = nil)};
      //override;
      {-}
    class function Make: IbsConsultationManager;
      {-}
   function As_Il3ChangeNotifier: Il3ChangeNotifier;
  end;
{$IfEnd}  

{$If not defined(Admin) AND not defined(Monitorings)}
var
 g_ConsultationManager: IbsConsultationManager = nil;
  {* - ���������� �� ������� ���������� � ������ nsManagers. }
{$IfEnd}

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  SysUtils,

  DataAdapter,

  bsTypes,
  bsUtils
  ;
{$IfEnd}  

{$If not defined(Admin) AND not defined(Monitorings)}

{$Include l3Notifier.imp.pas}

{ TbsConsultationManager }

constructor TbsConsultationManager.Create{(anOwner: TObject)};
  // override;
  {-}
begin
 inherited;
 f_Unread := -1;
end;

class function TbsConsultationManager.Make: IbsConsultationManager;
  {-}
var
 l_Class: TbsConsultationManager;
begin
 l_Class := Create;
 try
  Result := l_Class;
 finally
  FreeAndNil(l_Class);
 end;
end;

function TbsConsultationManager.As_Il3ChangeNotifier: Il3ChangeNotifier;
begin
 Result := Self;
end;

function TbsConsultationManager.pm_GetHasUnread: Boolean;
  {* - ������� �� ����������� ������������. }
begin
 if f_Unread = -1 then
  UpdateUnread;
 Result := f_Unread > 0;
end;

procedure TbsConsultationManager.NoSubscription;
  {* - � ������������ ��� ������� � ������� ������������. }
begin
 CallNotify(Ord(nConsultation), Ord(coNoSubscription));
end;

procedure TbsConsultationManager.NoConnection;
  {* - ��� ������� � ������� ������������. }
begin
 CallNotify(Ord(nConsultation), Ord(coNoConnection));
end;

procedure TbsConsultationManager.UnreadChanged;
begin
 UpdateUnread;
 CallNotify(Ord(nConsultation), Ord(coUnreadChanged));
end;

procedure TbsConsultationManager.UpdateUnread;
  {-}
begin
 f_Unread := DefDataAdapter.ConsultationManager.UpdateNotReadedConsultations;
end;

procedure TbsConsultationManager.InternetConnected;
begin
 CallNotify(Ord(nConsultation), Ord(coInternetConnected));
end;

procedure TbsConsultationManager.InternetDisConnected;
begin
 CallNotify(Ord(nConsultation), Ord(coInternetDisconnected));
end;
{$IfEnd}

{$If not defined(Admin) AND not defined(Monitorings)}
initialization

finalization
 g_ConsultationManager := nil;
{$IfEnd} 

end.
