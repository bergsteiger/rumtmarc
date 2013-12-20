unit PrimCreateFilter_cfRename_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Filters/Forms/PrimCreateFilter_cfRename_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 �������� ����������::Filters::View::Filters::PrimCreateFilter::cfRename
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

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  PrimCreateFilter_cfCreate_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� cfRename }
  cfRenameName = 'cfRename';
   { ��������� ������������� ����������������� ���� "������������� ������" }
  cfRename = TvcmUserType(cfCreate + 1);
   { ������������� ������ }

type
  Tkw_FormUserType_cfRename = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� cfRename }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_cfRename
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_cfRename

{$If not defined(NoScripts)}
function Tkw_FormUserType_cfRename.GetInteger: Integer;
 {-}
begin
 Result := cfRename;
end;//Tkw_FormUserType_cfRename.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_cfRename
 Tkw_FormUserType_cfRename.Register('���_�����::cfRename');
{$IfEnd} //not Admin AND not Monitorings

end.