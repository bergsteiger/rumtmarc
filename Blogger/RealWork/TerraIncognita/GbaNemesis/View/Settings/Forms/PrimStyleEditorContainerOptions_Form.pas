unit PrimStyleEditorContainerOptions_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Settings/Forms/PrimStyleEditorContainerOptions_Form.pas"
// Начат: 30.07.2010 15:06
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMContainer::Class>> F1 Основные прецеденты::Settings::View::Settings::PrimStyleEditorContainerOptions
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
  OfficeLike_Result_Controls,
  PrimStyleEditorContainer_Form,
  Search_Strange_Controls,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TPrimStyleEditorContainerOptionsForm = {form} class(TPrimStyleEditorContainerForm)
 protected
  procedure InitEntities; override;
 protected
 // realized methods
   procedure Result_Cancel_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Отмена }
   procedure Result_Ok_Test(const aParams: IvcmTestParamsPrim);
     {* OK }
   procedure Result_Ok_Execute(const aParams: IvcmExecuteParamsPrim);
     {* OK }
   procedure Result_Restore_Test(const aParams: IvcmTestParamsPrim);
   procedure Result_Restore_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Result_SaveAsDefault_Test(const aParams: IvcmTestParamsPrim);
   procedure Result_SaveAsDefault_Execute(const aParams: IvcmExecuteParamsPrim);
 end;//TPrimStyleEditorContainerOptionsForm

 TvcmContainerFormRef = TPrimStyleEditorContainerOptionsForm;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Controls,
  Settings_Strange_Controls,
  StdRes {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TPrimStyleEditorContainerOptionsForm

procedure TPrimStyleEditorContainerOptionsForm.Result_Cancel_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4A8AD46D0226_4C52B21801B6exec_var*
//#UC END# *4A8AD46D0226_4C52B21801B6exec_var*
begin
//#UC START# *4A8AD46D0226_4C52B21801B6exec_impl*
 ModalResult := mrCancel;
//#UC END# *4A8AD46D0226_4C52B21801B6exec_impl*
end;//TPrimStyleEditorContainerOptionsForm.Result_Cancel_Execute

procedure TPrimStyleEditorContainerOptionsForm.Result_Ok_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4A97EBE702F8_4C52B21801B6test_var*
//#UC END# *4A97EBE702F8_4C52B21801B6test_var*
begin
//#UC START# *4A97EBE702F8_4C52B21801B6test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := f_SettingsInfo.Modified;
//#UC END# *4A97EBE702F8_4C52B21801B6test_impl*
end;//TPrimStyleEditorContainerOptionsForm.Result_Ok_Test

procedure TPrimStyleEditorContainerOptionsForm.Result_Ok_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4A97EBE702F8_4C52B21801B6exec_var*
//#UC END# *4A97EBE702F8_4C52B21801B6exec_var*
begin
//#UC START# *4A97EBE702F8_4C52B21801B6exec_impl*
 Op_StyleEditor_SaveStyleTable.Call(Aggregate, false);
 ModalResult := mrOk;
//#UC END# *4A97EBE702F8_4C52B21801B6exec_impl*
end;//TPrimStyleEditorContainerOptionsForm.Result_Ok_Execute

procedure TPrimStyleEditorContainerOptionsForm.Result_Restore_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C52B34E0125_4C52B21801B6test_var*
//#UC END# *4C52B34E0125_4C52B21801B6test_var*
begin
//#UC START# *4C52B34E0125_4C52B21801B6test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := f_SettingsInfo.Modified or f_SettingsInfo.IsDifferFromDefault;
//#UC END# *4C52B34E0125_4C52B21801B6test_impl*
end;//TPrimStyleEditorContainerOptionsForm.Result_Restore_Test

procedure TPrimStyleEditorContainerOptionsForm.Result_Restore_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C52B34E0125_4C52B21801B6exec_var*
//#UC END# *4C52B34E0125_4C52B21801B6exec_var*
begin
//#UC START# *4C52B34E0125_4C52B21801B6exec_impl*
 if not Ask(qr_RestoreDefaultValuesStyleTable) then
  Exit;
 Op_StyleEditor_RestoreStyleTable.Call(Aggregate, true);
//#UC END# *4C52B34E0125_4C52B21801B6exec_impl*
end;//TPrimStyleEditorContainerOptionsForm.Result_Restore_Execute

procedure TPrimStyleEditorContainerOptionsForm.Result_SaveAsDefault_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C52B36B01B3_4C52B21801B6test_var*
//#UC END# *4C52B36B01B3_4C52B21801B6test_var*
begin
//#UC START# *4C52B36B01B3_4C52B21801B6test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := not f_SettingsInfo.IsPredefined and
                                  (f_SettingsInfo.Modified or f_SettingsInfo.IsDifferFromDefault);
//#UC END# *4C52B36B01B3_4C52B21801B6test_impl*
end;//TPrimStyleEditorContainerOptionsForm.Result_SaveAsDefault_Test

procedure TPrimStyleEditorContainerOptionsForm.Result_SaveAsDefault_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C52B36B01B3_4C52B21801B6exec_var*
//#UC END# *4C52B36B01B3_4C52B21801B6exec_var*
begin
//#UC START# *4C52B36B01B3_4C52B21801B6exec_impl*
 if not Ask(qr_SaveAsDefaultValuesStyleTable) then
  Exit;
 Op_StyleEditor_SaveStyleTable.Call(Aggregate, true); 
//#UC END# *4C52B36B01B3_4C52B21801B6exec_impl*
end;//TPrimStyleEditorContainerOptionsForm.Result_SaveAsDefault_Execute

procedure TPrimStyleEditorContainerOptionsForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_Result, nil);
  PublishOp(en_Result, op_Cancel, Result_Cancel_Execute, nil, nil);
  ShowInToolbar(en_Result, op_Cancel, true);
  PublishOp(en_Result, op_Ok, Result_Ok_Execute, Result_Ok_Test, nil);
  ShowInToolbar(en_Result, op_Ok, true);
  PublishOp(en_Result, op_Restore, Result_Restore_Execute, Result_Restore_Test, nil);
  ShowInToolbar(en_Result, op_Restore, true);
  PublishOp(en_Result, op_SaveAsDefault, Result_SaveAsDefault_Execute, Result_SaveAsDefault_Test, nil);
  ShowInToolbar(en_Result, op_SaveAsDefault, true);
 end;//with Entities.Entities
end;

{$IfEnd} //not Admin AND not Monitorings

end.