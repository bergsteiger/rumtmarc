unit kwCompiledAtomicIF;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledAtomicIF.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwCompiledAtomicIF
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
  kwCompiledWordWorker,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledAtomicIF = class(TkwCompiledWordWorker)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 end;//TkwCompiledAtomicIF
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TkwCompiledAtomicIF

procedure TkwCompiledAtomicIF.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F21773B025F_var*
//#UC END# *4DAEEDE10285_4F21773B025F_var*
begin
//#UC START# *4DAEEDE10285_4F21773B025F_impl*
 if aCtx.rEngine.PopBool then
  f_Word.DoIt(aCtx);
//#UC END# *4DAEEDE10285_4F21773B025F_impl*
end;//TkwCompiledAtomicIF.DoDoIt

{$IfEnd} //not NoScripts

end.