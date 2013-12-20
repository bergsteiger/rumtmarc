{$IfNDef tfwModuleOperationWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/tfwModuleOperationWord.imp.pas"
// Начат: 21.04.2011 20:52
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::tfwModuleOperationWord
//
// Слово для выполнения операции модуля
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define tfwModuleOperationWord_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 _tfwModuleOperationWord_ = {mixin} class(_tfwAutoregisteringWord_)
  {* Слово для выполнения операции модуля }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // protected methods
   class function GetModuleOperationCode: TvcmMOPID; virtual;
 end;//_tfwModuleOperationWord_
{$IfEnd} //not NoScripts

{$Else tfwModuleOperationWord_imp}

{$IfNDef tfwModuleOperationWord_imp_impl}
{$Define tfwModuleOperationWord_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class _tfwModuleOperationWord_

class function _tfwModuleOperationWord_.GetModuleOperationCode: TvcmMOPID;
//#UC START# *4DB079E00084_4DB060930263_var*
//#UC END# *4DB079E00084_4DB060930263_var*
begin
//#UC START# *4DB079E00084_4DB060930263_impl*
 FillChar(Result, SizeOf(Result), $FF);
 Assert(false);
//#UC END# *4DB079E00084_4DB060930263_impl*
end;//_tfwModuleOperationWord_.GetModuleOperationCode

procedure _tfwModuleOperationWord_.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DB060930263_var*
//#UC END# *4DAEEDE10285_4DB060930263_var*
begin
//#UC START# *4DAEEDE10285_4DB060930263_impl*
 aCtx.rCaller.Check(vcmDispatcher.ModuleOperation(GetModuleOperationCode));
//#UC END# *4DAEEDE10285_4DB060930263_impl*
end;//_tfwModuleOperationWord_.DoDoIt

{$IfEnd} //not NoScripts

{$Else  tfwModuleOperationWord_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf tfwModuleOperationWord_imp_impl}
{$EndIf tfwModuleOperationWord_imp}
