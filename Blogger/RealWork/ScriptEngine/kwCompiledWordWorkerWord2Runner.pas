unit kwCompiledWordWorkerWord2Runner;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledWordWorkerWord2Runner.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwCompiledWordWorkerWord2Runner
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
  kwCompiledWordWorkerWordRunner,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledWordWorkerWord2Runner = class(TkwCompiledWordWorkerWordRunner)
 protected
 // overridden protected methods
   procedure PushWordToWork(const aCtx: TtfwContext); override;
 end;//TkwCompiledWordWorkerWord2Runner
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledWord
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwCompiledWordWorkerWord2Runner

procedure TkwCompiledWordWorkerWord2Runner.PushWordToWork(const aCtx: TtfwContext);
//#UC START# *4F414A1A0247_5087A1C8004D_var*
//#UC END# *4F414A1A0247_5087A1C8004D_var*
begin
//#UC START# *4F414A1A0247_5087A1C8004D_impl*
 aCtx.rEngine.Push(TtfwStackValue_C((f_Word As TkwCompiledWord).Code[0]));
 aCtx.rEngine.Push(TtfwStackValue_C((f_Word As TkwCompiledWord).Code[1]));
//#UC END# *4F414A1A0247_5087A1C8004D_impl*
end;//TkwCompiledWordWorkerWord2Runner.PushWordToWork

{$IfEnd} //not NoScripts

end.