unit kwDefault;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwDefault.pas"
// Начат: 29.04.2011 21:23
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwDefault
//
// Внутреннее слово для определения ветки по умолчанию в скомпилированном Case. Не предназначено
// для прямого вызова.
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
 TkwDefault = class(_tfwAutoregisteringWord_)
  {* Внутреннее слово для определения ветки по умолчанию в скомпилированном Case. Не предназначено для прямого вызова. }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
   function IsDefaultBranch: Boolean; override;
 end;//TkwDefault
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwDefault;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwDefault

procedure TkwDefault.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DBAF3D60039_var*
//#UC END# *4DAEEDE10285_4DBAF3D60039_var*
begin
//#UC START# *4DAEEDE10285_4DBAF3D60039_impl*
 RunnerAssert(false, 'Слово DEFAULT не должно вызываться', aCtx);
//#UC END# *4DAEEDE10285_4DBAF3D60039_impl*
end;//TkwDefault.DoDoIt

class function TkwDefault.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DBAF3D60039_var*
//#UC END# *4DB0614603C8_4DBAF3D60039_var*
begin
//#UC START# *4DB0614603C8_4DBAF3D60039_impl*
 Result := 'DEFAULT';
//#UC END# *4DB0614603C8_4DBAF3D60039_impl*
end;//TkwDefault.GetWordNameForRegister

function TkwDefault.IsDefaultBranch: Boolean;
//#UC START# *4DBAF4630154_4DBAF3D60039_var*
//#UC END# *4DBAF4630154_4DBAF3D60039_var*
begin
//#UC START# *4DBAF4630154_4DBAF3D60039_impl*
 Result := true;
//#UC END# *4DBAF4630154_4DBAF3D60039_impl*
end;//TkwDefault.IsDefaultBranch

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.