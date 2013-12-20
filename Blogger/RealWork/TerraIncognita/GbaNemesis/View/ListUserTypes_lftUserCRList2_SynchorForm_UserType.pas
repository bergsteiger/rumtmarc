unit ListUserTypes_lftUserCRList2_SynchorForm_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/ListUserTypes_lftUserCRList2_SynchorForm_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ListUserTypes::lftUserCRList2_SynchorForm
//
// ���������� �������� (������������� ������� ��������� ���������� 2)
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
  ListUserTypes_lftUserCRList1_SynchorForm_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� lftUserCRList2_SynchorForm }
  lftUserCRList2_SynchorFormName = 'lftUserCRList2_SynchorForm';
   { ��������� ������������� ����������������� ���� "���������� �������� (������������� ������� ��������� ���������� 2)" }
  lftUserCRList2_SynchorForm = TvcmUserType(lftUserCRList1_SynchorForm + 1);
   { ���������� �������� (������������� ������� ��������� ���������� 2) }

type
  Tkw_FormUserType_lftUserCRList2_SynchorForm = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� lftUserCRList2_SynchorForm }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_lftUserCRList2_SynchorForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_lftUserCRList2_SynchorForm

{$If not defined(NoScripts)}
function Tkw_FormUserType_lftUserCRList2_SynchorForm.GetInteger: Integer;
 {-}
begin
 Result := lftUserCRList2_SynchorForm;
end;//Tkw_FormUserType_lftUserCRList2_SynchorForm.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_lftUserCRList2_SynchorForm
 Tkw_FormUserType_lftUserCRList2_SynchorForm.Register('���_�����::lftUserCRList2_SynchorForm');
{$IfEnd} //not Admin AND not Monitorings

end.