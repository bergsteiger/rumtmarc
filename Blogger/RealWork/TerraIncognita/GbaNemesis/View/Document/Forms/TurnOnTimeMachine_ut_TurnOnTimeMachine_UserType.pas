unit TurnOnTimeMachine_ut_TurnOnTimeMachine_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Document/Forms/TurnOnTimeMachine_ut_TurnOnTimeMachine_UserType.pas"
// Начат: 05.02.2009 19:28
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Работа с документом и списком документов::Document::View::Document::Document::TurnOnTimeMachine::ut_TurnOnTimeMachine
//
// TurnOnTimeMachine
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
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
    { Константы для типа формы ut_TurnOnTimeMachine }
   ut_TurnOnTimeMachineName = 'ut_TurnOnTimeMachine';
    { Строковый идентификатор пользовательского типа "TurnOnTimeMachine" }
   ut_TurnOnTimeMachine = TvcmUserType(0);
    { TurnOnTimeMachine }

type
   Tkw_FormUserType_ut_TurnOnTimeMachine = class(TtfwInteger)
    {* Слово словаря для типа формы ut_TurnOnTimeMachine }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FormUserType_ut_TurnOnTimeMachine
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_ut_TurnOnTimeMachine

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_TurnOnTimeMachine.GetInteger: Integer;
 {-}
begin
 Result := ut_TurnOnTimeMachine;
end;//Tkw_FormUserType_ut_TurnOnTimeMachine.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_ut_TurnOnTimeMachine
 Tkw_FormUserType_ut_TurnOnTimeMachine.Register('тип_формы::ut_TurnOnTimeMachine');
{$IfEnd} //not Admin AND not Monitorings

end.