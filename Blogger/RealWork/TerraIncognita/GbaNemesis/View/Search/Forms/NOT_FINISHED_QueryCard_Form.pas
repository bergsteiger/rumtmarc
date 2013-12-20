unit NOT_FINISHED_QueryCard_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View$For F1 and Monitorings"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/NOT_FINISHED_QueryCard_Form.pas"
// Начат: 10.09.2009 21:03
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::CommonSearch::QueryCard
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
  Search_FormDefinitions_Controls,
  PrimQueryCardOptions_Form,
  nsQueryInterfaces,
  evQueryCardEditor,
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
  TenQueryCard = {final form} class(TvcmEntityFormRef, QueryCardFormDef)
  Entities : TvcmEntities;
  Editor: TevQueryCardEditor;
  protected
  // realized methods
   procedure Edit_Delete_Test(const aParams: IvcmTestParamsPrim);
     {* Удалить }
   procedure Edit_Delete_GetState(var State: TvcmOperationStateIndex);
     {* Удалить }
   procedure Edit_Delete_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Удалить }
   procedure Edit_Copy_Test(const aParams: IvcmTestParamsPrim);
     {* Копировать }
   procedure Edit_Copy_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Копировать }
   procedure Edit_Cut_Test(const aParams: IvcmTestParamsPrim);
     {* Вырезать }
   procedure Edit_Cut_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Вырезать }
   procedure Edit_FindContext_Test(const aParams: IvcmTestParamsPrim);
     {* Поиск }
   procedure Edit_FindContext_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Поиск }
   procedure Edit_FindNext_Test(const aParams: IvcmTestParamsPrim);
     {* Найти далее }
   procedure Edit_FindNext_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Найти далее }
   procedure File_Save_Test(const aParams: IvcmTestParamsPrim);
     {* Сохранить }
   procedure File_Save_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Сохранить }
   procedure Edit_Undo_Test(const aParams: IvcmTestParamsPrim);
     {* Отмена }
   procedure Edit_Undo_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Отмена }
   procedure Edit_Redo_Test(const aParams: IvcmTestParamsPrim);
     {* Возврат }
   procedure Edit_Redo_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Возврат }
   procedure Edit_SelectAll_Test(const aParams: IvcmTestParamsPrim);
     {* Выделить всё }
   procedure Edit_SelectAll_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Выделить всё }
   procedure Edit_Deselect_Test(const aParams: IvcmTestParamsPrim);
     {* Снять выделение }
   procedure Edit_Deselect_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Снять выделение }
   procedure Edit_FindPrev_Test(const aParams: IvcmTestParamsPrim);
   procedure Edit_FindPrev_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure SubPanelSettings_ShowInfo_Test(const aParams: IvcmTestParamsPrim);
     {* Показывать блоки }
   procedure SubPanelSettings_ShowInfo_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Показывать блоки }
   procedure SaveConsultationCreditnails; override;
   procedure HandleException(anException: EqaException); override;
   procedure LoadConsultationCreditnails; override;
  end;//TenQueryCard

  TQueryCardForm = TenQueryCard;
{$IfEnd} //not Admin

implementation

{$R *.DFM}

{$If not defined(Admin)}
uses
  nsFixedHAFMacroReplacer,
  f1QueryDocumentContainer
  ;
{$IfEnd} //not Admin

{$If not defined(Admin)}

// start class TenQueryCard

procedure TenQueryCard.Edit_Delete_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *494F89C30197_4AA9393C0164test_var*
//#UC END# *494F89C30197_4AA9393C0164test_var*
begin
//#UC START# *494F89C30197_4AA9393C0164test_impl*
 !!! Needs to be implemented !!!
//#UC END# *494F89C30197_4AA9393C0164test_impl*
end;//TenQueryCard.Edit_Delete_Test

procedure TenQueryCard.Edit_Delete_GetState(var State: TvcmOperationStateIndex);
//#UC START# *494F89C30197_4AA9393C0164getstate_var*
//#UC END# *494F89C30197_4AA9393C0164getstate_var*
begin
//#UC START# *494F89C30197_4AA9393C0164getstate_impl*
 !!! Needs to be implemented !!!
//#UC END# *494F89C30197_4AA9393C0164getstate_impl*
end;//TenQueryCard.Edit_Delete_GetState

procedure TenQueryCard.Edit_Delete_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *494F89C30197_4AA9393C0164exec_var*
//#UC END# *494F89C30197_4AA9393C0164exec_var*
begin
//#UC START# *494F89C30197_4AA9393C0164exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *494F89C30197_4AA9393C0164exec_impl*
end;//TenQueryCard.Edit_Delete_Execute

procedure TenQueryCard.Edit_Copy_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4951284902BD_4AA9393C0164test_var*
//#UC END# *4951284902BD_4AA9393C0164test_var*
begin
//#UC START# *4951284902BD_4AA9393C0164test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4951284902BD_4AA9393C0164test_impl*
end;//TenQueryCard.Edit_Copy_Test

procedure TenQueryCard.Edit_Copy_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4951284902BD_4AA9393C0164exec_var*
//#UC END# *4951284902BD_4AA9393C0164exec_var*
begin
//#UC START# *4951284902BD_4AA9393C0164exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4951284902BD_4AA9393C0164exec_impl*
end;//TenQueryCard.Edit_Copy_Execute

procedure TenQueryCard.Edit_Cut_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4951285702E1_4AA9393C0164test_var*
//#UC END# *4951285702E1_4AA9393C0164test_var*
begin
//#UC START# *4951285702E1_4AA9393C0164test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4951285702E1_4AA9393C0164test_impl*
end;//TenQueryCard.Edit_Cut_Test

procedure TenQueryCard.Edit_Cut_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4951285702E1_4AA9393C0164exec_var*
//#UC END# *4951285702E1_4AA9393C0164exec_var*
begin
//#UC START# *4951285702E1_4AA9393C0164exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4951285702E1_4AA9393C0164exec_impl*
end;//TenQueryCard.Edit_Cut_Execute

procedure TenQueryCard.Edit_FindContext_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49512B5D0009_4AA9393C0164test_var*
//#UC END# *49512B5D0009_4AA9393C0164test_var*
begin
//#UC START# *49512B5D0009_4AA9393C0164test_impl*
 !!! Needs to be implemented !!!
//#UC END# *49512B5D0009_4AA9393C0164test_impl*
end;//TenQueryCard.Edit_FindContext_Test

procedure TenQueryCard.Edit_FindContext_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49512B5D0009_4AA9393C0164exec_var*
//#UC END# *49512B5D0009_4AA9393C0164exec_var*
begin
//#UC START# *49512B5D0009_4AA9393C0164exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *49512B5D0009_4AA9393C0164exec_impl*
end;//TenQueryCard.Edit_FindContext_Execute

procedure TenQueryCard.Edit_FindNext_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *495130C40123_4AA9393C0164test_var*
//#UC END# *495130C40123_4AA9393C0164test_var*
begin
//#UC START# *495130C40123_4AA9393C0164test_impl*
 !!! Needs to be implemented !!!
//#UC END# *495130C40123_4AA9393C0164test_impl*
end;//TenQueryCard.Edit_FindNext_Test

procedure TenQueryCard.Edit_FindNext_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *495130C40123_4AA9393C0164exec_var*
//#UC END# *495130C40123_4AA9393C0164exec_var*
begin
//#UC START# *495130C40123_4AA9393C0164exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *495130C40123_4AA9393C0164exec_impl*
end;//TenQueryCard.Edit_FindNext_Execute

procedure TenQueryCard.File_Save_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *495235F401C0_4AA9393C0164test_var*
//#UC END# *495235F401C0_4AA9393C0164test_var*
begin
//#UC START# *495235F401C0_4AA9393C0164test_impl*
 !!! Needs to be implemented !!!
//#UC END# *495235F401C0_4AA9393C0164test_impl*
end;//TenQueryCard.File_Save_Test

procedure TenQueryCard.File_Save_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *495235F401C0_4AA9393C0164exec_var*
//#UC END# *495235F401C0_4AA9393C0164exec_var*
begin
//#UC START# *495235F401C0_4AA9393C0164exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *495235F401C0_4AA9393C0164exec_impl*
end;//TenQueryCard.File_Save_Execute

procedure TenQueryCard.Edit_Undo_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49EDFCA2006D_4AA9393C0164test_var*
//#UC END# *49EDFCA2006D_4AA9393C0164test_var*
begin
//#UC START# *49EDFCA2006D_4AA9393C0164test_impl*
 !!! Needs to be implemented !!!
//#UC END# *49EDFCA2006D_4AA9393C0164test_impl*
end;//TenQueryCard.Edit_Undo_Test

procedure TenQueryCard.Edit_Undo_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49EDFCA2006D_4AA9393C0164exec_var*
//#UC END# *49EDFCA2006D_4AA9393C0164exec_var*
begin
//#UC START# *49EDFCA2006D_4AA9393C0164exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *49EDFCA2006D_4AA9393C0164exec_impl*
end;//TenQueryCard.Edit_Undo_Execute

procedure TenQueryCard.Edit_Redo_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49EDFCB100BC_4AA9393C0164test_var*
//#UC END# *49EDFCB100BC_4AA9393C0164test_var*
begin
//#UC START# *49EDFCB100BC_4AA9393C0164test_impl*
 !!! Needs to be implemented !!!
//#UC END# *49EDFCB100BC_4AA9393C0164test_impl*
end;//TenQueryCard.Edit_Redo_Test

procedure TenQueryCard.Edit_Redo_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49EDFCB100BC_4AA9393C0164exec_var*
//#UC END# *49EDFCB100BC_4AA9393C0164exec_var*
begin
//#UC START# *49EDFCB100BC_4AA9393C0164exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *49EDFCB100BC_4AA9393C0164exec_impl*
end;//TenQueryCard.Edit_Redo_Execute

procedure TenQueryCard.Edit_SelectAll_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49EE01AA02BE_4AA9393C0164test_var*
//#UC END# *49EE01AA02BE_4AA9393C0164test_var*
begin
//#UC START# *49EE01AA02BE_4AA9393C0164test_impl*
 !!! Needs to be implemented !!!
//#UC END# *49EE01AA02BE_4AA9393C0164test_impl*
end;//TenQueryCard.Edit_SelectAll_Test

procedure TenQueryCard.Edit_SelectAll_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49EE01AA02BE_4AA9393C0164exec_var*
//#UC END# *49EE01AA02BE_4AA9393C0164exec_var*
begin
//#UC START# *49EE01AA02BE_4AA9393C0164exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *49EE01AA02BE_4AA9393C0164exec_impl*
end;//TenQueryCard.Edit_SelectAll_Execute

procedure TenQueryCard.Edit_Deselect_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49EE01BC022E_4AA9393C0164test_var*
//#UC END# *49EE01BC022E_4AA9393C0164test_var*
begin
//#UC START# *49EE01BC022E_4AA9393C0164test_impl*
 !!! Needs to be implemented !!!
//#UC END# *49EE01BC022E_4AA9393C0164test_impl*
end;//TenQueryCard.Edit_Deselect_Test

procedure TenQueryCard.Edit_Deselect_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49EE01BC022E_4AA9393C0164exec_var*
//#UC END# *49EE01BC022E_4AA9393C0164exec_var*
begin
//#UC START# *49EE01BC022E_4AA9393C0164exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *49EE01BC022E_4AA9393C0164exec_impl*
end;//TenQueryCard.Edit_Deselect_Execute

procedure TenQueryCard.Edit_FindPrev_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49FEDE4703B8_4AA9393C0164test_var*
//#UC END# *49FEDE4703B8_4AA9393C0164test_var*
begin
//#UC START# *49FEDE4703B8_4AA9393C0164test_impl*
 !!! Needs to be implemented !!!
//#UC END# *49FEDE4703B8_4AA9393C0164test_impl*
end;//TenQueryCard.Edit_FindPrev_Test

procedure TenQueryCard.Edit_FindPrev_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49FEDE4703B8_4AA9393C0164exec_var*
//#UC END# *49FEDE4703B8_4AA9393C0164exec_var*
begin
//#UC START# *49FEDE4703B8_4AA9393C0164exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *49FEDE4703B8_4AA9393C0164exec_impl*
end;//TenQueryCard.Edit_FindPrev_Execute

procedure TenQueryCard.SubPanelSettings_ShowInfo_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4A7C1F420169_4AA9393C0164test_var*
//#UC END# *4A7C1F420169_4AA9393C0164test_var*
begin
//#UC START# *4A7C1F420169_4AA9393C0164test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4A7C1F420169_4AA9393C0164test_impl*
end;//TenQueryCard.SubPanelSettings_ShowInfo_Test

procedure TenQueryCard.SubPanelSettings_ShowInfo_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4A7C1F420169_4AA9393C0164exec_var*
//#UC END# *4A7C1F420169_4AA9393C0164exec_var*
begin
//#UC START# *4A7C1F420169_4AA9393C0164exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4A7C1F420169_4AA9393C0164exec_impl*
end;//TenQueryCard.SubPanelSettings_ShowInfo_Execute

procedure TenQueryCard.SaveConsultationCreditnails;
//#UC START# *4AE8935F00F9_4AA9393C0164_var*
//#UC END# *4AE8935F00F9_4AA9393C0164_var*
begin
//#UC START# *4AE8935F00F9_4AA9393C0164_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AE8935F00F9_4AA9393C0164_impl*
end;//TenQueryCard.SaveConsultationCreditnails

procedure TenQueryCard.HandleException(anException: EqaException);
//#UC START# *4AE89A4701D6_4AA9393C0164_var*
//#UC END# *4AE89A4701D6_4AA9393C0164_var*
begin
//#UC START# *4AE89A4701D6_4AA9393C0164_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AE89A4701D6_4AA9393C0164_impl*
end;//TenQueryCard.HandleException

procedure TenQueryCard.LoadConsultationCreditnails;
//#UC START# *4AF9352A001A_4AA9393C0164_var*
//#UC END# *4AF9352A001A_4AA9393C0164_var*
begin
//#UC START# *4AF9352A001A_4AA9393C0164_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AF9352A001A_4AA9393C0164_impl*
end;//TenQueryCard.LoadConsultationCreditnails

{$IfEnd} //not Admin

end.