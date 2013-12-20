{$IfNDef ColumnResizeByMouse_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Abstract Tests"
// ������: "w:/common/components/rtl/Garant/Abstract_Tests/ColumnResizeByMouse.imp.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Tests Repository::Abstract Tests::MixIns::ColumnResizeByMouse
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define ColumnResizeByMouse_imp}
{$If defined(nsTest)}
 _Para2Point_Parent_ = _ColumnResizeByMouse_Parent_;
 {$Include w:\common\components\rtl\Garant\Abstract_Tests\Para2Point.imp.pas}
 _HotSpotTools_Parent_ = _Para2Point_;
 {$Include w:\common\components\rtl\Garant\Abstract_Tests\HotSpotTools.imp.pas}
 _ColumnResizeByMouse_ = {mixin} class(_HotSpotTools_)
 protected
 // overridden protected methods
   function GetInnerPara(const aView: InevInputView;
    const aDocument: InevPara): InevPara; override;
     {* ���������� ��������, ������������ �������� ����� �������������� ����� ��� ��������� }
   function GetPoint(const aMap: InevMap): Tl3Point; override;
     {* ���������� �����, �� ������� ����� ������������������. }
 protected
 // protected methods
   procedure SelectColumn(aText: TevCustomEditorWindow);
   function GetKeys: TShiftState; virtual;
   procedure GetColumnAndRow(var aCol: Integer;
     var aRow: Integer); virtual;
   function GetDelta: Integer; virtual;
 end;//_ColumnResizeByMouse_
{$IfEnd} //nsTest

{$Else ColumnResizeByMouse_imp}

{$If defined(nsTest)}

type _Para2Point_R_ = _ColumnResizeByMouse_;

{$Include w:\common\components\rtl\Garant\Abstract_Tests\Para2Point.imp.pas}

type _HotSpotTools_R_ = _ColumnResizeByMouse_;

{$Include w:\common\components\rtl\Garant\Abstract_Tests\HotSpotTools.imp.pas}

// start class _ColumnResizeByMouse_

procedure _ColumnResizeByMouse_.SelectColumn(aText: TevCustomEditorWindow);
//#UC START# *4E32C9D70275_4E32C9540390_var*
//#UC START# *4E32B93202FC_4E32B6D9024A_var*
var
 l_HotSpot : IevHotSpot;
 l_Effect  : TevMouseEffect;
 l_Keys    : TevMouseState;
 l_l3Pt    : Tl3Point;
//#UC END# *4E32C9D70275_4E32C9540390_var*
begin
//#UC START# *4E32C9D70275_4E32C9540390_impl*
 l_l3Pt := TranslatePara2Point(aText);
 l_HotSpot := GetHotSpot(aText, l_l3Pt);
 if l_HotSpot <> nil then
 begin
  l3FillChar(l_Keys, SizeOf(l_Keys), 0);
  l_Effect.rNeedAsyncLoop := True;
  l_Keys.rKeys := GetKeys;
  l_Keys.rInitialPoint := l_l3Pt;
  l_Keys.rPoint := l_l3Pt;
  l_HotSpot.LButtonDown(aText.View, l_Keys, l_Effect);
  l_Keys.rInMove := true;
  l_Keys.rPoint := l3Point(l_l3Pt.X + GetDelta, l_l3Pt.Y);
  l_HotSpot.MouseMove(aText.View, l_Keys);
  l_HotSpot.LButtonUp(aText.View, l_Keys);
 end; // if l_HotSpotTester.GetAdvancedHotSpot(aText.View,
//#UC END# *4E32C9D70275_4E32C9540390_impl*
end;//_ColumnResizeByMouse_.SelectColumn

function _ColumnResizeByMouse_.GetKeys: TShiftState;
//#UC START# *4E32CA120170_4E32C9540390_var*
//#UC END# *4E32CA120170_4E32C9540390_var*
begin
//#UC START# *4E32CA120170_4E32C9540390_impl*
 Result := [];
//#UC END# *4E32CA120170_4E32C9540390_impl*
end;//_ColumnResizeByMouse_.GetKeys

procedure _ColumnResizeByMouse_.GetColumnAndRow(var aCol: Integer;
  var aRow: Integer);
//#UC START# *4E32CA35008A_4E32C9540390_var*
//#UC END# *4E32CA35008A_4E32C9540390_var*
begin
//#UC START# *4E32CA35008A_4E32C9540390_impl*
 aCol := 0;
 aRow := 0;
//#UC END# *4E32CA35008A_4E32C9540390_impl*
end;//_ColumnResizeByMouse_.GetColumnAndRow

function _ColumnResizeByMouse_.GetDelta: Integer;
//#UC START# *4E32CA5E0115_4E32C9540390_var*
//#UC END# *4E32CA5E0115_4E32C9540390_var*
begin
//#UC START# *4E32CA5E0115_4E32C9540390_impl*
 Result := 0;
//#UC END# *4E32CA5E0115_4E32C9540390_impl*
end;//_ColumnResizeByMouse_.GetDelta

function _ColumnResizeByMouse_.GetInnerPara(const aView: InevInputView;
  const aDocument: InevPara): InevPara;
//#UC START# *4BF4E6A00093_4E32C9540390_var*
var
 l_Col : Integer;
 l_Row : Integer;
//#UC END# *4BF4E6A00093_4E32C9540390_var*
begin
//#UC START# *4BF4E6A00093_4E32C9540390_impl*
 GetColumnAndRow(l_Col, l_Row);
 Result := aDocument.AsList.Para[0].AsList.Para[l_Row].AsList.Para[l_Col];
//#UC END# *4BF4E6A00093_4E32C9540390_impl*
end;//_ColumnResizeByMouse_.GetInnerPara

function _ColumnResizeByMouse_.GetPoint(const aMap: InevMap): Tl3Point;
//#UC START# *4C3C927B027E_4E32C9540390_var*
//#UC END# *4C3C927B027E_4E32C9540390_var*
begin
//#UC START# *4C3C927B027E_4E32C9540390_impl*
 Result := l3Point(aMap.Bounds.Right, aMap.Outer.Bounds.Top + 4 * evEpsilon);
//#UC END# *4C3C927B027E_4E32C9540390_impl*
end;//_ColumnResizeByMouse_.GetPoint

{$IfEnd} //nsTest

{$EndIf ColumnResizeByMouse_imp}
