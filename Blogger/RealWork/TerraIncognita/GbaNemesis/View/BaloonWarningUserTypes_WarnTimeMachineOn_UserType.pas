unit BaloonWarningUserTypes_WarnTimeMachineOn_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaloonWarningUserTypes_WarnTimeMachineOn_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::BaloonWarningUserTypes::WarnTimeMachineOn
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
  BaloonWarningUserTypes_WarnInactualDocument_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  BaloonWarningUserTypes_Fake_UserType
  ;

const
   { Константы для типа формы WarnTimeMachineOn }
  WarnTimeMachineOnName = 'WarnTimeMachineOn';
   { Строковый идентификатор пользовательского типа "" }
  WarnTimeMachineOn = TvcmUserType(WarnInactualDocument + 1);

type
  Tkw_FormUserType_WarnTimeMachineOn = class(TtfwInteger)
   {* Слово словаря для типа формы WarnTimeMachineOn }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_WarnTimeMachineOn
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_WarnTimeMachineOn

{$If not defined(NoScripts)}
function Tkw_FormUserType_WarnTimeMachineOn.GetInteger: Integer;
 {-}
begin
 Result := WarnTimeMachineOn;
end;//Tkw_FormUserType_WarnTimeMachineOn.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_WarnTimeMachineOn
 Tkw_FormUserType_WarnTimeMachineOn.Register('тип_формы::WarnTimeMachineOn');
{$IfEnd} //not Admin AND not Monitorings

end.