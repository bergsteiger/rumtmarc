unit MenuWordsPack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/MenuWordsPack.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeywordsPack::Class>> Shared Delphi Scripting::ScriptEngine::MenuWords::MenuWordsPack
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
  kwMenuitemGetCount,
  kwMenuitemGetCaption,
  kwMenuitemGetItem,
  kwMenuitemIsVisible,
  kwPopFormFindMenuItem,
  kwMenuitemIsEnabled,
  kwMenuitemClick,
  kwMenuitemGetMenuHeight
  ;

{$IfEnd} //not NoScripts
end.