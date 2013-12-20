unit kwPopToVar1;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwPopToVar1.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwPopToVar1
//
// '=:' Помещает значение переменной со стека в ранее объявленную переменную.
// Пример:
// {code}
// VAR A
// 2 =: A
// {code}
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
  l3Interfaces,
  kwCompiledWord,
  l3ParserInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwVarWorker.imp.pas}
 TkwPopToVar1 = class(_tfwVarWorker_)
  {* '=:' Помещает значение переменной со стека в ранее объявленную переменную.
Пример:
[code]
 VAR A
 2 =: A
[code] }
 protected
 // realized methods
   function CompiledVarWorkerClass: RkwCompiledVarWorker; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopToVar1
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledPopToVar,
  l3Parser,
  kwInteger,
  kwString,
  SysUtils,
  TypInfo,
  l3Base,
  kwIntegerFactory,
  kwStringFactory,
  l3String,
  l3Chars,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwPopToVar1;

{$Include ..\ScriptEngine\tfwVarWorker.imp.pas}

// start class TkwPopToVar1

function TkwPopToVar1.CompiledVarWorkerClass: RkwCompiledVarWorker;
//#UC START# *4DCC193801F1_4F22693802A8_var*
//#UC END# *4DCC193801F1_4F22693802A8_var*
begin
//#UC START# *4DCC193801F1_4F22693802A8_impl*
 Result := TkwCompiledPopToVar;
//#UC END# *4DCC193801F1_4F22693802A8_impl*
end;//TkwPopToVar1.CompiledVarWorkerClass

class function TkwPopToVar1.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4F22693802A8_var*
//#UC END# *4DB0614603C8_4F22693802A8_var*
begin
//#UC START# *4DB0614603C8_4F22693802A8_impl*
 Result := '=:';
//#UC END# *4DB0614603C8_4F22693802A8_impl*
end;//TkwPopToVar1.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwVarWorker.imp.pas}
{$IfEnd} //not NoScripts

end.