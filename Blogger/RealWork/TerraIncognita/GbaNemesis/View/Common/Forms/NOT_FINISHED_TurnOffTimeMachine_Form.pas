unit NOT_FINISHED_TurnOffTimeMachine_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/NOT_FINISHED_TurnOffTimeMachine_Form.pas"
// Начат: 24.08.2009 20:35
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Core::Common::View::Common::PrimF1Common::TurnOffTimeMachine
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
    { Локализуемые строки ut_TurnOffTimeMachineLocalConstants }
   str_ut_TurnOffTimeMachineCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_TurnOffTimeMachineCaption'; rValue : 'TurnOffTimeMachine');
    { Заголовок пользовательского типа "TurnOffTimeMachine" }

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
// Инициализация str_ut_TurnOffTimeMachineCaption
 str_ut_TurnOffTimeMachineCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.