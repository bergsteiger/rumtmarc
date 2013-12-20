unit NOT_FINISHED_nsAppConfig;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Config"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/Config/NOT_FINISHED_nsAppConfig.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> F1 Основные прецеденты::Settings::Config::Config::nsAppConfig
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

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