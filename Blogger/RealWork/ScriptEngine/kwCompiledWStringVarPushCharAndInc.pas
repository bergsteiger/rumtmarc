unit kwCompiledWStringVarPushCharAndInc;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledWStringVarPushCharAndInc.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::StringProcessing::TkwCompiledWStringVarPushCharAndInc
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
 TkwCompiledWStringVarPushCharAndInc = class(_kwCompiledVarAsStringWorker_)
 protected
 // realized methods
   procedure DoVar(const aCtx: TtfwContext;
     aVar: TkwCompiledVar); override;
 end;//TkwCompiledWStringVarPushCharAndInc
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

// start class TkwCompiledWStringVarPushCharAndInc

procedure TkwCompiledWStringVarPushCharAndInc.DoVar(const aCtx: TtfwContext;
  aVar: TkwCompiledVar);
//#UC START# *4DCBCD2200D2_4F509C940338_var*
var
 l_P : Tl3PCharLen;
//#UC END# *4DCBCD2200D2_4F509C940338_var*
begin
//#UC START# *4DCBCD2200D2_4F509C940338_impl*
 if (aVar.Value.rType = tfw_svtStr) then
 begin
  Tl3WString(l_P) := aVar.Value.AsString.AsWStr;
  aCtx.rEngine.PushChar(l_P.S^);
  l_P.Shift(+1);
  aVar.Value := TtfwStackValue_C(TtfwCStringFactory.C(l_P));
 end//aVar.Value.rType = tfw_svtStr
 else
 begin
  Tl3WString(l_P) := aVar.Value.AsWString;
  aCtx.rEngine.PushChar(l_P.S^);
  l_P.Shift(+1);
  aVar.Value := TtfwStackValue_C(l_P);
 end;//aVar.Value.rType = tfw_svtStr
//#UC END# *4DCBCD2200D2_4F509C940338_impl*
end;//TkwCompiledWStringVarPushCharAndInc.DoVar

{$IfEnd} //not NoScripts

end.