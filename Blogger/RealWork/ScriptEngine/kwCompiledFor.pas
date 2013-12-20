unit kwCompiledFor;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledFor.pas"
// Начат: 26.04.2011 19:31
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwCompiledFor
//
// Внутренняя исполняемая (скомпилированная) версия For,
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
  kwCompiledWordContainer,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledFor = class(TkwCompiledWordContainer)
  {* Внутренняя исполняемая (скомпилированная) версия For, }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 end;//TkwCompiledFor
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TkwCompiledFor

procedure TkwCompiledFor.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DB6E5360262_var*
var
 l_Index : Integer;
//#UC END# *4DAEEDE10285_4DB6E5360262_var*
begin
//#UC START# *4DAEEDE10285_4DB6E5360262_impl*
 for l_Index := 0 to Pred(aCtx.rEngine.PopInt) do
  try
   f_Compiled.DoIt(aCtx);
  except
   on EtfwBreak do
    break;
   on EtfwContinue do
    continue;
  end;//try..except
//#UC END# *4DAEEDE10285_4DB6E5360262_impl*
end;//TkwCompiledFor.DoDoIt

{$IfEnd} //not NoScripts

end.