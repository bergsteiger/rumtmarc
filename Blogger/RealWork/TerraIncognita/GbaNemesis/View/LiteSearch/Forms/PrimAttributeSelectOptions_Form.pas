unit PrimAttributeSelectOptions_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/LiteSearch/Forms/PrimAttributeSelectOptions_Form.pas"
// �����: 09.09.2010 15:43
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMContainer::Class>> F1 ������� ����������� ���������� �������::SearchLite::View::LiteSearch::PrimAttributeSelectOptions
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  PrimAttributeSelect_Form,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;

type
 TPrimAttributeSelectOptionsForm = {form} class(TPrimAttributeSelectForm)
 protected
  procedure InitEntities; override;
 end;//TPrimAttributeSelectOptionsForm

 TvcmContainerFormRef = TPrimAttributeSelectOptionsForm;

implementation

uses
  StdRes {a},
  SearchLite_Strange_Controls,
  OfficeLike_Result_Controls,
  OfficeLike_ResultEx_Controls
  ;

// start class TPrimAttributeSelectOptionsForm

procedure TPrimAttributeSelectOptionsForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  
  ShowInContextMenu(en_Result, op_ClearAll, true);
  ShowInToolbar(en_Result, op_ClearAll, true);
  
  ShowInContextMenu(en_Result, op_Cancel, true);
  ShowInToolbar(en_Result, op_Cancel, true);
  
  ShowInContextMenu(en_Result, op_OkExt, true);
  ShowInToolbar(en_Result, op_OkExt, true);
 end;//with Entities.Entities
end;

end.