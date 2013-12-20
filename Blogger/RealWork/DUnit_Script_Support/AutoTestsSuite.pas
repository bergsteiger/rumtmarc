unit AutoTestsSuite;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "DUnit Script Support"
// Модуль: "w:/common/components/rtl/Garant/DUnit_Script_Support/AutoTestsSuite.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi DUnit Scripting::DUnit Script Support::DUnitKeyWordsSupport::TAutoTestsSuite
//
// Поддержка тестов-скриптов
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\DUnit_Script_Support\dsDefine.inc}

interface

uses
  AutoTestSuiteWithDUnitSupport
  ;

type
 TAutoTestsSuite = class(TAutoTestSuiteWithDUnitSupport)
  {* Поддержка тестов-скриптов }
 protected
 // overridden protected methods
    {$If defined(nsTest)}
   function DoGetSubFolder (): AnsiString; override;
    {$IfEnd} //nsTest
 public
 // public methods
   class procedure Register;
 end;//TAutoTestsSuite

implementation

uses
  DailyAutoTest
  {$If defined(nsTest)}
  ,
  TestFrameWork
  {$IfEnd} //nsTest
  
  ;

// start class TAutoTestsSuite

class procedure TAutoTestsSuite.Register;
//#UC START# *4DC40BF302B4_4DC24756009A_var*
//#UC END# *4DC40BF302B4_4DC24756009A_var*
begin
//#UC START# *4DC40BF302B4_4DC24756009A_impl*
 TestFramework.RegisterTest(Self.Create(TDailyAutoTest));
//#UC END# *4DC40BF302B4_4DC24756009A_impl*
end;//TAutoTestsSuite.Register

{$If defined(nsTest)}
function TAutoTestsSuite.DoGetSubFolder (): AnsiString;
//#UC START# *4F9A4FD70148_4DC24756009A_var*
//#UC END# *4F9A4FD70148_4DC24756009A_var*
begin
//#UC START# *4F9A4FD70148_4DC24756009A_impl*
 Result := '';
 AddTests(TDailyAutoTest);
//#UC END# *4F9A4FD70148_4DC24756009A_impl*
end;//TAutoTestsSuite.DoGetSubFolder ()
{$IfEnd} //nsTest

end.