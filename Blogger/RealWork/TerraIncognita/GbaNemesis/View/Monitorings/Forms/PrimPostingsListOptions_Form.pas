unit PrimPostingsListOptions_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Monitorings/Forms/PrimPostingsListOptions_Form.pas"
// �����: 14.06.2011 20:18
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 ������� �����::NewsLineTuning::View::Monitorings::PrimPostingsListOptions
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If defined(Monitorings) AND not defined(Admin)}
uses
  PrimPostingsList_Form,
  PrimPostingsList_MyPostingList_UserType,
  OfficeLike_Tree_Controls,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //Monitorings AND not Admin

{$If defined(Monitorings) AND not defined(Admin)}
type
 TPrimPostingsListOptionsForm = {form} class(TPrimPostingsListForm)
 protected
  procedure InitEntities; override;
 protected
 // realized methods
 end;//TPrimPostingsListOptionsForm

 TvcmEntityFormRef = TPrimPostingsListOptionsForm;
{$IfEnd} //Monitorings AND not Admin

implementation

{$If defined(Monitorings) AND not defined(Admin)}
uses
  StdRes {a},
  NewsLineTuning_Strange_Controls
  ;
{$IfEnd} //Monitorings AND not Admin

{$If defined(Monitorings) AND not defined(Admin)}

// start class TPrimPostingsListOptionsForm

procedure TPrimPostingsListOptionsForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_Tree, nil);
  PublishOp(en_Tree, op_ExpandAll, nil, nil, nil);
  PublishOp(en_Tree, op_CollapseAll, nil, nil, nil);
  ShowInContextMenu(en_PostingToolBar, op_ptEditPosting, true, true);
  ShowInToolbar(en_PostingToolBar, op_ptEditPosting, true, true);
 end;//with Entities.Entities
 AddUserTypeExclude(MyPostingListName, en_Tree, op_ExpandAll, false);
 AddUserTypeExclude(MyPostingListName, en_Tree, op_CollapseAll, false);
end;

{$IfEnd} //Monitorings AND not Admin

end.