unit PrimCommonDiction_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/PrimCommonDiction_Form.pas"
// �����: 27.01.2009 12:45
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Core::Common::View::Common::PrimCommonDiction
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
  CommonDictionInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  l3StringIDEx,
  PrimCommonDiction_utTips_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  DocumentAndListInterfaces,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a},
  vcmControllers {a},
  PrimCommonDiction_utMedicDiction_UserType
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 _BaseDocument_Parent_ = TvcmEntityForm;
 {$Include ..\Forms\BaseDocument.imp.pas}
 TPrimCommonDictionForm = {form} class(_BaseDocument_)
 protected
  procedure SignalDataSourceChanged(const anOld : IvcmViewAreaController;
                                const aDsNew : IvcmViewAreaController); override;
  procedure MakeControls; override;
 public
 // overridden public methods
   {$If not defined(NoVCM)}
   function NeedDrawCaption: Boolean; override;
     {* ����� �� �������� ��������� ���� }
   {$IfEnd} //not NoVCM
 protected
 // protected fields
   dsCommonDiction : IdsCommonDiction;
 end;//TPrimCommonDictionForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3MessageID,
  SysUtils {a},
  StdRes {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

{$Include ..\Forms\BaseDocument.imp.pas}

var
   { ������������ ������ utTipsLocalConstants }
  str_utTipsCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utTipsCaption'; rValue : '����� ���');
   { ��������� ����������������� ���� "����� ���" }
  str_utTipsSettingsCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utTipsSettingsCaption'; rValue : '����� ���: ������ ������� (�������)');
   { ��������� ����������������� ���� "����� ���" ��� ��������� ������� ������������ }

var
   { ������������ ������ utMedicDictionLocalConstants }
  str_utMedicDictionCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utMedicDictionCaption'; rValue : '������� ����������� ��������');
   { ��������� ����������������� ���� "������� ����������� ��������" }
  str_utMedicDictionSettingsCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utMedicDictionSettingsCaption'; rValue : '������� ����������� ��������: ������ �������� (�������)');
   { ��������� ����������������� ���� "������� ����������� ��������" ��� ��������� ������� ������������ }

// start class TPrimCommonDictionForm

{$If not defined(NoVCM)}
function TPrimCommonDictionForm.NeedDrawCaption: Boolean;
//#UC START# *4A84183701B9_497ED770029D_var*
//#UC END# *4A84183701B9_497ED770029D_var*
begin
//#UC START# *4A84183701B9_497ED770029D_impl*
 Result := false;
//#UC END# *4A84183701B9_497ED770029D_impl*
end;//TPrimCommonDictionForm.NeedDrawCaption
{$IfEnd} //not NoVCM

procedure TPrimCommonDictionForm.SignalDataSourceChanged(const anOld : IvcmViewAreaController;
 const aDsNew : IvcmViewAreaController);
begin
 inherited;
 if (aDsNew = nil) then
 begin
  dsCommonDiction := nil;
 end//aDsNew = nil
 else
 begin
  Supports(aDsNew, IdsCommonDiction, dsCommonDiction);
 end;//aDsNew = nil
end;

procedure TPrimCommonDictionForm.MakeControls;
begin
 inherited;
 with AddUsertype(utTipsName,
  str_utTipsCaption,
  str_utTipsSettingsCaption,
  true,
  175,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccDisable) do
 begin
 end;//with AddUsertype(utTipsName
 with AddUsertype(utMedicDictionName,
  str_utMedicDictionCaption,
  str_utMedicDictionSettingsCaption,
  true,
  182,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccDisable) do
 begin
 end;//with AddUsertype(utMedicDictionName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ������������� str_utTipsCaption
 str_utTipsCaption.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ������������� str_utTipsSettingsCaption
 str_utTipsSettingsCaption.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ������������� str_utMedicDictionCaption
 str_utMedicDictionCaption.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ������������� str_utMedicDictionSettingsCaption
 str_utMedicDictionSettingsCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.