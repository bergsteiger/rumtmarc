{$IfNDef l3InterfacePtrList_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "L3"
// Модуль: "w:/common/components/rtl/Garant/L3/l3InterfacePtrList.imp.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Low Level::L3::l3CoreObjects::l3InterfacePtrList
//
// Список указателей на интерфейсы.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define l3InterfacePtrList_imp}
 _l3InterfacePtrListPrim_Parent_ = _l3InterfacePtrList_Parent_;
 {$Include ..\L3\l3InterfacePtrListPrim.imp.pas}
 _l3InterfacePtrList_ = {mixin} class(_l3InterfacePtrListPrim_)
  {* Список указателей на интерфейсы. }
 end;//_l3InterfacePtrList_

{$Else l3InterfacePtrList_imp}

// start class _l3InterfacePtrList_

procedure AssignItem(const aTo: _ItemType_;
  const aFrom: _ItemType_); forward;

function CompareExistingItems(const CI: CompareItemsRec): Integer; forward;

{$If not defined(l3Items_IsAtomic)}
function IsSame(const A: _ItemType_;
  const B: _ItemType_): Boolean;
//#UC START# *47B07CF403D0_47B57D630029_var*
//#UC END# *47B07CF403D0_47B57D630029_var*
begin
//#UC START# *47B07CF403D0_47B57D630029_impl*
 Result := (A = B);
//#UC END# *47B07CF403D0_47B57D630029_impl*
end;//IsSame
{$IfEnd} //not l3Items_IsAtomic

procedure AssignItem(const aTo: _ItemType_;
  const aFrom: _ItemType_);
//#UC START# *47B2C42A0163_47B57D630029_var*
//#UC END# *47B2C42A0163_47B57D630029_var*
begin
//#UC START# *47B2C42A0163_47B57D630029_impl*
 Assert(false);
//#UC END# *47B2C42A0163_47B57D630029_impl*
end;//AssignItem

function CompareExistingItems(const CI: CompareItemsRec): Integer;
//#UC START# *47B99D4503A2_47B57D630029_var*
//#UC END# *47B99D4503A2_47B57D630029_var*
begin
//#UC START# *47B99D4503A2_47B57D630029_impl*
 {$IfDef l3Items_HasCustomSort}
 Assert(CI.rSortIndex = l3_siNative);
 {$EndIf l3Items_HasCustomSort}
 Result := Integer(CI.rA^) - Integer(CI.rB^);
//#UC END# *47B99D4503A2_47B57D630029_impl*
end;//CompareExistingItems


{$Include ..\L3\l3InterfacePtrListPrim.imp.pas}


{$EndIf l3InterfacePtrList_imp}
