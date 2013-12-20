unit BaloonWarningUserTypes_ControlledChangingWarning_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaloonWarningUserTypes_ControlledChangingWarning_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::BaloonWarningUserTypes::ControlledChangingWarning
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
  BaloonWarningUserTypes_OldBaseWarning_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  BaloonWarningUserTypes_Fake_UserType
  ;

const
   { Константы для типа формы ControlledChangingWarning }
  ControlledChangingWarningName = 'ControlledChangingWarning';
   { Строковый идентификатор пользовательского типа "" }
  ControlledChangingWarning = TvcmUserType(OldBaseWarning + 1);

type
  Tkw_FormUserType_ControlledChangingWarning = class(TtfwInteger)
   {* Слово словаря для типа формы ControlledChangingWarning }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_ControlledChangingWarning
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_ControlledChangingWarning

{$If not defined(NoScripts)}
function Tkw_FormUserType_ControlledChangingWarning.GetInteger: Integer;
 {-}
begin
 Result := ControlledChangingWarning;
end;//Tkw_FormUserType_ControlledChangingWarning.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_ControlledChangingWarning
 Tkw_FormUserType_ControlledChangingWarning.Register('тип_формы::ControlledChangingWarning');
{$IfEnd} //not Admin AND not Monitorings

end.