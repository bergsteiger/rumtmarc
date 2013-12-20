unit ListUserTypes_lftConsultation_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/ListUserTypes_lftConsultation_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ListUserTypes::lftConsultation
//
// ������������
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
  ListUserTypes_lftUserCR2_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� lftConsultation }
  lftConsultationName = 'lftConsultation';
   { ��������� ������������� ����������������� ���� "������������" }
  lftConsultation = TvcmUserType(lftUserCR2 + 1);
   { ������������ }

type
  Tkw_FormUserType_lftConsultation = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� lftConsultation }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_lftConsultation
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_lftConsultation

{$If not defined(NoScripts)}
function Tkw_FormUserType_lftConsultation.GetInteger: Integer;
 {-}
begin
 Result := lftConsultation;
end;//Tkw_FormUserType_lftConsultation.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_lftConsultation
 Tkw_FormUserType_lftConsultation.Register('���_�����::lftConsultation');
{$IfEnd} //not Admin AND not Monitorings

end.