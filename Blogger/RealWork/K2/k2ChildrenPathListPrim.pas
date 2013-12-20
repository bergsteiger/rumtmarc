unit k2ChildrenPathListPrim;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Модуль: "w:/common/components/rtl/Garant/K2/k2ChildrenPathListPrim.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::K2::k2CoreObjects::Tk2ChildrenPathListPrim
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\K2\k2Define.inc}

interface

uses
  l3ProtoObject,
  l3DataContainerWithoutIUnknown,
  l3Types,
  l3Memory,
  l3Interfaces,
  l3Core,
  l3Except,
  Classes
  ;

type
//#UC START# *47BD505E0344ci*
 {$Define l3Items_NoChanging}
 {.$Define l3Items_NoSort}
 {$Define l3Items_NoOwner}
//#UC END# *47BD505E0344ci*
 _ItemType_ = Tl3ProtoObject;
 _l3UncomparabeObjectRefList_Parent_ = Tl3DataContainerWithoutIUnknown;
 {$Include w:\common\components\rtl\Garant\L3\l3UncomparabeObjectRefList.imp.pas}
 Tk2ChildrenPathListPrim = class(_l3UncomparabeObjectRefList_)
//#UC START# *47BD505E0344publ*
//#UC END# *47BD505E0344publ*
 end;//Tk2ChildrenPathListPrim

implementation

uses
  k2Base,
  l3Base,
  l3MinMax,
  RTLConsts,
  SysUtils
  ;

// start class Tk2ChildrenPathListPrim

function CompareExistingItems(const CI: CompareItemsRec): Integer; forward;

procedure AssignItem(const aTo: _ItemType_;
  const aFrom: _ItemType_);
//#UC START# *47B2C42A0163_47BD505E0344_var*
//#UC END# *47B2C42A0163_47BD505E0344_var*
begin
//#UC START# *47B2C42A0163_47BD505E0344_impl*
 Assert(false);
//#UC END# *47B2C42A0163_47BD505E0344_impl*
end;//AssignItem

function CompareExistingItems(const CI: CompareItemsRec): Integer;
//#UC START# *47B99D4503A2_47BD505E0344_var*
//#UC END# *47B99D4503A2_47BD505E0344_var*
begin
//#UC START# *47B99D4503A2_47BD505E0344_impl*
 {$IfDef l3Items_HasCustomSort}
 Assert(CI.rSortIndex = l3_siNative);
 {$EndIf l3Items_HasCustomSort}
 Result := Tk2ChildrenPath(CI.rA^).TagType.ID - Tk2ChildrenPath(CI.rB^).TagType.ID;
//#UC END# *47B99D4503A2_47BD505E0344_impl*
end;//CompareExistingItems

type _Instance_R_ = Tk2ChildrenPathListPrim;

{$Include w:\common\components\rtl\Garant\L3\l3UncomparabeObjectRefList.imp.pas}


//#UC START# *47BD505E0344impl*
//#UC END# *47BD505E0344impl*
end.