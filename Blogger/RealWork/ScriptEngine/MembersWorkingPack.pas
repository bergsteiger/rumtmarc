unit MembersWorkingPack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/MembersWorkingPack.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeywordsPack::Class>> Shared Delphi Scripting::ScriptEngine::MembersWorking::MembersWorkingPack
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  kwCompiledWord,
  kwCheckVar,
  kwFindMember,
  kwGetMember,
  kwIterateMembers,
  kwIterateCode
  ;

{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledCheckVar,
  l3Parser,
  kwInteger,
  kwString,
  SysUtils,
  TypInfo,
  tfwScriptingInterfaces,
  l3Base,
  l3ParserInterfaces,
  kwIntegerFactory,
  kwStringFactory,
  l3String,
  l3Chars,
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  kwCompiledFindMember,
  kwCompiledMembersPath,
  kwCompiledIterateMembers,
  kwCompiledIterateCode
  ;

{$IfEnd} //not NoScripts
end.