unit kwCompiledPopToVar;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledPopToVar.pas"
// �����: 29.04.2011 22:55
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwCompiledPopToVar
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
  kwCompiledVarWorker,
  tfwScriptingInterfaces,
  kwCompiledVar
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledPopToVar = class(TkwCompiledVarWorker)
 protected
 // realized methods
   procedure DoVar(const aCtx: TtfwContext;
     aVar: TkwCompiledVar); override;
 end;//TkwCompiledPopToVar
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TkwCompiledPopToVar

procedure TkwCompiledPopToVar.DoVar(const aCtx: TtfwContext;
  aVar: TkwCompiledVar);
//#UC START# *4DCBCD2200D2_4DBB09750084_var*
//#UC END# *4DCBCD2200D2_4DBB09750084_var*
begin
//#UC START# *4DCBCD2200D2_4DBB09750084_impl*
 aVar.Value := aCtx.rEngine.Pop;
//#UC END# *4DCBCD2200D2_4DBB09750084_impl*
end;//TkwCompiledPopToVar.DoVar

{$IfEnd} //not NoScripts

end.