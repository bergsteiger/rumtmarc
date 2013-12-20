unit PrimContactList_chatContacts_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Chat/Forms/PrimContactList_chatContacts_UserType.pas"
// �����: 01.10.2009 2:05
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ���������� ��������::Chat::View::Chat::PrimContactList::chatContacts
//
// ��������� ������
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
   { ��������� ��� ���� ����� chatContacts }
  chatContactsName = 'chatContacts';
   { ��������� ������������� ����������������� ���� "��������� ������" }
  chatContacts = TvcmUserType(0);
   { ��������� ������ }

type
  Tkw_FormUserType_chatContacts = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� chatContacts }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_chatContacts
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_chatContacts

{$If not defined(NoScripts)}
function Tkw_FormUserType_chatContacts.GetInteger: Integer;
 {-}
begin
 Result := chatContacts;
end;//Tkw_FormUserType_chatContacts.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_chatContacts
 Tkw_FormUserType_chatContacts.Register('���_�����::chatContacts');
{$IfEnd} //not Admin AND not Monitorings

end.