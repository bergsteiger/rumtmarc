unit kwCompiledImmediateWordWorkerWord;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledImmediateWordWorkerWord.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwCompiledImmediateWordWorkerWord
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
  kwCompiledWordWorkerWord,
  kwCompiledWordWorkerWordRunner
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledImmediateWordWorkerWord = class(TkwCompiledWordWorkerWord)
 protected
 // overridden protected methods
   function SupressNextImmediate: Boolean; override;
   function RunnerClass: RkwCompiledWordWorkerWordRunner; override;
 end;//TkwCompiledImmediateWordWorkerWord
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledImmediateWordWorkerWordRunner
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwCompiledImmediateWordWorkerWord

function TkwCompiledImmediateWordWorkerWord.SupressNextImmediate: Boolean;
//#UC START# *4F3AB3B101FC_4F3FAC650392_var*
//#UC END# *4F3AB3B101FC_4F3FAC650392_var*
begin
//#UC START# *4F3AB3B101FC_4F3FAC650392_impl*
 Result := true;
//#UC END# *4F3AB3B101FC_4F3FAC650392_impl*
end;//TkwCompiledImmediateWordWorkerWord.SupressNextImmediate

function TkwCompiledImmediateWordWorkerWord.RunnerClass: RkwCompiledWordWorkerWordRunner;
//#UC START# *4F3FAC0C0170_4F3FAC650392_var*
//#UC END# *4F3FAC0C0170_4F3FAC650392_var*
begin
//#UC START# *4F3FAC0C0170_4F3FAC650392_impl*
 Result := TkwCompiledImmediateWordWorkerWordRunner;
//#UC END# *4F3FAC0C0170_4F3FAC650392_impl*
end;//TkwCompiledImmediateWordWorkerWord.RunnerClass

{$IfEnd} //not NoScripts

end.