unit kwCallerWorker;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwCallerWorker.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::CallerWorker
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
 TkwCallerWorker = {final} class(_kwCallerAndWordWorker_)
 protected
 // overridden protected methods
   function CompiledWordWorkerWordClass: RkwCompiledWordWorkerWord; override;
   function AddedParameters: Tl3CStringArray; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwCallerWorker
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3Base,
  kwCompiledCallerWorkerWord,
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

type _Instance_R_ = TkwCallerWorker;

{$Include ..\ScriptEngine\kwCallerAndWordWorker.imp.pas}

// start class TkwCallerWorker

class function TkwCallerWorker.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'CallerWorker';
end;//TkwCallerWorker.GetWordNameForRegister

function TkwCallerWorker.CompiledWordWorkerWordClass: RkwCompiledWordWorkerWord;
//#UC START# *4F3FA9670261_4F41472B021E_var*
//#UC END# *4F3FA9670261_4F41472B021E_var*
begin
//#UC START# *4F3FA9670261_4F41472B021E_impl*
 Result := TkwCompiledCallerWorkerWord;
//#UC END# *4F3FA9670261_4F41472B021E_impl*
end;//TkwCallerWorker.CompiledWordWorkerWordClass

function TkwCallerWorker.AddedParameters: Tl3CStringArray;
//#UC START# *4F3FF55403AB_4F41472B021E_var*
//#UC END# *4F3FF55403AB_4F41472B021E_var*
begin
//#UC START# *4F3FF55403AB_4F41472B021E_impl*
 Result := l3CStringArrayFromS(['Caller']); 
//#UC END# *4F3FF55403AB_4F41472B021E_impl*
end;//TkwCallerWorker.AddedParameters

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwCallerAndWordWorker.imp.pas}
{$IfEnd} //not NoScripts

end.