unit QFLikeTextLoad_ut_QFLikeTextLoad_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Forms"
// ������: "w:/common/components/gui/Garant/Daily/Forms/QFLikeTextLoad_ut_QFLikeTextLoad_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> Shared Delphi Operations For Tests::TestForms::Forms::Everest::QFLikeTextLoad::ut_QFLikeTextLoad
//
// ����� ��� ������ � ��
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
   { ��������� ��� ���� ����� ut_QFLikeTextLoad }
  ut_QFLikeTextLoadName = 'ut_QFLikeTextLoad';
   { ��������� ������������� ����������������� ���� "����� ��� ������ � ��" }
  ut_QFLikeTextLoad = TvcmUserType(0);
   { ����� ��� ������ � �� }

type
  Tkw_FormUserType_ut_QFLikeTextLoad = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� ut_QFLikeTextLoad }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_ut_QFLikeTextLoad
{$IfEnd} //nsTest AND not NoVCM

implementation

{$If defined(nsTest) AND not defined(NoVCM)}
// start class Tkw_FormUserType_ut_QFLikeTextLoad

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_QFLikeTextLoad.GetInteger: Integer;
 {-}
begin
 Result := ut_QFLikeTextLoad;
end;//Tkw_FormUserType_ut_QFLikeTextLoad.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //nsTest AND not NoVCM

initialization
{$If defined(nsTest) AND not defined(NoVCM)}
// ����������� Tkw_FormUserType_ut_QFLikeTextLoad
 Tkw_FormUserType_ut_QFLikeTextLoad.Register('���_�����::ut_QFLikeTextLoad');
{$IfEnd} //nsTest AND not NoVCM

end.