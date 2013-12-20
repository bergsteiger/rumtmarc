unit MouseInputPack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/MouseInputPack.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeywordsPack::Class>> Shared Delphi Scripting::ScriptEngine::MouseInput::MouseInputPack
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
  kwMouseLeftDown,
  kwMouseLeftUp,
  kwMouseMiddleUp,
  kwMouseMiddleDown,
  kwMouseRightUp,
  kwMouseRightDown,
  kwMouseSetCursorPosition,
  kwMouseGetCursorIndex,
  kwMouseGetCursorNameByIndex,
  kwMouseGetCursorPosition,
  kwMouseWheelUp,
  kwMouseWheelDown
  ;

{$IfEnd} //not NoScripts
end.