{$IfNDef tfwSysUtilsWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/tfwSysUtilsWord.imp.pas"
// �����: 16.05.2011 11:11
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::tfwSysUtilsWord
//
// ��������� ���� �� SysUtils
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define tfwSysUtilsWord_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 _tfwSysUtilsWord_ = {abstract mixin} class(_tfwAutoregisteringWord_)
  {* ��������� ���� �� SysUtils }
 end;//_tfwSysUtilsWord_
{$IfEnd} //not NoScripts

{$Else tfwSysUtilsWord_imp}

{$IfNDef tfwSysUtilsWord_imp_impl}
{$Define tfwSysUtilsWord_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}


{$IfEnd} //not NoScripts

{$Else  tfwSysUtilsWord_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf tfwSysUtilsWord_imp_impl}
{$EndIf tfwSysUtilsWord_imp}
