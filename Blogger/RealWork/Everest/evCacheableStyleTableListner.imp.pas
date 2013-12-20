{$IfNDef evCacheableStyleTableListner_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/evCacheableStyleTableListner.imp.pas"
// Начат: 29.06.2009 10:14
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi::Everest::StyleTable::evCacheableStyleTableListner
//
// Подписчик на изменение таблицы стилей, который держит какие-то параметры зависящие от с тилей в
// то время, когда находится в кеше
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define evCacheableStyleTableListner_imp}
{$IfDef DesignTimeLibrary}
 _evCacheableStyleTableListner_ = _evCacheableStyleTableListner_Parent_;
{$EndIf DesignTimeLibrary}

{$If not defined(DesignTimeLibrary)}
 _evStyleTableListnerPrim_Parent_ = _evCacheableStyleTableListner_Parent_;
 {$Include ..\Everest\evStyleTableListnerPrim.imp.pas}
 _evCacheableStyleTableListner_ = {mixin} class(_evStyleTableListnerPrim_)
  {* Подписчик на изменение таблицы стилей, который держит какие-то параметры зависящие от с тилей в то время, когда находится в кеше }
 protected
 // protected methods
   procedure Release; override;
 end;//_evCacheableStyleTableListner_
{$IfEnd} //not DesignTimeLibrary

{$Else evCacheableStyleTableListner_imp}

{$If not defined(DesignTimeLibrary)}

{$Include ..\Everest\evStyleTableListnerPrim.imp.pas}

// start class _evCacheableStyleTableListner_

procedure _evCacheableStyleTableListner_.Release;
//#UC START# *4A485CBD0102_4A485B9801E0_var*
//#UC END# *4A485CBD0102_4A485B9801E0_var*
begin
//#UC START# *4A485CBD0102_4A485B9801E0_impl*
 evDelStyleTableSpy(Self);
 inherited;
//#UC END# *4A485CBD0102_4A485B9801E0_impl*
end;//_evCacheableStyleTableListner_.Release

{$IfEnd} //not DesignTimeLibrary

{$EndIf evCacheableStyleTableListner_imp}
