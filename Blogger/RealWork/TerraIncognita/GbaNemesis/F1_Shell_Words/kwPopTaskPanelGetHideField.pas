unit kwPopTaskPanelGetHideField;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Shell Words"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/kwPopTaskPanelGetHideField.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> F1 Поддержка тестов::F1 Shell Words::TaskPanelWords::pop_TaskPanel_GetHideField
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\GbaNemesis\nsDefine.inc}

interface

{$If not defined(NoVCM)}
uses
  Classes
  {$If defined(Nemesis)}
  ,
  nscTasksPanelView
  {$IfEnd} //Nemesis
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  Controls
  ;
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
type
 {$Include ..\F1_Shell_Words\nscTaskPanelWord.imp.pas}
 TkwPopTaskPanelGetHideField = {final} class(_nscTaskPanelWord_)
 protected
 // realized methods
   procedure DoTaskPanel(aTaskPanel: TnscTasksPanelView;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   {$If not defined(NoScripts)}
   class function GetWordNameForRegister: AnsiString; override;
   {$IfEnd} //not NoScripts
 end;//TkwPopTaskPanelGetHideField
{$IfEnd} //not NoVCM

implementation

{$If not defined(NoVCM)}
uses
  SysUtils
  {$If not defined(NoScripts)}
  ,
  tfwAutoregisteredDiction
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  Windows,
  afwFacade,
  Forms
  ;
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}

type _Instance_R_ = TkwPopTaskPanelGetHideField;

{$Include ..\F1_Shell_Words\nscTaskPanelWord.imp.pas}

// start class TkwPopTaskPanelGetHideField

procedure TkwPopTaskPanelGetHideField.DoTaskPanel(aTaskPanel: TnscTasksPanelView;
  const aCtx: TtfwContext);
//#UC START# *51013C610024_51013CD801CB_var*
var
 l_Index: Integer;
//#UC END# *51013C610024_51013CD801CB_var*
begin
//#UC START# *51013C610024_51013CD801CB_impl*
 RunnerAssert(aCtx.rEngine.IsTopInt, 'Не указан номер группы в ПЗ!', aCtx);
 l_Index := aCtx.rEngine.PopInt;
 aCtx.rEngine.PushObj(aTaskPanel.HideField[l_Index]);
//#UC END# *51013C610024_51013CD801CB_impl*
end;//TkwPopTaskPanelGetHideField.DoTaskPanel

{$If not defined(NoScripts)}
class function TkwPopTaskPanelGetHideField.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:TaskPanel:GetHideField';
end;//TkwPopTaskPanelGetHideField.GetWordNameForRegister
{$IfEnd} //not NoScripts

{$IfEnd} //not NoVCM

initialization
{$If not defined(NoVCM)}
 {$Include ..\F1_Shell_Words\nscTaskPanelWord.imp.pas}
{$IfEnd} //not NoVCM

end.