unit PrimCommonDiction_utMedicDiction_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/PrimCommonDiction_utMedicDiction_UserType.pas"
// �����: 27.01.2009 12:45
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Common::View::Common::PrimCommonDiction::utMedicDiction
//
// ������� ����������� ��������
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
  PrimCommonDiction_utTips_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� utMedicDiction }
  utMedicDictionName = 'utMedicDiction';
   { ��������� ������������� ����������������� ���� "������� ����������� ��������" }
  utMedicDiction = TvcmUserType(utTips + 1);
   { ������� ����������� �������� }

type
  Tkw_FormUserType_utMedicDiction = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utMedicDiction }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utMedicDiction
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utMedicDiction

{$If not defined(NoScripts)}
function Tkw_FormUserType_utMedicDiction.GetInteger: Integer;
 {-}
begin
 Result := utMedicDiction;
end;//Tkw_FormUserType_utMedicDiction.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_utMedicDiction
 Tkw_FormUserType_utMedicDiction.Register('���_�����::utMedicDiction');
{$IfEnd} //not Admin AND not Monitorings

end.