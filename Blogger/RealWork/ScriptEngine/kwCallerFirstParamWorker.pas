unit kwCallerFirstParamWorker;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwCallerFirstParamWorker.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::CallerFirstParamWorker
//
// Слово умеющее обрабатывать первый параметр вызывающего слова
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
 TkwCallerFirstParamWorker = {final} class(_kwCallerAndWordWorker_)
  {* Слово умеющее обрабатывать первый параметр вызывающего слова }
 protected
 // overridden protected methods
   function CompiledWordWorkerWordClass: RkwCompiledWordWorkerWord; override;
   function AddedParameters: Tl3CStringArray; override;
   function ParamModifiers(aParamIndex: Integer): TtfwWordModifiers; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwCallerFirstParamWorker
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3Base,
  kwCompiledCallerFirstParamWorkerWord,
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

type _Instance_R_ = TkwCallerFirstParamWorker;

{$Include ..\ScriptEngine\kwCallerAndWordWorker.imp.pas}

// start class TkwCallerFirstParamWorker

class function TkwCallerFirstParamWorker.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'CallerFirstParamWorker';
end;//TkwCallerFirstParamWorker.GetWordNameForRegister

function TkwCallerFirstParamWorker.CompiledWordWorkerWordClass: RkwCompiledWordWorkerWord;
//#UC START# *4F3FA9670261_4F417D820006_var*
//#UC END# *4F3FA9670261_4F417D820006_var*
begin
//#UC START# *4F3FA9670261_4F417D820006_impl*
 Result := TkwCompiledCallerFirstParamWorkerWord;
//#UC END# *4F3FA9670261_4F417D820006_impl*
end;//TkwCallerFirstParamWorker.CompiledWordWorkerWordClass

function TkwCallerFirstParamWorker.AddedParameters: Tl3CStringArray;
//#UC START# *4F3FF55403AB_4F417D820006_var*
//#UC END# *4F3FF55403AB_4F417D820006_var*
begin
//#UC START# *4F3FF55403AB_4F417D820006_impl*
 Result := l3CStringArrayFromS(['%S']);
//#UC END# *4F3FF55403AB_4F417D820006_impl*
end;//TkwCallerFirstParamWorker.AddedParameters

function TkwCallerFirstParamWorker.ParamModifiers(aParamIndex: Integer): TtfwWordModifiers;
//#UC START# *4F4186D50048_4F417D820006_var*
//#UC END# *4F4186D50048_4F417D820006_var*
begin
//#UC START# *4F4186D50048_4F417D820006_impl*
 Result := [];
//#UC END# *4F4186D50048_4F417D820006_impl*
end;//TkwCallerFirstParamWorker.ParamModifiers

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwCallerAndWordWorker.imp.pas}
{$IfEnd} //not NoScripts

end.