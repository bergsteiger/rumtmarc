unit kwConst;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwConst.pas"
// Начат: 03.05.2011 12:58
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwConst
//
// Определяет константу.
// Пример:
// {code}
// CONST cFake1 5
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
  l3Interfaces,
  tfwScriptingInterfaces,
  kwCompiledWord,
  l3ParserInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwConst.imp.pas}
 TkwConst = class(_tfwConst_)
  {* Определяет константу.
Пример:
[code]
 CONST cFake1 5
[code] }
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwConst
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
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

type _Instance_R_ = TkwConst;

{$Include ..\ScriptEngine\tfwConst.imp.pas}

// start class TkwConst

class function TkwConst.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DBFC39C0233_var*
//#UC END# *4DB0614603C8_4DBFC39C0233_var*
begin
//#UC START# *4DB0614603C8_4DBFC39C0233_impl*
 Result := 'CONST';
//#UC END# *4DB0614603C8_4DBFC39C0233_impl*
end;//TkwConst.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwConst.imp.pas}
{$IfEnd} //not NoScripts

end.