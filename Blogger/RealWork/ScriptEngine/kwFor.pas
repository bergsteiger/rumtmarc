unit kwFor;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwFor.pas"
// Начат: 26.04.2011 19:06
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwFor
//
// Цикл FOR. Повторяет код между словами FOR и NEXT заданное в стеке число раз.
// *Пример:*
// {code}
// : Hello
// 3 FOR
// 'Hello' .
// NEXT
// ;
// 
// 3 FOR
// Hello
// NEXT
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
 {$Include ..\ScriptEngine\tfwAnonimousWord.imp.pas}
 TkwFor = class(_tfwAnonimousWord_)
  {* Цикл FOR. Повторяет код между словами FOR и NEXT заданное в стеке число раз.
*Пример:*
[code]
: Hello
 3 FOR
  'Hello' .
 NEXT
;

3 FOR
 Hello
NEXT
[code] }
 protected
 // realized methods
   function EndBracket(const aContext: TtfwContext): AnsiString; override;
 protected
 // overridden protected methods
   procedure AfterCompile(var aPrevContext: TtfwContext;
     var theNewContext: TtfwContext;
     aCompiled: TkwCompiledWord); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwFor
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledFor,
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

type _Instance_R_ = TkwFor;

{$Include ..\ScriptEngine\tfwAnonimousWord.imp.pas}

// start class TkwFor

function TkwFor.EndBracket(const aContext: TtfwContext): AnsiString;
//#UC START# *4DB6C99F026E_4DB6DF4E022D_var*
//#UC END# *4DB6C99F026E_4DB6DF4E022D_var*
begin
//#UC START# *4DB6C99F026E_4DB6DF4E022D_impl*
 Result := 'NEXT';
//#UC END# *4DB6C99F026E_4DB6DF4E022D_impl*
end;//TkwFor.EndBracket

class function TkwFor.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DB6DF4E022D_var*
//#UC END# *4DB0614603C8_4DB6DF4E022D_var*
begin
//#UC START# *4DB0614603C8_4DB6DF4E022D_impl*
 Result := 'FOR';
//#UC END# *4DB0614603C8_4DB6DF4E022D_impl*
end;//TkwFor.GetWordNameForRegister

procedure TkwFor.AfterCompile(var aPrevContext: TtfwContext;
  var theNewContext: TtfwContext;
  aCompiled: TkwCompiledWord);
//#UC START# *4DB6CE2302C9_4DB6DF4E022D_var*
var
 l_CF : TkwCompiledFor;
//#UC END# *4DB6CE2302C9_4DB6DF4E022D_var*
begin
//#UC START# *4DB6CE2302C9_4DB6DF4E022D_impl*
 l_CF := TkwCompiledFor.Create(aCompiled);
 try
  DoCompiledWord(l_CF, aPrevContext);
 finally
  FreeAndNil(l_CF);
 end;//try..finally
 inherited;
//#UC END# *4DB6CE2302C9_4DB6DF4E022D_impl*
end;//TkwFor.AfterCompile

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAnonimousWord.imp.pas}
{$IfEnd} //not NoScripts

end.