unit OutlinerForm_ut_OutlinerForm_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Forms"
// �����: ������ �.�.
// ������: "w:/common/components/gui/Garant/Daily/Forms/OutlinerForm_ut_OutlinerForm_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> Shared Delphi Operations For Tests::TestForms::Forms::Outliner::OutlinerForm::ut_OutlinerForm
//
// ����� ��� ������������ ������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

interface

{$If defined(nsTest) AND not defined(NoVCM)}
uses
  vcmUserControls
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� ut_OutlinerForm }
  ut_OutlinerFormName = 'ut_OutlinerForm';
   { ��������� ������������� ����������������� ���� "����� ��� ������������ ������" }
  ut_OutlinerForm = TvcmUserType(0);
   { ����� ��� ������������ ������ }

type
  Tkw_FormUserType_ut_OutlinerForm = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� ut_OutlinerForm }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_ut_OutlinerForm
{$IfEnd} //nsTest AND not NoVCM

implementation

{$If defined(nsTest) AND not defined(NoVCM)}
// start class Tkw_FormUserType_ut_OutlinerForm

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_OutlinerForm.GetInteger: Integer;
 {-}
begin
 Result := ut_OutlinerForm;
end;//Tkw_FormUserType_ut_OutlinerForm.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //nsTest AND not NoVCM

initialization
{$If defined(nsTest) AND not defined(NoVCM)}
// ����������� Tkw_FormUserType_ut_OutlinerForm
 Tkw_FormUserType_ut_OutlinerForm.Register('���_�����::ut_OutlinerForm');
{$IfEnd} //nsTest AND not NoVCM

end.