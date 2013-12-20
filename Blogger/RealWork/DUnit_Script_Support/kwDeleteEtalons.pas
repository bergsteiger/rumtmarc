unit kwDeleteEtalons;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "DUnit Script Support"
// Модуль: "w:/common/components/rtl/Garant/DUnit_Script_Support/kwDeleteEtalons.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi DUnit Scripting::DUnit Script Support::DUnit Keywords::DeleteEtalons
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\DUnit_Script_Support\dsDefine.inc}

interface

{$If defined(nsTest)}
uses
  Classes
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //nsTest

{$If defined(nsTest)}
type
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 TkwDeleteEtalons = {final} class(_tfwAutoregisteringWord_)
 protected
 // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
 public
 // overridden public methods
   {$If not defined(NoScripts)}
   class function GetWordNameForRegister: AnsiString; override;
   {$IfEnd} //not NoScripts
 end;//TkwDeleteEtalons
{$IfEnd} //nsTest

implementation

{$If defined(nsTest)}
uses
  SysUtils
  {$If defined(nsTest) AND not defined(NotTunedDUnit)}
  ,
  KTestRunner
  {$IfEnd} //nsTest AND not NotTunedDUnit
  
  {$If not defined(NoScripts)}
  ,
  tfwAutoregisteredDiction
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //nsTest

{$If defined(nsTest)}

type _Instance_R_ = TkwDeleteEtalons;

{$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwDeleteEtalons

{$If not defined(NoScripts)}
procedure TkwDeleteEtalons.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_5137184F0004_var*
var
 l_Name      : String;
 l_SubFolder : String;
//#UC END# *4DAEEDE10285_5137184F0004_var*
begin
//#UC START# *4DAEEDE10285_5137184F0004_impl*
 if aCtx.rEngine.IsTopString then
 begin
  l_Name := aCtx.rEngine.PopDelphiString;
  if aCtx.rEngine.IsTopString then
  begin
   l_SubFolder := aCtx.rEngine.PopDelphiString;
   if aCtx.rEngine.IsTopBool then
    DeleteEtalons(l_Name, l_SubFolder, aCtx.rEngine.PopBool)
   else
    RunnerAssert(False, 'Не задана флаг теста!', aCtx);
  end // if aCtx.rEngine.IsTopString then
  else
   RunnerAssert(False, 'Не задана папка для теста!', aCtx);
 end // if aCtx.rEngine.IsTopString then
 else
  RunnerAssert(False, 'Не задано имя теста!', aCtx);
//#UC END# *4DAEEDE10285_5137184F0004_impl*
end;//TkwDeleteEtalons.DoDoIt
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
class function TkwDeleteEtalons.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'DeleteEtalons';
end;//TkwDeleteEtalons.GetWordNameForRegister
{$IfEnd} //not NoScripts

{$IfEnd} //nsTest

initialization
{$If defined(nsTest)}
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //nsTest

end.