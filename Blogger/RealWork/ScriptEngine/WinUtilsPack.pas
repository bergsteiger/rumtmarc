unit WinUtilsPack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/WinUtilsPack.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeywordsPack::Class>> Shared Delphi Scripting::ScriptEngine::WinUtils::WinUtilsPack
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
  kwWindowFromPoint,
  kwGetForegroundWindow,
  kwWindowIsMine,
  kwFindWindowByCaption,
  kwAskWindowToCloseItself,
  kwCloseWindow,
  kwSetForegroundWindow,
  kwIterateWindows,
  kwGetWindowText,
  kwGetClassName,
  kwIterateChildWindows,
  kwDesktopHeight,
  kwScreenWidth,
  kwMainScreenWidth,
  kwDesktopWidth,
  kwScreenHeight,
  kwMainScreenHeight,
  kwScreenCount
  ;

{$IfEnd} //not NoScripts
end.