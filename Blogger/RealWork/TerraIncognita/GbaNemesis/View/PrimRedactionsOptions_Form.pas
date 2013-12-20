unit PrimRedactionsOptions_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/PrimRedactionsOptions_Form.pas"
// �����: 07.09.2010 15:43
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 ������ � ���������� � ������� ����������::Document::View::Redactions::PrimRedactionsOptions
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  PrimRedactions_Form,
  Document_Strange_Controls,
  Base_Operations_Editions_Controls,
  OfficeLike_Tree_Controls,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TPrimRedactionsOptionsForm = {form} class(TPrimRedactionsForm)
 protected
  procedure InitEntities; override;
 protected
 // realized methods
   procedure Tree_ExpandAll_Test(const aParams: IvcmTestParamsPrim);
     {* ���������� ��� }
   procedure Tree_CollapseAll_Test(const aParams: IvcmTestParamsPrim);
     {* �������� ��� }
   procedure Edition_OpenNewWindow_Test(const aParams: IvcmTestParamsPrim);
   procedure Edition_OpenNewWindow_Execute(const aParams: IvcmExecuteParamsPrim);
 end;//TPrimRedactionsOptionsForm

 TvcmEntityFormRef = TPrimRedactionsOptionsForm;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Common_Strange_Controls,
  DocumentUserTypes_dftDocument_UserType,
  StdRes {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TPrimRedactionsOptionsForm

procedure TPrimRedactionsOptionsForm.Tree_ExpandAll_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4BDAF7880236_4C86253E00C5test_var*
//#UC END# *4BDAF7880236_4C86253E00C5test_var*
begin
//#UC START# *4BDAF7880236_4C86253E00C5test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := False;
//#UC END# *4BDAF7880236_4C86253E00C5test_impl*
end;//TPrimRedactionsOptionsForm.Tree_ExpandAll_Test

procedure TPrimRedactionsOptionsForm.Tree_CollapseAll_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4BDAF7A2005C_4C86253E00C5test_var*
//#UC END# *4BDAF7A2005C_4C86253E00C5test_var*
begin
//#UC START# *4BDAF7A2005C_4C86253E00C5test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := False;
//#UC END# *4BDAF7A2005C_4C86253E00C5test_impl*
end;//TPrimRedactionsOptionsForm.Tree_CollapseAll_Test

procedure TPrimRedactionsOptionsForm.Edition_OpenNewWindow_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C862614021C_4C86253E00C5test_var*
//#UC END# *4C862614021C_4C86253E00C5test_var*
begin
//#UC START# *4C862614021C_4C86253E00C5test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := not IsModalForm;
//#UC END# *4C862614021C_4C86253E00C5test_impl*
end;//TPrimRedactionsOptionsForm.Edition_OpenNewWindow_Test

procedure TPrimRedactionsOptionsForm.Edition_OpenNewWindow_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C862614021C_4C86253E00C5exec_var*
//#UC END# *4C862614021C_4C86253E00C5exec_var*
begin
//#UC START# *4C862614021C_4C86253E00C5exec_impl*
 Op_Document_CommonDocumentOpenNewWindow.Call(Aggregate, dftDocument);
//#UC END# *4C862614021C_4C86253E00C5exec_impl*
end;//TPrimRedactionsOptionsForm.Edition_OpenNewWindow_Execute

procedure TPrimRedactionsOptionsForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_Tree, nil);
  PublishFormEntity(en_Edition, nil);
  PublishOp(en_Tree, op_ExpandAll, nil, Tree_ExpandAll_Test, nil);
  PublishOp(en_Tree, op_CollapseAll, nil, Tree_CollapseAll_Test, nil);
  PublishOp(en_Tree, op_Wrap, nil, nil, nil);
  PublishOp(en_Edition, op_OpenNewWindow, Edition_OpenNewWindow_Execute, Edition_OpenNewWindow_Test, nil);
  ShowInContextMenu(en_Edition, op_OpenNewWindow, true);
  ShowInToolbar(en_Edition, op_OpenNewWindow, false);
 end;//with Entities.Entities
end;

{$IfEnd} //not Admin AND not Monitorings

end.