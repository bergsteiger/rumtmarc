{$IfNDef k2Int64Holder_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Модуль: "w:/common/components/rtl/Garant/K2/k2Int64Holder.imp.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi::K2::k2PrimObjects::k2Int64Holder
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define k2Int64Holder_imp}
 Tk2In64Converter = packed record
   rLo : Integer;
   rHi : Integer;
 end;//Tk2In64Converter

 _k2Int64Holder_ = {abstract mixin} class(_k2Int64Holder_Parent_)
 protected
 // realized methods
   function Get_Int64A(aTagID: Integer): Int64;
   procedure Set_Int64A(aTagID: Integer; aValue: Int64);
   procedure Set_Int64W(aTagID: Integer; const aContext: Ik2Op; aValue: Int64);
 end;//_k2Int64Holder_

{$Else k2Int64Holder_imp}

// start class _k2Int64Holder_

function _k2Int64Holder_.Get_Int64A(aTagID: Integer): Int64;
//#UC START# *4E2EA8B10353_4E2EA99702A7get_var*
var
 l_V : Tk2In64Converter absolute Result;
//#UC END# *4E2EA8B10353_4E2EA99702A7get_var*
begin
//#UC START# *4E2EA8B10353_4E2EA99702A7get_impl*
 with _Instance_R_(Self).pm_GetAttr(aTagID) do
 begin
  l_V.rLo := IntA[k2_tiDocID];
  l_V.rHi := IntA[k2_tiSubID];
 end;//with Self.Attr[aTagID]
//#UC END# *4E2EA8B10353_4E2EA99702A7get_impl*
end;//_k2Int64Holder_.Get_Int64A

procedure _k2Int64Holder_.Set_Int64A(aTagID: Integer; aValue: Int64);
//#UC START# *4E2EA8B10353_4E2EA99702A7set_var*
//#UC END# *4E2EA8B10353_4E2EA99702A7set_var*
begin
//#UC START# *4E2EA8B10353_4E2EA99702A7set_impl*
 Set_Int64W(aTagID, nil, aValue);
//#UC END# *4E2EA8B10353_4E2EA99702A7set_impl*
end;//_k2Int64Holder_.Set_Int64A

procedure _k2Int64Holder_.Set_Int64W(aTagID: Integer; const aContext: Ik2Op; aValue: Int64);
//#UC START# *4E2EA93E029A_4E2EA99702A7set_var*
var
 l_V : Tk2In64Converter absolute aValue;
//#UC END# *4E2EA93E029A_4E2EA99702A7set_var*
begin
//#UC START# *4E2EA93E029A_4E2EA99702A7set_impl*
 with _Instance_R_(Self).cAtom(aTagID, aContext) do
 begin
  IntA[k2_tiDocID] := l_V.rLo;
  IntA[k2_tiSubID] := l_V.rHi;
 end;//Self.cAtom(aTagID)
//#UC END# *4E2EA93E029A_4E2EA99702A7set_impl*
end;//_k2Int64Holder_.Set_Int64W

{$EndIf k2Int64Holder_imp}
