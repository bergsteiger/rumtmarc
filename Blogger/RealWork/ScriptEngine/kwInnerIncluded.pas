unit kwInnerIncluded;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwInnerIncluded.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::IncludesAndUses::TkwInnerIncluded
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
  kwIncluded,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwInnerIncluded = class(TkwIncluded)
 protected
 // overridden protected methods
   procedure FillContext(const anOldContext: TtfwContext;
     var theNewContext: TtfwContext); override;
 end;//TkwInnerIncluded
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3ParserInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwInnerIncluded

procedure TkwInnerIncluded.FillContext(const anOldContext: TtfwContext;
  var theNewContext: TtfwContext);
//#UC START# *4F3AA59B025A_4F3AA545006F_var*
var
 l_F : Il3KeywordFinder;
 l_C : ItfwCompiler;
//#UC END# *4F3AA59B025A_4F3AA545006F_var*
begin
//#UC START# *4F3AA59B025A_4F3AA545006F_impl*
 inherited;
 //l_P.KeyWords := aCtx.rEngine.As_Il3KeywordFinder; {!!! - ����� ����� �������� � ScriptEngine}
 //l_Ctx.rCompiler := nil; {!!! - ����� ����� �������� � ScriptEngine}
 if (anOldContext.rCompiler <> nil) then
 begin
  l_F := anOldContext.rCompiler.As_ItfwKeywordFinder.ParentFinder;
  l_C := l_F As ItfwCompiler;
  theNewContext.rParser.KeyWords := l_F;
  {!!! - ����� ����� �������� ������� � ����������� �����}
  theNewContext.rCompiler := l_C;
  {!!! - ����� ����� �������� �� ���������� �����}
 end;//anOldContext.rCompiler <> nil
//#UC END# *4F3AA59B025A_4F3AA545006F_impl*
end;//TkwInnerIncluded.FillContext

{$IfEnd} //not NoScripts

end.