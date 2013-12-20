{$IfNDef kwWorkWithITest_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "DUnit Script Support"
// Модуль: "w:/common/components/rtl/Garant/DUnit_Script_Support/kwWorkWithITest.imp.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi DUnit Scripting::DUnit Script Support::DUnit Keywords::kwWorkWithITest
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define kwWorkWithITest_imp}
{$If defined(nsTest)}
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 _kwWorkWithITest_ = {mixin} class(_tfwAutoregisteringWord_)
 protected
 // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
 protected
 // protected methods
   procedure DoWithItest(const aTest: ITest;
     const aCtx: TtfwContext); virtual; abstract;
 end;//_kwWorkWithITest_
{$IfEnd} //nsTest

{$Else kwWorkWithITest_imp}

{$IfNDef kwWorkWithITest_imp_impl}
{$Define kwWorkWithITest_imp_impl}

{$If defined(nsTest)}


{$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class _kwWorkWithITest_

{$If not defined(NoScripts)}
procedure _kwWorkWithITest_.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_5135E9A4022F_var*
var
 l_Test: ITest;
//#UC END# *4DAEEDE10285_5135E9A4022F_var*
begin
//#UC START# *4DAEEDE10285_5135E9A4022F_impl*
 if aCtx.rEngine.IsTopIntf then
 begin
  l_Test := aCtx.rEngine.PopIntf as ITest;
  DoWithItest(l_Test, aCtx);
 end // if aCtx.rEngine.IsTopIntf then
 else
   RunnerAssert(False, 'Не задан ITest интерфейс!', aCtx);
//#UC END# *4DAEEDE10285_5135E9A4022F_impl*
end;//_kwWorkWithITest_.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //nsTest

{$Else  kwWorkWithITest_imp_impl}
{$If defined(nsTest)}
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //nsTest

{$EndIf kwWorkWithITest_imp_impl}
{$EndIf kwWorkWithITest_imp}
