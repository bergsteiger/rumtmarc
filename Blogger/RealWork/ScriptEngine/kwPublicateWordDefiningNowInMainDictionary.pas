unit kwPublicateWordDefiningNowInMainDictionary;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwPublicateWordDefiningNowInMainDictionary.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::Compilation::PublicateWordDefiningNowInMainDictionary
//
// Опубликовать слово определяемое сейчас в главном словаре (см. [EXPORTED])
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
 TkwPublicateWordDefiningNowInMainDictionary = {final} class(_tfwAutoregisteringWord_)
  {* Опубликовать слово определяемое сейчас в главном словаре (см. [EXPORTED]) }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
   function IsImmediate: Boolean; override;
 end;//TkwPublicateWordDefiningNowInMainDictionary
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  SysUtils,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwPublicateWordDefiningNowInMainDictionary;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwPublicateWordDefiningNowInMainDictionary

procedure TkwPublicateWordDefiningNowInMainDictionary.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F49715F0375_var*
//#UC END# *4DAEEDE10285_4F49715F0375_var*
begin
//#UC START# *4DAEEDE10285_4F49715F0375_impl*
 Assert(false, 'Не реализовано');
//#UC END# *4DAEEDE10285_4F49715F0375_impl*
end;//TkwPublicateWordDefiningNowInMainDictionary.DoDoIt

class function TkwPublicateWordDefiningNowInMainDictionary.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := '[EXPORTED]';
end;//TkwPublicateWordDefiningNowInMainDictionary.GetWordNameForRegister

function TkwPublicateWordDefiningNowInMainDictionary.IsImmediate: Boolean;
//#UC START# *4DB6D7F70155_4F49715F0375_var*
//#UC END# *4DB6D7F70155_4F49715F0375_var*
begin
//#UC START# *4DB6D7F70155_4F49715F0375_impl*
 Result := true;
//#UC END# *4DB6D7F70155_4F49715F0375_impl*
end;//TkwPublicateWordDefiningNowInMainDictionary.IsImmediate

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.