unit kwCompiledImmediateCallerAndWordWorkerWordRunner;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledImmediateCallerAndWordWorkerWordRunner.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwCompiledImmediateCallerAndWordWorkerWordRunner
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
  tfwScriptingInterfaces,
  kwCompiledImmediateWordWorkerWordRunner
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledImmediateCallerAndWordWorkerWordRunner = class(TkwCompiledImmediateWordWorkerWordRunner)
 private
 // private fields
   f_Caller : TtfwWord;
    {* ���� ��� �������� Caller}
 protected
 // overridden protected methods
   procedure PushState(const aCtx: TtfwContext); override;
 protected
 // protected methods
   procedure PushCaller(const aCtx: TtfwContext); virtual;
 public
 // public properties
   property Caller: TtfwWord
     read f_Caller
     write f_Caller;
 end;//TkwCompiledImmediateCallerAndWordWorkerWordRunner
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TkwCompiledImmediateCallerAndWordWorkerWordRunner

procedure TkwCompiledImmediateCallerAndWordWorkerWordRunner.PushCaller(const aCtx: TtfwContext);
//#UC START# *4F41435B027B_4F3FF64A00F3_var*
//#UC END# *4F41435B027B_4F3FF64A00F3_var*
begin
//#UC START# *4F41435B027B_4F3FF64A00F3_impl*
 aCtx.rEngine.Push(TtfwStackValue_C(Caller));
//#UC END# *4F41435B027B_4F3FF64A00F3_impl*
end;//TkwCompiledImmediateCallerAndWordWorkerWordRunner.PushCaller

procedure TkwCompiledImmediateCallerAndWordWorkerWordRunner.PushState(const aCtx: TtfwContext);
//#UC START# *4F3FF6C20122_4F3FF64A00F3_var*
//#UC END# *4F3FF6C20122_4F3FF64A00F3_var*
begin
//#UC START# *4F3FF6C20122_4F3FF64A00F3_impl*
 PushCaller(aCtx);
 inherited;
//#UC END# *4F3FF6C20122_4F3FF64A00F3_impl*
end;//TkwCompiledImmediateCallerAndWordWorkerWordRunner.PushState

{$IfEnd} //not NoScripts

end.