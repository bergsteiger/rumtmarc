{$IfNDef k2DictRec_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2DictRec.imp.pas"
// Начат: 07.07.2011 21:50
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi::K2::k2CoreObjects::k2DictRec
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define k2DictRec_imp}
 _k2HashTag_Parent_ = _k2DictRec_Parent_;
 {$Include ..\K2\k2HashTag.imp.pas}
 _k2DictRec_ = {mixin} class(_k2HashTag_)
 protected
 // overridden property methods
   function pm_GetStringID: Integer; override;
   procedure pm_SetStringID(aValue: Integer); override;
 protected
 // overridden protected methods
   function GetAsPCharLen: Tl3WString; override;
 end;//_k2DictRec_

{$Else k2DictRec_imp}


{$Include ..\K2\k2HashTag.imp.pas}

// start class _k2DictRec_

function _k2DictRec_.GetAsPCharLen: Tl3WString;
//#UC START# *47A869BB02DE_4E15F1DD0328_var*
//#UC END# *47A869BB02DE_4E15F1DD0328_var*
begin
//#UC START# *47A869BB02DE_4E15F1DD0328_impl*
 Result := (Attr[k2_tiName].AsObject As Tl3PrimString).AsWStr;
//#UC END# *47A869BB02DE_4E15F1DD0328_impl*
end;//_k2DictRec_.GetAsPCharLen

function _k2DictRec_.pm_GetStringID: Integer;
//#UC START# *47BC3BFD017F_4E15F1DD0328get_var*
//#UC END# *47BC3BFD017F_4E15F1DD0328get_var*
begin
//#UC START# *47BC3BFD017F_4E15F1DD0328get_impl*
 Result := IntA[k2_tiHandle];
//#UC END# *47BC3BFD017F_4E15F1DD0328get_impl*
end;//_k2DictRec_.pm_GetStringID

procedure _k2DictRec_.pm_SetStringID(aValue: Integer);
//#UC START# *47BC3BFD017F_4E15F1DD0328set_var*
//#UC END# *47BC3BFD017F_4E15F1DD0328set_var*
begin
//#UC START# *47BC3BFD017F_4E15F1DD0328set_impl*
 IntA[k2_tiHandle] := aValue;
//#UC END# *47BC3BFD017F_4E15F1DD0328set_impl*
end;//_k2DictRec_.pm_SetStringID

{$EndIf k2DictRec_imp}
