unit kwPopReminderFindEditor;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwPopReminderFindEditor.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::vtControlsFromStackWords::pop_reminder_FindEditor
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts) AND not defined(NoVGScene)}
uses
  vtCustomReminder,
  tfwScriptingInterfaces,
  Controls,
  Classes
  ;
{$IfEnd} //not NoScripts AND not NoVGScene

{$If not defined(NoScripts) AND not defined(NoVGScene)}
type
 {$Include ..\ScriptEngine\kwVTCustomReminder.imp.pas}
 TkwPopReminderFindEditor = {final} class(_kwVTCustomReminder_)
 protected
 // realized methods
   procedure DoWithvtCustomReminder(const aReminder: TvtCustomReminder;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopReminderFindEditor
{$IfEnd} //not NoScripts AND not NoVGScene

implementation

{$If not defined(NoScripts) AND not defined(NoVGScene)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  Windows,
  afwFacade,
  Forms
  ;
{$IfEnd} //not NoScripts AND not NoVGScene

{$If not defined(NoScripts) AND not defined(NoVGScene)}

type _Instance_R_ = TkwPopReminderFindEditor;

{$Include ..\ScriptEngine\kwVTCustomReminder.imp.pas}

// start class TkwPopReminderFindEditor

procedure TkwPopReminderFindEditor.DoWithvtCustomReminder(const aReminder: TvtCustomReminder;
  const aCtx: TtfwContext);
//#UC START# *4FFD36D9017A_4F75BBD0030E_var*
var
 l_F : TForm;
 l_E : TComponent;
//#UC END# *4FFD36D9017A_4F75BBD0030E_var*
begin
//#UC START# *4FFD36D9017A_4F75BBD0030E_impl*
 {$If not defined(NoVGScene)}
 with TvtHackCustomReminder(aReminder) do
 begin
  RunnerAssert(Assigned(PopupForm) and PopupForm.Visible, 'Баллон не существует или невидим.', aCtx);
  l_F := PopupForm.Panel.Controls[0] as TForm;
  l_E := l_F.FindComponent('Viewer');
  RunnerAssert(Assigned(l_E), 'Не найден редактор в баллоне.', aCtx);
  aCtx.rEngine.PushObj(l_E);
 end;
 {$IfEnd}
//#UC END# *4FFD36D9017A_4F75BBD0030E_impl*
end;//TkwPopReminderFindEditor.DoWithvtCustomReminder

class function TkwPopReminderFindEditor.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:reminder:FindEditor';
end;//TkwPopReminderFindEditor.GetWordNameForRegister

{$IfEnd} //not NoScripts AND not NoVGScene

initialization
{$If not defined(NoScripts) AND not defined(NoVGScene)}
 {$Include ..\ScriptEngine\kwVTCustomReminder.imp.pas}
{$IfEnd} //not NoScripts AND not NoVGScene

end.