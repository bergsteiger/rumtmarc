{$IfNDef k2OwnedObject_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Модуль: "w:/common/components/rtl/Garant/K2/k2OwnedObject.imp.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi::K2::k2CoreMixins::k2OwnedObject
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define k2OwnedObject_imp}
 _k2Int64Holder_Parent_ = _k2OwnedObject_Parent_;
 {$Include ..\K2\k2Int64Holder.imp.pas}
 _k2OwnedObject_ = {abstract mixin} class(_k2Int64Holder_)
 protected
 // property methods
   function pm_GetTagOwner: Ik2Tag; virtual;
   procedure pm_SetTagOwner(const aValue: Ik2Tag); virtual;
 protected
 // realized methods
   function Get_Owner: Ik2Tag;
   procedure Set_Owner(const aValue: Ik2Tag);
 protected
 // protected properties
   property TagOwner: Ik2Tag
     read pm_GetTagOwner
     write pm_SetTagOwner;
 end;//_k2OwnedObject_

{$Else k2OwnedObject_imp}


{$Include ..\K2\k2Int64Holder.imp.pas}

// start class _k2OwnedObject_

function _k2OwnedObject_.pm_GetTagOwner: Ik2Tag;
//#UC START# *4A60A3E20182_4A60A38001E9get_var*
//#UC END# *4A60A3E20182_4A60A38001E9get_var*
begin
//#UC START# *4A60A3E20182_4A60A38001E9get_impl*
 {$IfDef _Box_}
 Result := _k2OwnedObject_R_(Self).GetRedirect.Owner;
 {$Else  _Box_}
 Result := k2NullTag;
 {$EndIf _Box_}
//#UC END# *4A60A3E20182_4A60A38001E9get_impl*
end;//_k2OwnedObject_.pm_GetTagOwner

procedure _k2OwnedObject_.pm_SetTagOwner(const aValue: Ik2Tag);
//#UC START# *4A60A3E20182_4A60A38001E9set_var*
//#UC END# *4A60A3E20182_4A60A38001E9set_var*
begin
//#UC START# *4A60A3E20182_4A60A38001E9set_impl*
 {$IfDef _Box_}
 _k2OwnedObject_R_(Self).GetRedirect.Owner := aValue;
 {$EndIf _Box_}
//#UC END# *4A60A3E20182_4A60A38001E9set_impl*
end;//_k2OwnedObject_.pm_SetTagOwner

function _k2OwnedObject_.Get_Owner: Ik2Tag;
//#UC START# *4A6475C4026D_4A60A38001E9get_var*
//#UC END# *4A6475C4026D_4A60A38001E9get_var*
begin
//#UC START# *4A6475C4026D_4A60A38001E9get_impl*
 Result := TagOwner;
//#UC END# *4A6475C4026D_4A60A38001E9get_impl*
end;//_k2OwnedObject_.Get_Owner

procedure _k2OwnedObject_.Set_Owner(const aValue: Ik2Tag);
//#UC START# *4A6475C4026D_4A60A38001E9set_var*
//#UC END# *4A6475C4026D_4A60A38001E9set_var*
begin
//#UC START# *4A6475C4026D_4A60A38001E9set_impl*
 TagOwner := aValue;
//#UC END# *4A6475C4026D_4A60A38001E9set_impl*
end;//_k2OwnedObject_.Set_Owner

{$EndIf k2OwnedObject_imp}
