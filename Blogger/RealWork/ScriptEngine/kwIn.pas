unit kwIn;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwIn.pas"
// Начат: 11.05.2011 20:14
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwIn
//
// {code}
// : InParameter IN A IN B
// A . B .
// ;
// 
// : "Напечатать два значения"
// InParameter
// ;
// 
// 2 'Hello' InParameter
// 
// "Напечатать два значения {(10)} {('Привет')}"
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
 {$Include ..\ScriptEngine\tfwVar.imp.pas}
 TkwIn = class(_tfwVar_)
  {* [code]
: InParameter IN A IN B
 A . B .
;

: "Напечатать два значения"
 InParameter
;

2 'Hello' InParameter

"Напечатать два значения [(10)] [('Привет')]"
[code] }
 protected
 // overridden protected methods
   procedure AfterCompile(var aPrevContext: TtfwContext;
     var theNewContext: TtfwContext;
     aCompiled: TkwCompiledWord); override;
   function CompiledWordClass: RkwCompiledWord; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwIn
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledPopToVar,
  SysUtils,
  kwCompiledIn,
  kwCompiledVar,
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

type _Instance_R_ = TkwIn;

{$Include ..\ScriptEngine\tfwVar.imp.pas}

// start class TkwIn

class function TkwIn.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DCAB5CD03C9_var*
//#UC END# *4DB0614603C8_4DCAB5CD03C9_var*
begin
//#UC START# *4DB0614603C8_4DCAB5CD03C9_impl*
 Result := 'IN';
//#UC END# *4DB0614603C8_4DCAB5CD03C9_impl*
end;//TkwIn.GetWordNameForRegister

procedure TkwIn.AfterCompile(var aPrevContext: TtfwContext;
  var theNewContext: TtfwContext;
  aCompiled: TkwCompiledWord);
//#UC START# *4DB6CE2302C9_4DCAB5CD03C9_var*
//#UC END# *4DB6CE2302C9_4DCAB5CD03C9_var*
begin
//#UC START# *4DB6CE2302C9_4DCAB5CD03C9_impl*
 aPrevContext.rCompiler.CompileInParameterPopCode(aPrevContext, aCompiled As TkwCompiledIn);
 inherited;
//#UC END# *4DB6CE2302C9_4DCAB5CD03C9_impl*
end;//TkwIn.AfterCompile

function TkwIn.CompiledWordClass: RkwCompiledWord;
//#UC START# *4DBAEE0D028D_4DCAB5CD03C9_var*
//#UC END# *4DBAEE0D028D_4DCAB5CD03C9_var*
begin
//#UC START# *4DBAEE0D028D_4DCAB5CD03C9_impl*
 Result := TkwCompiledIn;
//#UC END# *4DBAEE0D028D_4DCAB5CD03C9_impl*
end;//TkwIn.CompiledWordClass

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwVar.imp.pas}
{$IfEnd} //not NoScripts

end.