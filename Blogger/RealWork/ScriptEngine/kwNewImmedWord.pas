unit kwNewImmedWord;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwNewImmedWord.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::WordsDefinition::NewImmedWord
//
// Определяем новое слово для непосредственного выполнения
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
  kwCompiledWord,
  l3ParserInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwStandardProcedure.imp.pas}
 TkwNewImmedWord = {final} class(_tfwStandardProcedure_)
  {* Определяем новое слово для непосредственного выполнения }
 protected
 // overridden protected methods
   function CompiledWordClass: RkwCompiledWord; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwNewImmedWord
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledImmedProcedure,
  kwCompiledProcedure,
  SysUtils,
  l3String,
  l3Parser,
  kwInteger,
  kwString,
  TypInfo,
  l3Base,
  kwIntegerFactory,
  kwStringFactory,
  l3Chars,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwNewImmedWord;

{$Include ..\ScriptEngine\tfwStandardProcedure.imp.pas}

// start class TkwNewImmedWord

class function TkwNewImmedWord.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := '[:]';
end;//TkwNewImmedWord.GetWordNameForRegister

function TkwNewImmedWord.CompiledWordClass: RkwCompiledWord;
//#UC START# *4DBAEE0D028D_4F4FD58E004C_var*
//#UC END# *4DBAEE0D028D_4F4FD58E004C_var*
begin
//#UC START# *4DBAEE0D028D_4F4FD58E004C_impl*
 Result := TkwCompiledImmedProcedure;
//#UC END# *4DBAEE0D028D_4F4FD58E004C_impl*
end;//TkwNewImmedWord.CompiledWordClass

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwStandardProcedure.imp.pas}
{$IfEnd} //not NoScripts

end.