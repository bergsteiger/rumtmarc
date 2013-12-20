unit PrimMainMenuNew_utMainMenuNew_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/MainMenu/Forms/PrimMainMenuNew_utMainMenuNew_UserType.pas"
// Начат: 29.12.2008 17:43
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Интерфейсные элементы::MainMenu::View::MainMenu::PrimMainMenuNew::utMainMenuNew
//
// Основное меню
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
   { Константы для типа формы utMainMenuNew }
  utMainMenuNewName = 'utMainMenuNew';
   { Строковый идентификатор пользовательского типа "Основное меню" }
  utMainMenuNew = TvcmUserType(0);
   { Основное меню }

type
  Tkw_FormUserType_utMainMenuNew = class(TtfwInteger)
   {* Слово словаря для типа формы utMainMenuNew }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utMainMenuNew
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utMainMenuNew

{$If not defined(NoScripts)}
function Tkw_FormUserType_utMainMenuNew.GetInteger: Integer;
 {-}
begin
 Result := utMainMenuNew;
end;//Tkw_FormUserType_utMainMenuNew.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_utMainMenuNew
 Tkw_FormUserType_utMainMenuNew.Register('тип_формы::utMainMenuNew');
{$IfEnd} //not Admin AND not Monitorings

end.