unit kwPushDUnitForm;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "DUnit Script Support"
// Модуль: "w:/common/components/rtl/Garant/DUnit_Script_Support/kwPushDUnitForm.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi DUnit Scripting::DUnit Script Support::DUnit Keywords::push_DUnitForm
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
 TkwPushDUnitForm = {final} class(_tfwAutoregisteringWord_)
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
 end;//TkwPushDUnitForm
{$IfEnd} //nsTest

implementation

{$If defined(nsTest)}
uses
  GUITestRunner,
  TestForm4Scripts
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

type _Instance_R_ = TkwPushDUnitForm;

{$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwPushDUnitForm

{$If not defined(NoScripts)}
procedure TkwPushDUnitForm.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_5130578A0261_var*
//#UC END# *4DAEEDE10285_5130578A0261_var*
begin
//#UC START# *4DAEEDE10285_5130578A0261_impl*
 aCtx.rEngine.PushObj(TestForm4Scripts.GetTestForm);
//#UC END# *4DAEEDE10285_5130578A0261_impl*
end;//TkwPushDUnitForm.DoDoIt
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
class function TkwPushDUnitForm.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'push:DUnitForm';
end;//TkwPushDUnitForm.GetWordNameForRegister
{$IfEnd} //not NoScripts

{$IfEnd} //nsTest

initialization
{$If defined(nsTest)}
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //nsTest

end.