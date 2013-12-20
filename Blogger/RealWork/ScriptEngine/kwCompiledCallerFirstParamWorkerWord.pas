unit kwCompiledCallerFirstParamWorkerWord;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledCallerFirstParamWorkerWord.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwCompiledCallerFirstParamWorkerWord
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  kwCompiledCallerWorkerWord,
  kwCompiledWordWorkerWordRunner
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledCallerFirstParamWorkerWord = class(TkwCompiledCallerWorkerWord)
 protected
 // overridden protected methods
   function RunnerClass: RkwCompiledWordWorkerWordRunner; override;
 end;//TkwCompiledCallerFirstParamWorkerWord
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledCallerFirstParamWordRunner
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwCompiledCallerFirstParamWorkerWord

function TkwCompiledCallerFirstParamWorkerWord.RunnerClass: RkwCompiledWordWorkerWordRunner;
//#UC START# *4F3FAC0C0170_4F417E2903CD_var*
//#UC END# *4F3FAC0C0170_4F417E2903CD_var*
begin
//#UC START# *4F3FAC0C0170_4F417E2903CD_impl*
 Result := TkwCompiledCallerFirstParamWordRunner;
//#UC END# *4F3FAC0C0170_4F417E2903CD_impl*
end;//TkwCompiledCallerFirstParamWorkerWord.RunnerClass

{$IfEnd} //not NoScripts

end.