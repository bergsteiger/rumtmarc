unit kwBeginWord;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwBeginWord.pas"
// Начат: 28.04.2011 23:10
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwBeginWord
//
// Поддержка скобок BEGIN END в стиле Паскаля.
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
  tfwScriptingInterfaces,
  l3Interfaces,
  kwCompiledWord,
  l3ParserInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwBeginLikeWord.imp.pas}
 TkwBeginWord = class(_tfwBeginLikeWord_)
  {* Поддержка скобок BEGIN END в стиле Паскаля. }
 protected
 // realized methods
   function EndBracket(const aContext: TtfwContext): AnsiString; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwBeginWord
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
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

type _Instance_R_ = TkwBeginWord;

{$Include ..\ScriptEngine\tfwBeginLikeWord.imp.pas}

// start class TkwBeginWord

function TkwBeginWord.EndBracket(const aContext: TtfwContext): AnsiString;
//#UC START# *4DB6C99F026E_4DB9BB8D0388_var*
//#UC END# *4DB6C99F026E_4DB9BB8D0388_var*
begin
//#UC START# *4DB6C99F026E_4DB9BB8D0388_impl*
 Result := 'END';
//#UC END# *4DB6C99F026E_4DB9BB8D0388_impl*
end;//TkwBeginWord.EndBracket

class function TkwBeginWord.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DB9BB8D0388_var*
//#UC END# *4DB0614603C8_4DB9BB8D0388_var*
begin
//#UC START# *4DB0614603C8_4DB9BB8D0388_impl*
 Result := 'BEGIN';
//#UC END# *4DB0614603C8_4DB9BB8D0388_impl*
end;//TkwBeginWord.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwBeginLikeWord.imp.pas}
{$IfEnd} //not NoScripts

end.