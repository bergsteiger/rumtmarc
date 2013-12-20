unit AdminTestRes;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/AdminTestRes.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMTestApplication::Class>> F1 Ежедневные тесты Администратора::Admin::AdminTest
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\GbaNemesis\nsDefine.inc}

interface

{$If defined(Admin) AND defined(InsiderTest) AND defined(nsTest)}
uses
  AdminAppRes,
  GUITestRunner
  {$If defined(InsiderTest) AND defined(nsTest) AND not defined(NoScripts) AND not defined(NotTunedDUnit)}
  ,
  tfwScriptDebugger
  {$IfEnd} //InsiderTest AND nsTest AND not NoScripts AND not NotTunedDUnit
  ,
  Classes {a},
  vcmInterfaces {a},
  vcmExternalInterfaces {a}
  ;
{$IfEnd} //Admin AND InsiderTest AND nsTest

{$If defined(Admin) AND defined(InsiderTest) AND defined(nsTest)}
type
 _F1LikeAppTester_Parent_ = TAdminAppRes;
 {$Include w:\common\components\gui\Garant\VCM\AppTesting\F1LikeAppTester.imp.pas}
 TAdminTestRes = {final} class(_F1LikeAppTester_)
 protected
 // realized methods
   class function CalcBatchMode: Boolean; override;
 end;//TAdminTestRes
 TvcmApplicationRef = TAdminTestRes;
  {* Ссылка на приложение для DesignTime редакторов }

{$IfEnd} //Admin AND InsiderTest AND nsTest

implementation

{$If defined(Admin) AND defined(InsiderTest) AND defined(nsTest)}
uses
  toKAdmin,
  Forms
  {$If defined(nsTest) AND not defined(NotTunedDUnit)}
  ,
  KTestRunner
  {$IfEnd} //nsTest AND not NotTunedDUnit
  ,
  l3Base
  {$If not defined(NoVCM)}
  ,
  l3ComponentNameHelper
  {$IfEnd} //not NoVCM
  ,
  afwAnswer,
  TestFrameWork
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngineEX
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //Admin AND InsiderTest AND nsTest

{$If defined(Admin) AND defined(InsiderTest) AND defined(nsTest)}

{$Include w:\common\components\gui\Garant\VCM\AppTesting\F1LikeAppTester.imp.pas}

// start class TAdminTestRes

class function TAdminTestRes.CalcBatchMode: Boolean;
//#UC START# *4F79BCC902C5_5123A74700E2_var*
//#UC END# *4F79BCC902C5_5123A74700E2_var*
begin
//#UC START# *4F79BCC902C5_5123A74700E2_impl*
 Result := KTestRunner.NeedKTestRunner([TtoKAdmin]);
//#UC END# *4F79BCC902C5_5123A74700E2_impl*
end;//TAdminTestRes.CalcBatchMode

{$IfEnd} //Admin AND InsiderTest AND nsTest

end.