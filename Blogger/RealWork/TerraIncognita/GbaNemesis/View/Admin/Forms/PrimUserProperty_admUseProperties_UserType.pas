unit PrimUserProperty_admUseProperties_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Admin/Forms/PrimUserProperty_admUseProperties_UserType.pas"
// �����: 27.01.2009 15:50
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 �������������::Admin::View::Admin::PrimUserProperty::admUseProperties
//
// �������� ������������
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
   { ��������� ��� ���� ����� admUseProperties }
  admUsePropertiesName = 'admUseProperties';
   { ��������� ������������� ����������������� ���� "�������� ������������" }
  admUseProperties = TvcmUserType(0);
   { �������� ������������ }

type
  Tkw_FormUserType_admUseProperties = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� admUseProperties }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_admUseProperties
{$IfEnd} //Admin

implementation

{$If defined(Admin)}
// start class Tkw_FormUserType_admUseProperties

{$If not defined(NoScripts)}
function Tkw_FormUserType_admUseProperties.GetInteger: Integer;
 {-}
begin
 Result := admUseProperties;
end;//Tkw_FormUserType_admUseProperties.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //Admin

initialization
{$If defined(Admin)}
// ����������� Tkw_FormUserType_admUseProperties
 Tkw_FormUserType_admUseProperties.Register('���_�����::admUseProperties');
{$IfEnd} //Admin

end.