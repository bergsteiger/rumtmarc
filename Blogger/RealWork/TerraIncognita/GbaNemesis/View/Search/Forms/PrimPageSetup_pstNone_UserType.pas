unit PrimPageSetup_pstNone_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View$For F1 and Monitorings"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimPageSetup_pstNone_UserType.pas"
// �����: 15.09.2009 16:19
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::PrimPageSetup::pstNone
//
// ��������� ��������
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
   { ��������� ��� ���� ����� pstNone }
  pstNoneName = 'pstNone';
   { ��������� ������������� ����������������� ���� "��������� ��������" }
  pstNone = TvcmUserType(0);
   { ��������� �������� }

type
  Tkw_FormUserType_pstNone = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� pstNone }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_pstNone
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}
// start class Tkw_FormUserType_pstNone

{$If not defined(NoScripts)}
function Tkw_FormUserType_pstNone.GetInteger: Integer;
 {-}
begin
 Result := pstNone;
end;//Tkw_FormUserType_pstNone.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// ����������� Tkw_FormUserType_pstNone
 Tkw_FormUserType_pstNone.Register('���_�����::pstNone');
{$IfEnd} //not Admin

end.