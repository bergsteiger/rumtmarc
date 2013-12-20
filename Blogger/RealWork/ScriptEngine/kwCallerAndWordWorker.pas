unit kwCallerAndWordWorker;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwCallerAndWordWorker.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::CallerAndWordWorker
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
  l3Interfaces,
  tfwScriptingInterfaces,
  kwCompiledWordWorkerWord,
  kwCompiledWord,
  l3ParserInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwCallerAndWordWorker.imp.pas}
 TkwCallerAndWordWorker = {final} class(_kwCallerAndWordWorker_)
 protected
 // overridden protected methods
   function CompiledWordWorkerWordClass: RkwCompiledWordWorkerWord; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwCallerAndWordWorker
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledCallerAndWordWorkerWord,
  l3Base,
  kwCompiledPopToVar,
  kwCompiledVar,
  kwCompiledIn,
  kwCompiledProcedure,
  SysUtils,
  l3String,
  l3Parser,
  kwInteger,
  kwString,
  TypInfo,
  kwIntegerFactory,
  kwStringFactory,
  l3Chars,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwCallerAndWordWorker;

{$Include ..\ScriptEngine\kwCallerAndWordWorker.imp.pas}

// start class TkwCallerAndWordWorker

class function TkwCallerAndWordWorker.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'CallerAndWordWorker';
end;//TkwCallerAndWordWorker.GetWordNameForRegister

function TkwCallerAndWordWorker.CompiledWordWorkerWordClass: RkwCompiledWordWorkerWord;
//#UC START# *4F3FA9670261_4F413A3B0195_var*
//#UC END# *4F3FA9670261_4F413A3B0195_var*
begin
//#UC START# *4F3FA9670261_4F413A3B0195_impl*
 Result := TkwCompiledCallerAndWordWorkerWord;
//#UC END# *4F3FA9670261_4F413A3B0195_impl*
end;//TkwCallerAndWordWorker.CompiledWordWorkerWordClass

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwCallerAndWordWorker.imp.pas}
{$IfEnd} //not NoScripts

end.