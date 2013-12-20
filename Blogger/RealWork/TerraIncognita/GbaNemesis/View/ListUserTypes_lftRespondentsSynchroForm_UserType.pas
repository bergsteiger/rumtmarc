unit ListUserTypes_lftRespondentsSynchroForm_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/ListUserTypes_lftRespondentsSynchroForm_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ListUserTypes::lftRespondentsSynchroForm
//
// ���������� �������� (������ �� ���������)
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
  ListUserTypes_lftCorrespondentsSynchroForm_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� lftRespondentsSynchroForm }
  lftRespondentsSynchroFormName = 'lftRespondentsSynchroForm';
   { ��������� ������������� ����������������� ���� "���������� �������� (������ �� ���������)" }
  lftRespondentsSynchroForm = TvcmUserType(lftCorrespondentsSynchroForm + 1);
   { ���������� �������� (������ �� ���������) }

type
  Tkw_FormUserType_lftRespondentsSynchroForm = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� lftRespondentsSynchroForm }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_lftRespondentsSynchroForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_lftRespondentsSynchroForm

{$If not defined(NoScripts)}
function Tkw_FormUserType_lftRespondentsSynchroForm.GetInteger: Integer;
 {-}
begin
 Result := lftRespondentsSynchroForm;
end;//Tkw_FormUserType_lftRespondentsSynchroForm.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_lftRespondentsSynchroForm
 Tkw_FormUserType_lftRespondentsSynchroForm.Register('���_�����::lftRespondentsSynchroForm');
{$IfEnd} //not Admin AND not Monitorings

end.