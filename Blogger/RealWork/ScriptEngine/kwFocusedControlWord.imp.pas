{$IfNDef kwFocusedControlWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwFocusedControlWord.imp.pas"
// �����: 26.01.2012 14:09
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::CommonWords::kwFocusedControlWord
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define kwFocusedControlWord_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 _SystemWord_Parent_ = _tfwAutoregisteringWord_;
 {$Include ..\ScriptEngine\SystemWord.imp.pas}
 _kwFocusedControlWord_ = {abstract mixin} class(_SystemWord_)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // protected methods
   procedure DoControl(aControl: TControl;
     const aCtx: TtfwContext); virtual; abstract;
 end;//_kwFocusedControlWord_
{$IfEnd} //not NoScripts

{$Else kwFocusedControlWord_imp}

{$IfNDef kwFocusedControlWord_imp_impl}
{$Define kwFocusedControlWord_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

{$Include ..\ScriptEngine\SystemWord.imp.pas}

// start class _kwFocusedControlWord_

procedure _kwFocusedControlWord_.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F21264200F6_var*
var
 l_C : TControl;
//#UC END# *4DAEEDE10285_4F21264200F6_var*
begin
//#UC START# *4DAEEDE10285_4F21264200F6_impl*
 l_C := FindControl(GetFocus);
 if (l_C = nil) then
 // - �������� �� ��� ���������� ��� �� ��� ��� ��������� �����
 begin
  RunnerAssert(Screen.ActiveForm <> nil, '��� �������� �����', aCtx);
  l_C := Screen.ActiveForm.ActiveControl;
 end;//l_C = nil
 RunnerAssert(l_C <> nil, '�� ����� ������� � ������', aCtx);
 DoControl(l_C, aCtx);
//#UC END# *4DAEEDE10285_4F21264200F6_impl*
end;//_kwFocusedControlWord_.DoDoIt

{$IfEnd} //not NoScripts

{$Else  kwFocusedControlWord_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf kwFocusedControlWord_imp_impl}
{$EndIf kwFocusedControlWord_imp}
