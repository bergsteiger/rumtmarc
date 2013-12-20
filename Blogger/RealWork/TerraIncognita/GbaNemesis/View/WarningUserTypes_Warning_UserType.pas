unit WarningUserTypes_Warning_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/WarningUserTypes_Warning_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::WarningUserTypes::Warning
//
// ��������������
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
   { ��������� ��� ���� ����� Warning }
  WarningName = 'Warning';
   { ��������� ������������� ����������������� ���� "��������������" }
  Warning = TvcmUserType(0);
   { �������������� }

type
  Tkw_FormUserType_Warning = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� Warning }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_Warning
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_Warning

{$If not defined(NoScripts)}
function Tkw_FormUserType_Warning.GetInteger: Integer;
 {-}
begin
 Result := Warning;
end;//Tkw_FormUserType_Warning.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_Warning
 Tkw_FormUserType_Warning.Register('���_�����::Warning');
{$IfEnd} //not Admin AND not Monitorings

end.