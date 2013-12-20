{$IfNDef k2TagHolder_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2TagHolder.imp.pas"
// Начат: 10.07.2009 17:04
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi::K2::k2CoreObjects::k2TagHolder
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define k2TagHolder_imp}
 _k2TagHolder_ = {mixin} class(_k2TagHolder_Parent_)
 protected
 // protected fields
   Redirect : Ik2Tag;
 protected
 // protected methods
   procedure Cleanup; override;
 end;//_k2TagHolder_

{$Else k2TagHolder_imp}

// start class _k2TagHolder_

procedure _k2TagHolder_.Cleanup;
//#UC START# *4A573F5C039E_4A573C5F01FF_var*
//#UC END# *4A573F5C039E_4A573C5F01FF_var*
begin
//#UC START# *4A573F5C039E_4A573C5F01FF_impl*
 Redirect := nil;
 inherited;
//#UC END# *4A573F5C039E_4A573C5F01FF_impl*
end;//_k2TagHolder_.Cleanup

{$EndIf k2TagHolder_imp}
