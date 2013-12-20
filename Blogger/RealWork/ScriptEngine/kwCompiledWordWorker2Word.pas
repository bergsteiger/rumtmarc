unit kwCompiledWordWorker2Word;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledWordWorker2Word.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwCompiledWordWorker2Word
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
  kwCompiledWordWorkerWord,
  kwCompiledWordWorkerWordRunner
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledWordWorker2Word = class(TkwCompiledWordWorkerWord)
 protected
 // overridden protected methods
   function AfterWordMaxCount: Cardinal; override;
   function RunnerClass: RkwCompiledWordWorkerWordRunner; override;
 end;//TkwCompiledWordWorker2Word
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledWordWorkerWord2Runner
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwCompiledWordWorker2Word

function TkwCompiledWordWorker2Word.AfterWordMaxCount: Cardinal;
//#UC START# *4DB9B446039A_5087A15402F8_var*
//#UC END# *4DB9B446039A_5087A15402F8_var*
begin
//#UC START# *4DB9B446039A_5087A15402F8_impl*
 Result := 2;
//#UC END# *4DB9B446039A_5087A15402F8_impl*
end;//TkwCompiledWordWorker2Word.AfterWordMaxCount

function TkwCompiledWordWorker2Word.RunnerClass: RkwCompiledWordWorkerWordRunner;
//#UC START# *4F3FAC0C0170_5087A15402F8_var*
//#UC END# *4F3FAC0C0170_5087A15402F8_var*
begin
//#UC START# *4F3FAC0C0170_5087A15402F8_impl*
 Result := TkwCompiledWordWorkerWord2Runner;
//#UC END# *4F3FAC0C0170_5087A15402F8_impl*
end;//TkwCompiledWordWorker2Word.RunnerClass

{$IfEnd} //not NoScripts

end.