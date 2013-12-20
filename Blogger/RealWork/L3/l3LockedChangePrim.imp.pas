{$IfNDef l3LockedChangePrim_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "L3"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/L3/l3LockedChangePrim.imp.pas"
// Начат: 20.10.2005 09:49
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Low Level::L3::Стандартные примеси::l3LockedChangePrim
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define l3LockedChangePrim_imp}
 _l3LockedChangePrim_ = {mixin} class(_l3LockedChangePrim_Parent_)
 private
 // private fields
   f_ChangeCount : Integer;
    {* Поле для свойства ChangeCount}
 public
 // overridden public methods
   procedure Changing; override;
     {* нотификация о начале изменения состояния объекта. Для перекрытия и использования в потомках. }
   procedure Changed; override;
     {* нотификация о завершении изменения состояния объекта. Для перекрытия и использования в потомках. }
 protected
 // protected methods
   procedure FireChanging; virtual;
   procedure FireChanged; virtual;
 public
 // public methods
   function IsChanging: Boolean; virtual;
 protected
 // protected properties
   property ChangeCount: Integer
     read f_ChangeCount
     write f_ChangeCount;
 end;//_l3LockedChangePrim_

{$Else l3LockedChangePrim_imp}

// start class _l3LockedChangePrim_

procedure _l3LockedChangePrim_.FireChanging;
//#UC START# *48FC9D1F016E_48FC9CD002FE_var*
//#UC END# *48FC9D1F016E_48FC9CD002FE_var*
begin
//#UC START# *48FC9D1F016E_48FC9CD002FE_impl*
 inherited Changing;
//#UC END# *48FC9D1F016E_48FC9CD002FE_impl*
end;//_l3LockedChangePrim_.FireChanging

procedure _l3LockedChangePrim_.FireChanged;
//#UC START# *48FC9D300237_48FC9CD002FE_var*
//#UC END# *48FC9D300237_48FC9CD002FE_var*
begin
//#UC START# *48FC9D300237_48FC9CD002FE_impl*
 inherited Changed;
//#UC END# *48FC9D300237_48FC9CD002FE_impl*
end;//_l3LockedChangePrim_.FireChanged

function _l3LockedChangePrim_.IsChanging: Boolean;
//#UC START# *48FC9D5E0310_48FC9CD002FE_var*
//#UC END# *48FC9D5E0310_48FC9CD002FE_var*
begin
//#UC START# *48FC9D5E0310_48FC9CD002FE_impl*
 Result := (f_ChangeCount > 0);
//#UC END# *48FC9D5E0310_48FC9CD002FE_impl*
end;//_l3LockedChangePrim_.IsChanging

procedure _l3LockedChangePrim_.Changing;
//#UC START# *4A5CBFFE0157_48FC9CD002FE_var*
//#UC END# *4A5CBFFE0157_48FC9CD002FE_var*
begin
//#UC START# *4A5CBFFE0157_48FC9CD002FE_impl*
 Inc(f_ChangeCount);
 if (f_ChangeCount = 1) then
  FireChanging;
//#UC END# *4A5CBFFE0157_48FC9CD002FE_impl*
end;//_l3LockedChangePrim_.Changing

procedure _l3LockedChangePrim_.Changed;
//#UC START# *4A5CC00B03D5_48FC9CD002FE_var*
//#UC END# *4A5CC00B03D5_48FC9CD002FE_var*
begin
//#UC START# *4A5CC00B03D5_48FC9CD002FE_impl*
 if (f_ChangeCount <= 0) then //это работает когда в скобках Changing/_Changed на визуалке подменили дерево
  f_ChangeCount := 1;
 Dec(f_ChangeCount);
 if (f_ChangeCount = 0) then
  FireChanged;
//#UC END# *4A5CC00B03D5_48FC9CD002FE_impl*
end;//_l3LockedChangePrim_.Changed

{$EndIf l3LockedChangePrim_imp}
