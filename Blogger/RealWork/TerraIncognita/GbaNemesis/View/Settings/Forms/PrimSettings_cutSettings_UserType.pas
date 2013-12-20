unit PrimSettings_cutSettings_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Settings/Forms/PrimSettings_cutSettings_UserType.pas"
// �����: 02.10.2009 21:39
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 �������� ����������::Settings::View::Settings::PrimSettings::cutSettings
//
// ��������� ������������
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
   { ��������� ��� ���� ����� cutSettings }
  cutSettingsName = 'cutSettings';
   { ��������� ������������� ����������������� ���� "��������� ������������" }
  cutSettings = TvcmUserType(0);
   { ��������� ������������ }

type
  Tkw_FormUserType_cutSettings = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� cutSettings }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_cutSettings
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_cutSettings

{$If not defined(NoScripts)}
function Tkw_FormUserType_cutSettings.GetInteger: Integer;
 {-}
begin
 Result := cutSettings;
end;//Tkw_FormUserType_cutSettings.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_cutSettings
 Tkw_FormUserType_cutSettings.Register('���_�����::cutSettings');
{$IfEnd} //not Admin AND not Monitorings

end.