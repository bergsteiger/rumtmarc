unit kwCompiledCallerFirstParamWordRunner;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledCallerFirstParamWordRunner.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwCompiledCallerFirstParamWordRunner
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
  kwCompiledCallerWordRunner,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledCallerFirstParamWordRunner = class(TkwCompiledCallerWordRunner)
 protected
 // overridden protected methods
   procedure PushCaller(const aCtx: TtfwContext); override;
 end;//TkwCompiledCallerFirstParamWordRunner
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledWord,
  kwCompiledIn
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwCompiledCallerFirstParamWordRunner

procedure TkwCompiledCallerFirstParamWordRunner.PushCaller(const aCtx: TtfwContext);
//#UC START# *4F41435B027B_4F417E5F01DC_var*
//#UC END# *4F41435B027B_4F417E5F01DC_var*
begin
//#UC START# *4F41435B027B_4F417E5F01DC_impl*
 aCtx.rEngine.Push(((Caller As TkwCompiledWord).InParams[0] As TkwCompiledIn).Value);
//#UC END# *4F41435B027B_4F417E5F01DC_impl*
end;//TkwCompiledCallerFirstParamWordRunner.PushCaller

{$IfEnd} //not NoScripts

end.