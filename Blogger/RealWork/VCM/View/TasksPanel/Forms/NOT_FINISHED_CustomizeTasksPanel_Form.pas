unit NOT_FINISHED_CustomizeTasksPanel_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/VCM/View/TasksPanel/Forms/NOT_FINISHED_CustomizeTasksPanel_Form.pas"
// Начат: 13.09.2010 20:12
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> Shared Delphi Operations::VCMCustomization::View::TasksPanel::PrimTasksPanelMenu::CustomizeTasksPanel
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

interface

uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  l3StringIDEx,
  PrimCustomizeTasksPanel_Form
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  CustomizeTasksPanel_ut_CustomizeTasksPanel_UserType
  {$If not defined(NoVCM)}
  ,
  vcmTaskPanelInterfaces
  {$IfEnd} //not NoVCM
  ,
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;

type
  TCustomizeTasksPanelForm = {final form} class(TvcmEntityFormRef)
  Entities : TvcmEntities;
  protected
   procedure MakeControls; override;
  protected
  // realized methods
   function pm_GetTasksPanel: IvcmCustOps; override;
   procedure pm_SetTasksPanel(const aValue: IvcmCustOps); override;
  end;//TCustomizeTasksPanelForm

implementation

{$R *.DFM}

uses
  l3MessageID
  ;

var
    { Локализуемые строки ut_CustomizeTasksPanelLocalConstants }
   str_ut_CustomizeTasksPanelCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_CustomizeTasksPanelCaption'; rValue : 'CustomizeTasksPanel');
    { Заголовок пользовательского типа "CustomizeTasksPanel" }

// start class TCustomizeTasksPanelForm

function TCustomizeTasksPanelForm.pm_GetTasksPanel: IvcmCustOps;
//#UC START# *4C8E4F1702F8_4C8E4D4F027Dget_var*
//#UC END# *4C8E4F1702F8_4C8E4D4F027Dget_var*
begin
//#UC START# *4C8E4F1702F8_4C8E4D4F027Dget_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C8E4F1702F8_4C8E4D4F027Dget_impl*
end;//TCustomizeTasksPanelForm.pm_GetTasksPanel

procedure TCustomizeTasksPanelForm.pm_SetTasksPanel(const aValue: IvcmCustOps);
//#UC START# *4C8E4F1702F8_4C8E4D4F027Dset_var*
//#UC END# *4C8E4F1702F8_4C8E4D4F027Dset_var*
begin
//#UC START# *4C8E4F1702F8_4C8E4D4F027Dset_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C8E4F1702F8_4C8E4D4F027Dset_impl*
end;//TCustomizeTasksPanelForm.pm_SetTasksPanel

procedure TCustomizeTasksPanelForm.MakeControls;
begin
 inherited;
 with AddUsertype(ut_CustomizeTasksPanelName,
  str_ut_CustomizeTasksPanelCaption,
  str_ut_CustomizeTasksPanelCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_CustomizeTasksPanelName
end;

initialization
// Инициализация str_ut_CustomizeTasksPanelCaption
 str_ut_CustomizeTasksPanelCaption.Init;

end.