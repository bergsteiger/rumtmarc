unit elCustomEdit_ut_elCustomEdit_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Forms"
// ������: "w:/common/components/gui/Garant/Daily/Forms/elCustomEdit_ut_elCustomEdit_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> Shared Delphi Operations For Tests::TestForms::Forms::Everest::elCustomEdit::ut_elCustomEdit
//
// ����� ��� ������������ TelCustomEdit
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
   { ��������� ��� ���� ����� ut_elCustomEdit }
  ut_elCustomEditName = 'ut_elCustomEdit';
   { ��������� ������������� ����������������� ���� "����� ��� ������������ TelCustomEdit" }
  ut_elCustomEdit = TvcmUserType(0);
   { ����� ��� ������������ TelCustomEdit }

type
  Tkw_FormUserType_ut_elCustomEdit = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� ut_elCustomEdit }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_ut_elCustomEdit
{$IfEnd} //nsTest AND not NoVCM

implementation

{$If defined(nsTest) AND not defined(NoVCM)}
// start class Tkw_FormUserType_ut_elCustomEdit

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_elCustomEdit.GetInteger: Integer;
 {-}
begin
 Result := ut_elCustomEdit;
end;//Tkw_FormUserType_ut_elCustomEdit.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //nsTest AND not NoVCM

initialization
{$If defined(nsTest) AND not defined(NoVCM)}
// ����������� Tkw_FormUserType_ut_elCustomEdit
 Tkw_FormUserType_ut_elCustomEdit.Register('���_�����::ut_elCustomEdit');
{$IfEnd} //nsTest AND not NoVCM

end.