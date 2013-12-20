unit kwCompiledWordContainer;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledWordContainer.pas"
// �����: 26.04.2011 19:30
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwCompiledWordContainer
//
// ��������� ��� ����������������� ����.
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
 TkwCompiledWordContainer = {abstract} class(TtfwWord)
  {* ��������� ��� ����������������� ����. }
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* ������� ������� ����� �������. }
 protected
 // protected fields
   f_Compiled : TkwCompiledWord;
 public
 // public methods
   constructor Create(aCompiled: TkwCompiledWord); reintroduce;
 end;//TkwCompiledWordContainer
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  SysUtils,
  l3Base
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwCompiledWordContainer

constructor TkwCompiledWordContainer.Create(aCompiled: TkwCompiledWord);
//#UC START# *4DB6E4AB01B1_4DB6E4630256_var*
//#UC END# *4DB6E4AB01B1_4DB6E4630256_var*
begin
//#UC START# *4DB6E4AB01B1_4DB6E4630256_impl*
 inherited Create;
 l3Set(f_Compiled, aCompiled);
//#UC END# *4DB6E4AB01B1_4DB6E4630256_impl*
end;//TkwCompiledWordContainer.Create

procedure TkwCompiledWordContainer.Cleanup;
//#UC START# *479731C50290_4DB6E4630256_var*
//#UC END# *479731C50290_4DB6E4630256_var*
begin
//#UC START# *479731C50290_4DB6E4630256_impl*
 FreeAndNil(f_Compiled);
 inherited;
//#UC END# *479731C50290_4DB6E4630256_impl*
end;//TkwCompiledWordContainer.Cleanup

{$IfEnd} //not NoScripts

end.