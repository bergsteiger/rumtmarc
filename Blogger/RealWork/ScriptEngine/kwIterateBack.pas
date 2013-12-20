unit kwIterateBack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwIterateBack.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::ArrayProcessing::TkwIterateBack
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
 TkwIterateBack = class(_tfwVarWorker_)
 protected
 // realized methods
   function CompiledVarWorkerClass: RkwCompiledVarWorker; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwIterateBack
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledIterateBack,
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

type _Instance_R_ = TkwIterateBack;

{$Include ..\ScriptEngine\tfwVarWorker.imp.pas}

// start class TkwIterateBack

function TkwIterateBack.CompiledVarWorkerClass: RkwCompiledVarWorker;
//#UC START# *4DCC193801F1_4ED7B2DE035D_var*
//#UC END# *4DCC193801F1_4ED7B2DE035D_var*
begin
//#UC START# *4DCC193801F1_4ED7B2DE035D_impl*
 Result := TkwCompiledIterateBack;
//#UC END# *4DCC193801F1_4ED7B2DE035D_impl*
end;//TkwIterateBack.CompiledVarWorkerClass

class function TkwIterateBack.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4ED7B2DE035D_var*
//#UC END# *4DB0614603C8_4ED7B2DE035D_var*
begin
//#UC START# *4DB0614603C8_4ED7B2DE035D_impl*
 Result := 'ITERATEBACK';
//#UC END# *4DB0614603C8_4ED7B2DE035D_impl*
end;//TkwIterateBack.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwVarWorker.imp.pas}
{$IfEnd} //not NoScripts

end.