unit kwNeeds;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwNeeds.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwNeeds
//
// Поддержка автоматического создания формы-обвязки для тестов.
// *Формат:* form:Needs aClass
// aClass - класс формы.
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
 {$Include ..\ScriptEngine\tfwNewWord.imp.pas}
 TkwNeeds = class(_tfwNewWord_)
  {* Поддержка автоматического создания формы-обвязки для тестов.
*Формат:* form:Needs aClass
aClass - класс формы. }
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
   function AfterWordMaxCount: Cardinal; override;
   function AcceptsKeyWordAfter: Boolean; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
   function IsImmediate: Boolean; override;
 end;//TkwNeeds
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmEntityForm
  {$IfEnd} //not NoVCM
  ,
  Forms
  {$If not defined(NoVCM)}
  ,
  vcmBase
  {$IfEnd} //not NoVCM
  ,
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

type _Instance_R_ = TkwNeeds;

{$Include ..\ScriptEngine\tfwNewWord.imp.pas}

// start class TkwNeeds

function TkwNeeds.EndBracket(const aContext: TtfwContext): AnsiString;
//#UC START# *4DB6C99F026E_4E29311F0055_var*
//#UC END# *4DB6C99F026E_4E29311F0055_var*
begin
//#UC START# *4DB6C99F026E_4E29311F0055_impl*
 Result := '';
//#UC END# *4DB6C99F026E_4E29311F0055_impl*
end;//TkwNeeds.EndBracket

procedure TkwNeeds.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4E29311F0055_var*
var
 l_Class: TClass;
//#UC END# *4DAEEDE10285_4E29311F0055_var*
begin
//#UC START# *4DAEEDE10285_4E29311F0055_impl*
 inherited;
{$If defined(NoVCM)}
 RunnerAssert(False, 'VCM не поддерживается в Арчи.', aCtx);
{$ELSE}
 if aCtx.rEngine.IsTopClass then
 begin
  l_Class := aCtx.rEngine.PopClass;
  aCtx.rEngine.PushObj(RvcmEntityForm(l_Class).Make(vcmMakeParams).VCLWinControl As TCustomForm);
 end//aCtx.rEngine.IsTopString
 else
  RunnerAssert(False, 'Не задан класс формы.', aCtx);
{$IfEnd} //not NoVCM
//#UC END# *4DAEEDE10285_4E29311F0055_impl*
end;//TkwNeeds.DoDoIt

class function TkwNeeds.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4E29311F0055_var*
//#UC END# *4DB0614603C8_4E29311F0055_var*
begin
//#UC START# *4DB0614603C8_4E29311F0055_impl*
 Result := 'form:Needs';
//#UC END# *4DB0614603C8_4E29311F0055_impl*
end;//TkwNeeds.GetWordNameForRegister

procedure TkwNeeds.BeforeCompile(const aPrevContext: TtfwContext;
  var theNewContext: TtfwContext);
//#UC START# *4DB6CDDA038B_4E29311F0055_var*
//#UC END# *4DB6CDDA038B_4E29311F0055_var*
begin
//#UC START# *4DB6CDDA038B_4E29311F0055_impl*
//#UC END# *4DB6CDDA038B_4E29311F0055_impl*
end;//TkwNeeds.BeforeCompile

procedure TkwNeeds.AfterCompile(var aPrevContext: TtfwContext;
  var theNewContext: TtfwContext;
  aCompiled: TkwCompiledWord);
//#UC START# *4DB6CE2302C9_4E29311F0055_var*
//#UC END# *4DB6CE2302C9_4E29311F0055_var*
begin
//#UC START# *4DB6CE2302C9_4E29311F0055_impl*
 aCompiled.Code.First.DoIt(aPrevContext); // Название формы -> в стек.
//#UC END# *4DB6CE2302C9_4E29311F0055_impl*
end;//TkwNeeds.AfterCompile

function TkwNeeds.IsImmediate: Boolean;
//#UC START# *4DB6D7F70155_4E29311F0055_var*
//#UC END# *4DB6D7F70155_4E29311F0055_var*
begin
//#UC START# *4DB6D7F70155_4E29311F0055_impl*
 Result := True;
//#UC END# *4DB6D7F70155_4E29311F0055_impl*
end;//TkwNeeds.IsImmediate

function TkwNeeds.AfterWordMaxCount: Cardinal;
//#UC START# *4DB9B446039A_4E29311F0055_var*
//#UC END# *4DB9B446039A_4E29311F0055_var*
begin
//#UC START# *4DB9B446039A_4E29311F0055_impl*
 Result := 1;
//#UC END# *4DB9B446039A_4E29311F0055_impl*
end;//TkwNeeds.AfterWordMaxCount

function TkwNeeds.AcceptsKeyWordAfter: Boolean;
//#UC START# *4DB9B502013D_4E29311F0055_var*
//#UC END# *4DB9B502013D_4E29311F0055_var*
begin
//#UC START# *4DB9B502013D_4E29311F0055_impl*
 Result := True;
//#UC END# *4DB9B502013D_4E29311F0055_impl*
end;//TkwNeeds.AcceptsKeyWordAfter

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwNewWord.imp.pas}
{$IfEnd} //not NoScripts

end.