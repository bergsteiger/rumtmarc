{$IfNDef l3OwnedObject_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "L3"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/L3/l3OwnedObject.imp.pas"
// Начат: 17.07.2009 20:59
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Low Level::L3::Стандартные примеси::l3OwnedObject
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define l3OwnedObject_imp}
 _l3OwnedObject_ = {mixin} class(_l3OwnedObject_Parent_)
 protected
 // protected methods
   procedure DoSetOwner(Value: TObject); virtual;
     {* метод для установки "владельца" объекта. Для перекрытия в потомках. }
 end;//_l3OwnedObject_

{$Else l3OwnedObject_imp}

// start class _l3OwnedObject_

procedure _l3OwnedObject_.DoSetOwner(Value: TObject);
//#UC START# *4A60A2CF0329_4A60A2120210_var*
//#UC END# *4A60A2CF0329_4A60A2120210_var*
begin
//#UC START# *4A60A2CF0329_4A60A2120210_impl*
//#UC END# *4A60A2CF0329_4A60A2120210_impl*
end;//_l3OwnedObject_.DoSetOwner

{$EndIf l3OwnedObject_imp}
