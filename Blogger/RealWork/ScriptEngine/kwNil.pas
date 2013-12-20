unit kwNil;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwNil.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwNil
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
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 TkwNil = class(_tfwAutoregisteringWord_)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwNil
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwNil;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwNil

procedure TkwNil.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F2809A0002B_var*
//#UC END# *4DAEEDE10285_4F2809A0002B_var*
begin
//#UC START# *4DAEEDE10285_4F2809A0002B_impl*
 aCtx.rEngine.Push(TtfwStackValue_NULL);
//#UC END# *4DAEEDE10285_4F2809A0002B_impl*
end;//TkwNil.DoDoIt

class function TkwNil.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4F2809A0002B_var*
//#UC END# *4DB0614603C8_4F2809A0002B_var*
begin
//#UC START# *4DB0614603C8_4F2809A0002B_impl*
 Result := 'nil';
//#UC END# *4DB0614603C8_4F2809A0002B_impl*
end;//TkwNil.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.