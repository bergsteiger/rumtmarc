unit kwCompiledProcedure;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledProcedure.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwCompiledProcedure
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
  tfwScriptingInterfaces,
  kwCompiledWord
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledProcedure = class(TkwCompiledWord)
 protected
 // overridden property methods
   function pm_GetModifiers: TtfwWordModifiers; override;
   procedure pm_SetModifiers(aValue: TtfwWordModifiers); override;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* ������� ������� ����� �������. }
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // protected fields
   f_Modifiers : TtfwWordModifiers;
 end;//TkwCompiledProcedure
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TkwCompiledProcedure

procedure TkwCompiledProcedure.Cleanup;
//#UC START# *479731C50290_4F216D8D01A0_var*
//#UC END# *479731C50290_4F216D8D01A0_var*
begin
//#UC START# *479731C50290_4F216D8D01A0_impl*
 f_Modifiers := [];
 inherited;
//#UC END# *479731C50290_4F216D8D01A0_impl*
end;//TkwCompiledProcedure.Cleanup

procedure TkwCompiledProcedure.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F216D8D01A0_var*
//#UC END# *4DAEEDE10285_4F216D8D01A0_var*
begin
//#UC START# *4DAEEDE10285_4F216D8D01A0_impl*
 try
  inherited;
 except
  on EtfwExit do
   ;
  on EtfwBreak do
   raise EtfwCodeFlowError.Create('BREAK �� ����� ���������� ������� ���������');
  on EtfwContinue do
   raise EtfwCodeFlowError.Create('CONTINUE �� ����� ���������� ������� ���������'); 
 end;//try..except
//#UC END# *4DAEEDE10285_4F216D8D01A0_impl*
end;//TkwCompiledProcedure.DoDoIt

function TkwCompiledProcedure.pm_GetModifiers: TtfwWordModifiers;
//#UC START# *4DCACD1800C8_4F216D8D01A0get_var*
//#UC END# *4DCACD1800C8_4F216D8D01A0get_var*
begin
//#UC START# *4DCACD1800C8_4F216D8D01A0get_impl*
 Result := f_Modifiers; 
//#UC END# *4DCACD1800C8_4F216D8D01A0get_impl*
end;//TkwCompiledProcedure.pm_GetModifiers

procedure TkwCompiledProcedure.pm_SetModifiers(aValue: TtfwWordModifiers);
//#UC START# *4DCACD1800C8_4F216D8D01A0set_var*
//#UC END# *4DCACD1800C8_4F216D8D01A0set_var*
begin
//#UC START# *4DCACD1800C8_4F216D8D01A0set_impl*
 Assert(aValue - [tfw_wmPrivate, tfw_wmVirtual..tfw_wmPublic, tfw_wmRealize, tfw_wmOverride, tfw_wmRedefinition, tfw_wmAggregation .. tfw_wmSealed, tfw_wmCanBeMerged] = []);
 f_Modifiers := aValue;
//#UC END# *4DCACD1800C8_4F216D8D01A0set_impl*
end;//TkwCompiledProcedure.pm_SetModifiers

{$IfEnd} //not NoScripts

end.