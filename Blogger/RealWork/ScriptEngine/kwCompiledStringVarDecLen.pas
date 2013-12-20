unit kwCompiledStringVarDecLen;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledStringVarDecLen.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::StringProcessing::TkwCompiledStringVarDecLen
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
 TkwCompiledStringVarDecLen = class(_kwCompiledVarAsStringWorker_)
 protected
 // realized methods
   procedure DoVar(const aCtx: TtfwContext;
     aVar: TkwCompiledVar); override;
 end;//TkwCompiledStringVarDecLen
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

// start class TkwCompiledStringVarDecLen

procedure TkwCompiledStringVarDecLen.DoVar(const aCtx: TtfwContext;
  aVar: TkwCompiledVar);
//#UC START# *4DCBCD2200D2_4F5F01AF034B_var*
var
 l_P : Tl3PCharLen;
//#UC END# *4DCBCD2200D2_4F5F01AF034B_var*
begin
//#UC START# *4DCBCD2200D2_4F5F01AF034B_impl*
 Tl3WString(l_P) := l3PCharLen(aVar.Value.AsString);
 Dec(l_P.SLen);
 Assert(l_P.SLen >= 0);
 aVar.Value := TtfwStackValue_C(TtfwCStringFactory.C(l_P));
//#UC END# *4DCBCD2200D2_4F5F01AF034B_impl*
end;//TkwCompiledStringVarDecLen.DoVar

{$IfEnd} //not NoScripts

end.