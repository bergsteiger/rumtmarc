unit InpharmMainMenu_ut_mmmMain_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Inpharm/Forms/InpharmMainMenu_ut_mmmMain_UserType.pas"
// Начат: 29.12.2008 18:10
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Встроенные продукты::Inpharm::View::Inpharm::InpharmMainMenu::ut_mmmMain
//
// справочник ГАРАНТ-ИнФарм: Лекарства и фирмы
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
   { Константы для типа формы ut_mmmMain }
  ut_mmmMainName = 'ut_mmmMain';
   { Строковый идентификатор пользовательского типа "справочник ГАРАНТ-ИнФарм: Лекарства и фирмы" }
  ut_mmmMain = TvcmUserType(0);
   { справочник ГАРАНТ-ИнФарм: Лекарства и фирмы }

type
  Tkw_FormUserType_ut_mmmMain = class(TtfwInteger)
   {* Слово словаря для типа формы ut_mmmMain }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_ut_mmmMain
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_ut_mmmMain

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_mmmMain.GetInteger: Integer;
 {-}
begin
 Result := ut_mmmMain;
end;//Tkw_FormUserType_ut_mmmMain.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_ut_mmmMain
 Tkw_FormUserType_ut_mmmMain.Register('тип_формы::ut_mmmMain');
{$IfEnd} //not Admin AND not Monitorings

end.