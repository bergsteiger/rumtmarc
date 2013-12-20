unit kwPopReminderIsBaloonVisible;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwPopReminderIsBaloonVisible.pas"
// Начат: 04.05.2011 19:56
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::vtControlsFromStackWords::pop_reminder_IsBaloonVisible
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
 TkwPopReminderIsBaloonVisible = class(_kwVTCustomReminder_)
 protected
 // realized methods
   procedure DoWithvtCustomReminder(const aReminder: TvtCustomReminder;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopReminderIsBaloonVisible
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

type _Instance_R_ = TkwPopReminderIsBaloonVisible;

{$Include ..\ScriptEngine\kwVTCustomReminder.imp.pas}

// start class TkwPopReminderIsBaloonVisible

procedure TkwPopReminderIsBaloonVisible.DoWithvtCustomReminder(const aReminder: TvtCustomReminder;
  const aCtx: TtfwContext);
//#UC START# *4FFD36D9017A_4DC177190157_var*
//#UC END# *4FFD36D9017A_4DC177190157_var*
begin
//#UC START# *4FFD36D9017A_4DC177190157_impl*
 {$If not defined(NoVGScene)}
 with TvtHackCustomReminder(aReminder) do
  aCtx.rEngine.PushBool((PopupForm <> nil) and PopupForm.Visible);
 {$IfEnd} 
//#UC END# *4FFD36D9017A_4DC177190157_impl*
end;//TkwPopReminderIsBaloonVisible.DoWithvtCustomReminder

class function TkwPopReminderIsBaloonVisible.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:reminder:IsBaloonVisible';
end;//TkwPopReminderIsBaloonVisible.GetWordNameForRegister

{$IfEnd} //not NoScripts AND not NoVGScene

initialization
{$If not defined(NoScripts) AND not defined(NoVGScene)}
 {$Include ..\ScriptEngine\kwVTCustomReminder.imp.pas}
{$IfEnd} //not NoScripts AND not NoVGScene

end.