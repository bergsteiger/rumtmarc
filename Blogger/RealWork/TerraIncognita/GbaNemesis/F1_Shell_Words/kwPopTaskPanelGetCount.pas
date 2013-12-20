unit kwPopTaskPanelGetCount;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Shell Words"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/kwPopTaskPanelGetCount.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> F1 Поддержка тестов::F1 Shell Words::TaskPanelWords::pop_TaskPanel_GetCount
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
 TkwPopTaskPanelGetCount = {final} class(_nscTaskPanelWord_)
 protected
 // realized methods
   procedure DoTaskPanel(aTaskPanel: TnscTasksPanelView;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   {$If not defined(NoScripts)}
   class function GetWordNameForRegister: AnsiString; override;
   {$IfEnd} //not NoScripts
 end;//TkwPopTaskPanelGetCount
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

type _Instance_R_ = TkwPopTaskPanelGetCount;

{$Include ..\F1_Shell_Words\nscTaskPanelWord.imp.pas}

// start class TkwPopTaskPanelGetCount

procedure TkwPopTaskPanelGetCount.DoTaskPanel(aTaskPanel: TnscTasksPanelView;
  const aCtx: TtfwContext);
//#UC START# *51013C610024_51013CC101D4_var*
//#UC END# *51013C610024_51013CC101D4_var*
begin
//#UC START# *51013C610024_51013CC101D4_impl*
 aCtx.rEngine.PushInt(aTaskPanel.Count);
//#UC END# *51013C610024_51013CC101D4_impl*
end;//TkwPopTaskPanelGetCount.DoTaskPanel

{$If not defined(NoScripts)}
class function TkwPopTaskPanelGetCount.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:TaskPanel:GetCount';
end;//TkwPopTaskPanelGetCount.GetWordNameForRegister
{$IfEnd} //not NoScripts

{$IfEnd} //not NoVCM

initialization
{$If not defined(NoVCM)}
 {$Include ..\F1_Shell_Words\nscTaskPanelWord.imp.pas}
{$IfEnd} //not NoVCM

end.