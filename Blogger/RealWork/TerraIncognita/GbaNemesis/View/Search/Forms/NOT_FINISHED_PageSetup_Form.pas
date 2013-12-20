unit NOT_FINISHED_PageSetup_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View$For F1 and Monitorings"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/NOT_FINISHED_PageSetup_Form.pas"
// Начат: 15.09.2009 16:20
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::CommonSearch::PageSetup
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin)}
uses
  PrimPageSetupOptions_Form,
  vtGroupBox
  {$If defined(Nemesis)}
  ,
  nscPageControl
  {$IfEnd} //Nemesis
  ,
  Classes {a},
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin

{$If not defined(Admin)}
type
  Ten_PageSetup = {final form} class(TvcmEntityFormRef)
  Entities : TvcmEntities;
  PreviewGroupBox: TvtGroupBox;
  SettingsPageControl: TnscPageControl;
  protected
  // realized methods
   procedure File_Save_Test(const aParams: IvcmTestParamsPrim);
     {* Сохранить }
   procedure File_Save_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Сохранить }
   procedure Result_Ok_Test(const aParams: IvcmTestParamsPrim);
     {* OK }
   procedure Result_Ok_GetState(var State: TvcmOperationStateIndex);
     {* OK }
   procedure Result_Ok_Execute(const aParams: IvcmExecuteParamsPrim);
     {* OK }
   procedure Result_Cancel_Test(const aParams: IvcmTestParamsPrim);
     {* Отмена }
   procedure Result_Cancel_GetState(var State: TvcmOperationStateIndex);
     {* Отмена }
   procedure Result_Cancel_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Отмена }
   procedure ReadPageFormats; override;
   procedure SetColontitulComboBoxItemIndex(aIndex: Integer); override;
   procedure ToGUIMargins; override;
   procedure Save(SaveAsDefault: Boolean = False); override;
   procedure SetPageFormat(aOrientation: Integer); override;
   procedure MacroAdd(const aString: AnsiString); override;
   procedure ToGUIColontituls; override;
  end;//Ten_PageSetup

  TPageSetupForm = Ten_PageSetup;
{$IfEnd} //not Admin

implementation

{$R *.DFM}

{$If not defined(Admin)}

// start class Ten_PageSetup

procedure Ten_PageSetup.File_Save_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *495235F401C0_4AAF86650309test_var*
//#UC END# *495235F401C0_4AAF86650309test_var*
begin
//#UC START# *495235F401C0_4AAF86650309test_impl*
 !!! Needs to be implemented !!!
//#UC END# *495235F401C0_4AAF86650309test_impl*
end;//Ten_PageSetup.File_Save_Test

procedure Ten_PageSetup.File_Save_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *495235F401C0_4AAF86650309exec_var*
//#UC END# *495235F401C0_4AAF86650309exec_var*
begin
//#UC START# *495235F401C0_4AAF86650309exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *495235F401C0_4AAF86650309exec_impl*
end;//Ten_PageSetup.File_Save_Execute

procedure Ten_PageSetup.Result_Ok_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4A97EBE702F8_4AAF86650309test_var*
//#UC END# *4A97EBE702F8_4AAF86650309test_var*
begin
//#UC START# *4A97EBE702F8_4AAF86650309test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4A97EBE702F8_4AAF86650309test_impl*
end;//Ten_PageSetup.Result_Ok_Test

procedure Ten_PageSetup.Result_Ok_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4A97EBE702F8_4AAF86650309getstate_var*
//#UC END# *4A97EBE702F8_4AAF86650309getstate_var*
begin
//#UC START# *4A97EBE702F8_4AAF86650309getstate_impl*
 !!! Needs to be implemented !!!
//#UC END# *4A97EBE702F8_4AAF86650309getstate_impl*
end;//Ten_PageSetup.Result_Ok_GetState

procedure Ten_PageSetup.Result_Ok_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4A97EBE702F8_4AAF86650309exec_var*
//#UC END# *4A97EBE702F8_4AAF86650309exec_var*
begin
//#UC START# *4A97EBE702F8_4AAF86650309exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4A97EBE702F8_4AAF86650309exec_impl*
end;//Ten_PageSetup.Result_Ok_Execute

procedure Ten_PageSetup.Result_Cancel_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4AC5D61E0284_4AAF86650309test_var*
//#UC END# *4AC5D61E0284_4AAF86650309test_var*
begin
//#UC START# *4AC5D61E0284_4AAF86650309test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AC5D61E0284_4AAF86650309test_impl*
end;//Ten_PageSetup.Result_Cancel_Test

procedure Ten_PageSetup.Result_Cancel_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4AC5D61E0284_4AAF86650309getstate_var*
//#UC END# *4AC5D61E0284_4AAF86650309getstate_var*
begin
//#UC START# *4AC5D61E0284_4AAF86650309getstate_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AC5D61E0284_4AAF86650309getstate_impl*
end;//Ten_PageSetup.Result_Cancel_GetState

procedure Ten_PageSetup.Result_Cancel_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AC5D61E0284_4AAF86650309exec_var*
//#UC END# *4AC5D61E0284_4AAF86650309exec_var*
begin
//#UC START# *4AC5D61E0284_4AAF86650309exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AC5D61E0284_4AAF86650309exec_impl*
end;//Ten_PageSetup.Result_Cancel_Execute

procedure Ten_PageSetup.ReadPageFormats;
//#UC START# *4AC608780164_4AAF86650309_var*
//#UC END# *4AC608780164_4AAF86650309_var*
begin
//#UC START# *4AC608780164_4AAF86650309_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AC608780164_4AAF86650309_impl*
end;//Ten_PageSetup.ReadPageFormats

procedure Ten_PageSetup.SetColontitulComboBoxItemIndex(aIndex: Integer);
//#UC START# *4AC6089603D4_4AAF86650309_var*
//#UC END# *4AC6089603D4_4AAF86650309_var*
begin
//#UC START# *4AC6089603D4_4AAF86650309_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AC6089603D4_4AAF86650309_impl*
end;//Ten_PageSetup.SetColontitulComboBoxItemIndex

procedure Ten_PageSetup.ToGUIMargins;
//#UC START# *4AC608AC03C7_4AAF86650309_var*
//#UC END# *4AC608AC03C7_4AAF86650309_var*
begin
//#UC START# *4AC608AC03C7_4AAF86650309_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AC608AC03C7_4AAF86650309_impl*
end;//Ten_PageSetup.ToGUIMargins

procedure Ten_PageSetup.Save(SaveAsDefault: Boolean = False);
//#UC START# *4C88D996000B_4AAF86650309_var*
//#UC END# *4C88D996000B_4AAF86650309_var*
begin
//#UC START# *4C88D996000B_4AAF86650309_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C88D996000B_4AAF86650309_impl*
end;//Ten_PageSetup.Save

procedure Ten_PageSetup.SetPageFormat(aOrientation: Integer);
//#UC START# *4C88D9B60023_4AAF86650309_var*
//#UC END# *4C88D9B60023_4AAF86650309_var*
begin
//#UC START# *4C88D9B60023_4AAF86650309_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C88D9B60023_4AAF86650309_impl*
end;//Ten_PageSetup.SetPageFormat

procedure Ten_PageSetup.MacroAdd(const aString: AnsiString);
//#UC START# *4C88D9D30306_4AAF86650309_var*
//#UC END# *4C88D9D30306_4AAF86650309_var*
begin
//#UC START# *4C88D9D30306_4AAF86650309_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C88D9D30306_4AAF86650309_impl*
end;//Ten_PageSetup.MacroAdd

procedure Ten_PageSetup.ToGUIColontituls;
//#UC START# *4C88DCA000DD_4AAF86650309_var*
//#UC END# *4C88DCA000DD_4AAF86650309_var*
begin
//#UC START# *4C88DCA000DD_4AAF86650309_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C88DCA000DD_4AAF86650309_impl*
end;//Ten_PageSetup.ToGUIColontituls

{$IfEnd} //not Admin

end.