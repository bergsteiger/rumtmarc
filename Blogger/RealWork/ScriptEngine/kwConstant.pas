unit kwConstant;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwConstant.pas"
// Начат: 28.04.2011 22:43
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwConstant
//
// Форт-совместимая версия CONST
// Пример:
// {code}
// CONSTANT cFake1 5
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
 TkwConstant = class(_tfwConst_)
  {* Форт-совместимая версия CONST
Пример:
[code]
 CONSTANT cFake1 5
[code] }
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwConstant
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

type _Instance_R_ = TkwConstant;

{$Include ..\ScriptEngine\tfwConst.imp.pas}

// start class TkwConstant

class function TkwConstant.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DB9B5320299_var*
//#UC END# *4DB0614603C8_4DB9B5320299_var*
begin
//#UC START# *4DB0614603C8_4DB9B5320299_impl*
 Result := 'CONSTANT';
//#UC END# *4DB0614603C8_4DB9B5320299_impl*
end;//TkwConstant.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwConst.imp.pas}
{$IfEnd} //not NoScripts

end.