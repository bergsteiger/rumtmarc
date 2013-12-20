unit PrimStyleEditorFont_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Settings/Forms/PrimStyleEditorFont_Form.pas"
// Начат: 02.10.2009 22:12
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Основные прецеденты::Settings::View::Settings::PrimStyleEditorFont
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3Interfaces,
  evStyleInterface
  {$If not defined(NoVCM)}
  ,
  vcmEntityForm
  {$IfEnd} //not NoVCM
  ,
  ConfigInterfaces,
  Settings_Strange_Controls,
  Classes,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmBase {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TPrimStyleEditorFontForm = {form} class(TvcmEntityForm)
 protected
  procedure InitEntities; override;
 protected
 // realized methods
   procedure StyleEditor_RestoreStyleTable_Execute(aRestoreDefault: Boolean);
   procedure StyleEditor_RestoreStyleTable(const aParams: IvcmExecuteParams);
   procedure StyleEditor_SaveStyleTable_Execute(aSaveAsDefault: Boolean);
   procedure StyleEditor_SaveStyleTable(const aParams: IvcmExecuteParams);
   procedure StyleEditor_SetNewContent_Execute(aStyleID: Integer);
   procedure StyleEditor_SetNewContent(const aParams: IvcmExecuteParams);
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 public
 // overridden public methods
   constructor Create(AOwner: TComponent); override;
 protected
 // protected fields
   f_SettingsInfo : InsStyleTableSettingsInfo;
   f_StyleInterface : TevStyleInterface;
   f_LastKnowGoodFontSizeComboBoxText : AnsiString;
 protected
 // protected methods
   procedure SendToAggregateReloadStylesTreeNotify(const aStyleName: Il3CString); virtual; abstract;
   procedure SendToAggregateReloadStyleTableNotify(aModified: Boolean = true); virtual; abstract;
   procedure DisableUpdate; virtual; abstract;
   procedure EnableUpdate; virtual; abstract;
   procedure LoadCurrentStateFromStyleInterface(aStyleID: Integer); virtual; abstract;
 public
 // public methods
   class function Make(const aData: InsStyleTableSettingsInfo;
     const aParams : IvcmMakeParams = nil;
     aZoneType     : TvcmZoneType = vcm_ztAny;
     aUserType     : TvcmEffectiveUserType = 0;
     aDataSource   : IvcmFormDataSource = nil): IvcmEntityForm; reintroduce;
 end;//TPrimStyleEditorFontForm

 TvcmEntityFormRef = TPrimStyleEditorFontForm;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  nsTypes,
  StdRes {a},
  l3Base {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TPrimStyleEditorFontForm

class function TPrimStyleEditorFontForm.Make(const aData: InsStyleTableSettingsInfo;
  const aParams : IvcmMakeParams = nil;
  aZoneType     : TvcmZoneType = vcm_ztAny;
  aUserType     : TvcmEffectiveUserType = 0;
  aDataSource   : IvcmFormDataSource = nil): IvcmEntityForm;

 procedure AfterCreate(aForm : TPrimStyleEditorFontForm);
 begin
  with aForm do
  begin
//#UC START# *4AE06B9B01B9_4AC642480314_impl*
   f_SettingsInfo := aData;
//#UC END# *4AE06B9B01B9_4AC642480314_impl*
  end;//with aForm
 end;

var
 l_AC : TvcmInitProc;
 l_ACHack : Pointer absolute l_AC;
begin
 l_AC := l3LocalStub(@AfterCreate);
 try
  Result := inherited Make(aParams, aZoneType, aUserType, nil, aDataSource, vcm_utAny, l_AC);
 finally
  l3FreeLocalStub(l_ACHack);
 end;//try..finally
end;

procedure TPrimStyleEditorFontForm.StyleEditor_RestoreStyleTable_Execute(aRestoreDefault: Boolean);
//#UC START# *4AE8696C001B_4AC642480314exec_var*
//#UC END# *4AE8696C001B_4AC642480314exec_var*
begin
//#UC START# *4AE8696C001B_4AC642480314exec_impl*
 DisableUpdate;
 try
  f_SettingsInfo.Load(aRestoreDefault);
  //
  SendToAggregateReloadStylesTreeNotify(nsCStr(f_StyleInterface.Name));
  SendToAggregateReloadStyleTableNotify(False);
 finally
  EnableUpdate;
 end;
//#UC END# *4AE8696C001B_4AC642480314exec_impl*
end;//TPrimStyleEditorFontForm.StyleEditor_RestoreStyleTable_Execute

procedure TPrimStyleEditorFontForm.StyleEditor_RestoreStyleTable(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IStyleEditor_RestoreStyleTable_Params) do
  StyleEditor_RestoreStyleTable_Execute(RestoreDefault);
end;

procedure TPrimStyleEditorFontForm.StyleEditor_SaveStyleTable_Execute(aSaveAsDefault: Boolean);
//#UC START# *4AE869C10245_4AC642480314exec_var*
//#UC END# *4AE869C10245_4AC642480314exec_var*
begin
//#UC START# *4AE869C10245_4AC642480314exec_impl*
 f_SettingsInfo.Save(aSaveAsDefault);
//#UC END# *4AE869C10245_4AC642480314exec_impl*
end;//TPrimStyleEditorFontForm.StyleEditor_SaveStyleTable_Execute

procedure TPrimStyleEditorFontForm.StyleEditor_SaveStyleTable(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IStyleEditor_SaveStyleTable_Params) do
  StyleEditor_SaveStyleTable_Execute(SaveAsDefault);
end;

procedure TPrimStyleEditorFontForm.StyleEditor_SetNewContent_Execute(aStyleID: Integer);
//#UC START# *4AEAE333001D_4AC642480314exec_var*
//#UC END# *4AEAE333001D_4AC642480314exec_var*
begin
//#UC START# *4AEAE333001D_4AC642480314exec_impl*
 LoadCurrentStateFromStyleInterface(aStyleID);
//#UC END# *4AEAE333001D_4AC642480314exec_impl*
end;//TPrimStyleEditorFontForm.StyleEditor_SetNewContent_Execute

procedure TPrimStyleEditorFontForm.StyleEditor_SetNewContent(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IStyleEditor_SetNewContent_Params) do
  StyleEditor_SetNewContent_Execute(StyleID);
end;

procedure TPrimStyleEditorFontForm.Cleanup;
//#UC START# *479731C50290_4AC642480314_var*
//#UC END# *479731C50290_4AC642480314_var*
begin
//#UC START# *479731C50290_4AC642480314_impl*
 f_SettingsInfo := nil;
 inherited;
//#UC END# *479731C50290_4AC642480314_impl*
end;//TPrimStyleEditorFontForm.Cleanup

constructor TPrimStyleEditorFontForm.Create(AOwner: TComponent);
//#UC START# *47D1602000C6_4AC642480314_var*
//#UC END# *47D1602000C6_4AC642480314_var*
begin
//#UC START# *47D1602000C6_4AC642480314_impl*
 inherited;
 //
 f_LastKnowGoodFontSizeComboBoxText := '10';
 f_StyleInterface := TevStyleInterface.Make;
//#UC END# *47D1602000C6_4AC642480314_impl*
end;//TPrimStyleEditorFontForm.Create

procedure TPrimStyleEditorFontForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_StyleEditor, nil);
  PublishOpWithResult(en_StyleEditor, op_RestoreStyleTable, StyleEditor_RestoreStyleTable, nil, nil);
  PublishOpWithResult(en_StyleEditor, op_SaveStyleTable, StyleEditor_SaveStyleTable, nil, nil);
  PublishOpWithResult(en_StyleEditor, op_SetNewContent, StyleEditor_SetNewContent, nil, nil);
 end;//with Entities.Entities
end;

{$IfEnd} //not Admin AND not Monitorings

end.