unit kwWORDWORKER2;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwWORDWORKER2.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::WORDWORKER2
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
 TkwWORDWORKER2 = {final} class(_kwWordWorkerWord_)
 protected
 // overridden protected methods
   function CompiledWordWorkerWordClass: RkwCompiledWordWorkerWord; override;
   function AddedParameters: Tl3CStringArray; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwWORDWORKER2
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledWordWorker2Word,
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

type _Instance_R_ = TkwWORDWORKER2;

{$Include ..\ScriptEngine\kwWordWorkerWord.imp.pas}

// start class TkwWORDWORKER2

class function TkwWORDWORKER2.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'WORDWORKER2';
end;//TkwWORDWORKER2.GetWordNameForRegister

function TkwWORDWORKER2.CompiledWordWorkerWordClass: RkwCompiledWordWorkerWord;
//#UC START# *4F3FA9670261_5087A0FA01E2_var*
//#UC END# *4F3FA9670261_5087A0FA01E2_var*
begin
//#UC START# *4F3FA9670261_5087A0FA01E2_impl*
 Result := TkwCompiledWordWorker2Word;
//#UC END# *4F3FA9670261_5087A0FA01E2_impl*
end;//TkwWORDWORKER2.CompiledWordWorkerWordClass

function TkwWORDWORKER2.AddedParameters: Tl3CStringArray;
//#UC START# *4F3FF55403AB_5087A0FA01E2_var*
//#UC END# *4F3FF55403AB_5087A0FA01E2_var*
begin
//#UC START# *4F3FF55403AB_5087A0FA01E2_impl*
 Result := l3CStringArrayFromS([cWordToWork + '1', cWordToWork + '2']);
//#UC END# *4F3FF55403AB_5087A0FA01E2_impl*
end;//TkwWORDWORKER2.AddedParameters

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwWordWorkerWord.imp.pas}
{$IfEnd} //not NoScripts

end.