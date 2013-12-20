{$IfNDef afwSettingChanged_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "AFW"
// Автор: Морозов М.А.
// Модуль: "w:/common/components/gui/Garant/AFW/implementation/afwSettingChanged.imp.pas"
// Начат: 06.12.2007
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi::AFW::afwMixIns::afwSettingChanged
//
// Примесь, реализующая IafwSettingListener.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define afwSettingChanged_imp}
 _afwSettingChanged_ = {mixin} class(_afwSettingChanged_Parent_, IafwSettingListener)
  {* Примесь, реализующая IafwSettingListener. }
 protected
 // realized methods
   function Changed(const aSettingId: TafwSettingId): Boolean;
     {* настройки изменились. }
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure InitFields; override;
 protected
 // protected methods
   function SettingChanged(const aSettingId: TafwSettingId): Boolean; virtual;
 end;//_afwSettingChanged_

{$Else afwSettingChanged_imp}

// start class _afwSettingChanged_

function _afwSettingChanged_.SettingChanged(const aSettingId: TafwSettingId): Boolean;
//#UC START# *47EA863A035C_47EA85E7005B_var*
//#UC END# *47EA863A035C_47EA85E7005B_var*
begin
//#UC START# *47EA863A035C_47EA85E7005B_impl*
 Result := False;
//#UC END# *47EA863A035C_47EA85E7005B_impl*
end;//_afwSettingChanged_.SettingChanged

function _afwSettingChanged_.Changed(const aSettingId: TafwSettingId): Boolean;
//#UC START# *475E8C33036C_47EA85E7005B_var*
//#UC END# *475E8C33036C_47EA85E7005B_var*
begin
//#UC START# *475E8C33036C_47EA85E7005B_impl*
 Result := SettingChanged(aSettingId);
//#UC END# *475E8C33036C_47EA85E7005B_impl*
end;//_afwSettingChanged_.Changed

procedure _afwSettingChanged_.Cleanup;
//#UC START# *479731C50290_47EA85E7005B_var*
//#UC END# *479731C50290_47EA85E7005B_var*
begin
//#UC START# *479731C50290_47EA85E7005B_impl*
 if (afw.Application <> nil) and (afw.Application.Settings <> nil) then
  afw.Application.Settings.Notify.RemoveListener(IafwSettingListener(Self));
 inherited;
//#UC END# *479731C50290_47EA85E7005B_impl*
end;//_afwSettingChanged_.Cleanup

procedure _afwSettingChanged_.InitFields;
//#UC START# *47A042E100E2_47EA85E7005B_var*
//#UC END# *47A042E100E2_47EA85E7005B_var*
begin
//#UC START# *47A042E100E2_47EA85E7005B_impl*
 inherited;
 if (afw.Application <> nil) and (afw.Application.Settings <> nil) then
  afw.Application.Settings.Notify.AddListener(IafwSettingListener(Self));
//#UC END# *47A042E100E2_47EA85E7005B_impl*
end;//_afwSettingChanged_.InitFields

{$EndIf afwSettingChanged_imp}
