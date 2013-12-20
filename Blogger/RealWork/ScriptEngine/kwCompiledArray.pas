unit kwCompiledArray;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledArray.pas"
// �����: 12.05.2011 21:17
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::ArrayProcessing::TkwCompiledArray
//
// ���������������� ������ Array
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
  kwCompiledVar
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledArray = class(TkwCompiledVar)
  {* ���������������� ������ Array }
 protected
 // overridden protected methods
   procedure InitFields; override;
 end;//TkwCompiledArray
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwArray,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwCompiledArray

procedure TkwCompiledArray.InitFields;
//#UC START# *47A042E100E2_4DCC1607022E_var*
//#UC END# *47A042E100E2_4DCC1607022E_var*
begin
//#UC START# *47A042E100E2_4DCC1607022E_impl*
 inherited;
 Modifiers := Modifiers + [tfw_wmList];
 Value := TtfwStackValue_C(TtfwArray.Make);
//#UC END# *47A042E100E2_4DCC1607022E_impl*
end;//TkwCompiledArray.InitFields

{$IfEnd} //not NoScripts

end.