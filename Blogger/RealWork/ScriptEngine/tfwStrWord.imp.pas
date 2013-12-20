{$IfNDef tfwStrWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/tfwStrWord.imp.pas"
// �����: 16.05.2011 11:16
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::tfwStrWord
//
// ��������� ���� ��� ������ �� ��������.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define tfwStrWord_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwSysUtilsWord.imp.pas}
 _tfwStrWord_ = {abstract mixin} class(_tfwSysUtilsWord_)
  {* ��������� ���� ��� ������ �� ��������. }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // protected methods
   procedure DoString(const aCtx: TtfwContext;
     const aStr: Il3CString); virtual; abstract;
 end;//_tfwStrWord_
{$IfEnd} //not NoScripts

{$Else tfwStrWord_imp}

{$IfNDef tfwStrWord_imp_impl}
{$Define tfwStrWord_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\tfwSysUtilsWord.imp.pas}

// start class _tfwStrWord_

procedure _tfwStrWord_.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DD0CF400328_var*
//#UC END# *4DAEEDE10285_4DD0CF400328_var*
begin
//#UC START# *4DAEEDE10285_4DD0CF400328_impl*
 DoString(aCtx, aCtx.rEngine.PopString);
//#UC END# *4DAEEDE10285_4DD0CF400328_impl*
end;//_tfwStrWord_.DoDoIt

{$IfEnd} //not NoScripts

{$Else  tfwStrWord_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwSysUtilsWord.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf tfwStrWord_imp_impl}
{$EndIf tfwStrWord_imp}
