unit CompilationPack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/CompilationPack.pas"
// �����: 12.02.2012 16:13
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeywordsPack::Class>> Shared Delphi Scripting::ScriptEngine::Compilation::CompilationPack
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompilingWordSelf,
  kwPopWordParent,
  kwPopWordProducer,
  kwPopWordName,
  kwNotImplemented,
  kwPopWordPublicateInMainDictionary,
  kwINHERITED,
  kwPublicateWordDefiningNowInMainDictionary,
  kwFORWARD,
  kwCtxPushCompiler,
  kwCtxPushFinder,
  kwPopCompilerSetToCtx,
  kwPopFinderSetToCtx
  ;

{$IfEnd} //not NoScripts
end.