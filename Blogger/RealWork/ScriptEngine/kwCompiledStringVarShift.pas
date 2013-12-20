unit kwCompiledStringVarShift;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledStringVarShift.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::StringProcessing::TkwCompiledStringVarShift
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
 {$Include ..\ScriptEngine\kwCompiledVarAsStringWorker.imp.pas}
 TkwCompiledStringVarShift = class(_kwCompiledVarAsStringWorker_)
 protected
 // realized methods
   procedure DoVar(const aCtx: TtfwContext;
     aVar: TkwCompiledVar); override;
 end;//TkwCompiledStringVarShift
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3Types,
  l3Interfaces,
  l3String
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

{$Include ..\ScriptEngine\kwCompiledVarAsStringWorker.imp.pas}

// start class TkwCompiledStringVarShift

procedure TkwCompiledStringVarShift.DoVar(const aCtx: TtfwContext;
  aVar: TkwCompiledVar);
//#UC START# *4DCBCD2200D2_4F5F011E033F_var*
var
 l_P : Tl3PCharLen;
//#UC END# *4DCBCD2200D2_4F5F011E033F_var*
begin
//#UC START# *4DCBCD2200D2_4F5F011E033F_impl*
 Tl3WString(l_P) := l3PCharLen(aVar.Value.AsString);
 l_P.Shift(aCtx.rEngine.PopInt);
 aVar.Value := TtfwStackValue_C(TtfwCStringFactory.C(l_P));
//#UC END# *4DCBCD2200D2_4F5F011E033F_impl*
end;//TkwCompiledStringVarShift.DoVar

{$IfEnd} //not NoScripts

end.