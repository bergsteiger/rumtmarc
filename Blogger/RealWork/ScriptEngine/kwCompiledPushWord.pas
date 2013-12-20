unit kwCompiledPushWord;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledPushWord.pas"
// �����: 12.05.2011 14:02
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwCompiledPushWord
//
// ��� ������� ����� �� ���� ����� ���������� �����
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
 TkwCompiledPushWord = class(TkwCompiledWordWorker)
  {* ��� ������� ����� �� ���� ����� ���������� ����� }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 end;//TkwCompiledPushWord
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  SysUtils,
  l3Base
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwCompiledPushWord

procedure TkwCompiledPushWord.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DCBB01600D1_var*
//#UC END# *4DAEEDE10285_4DCBB01600D1_var*
begin
//#UC START# *4DAEEDE10285_4DCBB01600D1_impl*
 aCtx.rEngine.Push(TtfwStackValue_C(f_Word));
//#UC END# *4DAEEDE10285_4DCBB01600D1_impl*
end;//TkwCompiledPushWord.DoDoIt

{$IfEnd} //not NoScripts

end.