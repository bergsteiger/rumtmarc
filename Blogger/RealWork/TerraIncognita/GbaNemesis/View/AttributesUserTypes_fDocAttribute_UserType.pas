unit AttributesUserTypes_fDocAttribute_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/AttributesUserTypes_fDocAttribute_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::AttributesUserTypes::fDocAttribute
//
// ���������� � ���������
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
   { ��������� ��� ���� ����� fDocAttribute }
  fDocAttributeName = 'fDocAttribute';
   { ��������� ������������� ����������������� ���� "���������� � ���������" }
  fDocAttribute = TvcmUserType(0);
   { ���������� � ��������� }

type
  Tkw_FormUserType_fDocAttribute = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� fDocAttribute }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_fDocAttribute
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_fDocAttribute

{$If not defined(NoScripts)}
function Tkw_FormUserType_fDocAttribute.GetInteger: Integer;
 {-}
begin
 Result := fDocAttribute;
end;//Tkw_FormUserType_fDocAttribute.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_fDocAttribute
 Tkw_FormUserType_fDocAttribute.Register('���_�����::fDocAttribute');
{$IfEnd} //not Admin AND not Monitorings

end.