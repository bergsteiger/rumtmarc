unit kwCompiledDeclared;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledDeclared.pas"
// �����: 15.12.2011 20:55
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Basics::TkwCompiledDeclared
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
  kwCompiledWord,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledDeclared = class(TkwCompiledWord)
 protected
 // overridden protected methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 end;//TkwCompiledDeclared
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TkwCompiledDeclared

procedure TkwCompiledDeclared.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4EEA26850174_var*
//#UC END# *4DAEEDE10285_4EEA26850174_var*
begin
//#UC START# *4DAEEDE10285_4EEA26850174_impl*
 RunnerAssert(false, '������ ���������', aCtx);
//#UC END# *4DAEEDE10285_4EEA26850174_impl*
end;//TkwCompiledDeclared.DoDoIt

{$IfEnd} //not NoScripts

end.