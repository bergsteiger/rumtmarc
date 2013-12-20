unit PrimContactList_chatAddContact_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Chat/Forms/PrimContactList_chatAddContact_UserType.pas"
// �����: 01.10.2009 2:05
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ���������� ��������::Chat::View::Chat::PrimContactList::chatAddContact
//
// �������� �������
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
  ,
  PrimContactList_chatContacts_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� chatAddContact }
  chatAddContactName = 'chatAddContact';
   { ��������� ������������� ����������������� ���� "�������� �������" }
  chatAddContact = TvcmUserType(chatContacts + 1);
   { �������� ������� }

type
  Tkw_FormUserType_chatAddContact = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� chatAddContact }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_chatAddContact
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_chatAddContact

{$If not defined(NoScripts)}
function Tkw_FormUserType_chatAddContact.GetInteger: Integer;
 {-}
begin
 Result := chatAddContact;
end;//Tkw_FormUserType_chatAddContact.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_chatAddContact
 Tkw_FormUserType_chatAddContact.Register('���_�����::chatAddContact');
{$IfEnd} //not Admin AND not Monitorings

end.