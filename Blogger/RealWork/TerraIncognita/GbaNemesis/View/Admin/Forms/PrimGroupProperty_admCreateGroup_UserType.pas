unit PrimGroupProperty_admCreateGroup_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Admin/Forms/PrimGroupProperty_admCreateGroup_UserType.pas"
// �����: 01.10.2009 21:57
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 �������������::Admin::View::Admin::PrimGroupProperty::admCreateGroup
//
// ����� ������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If defined(Admin)}
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
   { ��������� ��� ���� ����� admCreateGroup }
  admCreateGroupName = 'admCreateGroup';
   { ��������� ������������� ����������������� ���� "����� ������" }
  admCreateGroup = TvcmUserType(0);
   { ����� ������ }

type
  Tkw_FormUserType_admCreateGroup = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� admCreateGroup }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_admCreateGroup
{$IfEnd} //Admin

implementation

{$If defined(Admin)}
// start class Tkw_FormUserType_admCreateGroup

{$If not defined(NoScripts)}
function Tkw_FormUserType_admCreateGroup.GetInteger: Integer;
 {-}
begin
 Result := admCreateGroup;
end;//Tkw_FormUserType_admCreateGroup.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //Admin

initialization
{$If defined(Admin)}
// ����������� Tkw_FormUserType_admCreateGroup
 Tkw_FormUserType_admCreateGroup.Register('���_�����::admCreateGroup');
{$IfEnd} //Admin

end.