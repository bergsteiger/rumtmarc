unit kwImmediateCallerAndWordWorker;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwImmediateCallerAndWordWorker.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::ImmediateCallerAndWordWorker
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
 TkwImmediateCallerAndWordWorker = {final} class(_kwCallerAndWordWorker_)
 protected
 // overridden protected methods
   function CompiledWordWorkerWordClass: RkwCompiledWordWorkerWord; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwImmediateCallerAndWordWorker
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledImmediateCallerWordWorkerWord,
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

type _Instance_R_ = TkwImmediateCallerAndWordWorker;

{$Include ..\ScriptEngine\kwCallerAndWordWorker.imp.pas}

// start class TkwImmediateCallerAndWordWorker

class function TkwImmediateCallerAndWordWorker.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := '[CallerAndWordWorker]';
end;//TkwImmediateCallerAndWordWorker.GetWordNameForRegister

function TkwImmediateCallerAndWordWorker.CompiledWordWorkerWordClass: RkwCompiledWordWorkerWord;
//#UC START# *4F3FA9670261_4F3FF4DF0322_var*
//#UC END# *4F3FA9670261_4F3FF4DF0322_var*
begin
//#UC START# *4F3FA9670261_4F3FF4DF0322_impl*
 Result := TkwCompiledImmediateCallerWordWorkerWord;
//#UC END# *4F3FA9670261_4F3FF4DF0322_impl*
end;//TkwImmediateCallerAndWordWorker.CompiledWordWorkerWordClass

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwCallerAndWordWorker.imp.pas}
{$IfEnd} //not NoScripts

end.