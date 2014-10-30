unit TestMsLine;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  TestFramework, msLine, FMX.Graphics, System.Types, msShape;

type
  // Test methods for class TmsLine

  TestTmsLine = class(TTestCase)
  strict private
    FmsLine: ImsShape;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestIsNeedsSecondClick;
    procedure TestEndTo;
    procedure TestMoveTo;
  end;

implementation

uses
  System.SysUtils
  ;

procedure TestTmsLine.SetUp;
begin
  FmsLine := TmsLine.Create(TmsMakeShapeContext.Create(TPointF.Create(0, 0), nil));
end;

procedure TestTmsLine.TearDown;
begin
  FmsLine := nil;
end;

procedure TestTmsLine.TestIsNeedsSecondClick;
var
  ReturnValue: Boolean;
begin
  ReturnValue := FmsLine.IsNeedsSecondClick;
  // TODO: Validate method results
end;

procedure TestTmsLine.TestEndTo;
var
  aCtx: msShape.TmsMakeShapeContext;
begin
  // TODO: Setup method call parameters
  FmsLine.EndTo(aCtx);
  // TODO: Validate method results
end;

procedure TestTmsLine.TestMoveTo;
var
  aFinishPoint: TPointF;
begin
  ExpectedException := EAssertionFailed;
  // TODO: Setup method call parameters
  FmsLine.MoveTo(aFinishPoint);
  // TODO: Validate method results
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTmsLine.Suite);
end.

