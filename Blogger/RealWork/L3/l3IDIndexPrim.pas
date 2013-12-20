unit l3IDIndexPrim;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "L3"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/L3/l3IDIndexPrim.pas"
// �����: 18.02.2008 19:01
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Low Level::L3::l3CoreObjects::Tl3IDIndexPrim
//
// ������ �������� �� �� Handle.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\L3\l3Define.inc}

interface

uses
  l3PrimString,
  l3SimpleDataContainer,
  l3Types,
  l3Memory,
  l3Interfaces,
  l3Core,
  l3Except,
  Classes
  ;

type
 _ItemType_ = Tl3PrimString;
 _l3UncomparabeObjectRefList_Parent_ = Tl3SimpleDataContainer;
 {$Define l3Items_IsProto}
 {$Include ..\L3\l3UncomparabeObjectRefList.imp.pas}
 Tl3IDIndexPrim = class(_l3UncomparabeObjectRefList_)
  {* ������ �������� �� �� Handle. }
 end;//Tl3IDIndexPrim

implementation

uses
  l3Base,
  l3MinMax,
  RTLConsts,
  SysUtils
  ;

// start class Tl3IDIndexPrim

function CompareExistingItems(const CI: CompareItemsRec): Integer; forward;

procedure AssignItem(const aTo: _ItemType_;
  const aFrom: _ItemType_);
//#UC START# *47B2C42A0163_47B9AB6902AF_var*
//#UC END# *47B2C42A0163_47B9AB6902AF_var*
begin
//#UC START# *47B2C42A0163_47B9AB6902AF_impl*
 Assert(false);
//#UC END# *47B2C42A0163_47B9AB6902AF_impl*
end;//AssignItem

function CompareExistingItems(const CI: CompareItemsRec): Integer;
//#UC START# *47B99D4503A2_47B9AB6902AF_var*
//#UC END# *47B99D4503A2_47B9AB6902AF_var*
begin
//#UC START# *47B99D4503A2_47B9AB6902AF_impl*
 {$IfDef l3Items_HasCustomSort}
 Assert(CI.rSortIndex = l3_siNative);
 {$EndIf l3Items_HasCustomSort}
 Result := CI.rA^.StringID - CI.rB^.StringID;
//#UC END# *47B99D4503A2_47B9AB6902AF_impl*
end;//CompareExistingItems

type _Instance_R_ = Tl3IDIndexPrim;

{$Include ..\L3\l3UncomparabeObjectRefList.imp.pas}

end.