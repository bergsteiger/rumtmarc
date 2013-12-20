{$IfNDef kwVTCustomReminder_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwVTCustomReminder.imp.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::vtControlsFromStackWords::kwVTCustomReminder
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define kwVTCustomReminder_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwControlFromStackWord.imp.pas}
 _kwVTCustomReminder_ = {mixin} class(_kwControlFromStackWord_)
 protected
 // realized methods
   procedure DoControl(aControl: TControl;
     const aCtx: TtfwContext); override;
 protected
 // protected methods
   procedure DoWithvtCustomReminder(const aReminder: TvtCustomReminder;
     const aCtx: TtfwContext); virtual; abstract;
 end;//_kwVTCustomReminder_
{$IfEnd} //not NoScripts

{$Else kwVTCustomReminder_imp}

{$IfNDef kwVTCustomReminder_imp_impl}
{$Define kwVTCustomReminder_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\kwControlFromStackWord.imp.pas}

type
  TvtHackCustomReminder = class(TvtCustomReminder)
  end;//TvtHackCustomReminder

// start class _kwVTCustomReminder_

procedure _kwVTCustomReminder_.DoControl(aControl: TControl;
  const aCtx: TtfwContext);
//#UC START# *4F212C3A015A_4FFD369603E3_var*
//#UC END# *4F212C3A015A_4FFD369603E3_var*
begin
//#UC START# *4F212C3A015A_4FFD369603E3_impl*
 DoWithvtCustomReminder(aControl as TvtCustomReminder, aCtx);
//#UC END# *4F212C3A015A_4FFD369603E3_impl*
end;//_kwVTCustomReminder_.DoControl

{$IfEnd} //not NoScripts

{$Else  kwVTCustomReminder_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwControlFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf kwVTCustomReminder_imp_impl}
{$EndIf kwVTCustomReminder_imp}
