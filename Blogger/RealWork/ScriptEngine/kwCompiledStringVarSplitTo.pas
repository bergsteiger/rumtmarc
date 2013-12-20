unit kwCompiledStringVarSplitTo;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledStringVarSplitTo.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::StringProcessing::TkwCompiledStringVarSplitTo
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
 TkwCompiledStringVarSplitTo = class(_kwCompiledVarAsStringWorker_)
 protected
 // realized methods
   procedure DoVar(const aCtx: TtfwContext;
     aVar: TkwCompiledVar); override;
 end;//TkwCompiledStringVarSplitTo
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

// start class TkwCompiledStringVarSplitTo

procedure TkwCompiledStringVarSplitTo.DoVar(const aCtx: TtfwContext;
  aVar: TkwCompiledVar);
//#UC START# *4DCBCD2200D2_4F5F149703A9_var*
var
 l_V : Il3CString;
 l_P : Tl3PCharLen;
 l_S : Il3CString;
 l_WS : Tl3WString;
 l_Rest : Tl3WString;

 l_Pref : Il3CString;
 l_Suff : Il3CString;
//#UC END# *4DCBCD2200D2_4F5F149703A9_var*
begin
//#UC START# *4DCBCD2200D2_4F5F149703A9_impl*
 l_V := aVar.Value.AsString;
 Tl3WString(l_P) := l3PCharLen(l_V);
 l_S := aCtx.rEngine.PopString;
 l_WS := l3PCharLen(l_S);
 Assert(not l3IsNil(l_WS));
 Assert(l_P.SLen >= 0);
 if (l_WS.SLen = 1) then
 begin
  l_Rest := l3FindChar(l_WS.S[0], l_P);
  if not l3IsNil(l_P) then
   if (l_P.S[l_P.SLen - 1] = l_WS.S[0]) then
    Dec(l_P.SLen);
  aCtx.rEngine.PushString(l_P);
  aVar.Value := TtfwStackValue_C(TtfwCStringFactory.C(l_Rest));
 end//l_WS.SLen = 1
 else
 begin
  l3Split(l_V, l_S, l_Pref, l_Suff);
  aCtx.rEngine.PushString(l_Pref);
  aVar.Value := TtfwStackValue_C(l_Suff);
  //Assert(false, '���� �� �����������');
 end;//l_WS.SLen = 1
//#UC END# *4DCBCD2200D2_4F5F149703A9_impl*
end;//TkwCompiledStringVarSplitTo.DoVar

{$IfEnd} //not NoScripts

end.