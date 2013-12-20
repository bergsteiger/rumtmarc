unit kwCompiledImmedProcedure;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledImmedProcedure.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::WordsDefinition::TkwCompiledImmedProcedure
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
  kwCompiledProcedure
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledImmedProcedure = class(TkwCompiledProcedure)
 public
 // overridden public methods
   function IsImmediate: Boolean; override;
 end;//TkwCompiledImmedProcedure
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TkwCompiledImmedProcedure

function TkwCompiledImmedProcedure.IsImmediate: Boolean;
//#UC START# *4DB6D7F70155_4F4FD5BF028A_var*
//#UC END# *4DB6D7F70155_4F4FD5BF028A_var*
begin
//#UC START# *4DB6D7F70155_4F4FD5BF028A_impl*
 Result := true;
//#UC END# *4DB6D7F70155_4F4FD5BF028A_impl*
end;//TkwCompiledImmedProcedure.IsImmediate

{$IfEnd} //not NoScripts

end.