unit BaloonWarningUserTypes_WarnPreActive_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaloonWarningUserTypes_WarnPreActive_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::BaloonWarningUserTypes::WarnPreActive
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
  BaloonWarningUserTypes_WarnJuror_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  BaloonWarningUserTypes_Fake_UserType
  ;

const
   { Константы для типа формы WarnPreActive }
  WarnPreActiveName = 'WarnPreActive';
   { Строковый идентификатор пользовательского типа "" }
  WarnPreActive = TvcmUserType(WarnJuror + 1);

type
  Tkw_FormUserType_WarnPreActive = class(TtfwInteger)
   {* Слово словаря для типа формы WarnPreActive }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_WarnPreActive
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_WarnPreActive

{$If not defined(NoScripts)}
function Tkw_FormUserType_WarnPreActive.GetInteger: Integer;
 {-}
begin
 Result := WarnPreActive;
end;//Tkw_FormUserType_WarnPreActive.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_WarnPreActive
 Tkw_FormUserType_WarnPreActive.Register('тип_формы::WarnPreActive');
{$IfEnd} //not Admin AND not Monitorings

end.