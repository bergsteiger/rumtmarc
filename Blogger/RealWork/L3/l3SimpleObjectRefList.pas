unit l3SimpleObjectRefList;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "L3"
// Модуль: "w:/common/components/rtl/Garant/L3/l3SimpleObjectRefList.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Low Level::L3::l3CoreObjects::Tl3SimpleObjectRefList
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\L3\l3Define.inc}

interface

uses
  l3SimpleObject,
  l3SimpleDataContainer,
  l3Types,
  l3Memory,
  l3Interfaces,
  l3Core,
  l3Except,
  Classes
  ;

type
 _ItemType_ = Tl3SimpleObject;
 _l3UncomparabeObjectRefList_Parent_ = Tl3SimpleDataContainer;
 {$Define l3Items_IsProto}
 {$Include ..\L3\l3UncomparabeObjectRefList.imp.pas}
 Tl3SimpleObjectRefList = class(_l3UncomparabeObjectRefList_)
 end;//Tl3SimpleObjectRefList

implementation

uses
  l3Base,
  l3MinMax,
  RTLConsts,
  SysUtils
  ;

// start class Tl3SimpleObjectRefList

function CompareExistingItems(const CI: CompareItemsRec): Integer; forward;

procedure AssignItem(const aTo: _ItemType_;
  const aFrom: _ItemType_);
//#UC START# *47B2C42A0163_47BC41FC01E9_var*
//#UC END# *47B2C42A0163_47BC41FC01E9_var*
begin
//#UC START# *47B2C42A0163_47BC41FC01E9_impl*
 Assert(false);
//#UC END# *47B2C42A0163_47BC41FC01E9_impl*
end;//AssignItem

function CompareExistingItems(const CI: CompareItemsRec): Integer;
//#UC START# *47B99D4503A2_47BC41FC01E9_var*
//#UC END# *47B99D4503A2_47BC41FC01E9_var*
begin
//#UC START# *47B99D4503A2_47BC41FC01E9_impl*
 {$IfDef l3Items_HasCustomSort}
 Assert(CI.rSortIndex = l3_siNative);
 {$EndIf l3Items_HasCustomSort}
 Result := Integer(CI.rA^) - Integer(CI.rB^);
//#UC END# *47B99D4503A2_47BC41FC01E9_impl*
end;//CompareExistingItems

type _Instance_R_ = Tl3SimpleObjectRefList;

{$Include ..\L3\l3UncomparabeObjectRefList.imp.pas}

end.