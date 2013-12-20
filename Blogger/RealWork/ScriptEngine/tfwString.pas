unit tfwString;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/tfwString.pas"
// Начат: 27.05.2011 20:29
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TtfwString
//
// Базовый предок для добавления слов в словарь.
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
 TtfwString = {abstract} class(TtfwWord)
  {* Базовый предок для добавления слов в словарь. }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // protected methods
   function GetString: AnsiString; virtual;
   class procedure Register(const aName: AnsiString);
 end;//TtfwString
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3Base,
  tfwScriptEngine,
  l3Except
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TtfwString

function TtfwString.GetString: AnsiString;
//#UC START# *4DDFD2EA0116_4DDFD1430390_var*
//#UC END# *4DDFD2EA0116_4DDFD1430390_var*
begin
//#UC START# *4DDFD2EA0116_4DDFD1430390_impl*
 Result := '';
 Assert(false);
//#UC END# *4DDFD2EA0116_4DDFD1430390_impl*
end;//TtfwString.GetString

class procedure TtfwString.Register(const aName: AnsiString);
//#UC START# *4DDFD69F00FE_4DDFD1430390_var*
//#UC END# *4DDFD69F00FE_4DDFD1430390_var*
begin
//#UC START# *4DDFD69F00FE_4DDFD1430390_impl*
 try
  TtfwScriptEngine.GlobalAddWord(aName, Self);
 except
  on El3DuplicateItem do
   ;
 end;//try..except
//#UC END# *4DDFD69F00FE_4DDFD1430390_impl*
end;//TtfwString.Register

procedure TtfwString.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DDFD1430390_var*
//#UC END# *4DAEEDE10285_4DDFD1430390_var*
begin
//#UC START# *4DAEEDE10285_4DDFD1430390_impl*
 aCtx.rEngine.PushString(TtfwCStringFactory.C(GetString));
//#UC END# *4DAEEDE10285_4DDFD1430390_impl*
end;//TtfwString.DoDoIt

{$IfEnd} //not NoScripts

end.