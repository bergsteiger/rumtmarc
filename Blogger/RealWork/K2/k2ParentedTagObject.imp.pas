{$IfNDef k2ParentedTagObject_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2ParentedTagObject.imp.pas"
// Начат: 08.02.2008 16:27
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi::K2::k2CoreMixins::k2ParentedTagObject
//
// Тег, имещий ссылку на родителя.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define k2ParentedTagObject_imp}
 _k2ParentedTagObject_ = {mixin} class(_k2ParentedTagObject_Parent_)
  {* Тег, имещий ссылку на родителя. }
 private
 // private fields
   f_Parent : Pointer;
 protected
 // property methods
   function pm_GetParent: Ik2Tag;
   procedure pm_SetParent(const aValue: Ik2Tag);
 protected
 // overridden property methods
   function pm_GetTagOwner: Ik2Tag; override;
   procedure pm_SetTagOwner(const aValue: Ik2Tag); override;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   function GetOwner: TPersistent; override;
   procedure DoSetOwner(Value: TObject); override;
     {* метод для установки "владельца" объекта. Для перекрытия в потомках. }
 protected
 // protected properties
   property Parent: Ik2Tag
     read pm_GetParent
     write pm_SetParent;
 end;//_k2ParentedTagObject_

{$Else k2ParentedTagObject_imp}

// start class _k2ParentedTagObject_

function _k2ParentedTagObject_.pm_GetParent: Ik2Tag;
//#UC START# *49A521CB02A6_47AC58810008get_var*
//#UC END# *49A521CB02A6_47AC58810008get_var*
begin
//#UC START# *49A521CB02A6_47AC58810008get_impl*
 Result := Ik2Tag(f_Parent);
//#UC END# *49A521CB02A6_47AC58810008get_impl*
end;//_k2ParentedTagObject_.pm_GetParent

procedure _k2ParentedTagObject_.pm_SetParent(const aValue: Ik2Tag);
//#UC START# *49A521CB02A6_47AC58810008set_var*
//#UC END# *49A521CB02A6_47AC58810008set_var*
begin
//#UC START# *49A521CB02A6_47AC58810008set_impl*
 f_Parent := Pointer(aValue);
//#UC END# *49A521CB02A6_47AC58810008set_impl*
end;//_k2ParentedTagObject_.pm_SetParent

procedure _k2ParentedTagObject_.Cleanup;
//#UC START# *479731C50290_47AC58810008_var*
//#UC END# *479731C50290_47AC58810008_var*
begin
//#UC START# *479731C50290_47AC58810008_impl*
 Parent := nil;
 inherited;
//#UC END# *479731C50290_47AC58810008_impl*
end;//_k2ParentedTagObject_.Cleanup

function _k2ParentedTagObject_.GetOwner: TPersistent;
//#UC START# *480DD1890221_47AC58810008_var*
//#UC END# *480DD1890221_47AC58810008_var*
begin
//#UC START# *480DD1890221_47AC58810008_impl*
 if (f_Parent = nil) then
  Result := nil
 else
  Result := Ik2Tag(f_Parent).AsObject As TPersistent;
//#UC END# *480DD1890221_47AC58810008_impl*
end;//_k2ParentedTagObject_.GetOwner

procedure _k2ParentedTagObject_.DoSetOwner(Value: TObject);
//#UC START# *4A60A2CF0329_47AC58810008_var*
var
 l_TagWrap : Ik2Tag;
//#UC END# *4A60A2CF0329_47AC58810008_var*
begin
//#UC START# *4A60A2CF0329_47AC58810008_impl*
 if (Value = nil) then
  Parent := nil
 else
 if Value.GetInterface(Ik2Tag, l_TagWrap) then
  try
   Parent := l_TagWrap;
  finally
   l_TagWrap := nil;
  end//try..finally
 else
  Parent := nil;
 inherited; 
//#UC END# *4A60A2CF0329_47AC58810008_impl*
end;//_k2ParentedTagObject_.DoSetOwner

function _k2ParentedTagObject_.pm_GetTagOwner: Ik2Tag;
//#UC START# *4A60A3E20182_47AC58810008get_var*
//#UC END# *4A60A3E20182_47AC58810008get_var*
begin
//#UC START# *4A60A3E20182_47AC58810008get_impl*
 if (f_Parent = nil) then
  Result := k2NullTag
 else
  Result := Ik2Tag(f_Parent);
//#UC END# *4A60A3E20182_47AC58810008get_impl*
end;//_k2ParentedTagObject_.pm_GetTagOwner

procedure _k2ParentedTagObject_.pm_SetTagOwner(const aValue: Ik2Tag);
//#UC START# *4A60A3E20182_47AC58810008set_var*
//#UC END# *4A60A3E20182_47AC58810008set_var*
begin
//#UC START# *4A60A3E20182_47AC58810008set_impl*
 Parent := aValue;
 inherited;
//#UC END# *4A60A3E20182_47AC58810008set_impl*
end;//_k2ParentedTagObject_.pm_SetTagOwner

{$EndIf k2ParentedTagObject_imp}
