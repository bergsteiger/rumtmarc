unit PrimSaveLoadUserTypes_slqtOldKW_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View$For F1 and Monitorings"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimSaveLoadUserTypes_slqtOldKW_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::PrimSaveLoadUserTypes::slqtOldKW
//
// �����: �� ��������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  PrimSaveLoadUserTypes_slqtKW_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� slqtOldKW }
  slqtOldKWName = 'slqtOldKW';
   { ��������� ������������� ����������������� ���� "�����: �� ��������" }
  slqtOldKW = TvcmUserType(slqtKW + 1);
   { �����: �� �������� }

type
  Tkw_FormUserType_slqtOldKW = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� slqtOldKW }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_slqtOldKW
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}
// start class Tkw_FormUserType_slqtOldKW

{$If not defined(NoScripts)}
function Tkw_FormUserType_slqtOldKW.GetInteger: Integer;
 {-}
begin
 Result := slqtOldKW;
end;//Tkw_FormUserType_slqtOldKW.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// ����������� Tkw_FormUserType_slqtOldKW
 Tkw_FormUserType_slqtOldKW.Register('���_�����::slqtOldKW');
{$IfEnd} //not Admin

end.