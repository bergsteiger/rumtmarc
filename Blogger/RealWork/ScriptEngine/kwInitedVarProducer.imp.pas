{$IfNDef kwInitedVarProducer_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwInitedVarProducer.imp.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::VarProducing::kwInitedVarProducer
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define kwInitedVarProducer_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwWordProducer.imp.pas}
 _kwInitedVarProducer_ = {mixin} class(_tfwWordProducer_)
 protected
 // overridden protected methods
   function CompiledWordClass: RkwCompiledWord; override;
 end;//_kwInitedVarProducer_
{$IfEnd} //not NoScripts

{$Else kwInitedVarProducer_imp}

{$IfNDef kwInitedVarProducer_imp_impl}
{$Define kwInitedVarProducer_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\tfwWordProducer.imp.pas}

// start class _kwInitedVarProducer_

function _kwInitedVarProducer_.CompiledWordClass: RkwCompiledWord;
//#UC START# *4DBAEE0D028D_4F3E187500E9_var*
//#UC END# *4DBAEE0D028D_4F3E187500E9_var*
begin
//#UC START# *4DBAEE0D028D_4F3E187500E9_impl*
 Result := TkwCompiledInitableVar;
//#UC END# *4DBAEE0D028D_4F3E187500E9_impl*
end;//_kwInitedVarProducer_.CompiledWordClass

{$IfEnd} //not NoScripts

{$Else  kwInitedVarProducer_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwWordProducer.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf kwInitedVarProducer_imp_impl}
{$EndIf kwInitedVarProducer_imp}
