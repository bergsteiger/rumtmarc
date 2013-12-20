unit kwCompiledWordWorkerWordRunner;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledWordWorkerWordRunner.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwCompiledWordWorkerWordRunner
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
  tfwScriptingInterfaces,
  kwCompiledWord,
  kwCompiledWordWorker
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 RkwCompiledWordWorkerWordRunner = class of TkwCompiledWordWorkerWordRunner;

 TkwCompiledWordWorkerWordRunner = class(TkwCompiledWordWorker)
 private
 // private fields
   f_Compiled : TkwCompiledWord;
    {* Поле для свойства Compiled}
 protected
 // property methods
   procedure pm_SetCompiled(aValue: TkwCompiledWord);
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 protected
 // protected methods
   procedure PushState(const aCtx: TtfwContext); virtual;
   procedure PushWordToWork(const aCtx: TtfwContext); virtual;
 public
 // public properties
   property Compiled: TkwCompiledWord
     read f_Compiled
     write pm_SetCompiled;
 end;//TkwCompiledWordWorkerWordRunner
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  SysUtils
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwCompiledWordWorkerWordRunner

procedure TkwCompiledWordWorkerWordRunner.PushState(const aCtx: TtfwContext);
//#UC START# *4F3FF6C20122_4F2198430108_var*
//#UC END# *4F3FF6C20122_4F2198430108_var*
begin
//#UC START# *4F3FF6C20122_4F2198430108_impl*
 PushWordToWork(aCtx);
//#UC END# *4F3FF6C20122_4F2198430108_impl*
end;//TkwCompiledWordWorkerWordRunner.PushState

procedure TkwCompiledWordWorkerWordRunner.PushWordToWork(const aCtx: TtfwContext);
//#UC START# *4F414A1A0247_4F2198430108_var*
//#UC END# *4F414A1A0247_4F2198430108_var*
begin
//#UC START# *4F414A1A0247_4F2198430108_impl*
 aCtx.rEngine.Push(TtfwStackValue_C(f_Word));
//#UC END# *4F414A1A0247_4F2198430108_impl*
end;//TkwCompiledWordWorkerWordRunner.PushWordToWork

procedure TkwCompiledWordWorkerWordRunner.pm_SetCompiled(aValue: TkwCompiledWord);
//#UC START# *4F219F4E03CB_4F2198430108set_var*
//#UC END# *4F219F4E03CB_4F2198430108set_var*
begin
//#UC START# *4F219F4E03CB_4F2198430108set_impl*
 aValue.SetRefTo(f_Compiled);
//#UC END# *4F219F4E03CB_4F2198430108set_impl*
end;//TkwCompiledWordWorkerWordRunner.pm_SetCompiled

procedure TkwCompiledWordWorkerWordRunner.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F2198430108_var*
//#UC END# *4DAEEDE10285_4F2198430108_var*
begin
//#UC START# *4DAEEDE10285_4F2198430108_impl*
 PushState(aCtx);
 try
  // - кладём лямбду на стек
  // - вообще говоря это можно унаследовать от TkwCompiledPushWord
  f_Compiled.DoIt(aCtx);
  // - выполняем собственно определённое слово
 except
  on EtfwRecursionNotSupportedYet do
  begin
   if aCtx.rEngine.IsTopType(tfw_svtObj) then
    Assert(aCtx.rEngine.PopObj = f_Word);
    // - чистим пока за собой невалидную ссылку
   raise;
  end;//EtfwRecursionNotSupportedYet
 end;//try..except
//#UC END# *4DAEEDE10285_4F2198430108_impl*
end;//TkwCompiledWordWorkerWordRunner.DoDoIt

procedure TkwCompiledWordWorkerWordRunner.Cleanup;
//#UC START# *479731C50290_4F2198430108_var*
//#UC END# *479731C50290_4F2198430108_var*
begin
//#UC START# *479731C50290_4F2198430108_impl*
 FreeAndNil(f_Compiled);
 inherited;
//#UC END# *479731C50290_4F2198430108_impl*
end;//TkwCompiledWordWorkerWordRunner.Cleanup

{$IfEnd} //not NoScripts

end.