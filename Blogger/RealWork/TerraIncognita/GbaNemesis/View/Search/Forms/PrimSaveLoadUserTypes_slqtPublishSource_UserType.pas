unit PrimSaveLoadUserTypes_slqtPublishSource_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View$For F1 and Monitorings"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimSaveLoadUserTypes_slqtPublishSource_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::PrimSaveLoadUserTypes::slqtPublishSource
//
// �����: �� ��������� �������������
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
  PrimSaveLoadUserTypes_slqtOldKW_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� slqtPublishSource }
  slqtPublishSourceName = 'slqtPublishSource';
   { ��������� ������������� ����������������� ���� "�����: �� ��������� �������������" }
  slqtPublishSource = TvcmUserType(slqtOldKW + 1);
   { �����: �� ��������� ������������� }

type
  Tkw_FormUserType_slqtPublishSource = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� slqtPublishSource }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_slqtPublishSource
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}
// start class Tkw_FormUserType_slqtPublishSource

{$If not defined(NoScripts)}
function Tkw_FormUserType_slqtPublishSource.GetInteger: Integer;
 {-}
begin
 Result := slqtPublishSource;
end;//Tkw_FormUserType_slqtPublishSource.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// ����������� Tkw_FormUserType_slqtPublishSource
 Tkw_FormUserType_slqtPublishSource.Register('���_�����::slqtPublishSource');
{$IfEnd} //not Admin

end.