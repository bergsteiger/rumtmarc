unit kwBeginImmediate;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwBeginImmediate.pas"
// Начат: 15.12.2011 20:28
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::StandartWords::TkwBeginImmediate
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
 TkwBeginImmediate = class(_tfwBeginLikeWord_)
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
   function IsImmediate: Boolean; override;
 end;//TkwBeginImmediate
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

type _Instance_R_ = TkwBeginImmediate;

{$Include ..\ScriptEngine\tfwBeginLikeWord.imp.pas}

// start class TkwBeginImmediate

function TkwBeginImmediate.EndBracket(const aContext: TtfwContext): AnsiString;
//#UC START# *4DB6C99F026E_4EEA200A02DB_var*
//#UC END# *4DB6C99F026E_4EEA200A02DB_var*
begin
//#UC START# *4DB6C99F026E_4EEA200A02DB_impl*
 Result := ']';
//#UC END# *4DB6C99F026E_4EEA200A02DB_impl*
end;//TkwBeginImmediate.EndBracket

class function TkwBeginImmediate.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4EEA200A02DB_var*
//#UC END# *4DB0614603C8_4EEA200A02DB_var*
begin
//#UC START# *4DB0614603C8_4EEA200A02DB_impl*
 Result := '[';
//#UC END# *4DB0614603C8_4EEA200A02DB_impl*
end;//TkwBeginImmediate.GetWordNameForRegister

procedure TkwBeginImmediate.AfterCompile(var aPrevContext: TtfwContext;
  var theNewContext: TtfwContext;
  aCompiled: TkwCompiledWord);
//#UC START# *4DB6CE2302C9_4EEA200A02DB_var*
//#UC END# *4DB6CE2302C9_4EEA200A02DB_var*
begin
//#UC START# *4DB6CE2302C9_4EEA200A02DB_impl*
 aCompiled.DoIt(aPrevContext);
//#UC END# *4DB6CE2302C9_4EEA200A02DB_impl*
end;//TkwBeginImmediate.AfterCompile

function TkwBeginImmediate.IsImmediate: Boolean;
//#UC START# *4DB6D7F70155_4EEA200A02DB_var*
//#UC END# *4DB6D7F70155_4EEA200A02DB_var*
begin
//#UC START# *4DB6D7F70155_4EEA200A02DB_impl*
 Result := true;
//#UC END# *4DB6D7F70155_4EEA200A02DB_impl*
end;//TkwBeginImmediate.IsImmediate

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwBeginLikeWord.imp.pas}
{$IfEnd} //not NoScripts

end.