unit PrimAdminMain_utEmptyMainWindow_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/PrimAdminMain_utEmptyMainWindow_UserType.pas"
// Начат: 07.09.2009 18:30
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Администратор::Admin$Shell::AdminApp::PrimAdminMain::utEmptyMainWindow
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

{$If defined(Admin)}
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
   { Константы для типа формы utEmptyMainWindow }
  utEmptyMainWindowName = 'utEmptyMainWindow';
   { Строковый идентификатор пользовательского типа "Главное окно" }
  utEmptyMainWindow = TvcmUserType(0);
   { Главное окно }

type
  Tkw_FormUserType_utEmptyMainWindow = class(TtfwInteger)
   {* Слово словаря для типа формы utEmptyMainWindow }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utEmptyMainWindow
{$IfEnd} //Admin

implementation

{$If defined(Admin)}
// start class Tkw_FormUserType_utEmptyMainWindow

{$If not defined(NoScripts)}
function Tkw_FormUserType_utEmptyMainWindow.GetInteger: Integer;
 {-}
begin
 Result := utEmptyMainWindow;
end;//Tkw_FormUserType_utEmptyMainWindow.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //Admin

initialization
{$If defined(Admin)}
// Регистрация Tkw_FormUserType_utEmptyMainWindow
 Tkw_FormUserType_utEmptyMainWindow.Register('тип_формы::utEmptyMainWindow');
{$IfEnd} //Admin

end.