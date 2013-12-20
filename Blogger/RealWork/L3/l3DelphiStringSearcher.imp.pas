{$IfNDef l3DelphiStringSearcher_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "L3"
// Модуль: "w:/common/components/rtl/Garant/L3/l3DelphiStringSearcher.imp.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Low Level::L3::l3CoreObjects::l3DelphiStringSearcher
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define l3DelphiStringSearcher_imp}
 _FindDataType_ = AnsiString;
 _l3Searcher_Parent_ = _l3DelphiStringSearcher_Parent_;
 {$Include ..\L3\l3Searcher.imp.pas}
 _l3DelphiStringSearcher_ = {abstract mixin} class(_l3Searcher_)
 end;//_l3DelphiStringSearcher_

{$Else l3DelphiStringSearcher_imp}

// start class _l3DelphiStringSearcher_

function CompareItemWithData(const anItem: _ItemType_;
  const aData: _FindDataType_;
  aSortIndex: Tl3SortIndex;
  aList: _l3Searcher_): Integer;
//#UC START# *47B9BAFD01F4_4B891136016F_var*
//#UC END# *47B9BAFD01F4_4B891136016F_var*
begin
//#UC START# *47B9BAFD01F4_4B891136016F_impl*
 Result := l3Compare(anItem.AsWStr, aData, aSortIndex);
//#UC END# *47B9BAFD01F4_4B891136016F_impl*
end;//CompareItemWithData


{$Include ..\L3\l3Searcher.imp.pas}


{$EndIf l3DelphiStringSearcher_imp}
