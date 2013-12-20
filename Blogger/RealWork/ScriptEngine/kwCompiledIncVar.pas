unit kwCompiledIncVar;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledIncVar.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwCompiledIncVar
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
  kwCompiledVarWorker,
  tfwScriptingInterfaces,
  kwCompiledVar
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledIncVar = class(TkwCompiledVarWorker)
 protected
 // realized methods
   procedure DoVar(const aCtx: TtfwContext;
     aVar: TkwCompiledVar); override;
 end;//TkwCompiledIncVar
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TkwCompiledIncVar

procedure TkwCompiledIncVar.DoVar(const aCtx: TtfwContext;
  aVar: TkwCompiledVar);
//#UC START# *4DCBCD2200D2_4E4CDD6E00F0_var*
//#UC END# *4DCBCD2200D2_4E4CDD6E00F0_var*
begin
//#UC START# *4DCBCD2200D2_4E4CDD6E00F0_impl*
 if aCtx.rEngine.IsTopInt then
  if aVar.Value.rType = tfw_svtInt then
   aVar.Value.IncValue(aCtx.rEngine.PopInt)
  else
   RunnerAssert(False, 'Изменить можно только целочисленную переменную!', aCtx)
 else
  RunnerAssert(False, 'Увеличить переменную можно только на число!', aCtx)  
//#UC END# *4DCBCD2200D2_4E4CDD6E00F0_impl*
end;//TkwCompiledIncVar.DoVar

{$IfEnd} //not NoScripts

end.