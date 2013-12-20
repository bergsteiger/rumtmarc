{$IfNDef evStyleTableListner_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/evStyleTableListner.imp.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi::Everest::StyleTable::evStyleTableListner
//
// Объект, слушающий изменения таблицы стилей
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define evStyleTableListner_imp}
{$IfDef DesignTimeLibrary}
 _evStyleTableListner_ = _evStyleTableListner_Parent_;
{$EndIf DesignTimeLibrary}

{$If not defined(DesignTimeLibrary)}
 _evStyleTableListnerPrim_Parent_ = _evStyleTableListner_Parent_;
 {$Include ..\Everest\evStyleTableListnerPrim.imp.pas}
 _evStyleTableListner_ = {mixin} class(_evStyleTableListnerPrim_)
  {* Объект, слушающий изменения таблицы стилей }
 protected
 // protected methods
   procedure Cleanup; override;
 end;//_evStyleTableListner_
{$IfEnd} //not DesignTimeLibrary

{$Else evStyleTableListner_imp}

{$If not defined(DesignTimeLibrary)}

{$Include ..\Everest\evStyleTableListnerPrim.imp.pas}

// start class _evStyleTableListner_

procedure _evStyleTableListner_.Cleanup;
//#UC START# *480DA70B02E4_480DA68701CE_var*
//#UC END# *480DA70B02E4_480DA68701CE_var*
begin
//#UC START# *480DA70B02E4_480DA68701CE_impl*
 evDelStyleTableSpy(Self);
 inherited;
//#UC END# *480DA70B02E4_480DA68701CE_impl*
end;//_evStyleTableListner_.Cleanup

{$IfEnd} //not DesignTimeLibrary

{$EndIf evStyleTableListner_imp}
