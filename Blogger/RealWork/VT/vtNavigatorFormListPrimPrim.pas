unit vtNavigatorFormListPrimPrim;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "VT"
// Модуль: "w:/common/components/gui/Garant/VT/vtNavigatorFormListPrimPrim.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::VT::vtNavigator::TvtNavigatorFormListPrimPrim
//
// Список форм навигатора
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\VT\vtDefine.inc}

interface

uses
  vtNavigatorForm,
  l3ProtoDataContainer,
  l3Types,
  l3Memory,
  l3Interfaces,
  l3Core,
  l3Except,
  Classes
  ;

type
 _ItemType_ = TvtNavigatorForm;
 _l3UncomparabeObjectRefList_Parent_ = Tl3ProtoDataContainer;
 {$Define l3Items_IsProto}
 {$Include w:\common\components\rtl\Garant\L3\l3UncomparabeObjectRefList.imp.pas}
 TvtNavigatorFormListPrimPrim = class(_l3UncomparabeObjectRefList_)
  {* Список форм навигатора }
 end;//TvtNavigatorFormListPrimPrim

implementation

uses
  l3Base,
  l3MinMax,
  RTLConsts,
  SysUtils
  ;

// start class TvtNavigatorFormListPrimPrim

function CompareExistingItems(const CI: CompareItemsRec): Integer; forward;

procedure AssignItem(const aTo: _ItemType_;
  const aFrom: _ItemType_);
//#UC START# *47B2C42A0163_47CD131703C6_var*
//#UC END# *47B2C42A0163_47CD131703C6_var*
begin
//#UC START# *47B2C42A0163_47CD131703C6_impl*
 Assert(False);
//#UC END# *47B2C42A0163_47CD131703C6_impl*
end;//AssignItem

function CompareExistingItems(const CI: CompareItemsRec): Integer;
//#UC START# *47B99D4503A2_47CD131703C6_var*
//#UC END# *47B99D4503A2_47CD131703C6_var*
begin
//#UC START# *47B99D4503A2_47CD131703C6_impl*
 {$IfDef l3Items_HasCustomSort}
 Assert(CI.rSortIndex = l3_siNative);
 {$EndIf l3Items_HasCustomSort}
 Result := Integer(CI.rA.CloseHandler.Form) - Integer(CI.rB.CloseHandler.Form);
 //Assert(False);
//#UC END# *47B99D4503A2_47CD131703C6_impl*
end;//CompareExistingItems

type _Instance_R_ = TvtNavigatorFormListPrimPrim;

{$Include w:\common\components\rtl\Garant\L3\l3UncomparabeObjectRefList.imp.pas}

end.