unit kwCompiledStringVarRSplitTo;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledStringVarRSplitTo.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::StringProcessing::TkwCompiledStringVarRSplitTo
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
 TkwCompiledStringVarRSplitTo = class(_kwCompiledVarAsStringWorker_)
 protected
 // realized methods
   procedure DoVar(const aCtx: TtfwContext;
     aVar: TkwCompiledVar); override;
 end;//TkwCompiledStringVarRSplitTo
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

// start class TkwCompiledStringVarRSplitTo

procedure TkwCompiledStringVarRSplitTo.DoVar(const aCtx: TtfwContext;
  aVar: TkwCompiledVar);
//#UC START# *4DCBCD2200D2_4F62D7750383_var*
var
 l_V : Il3CString;
 l_P : Tl3PCharLen;
 l_S : Il3CString;
 l_WS : Tl3WString;
 l_Found : PAnsiChar;

 //l_Pref : Il3CString;
 //l_Suff : Il3CString;
//#UC END# *4DCBCD2200D2_4F62D7750383_var*
begin
//#UC START# *4DCBCD2200D2_4F62D7750383_impl*
 l_V := aVar.Value.AsString;
 Tl3WString(l_P) := l3PCharLen(l_V);
 l_S := aCtx.rEngine.PopString;
 l_WS := l3PCharLen(l_S);
 Assert(not l3IsNil(l_WS));
 Assert(l_P.SLen >= 0);
 Assert(l3IsAnsi(l_P.SCodePage));
 if (l_WS.SLen = 1) then
 begin
  l_Found := ev_lpRScan(l_WS.S[0], l_P.S, l_P.SLen);
  if (l_Found = nil) then
  begin
   aCtx.rEngine.PushString(l_P);
   aVar.Value := TtfwStackValue_C(TtfwCStringFactory.C(''));
  end//l_Found = nil
  else
  begin
   aCtx.rEngine.PushString(l3Copy(l_P, l_Found - l_P.S + 1));
   aVar.Value := TtfwStackValue_C(TtfwCStringFactory.C(l3PCharLen(l_P.S, l_Found - l_P.S, l_P.SCodePage)));
  end;//l_Found = nil
 end//l_WS.SLen = 1
 else
 begin
  //l3Split(l_V, l_S, l_Pref, l_Suff);
  //aCtx.rEngine.PushString(l_Pref);
  //aVar.Value := TtfwStackValue_C(l_Suff);
  Assert(false, '���� �� �����������');
 end;//l_WS.SLen = 1
//#UC END# *4DCBCD2200D2_4F62D7750383_impl*
end;//TkwCompiledStringVarRSplitTo.DoVar

{$IfEnd} //not NoScripts

end.