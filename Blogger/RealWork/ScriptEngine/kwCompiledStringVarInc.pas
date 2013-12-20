unit kwCompiledStringVarInc;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledStringVarInc.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::StringProcessing::TkwCompiledStringVarInc
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
 TkwCompiledStringVarInc = class(_kwCompiledVarAsStringWorker_)
 protected
 // realized methods
   procedure DoVar(const aCtx: TtfwContext;
     aVar: TkwCompiledVar); override;
 end;//TkwCompiledStringVarInc
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

// start class TkwCompiledStringVarInc

procedure TkwCompiledStringVarInc.DoVar(const aCtx: TtfwContext;
  aVar: TkwCompiledVar);
//#UC START# *4DCBCD2200D2_4F5F00A6014C_var*
var
 l_P : Tl3PCharLen;
//#UC END# *4DCBCD2200D2_4F5F00A6014C_var*
begin
//#UC START# *4DCBCD2200D2_4F5F00A6014C_impl*
 Tl3WString(l_P) := l3PCharLen(aVar.Value.AsString);
 l_P.Shift(+1);
 aVar.Value := TtfwStackValue_C(TtfwCStringFactory.C(l_P));
//#UC END# *4DCBCD2200D2_4F5F00A6014C_impl*
end;//TkwCompiledStringVarInc.DoVar

{$IfEnd} //not NoScripts

end.