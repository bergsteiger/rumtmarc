unit NemesisMain_utMainWindow_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/NemesisMain_utMainWindow_UserType.pas"
// Начат: 29.12.2008 16:25
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Оболочка Без Прецедентов::F1 Without Usecases::View::PrimNemesis::NemesisMain::utMainWindow
//
// Главное окно
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
   { Константы для типа формы utMainWindow }
  utMainWindowName = 'utMainWindow';
   { Строковый идентификатор пользовательского типа "Главное окно" }
  utMainWindow = TvcmUserType(0);
   { Главное окно }

type
  Tkw_FormUserType_utMainWindow = class(TtfwInteger)
   {* Слово словаря для типа формы utMainWindow }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utMainWindow
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utMainWindow

{$If not defined(NoScripts)}
function Tkw_FormUserType_utMainWindow.GetInteger: Integer;
 {-}
begin
 Result := utMainWindow;
end;//Tkw_FormUserType_utMainWindow.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_utMainWindow
 Tkw_FormUserType_utMainWindow.Register('тип_формы::utMainWindow');
{$IfEnd} //not Admin AND not Monitorings

end.