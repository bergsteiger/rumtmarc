unit TextLoad_ut_TextLoad_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Forms"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Daily/Forms/TextLoad_ut_TextLoad_UserType.pas"
// �����: 22.12.2009 16:32
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> Shared Delphi Operations For Tests::TestForms::Forms::Everest::TextLoad::ut_TextLoad
//
// ����� ��� �������� ���������
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
   { ��������� ��� ���� ����� ut_TextLoad }
  ut_TextLoadName = 'ut_TextLoad';
   { ��������� ������������� ����������������� ���� "����� ��� �������� ���������" }
  ut_TextLoad = TvcmUserType(0);
   { ����� ��� �������� ��������� }

type
  Tkw_FormUserType_ut_TextLoad = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� ut_TextLoad }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_ut_TextLoad
{$IfEnd} //nsTest AND not NoVCM

implementation

{$If defined(nsTest) AND not defined(NoVCM)}
// start class Tkw_FormUserType_ut_TextLoad

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_TextLoad.GetInteger: Integer;
 {-}
begin
 Result := ut_TextLoad;
end;//Tkw_FormUserType_ut_TextLoad.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //nsTest AND not NoVCM

initialization
{$If defined(nsTest) AND not defined(NoVCM)}
// ����������� Tkw_FormUserType_ut_TextLoad
 Tkw_FormUserType_ut_TextLoad.Register('���_�����::ut_TextLoad');
{$IfEnd} //nsTest AND not NoVCM

end.