{$IfNDef tfwProcedure_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/tfwProcedure.imp.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::tfwProcedure
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define tfwProcedure_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwNewWord.imp.pas}
 _tfwProcedure_ = {abstract mixin} class(_tfwNewWord_)
 protected
 // overridden protected methods
   function CompiledWordClass: RkwCompiledWord; override;
 end;//_tfwProcedure_
{$IfEnd} //not NoScripts

{$Else tfwProcedure_imp}

{$IfNDef tfwProcedure_imp_impl}
{$Define tfwProcedure_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\tfwNewWord.imp.pas}

// start class _tfwProcedure_

function _tfwProcedure_.CompiledWordClass: RkwCompiledWord;
//#UC START# *4DBAEE0D028D_4F216D4803C0_var*
//#UC END# *4DBAEE0D028D_4F216D4803C0_var*
begin
//#UC START# *4DBAEE0D028D_4F216D4803C0_impl*
 Result := TkwCompiledProcedure;
//#UC END# *4DBAEE0D028D_4F216D4803C0_impl*
end;//_tfwProcedure_.CompiledWordClass

{$IfEnd} //not NoScripts

{$Else  tfwProcedure_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwNewWord.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf tfwProcedure_imp_impl}
{$EndIf tfwProcedure_imp}
