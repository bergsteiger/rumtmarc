unit PrimStyleEditorContainer_utStyleEditorContainer_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Settings/Forms/PrimStyleEditorContainer_utStyleEditorContainer_UserType.pas"
// Начат: 02.10.2009 22:02
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Основные прецеденты::Settings::View::Settings::PrimStyleEditorContainer::utStyleEditorContainer
//
// Редактор стилей
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
   { Константы для типа формы utStyleEditorContainer }
  utStyleEditorContainerName = 'utStyleEditorContainer';
   { Строковый идентификатор пользовательского типа "Редактор стилей" }
  utStyleEditorContainer = TvcmUserType(0);
   { Редактор стилей }

type
  Tkw_FormUserType_utStyleEditorContainer = class(TtfwInteger)
   {* Слово словаря для типа формы utStyleEditorContainer }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utStyleEditorContainer
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utStyleEditorContainer

{$If not defined(NoScripts)}
function Tkw_FormUserType_utStyleEditorContainer.GetInteger: Integer;
 {-}
begin
 Result := utStyleEditorContainer;
end;//Tkw_FormUserType_utStyleEditorContainer.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_utStyleEditorContainer
 Tkw_FormUserType_utStyleEditorContainer.Register('тип_формы::utStyleEditorContainer');
{$IfEnd} //not Admin AND not Monitorings

end.