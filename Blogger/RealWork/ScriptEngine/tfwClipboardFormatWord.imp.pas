{$IfNDef tfwClipboardFormatWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/tfwClipboardFormatWord.imp.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::SysUtils::tfwClipboardFormatWord
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define tfwClipboardFormatWord_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 _tfwClipboardFormatWord_ = {mixin} class(_tfwAutoregisteringWord_)
 end;//_tfwClipboardFormatWord_
{$IfEnd} //not NoScripts

{$Else tfwClipboardFormatWord_imp}

{$IfNDef tfwClipboardFormatWord_imp_impl}
{$Define tfwClipboardFormatWord_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}


{$IfEnd} //not NoScripts

{$Else  tfwClipboardFormatWord_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf tfwClipboardFormatWord_imp_impl}
{$EndIf tfwClipboardFormatWord_imp}
