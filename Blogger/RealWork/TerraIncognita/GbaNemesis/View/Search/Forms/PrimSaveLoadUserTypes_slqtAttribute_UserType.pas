unit PrimSaveLoadUserTypes_slqtAttribute_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View$For F1 and Monitorings"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimSaveLoadUserTypes_slqtAttribute_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::PrimSaveLoadUserTypes::slqtAttribute
//
// �����: �� ����������
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
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� slqtAttribute }
  slqtAttributeName = 'slqtAttribute';
   { ��������� ������������� ����������������� ���� "�����: �� ����������" }
  slqtAttribute = TvcmUserType(0);
   { �����: �� ���������� }

type
  Tkw_FormUserType_slqtAttribute = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� slqtAttribute }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_slqtAttribute
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}
// start class Tkw_FormUserType_slqtAttribute

{$If not defined(NoScripts)}
function Tkw_FormUserType_slqtAttribute.GetInteger: Integer;
 {-}
begin
 Result := slqtAttribute;
end;//Tkw_FormUserType_slqtAttribute.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// ����������� Tkw_FormUserType_slqtAttribute
 Tkw_FormUserType_slqtAttribute.Register('���_�����::slqtAttribute');
{$IfEnd} //not Admin

end.