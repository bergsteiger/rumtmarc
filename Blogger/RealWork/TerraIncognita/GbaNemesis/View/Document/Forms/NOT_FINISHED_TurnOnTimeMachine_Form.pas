unit NOT_FINISHED_TurnOnTimeMachine_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Document/Forms/NOT_FINISHED_TurnOnTimeMachine_Form.pas"
// Начат: 05.02.2009 19:28
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Работа с документом и списком документов::Document::View::Document::Document::TurnOnTimeMachine
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
    { Локализуемые строки ut_TurnOnTimeMachineLocalConstants }
   str_ut_TurnOnTimeMachineCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_TurnOnTimeMachineCaption'; rValue : 'TurnOnTimeMachine');
    { Заголовок пользовательского типа "TurnOnTimeMachine" }

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
// Инициализация str_ut_TurnOnTimeMachineCaption
 str_ut_TurnOnTimeMachineCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.