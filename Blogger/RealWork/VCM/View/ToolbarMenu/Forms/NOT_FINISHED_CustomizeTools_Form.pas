unit NOT_FINISHED_CustomizeTools_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/VCM/View/ToolbarMenu/Forms/NOT_FINISHED_CustomizeTools_Form.pas"
// �����: 13.09.2010 19:27
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> Shared Delphi Operations::VCMCustomization::View::ToolbarMenu::PrimToolbarMenu::CustomizeTools
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

// ! ���� ���� ������������ ������ ��� �������������, � �� ��� ����������. !

interface

uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  l3StringIDEx,
  PrimCustomizeTools_Form
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  CustomizeTools_ut_CustomizeTools_UserType,
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;

type
  TCustomizeToolsForm = {final form} class(TvcmEntityFormRef)
  Entities : TvcmEntities;
  protected
   procedure MakeControls; override;
  end;//TCustomizeToolsForm

implementation

{$R *.DFM}

uses
  l3MessageID
  ;

var
    { ������������ ������ ut_CustomizeToolsLocalConstants }
   str_ut_CustomizeToolsCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_CustomizeToolsCaption'; rValue : 'CustomizeTools');
    { ��������� ����������������� ���� "CustomizeTools" }

// start class TCustomizeToolsForm

procedure TCustomizeToolsForm.MakeControls;
begin
 inherited;
 with AddUsertype(ut_CustomizeToolsName,
  str_ut_CustomizeToolsCaption,
  str_ut_CustomizeToolsCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_CustomizeToolsName
end;

initialization
// ������������� str_ut_CustomizeToolsCaption
 str_ut_CustomizeToolsCaption.Init;

end.