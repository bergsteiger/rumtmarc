unit PrimSaveLoadOptions_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View$For F1 and Monitorings"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimSaveLoadOptions_Form.pas"
// �����: 09.09.2010 15:26
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMContainer::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::PrimSaveLoadOptions
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin)}
uses
  PrimSaveLoad_Form,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin

{$If not defined(Admin)}
type
 TPrimSaveLoadOptionsForm = {form} class(TPrimSaveLoadForm)
 protected
  procedure InitEntities; override;
 end;//TPrimSaveLoadOptionsForm

 TvcmContainerFormRef = TPrimSaveLoadOptionsForm;
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}
uses
  StdRes {a},
  Search_Strange_Controls,
  SearchLite_Strange_Controls,
  OfficeLike_Result_Controls,
  OfficeLike_ResultEx_Controls
  ;
{$IfEnd} //not Admin

{$If not defined(Admin)}

// start class TPrimSaveLoadOptionsForm

procedure TPrimSaveLoadOptionsForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  
  ShowInContextMenu(en_File, op_SaveToFolder, true);
  ShowInToolbar(en_File, op_SaveToFolder, true);
  
  ShowInContextMenu(en_File, op_LoadFromFolder, true);
  ShowInToolbar(en_File, op_LoadFromFolder, true);
  
  ShowInContextMenu(en_Result, op_ClearAll, true);
  ShowInToolbar(en_Result, op_ClearAll, true);
  
  ShowInContextMenu(en_Query, op_GetOldQuery, true);
  ShowInToolbar(en_Query, op_GetOldQuery, true);
  
  ShowInContextMenu(en_Query, op_SearchType, false);
  ShowInToolbar(en_Query, op_SearchType, true);
  
  ShowInContextMenu(en_LogicOperation, op_LogicOr, true);
  ShowInToolbar(en_LogicOperation, op_LogicOr, true);
  
  ShowInContextMenu(en_Result, op_Cancel, true);
  ShowInToolbar(en_Result, op_Cancel, true);
  
  ShowInContextMenu(en_Result, op_OkExt, true);
  ShowInToolbar(en_Result, op_OkExt, true);
  
  ShowInContextMenu(en_Filters, op_FiltersListOpen, false);
  ShowInToolbar(en_Filters, op_FiltersListOpen, true);
 end;//with Entities.Entities
end;

{$IfEnd} //not Admin

end.