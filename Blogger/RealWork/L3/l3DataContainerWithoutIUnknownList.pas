unit l3DataContainerWithoutIUnknownList;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "L3"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/L3/l3DataContainerWithoutIUnknownList.pas"
// Начат: 21.07.2009 18:41
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Low Level::L3::l3CoreObjects::Tl3DataContainerWithoutIUnknownList
//
// Список Tl3DataContainerWithoutIUnknown
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\L3\l3Define.inc}

interface

uses
  l3DataContainerWithoutIUnknown,
  l3Types,
  l3Memory,
  l3Interfaces,
  l3Core,
  l3Except,
  Classes
  ;

type
//#UC START# *4A65D3750337ci*
 {$Define l3Items_NoChanging}
 {$Define l3Items_NoSort}
 {$Define l3Items_NoOwner}
//#UC END# *4A65D3750337ci*
 _ItemType_ = Tl3DataContainerWithoutIUnknown;
 _l3UncomparabeObjectRefList_Parent_ = Tl3DataContainerWithoutIUnknown;
 {$Include ..\L3\l3UncomparabeObjectRefList.imp.pas}
 Tl3DataContainerWithoutIUnknownList = class(_l3UncomparabeObjectRefList_)
  {* Список Tl3DataContainerWithoutIUnknown }
//#UC START# *4A65D3750337publ*
//#UC END# *4A65D3750337publ*
 end;//Tl3DataContainerWithoutIUnknownList

implementation

uses
  l3Base,
  l3MinMax,
  RTLConsts,
  SysUtils
  ;

// start class Tl3DataContainerWithoutIUnknownList

function CompareExistingItems(const CI: CompareItemsRec): Integer; forward;

procedure AssignItem(const aTo: _ItemType_;
  const aFrom: _ItemType_);
//#UC START# *47B2C42A0163_4A65D3750337_var*
//#UC END# *47B2C42A0163_4A65D3750337_var*
begin
//#UC START# *47B2C42A0163_4A65D3750337_impl*
 Assert(false);
//#UC END# *47B2C42A0163_4A65D3750337_impl*
end;//AssignItem

function CompareExistingItems(const CI: CompareItemsRec): Integer;
//#UC START# *47B99D4503A2_4A65D3750337_var*
//#UC END# *47B99D4503A2_4A65D3750337_var*
begin
//#UC START# *47B99D4503A2_4A65D3750337_impl*
 {$IfDef l3Items_HasCustomSort}
 Assert(CI.rSortIndex = l3_siNative);
 {$EndIf l3Items_HasCustomSort}
 Result := Integer(CI.rA^) - Integer(CI.rB^);
//#UC END# *47B99D4503A2_4A65D3750337_impl*
end;//CompareExistingItems

type _Instance_R_ = Tl3DataContainerWithoutIUnknownList;

{$Include ..\L3\l3UncomparabeObjectRefList.imp.pas}


//#UC START# *4A65D3750337impl*
//#UC END# *4A65D3750337impl*
end.