unit PrimCreateFilter_cfCreate_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Filters/Forms/PrimCreateFilter_cfCreate_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 �������� ����������::Filters::View::Filters::PrimCreateFilter::cfCreate
//
// ������� ������
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
   { ��������� ��� ���� ����� cfCreate }
  cfCreateName = 'cfCreate';
   { ��������� ������������� ����������������� ���� "������� ������" }
  cfCreate = TvcmUserType(0);
   { ������� ������ }

type
  Tkw_FormUserType_cfCreate = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� cfCreate }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_cfCreate
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_cfCreate

{$If not defined(NoScripts)}
function Tkw_FormUserType_cfCreate.GetInteger: Integer;
 {-}
begin
 Result := cfCreate;
end;//Tkw_FormUserType_cfCreate.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_cfCreate
 Tkw_FormUserType_cfCreate.Register('���_�����::cfCreate');
{$IfEnd} //not Admin AND not Monitorings

end.