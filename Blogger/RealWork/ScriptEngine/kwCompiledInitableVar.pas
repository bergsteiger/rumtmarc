unit kwCompiledInitableVar;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledInitableVar.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::VarProducing::TkwCompiledInitableVar
//
// ����������� ��� ���������� ������������� ����������, ����� ����� ������������� �� ������, �� �
// �������� VOID �������� ��� �������� ������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  kwInitedCompiledVar
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledInitableVar = class(TkwInitedCompiledVar)
  {* ����������� ��� ���������� ������������� ����������, ����� ����� ������������� �� ������, �� � �������� VOID �������� ��� �������� ������ }
 end;//TkwCompiledInitableVar
{$IfEnd} //not NoScripts

implementation

end.