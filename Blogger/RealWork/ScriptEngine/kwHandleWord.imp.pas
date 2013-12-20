{$IfNDef kwHandleWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwHandleWord.imp.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::WinUtils::kwHandleWord
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define kwHandleWord_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 _kwHandleWord_ = {mixin} class(_tfwAutoregisteringWord_)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // protected methods
   procedure DoWithHandle(aHandle: THandle;
     const aCtx: TtfwContext); virtual; abstract;
 end;//_kwHandleWord_
{$IfEnd} //not NoScripts

{$Else kwHandleWord_imp}

{$IfNDef kwHandleWord_imp_impl}
{$Define kwHandleWord_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class _kwHandleWord_

procedure _kwHandleWord_.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_510A9FAA025A_var*
//#UC END# *4DAEEDE10285_510A9FAA025A_var*
begin
//#UC START# *4DAEEDE10285_510A9FAA025A_impl*
 RunnerAssert(aCtx.rEngine.IsTopInt, '�� ������� ���������� ����.', aCtx);
 DoWithHandle(aCtx.rEngine.PopInt, aCtx);
//#UC END# *4DAEEDE10285_510A9FAA025A_impl*
end;//_kwHandleWord_.DoDoIt

{$IfEnd} //not NoScripts

{$Else  kwHandleWord_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf kwHandleWord_imp_impl}
{$EndIf kwHandleWord_imp}
