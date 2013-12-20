{$IfNDef tfwBeginLikeWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/tfwBeginLikeWord.imp.pas"
// �����: 29.04.2011 21:02
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::tfwBeginLikeWord
//
// ��������� ����-������.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define tfwBeginLikeWord_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAnonimousWord.imp.pas}
 _tfwBeginLikeWord_ = {abstract mixin} class(_tfwAnonimousWord_)
  {* ��������� ����-������. }
 protected
 // overridden protected methods
   procedure AfterCompile(var aPrevContext: TtfwContext;
     var theNewContext: TtfwContext;
     aCompiled: TkwCompiledWord); override;
 end;//_tfwBeginLikeWord_
{$IfEnd} //not NoScripts

{$Else tfwBeginLikeWord_imp}

{$IfNDef tfwBeginLikeWord_imp_impl}
{$Define tfwBeginLikeWord_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\tfwAnonimousWord.imp.pas}

// start class _tfwBeginLikeWord_

procedure _tfwBeginLikeWord_.AfterCompile(var aPrevContext: TtfwContext;
  var theNewContext: TtfwContext;
  aCompiled: TkwCompiledWord);
//#UC START# *4DB6CE2302C9_4DBAEF29031F_var*
//#UC END# *4DB6CE2302C9_4DBAEF29031F_var*
begin
//#UC START# *4DB6CE2302C9_4DBAEF29031F_impl*
 DoCompiledWord(aCompiled, aPrevContext);
 inherited;
//#UC END# *4DB6CE2302C9_4DBAEF29031F_impl*
end;//_tfwBeginLikeWord_.AfterCompile

{$IfEnd} //not NoScripts

{$Else  tfwBeginLikeWord_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAnonimousWord.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf tfwBeginLikeWord_imp_impl}
{$EndIf tfwBeginLikeWord_imp}
