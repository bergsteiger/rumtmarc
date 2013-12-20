unit BaloonWarningUserTypes_remOnlineDead_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaloonWarningUserTypes_remOnlineDead_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::BaloonWarningUserTypes::remOnlineDead
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
  BaloonWarningUserTypes_remUnreadConsultations_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  BaloonWarningUserTypes_Fake_UserType
  ;

const
   { Константы для типа формы remOnlineDead }
  remOnlineDeadName = 'remOnlineDead';
   { Строковый идентификатор пользовательского типа "" }
  remOnlineDead = TvcmUserType(remUnreadConsultations + 1);

type
  Tkw_FormUserType_remOnlineDead = class(TtfwInteger)
   {* Слово словаря для типа формы remOnlineDead }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_remOnlineDead
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_remOnlineDead

{$If not defined(NoScripts)}
function Tkw_FormUserType_remOnlineDead.GetInteger: Integer;
 {-}
begin
 Result := remOnlineDead;
end;//Tkw_FormUserType_remOnlineDead.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_remOnlineDead
 Tkw_FormUserType_remOnlineDead.Register('тип_формы::remOnlineDead');
{$IfEnd} //not Admin AND not Monitorings

end.