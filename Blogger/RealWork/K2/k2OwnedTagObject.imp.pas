{$IfNDef k2OwnedTagObject_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2OwnedTagObject.imp.pas"
// Начат: 02.12.2005 17:16
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi::K2::k2CoreMixins::k2OwnedTagObject
//
// Тег имеющий ссылку на владельца
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define k2OwnedTagObject_imp}
 _k2OwnedTagObject_ = {mixin} class(_k2OwnedTagObject_Parent_)
  {* Тег имеющий ссылку на владельца }
 private
 // private fields
   f_Owner : TObject;
 protected
 // overridden property methods
   function pm_GetTagOwner: Ik2Tag; override;
   procedure pm_SetTagOwner(const aValue: Ik2Tag); override;
 protected
 // overridden protected methods
   procedure BeforeAddToCache; override;
     {* функция, вызываемая перед добавлением объекта в кэш повторного использования. }
   function GetOwner: TPersistent; override;
   procedure DoSetOwner(Value: TObject); override;
     {* метод для установки "владельца" объекта. Для перекрытия в потомках. }
 end;//_k2OwnedTagObject_

{$Else k2OwnedTagObject_imp}

// start class _k2OwnedTagObject_

procedure _k2OwnedTagObject_.BeforeAddToCache;
//#UC START# *479F2B3302C1_47AC6AEE0094_var*
//#UC END# *479F2B3302C1_47AC6AEE0094_var*
begin
//#UC START# *479F2B3302C1_47AC6AEE0094_impl*
 inherited;
 f_Owner := nil;
//#UC END# *479F2B3302C1_47AC6AEE0094_impl*
end;//_k2OwnedTagObject_.BeforeAddToCache

function _k2OwnedTagObject_.GetOwner: TPersistent;
//#UC START# *480DD1890221_47AC6AEE0094_var*
//#UC END# *480DD1890221_47AC6AEE0094_var*
begin
//#UC START# *480DD1890221_47AC6AEE0094_impl*
 if (f_Owner = nil) then
  Result := inherited GetOwner
 else
  Result := f_Owner As TPersistent;
//#UC END# *480DD1890221_47AC6AEE0094_impl*
end;//_k2OwnedTagObject_.GetOwner

procedure _k2OwnedTagObject_.DoSetOwner(Value: TObject);
//#UC START# *4A60A2CF0329_47AC6AEE0094_var*
//#UC END# *4A60A2CF0329_47AC6AEE0094_var*
begin
//#UC START# *4A60A2CF0329_47AC6AEE0094_impl*
 f_Owner := Value;
//#UC END# *4A60A2CF0329_47AC6AEE0094_impl*
end;//_k2OwnedTagObject_.DoSetOwner

function _k2OwnedTagObject_.pm_GetTagOwner: Ik2Tag;
//#UC START# *4A60A3E20182_47AC6AEE0094get_var*
//#UC END# *4A60A3E20182_47AC6AEE0094get_var*
begin
//#UC START# *4A60A3E20182_47AC6AEE0094get_impl*
 Result := inherited pm_GetTagOwner;
 if not Result.IsValid then
  Result := Tk2TypeTable(TagType.TypeTable).ObjToTag(f_Owner);
  //Result := k2Tag(f_Owner);
 // - вернул строчку выше - т.к. оказалось, что Owner пока нужен - например для отрисовки
 //   или для возможности достучаться до редактора. Когда полностью перейдем на View,
 //   то это можно будет убрать.
 // - нечего к контейнеру документа стучаться как к тегу
//#UC END# *4A60A3E20182_47AC6AEE0094get_impl*
end;//_k2OwnedTagObject_.pm_GetTagOwner

procedure _k2OwnedTagObject_.pm_SetTagOwner(const aValue: Ik2Tag);
//#UC START# *4A60A3E20182_47AC6AEE0094set_var*
//#UC END# *4A60A3E20182_47AC6AEE0094set_var*
begin
//#UC START# *4A60A3E20182_47AC6AEE0094set_impl*
 if (aValue = nil) then
  f_Owner := nil
 else
 begin
  f_Owner := aValue.AsObject;
  if not Supports(f_Owner, Ik2Tag) then
   Exit; 
 end;//aValue = nil
 inherited;
//#UC END# *4A60A3E20182_47AC6AEE0094set_impl*
end;//_k2OwnedTagObject_.pm_SetTagOwner

{$EndIf k2OwnedTagObject_imp}
