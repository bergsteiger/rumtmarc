unit PrimTurnOnTimeMachineOptions_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/PrimTurnOnTimeMachineOptions_Form.pas"
// �����: 10.09.2010 15:50
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 ������ � ���������� � ������� ����������::Document::View::TimeMachine::PrimTurnOnTimeMachineOptions
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
  PrimTurnOnTimeMachine_Form,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TPrimTurnOnTimeMachineOptionsForm = {form} class(TPrimTurnOnTimeMachineForm)
 protected
  procedure InitEntities; override;
 end;//TPrimTurnOnTimeMachineOptionsForm

 TvcmEntityFormRef = TPrimTurnOnTimeMachineOptionsForm;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  StdRes {a},
  OfficeLike_Result_Controls
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TPrimTurnOnTimeMachineOptionsForm

procedure TPrimTurnOnTimeMachineOptionsForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  
  ShowInContextMenu(en_Result, op_Ok, false);
  ShowInToolbar(en_Result, op_Ok, false);
  
  ShowInContextMenu(en_Result, op_Cancel, false);
  ShowInToolbar(en_Result, op_Cancel, false);
 end;//with Entities.Entities
end;

{$IfEnd} //not Admin AND not Monitorings

end.