unit NOT_FINISHED_MedicFirmList_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Inpharm/Forms/NOT_FINISHED_MedicFirmList_Form.pas"
// Начат: 04.09.2009 12:57
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Встроенные продукты::Inpharm::View::Inpharm::Inpharm::MedicFirmList$Form
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Common_FormDefinitions_Controls,
  PrimMedicFirmListOptions_Form,
  l3TreeInterfaces,
  bsTypes
  {$If defined(Nemesis)}
  ,
  nscTreeView
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscContextFilter
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
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
  Ten_MedicFirmList = {final form} class(TvcmEntityFormRef, MedicFirmListFormDef)
  Entities : TvcmEntities;
  ListTree: TnscTreeView;
  ContextFilter: TnscContextFilter;
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
   procedure Edit_FindContext_Test(const aParams: IvcmTestParamsPrim);
     {* Поиск }
   procedure Edit_FindContext_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Поиск }
   procedure Edit_FindNext_Test(const aParams: IvcmTestParamsPrim);
     {* Найти далее }
   procedure Edit_FindNext_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Найти далее }
   procedure Document_NextDocumentInList_Test(const aParams: IvcmTestParamsPrim);
     {* Следующий документ в списке }
   procedure Document_NextDocumentInList_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Следующий документ в списке }
   procedure Document_ReturnToList_Test(const aParams: IvcmTestParamsPrim);
     {* Вернуться в списк }
   procedure Document_ReturnToList_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Вернуться в списк }
   procedure Document_AddToControl_Test(const aParams: IvcmTestParamsPrim);
     {* Поставить на контроль }
   procedure Document_AddToControl_GetState(var State: TvcmOperationStateIndex);
     {* Поставить на контроль }
   procedure Document_AddToControl_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Поставить на контроль }
   procedure Document_OpenCorrespondentList_Test(const aParams: IvcmTestParamsPrim);
     {* Коллеги, это что? }
   procedure Document_OpenCorrespondentList_Execute(aKind: TlstCRType;
    const aCRType: Il3SimpleNode);
     {* Коллеги, это что? }
   procedure Document_OpenCorrespondentList(const aParams: IvcmExecuteParams);
     {* Коллеги, это что? }
   procedure Document_OpenRespondentList_Test(const aParams: IvcmTestParamsPrim);
     {* Коллеги, это что? }
   procedure Document_OpenRespondentList_Execute(aKind: TlstCRType;
    const aCRType: Il3SimpleNode);
     {* Коллеги, это что? }
   procedure Document_OpenRespondentList(const aParams: IvcmExecuteParams);
     {* Коллеги, это что? }
   procedure Document_GetAttributesFrmAct_Test(const aParams: IvcmTestParamsPrim);
     {* Информация о документе }
   procedure Document_GetAttributesFrmAct_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Информация о документе }
   procedure Document_GetRelatedDocFrmAct_Test(const aParams: IvcmTestParamsPrim);
     {* Справка к документу }
   procedure Document_GetRelatedDocFrmAct_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Справка к документу }
   procedure Document_UserCR1_Test(const aParams: IvcmTestParamsPrim);
     {* Коллеги, это что? }
   procedure Document_UserCR1_GetState(var State: TvcmOperationStateIndex);
     {* Коллеги, это что? }
   procedure Document_UserCR2_Test(const aParams: IvcmTestParamsPrim);
     {* Коллеги, это что? }
   procedure Document_UserCR2_GetState(var State: TvcmOperationStateIndex);
     {* Коллеги, это что? }
   procedure Document_GetCorrespondentList_Test(const aParams: IvcmTestParamsPrim);
     {* Ссылки на документ }
   procedure Document_GetCorrespondentList_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Ссылки на документ }
   procedure Document_GetRespondentList_Test(const aParams: IvcmTestParamsPrim);
     {* Ссылки из документа }
   procedure Document_GetRespondentList_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Ссылки из документа }
   function Document_AttributesCanBeClosed_Execute: Boolean;
     {* Это кандидат на перенос в Facet или что-то подобное }
   procedure Document_AttributesCanBeClosed(const aParams: IvcmExecuteParams);
     {* Это кандидат на перенос в Facet или что-то подобное }
   procedure Edit_FindPrev_Test(const aParams: IvcmTestParamsPrim);
   procedure Edit_FindPrev_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Document_CommonDocumentOpenNewWindow_Execute(aUserType: Integer);
     {* Что это? }
   procedure Document_CommonDocumentOpenNewWindow(const aParams: IvcmExecuteParams);
     {* Что это? }
   procedure Document_GetCorrespondentListExFrmAct_Test(const aParams: IvcmTestParamsPrim);
     {* Ссылки на документ (вид информации) }
   procedure Document_GetCorrespondentListExFrmAct_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Ссылки на документ (вид информации) }
   procedure Document_GetRespondentListExFrmAct_Test(const aParams: IvcmTestParamsPrim);
     {* Ссылки из документа (вид информации) }
   procedure Document_GetRespondentListExFrmAct_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Ссылки из документа (вид информации) }
   procedure LocalList_PublishSourceSearchInList_Test(const aParams: IvcmTestParamsPrim);
     {* Искать по источнику опубликования в текущем списке }
   procedure LocalList_PublishSourceSearchInList_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Искать по источнику опубликования в текущем списке }
   procedure LocalList_Open_Test(const aParams: IvcmTestParamsPrim);
   procedure LocalList_Open_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure LocalList_SearchDrugInList_Test(const aParams: IvcmTestParamsPrim);
   procedure LocalList_SearchDrugInList_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Document_GetGraphicImage_Test(const aParams: IvcmTestParamsPrim);
   procedure Document_GetGraphicImage_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Document_PrintDialog_Test(const aParams: IvcmTestParamsPrim);
   procedure Document_PrintDialog_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Document_PrintPreview_Test(const aParams: IvcmTestParamsPrim);
   procedure Document_PrintPreview_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Document_Save_Test(const aParams: IvcmTestParamsPrim);
   procedure Document_Save_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Document_Print_Test(const aParams: IvcmTestParamsPrim);
   procedure Document_Print_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure LocalList_SearchInList_Test(const aParams: IvcmTestParamsPrim);
     {* Искать по реквизитам в текущем списке }
   procedure LocalList_SearchInList_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Искать по реквизитам в текущем списке }
   procedure Document_PrevDocumentInList_Test(const aParams: IvcmTestParamsPrim);
     {* Предыдущий документ в списке }
   procedure Document_PrevDocumentInList_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Предыдущий документ в списке }
   procedure Document_DocumentIsUseful_Test(const aParams: IvcmTestParamsPrim);
     {* Нравится }
   procedure Document_DocumentIsUseful_GetState(var State: TvcmOperationStateIndex);
     {* Нравится }
   procedure Document_DocumentIsUseful_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Нравится }
   procedure Document_DocumentIsUseless_Test(const aParams: IvcmTestParamsPrim);
     {* Не нравится }
   procedure Document_DocumentIsUseless_GetState(var State: TvcmOperationStateIndex);
     {* Не нравится }
   procedure Document_DocumentIsUseless_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Не нравится }
  end;//Ten_MedicFirmList

  TMedicFirmListForm = Ten_MedicFirmList;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}

// start class Ten_MedicFirmList

procedure Ten_MedicFirmList.Edit_Delete_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *494F89C30197_4AB9E69C0243test_var*
//#UC END# *494F89C30197_4AB9E69C0243test_var*
begin
//#UC START# *494F89C30197_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *494F89C30197_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.Edit_Delete_Test

procedure Ten_MedicFirmList.Edit_Delete_GetState(var State: TvcmOperationStateIndex);
//#UC START# *494F89C30197_4AB9E69C0243getstate_var*
//#UC END# *494F89C30197_4AB9E69C0243getstate_var*
begin
//#UC START# *494F89C30197_4AB9E69C0243getstate_impl*
 !!! Needs to be implemented !!!
//#UC END# *494F89C30197_4AB9E69C0243getstate_impl*
end;//Ten_MedicFirmList.Edit_Delete_GetState

procedure Ten_MedicFirmList.Edit_Delete_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *494F89C30197_4AB9E69C0243exec_var*
//#UC END# *494F89C30197_4AB9E69C0243exec_var*
begin
//#UC START# *494F89C30197_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *494F89C30197_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.Edit_Delete_Execute

procedure Ten_MedicFirmList.Edit_Copy_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4951284902BD_4AB9E69C0243test_var*
//#UC END# *4951284902BD_4AB9E69C0243test_var*
begin
//#UC START# *4951284902BD_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4951284902BD_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.Edit_Copy_Test

procedure Ten_MedicFirmList.Edit_Copy_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4951284902BD_4AB9E69C0243exec_var*
//#UC END# *4951284902BD_4AB9E69C0243exec_var*
begin
//#UC START# *4951284902BD_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4951284902BD_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.Edit_Copy_Execute

procedure Ten_MedicFirmList.Edit_FindContext_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49512B5D0009_4AB9E69C0243test_var*
//#UC END# *49512B5D0009_4AB9E69C0243test_var*
begin
//#UC START# *49512B5D0009_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *49512B5D0009_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.Edit_FindContext_Test

procedure Ten_MedicFirmList.Edit_FindContext_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49512B5D0009_4AB9E69C0243exec_var*
//#UC END# *49512B5D0009_4AB9E69C0243exec_var*
begin
//#UC START# *49512B5D0009_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *49512B5D0009_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.Edit_FindContext_Execute

procedure Ten_MedicFirmList.Edit_FindNext_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *495130C40123_4AB9E69C0243test_var*
//#UC END# *495130C40123_4AB9E69C0243test_var*
begin
//#UC START# *495130C40123_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *495130C40123_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.Edit_FindNext_Test

procedure Ten_MedicFirmList.Edit_FindNext_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *495130C40123_4AB9E69C0243exec_var*
//#UC END# *495130C40123_4AB9E69C0243exec_var*
begin
//#UC START# *495130C40123_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *495130C40123_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.Edit_FindNext_Execute

procedure Ten_MedicFirmList.Document_NextDocumentInList_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49880FD20039_4AB9E69C0243test_var*
//#UC END# *49880FD20039_4AB9E69C0243test_var*
begin
//#UC START# *49880FD20039_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *49880FD20039_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.Document_NextDocumentInList_Test

procedure Ten_MedicFirmList.Document_NextDocumentInList_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49880FD20039_4AB9E69C0243exec_var*
//#UC END# *49880FD20039_4AB9E69C0243exec_var*
begin
//#UC START# *49880FD20039_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *49880FD20039_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.Document_NextDocumentInList_Execute

procedure Ten_MedicFirmList.Document_ReturnToList_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49880FE90145_4AB9E69C0243test_var*
//#UC END# *49880FE90145_4AB9E69C0243test_var*
begin
//#UC START# *49880FE90145_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *49880FE90145_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.Document_ReturnToList_Test

procedure Ten_MedicFirmList.Document_ReturnToList_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49880FE90145_4AB9E69C0243exec_var*
//#UC END# *49880FE90145_4AB9E69C0243exec_var*
begin
//#UC START# *49880FE90145_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *49880FE90145_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.Document_ReturnToList_Execute

procedure Ten_MedicFirmList.Document_AddToControl_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *498863B203D0_4AB9E69C0243test_var*
//#UC END# *498863B203D0_4AB9E69C0243test_var*
begin
//#UC START# *498863B203D0_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *498863B203D0_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.Document_AddToControl_Test

procedure Ten_MedicFirmList.Document_AddToControl_GetState(var State: TvcmOperationStateIndex);
//#UC START# *498863B203D0_4AB9E69C0243getstate_var*
//#UC END# *498863B203D0_4AB9E69C0243getstate_var*
begin
//#UC START# *498863B203D0_4AB9E69C0243getstate_impl*
 !!! Needs to be implemented !!!
//#UC END# *498863B203D0_4AB9E69C0243getstate_impl*
end;//Ten_MedicFirmList.Document_AddToControl_GetState

procedure Ten_MedicFirmList.Document_AddToControl_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *498863B203D0_4AB9E69C0243exec_var*
//#UC END# *498863B203D0_4AB9E69C0243exec_var*
begin
//#UC START# *498863B203D0_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *498863B203D0_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.Document_AddToControl_Execute

procedure Ten_MedicFirmList.Document_OpenCorrespondentList_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4988752302F4_4AB9E69C0243test_var*
//#UC END# *4988752302F4_4AB9E69C0243test_var*
begin
//#UC START# *4988752302F4_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4988752302F4_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.Document_OpenCorrespondentList_Test

procedure Ten_MedicFirmList.Document_OpenCorrespondentList_Execute(aKind: TlstCRType;
  const aCRType: Il3SimpleNode);
//#UC START# *4988752302F4_4AB9E69C0243exec_var*
//#UC END# *4988752302F4_4AB9E69C0243exec_var*
begin
//#UC START# *4988752302F4_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4988752302F4_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.Document_OpenCorrespondentList_Execute

procedure Ten_MedicFirmList.Document_OpenCorrespondentList(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IDocument_OpenCorrespondentList_Params) do
  Document_OpenCorrespondentList_Execute(Kind, CRType);
end;

procedure Ten_MedicFirmList.Document_OpenRespondentList_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49888E8003B9_4AB9E69C0243test_var*
//#UC END# *49888E8003B9_4AB9E69C0243test_var*
begin
//#UC START# *49888E8003B9_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *49888E8003B9_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.Document_OpenRespondentList_Test

procedure Ten_MedicFirmList.Document_OpenRespondentList_Execute(aKind: TlstCRType;
  const aCRType: Il3SimpleNode);
//#UC START# *49888E8003B9_4AB9E69C0243exec_var*
//#UC END# *49888E8003B9_4AB9E69C0243exec_var*
begin
//#UC START# *49888E8003B9_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *49888E8003B9_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.Document_OpenRespondentList_Execute

procedure Ten_MedicFirmList.Document_OpenRespondentList(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IDocument_OpenRespondentList_Params) do
  Document_OpenRespondentList_Execute(Kind, CRType);
end;

procedure Ten_MedicFirmList.Document_GetAttributesFrmAct_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *498891640253_4AB9E69C0243test_var*
//#UC END# *498891640253_4AB9E69C0243test_var*
begin
//#UC START# *498891640253_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *498891640253_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.Document_GetAttributesFrmAct_Test

procedure Ten_MedicFirmList.Document_GetAttributesFrmAct_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *498891640253_4AB9E69C0243exec_var*
//#UC END# *498891640253_4AB9E69C0243exec_var*
begin
//#UC START# *498891640253_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *498891640253_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.Document_GetAttributesFrmAct_Execute

procedure Ten_MedicFirmList.Document_GetRelatedDocFrmAct_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *498993C801DC_4AB9E69C0243test_var*
//#UC END# *498993C801DC_4AB9E69C0243test_var*
begin
//#UC START# *498993C801DC_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *498993C801DC_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.Document_GetRelatedDocFrmAct_Test

procedure Ten_MedicFirmList.Document_GetRelatedDocFrmAct_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *498993C801DC_4AB9E69C0243exec_var*
//#UC END# *498993C801DC_4AB9E69C0243exec_var*
begin
//#UC START# *498993C801DC_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *498993C801DC_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.Document_GetRelatedDocFrmAct_Execute

procedure Ten_MedicFirmList.Document_UserCR1_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4989C7D30219_4AB9E69C0243test_var*
//#UC END# *4989C7D30219_4AB9E69C0243test_var*
begin
//#UC START# *4989C7D30219_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4989C7D30219_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.Document_UserCR1_Test

procedure Ten_MedicFirmList.Document_UserCR1_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4989C7D30219_4AB9E69C0243getstate_var*
//#UC END# *4989C7D30219_4AB9E69C0243getstate_var*
begin
//#UC START# *4989C7D30219_4AB9E69C0243getstate_impl*
 !!! Needs to be implemented !!!
//#UC END# *4989C7D30219_4AB9E69C0243getstate_impl*
end;//Ten_MedicFirmList.Document_UserCR1_GetState

procedure Ten_MedicFirmList.Document_UserCR2_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4989C96003C4_4AB9E69C0243test_var*
//#UC END# *4989C96003C4_4AB9E69C0243test_var*
begin
//#UC START# *4989C96003C4_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4989C96003C4_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.Document_UserCR2_Test

procedure Ten_MedicFirmList.Document_UserCR2_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4989C96003C4_4AB9E69C0243getstate_var*
//#UC END# *4989C96003C4_4AB9E69C0243getstate_var*
begin
//#UC START# *4989C96003C4_4AB9E69C0243getstate_impl*
 !!! Needs to be implemented !!!
//#UC END# *4989C96003C4_4AB9E69C0243getstate_impl*
end;//Ten_MedicFirmList.Document_UserCR2_GetState

procedure Ten_MedicFirmList.Document_GetCorrespondentList_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4989D65C0275_4AB9E69C0243test_var*
//#UC END# *4989D65C0275_4AB9E69C0243test_var*
begin
//#UC START# *4989D65C0275_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4989D65C0275_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.Document_GetCorrespondentList_Test

procedure Ten_MedicFirmList.Document_GetCorrespondentList_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4989D65C0275_4AB9E69C0243exec_var*
//#UC END# *4989D65C0275_4AB9E69C0243exec_var*
begin
//#UC START# *4989D65C0275_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4989D65C0275_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.Document_GetCorrespondentList_Execute

procedure Ten_MedicFirmList.Document_GetRespondentList_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4989D8430128_4AB9E69C0243test_var*
//#UC END# *4989D8430128_4AB9E69C0243test_var*
begin
//#UC START# *4989D8430128_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4989D8430128_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.Document_GetRespondentList_Test

procedure Ten_MedicFirmList.Document_GetRespondentList_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4989D8430128_4AB9E69C0243exec_var*
//#UC END# *4989D8430128_4AB9E69C0243exec_var*
begin
//#UC START# *4989D8430128_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4989D8430128_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.Document_GetRespondentList_Execute

function Ten_MedicFirmList.Document_AttributesCanBeClosed_Execute: Boolean;
//#UC START# *4989DE3702CF_4AB9E69C0243exec_var*
//#UC END# *4989DE3702CF_4AB9E69C0243exec_var*
begin
//#UC START# *4989DE3702CF_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4989DE3702CF_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.Document_AttributesCanBeClosed_Execute

procedure Ten_MedicFirmList.Document_AttributesCanBeClosed(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IDocument_AttributesCanBeClosed_Params) do
  ResultValue := Document_AttributesCanBeClosed_Execute;
end;

procedure Ten_MedicFirmList.Edit_FindPrev_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49FEDE4703B8_4AB9E69C0243test_var*
//#UC END# *49FEDE4703B8_4AB9E69C0243test_var*
begin
//#UC START# *49FEDE4703B8_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *49FEDE4703B8_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.Edit_FindPrev_Test

procedure Ten_MedicFirmList.Edit_FindPrev_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49FEDE4703B8_4AB9E69C0243exec_var*
//#UC END# *49FEDE4703B8_4AB9E69C0243exec_var*
begin
//#UC START# *49FEDE4703B8_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *49FEDE4703B8_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.Edit_FindPrev_Execute

procedure Ten_MedicFirmList.Document_CommonDocumentOpenNewWindow_Execute(aUserType: Integer);
//#UC START# *4A8EF02E007D_4AB9E69C0243exec_var*
//#UC END# *4A8EF02E007D_4AB9E69C0243exec_var*
begin
//#UC START# *4A8EF02E007D_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4A8EF02E007D_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.Document_CommonDocumentOpenNewWindow_Execute

procedure Ten_MedicFirmList.Document_CommonDocumentOpenNewWindow(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IDocument_CommonDocumentOpenNewWindow_Params) do
  Document_CommonDocumentOpenNewWindow_Execute(UserType);
end;

procedure Ten_MedicFirmList.Document_GetCorrespondentListExFrmAct_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4AF329F6002A_4AB9E69C0243test_var*
//#UC END# *4AF329F6002A_4AB9E69C0243test_var*
begin
//#UC START# *4AF329F6002A_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AF329F6002A_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.Document_GetCorrespondentListExFrmAct_Test

procedure Ten_MedicFirmList.Document_GetCorrespondentListExFrmAct_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AF329F6002A_4AB9E69C0243exec_var*
//#UC END# *4AF329F6002A_4AB9E69C0243exec_var*
begin
//#UC START# *4AF329F6002A_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AF329F6002A_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.Document_GetCorrespondentListExFrmAct_Execute

procedure Ten_MedicFirmList.Document_GetRespondentListExFrmAct_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4AF329FD014D_4AB9E69C0243test_var*
//#UC END# *4AF329FD014D_4AB9E69C0243test_var*
begin
//#UC START# *4AF329FD014D_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AF329FD014D_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.Document_GetRespondentListExFrmAct_Test

procedure Ten_MedicFirmList.Document_GetRespondentListExFrmAct_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AF329FD014D_4AB9E69C0243exec_var*
//#UC END# *4AF329FD014D_4AB9E69C0243exec_var*
begin
//#UC START# *4AF329FD014D_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AF329FD014D_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.Document_GetRespondentListExFrmAct_Execute

procedure Ten_MedicFirmList.LocalList_PublishSourceSearchInList_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C3A96BD0239_4AB9E69C0243test_var*
//#UC END# *4C3A96BD0239_4AB9E69C0243test_var*
begin
//#UC START# *4C3A96BD0239_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C3A96BD0239_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.LocalList_PublishSourceSearchInList_Test

procedure Ten_MedicFirmList.LocalList_PublishSourceSearchInList_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C3A96BD0239_4AB9E69C0243exec_var*
//#UC END# *4C3A96BD0239_4AB9E69C0243exec_var*
begin
//#UC START# *4C3A96BD0239_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C3A96BD0239_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.LocalList_PublishSourceSearchInList_Execute

procedure Ten_MedicFirmList.LocalList_Open_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C3A971300DA_4AB9E69C0243test_var*
//#UC END# *4C3A971300DA_4AB9E69C0243test_var*
begin
//#UC START# *4C3A971300DA_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C3A971300DA_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.LocalList_Open_Test

procedure Ten_MedicFirmList.LocalList_Open_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C3A971300DA_4AB9E69C0243exec_var*
//#UC END# *4C3A971300DA_4AB9E69C0243exec_var*
begin
//#UC START# *4C3A971300DA_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C3A971300DA_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.LocalList_Open_Execute

procedure Ten_MedicFirmList.LocalList_SearchDrugInList_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C3A97210318_4AB9E69C0243test_var*
//#UC END# *4C3A97210318_4AB9E69C0243test_var*
begin
//#UC START# *4C3A97210318_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C3A97210318_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.LocalList_SearchDrugInList_Test

procedure Ten_MedicFirmList.LocalList_SearchDrugInList_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C3A97210318_4AB9E69C0243exec_var*
//#UC END# *4C3A97210318_4AB9E69C0243exec_var*
begin
//#UC START# *4C3A97210318_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C3A97210318_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.LocalList_SearchDrugInList_Execute

procedure Ten_MedicFirmList.Document_GetGraphicImage_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C3C77CC012A_4AB9E69C0243test_var*
//#UC END# *4C3C77CC012A_4AB9E69C0243test_var*
begin
//#UC START# *4C3C77CC012A_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C3C77CC012A_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.Document_GetGraphicImage_Test

procedure Ten_MedicFirmList.Document_GetGraphicImage_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C3C77CC012A_4AB9E69C0243exec_var*
//#UC END# *4C3C77CC012A_4AB9E69C0243exec_var*
begin
//#UC START# *4C3C77CC012A_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C3C77CC012A_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.Document_GetGraphicImage_Execute

procedure Ten_MedicFirmList.Document_PrintDialog_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C5285F5004B_4AB9E69C0243test_var*
//#UC END# *4C5285F5004B_4AB9E69C0243test_var*
begin
//#UC START# *4C5285F5004B_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C5285F5004B_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.Document_PrintDialog_Test

procedure Ten_MedicFirmList.Document_PrintDialog_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C5285F5004B_4AB9E69C0243exec_var*
//#UC END# *4C5285F5004B_4AB9E69C0243exec_var*
begin
//#UC START# *4C5285F5004B_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C5285F5004B_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.Document_PrintDialog_Execute

procedure Ten_MedicFirmList.Document_PrintPreview_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C52860A017C_4AB9E69C0243test_var*
//#UC END# *4C52860A017C_4AB9E69C0243test_var*
begin
//#UC START# *4C52860A017C_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C52860A017C_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.Document_PrintPreview_Test

procedure Ten_MedicFirmList.Document_PrintPreview_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C52860A017C_4AB9E69C0243exec_var*
//#UC END# *4C52860A017C_4AB9E69C0243exec_var*
begin
//#UC START# *4C52860A017C_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C52860A017C_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.Document_PrintPreview_Execute

procedure Ten_MedicFirmList.Document_Save_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C52861800F7_4AB9E69C0243test_var*
//#UC END# *4C52861800F7_4AB9E69C0243test_var*
begin
//#UC START# *4C52861800F7_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C52861800F7_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.Document_Save_Test

procedure Ten_MedicFirmList.Document_Save_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C52861800F7_4AB9E69C0243exec_var*
//#UC END# *4C52861800F7_4AB9E69C0243exec_var*
begin
//#UC START# *4C52861800F7_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C52861800F7_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.Document_Save_Execute

procedure Ten_MedicFirmList.Document_Print_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C52879C00F4_4AB9E69C0243test_var*
//#UC END# *4C52879C00F4_4AB9E69C0243test_var*
begin
//#UC START# *4C52879C00F4_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C52879C00F4_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.Document_Print_Test

procedure Ten_MedicFirmList.Document_Print_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C52879C00F4_4AB9E69C0243exec_var*
//#UC END# *4C52879C00F4_4AB9E69C0243exec_var*
begin
//#UC START# *4C52879C00F4_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C52879C00F4_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.Document_Print_Execute

procedure Ten_MedicFirmList.LocalList_SearchInList_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C810A2702D9_4AB9E69C0243test_var*
//#UC END# *4C810A2702D9_4AB9E69C0243test_var*
begin
//#UC START# *4C810A2702D9_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C810A2702D9_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.LocalList_SearchInList_Test

procedure Ten_MedicFirmList.LocalList_SearchInList_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C810A2702D9_4AB9E69C0243exec_var*
//#UC END# *4C810A2702D9_4AB9E69C0243exec_var*
begin
//#UC START# *4C810A2702D9_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C810A2702D9_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.LocalList_SearchInList_Execute

procedure Ten_MedicFirmList.Document_PrevDocumentInList_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4FE1BA1303D3_4AB9E69C0243test_var*
//#UC END# *4FE1BA1303D3_4AB9E69C0243test_var*
begin
//#UC START# *4FE1BA1303D3_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FE1BA1303D3_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.Document_PrevDocumentInList_Test

procedure Ten_MedicFirmList.Document_PrevDocumentInList_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4FE1BA1303D3_4AB9E69C0243exec_var*
//#UC END# *4FE1BA1303D3_4AB9E69C0243exec_var*
begin
//#UC START# *4FE1BA1303D3_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FE1BA1303D3_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.Document_PrevDocumentInList_Execute

procedure Ten_MedicFirmList.Document_DocumentIsUseful_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4FE1EF1201D6_4AB9E69C0243test_var*
//#UC END# *4FE1EF1201D6_4AB9E69C0243test_var*
begin
//#UC START# *4FE1EF1201D6_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FE1EF1201D6_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.Document_DocumentIsUseful_Test

procedure Ten_MedicFirmList.Document_DocumentIsUseful_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4FE1EF1201D6_4AB9E69C0243getstate_var*
//#UC END# *4FE1EF1201D6_4AB9E69C0243getstate_var*
begin
//#UC START# *4FE1EF1201D6_4AB9E69C0243getstate_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FE1EF1201D6_4AB9E69C0243getstate_impl*
end;//Ten_MedicFirmList.Document_DocumentIsUseful_GetState

procedure Ten_MedicFirmList.Document_DocumentIsUseful_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4FE1EF1201D6_4AB9E69C0243exec_var*
//#UC END# *4FE1EF1201D6_4AB9E69C0243exec_var*
begin
//#UC START# *4FE1EF1201D6_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FE1EF1201D6_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.Document_DocumentIsUseful_Execute

procedure Ten_MedicFirmList.Document_DocumentIsUseless_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4FE1EF1B039A_4AB9E69C0243test_var*
//#UC END# *4FE1EF1B039A_4AB9E69C0243test_var*
begin
//#UC START# *4FE1EF1B039A_4AB9E69C0243test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FE1EF1B039A_4AB9E69C0243test_impl*
end;//Ten_MedicFirmList.Document_DocumentIsUseless_Test

procedure Ten_MedicFirmList.Document_DocumentIsUseless_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4FE1EF1B039A_4AB9E69C0243getstate_var*
//#UC END# *4FE1EF1B039A_4AB9E69C0243getstate_var*
begin
//#UC START# *4FE1EF1B039A_4AB9E69C0243getstate_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FE1EF1B039A_4AB9E69C0243getstate_impl*
end;//Ten_MedicFirmList.Document_DocumentIsUseless_GetState

procedure Ten_MedicFirmList.Document_DocumentIsUseless_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4FE1EF1B039A_4AB9E69C0243exec_var*
//#UC END# *4FE1EF1B039A_4AB9E69C0243exec_var*
begin
//#UC START# *4FE1EF1B039A_4AB9E69C0243exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FE1EF1B039A_4AB9E69C0243exec_impl*
end;//Ten_MedicFirmList.Document_DocumentIsUseless_Execute

{$IfEnd} //not Admin AND not Monitorings

end.