unit BaloonWarningUserTypes_OldBaseWarning_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaloonWarningUserTypes_OldBaseWarning_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::BaloonWarningUserTypes::OldBaseWarning
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
  BaloonWarningUserTypes_TrialModeWarning_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  BaloonWarningUserTypes_Fake_UserType
  ;

const
   { Константы для типа формы OldBaseWarning }
  OldBaseWarningName = 'OldBaseWarning';
   { Строковый идентификатор пользовательского типа "" }
  OldBaseWarning = TvcmUserType(TrialModeWarning + 1);

type
  Tkw_FormUserType_OldBaseWarning = class(TtfwInteger)
   {* Слово словаря для типа формы OldBaseWarning }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_OldBaseWarning
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_OldBaseWarning

{$If not defined(NoScripts)}
function Tkw_FormUserType_OldBaseWarning.GetInteger: Integer;
 {-}
begin
 Result := OldBaseWarning;
end;//Tkw_FormUserType_OldBaseWarning.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_OldBaseWarning
 Tkw_FormUserType_OldBaseWarning.Register('тип_формы::OldBaseWarning');
{$IfEnd} //not Admin AND not Monitorings

end.