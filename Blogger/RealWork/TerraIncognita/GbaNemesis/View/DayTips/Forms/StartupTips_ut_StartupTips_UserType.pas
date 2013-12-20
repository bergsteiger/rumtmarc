unit StartupTips_ut_StartupTips_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/DayTips/Forms/StartupTips_ut_StartupTips_UserType.pas"
// Начат: 04.09.2009 12:52
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Интерфейсные элементы::DayTips::View::DayTips::DayTips::StartupTips::ut_StartupTips
//
// StartupTips
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
    { Константы для типа формы ut_StartupTips }
   ut_StartupTipsName = 'ut_StartupTips';
    { Строковый идентификатор пользовательского типа "StartupTips" }
   ut_StartupTips = TvcmUserType(0);
    { StartupTips }

type
   Tkw_FormUserType_ut_StartupTips = class(TtfwInteger)
    {* Слово словаря для типа формы ut_StartupTips }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FormUserType_ut_StartupTips
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_ut_StartupTips

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_StartupTips.GetInteger: Integer;
 {-}
begin
 Result := ut_StartupTips;
end;//Tkw_FormUserType_ut_StartupTips.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_ut_StartupTips
 Tkw_FormUserType_ut_StartupTips.Register('тип_формы::ut_StartupTips');
{$IfEnd} //not Admin AND not Monitorings

end.