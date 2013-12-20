{$IfNDef nevParaListViewBounds_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Модуль: "w:/common/components/gui/Garant/Everest/nevParaListViewBounds.imp.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi::Everest::Cursors::nevParaListViewBounds
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define nevParaListViewBounds_imp}
 _nevParaListViewBounds_ = {mixin} class(_nevParaListViewBounds_Parent_)
 protected
 // overridden protected methods
   function GetViewBounds(const aView: InevView;
    const aMap: InevMap): TnevRect; override;
 end;//_nevParaListViewBounds_

{$Else nevParaListViewBounds_imp}

// start class _nevParaListViewBounds_

function _nevParaListViewBounds_.GetViewBounds(const aView: InevView;
  const aMap: InevMap): TnevRect;
//#UC START# *4A5CCD9D028D_4A5CD0CB0038_var*
//#UC END# *4A5CCD9D028D_4A5CD0CB0038_var*
begin
//#UC START# *4A5CCD9D028D_4A5CD0CB0038_impl*
 if not Self.HasInner then
  Result := inherited GetViewBounds(aView, aMap)
 else
  Result := Self.GetInner.ViewBounds(aView, aMap.ReserveMap(Self.GetInner.Obj^))
//#UC END# *4A5CCD9D028D_4A5CD0CB0038_impl*
end;//_nevParaListViewBounds_.GetViewBounds

{$EndIf nevParaListViewBounds_imp}
