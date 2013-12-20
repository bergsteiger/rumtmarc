{$IfNDef evStyleTableListnerPrim_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/evStyleTableListnerPrim.imp.pas"
// Начат: 29.06.2009 10:11
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi::Everest::StyleTable::evStyleTableListnerPrim
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define evStyleTableListnerPrim_imp}
{$IfDef DesignTimeLibrary}
 _evStyleTableListnerPrim_ = _evStyleTableListnerPrim_Parent_;
{$EndIf DesignTimeLibrary}

{$If not defined(DesignTimeLibrary)}
 _evStyleTableListnerPrim_ = {mixin} class(_evStyleTableListnerPrim_Parent_, IafwStyleTableSpy)
 protected
 // realized methods
   procedure StyleTableChanged;
     {* таблица стилей изменилась. }
 protected
 // protected methods
   procedure InitFields; override;
   procedure DoStyleTableChanged; virtual; abstract;
   function NeedListen: Boolean; virtual;
     {* Нужно ли подписываться к таблице стилей (может мы уже подписались) }
   function AtEnd: Boolean; virtual;
     {* Подписываться в конец списка подписчиков }
 end;//_evStyleTableListnerPrim_
{$IfEnd} //not DesignTimeLibrary

{$Else evStyleTableListnerPrim_imp}

{$If not defined(DesignTimeLibrary)}

// start class _evStyleTableListnerPrim_

procedure _evStyleTableListnerPrim_.InitFields;
//#UC START# *4A485B6003A7_4A485B0D0223_var*
//#UC END# *4A485B6003A7_4A485B0D0223_var*
begin
//#UC START# *4A485B6003A7_4A485B0D0223_impl*
 inherited;
 if NeedListen then
  evAddStyleTableSpy(Self, false, AtEnd);
//#UC END# *4A485B6003A7_4A485B0D0223_impl*
end;//_evStyleTableListnerPrim_.InitFields

function _evStyleTableListnerPrim_.NeedListen: Boolean;
//#UC START# *4A485DBE0293_4A485B0D0223_var*
//#UC END# *4A485DBE0293_4A485B0D0223_var*
begin
//#UC START# *4A485DBE0293_4A485B0D0223_impl*
 Result := true;
//#UC END# *4A485DBE0293_4A485B0D0223_impl*
end;//_evStyleTableListnerPrim_.NeedListen

function _evStyleTableListnerPrim_.AtEnd: Boolean;
//#UC START# *4A4867A20049_4A485B0D0223_var*
//#UC END# *4A4867A20049_4A485B0D0223_var*
begin
//#UC START# *4A4867A20049_4A485B0D0223_impl*
 Result := true;
//#UC END# *4A4867A20049_4A485B0D0223_impl*
end;//_evStyleTableListnerPrim_.AtEnd

procedure _evStyleTableListnerPrim_.StyleTableChanged;
//#UC START# *467D2CB10135_4A485B0D0223_var*
//#UC END# *467D2CB10135_4A485B0D0223_var*
begin
//#UC START# *467D2CB10135_4A485B0D0223_impl*
 DoStyleTableChanged;
//#UC END# *467D2CB10135_4A485B0D0223_impl*
end;//_evStyleTableListnerPrim_.StyleTableChanged

{$IfEnd} //not DesignTimeLibrary

{$EndIf evStyleTableListnerPrim_imp}
