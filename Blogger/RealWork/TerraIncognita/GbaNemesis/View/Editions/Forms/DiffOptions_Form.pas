unit DiffOptions_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Editions/Forms/DiffOptions_Form.pas"
// �����: 02.09.2010 13:25
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 ���������������� �������::CompareEditions::View::Editions::DiffOptions
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
  Diff_Form,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TDiffOptionsForm = {abstract form} class(TDiffForm)
 protected
  procedure InitEntities; override;
 end;//TDiffOptionsForm

 TvcmEntityFormRef = TDiffOptionsForm;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  OfficeLike_Usual_Controls,
  Base_Operations_F1Specific_Controls
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TDiffOptionsForm

procedure TDiffOptionsForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  
  ShowInContextMenu(en_File, op_Print, false);
  ShowInToolbar(en_File, op_Print, false);
  
  ShowInContextMenu(en_File, op_PrintDialog, false);
  ShowInToolbar(en_File, op_PrintDialog, true);
  
  ShowInContextMenu(en_File, op_ToMSWord, false);
  ShowInToolbar(en_File, op_ToMSWord, true);
 end;//with Entities.Entities
end;

{$IfEnd} //not Admin AND not Monitorings

end.