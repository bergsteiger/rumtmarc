unit NOT_FINISHED_TurnOnTimeMachine_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Document/Forms/NOT_FINISHED_TurnOnTimeMachine_Form.pas"
// �����: 05.02.2009 19:28
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 ������ � ���������� � ������� ����������::Document::View::Document::Document::TurnOnTimeMachine
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ���� ���� ������������ ������ ��� �������������, � �� ��� ����������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  l3StringIDEx,
  PrimTurnOnTimeMachineOptions_Form
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  TurnOnTimeMachine_ut_TurnOnTimeMachine_UserType,
  vtRadioButton,
  vtDblClickDateEdit,
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
  Ten_TurnOnTimeMachine = {final form} class(TvcmEntityFormRef)
  Entities : TvcmEntities;
  rb_totmOnDate: TvtRadioButton;
  rb_totmOnCurrentRedation: TvtRadioButton;
  deDate: TvtDblClickDateEdit;
  protected
   procedure MakeControls; override;
  end;//Ten_TurnOnTimeMachine

  TTurnOnTimeMachineForm = Ten_TurnOnTimeMachine;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3MessageID
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
    { ������������ ������ ut_TurnOnTimeMachineLocalConstants }
   str_ut_TurnOnTimeMachineCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_TurnOnTimeMachineCaption'; rValue : 'TurnOnTimeMachine');
    { ��������� ����������������� ���� "TurnOnTimeMachine" }

// start class Ten_TurnOnTimeMachine

procedure Ten_TurnOnTimeMachine.MakeControls;
begin
 inherited;
 with AddUsertype(ut_TurnOnTimeMachineName,
  str_ut_TurnOnTimeMachineCaption,
  str_ut_TurnOnTimeMachineCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_TurnOnTimeMachineName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ������������� str_ut_TurnOnTimeMachineCaption
 str_ut_TurnOnTimeMachineCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.