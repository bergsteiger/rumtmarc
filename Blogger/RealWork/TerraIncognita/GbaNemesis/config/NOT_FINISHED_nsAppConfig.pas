unit NOT_FINISHED_nsAppConfig;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Config"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/Config/NOT_FINISHED_nsAppConfig.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> F1 �������� ����������::Settings::Config::Config::nsAppConfig
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ���� ���� ������������ ������ ��� �������������, � �� ��� ����������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TnsConfigSettingsInfo = class
 end;//TnsConfigSettingsInfo

 EDuplicateConfName = class
 end;//EDuplicateConfName
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  L10nInterfaces,
  nsAppConfigRes,
  ddAppConfig
  ;

{$IfEnd} //not Admin AND not Monitorings
end.