unit BaseChatWindow_cwChat_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: �������� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Chat/Forms/BaseChatWindow_cwChat_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ���������� ��������::Chat::View::Chat::BaseChatWindow::cwChat
//
// ���������
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
   { ��������� ��� ���� ����� cwChat }
  cwChatName = 'cwChat';
   { ��������� ������������� ����������������� ���� "���������" }
  cwChat = TvcmUserType(0);
   { ��������� }

type
  Tkw_FormUserType_cwChat = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� cwChat }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_cwChat
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_cwChat

{$If not defined(NoScripts)}
function Tkw_FormUserType_cwChat.GetInteger: Integer;
 {-}
begin
 Result := cwChat;
end;//Tkw_FormUserType_cwChat.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_cwChat
 Tkw_FormUserType_cwChat.Register('���_�����::cwChat');
{$IfEnd} //not Admin AND not Monitorings

end.