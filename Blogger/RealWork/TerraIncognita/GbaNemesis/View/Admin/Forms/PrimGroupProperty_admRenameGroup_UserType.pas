unit PrimGroupProperty_admRenameGroup_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Admin/Forms/PrimGroupProperty_admRenameGroup_UserType.pas"
// �����: 01.10.2009 21:57
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 �������������::Admin::View::Admin::PrimGroupProperty::admRenameGroup
//
// ������������� ������
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
  ,
  PrimGroupProperty_admCreateGroup_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� admRenameGroup }
  admRenameGroupName = 'admRenameGroup';
   { ��������� ������������� ����������������� ���� "������������� ������" }
  admRenameGroup = TvcmUserType(admCreateGroup + 1);
   { ������������� ������ }

type
  Tkw_FormUserType_admRenameGroup = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� admRenameGroup }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_admRenameGroup
{$IfEnd} //Admin

implementation

{$If defined(Admin)}
// start class Tkw_FormUserType_admRenameGroup

{$If not defined(NoScripts)}
function Tkw_FormUserType_admRenameGroup.GetInteger: Integer;
 {-}
begin
 Result := admRenameGroup;
end;//Tkw_FormUserType_admRenameGroup.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //Admin

initialization
{$If defined(Admin)}
// ����������� Tkw_FormUserType_admRenameGroup
 Tkw_FormUserType_admRenameGroup.Register('���_�����::admRenameGroup');
{$IfEnd} //Admin

end.