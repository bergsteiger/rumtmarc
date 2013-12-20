{$IfNDef DeletingRowCorrector_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Модуль: "w:/common/components/gui/Garant/Everest/DeletingRowCorrector.imp.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi::Everest::ParaUtils::DeletingRowCorrector
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define DeletingRowCorrector_imp}
 _DeletingRowCorrector_ = {mixin} class(_DeletingRowCorrector_Parent_)
 protected
 // protected methods
   procedure CheckRow(const aCheckingRow: InevPara;
     const anOpPack: InevOp);
 end;//_DeletingRowCorrector_

{$Else DeletingRowCorrector_imp}

// start class _DeletingRowCorrector_

procedure _DeletingRowCorrector_.CheckRow(const aCheckingRow: InevPara;
  const anOpPack: InevOp);
//#UC START# *5108E8D80063_5108E8A403B9_var*

  function lp_CheckCell(const aCell: InevTag; Index: LongInt): Boolean;
  var
   l_Cell: InevTableCell;
  begin
   Result := True;
   if TevMergeStatus(aCell.IntA[k2_tiMergeStatus]) = ev_msContinue then
   begin
    aCell.QT(InevTableCell, l_Cell);
    if l_Cell.GetContinueCell(True, fc_Down) = nil then
     l_Cell.IntW[k2_tiMergeStatus, anOpPack] := Ord(ev_msNone)
    else
     l_Cell.IntW[k2_tiMergeStatus, anOpPack] := Ord(ev_msHead);
    evInsertPara(anOpPack, l_Cell.MakePoint, Tk2Type(aCell.TagType).ArrayProp[k2_tiChildren].DefaultChildType.MakeTag);
   end; // if TevMergeStatus(aCell.IntA[k2_tiMergeStatus]) = ev_msContinue then
  end;

//#UC END# *5108E8D80063_5108E8A403B9_var*
begin
//#UC START# *5108E8D80063_5108E8A403B9_impl*
 aCheckingRow.IterateChildrenF(k2L2TIA(@lp_CheckCell));
 aCheckingRow.Invalidate([nev_spExtent]);
//#UC END# *5108E8D80063_5108E8A403B9_impl*
end;//_DeletingRowCorrector_.CheckRow

{$EndIf DeletingRowCorrector_imp}
