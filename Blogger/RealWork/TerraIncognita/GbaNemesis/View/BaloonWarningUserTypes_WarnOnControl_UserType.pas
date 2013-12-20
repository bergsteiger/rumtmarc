unit BaloonWarningUserTypes_WarnOnControl_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaloonWarningUserTypes_WarnOnControl_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::BaloonWarningUserTypes::WarnOnControl
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
  BaloonWarningUserTypes_WarnIsAbolished_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  BaloonWarningUserTypes_Fake_UserType
  ;

const
   { Константы для типа формы WarnOnControl }
  WarnOnControlName = 'WarnOnControl';
   { Строковый идентификатор пользовательского типа "" }
  WarnOnControl = TvcmUserType(WarnIsAbolished + 1);

type
  Tkw_FormUserType_WarnOnControl = class(TtfwInteger)
   {* Слово словаря для типа формы WarnOnControl }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_WarnOnControl
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_WarnOnControl

{$If not defined(NoScripts)}
function Tkw_FormUserType_WarnOnControl.GetInteger: Integer;
 {-}
begin
 Result := WarnOnControl;
end;//Tkw_FormUserType_WarnOnControl.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_WarnOnControl
 Tkw_FormUserType_WarnOnControl.Register('тип_формы::WarnOnControl');
{$IfEnd} //not Admin AND not Monitorings

end.