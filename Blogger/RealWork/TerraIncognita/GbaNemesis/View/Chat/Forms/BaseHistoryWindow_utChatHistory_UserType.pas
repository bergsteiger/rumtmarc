unit BaseHistoryWindow_utChatHistory_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: �������� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Chat/Forms/BaseHistoryWindow_utChatHistory_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ���������� ��������::Chat::View::Chat::BaseHistoryWindow::utChatHistory
//
// ������� ���������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� utChatHistory }
  utChatHistoryName = 'utChatHistory';
   { ��������� ������������� ����������������� ���� "������� ���������" }
  utChatHistory = TvcmUserType(0);
   { ������� ��������� }

type
  Tkw_FormUserType_utChatHistory = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utChatHistory }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utChatHistory
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utChatHistory

{$If not defined(NoScripts)}
function Tkw_FormUserType_utChatHistory.GetInteger: Integer;
 {-}
begin
 Result := utChatHistory;
end;//Tkw_FormUserType_utChatHistory.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_utChatHistory
 Tkw_FormUserType_utChatHistory.Register('���_�����::utChatHistory');
{$IfEnd} //not Admin AND not Monitorings

end.