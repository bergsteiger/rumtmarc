unit RoundedControlsTest;

interface

uses
  TestFrameWork
  ;

type
 TRoundedControlsTest = class(TTestCase)
 published
 // published methods
   procedure DoIt;
 end;//TRoundedControlsTest

implementation

uses
  RoundedButton,
  RoundedEdit,
  Forms
  ;


// start class TRoundedControlsTest

procedure TRoundedControlsTest.DoIt;
var
 l_Form : TCustomForm;
 l_E : TRoundedEdit;
 l_B : TRoundedButton;
begin
 l_Form := TCustomForm.CreateNew(Application);
 l_E := TRoundedEdit.Create(l_Form);
 l_B := TRoundedButton.Create(l_Form);

 l_Form.Height := 200;
 l_Form.Width := 200;
 l_E.Left := 10;
 l_B.Left := 10;
 l_E.Top := 20;
 l_B.Top := 50;
 
 l_E.Parent := l_Form;
 l_B.Parent := l_Form;
 l_Form.Show;
end;//TRoundedControlsTest.DoIt

initialization
 TestFramework.RegisterTest(TRoundedControlsTest.Suite);

end.