unit PrimNavigator_utNavigator_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/PrimNavigator_utNavigator_UserType.pas"
// Начат: 02.11.2009 16:45
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Common::View::Common::PrimNavigator::utNavigator
//
// Меню
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
   { Константы для типа формы utNavigator }
  utNavigatorName = 'utNavigator';
   { Строковый идентификатор пользовательского типа "Меню" }
  utNavigator = TvcmUserType(0);
   { Меню }

type
  Tkw_FormUserType_utNavigator = class(TtfwInteger)
   {* Слово словаря для типа формы utNavigator }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utNavigator
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utNavigator

{$If not defined(NoScripts)}
function Tkw_FormUserType_utNavigator.GetInteger: Integer;
 {-}
begin
 Result := utNavigator;
end;//Tkw_FormUserType_utNavigator.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_utNavigator
 Tkw_FormUserType_utNavigator.Register('тип_формы::utNavigator');
{$IfEnd} //not Admin AND not Monitorings

end.