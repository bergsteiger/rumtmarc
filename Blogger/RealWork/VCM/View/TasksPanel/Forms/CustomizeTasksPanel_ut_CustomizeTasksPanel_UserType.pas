unit CustomizeTasksPanel_ut_CustomizeTasksPanel_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/VCM/View/TasksPanel/Forms/CustomizeTasksPanel_ut_CustomizeTasksPanel_UserType.pas"
// Начат: 13.09.2010 20:12
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> Shared Delphi Operations::VCMCustomization::View::TasksPanel::PrimTasksPanelMenu::CustomizeTasksPanel::ut_CustomizeTasksPanel
//
// CustomizeTasksPanel
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
    { Константы для типа формы ut_CustomizeTasksPanel }
   ut_CustomizeTasksPanelName = 'ut_CustomizeTasksPanel';
    { Строковый идентификатор пользовательского типа "CustomizeTasksPanel" }
   ut_CustomizeTasksPanel = TvcmUserType(0);
    { CustomizeTasksPanel }

type
   Tkw_FormUserType_ut_CustomizeTasksPanel = class(TtfwInteger)
    {* Слово словаря для типа формы ut_CustomizeTasksPanel }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FormUserType_ut_CustomizeTasksPanel

implementation

// start class Tkw_FormUserType_ut_CustomizeTasksPanel

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_CustomizeTasksPanel.GetInteger: Integer;
 {-}
begin
 Result := ut_CustomizeTasksPanel;
end;//Tkw_FormUserType_ut_CustomizeTasksPanel.GetInteger
{$IfEnd} //not NoScripts

initialization
// Регистрация Tkw_FormUserType_ut_CustomizeTasksPanel
 Tkw_FormUserType_ut_CustomizeTasksPanel.Register('тип_формы::ut_CustomizeTasksPanel');

end.