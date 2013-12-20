unit NOT_FINISHED_MemoryUsage_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/NOT_FINISHED_MemoryUsage_Form.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 �������� ��� �����������::F1 Without Usecases::View::Main::MemoryUsage
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
  l3StringIDEx
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  MemoryUsage_ut_MemoryUsage_UserType,
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
 TMemoryUsageForm = {final form} class(TvcmEntityForm)
  Entities : TvcmEntities;
 protected
  procedure MakeControls; override;
 end;//TMemoryUsageForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  kw_Form_MemoryUsage,
  l3MessageID
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
   { ������������ ������ ut_MemoryUsageLocalConstants }
  str_ut_MemoryUsageCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_MemoryUsageCaption'; rValue : 'MemoryUsage');
   { ��������� ����������������� ���� "MemoryUsage" }

// start class TMemoryUsageForm

procedure TMemoryUsageForm.MakeControls;
begin
 inherited;
 with AddUsertype(ut_MemoryUsageName,
  str_ut_MemoryUsageCaption,
  str_ut_MemoryUsageCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_MemoryUsageName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ������������� str_ut_MemoryUsageCaption
 str_ut_MemoryUsageCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.