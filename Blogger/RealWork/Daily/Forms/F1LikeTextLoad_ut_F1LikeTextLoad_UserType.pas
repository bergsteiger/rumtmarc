unit F1LikeTextLoad_ut_F1LikeTextLoad_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Forms"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Daily/Forms/F1LikeTextLoad_ut_F1LikeTextLoad_UserType.pas"
// �����: 23.09.2010 14:51
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> Shared Delphi Operations For Tests::TestForms::Forms::Everest::F1LikeTextLoad::ut_F1LikeTextLoad
//
// F1LikeTextLoad
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
   { ��������� ��� ���� ����� ut_F1LikeTextLoad }
  ut_F1LikeTextLoadName = 'ut_F1LikeTextLoad';
   { ��������� ������������� ����������������� ���� "F1LikeTextLoad" }
  ut_F1LikeTextLoad = TvcmUserType(0);
   { F1LikeTextLoad }

type
  Tkw_FormUserType_ut_F1LikeTextLoad = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� ut_F1LikeTextLoad }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_ut_F1LikeTextLoad
{$IfEnd} //nsTest AND not NoVCM

implementation

{$If defined(nsTest) AND not defined(NoVCM)}
// start class Tkw_FormUserType_ut_F1LikeTextLoad

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_F1LikeTextLoad.GetInteger: Integer;
 {-}
begin
 Result := ut_F1LikeTextLoad;
end;//Tkw_FormUserType_ut_F1LikeTextLoad.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //nsTest AND not NoVCM

initialization
{$If defined(nsTest) AND not defined(NoVCM)}
// ����������� Tkw_FormUserType_ut_F1LikeTextLoad
 Tkw_FormUserType_ut_F1LikeTextLoad.Register('���_�����::ut_F1LikeTextLoad');
{$IfEnd} //nsTest AND not NoVCM

end.