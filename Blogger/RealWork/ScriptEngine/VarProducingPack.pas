unit VarProducingPack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/VarProducingPack.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeywordsPack::Class>> Shared Delphi Scripting::ScriptEngine::VarProducing::VarProducingPack
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
  kwInitedVarProducer,
  kwVarProducer,
  kwNamedInitedVarProducer,
  kwAutolinkProducer,
  kwNamedAutolinkProducer
  ;

{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledInitedVarProducer,
  kwCompiledInitableVar,
  kwCompiledWord,
  kwCompiledVar,
  SysUtils,
  l3String,
  l3Parser,
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
  kwCompiledVarProducer,
  kwCompiledNamedInitedVarProducer,
  kwCompiledAutolinkProducer,
  kwCompiledNamedAutolinkProducer
  ;

{$IfEnd} //not NoScripts
end.