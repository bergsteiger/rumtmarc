unit PrimConsultationMark_utcmMain_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Consultation/Forms/PrimConsultationMark_utcmMain_UserType.pas"
// �����: 27.01.2009 13:06
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ���������������� �������::Consultation::View::Consultation::PrimConsultationMark::utcmMain
//
// ������ ������
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
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� utcmMain }
  utcmMainName = 'utcmMain';
   { ��������� ������������� ����������������� ���� "������ ������" }
  utcmMain = TvcmUserType(0);
   { ������ ������ }

type
  Tkw_FormUserType_utcmMain = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utcmMain }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utcmMain
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utcmMain

{$If not defined(NoScripts)}
function Tkw_FormUserType_utcmMain.GetInteger: Integer;
 {-}
begin
 Result := utcmMain;
end;//Tkw_FormUserType_utcmMain.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_utcmMain
 Tkw_FormUserType_utcmMain.Register('���_�����::utcmMain');
{$IfEnd} //not Admin AND not Monitorings

end.