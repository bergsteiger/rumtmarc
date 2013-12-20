unit CommentInTableAndScrollTest;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "TestFormsTest"
// ������: "w:/common/components/gui/Garant/Daily/CommentInTableAndScrollTest.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<TestCase::Class>> Shared Delphi Operations For Tests::TestFormsTest::Everest::TCommentInTableAndScrollTest
//
// ���� ������� ���������� � �������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

interface

{$If defined(nsTest) AND not defined(NoVCM)}
uses
  nevTools,
  CommentAndScrollTest,
  PrimTextLoad_Form
  ;
{$IfEnd} //nsTest AND not NoVCM

{$If defined(nsTest) AND not defined(NoVCM)}
type
 TCommentInTableAndScrollTest = {abstract} class(TCommentAndScrollTest)
  {* ���� ������� ���������� � ������� }
 private
 // private methods
   function IsUserComment(const aView: InevInputView): Boolean;
     {* ��������� ��������� �� ����� �� ���������������� �����������. }
 protected
 // overridden protected methods
   procedure CheckTopAnchor(const aView: InevInputView); override;
     {* ��������� ����� ������ ��������� ����� ��������� ��������� }
   function GetFolder: AnsiString; override;
     {* ����� � ������� ������ ���� }
   procedure MoveCursor4Insert(aForm: TPrimTextLoadForm); override;
     {* ����������� ������ ����� �������� �����������. }
   function GetUserComment(const aPoint: InevBasePoint): InevBasePoint; override;
     {* �������� ���������������� ����������� }
   procedure DoScroll(aForm: TPrimTextLoadForm); override;
     {* ��������� ������ � ��������� (���� �����). }
   function GetModelElementGUID: AnsiString; override;
     {* ������������� �������� ������, ������� ��������� ���� }
 end;//TCommentInTableAndScrollTest
{$IfEnd} //nsTest AND not NoVCM

implementation

{$If defined(nsTest) AND not defined(NoVCM)}
uses
  evOp,
  TableCell_Const,
  nevBase,
  SBSCell_Const,
  CommentPara_Const,
  TestFrameWork
  ;
{$IfEnd} //nsTest AND not NoVCM

{$If defined(nsTest) AND not defined(NoVCM)}

// start class TCommentInTableAndScrollTest

function TCommentInTableAndScrollTest.IsUserComment(const aView: InevInputView): Boolean;
//#UC START# *4CA983690025_4CA2F3AA0033_var*
var
 l_Real   : InevBasePoint;
 l_Anchor : InevBasePoint;
//#UC END# *4CA983690025_4CA2F3AA0033_var*
begin
//#UC START# *4CA983690025_4CA2F3AA0033_impl*
 Result := False;
 l_Anchor := aView.TopAnchor;
 while l_Anchor <> nil do
 begin
  if l_Anchor.InheritsFrom(k2_idCommentPara) then
  begin
   Result := True;
   Break;
  end; // if l_Anchor.InheritsFrom(k2_idCommentPara) then
  if l_Anchor.HasBaseLine then
   l_Anchor := l_Anchor.InnerFor(l_Anchor.Obj^.ToList.Obj[0], l_Real)
  else
   l_Anchor := l_Anchor.Inner;
 end; // while l_Anchor <> nil do
//#UC END# *4CA983690025_4CA2F3AA0033_impl*
end;//TCommentInTableAndScrollTest.IsUserComment

procedure TCommentInTableAndScrollTest.CheckTopAnchor(const aView: InevInputView);
//#UC START# *4C1F0A260192_4CA2F3AA0033_var*
//#UC END# *4C1F0A260192_4CA2F3AA0033_var*
begin
//#UC START# *4C1F0A260192_4CA2F3AA0033_impl*
 CheckFalse(IsUserComment(aView), '����������� �� ��� �������! � TopAnchor ��� ��� ������!');
//#UC END# *4C1F0A260192_4CA2F3AA0033_impl*
end;//TCommentInTableAndScrollTest.CheckTopAnchor

function TCommentInTableAndScrollTest.GetFolder: AnsiString;
 {-}
begin
 Result := 'Everest';
end;//TCommentInTableAndScrollTest.GetFolder

procedure TCommentInTableAndScrollTest.MoveCursor4Insert(aForm: TPrimTextLoadForm);
//#UC START# *4CA2F33F01E5_4CA2F3AA0033_var*
var
 l_Tag: InevTag;
//#UC END# *4CA2F33F01E5_4CA2F3AA0033_var*
begin
//#UC START# *4CA2F33F01E5_4CA2F3AA0033_impl*
 l_Tag := aForm.Text.Selection.Cursor.MostInner.Owner;
 while not l_Tag.InheritsFrom(k2_idTableCell) or l_Tag.InheritsFrom(k2_idSBSCell) do
 begin
  aForm.Text.Selection.Cursor.Move(aForm.Text.View, ev_ocLineDown);
  l_Tag := aForm.Text.Selection.Cursor.MostInner.Owner;
 end; // while not l_Tag.InheritsFrom(k2_idTableCell) ...
 aForm.Text.Selection.Cursor.Move(aForm.Text.View, ev_ocLineDown);
 //aForm.Text.Selection.Cursor.Move(aForm.Text.View, ev_ocLineDown); 
//#UC END# *4CA2F33F01E5_4CA2F3AA0033_impl*
end;//TCommentInTableAndScrollTest.MoveCursor4Insert

function TCommentInTableAndScrollTest.GetUserComment(const aPoint: InevBasePoint): InevBasePoint;
//#UC START# *4CA982110056_4CA2F3AA0033_var*
var
 l_PrevPoint: InevBasePoint;
//#UC END# *4CA982110056_4CA2F3AA0033_var*
begin
//#UC START# *4CA982110056_4CA2F3AA0033_impl*
 Result := aPoint;
 while not Result.InheritsFrom(k2_idCommentPara) do
 begin
  l_PrevPoint := Result;
  Result := Result.Inner;
  if Result = nil then
   Result := l_PrevPoint.Obj^.ToList.Obj[l_PrevPoint.Obj^.ChildrenCount - 1].MakePoint;
 end; // while not Result.InheritsFrom(k2_idCommentPara) do
//#UC END# *4CA982110056_4CA2F3AA0033_impl*
end;//TCommentInTableAndScrollTest.GetUserComment

procedure TCommentInTableAndScrollTest.DoScroll(aForm: TPrimTextLoadForm);
//#UC START# *4CA982800281_4CA2F3AA0033_var*
//#UC END# *4CA982800281_4CA2F3AA0033_var*
begin
//#UC START# *4CA982800281_4CA2F3AA0033_impl*
 while not IsUserComment(aForm.Text.View) do
  ScrollByLine(aForm, 1, False, False);
//#UC END# *4CA982800281_4CA2F3AA0033_impl*
end;//TCommentInTableAndScrollTest.DoScroll

function TCommentInTableAndScrollTest.GetModelElementGUID: AnsiString;
 {-}
begin
 Result := '4CA2F3AA0033';
end;//TCommentInTableAndScrollTest.GetModelElementGUID

{$IfEnd} //nsTest AND not NoVCM

end.