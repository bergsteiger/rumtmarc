{$IfNDef kwRTTIWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwRTTIWord.imp.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::RTTI::kwRTTIWord
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define kwRTTIWord_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwObjectFromStackWord.imp.pas}
 _kwRTTIWord_ = {mixin} class(_kwObjectFromStackWord_)
 end;//_kwRTTIWord_
{$IfEnd} //not NoScripts

{$Else kwRTTIWord_imp}

{$IfNDef kwRTTIWord_imp_impl}
{$Define kwRTTIWord_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\kwObjectFromStackWord.imp.pas}


{$IfEnd} //not NoScripts

{$Else  kwRTTIWord_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwObjectFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf kwRTTIWord_imp_impl}
{$EndIf kwRTTIWord_imp}
