unit DUnit.Scripting.AutoTests;

interface

uses
  TestFrameWork,
  Core.Obj
  ;

type
 TautoTests = class(TTestSuite)
 end;//TautoTests

implementation

initialization
 TestFramework.RegisterTest(TautoTests.Create);

end.
