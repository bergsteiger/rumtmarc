unit tfwStringWords;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/tfwStringWords.pas"
// �����: 01.12.2011 18:59
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeywordsPack::Class>> Shared Delphi Scripting::ScriptEngine::StringProcessing::tfwStringWords
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
  kwStringChar
  ;

{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  SysUtils,
  l3String,
  l3Base,
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  kwStringReplace,
  kwStringReplaceFirst,
  kwTextReplace,
  kwTextReplaceFirst,
  kwStringLen,
  kwStringCodePage,
  kwStringToChar,
  kwCharToString,
  kwWStringToString,
  kwWStringChar,
  kwWStringLen,
  kwWStringCodePage,
  kwWStringStarts,
  kwWStringEnds,
  kwWStringStartsText,
  kwWStringEndsText,
  kwWStringShift,
  kwWStringIsNil,
  kwWStringInc,
  kwWStringFirstChar,
  kwStartsStr,
  kwStringSplit,
  kwStartsText,
  kwEndsText,
  kwEndsStr,
  kwCat,
  kwStrToInt,
  kwSameStr,
  kwSameText,
  kwCompareStr,
  kwCompareText,
  kwWStringVarInc,
  kwWStringVarShift,
  kwWStringVarPushCharAndInc,
  kwCharDupe,
  kwStringHasAnyOf,
  kwStringConsistsOf,
  kwWStringHasAnyOf,
  kwWStringConsistsOf,
  kwWStringVarDecLen,
  kwWStringVarSplitTo,
  kwStringVarInc,
  kwStringVarShift,
  kwStringVarDecLen,
  kwStringVarSplitTo,
  kwWStringVarRSplitTo,
  kwStringVarRSplitTo,
  kwStringPos,
  kwStringPosEx
  ;

{$IfEnd} //not NoScripts
end.