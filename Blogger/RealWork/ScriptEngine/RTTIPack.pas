unit RTTIPack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/RTTIPack.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeywordsPack::Class>> Shared Delphi Scripting::ScriptEngine::RTTI::RTTIPack
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
  kwPopObjectGetObjProp,
  kwPopObjectSetOrdProp,
  kwPopObjectGetOrdProp,
  kwPopObjectSetStrProp,
  kwPopObjectGetStrProp,
  kwPopObjectRTTIInfo,
  kwPopObjectGetFloatProp,
  kwPopObjectSetFloatProp,
  kwPopObjectGetInterfaceProp,
  kwPopObjectHasProp
  ;

{$IfEnd} //not NoScripts
end.