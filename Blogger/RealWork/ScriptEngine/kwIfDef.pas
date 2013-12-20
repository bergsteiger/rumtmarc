unit kwIfDef;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwIfDef.pas"
// Начат: 15.12.2011 20:38
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::StandartWords::TkwIfDef
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
 TkwIfDef = class(_tfwAnonimousWord_)
 protected
 // realized methods
   function EndBracket(const aContext: TtfwContext): AnsiString; override;
 protected
 // overridden protected methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
   procedure BeforeCompile(const aPrevContext: TtfwContext;
     var theNewContext: TtfwContext); override;
   procedure AfterCompile(var aPrevContext: TtfwContext;
     var theNewContext: TtfwContext;
     aCompiled: TkwCompiledWord); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwIfDef
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

type _Instance_R_ = TkwIfDef;

{$Include ..\ScriptEngine\tfwAnonimousWord.imp.pas}

// start class TkwIfDef

function TkwIfDef.EndBracket(const aContext: TtfwContext): AnsiString;
//#UC START# *4DB6C99F026E_4EEA225500A9_var*
//#UC END# *4DB6C99F026E_4EEA225500A9_var*
begin
//#UC START# *4DB6C99F026E_4EEA225500A9_impl*
 Result := '[ENDIF]';
//#UC END# *4DB6C99F026E_4EEA225500A9_impl*
end;//TkwIfDef.EndBracket

procedure TkwIfDef.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4EEA225500A9_var*
//#UC END# *4DAEEDE10285_4EEA225500A9_var*
begin
//#UC START# *4DAEEDE10285_4EEA225500A9_impl*
 Assert(false);
 inherited;
//#UC END# *4DAEEDE10285_4EEA225500A9_impl*
end;//TkwIfDef.DoDoIt

class function TkwIfDef.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4EEA225500A9_var*
//#UC END# *4DB0614603C8_4EEA225500A9_var*
begin
//#UC START# *4DB0614603C8_4EEA225500A9_impl*
 Result := '[IF]';
//#UC END# *4DB0614603C8_4EEA225500A9_impl*
end;//TkwIfDef.GetWordNameForRegister

procedure TkwIfDef.BeforeCompile(const aPrevContext: TtfwContext;
  var theNewContext: TtfwContext);
//#UC START# *4DB6CDDA038B_4EEA225500A9_var*
//#UC END# *4DB6CDDA038B_4EEA225500A9_var*
begin
//#UC START# *4DB6CDDA038B_4EEA225500A9_impl*
 inherited;
//#UC END# *4DB6CDDA038B_4EEA225500A9_impl*
end;//TkwIfDef.BeforeCompile

procedure TkwIfDef.AfterCompile(var aPrevContext: TtfwContext;
  var theNewContext: TtfwContext;
  aCompiled: TkwCompiledWord);
//#UC START# *4DB6CE2302C9_4EEA225500A9_var*
//#UC END# *4DB6CE2302C9_4EEA225500A9_var*
begin
//#UC START# *4DB6CE2302C9_4EEA225500A9_impl*
 inherited;
//#UC END# *4DB6CE2302C9_4EEA225500A9_impl*
end;//TkwIfDef.AfterCompile

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAnonimousWord.imp.pas}
{$IfEnd} //not NoScripts

end.