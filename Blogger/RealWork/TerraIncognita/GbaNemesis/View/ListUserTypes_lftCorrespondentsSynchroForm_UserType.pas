unit ListUserTypes_lftCorrespondentsSynchroForm_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/ListUserTypes_lftCorrespondentsSynchroForm_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ListUserTypes::lftCorrespondentsSynchroForm
//
// ���������� �������� (������ �� ��������)
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
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  ListUserTypes_lftSimilarDocumentsSynchroView_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� lftCorrespondentsSynchroForm }
  lftCorrespondentsSynchroFormName = 'lftCorrespondentsSynchroForm';
   { ��������� ������������� ����������������� ���� "���������� �������� (������ �� ��������)" }
  lftCorrespondentsSynchroForm = TvcmUserType(lftSimilarDocumentsSynchroView + 1);
   { ���������� �������� (������ �� ��������) }

type
  Tkw_FormUserType_lftCorrespondentsSynchroForm = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� lftCorrespondentsSynchroForm }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_lftCorrespondentsSynchroForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_lftCorrespondentsSynchroForm

{$If not defined(NoScripts)}
function Tkw_FormUserType_lftCorrespondentsSynchroForm.GetInteger: Integer;
 {-}
begin
 Result := lftCorrespondentsSynchroForm;
end;//Tkw_FormUserType_lftCorrespondentsSynchroForm.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_lftCorrespondentsSynchroForm
 Tkw_FormUserType_lftCorrespondentsSynchroForm.Register('���_�����::lftCorrespondentsSynchroForm');
{$IfEnd} //not Admin AND not Monitorings

end.