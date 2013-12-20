unit npNavigatorListPrim;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "VT"
// ������: "w:/common/components/gui/Garant/VT/npNavigatorListPrim.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::VT::vtNavigator::TnpNavigatorListPrim
//
// ������ ����������� ��������� � ����������. ������ ������������ ��� �������� ���������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\VT\vtDefine.inc}

interface

uses
  l3ProtoDataContainer,
  vtNavigator,
  l3Types,
  l3Memory,
  l3Interfaces,
  l3Core,
  l3Except,
  Classes
  ;

type
 _ItemType_ = TvtNavigator;
 _l3ObjectPtrList_Parent_ = Tl3ProtoDataContainer;
 {$Define l3Items_IsProto}
 {$Include w:\common\components\rtl\Garant\L3\l3ObjectPtrList.imp.pas}
 TnpNavigatorListPrim = class(_l3ObjectPtrList_)
  {* ������ ����������� ��������� � ����������. ������ ������������ ��� �������� ��������� }
 public
 // public methods
   procedure Reg(aNavigator: TvtNavigator);
     {* ���������������� ��������� }
   procedure UnReg(aNavigator: TvtNavigator);
     {* ���������������� ��������� }
 end;//TnpNavigatorListPrim

implementation

uses
  l3Base,
  l3MinMax,
  RTLConsts,
  SysUtils
  ;

type _Instance_R_ = TnpNavigatorListPrim;

{$Include w:\common\components\rtl\Garant\L3\l3ObjectPtrList.imp.pas}

// start class TnpNavigatorListPrim

procedure TnpNavigatorListPrim.Reg(aNavigator: TvtNavigator);
//#UC START# *4F61E05F00EE_4F61DFF20168_var*
var
 lIndex : Integer;
//#UC END# *4F61E05F00EE_4F61DFF20168_var*
begin
//#UC START# *4F61E05F00EE_4F61DFF20168_impl*
 lIndex := IndexOf(Pointer(aNavigator));
 if (lIndex < 0) then
 // - ����� ��� ���� �� �������, �.�. ��������� - ����, ��� � ������ �� ��������
  Add(aNavigator);
//#UC END# *4F61E05F00EE_4F61DFF20168_impl*
end;//TnpNavigatorListPrim.Reg

procedure TnpNavigatorListPrim.UnReg(aNavigator: TvtNavigator);
//#UC START# *4F61E080034B_4F61DFF20168_var*
var
 lIndex : Integer;
//#UC END# *4F61E080034B_4F61DFF20168_var*
begin
//#UC START# *4F61E080034B_4F61DFF20168_impl*
 lIndex := IndexOf(Pointer(aNavigator));
 if (lIndex <> -1) then
  Delete(lIndex);
//#UC END# *4F61E080034B_4F61DFF20168_impl*
end;//TnpNavigatorListPrim.UnReg

end.