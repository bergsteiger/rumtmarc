{$IfNDef tfwStandardProcedure_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/tfwStandardProcedure.imp.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::tfwStandardProcedure
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define tfwStandardProcedure_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwProcedure.imp.pas}
 _tfwStandardProcedure_ = {abstract mixin} class(_tfwProcedure_)
 protected
 // realized methods
   function EndBracket(const aContext: TtfwContext): AnsiString; override;
 end;//_tfwStandardProcedure_
{$IfEnd} //not NoScripts

{$Else tfwStandardProcedure_imp}

{$IfNDef tfwStandardProcedure_imp_impl}
{$Define tfwStandardProcedure_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\tfwProcedure.imp.pas}

// start class _tfwStandardProcedure_

function _tfwStandardProcedure_.EndBracket(const aContext: TtfwContext): AnsiString;
//#UC START# *4DB6C99F026E_4F37B27502EE_var*
//#UC END# *4DB6C99F026E_4F37B27502EE_var*
begin
//#UC START# *4DB6C99F026E_4F37B27502EE_impl*
 Result := ';';
//#UC END# *4DB6C99F026E_4F37B27502EE_impl*
end;//_tfwStandardProcedure_.EndBracket

{$IfEnd} //not NoScripts

{$Else  tfwStandardProcedure_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwProcedure.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf tfwStandardProcedure_imp_impl}
{$EndIf tfwStandardProcedure_imp}
