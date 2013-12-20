unit l3CBaseRefList;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "L3"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/L3/l3CBaseRefList.pas"
// Начат: 18.05.2011 20:20
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Low Level::L3::Containers::Tl3CBaseRefList
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\L3\l3Define.inc}

interface

uses
  l3CBase,
  l3ProtoDataContainer,
  l3Types,
  l3Memory,
  l3Interfaces,
  l3Core,
  l3Except,
  Classes
  ;

type
 _ItemType_ = Tl3CBase;
 _l3UncomparabeObjectRefList_Parent_ = Tl3ProtoDataContainer;
 {$Define l3Items_IsProto}
 {$Include ..\L3\l3UncomparabeObjectRefList.imp.pas}
 Tl3CBaseRefList = class(_l3UncomparabeObjectRefList_)
 end;//Tl3CBaseRefList

implementation

uses
  l3Base,
  l3MinMax,
  RTLConsts,
  SysUtils
  ;

// start class Tl3CBaseRefList

function CompareExistingItems(const CI: CompareItemsRec): Integer; forward;

procedure AssignItem(const aTo: _ItemType_;
  const aFrom: _ItemType_);
//#UC START# *47B2C42A0163_4DD3F1C600E1_var*
//#UC END# *47B2C42A0163_4DD3F1C600E1_var*
begin
//#UC START# *47B2C42A0163_4DD3F1C600E1_impl*
 Assert(false);
//#UC END# *47B2C42A0163_4DD3F1C600E1_impl*
end;//AssignItem

function CompareExistingItems(const CI: CompareItemsRec): Integer;
//#UC START# *47B99D4503A2_4DD3F1C600E1_var*
//#UC END# *47B99D4503A2_4DD3F1C600E1_var*
begin
//#UC START# *47B99D4503A2_4DD3F1C600E1_impl*
 {$IfDef l3Items_HasCustomSort}
 Assert(CI.rSortIndex = l3_siNative);
 {$EndIf l3Items_HasCustomSort}
 Result := Integer(CI.rA^) - Integer(CI.rB^);
 Assert(false);
//#UC END# *47B99D4503A2_4DD3F1C600E1_impl*
end;//CompareExistingItems

type _Instance_R_ = Tl3CBaseRefList;

{$Include ..\L3\l3UncomparabeObjectRefList.imp.pas}

end.