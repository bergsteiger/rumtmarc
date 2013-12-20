unit kwCompiledThread;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledThread.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::CodeFlowWords::TkwCompiledThread
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
  kwCompiledWordWorker,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledThread = class(TkwCompiledWordWorker)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 end;//TkwCompiledThread
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  seThreadSupport
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwCompiledThread

procedure TkwCompiledThread.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4FFFD8970110_var*
//#UC END# *4DAEEDE10285_4FFFD8970110_var*
begin
//#UC START# *4DAEEDE10285_4FFFD8970110_impl*
 TseWorkThreadList.Instance.AddAndResumeThread(aCtx, f_Word);
//#UC END# *4DAEEDE10285_4FFFD8970110_impl*
end;//TkwCompiledThread.DoDoIt

{$IfEnd} //not NoScripts

end.