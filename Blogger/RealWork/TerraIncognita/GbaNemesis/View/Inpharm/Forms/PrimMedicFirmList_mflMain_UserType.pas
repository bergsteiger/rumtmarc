unit PrimMedicFirmList_mflMain_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Inpharm/Forms/PrimMedicFirmList_mflMain_UserType.pas"
// �����: 27.01.2009 13:42
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ���������� ��������::Inpharm::View::Inpharm::PrimMedicFirmList::mflMain
//
// ���������������� ����� (������ ������)
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
   { ��������� ��� ���� ����� mflMain }
  mflMainName = 'mflMain';
   { ��������� ������������� ����������������� ���� "���������������� ����� (������ ������)" }
  mflMain = TvcmUserType(0);
   { ���������������� ����� (������ ������) }

type
  Tkw_FormUserType_mflMain = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� mflMain }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_mflMain
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_mflMain

{$If not defined(NoScripts)}
function Tkw_FormUserType_mflMain.GetInteger: Integer;
 {-}
begin
 Result := mflMain;
end;//Tkw_FormUserType_mflMain.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_mflMain
 Tkw_FormUserType_mflMain.Register('���_�����::mflMain');
{$IfEnd} //not Admin AND not Monitorings

end.