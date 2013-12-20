unit kwCompiledCallerWordRunner;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledCallerWordRunner.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwCompiledCallerWordRunner
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
  kwCompiledCallerAndWordWorkerWordRunner,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledCallerWordRunner = class(TkwCompiledCallerAndWordWorkerWordRunner)
 protected
 // overridden protected methods
   procedure PushWordToWork(const aCtx: TtfwContext); override;
 end;//TkwCompiledCallerWordRunner
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TkwCompiledCallerWordRunner

procedure TkwCompiledCallerWordRunner.PushWordToWork(const aCtx: TtfwContext);
//#UC START# *4F414A1A0247_4F41487E02B0_var*
//#UC END# *4F414A1A0247_4F41487E02B0_var*
begin
//#UC START# *4F414A1A0247_4F41487E02B0_impl*
 // - не кладём слово на стек, т.к. у нас его - НЕТ
//#UC END# *4F414A1A0247_4F41487E02B0_impl*
end;//TkwCompiledCallerWordRunner.PushWordToWork

{$IfEnd} //not NoScripts

end.