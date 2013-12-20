unit NOT_FINISHED_LongProcess_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/PrimCommon/Forms/NOT_FINISHED_LongProcess_Form.pas"
// �����: 21.08.2009 20:15
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 ������� ����������� ���������� �������::F1 Application Template::View::PrimCommon::PrimCommon::LongProcess
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ���� ���� ������������ ������ ��� �������������, � �� ��� ����������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  PrimLongProcess_Form,
  l3StringIDEx
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  LongProcess_ut_LongProcess_UserType,
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;

type
  TLongProcessForm = {final form} class(TvcmEntityFormRef)
  Entities : TvcmEntities;
  protected
   procedure MakeControls; override;
  protected
  // realized methods
   procedure Prepare; override;
  end;//TLongProcessForm

implementation

{$R *.DFM}

uses
  l3MessageID
  ;

var
    { ������������ ������ ut_LongProcessLocalConstants }
   str_ut_LongProcessCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_LongProcessCaption'; rValue : 'LongProcess');
    { ��������� ����������������� ���� "LongProcess" }

// start class TLongProcessForm

procedure TLongProcessForm.Prepare;
//#UC START# *4AC5FF7100F2_4A93DDCC03E3_var*
//#UC END# *4AC5FF7100F2_4A93DDCC03E3_var*
begin
//#UC START# *4AC5FF7100F2_4A93DDCC03E3_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AC5FF7100F2_4A93DDCC03E3_impl*
end;//TLongProcessForm.Prepare

procedure TLongProcessForm.MakeControls;
begin
 inherited;
 with AddUsertype(ut_LongProcessName,
  str_ut_LongProcessCaption,
  str_ut_LongProcessCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_LongProcessName
end;

initialization
// ������������� str_ut_LongProcessCaption
 str_ut_LongProcessCaption.Init;

end.