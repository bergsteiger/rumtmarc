unit PrimCustomizeTasksPanel_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/VCM/View/TasksPanel/Forms/PrimCustomizeTasksPanel_Form.pas"
// �����: 13.09.2010
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> Shared Delphi Operations::VCMCustomization::View::TasksPanel::PrimCustomizeTasksPanel
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

interface

uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmTaskPanelInterfaces
  {$IfEnd} //not NoVCM
  ,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a},
  vcmBase {a}
  ;

type
 TPrimCustomizeTasksPanelForm = {form} class(TvcmEntityForm)
 protected
 // property methods
   function pm_GetTasksPanel: IvcmCustOps; virtual; abstract;
   procedure pm_SetTasksPanel(const aValue: IvcmCustOps); virtual; abstract;
 public
 // public methods
   class function Make(const aPanel: IvcmCustOps;
     const aParams : IvcmMakeParams = nil;
     aZoneType     : TvcmZoneType = vcm_ztAny;
     aUserType     : TvcmEffectiveUserType = 0;
     aDataSource   : IvcmFormDataSource = nil): IvcmEntityForm; reintroduce;
     {* ������� }
 public
 // public properties
   property TasksPanel: IvcmCustOps
     read pm_GetTasksPanel
     write pm_SetTasksPanel;
 end;//TPrimCustomizeTasksPanelForm

 TvcmEntityFormRef = TPrimCustomizeTasksPanelForm;

implementation

uses
  StdRes {a},
  l3Base {a}
  ;

// start class TPrimCustomizeTasksPanelForm

class function TPrimCustomizeTasksPanelForm.Make(const aPanel: IvcmCustOps;
  const aParams : IvcmMakeParams = nil;
  aZoneType     : TvcmZoneType = vcm_ztAny;
  aUserType     : TvcmEffectiveUserType = 0;
  aDataSource   : IvcmFormDataSource = nil): IvcmEntityForm;

 procedure AfterCreate(aForm : TPrimCustomizeTasksPanelForm);
 begin
  with aForm do
  begin
//#UC START# *4C8E51FA022E_4C8E4D21001F_impl*
   TasksPanel := aPanel;
//#UC END# *4C8E51FA022E_4C8E4D21001F_impl*
  end;//with aForm
 end;

var
 l_AC : TvcmInitProc;
 l_ACHack : Pointer absolute l_AC;
begin
 l_AC := l3LocalStub(@AfterCreate);
 try
  Result := inherited Make(aParams, aZoneType, aUserType, nil, aDataSource, vcm_utAny, l_AC);
 finally
  l3FreeLocalStub(l_ACHack);
 end;//try..finally
end;

end.