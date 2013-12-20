unit kwPopToVarRef1;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwPopToVarRef1.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwPopToVarRef1
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
 TkwPopToVarRef1 = class(_tfwVarWorker_)
 protected
 // realized methods
   function CompiledVarWorkerClass: RkwCompiledVarWorker; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopToVarRef1
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledPopToVarRef,
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

type _Instance_R_ = TkwPopToVarRef1;

{$Include ..\ScriptEngine\tfwVarWorker.imp.pas}

// start class TkwPopToVarRef1

function TkwPopToVarRef1.CompiledVarWorkerClass: RkwCompiledVarWorker;
//#UC START# *4DCC193801F1_4F2269DA0274_var*
//#UC END# *4DCC193801F1_4F2269DA0274_var*
begin
//#UC START# *4DCC193801F1_4F2269DA0274_impl*
 Result := TkwCompiledPopToVarRef;
//#UC END# *4DCC193801F1_4F2269DA0274_impl*
end;//TkwPopToVarRef1.CompiledVarWorkerClass

class function TkwPopToVarRef1.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4F2269DA0274_var*
//#UC END# *4DB0614603C8_4F2269DA0274_var*
begin
//#UC START# *4DB0614603C8_4F2269DA0274_impl*
 Result := '=:^';
//#UC END# *4DB0614603C8_4F2269DA0274_impl*
end;//TkwPopToVarRef1.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwVarWorker.imp.pas}
{$IfEnd} //not NoScripts

end.