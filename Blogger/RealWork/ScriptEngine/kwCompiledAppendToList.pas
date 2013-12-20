unit kwCompiledAppendToList;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledAppendToList.pas"
// �����: 12.05.2011 21:29
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::ArrayProcessing::TkwCompiledAppendToList
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
 TkwCompiledAppendToList = class(TkwCompiledVarWorker)
 protected
 // realized methods
   procedure DoVar(const aCtx: TtfwContext;
     aVar: TkwCompiledVar); override;
 end;//TkwCompiledAppendToList
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TkwCompiledAppendToList

procedure TkwCompiledAppendToList.DoVar(const aCtx: TtfwContext;
  aVar: TkwCompiledVar);
//#UC START# *4DCBCD2200D2_4DCC18BE02BA_var*
//#UC END# *4DCBCD2200D2_4DCC18BE02BA_var*
begin
//#UC START# *4DCBCD2200D2_4DCC18BE02BA_impl*
 aVar.Value.AsList.Add(aCtx.rEngine.Pop);
//#UC END# *4DCBCD2200D2_4DCC18BE02BA_impl*
end;//TkwCompiledAppendToList.DoVar

{$IfEnd} //not NoScripts

end.