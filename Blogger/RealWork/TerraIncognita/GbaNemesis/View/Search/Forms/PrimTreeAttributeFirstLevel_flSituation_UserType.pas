unit PrimTreeAttributeFirstLevel_flSituation_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View$For F1 and Monitorings"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimTreeAttributeFirstLevel_flSituation_UserType.pas"
// �����: 27.01.2009 11:33
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::PrimTreeAttributeFirstLevel::flSituation
//
// �������� ������� ������ (�������)
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
   { ��������� ��� ���� ����� flSituation }
  flSituationName = 'flSituation';
   { ��������� ������������� ����������������� ���� "�������� ������� ������ (�������)" }
  flSituation = TvcmUserType(0);
   { �������� ������� ������ (�������) }

type
  Tkw_FormUserType_flSituation = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� flSituation }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_flSituation
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}
// start class Tkw_FormUserType_flSituation

{$If not defined(NoScripts)}
function Tkw_FormUserType_flSituation.GetInteger: Integer;
 {-}
begin
 Result := flSituation;
end;//Tkw_FormUserType_flSituation.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// ����������� Tkw_FormUserType_flSituation
 Tkw_FormUserType_flSituation.Register('���_�����::flSituation');
{$IfEnd} //not Admin

end.