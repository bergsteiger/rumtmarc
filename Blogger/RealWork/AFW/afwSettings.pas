unit afwSettings;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "AFW"
// Модуль: "w:/common/components/gui/Garant/AFW/afwSettings.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::AFW::afwSettings::TafwSettings
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\AFW\afwDefine.inc}

interface

uses
  afwInterfaces,
  IafwSettingListenerPtrList,
  IafwSettingsReplaceListenerPtrList,
  afwSettingsPrimPrim,
  afwSettingsImplPrimPrim
  ;

type
 TafwSettings = class(TafwSettingsPrimPrim, IafwSettings, IafwSettingsNotify)
 private
 // private fields
   f_State : TafwSettingsState;
   f_SettingListeners : TIafwSettingListenerPtrList;
   f_ReplaceListeners : TIafwSettingsReplaceListenerPtrList;
 protected
 // realized methods
   function Clone(const aConf: IUnknown): IafwSettings;
   procedure AddListener(const aListener: IafwSettingListener); overload; 
   procedure RemoveListener(const aListener: IafwSettingListener); overload; 
   procedure AddListener(const aListener: IafwSettingsReplaceListener); overload; 
   procedure RemoveListener(const aListener: IafwSettingsReplaceListener); overload; 
   function pm_GetNotify: IafwSettingsNotify;
   function pm_GetState: TafwSettingsState;
   procedure pm_SetState(aValue: TafwSettingsState);
   function LoadDouble(const aSettingId: TafwSettingId;
    aDefault: Double = 0;
    aRestoreDefault: Boolean = False): Double;
   procedure SaveDouble(const aSettingId: TafwSettingId;
    aValue: Double;
    aDefault: Double = 0;
    aSetAsDefault: Boolean = False);
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure InitFields; override;
   procedure NotifySettingChanged(const aSettingID: TafwSettingId); override;
 public
 // public methods
   class function Make(const aSettingsImpl: IafwSettingsImpl): IafwSettings; reintroduce;
     {* Сигнатура фабрики TafwSettings.Make }
 end;//TafwSettings

implementation

uses
  SysUtils
  ;

// start class TafwSettings

class function TafwSettings.Make(const aSettingsImpl: IafwSettingsImpl): IafwSettings;
var
 l_Inst : TafwSettings;
begin
 l_Inst := Create(aSettingsImpl);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function TafwSettings.Clone(const aConf: IUnknown): IafwSettings;
//#UC START# *473D9F0F033A_4F6C957F01E7_var*
//#UC END# *473D9F0F033A_4F6C957F01E7_var*
begin
//#UC START# *473D9F0F033A_4F6C957F01E7_impl*
 Result := Self;
//#UC END# *473D9F0F033A_4F6C957F01E7_impl*
end;//TafwSettings.Clone

procedure TafwSettings.AddListener(const aListener: IafwSettingListener);
//#UC START# *475E8E410197_4F6C957F01E7_var*
//#UC END# *475E8E410197_4F6C957F01E7_var*
begin
//#UC START# *475E8E410197_4F6C957F01E7_impl*
 if (f_SettingListeners = nil) then
  f_SettingListeners := TIafwSettingListenerPtrList.Make;
 if (f_SettingListeners.IndexOf(aListener) = -1) then
  f_SettingListeners.Add(aListener);
//#UC END# *475E8E410197_4F6C957F01E7_impl*
end;//TafwSettings.AddListener

procedure TafwSettings.RemoveListener(const aListener: IafwSettingListener);
//#UC START# *475E8E4D03E4_4F6C957F01E7_var*
//#UC END# *475E8E4D03E4_4F6C957F01E7_var*
begin
//#UC START# *475E8E4D03E4_4F6C957F01E7_impl*
 if (f_SettingListeners <> nil) then
  f_SettingListeners.Remove(aListener);
//#UC END# *475E8E4D03E4_4F6C957F01E7_impl*
end;//TafwSettings.RemoveListener

procedure TafwSettings.AddListener(const aListener: IafwSettingsReplaceListener);
//#UC START# *475E8E5E0286_4F6C957F01E7_var*
//#UC END# *475E8E5E0286_4F6C957F01E7_var*
begin
//#UC START# *475E8E5E0286_4F6C957F01E7_impl*
 if (f_ReplaceListeners = nil) then
  f_ReplaceListeners := TIafwSettingsReplaceListenerPtrList.Make;
 if (f_ReplaceListeners.IndexOf(aListener) = -1) then
  f_ReplaceListeners.Add(aListener);
//#UC END# *475E8E5E0286_4F6C957F01E7_impl*
end;//TafwSettings.AddListener

procedure TafwSettings.RemoveListener(const aListener: IafwSettingsReplaceListener);
//#UC START# *475E8E7900A3_4F6C957F01E7_var*
//#UC END# *475E8E7900A3_4F6C957F01E7_var*
begin
//#UC START# *475E8E7900A3_4F6C957F01E7_impl*
 if f_ReplaceListeners <> nil then
  f_ReplaceListeners.Remove(aListener);
//#UC END# *475E8E7900A3_4F6C957F01E7_impl*
end;//TafwSettings.RemoveListener

function TafwSettings.pm_GetNotify: IafwSettingsNotify;
//#UC START# *475E8F5A0198_4F6C957F01E7get_var*
//#UC END# *475E8F5A0198_4F6C957F01E7get_var*
begin
//#UC START# *475E8F5A0198_4F6C957F01E7get_impl*
 Result := Self;
//#UC END# *475E8F5A0198_4F6C957F01E7get_impl*
end;//TafwSettings.pm_GetNotify

function TafwSettings.pm_GetState: TafwSettingsState;
//#UC START# *48896A7B0311_4F6C957F01E7get_var*
//#UC END# *48896A7B0311_4F6C957F01E7get_var*
begin
//#UC START# *48896A7B0311_4F6C957F01E7get_impl*
 Result := f_State;
//#UC END# *48896A7B0311_4F6C957F01E7get_impl*
end;//TafwSettings.pm_GetState

procedure TafwSettings.pm_SetState(aValue: TafwSettingsState);
//#UC START# *48896A7B0311_4F6C957F01E7set_var*
//#UC END# *48896A7B0311_4F6C957F01E7set_var*
begin
//#UC START# *48896A7B0311_4F6C957F01E7set_impl*
 f_State := aValue;
//#UC END# *48896A7B0311_4F6C957F01E7set_impl*
end;//TafwSettings.pm_SetState

function TafwSettings.LoadDouble(const aSettingId: TafwSettingId;
  aDefault: Double = 0;
  aRestoreDefault: Boolean = False): Double;
//#UC START# *4AB729980069_4F6C957F01E7_var*
//#UC END# *4AB729980069_4F6C957F01E7_var*
begin
//#UC START# *4AB729980069_4F6C957F01E7_impl*
 LoadParam(aSettingId, vtExtended, Result, aDefault, aRestoreDefault);
//#UC END# *4AB729980069_4F6C957F01E7_impl*
end;//TafwSettings.LoadDouble

procedure TafwSettings.SaveDouble(const aSettingId: TafwSettingId;
  aValue: Double;
  aDefault: Double = 0;
  aSetAsDefault: Boolean = False);
//#UC START# *4AB729A702A2_4F6C957F01E7_var*
//#UC END# *4AB729A702A2_4F6C957F01E7_var*
begin
//#UC START# *4AB729A702A2_4F6C957F01E7_impl*
 SaveParam(aSettingId, vtExtended, aValue, aDefault, aSetAsDefault);
//#UC END# *4AB729A702A2_4F6C957F01E7_impl*
end;//TafwSettings.SaveDouble

procedure TafwSettings.Cleanup;
//#UC START# *479731C50290_4F6C957F01E7_var*
//#UC END# *479731C50290_4F6C957F01E7_var*
begin
//#UC START# *479731C50290_4F6C957F01E7_impl*
 FreeAndNil(f_ReplaceListeners);
 FreeAndNil(f_SettingListeners);
 inherited;
//#UC END# *479731C50290_4F6C957F01E7_impl*
end;//TafwSettings.Cleanup

procedure TafwSettings.InitFields;
//#UC START# *47A042E100E2_4F6C957F01E7_var*
//#UC END# *47A042E100E2_4F6C957F01E7_var*
begin
//#UC START# *47A042E100E2_4F6C957F01E7_impl*
 inherited;
 f_State := afw_ssNone;
//#UC END# *47A042E100E2_4F6C957F01E7_impl*
end;//TafwSettings.InitFields

procedure TafwSettings.NotifySettingChanged(const aSettingID: TafwSettingId);
//#UC START# *4AD5979E01BB_4F6C957F01E7_var*
var
 l_Index : Integer;
//#UC END# *4AD5979E01BB_4F6C957F01E7_var*
begin
//#UC START# *4AD5979E01BB_4F6C957F01E7_impl*
 inherited;
 if (f_SettingListeners <> nil) then
  for l_Index := 0 to Pred(f_SettingListeners.Count) do
   f_SettingListeners[l_Index].Changed(aSettingId);
//#UC END# *4AD5979E01BB_4F6C957F01E7_impl*
end;//TafwSettings.NotifySettingChanged

end.