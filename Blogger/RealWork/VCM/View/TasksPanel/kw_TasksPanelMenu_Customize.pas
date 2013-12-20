unit kw_TasksPanelMenu_Customize;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/common/components/gui/Garant/VCM/View/TasksPanel/kw_TasksPanelMenu_Customize.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Operations::VCMCustomization::View::TasksPanel::Tkw_TasksPanelMenu_Customize
//
// Слово словаря для вызова операции модуля TasksPanelMenu.Customize (Настройка панели задач
// Настройка...)
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
  vcmExternalInterfaces
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  ;

type
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwModuleOperationWord.imp.pas}
 Tkw_TasksPanelMenu_Customize = class(_tfwModuleOperationWord_)
  {* Слово словаря для вызова операции модуля TasksPanelMenu.Customize (Настройка панели задач Настройка...) }
 public
 // overridden public methods
   {$If not defined(NoScripts)}
   class function GetWordNameForRegister: AnsiString; override;
   {$IfEnd} //not NoScripts
 end;//Tkw_TasksPanelMenu_Customize

implementation

uses
  SysUtils
  {$If not defined(NoVCM)}
  ,
  vcmBase
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwAutoregisteredDiction
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;

type _Instance_R_ = Tkw_TasksPanelMenu_Customize;

{$Include w:\common\components\rtl\Garant\ScriptEngine\tfwModuleOperationWord.imp.pas}

// start class Tkw_TasksPanelMenu_Customize

{$If not defined(NoScripts)}
class function Tkw_TasksPanelMenu_Customize.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'моп::Настройка_панели_задач_Настройка...';
end;//Tkw_TasksPanelMenu_Customize.GetWordNameForRegister
{$IfEnd} //not NoScripts

initialization
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwModuleOperationWord.imp.pas}

end.