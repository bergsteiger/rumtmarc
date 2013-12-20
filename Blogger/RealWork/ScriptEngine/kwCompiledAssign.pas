unit kwCompiledAssign;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledAssign.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwCompiledAssign
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
 TkwCompiledAssign = class(TkwCompiledWordWorker)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 end;//TkwCompiledAssign
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledVar,
  kwCompiledWord
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwCompiledAssign

procedure TkwCompiledAssign.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F3F9A6302D5_var*
var
 l_O : TObject;
//#UC END# *4DAEEDE10285_4F3F9A6302D5_var*
begin
//#UC START# *4DAEEDE10285_4F3F9A6302D5_impl*
 l_O := aCtx.rEngine.PopObj;
 f_Word.DoIt(aCtx);
 (l_O As TkwCompiledVar).Value := aCtx.rEngine.Pop;
//#UC END# *4DAEEDE10285_4F3F9A6302D5_impl*
end;//TkwCompiledAssign.DoDoIt

{$IfEnd} //not NoScripts

end.