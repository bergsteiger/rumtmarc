unit evDefaultStylesFontSizesPrim1;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/evDefaultStylesFontSizesPrim1.pas"
// �����: 28.07.2011 19:05
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::StyleTable::TevDefaultStylesFontSizesPrim1
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  evDefaultStylesFontSizesPrim,
  l3Types
  ;

type
 _FindDataType_ = Integer;
 _l3Searcher_Parent_ = TevDefaultStylesFontSizesPrim;
 {$Include w:\common\components\rtl\Garant\L3\l3Searcher.imp.pas}
 TevDefaultStylesFontSizesPrim1 = class(_l3Searcher_)
 end;//TevDefaultStylesFontSizesPrim1

implementation

// start class TevDefaultStylesFontSizesPrim1

function CompareItemWithData(const anItem: _ItemType_;
  const aData: _FindDataType_;
  aSortIndex: Tl3SortIndex;
  aList: _l3Searcher_): Integer;
//#UC START# *47B9BAFD01F4_4E317AC802F4_var*
//#UC END# *47B9BAFD01F4_4E317AC802F4_var*
begin
//#UC START# *47B9BAFD01F4_4E317AC802F4_impl*
 Result := anItem.rStyleID - aData;
//#UC END# *47B9BAFD01F4_4E317AC802F4_impl*
end;//CompareItemWithData

type _Instance_R_ = TevDefaultStylesFontSizesPrim1;

{$Include w:\common\components\rtl\Garant\L3\l3Searcher.imp.pas}

end.