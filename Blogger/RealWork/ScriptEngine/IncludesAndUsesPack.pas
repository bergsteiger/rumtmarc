unit IncludesAndUsesPack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/IncludesAndUsesPack.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeywordsPack::Class>> Shared Delphi Scripting::ScriptEngine::IncludesAndUses::IncludesAndUsesPack
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
  kwInclude,
  kwUses,
  kwINCLUDES,
  kwIncludesInChildren
  ;

{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwIncluded,
  l3String,
  SysUtils,
  l3Types,
  l3Parser,
  kwCompiledWord,
  kwInteger,
  kwString,
  TypInfo,
  tfwScriptingInterfaces,
  l3Base,
  l3ParserInterfaces,
  kwIntegerFactory,
  kwStringFactory,
  l3Chars,
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  kwInnerIncluded,
  kwInnerIncludedInChildren,
  kwCompiledProcedure
  ;

{$IfEnd} //not NoScripts
end.