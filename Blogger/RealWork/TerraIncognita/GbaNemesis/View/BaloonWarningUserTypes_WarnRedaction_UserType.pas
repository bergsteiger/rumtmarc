unit BaloonWarningUserTypes_WarnRedaction_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaloonWarningUserTypes_WarnRedaction_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::BaloonWarningUserTypes::WarnRedaction
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
  BaloonWarningUserTypes_WarnTimeMachineOn_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  BaloonWarningUserTypes_Fake_UserType
  ;

const
   { Константы для типа формы WarnRedaction }
  WarnRedactionName = 'WarnRedaction';
   { Строковый идентификатор пользовательского типа "" }
  WarnRedaction = TvcmUserType(WarnTimeMachineOn + 1);

type
  Tkw_FormUserType_WarnRedaction = class(TtfwInteger)
   {* Слово словаря для типа формы WarnRedaction }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_WarnRedaction
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_WarnRedaction

{$If not defined(NoScripts)}
function Tkw_FormUserType_WarnRedaction.GetInteger: Integer;
 {-}
begin
 Result := WarnRedaction;
end;//Tkw_FormUserType_WarnRedaction.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_WarnRedaction
 Tkw_FormUserType_WarnRedaction.Register('тип_формы::WarnRedaction');
{$IfEnd} //not Admin AND not Monitorings

end.