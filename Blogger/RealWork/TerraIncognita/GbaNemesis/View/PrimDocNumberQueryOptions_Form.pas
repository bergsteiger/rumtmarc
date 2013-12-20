unit PrimDocNumberQueryOptions_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/PrimDocNumberQueryOptions_Form.pas"
// Начат: 07.09.2010 17:16
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Работа с документом и списком документов::Document::View::OpenDocumentByNumber::PrimDocNumberQueryOptions
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
  PrimDocNumberQuery_Form,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TPrimDocNumberQueryOptionsForm = {form} class(TPrimDocNumberQueryForm)
 protected
  procedure InitEntities; override;
 protected
 // realized methods
   procedure Result_Ok_Execute(const aParams: IvcmExecuteParamsPrim);
     {* OK }
   procedure Result_Cancel_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Отмена }
 end;//TPrimDocNumberQueryOptionsForm

 TvcmEntityFormRef = TPrimDocNumberQueryOptionsForm;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Controls,
  StdRes {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TPrimDocNumberQueryOptionsForm

procedure TPrimDocNumberQueryOptionsForm.Result_Ok_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C762A1501FC_4C863B1E0196exec_var*
//#UC END# *4C762A1501FC_4C863B1E0196exec_var*
begin
//#UC START# *4C762A1501FC_4C863B1E0196exec_impl*
 if Save then
  ModalResult := mrOk;
//#UC END# *4C762A1501FC_4C863B1E0196exec_impl*
end;//TPrimDocNumberQueryOptionsForm.Result_Ok_Execute

procedure TPrimDocNumberQueryOptionsForm.Result_Cancel_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C762C910358_4C863B1E0196exec_var*
//#UC END# *4C762C910358_4C863B1E0196exec_var*
begin
//#UC START# *4C762C910358_4C863B1E0196exec_impl*
 ModalResult := mrCancel;
//#UC END# *4C762C910358_4C863B1E0196exec_impl*
end;//TPrimDocNumberQueryOptionsForm.Result_Cancel_Execute

procedure TPrimDocNumberQueryOptionsForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_Result, nil);
  ToolbarAtBottom(en_Result);
  PublishOp(en_Result, op_Ok, Result_Ok_Execute, nil, nil);
  ShowInContextMenu(en_Result, op_Ok, true);
  ShowInToolbar(en_Result, op_Ok, true);
  PublishOp(en_Result, op_Cancel, Result_Cancel_Execute, nil, nil);
  ShowInContextMenu(en_Result, op_Cancel, true);
  ShowInToolbar(en_Result, op_Cancel, true);
 end;//with Entities.Entities
end;

{$IfEnd} //not Admin AND not Monitorings

end.