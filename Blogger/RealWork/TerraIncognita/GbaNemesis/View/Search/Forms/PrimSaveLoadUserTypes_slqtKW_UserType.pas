unit PrimSaveLoadUserTypes_slqtKW_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View$For F1 and Monitorings"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimSaveLoadUserTypes_slqtKW_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::PrimSaveLoadUserTypes::slqtKW
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
  PrimSaveLoadUserTypes_slqtAttribute_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� slqtKW }
  slqtKWName = 'slqtKW';
   { ��������� ������������� ����������������� ���� "�����: �� ��������" }
  slqtKW = TvcmUserType(slqtAttribute + 1);
   { �����: �� �������� }

type
  Tkw_FormUserType_slqtKW = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� slqtKW }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_slqtKW
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}
// start class Tkw_FormUserType_slqtKW

{$If not defined(NoScripts)}
function Tkw_FormUserType_slqtKW.GetInteger: Integer;
 {-}
begin
 Result := slqtKW;
end;//Tkw_FormUserType_slqtKW.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// ����������� Tkw_FormUserType_slqtKW
 Tkw_FormUserType_slqtKW.Register('���_�����::slqtKW');
{$IfEnd} //not Admin

end.