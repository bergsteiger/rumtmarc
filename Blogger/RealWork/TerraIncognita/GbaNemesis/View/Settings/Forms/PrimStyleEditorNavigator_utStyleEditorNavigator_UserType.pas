unit PrimStyleEditorNavigator_utStyleEditorNavigator_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Settings/Forms/PrimStyleEditorNavigator_utStyleEditorNavigator_UserType.pas"
// Начат: 28.10.2009 14:01
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Основные прецеденты::Settings::View::Settings::PrimStyleEditorNavigator::utStyleEditorNavigator
//
// Дерево стилей
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
   { Константы для типа формы utStyleEditorNavigator }
  utStyleEditorNavigatorName = 'utStyleEditorNavigator';
   { Строковый идентификатор пользовательского типа "Дерево стилей" }
  utStyleEditorNavigator = TvcmUserType(0);
   { Дерево стилей }

type
  Tkw_FormUserType_utStyleEditorNavigator = class(TtfwInteger)
   {* Слово словаря для типа формы utStyleEditorNavigator }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utStyleEditorNavigator
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utStyleEditorNavigator

{$If not defined(NoScripts)}
function Tkw_FormUserType_utStyleEditorNavigator.GetInteger: Integer;
 {-}
begin
 Result := utStyleEditorNavigator;
end;//Tkw_FormUserType_utStyleEditorNavigator.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_utStyleEditorNavigator
 Tkw_FormUserType_utStyleEditorNavigator.Register('тип_формы::utStyleEditorNavigator');
{$IfEnd} //not Admin AND not Monitorings

end.