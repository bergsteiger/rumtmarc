unit RegisteringControlsClasses;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/RegisteringControlsClasses.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi Scripting::ScriptEngine::ControlsProcessing::RegisteringControlsClasses
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
  StdCtrls,
  tfwClassRef
  ;

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
//#UC START# *513DDE8B0169*
 TtfwClassRef.Register(TComboBox);
//#UC END# *513DDE8B0169*
{$IfEnd} //not NoScripts

end.