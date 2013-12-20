unit NOT_FINISHED_TurnOffTimeMachine_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/NOT_FINISHED_TurnOffTimeMachine_Form.pas"
// �����: 24.08.2009 20:35
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Core::Common::View::Common::PrimF1Common::TurnOffTimeMachine
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
  PrimTurnOffTimeMachineOptions_Form
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  TurnOffTimeMachine_ut_TurnOffTimeMachine_UserType,
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
  Ten_TurnOffTimeMachine = {final form} class(TvcmEntityFormRef)
  Entities : TvcmEntities;
  rb_totmChangeDate: TvtRadioButton;
  rb_totmStayInCurrentRedaction: TvtRadioButton;
  rb_totmGotoActualRedaction: TvtRadioButton;
  deChangeDate: TvtDblClickDateEdit;
  protected
   procedure MakeControls; override;
  end;//Ten_TurnOffTimeMachine

  TTurnOffTimeMachineForm = Ten_TurnOffTimeMachine;
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
    { ������������ ������ ut_TurnOffTimeMachineLocalConstants }
   str_ut_TurnOffTimeMachineCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_TurnOffTimeMachineCaption'; rValue : 'TurnOffTimeMachine');
    { ��������� ����������������� ���� "TurnOffTimeMachine" }

// start class Ten_TurnOffTimeMachine

procedure Ten_TurnOffTimeMachine.MakeControls;
begin
 inherited;
 with AddUsertype(ut_TurnOffTimeMachineName,
  str_ut_TurnOffTimeMachineCaption,
  str_ut_TurnOffTimeMachineCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_TurnOffTimeMachineName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ������������� str_ut_TurnOffTimeMachineCaption
 str_ut_TurnOffTimeMachineCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.