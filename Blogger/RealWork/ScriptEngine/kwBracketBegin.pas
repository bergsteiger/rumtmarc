unit kwBracketBegin;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwBracketBegin.pas"
// Начат: 03.05.2011 12:25
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwBracketBegin
//
// Поддержка скобок.
// Пример:
// {code}
// 10 LOOP ( 'Hello' . )
// {code}
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
 TkwBracketBegin = class(_tfwBeginLikeWord_)
  {* Поддержка скобок. 
Пример:
[code]
 10 LOOP ( 'Hello' . )
[code] }
 protected
 // realized methods
   function EndBracket(const aContext: TtfwContext): AnsiString; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwBracketBegin
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

type _Instance_R_ = TkwBracketBegin;

{$Include ..\ScriptEngine\tfwBeginLikeWord.imp.pas}

// start class TkwBracketBegin

function TkwBracketBegin.EndBracket(const aContext: TtfwContext): AnsiString;
//#UC START# *4DB6C99F026E_4DBFBBE603E5_var*
//#UC END# *4DB6C99F026E_4DBFBBE603E5_var*
begin
//#UC START# *4DB6C99F026E_4DBFBBE603E5_impl*
 Result := ')';
//#UC END# *4DB6C99F026E_4DBFBBE603E5_impl*
end;//TkwBracketBegin.EndBracket

class function TkwBracketBegin.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DBFBBE603E5_var*
//#UC END# *4DB0614603C8_4DBFBBE603E5_var*
begin
//#UC START# *4DB0614603C8_4DBFBBE603E5_impl*
 Result := '(';
//#UC END# *4DB0614603C8_4DBFBBE603E5_impl*
end;//TkwBracketBegin.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwBeginLikeWord.imp.pas}
{$IfEnd} //not NoScripts

end.