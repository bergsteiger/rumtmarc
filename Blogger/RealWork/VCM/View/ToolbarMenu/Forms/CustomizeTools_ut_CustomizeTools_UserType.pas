unit CustomizeTools_ut_CustomizeTools_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/VCM/View/ToolbarMenu/Forms/CustomizeTools_ut_CustomizeTools_UserType.pas"
// Начат: 13.09.2010 19:27
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> Shared Delphi Operations::VCMCustomization::View::ToolbarMenu::PrimToolbarMenu::CustomizeTools::ut_CustomizeTools
//
// CustomizeTools
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

interface

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
    { Константы для типа формы ut_CustomizeTools }
   ut_CustomizeToolsName = 'ut_CustomizeTools';
    { Строковый идентификатор пользовательского типа "CustomizeTools" }
   ut_CustomizeTools = TvcmUserType(0);
    { CustomizeTools }

type
   Tkw_FormUserType_ut_CustomizeTools = class(TtfwInteger)
    {* Слово словаря для типа формы ut_CustomizeTools }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FormUserType_ut_CustomizeTools

implementation

// start class Tkw_FormUserType_ut_CustomizeTools

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_CustomizeTools.GetInteger: Integer;
 {-}
begin
 Result := ut_CustomizeTools;
end;//Tkw_FormUserType_ut_CustomizeTools.GetInteger
{$IfEnd} //not NoScripts

initialization
// Регистрация Tkw_FormUserType_ut_CustomizeTools
 Tkw_FormUserType_ut_CustomizeTools.Register('тип_формы::ut_CustomizeTools');

end.