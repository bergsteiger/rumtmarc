unit BaloonWarningUserTypes_WarnTimeMachineException_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaloonWarningUserTypes_WarnTimeMachineException_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::BaloonWarningUserTypes::WarnTimeMachineException
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
  BaloonWarningUserTypes_WarnTimeMachineWarning_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  BaloonWarningUserTypes_Fake_UserType
  ;

const
   { Константы для типа формы WarnTimeMachineException }
  WarnTimeMachineExceptionName = 'WarnTimeMachineException';
   { Строковый идентификатор пользовательского типа "" }
  WarnTimeMachineException = TvcmUserType(WarnTimeMachineWarning + 1);

type
  Tkw_FormUserType_WarnTimeMachineException = class(TtfwInteger)
   {* Слово словаря для типа формы WarnTimeMachineException }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_WarnTimeMachineException
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_WarnTimeMachineException

{$If not defined(NoScripts)}
function Tkw_FormUserType_WarnTimeMachineException.GetInteger: Integer;
 {-}
begin
 Result := WarnTimeMachineException;
end;//Tkw_FormUserType_WarnTimeMachineException.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_WarnTimeMachineException
 Tkw_FormUserType_WarnTimeMachineException.Register('тип_формы::WarnTimeMachineException');
{$IfEnd} //not Admin AND not Monitorings

end.