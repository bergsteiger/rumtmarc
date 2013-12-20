unit kwArrayModifier;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwArrayModifier.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::Modifiers::ArrayModifier
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
 {$Include ..\ScriptEngine\kwModifier.imp.pas}
 TkwArrayModifier = class(_kwModifier_)
 protected
 // realized methods
   function pm_GetModifier: TtfwWordModifier; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwArrayModifier
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwArrayModifier;

{$Include ..\ScriptEngine\kwModifier.imp.pas}

// start class TkwArrayModifier

function TkwArrayModifier.pm_GetModifier: TtfwWordModifier;
//#UC START# *4DCACED80361_4F218C6803DDget_var*
//#UC END# *4DCACED80361_4F218C6803DDget_var*
begin
//#UC START# *4DCACED80361_4F218C6803DDget_impl*
 Result := tfw_wmList;
//#UC END# *4DCACED80361_4F218C6803DDget_impl*
end;//TkwArrayModifier.pm_GetModifier

class function TkwArrayModifier.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := '[]';
end;//TkwArrayModifier.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwModifier.imp.pas}
{$IfEnd} //not NoScripts

end.