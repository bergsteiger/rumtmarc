unit F1AutoTestSuite;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 AutoTests"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_AutoTests/F1AutoTestSuite.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Поддержка тестов::F1 AutoTests::AutoTests::TF1AutoTestSuite
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\GbaNemesis\nsDefine.inc}

interface

{$If defined(nsTest)}
uses
  AutoTestSuiteWithDUnitSupport
  ;
{$IfEnd} //nsTest

{$If defined(nsTest)}
type
 TF1AutoTestSuite = class(TAutoTestSuiteWithDUnitSupport)
 protected
 // overridden protected methods
   procedure DoReReadAbstractTests; override;
     {* Сигнатура метода DoReReadAbstractTests }
 public
 // public methods
   class procedure Register;
 end;//TF1AutoTestSuite
{$IfEnd} //nsTest

implementation

{$If defined(nsTest)}
uses
  F1AutoScripter,
  TestFrameWork
  ;
{$IfEnd} //nsTest

{$If defined(nsTest)}

// start class TF1AutoTestSuite

class procedure TF1AutoTestSuite.Register;
//#UC START# *4DC40E2F00E3_4DC3FE5D03B4_var*
//#UC END# *4DC40E2F00E3_4DC3FE5D03B4_var*
begin
//#UC START# *4DC40E2F00E3_4DC3FE5D03B4_impl*
 TestFramework.RegisterTest(Self.Create(TF1AutoScripter));
//#UC END# *4DC40E2F00E3_4DC3FE5D03B4_impl*
end;//TF1AutoTestSuite.Register

procedure TF1AutoTestSuite.DoReReadAbstractTests;
//#UC START# *5040A3CE0118_4DC3FE5D03B4_var*
//#UC END# *5040A3CE0118_4DC3FE5D03B4_var*
begin
//#UC START# *5040A3CE0118_4DC3FE5D03B4_impl*
 AddTests(TF1AutoScripter);
//#UC END# *5040A3CE0118_4DC3FE5D03B4_impl*
end;//TF1AutoTestSuite.DoReReadAbstractTests

{$IfEnd} //nsTest

end.