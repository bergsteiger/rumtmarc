unit BaloonWarningUserTypes_TrialModeWarning_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaloonWarningUserTypes_TrialModeWarning_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::BaloonWarningUserTypes::TrialModeWarning
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

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
  BaloonWarningUserTypes_remOnlineDead_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  BaloonWarningUserTypes_Fake_UserType
  ;

const
   { Константы для типа формы TrialModeWarning }
  TrialModeWarningName = 'TrialModeWarning';
   { Строковый идентификатор пользовательского типа "" }
  TrialModeWarning = TvcmUserType(remOnlineDead + 1);

type
  Tkw_FormUserType_TrialModeWarning = class(TtfwInteger)
   {* Слово словаря для типа формы TrialModeWarning }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_TrialModeWarning
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_TrialModeWarning

{$If not defined(NoScripts)}
function Tkw_FormUserType_TrialModeWarning.GetInteger: Integer;
 {-}
begin
 Result := TrialModeWarning;
end;//Tkw_FormUserType_TrialModeWarning.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_TrialModeWarning
 Tkw_FormUserType_TrialModeWarning.Register('тип_формы::TrialModeWarning');
{$IfEnd} //not Admin AND not Monitorings

end.