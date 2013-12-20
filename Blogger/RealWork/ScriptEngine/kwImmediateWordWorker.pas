unit kwImmediateWordWorker;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwImmediateWordWorker.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::ImmediateWordWorker
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
 {$Include ..\ScriptEngine\kwWordWorkerWord.imp.pas}
 TkwImmediateWordWorker = {final} class(_kwWordWorkerWord_)
 protected
 // overridden protected methods
   function CompiledWordWorkerWordClass: RkwCompiledWordWorkerWord; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwImmediateWordWorker
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledImmediateWordWorkerWord,
  kwCompiledPopToVar,
  kwCompiledVar,
  kwCompiledIn,
  l3Base,
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

type _Instance_R_ = TkwImmediateWordWorker;

{$Include ..\ScriptEngine\kwWordWorkerWord.imp.pas}

// start class TkwImmediateWordWorker

class function TkwImmediateWordWorker.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := '[WordWorker]';
end;//TkwImmediateWordWorker.GetWordNameForRegister

function TkwImmediateWordWorker.CompiledWordWorkerWordClass: RkwCompiledWordWorkerWord;
//#UC START# *4F3FA9670261_4F3FA8B602F1_var*
//#UC END# *4F3FA9670261_4F3FA8B602F1_var*
begin
//#UC START# *4F3FA9670261_4F3FA8B602F1_impl*
 Result := TkwCompiledImmediateWordWorkerWord;
//#UC END# *4F3FA9670261_4F3FA8B602F1_impl*
end;//TkwImmediateWordWorker.CompiledWordWorkerWordClass

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwWordWorkerWord.imp.pas}
{$IfEnd} //not NoScripts

end.