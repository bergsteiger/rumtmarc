unit kwCompiledVarWorker;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledVarWorker.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwCompiledVarWorker
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
  kwCompiledVar
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 RkwCompiledVarWorker = class of TkwCompiledVarWorker;

 TkwCompiledVarWorker = {abstract} class(TkwCompiledWord)
 protected
 // overridden protected methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // protected methods
   procedure DoVar(const aCtx: TtfwContext;
     aVar: TkwCompiledVar); virtual; abstract;
 end;//TkwCompiledVarWorker
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TkwCompiledVarWorker

procedure TkwCompiledVarWorker.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DCBCCE40219_var*
//#UC END# *4DAEEDE10285_4DCBCCE40219_var*
begin
//#UC START# *4DAEEDE10285_4DCBCCE40219_impl*
 DoVar(aCtx, Code[0] As TkwCompiledVar);
//#UC END# *4DAEEDE10285_4DCBCCE40219_impl*
end;//TkwCompiledVarWorker.DoDoIt

{$IfEnd} //not NoScripts

end.