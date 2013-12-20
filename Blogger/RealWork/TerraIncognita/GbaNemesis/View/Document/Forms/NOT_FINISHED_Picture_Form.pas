unit NOT_FINISHED_Picture_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Document/Forms/NOT_FINISHED_Picture_Form.pas"
// Начат: 05.02.2009 19:28
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Работа с документом и списком документов::Document::View::Document::Document::Picture
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
  PrimPictureOptions_Form,
  l3TreeInterfaces,
  bsTypes,
  nsSaveDialog,
  imageenio,
  imageenproc,
  imageenview,
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
  TPictureForm = {final form} class(TvcmEntityFormRef)
  Entities : TvcmEntities;
  ieIO: TImageEnIO;
  ieProc: TImageEnProc;
  ieViewer: TImageEnView;
  protected
  // realized methods
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
   procedure Edit_Paste_Test(const aParams: IvcmTestParamsPrim);
     {* Вставка }
   procedure Edit_Paste_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Вставка }
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
   procedure Document_CommonDocumentOpenNewWindow_Execute(aUserType: Integer);
     {* Что это? }
   procedure Document_CommonDocumentOpenNewWindow(const aParams: IvcmExecuteParams);
     {* Что это? }
   procedure Result_Cancel_Test(const aParams: IvcmTestParamsPrim);
     {* Отмена }
   procedure Result_Cancel_GetState(var State: TvcmOperationStateIndex);
     {* Отмена }
   procedure Result_Cancel_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Отмена }
   procedure Document_GetCorrespondentListExFrmAct_Test(const aParams: IvcmTestParamsPrim);
     {* Ссылки на документ (вид информации) }
   procedure Document_GetCorrespondentListExFrmAct_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Ссылки на документ (вид информации) }
   procedure Document_GetRespondentListExFrmAct_Test(const aParams: IvcmTestParamsPrim);
     {* Ссылки из документа (вид информации) }
   procedure Document_GetRespondentListExFrmAct_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Ссылки из документа (вид информации) }
   function GetSaveDialog: TnsSaveDialog; override;
   procedure FitInWindow; override;
   function CanEnlarge: Boolean; override;
   function CanShrink: Boolean; override;
   procedure Enlarge; override;
   procedure Shrink; override;
   function Get_Scale: Integer; override;
   procedure Set_Scale(aValue: Integer); override;
  end;//TPictureForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TPictureForm

procedure TPictureForm.Edit_Copy_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4951284902BD_4AAFCF930362test_var*
//#UC END# *4951284902BD_4AAFCF930362test_var*
begin
//#UC START# *4951284902BD_4AAFCF930362test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4951284902BD_4AAFCF930362test_impl*
end;//TPictureForm.Edit_Copy_Test

procedure TPictureForm.Edit_Copy_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4951284902BD_4AAFCF930362exec_var*
//#UC END# *4951284902BD_4AAFCF930362exec_var*
begin
//#UC START# *4951284902BD_4AAFCF930362exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4951284902BD_4AAFCF930362exec_impl*
end;//TPictureForm.Edit_Copy_Execute

procedure TPictureForm.Edit_Cut_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4951285702E1_4AAFCF930362test_var*
//#UC END# *4951285702E1_4AAFCF930362test_var*
begin
//#UC START# *4951285702E1_4AAFCF930362test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4951285702E1_4AAFCF930362test_impl*
end;//TPictureForm.Edit_Cut_Test

procedure TPictureForm.Edit_Cut_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4951285702E1_4AAFCF930362exec_var*
//#UC END# *4951285702E1_4AAFCF930362exec_var*
begin
//#UC START# *4951285702E1_4AAFCF930362exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4951285702E1_4AAFCF930362exec_impl*
end;//TPictureForm.Edit_Cut_Execute

procedure TPictureForm.Edit_FindContext_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49512B5D0009_4AAFCF930362test_var*
//#UC END# *49512B5D0009_4AAFCF930362test_var*
begin
//#UC START# *49512B5D0009_4AAFCF930362test_impl*
 !!! Needs to be implemented !!!
//#UC END# *49512B5D0009_4AAFCF930362test_impl*
end;//TPictureForm.Edit_FindContext_Test

procedure TPictureForm.Edit_FindContext_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49512B5D0009_4AAFCF930362exec_var*
//#UC END# *49512B5D0009_4AAFCF930362exec_var*
begin
//#UC START# *49512B5D0009_4AAFCF930362exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *49512B5D0009_4AAFCF930362exec_impl*
end;//TPictureForm.Edit_FindContext_Execute

procedure TPictureForm.Edit_FindNext_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *495130C40123_4AAFCF930362test_var*
//#UC END# *495130C40123_4AAFCF930362test_var*
begin
//#UC START# *495130C40123_4AAFCF930362test_impl*
 !!! Needs to be implemented !!!
//#UC END# *495130C40123_4AAFCF930362test_impl*
end;//TPictureForm.Edit_FindNext_Test

procedure TPictureForm.Edit_FindNext_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *495130C40123_4AAFCF930362exec_var*
//#UC END# *495130C40123_4AAFCF930362exec_var*
begin
//#UC START# *495130C40123_4AAFCF930362exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *495130C40123_4AAFCF930362exec_impl*
end;//TPictureForm.Edit_FindNext_Execute

procedure TPictureForm.Document_OpenCorrespondentList_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4988752302F4_4AAFCF930362test_var*
//#UC END# *4988752302F4_4AAFCF930362test_var*
begin
//#UC START# *4988752302F4_4AAFCF930362test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4988752302F4_4AAFCF930362test_impl*
end;//TPictureForm.Document_OpenCorrespondentList_Test

procedure TPictureForm.Document_OpenCorrespondentList_Execute(aKind: TlstCRType;
  const aCRType: Il3SimpleNode);
//#UC START# *4988752302F4_4AAFCF930362exec_var*
//#UC END# *4988752302F4_4AAFCF930362exec_var*
begin
//#UC START# *4988752302F4_4AAFCF930362exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4988752302F4_4AAFCF930362exec_impl*
end;//TPictureForm.Document_OpenCorrespondentList_Execute

procedure TPictureForm.Document_OpenCorrespondentList(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IDocument_OpenCorrespondentList_Params) do
  Document_OpenCorrespondentList_Execute(Kind, CRType);
end;

procedure TPictureForm.Document_OpenRespondentList_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49888E8003B9_4AAFCF930362test_var*
//#UC END# *49888E8003B9_4AAFCF930362test_var*
begin
//#UC START# *49888E8003B9_4AAFCF930362test_impl*
 !!! Needs to be implemented !!!
//#UC END# *49888E8003B9_4AAFCF930362test_impl*
end;//TPictureForm.Document_OpenRespondentList_Test

procedure TPictureForm.Document_OpenRespondentList_Execute(aKind: TlstCRType;
  const aCRType: Il3SimpleNode);
//#UC START# *49888E8003B9_4AAFCF930362exec_var*
//#UC END# *49888E8003B9_4AAFCF930362exec_var*
begin
//#UC START# *49888E8003B9_4AAFCF930362exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *49888E8003B9_4AAFCF930362exec_impl*
end;//TPictureForm.Document_OpenRespondentList_Execute

procedure TPictureForm.Document_OpenRespondentList(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IDocument_OpenRespondentList_Params) do
  Document_OpenRespondentList_Execute(Kind, CRType);
end;

procedure TPictureForm.Document_GetAttributesFrmAct_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *498891640253_4AAFCF930362test_var*
//#UC END# *498891640253_4AAFCF930362test_var*
begin
//#UC START# *498891640253_4AAFCF930362test_impl*
 !!! Needs to be implemented !!!
//#UC END# *498891640253_4AAFCF930362test_impl*
end;//TPictureForm.Document_GetAttributesFrmAct_Test

procedure TPictureForm.Document_GetAttributesFrmAct_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *498891640253_4AAFCF930362exec_var*
//#UC END# *498891640253_4AAFCF930362exec_var*
begin
//#UC START# *498891640253_4AAFCF930362exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *498891640253_4AAFCF930362exec_impl*
end;//TPictureForm.Document_GetAttributesFrmAct_Execute

procedure TPictureForm.Document_GetRelatedDocFrmAct_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *498993C801DC_4AAFCF930362test_var*
//#UC END# *498993C801DC_4AAFCF930362test_var*
begin
//#UC START# *498993C801DC_4AAFCF930362test_impl*
 !!! Needs to be implemented !!!
//#UC END# *498993C801DC_4AAFCF930362test_impl*
end;//TPictureForm.Document_GetRelatedDocFrmAct_Test

procedure TPictureForm.Document_GetRelatedDocFrmAct_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *498993C801DC_4AAFCF930362exec_var*
//#UC END# *498993C801DC_4AAFCF930362exec_var*
begin
//#UC START# *498993C801DC_4AAFCF930362exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *498993C801DC_4AAFCF930362exec_impl*
end;//TPictureForm.Document_GetRelatedDocFrmAct_Execute

procedure TPictureForm.Document_GetCorrespondentList_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4989D65C0275_4AAFCF930362test_var*
//#UC END# *4989D65C0275_4AAFCF930362test_var*
begin
//#UC START# *4989D65C0275_4AAFCF930362test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4989D65C0275_4AAFCF930362test_impl*
end;//TPictureForm.Document_GetCorrespondentList_Test

procedure TPictureForm.Document_GetCorrespondentList_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4989D65C0275_4AAFCF930362exec_var*
//#UC END# *4989D65C0275_4AAFCF930362exec_var*
begin
//#UC START# *4989D65C0275_4AAFCF930362exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4989D65C0275_4AAFCF930362exec_impl*
end;//TPictureForm.Document_GetCorrespondentList_Execute

procedure TPictureForm.Document_GetRespondentList_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4989D8430128_4AAFCF930362test_var*
//#UC END# *4989D8430128_4AAFCF930362test_var*
begin
//#UC START# *4989D8430128_4AAFCF930362test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4989D8430128_4AAFCF930362test_impl*
end;//TPictureForm.Document_GetRespondentList_Test

procedure TPictureForm.Document_GetRespondentList_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4989D8430128_4AAFCF930362exec_var*
//#UC END# *4989D8430128_4AAFCF930362exec_var*
begin
//#UC START# *4989D8430128_4AAFCF930362exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4989D8430128_4AAFCF930362exec_impl*
end;//TPictureForm.Document_GetRespondentList_Execute

function TPictureForm.Document_AttributesCanBeClosed_Execute: Boolean;
//#UC START# *4989DE3702CF_4AAFCF930362exec_var*
//#UC END# *4989DE3702CF_4AAFCF930362exec_var*
begin
//#UC START# *4989DE3702CF_4AAFCF930362exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4989DE3702CF_4AAFCF930362exec_impl*
end;//TPictureForm.Document_AttributesCanBeClosed_Execute

procedure TPictureForm.Document_AttributesCanBeClosed(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IDocument_AttributesCanBeClosed_Params) do
  ResultValue := Document_AttributesCanBeClosed_Execute;
end;

procedure TPictureForm.Edit_Paste_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49EDFA3701B0_4AAFCF930362test_var*
//#UC END# *49EDFA3701B0_4AAFCF930362test_var*
begin
//#UC START# *49EDFA3701B0_4AAFCF930362test_impl*
 !!! Needs to be implemented !!!
//#UC END# *49EDFA3701B0_4AAFCF930362test_impl*
end;//TPictureForm.Edit_Paste_Test

procedure TPictureForm.Edit_Paste_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49EDFA3701B0_4AAFCF930362exec_var*
//#UC END# *49EDFA3701B0_4AAFCF930362exec_var*
begin
//#UC START# *49EDFA3701B0_4AAFCF930362exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *49EDFA3701B0_4AAFCF930362exec_impl*
end;//TPictureForm.Edit_Paste_Execute

procedure TPictureForm.Edit_Undo_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49EDFCA2006D_4AAFCF930362test_var*
//#UC END# *49EDFCA2006D_4AAFCF930362test_var*
begin
//#UC START# *49EDFCA2006D_4AAFCF930362test_impl*
 !!! Needs to be implemented !!!
//#UC END# *49EDFCA2006D_4AAFCF930362test_impl*
end;//TPictureForm.Edit_Undo_Test

procedure TPictureForm.Edit_Undo_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49EDFCA2006D_4AAFCF930362exec_var*
//#UC END# *49EDFCA2006D_4AAFCF930362exec_var*
begin
//#UC START# *49EDFCA2006D_4AAFCF930362exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *49EDFCA2006D_4AAFCF930362exec_impl*
end;//TPictureForm.Edit_Undo_Execute

procedure TPictureForm.Edit_Redo_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49EDFCB100BC_4AAFCF930362test_var*
//#UC END# *49EDFCB100BC_4AAFCF930362test_var*
begin
//#UC START# *49EDFCB100BC_4AAFCF930362test_impl*
 !!! Needs to be implemented !!!
//#UC END# *49EDFCB100BC_4AAFCF930362test_impl*
end;//TPictureForm.Edit_Redo_Test

procedure TPictureForm.Edit_Redo_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49EDFCB100BC_4AAFCF930362exec_var*
//#UC END# *49EDFCB100BC_4AAFCF930362exec_var*
begin
//#UC START# *49EDFCB100BC_4AAFCF930362exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *49EDFCB100BC_4AAFCF930362exec_impl*
end;//TPictureForm.Edit_Redo_Execute

procedure TPictureForm.Edit_SelectAll_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49EE01AA02BE_4AAFCF930362test_var*
//#UC END# *49EE01AA02BE_4AAFCF930362test_var*
begin
//#UC START# *49EE01AA02BE_4AAFCF930362test_impl*
 !!! Needs to be implemented !!!
//#UC END# *49EE01AA02BE_4AAFCF930362test_impl*
end;//TPictureForm.Edit_SelectAll_Test

procedure TPictureForm.Edit_SelectAll_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49EE01AA02BE_4AAFCF930362exec_var*
//#UC END# *49EE01AA02BE_4AAFCF930362exec_var*
begin
//#UC START# *49EE01AA02BE_4AAFCF930362exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *49EE01AA02BE_4AAFCF930362exec_impl*
end;//TPictureForm.Edit_SelectAll_Execute

procedure TPictureForm.Edit_Deselect_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49EE01BC022E_4AAFCF930362test_var*
//#UC END# *49EE01BC022E_4AAFCF930362test_var*
begin
//#UC START# *49EE01BC022E_4AAFCF930362test_impl*
 !!! Needs to be implemented !!!
//#UC END# *49EE01BC022E_4AAFCF930362test_impl*
end;//TPictureForm.Edit_Deselect_Test

procedure TPictureForm.Edit_Deselect_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49EE01BC022E_4AAFCF930362exec_var*
//#UC END# *49EE01BC022E_4AAFCF930362exec_var*
begin
//#UC START# *49EE01BC022E_4AAFCF930362exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *49EE01BC022E_4AAFCF930362exec_impl*
end;//TPictureForm.Edit_Deselect_Execute

procedure TPictureForm.Edit_FindPrev_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49FEDE4703B8_4AAFCF930362test_var*
//#UC END# *49FEDE4703B8_4AAFCF930362test_var*
begin
//#UC START# *49FEDE4703B8_4AAFCF930362test_impl*
 !!! Needs to be implemented !!!
//#UC END# *49FEDE4703B8_4AAFCF930362test_impl*
end;//TPictureForm.Edit_FindPrev_Test

procedure TPictureForm.Edit_FindPrev_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49FEDE4703B8_4AAFCF930362exec_var*
//#UC END# *49FEDE4703B8_4AAFCF930362exec_var*
begin
//#UC START# *49FEDE4703B8_4AAFCF930362exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *49FEDE4703B8_4AAFCF930362exec_impl*
end;//TPictureForm.Edit_FindPrev_Execute

procedure TPictureForm.Document_CommonDocumentOpenNewWindow_Execute(aUserType: Integer);
//#UC START# *4A8EF02E007D_4AAFCF930362exec_var*
//#UC END# *4A8EF02E007D_4AAFCF930362exec_var*
begin
//#UC START# *4A8EF02E007D_4AAFCF930362exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4A8EF02E007D_4AAFCF930362exec_impl*
end;//TPictureForm.Document_CommonDocumentOpenNewWindow_Execute

procedure TPictureForm.Document_CommonDocumentOpenNewWindow(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IDocument_CommonDocumentOpenNewWindow_Params) do
  Document_CommonDocumentOpenNewWindow_Execute(UserType);
end;

procedure TPictureForm.Result_Cancel_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4AC5D61E0284_4AAFCF930362test_var*
//#UC END# *4AC5D61E0284_4AAFCF930362test_var*
begin
//#UC START# *4AC5D61E0284_4AAFCF930362test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AC5D61E0284_4AAFCF930362test_impl*
end;//TPictureForm.Result_Cancel_Test

procedure TPictureForm.Result_Cancel_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4AC5D61E0284_4AAFCF930362getstate_var*
//#UC END# *4AC5D61E0284_4AAFCF930362getstate_var*
begin
//#UC START# *4AC5D61E0284_4AAFCF930362getstate_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AC5D61E0284_4AAFCF930362getstate_impl*
end;//TPictureForm.Result_Cancel_GetState

procedure TPictureForm.Result_Cancel_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AC5D61E0284_4AAFCF930362exec_var*
//#UC END# *4AC5D61E0284_4AAFCF930362exec_var*
begin
//#UC START# *4AC5D61E0284_4AAFCF930362exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AC5D61E0284_4AAFCF930362exec_impl*
end;//TPictureForm.Result_Cancel_Execute

procedure TPictureForm.Document_GetCorrespondentListExFrmAct_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4AF329F6002A_4AAFCF930362test_var*
//#UC END# *4AF329F6002A_4AAFCF930362test_var*
begin
//#UC START# *4AF329F6002A_4AAFCF930362test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AF329F6002A_4AAFCF930362test_impl*
end;//TPictureForm.Document_GetCorrespondentListExFrmAct_Test

procedure TPictureForm.Document_GetCorrespondentListExFrmAct_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AF329F6002A_4AAFCF930362exec_var*
//#UC END# *4AF329F6002A_4AAFCF930362exec_var*
begin
//#UC START# *4AF329F6002A_4AAFCF930362exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AF329F6002A_4AAFCF930362exec_impl*
end;//TPictureForm.Document_GetCorrespondentListExFrmAct_Execute

procedure TPictureForm.Document_GetRespondentListExFrmAct_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4AF329FD014D_4AAFCF930362test_var*
//#UC END# *4AF329FD014D_4AAFCF930362test_var*
begin
//#UC START# *4AF329FD014D_4AAFCF930362test_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AF329FD014D_4AAFCF930362test_impl*
end;//TPictureForm.Document_GetRespondentListExFrmAct_Test

procedure TPictureForm.Document_GetRespondentListExFrmAct_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AF329FD014D_4AAFCF930362exec_var*
//#UC END# *4AF329FD014D_4AAFCF930362exec_var*
begin
//#UC START# *4AF329FD014D_4AAFCF930362exec_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AF329FD014D_4AAFCF930362exec_impl*
end;//TPictureForm.Document_GetRespondentListExFrmAct_Execute

function TPictureForm.GetSaveDialog: TnsSaveDialog;
//#UC START# *4AF32FD000DD_4AAFCF930362_var*
//#UC END# *4AF32FD000DD_4AAFCF930362_var*
begin
//#UC START# *4AF32FD000DD_4AAFCF930362_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AF32FD000DD_4AAFCF930362_impl*
end;//TPictureForm.GetSaveDialog

procedure TPictureForm.FitInWindow;
//#UC START# *4C8775950053_4AAFCF930362_var*
//#UC END# *4C8775950053_4AAFCF930362_var*
begin
//#UC START# *4C8775950053_4AAFCF930362_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C8775950053_4AAFCF930362_impl*
end;//TPictureForm.FitInWindow

function TPictureForm.CanEnlarge: Boolean;
//#UC START# *4C8775AA017A_4AAFCF930362_var*
//#UC END# *4C8775AA017A_4AAFCF930362_var*
begin
//#UC START# *4C8775AA017A_4AAFCF930362_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C8775AA017A_4AAFCF930362_impl*
end;//TPictureForm.CanEnlarge

function TPictureForm.CanShrink: Boolean;
//#UC START# *4C8775D301F7_4AAFCF930362_var*
//#UC END# *4C8775D301F7_4AAFCF930362_var*
begin
//#UC START# *4C8775D301F7_4AAFCF930362_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C8775D301F7_4AAFCF930362_impl*
end;//TPictureForm.CanShrink

procedure TPictureForm.Enlarge;
//#UC START# *4C8775F60070_4AAFCF930362_var*
//#UC END# *4C8775F60070_4AAFCF930362_var*
begin
//#UC START# *4C8775F60070_4AAFCF930362_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C8775F60070_4AAFCF930362_impl*
end;//TPictureForm.Enlarge

procedure TPictureForm.Shrink;
//#UC START# *4C87761302DC_4AAFCF930362_var*
//#UC END# *4C87761302DC_4AAFCF930362_var*
begin
//#UC START# *4C87761302DC_4AAFCF930362_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C87761302DC_4AAFCF930362_impl*
end;//TPictureForm.Shrink

function TPictureForm.Get_Scale: Integer;
//#UC START# *4C87765001CE_4AAFCF930362get_var*
//#UC END# *4C87765001CE_4AAFCF930362get_var*
begin
//#UC START# *4C87765001CE_4AAFCF930362get_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C87765001CE_4AAFCF930362get_impl*
end;//TPictureForm.Get_Scale

procedure TPictureForm.Set_Scale(aValue: Integer);
//#UC START# *4C87765001CE_4AAFCF930362set_var*
//#UC END# *4C87765001CE_4AAFCF930362set_var*
begin
//#UC START# *4C87765001CE_4AAFCF930362set_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C87765001CE_4AAFCF930362set_impl*
end;//TPictureForm.Set_Scale

{$IfEnd} //not Admin AND not Monitorings

end.