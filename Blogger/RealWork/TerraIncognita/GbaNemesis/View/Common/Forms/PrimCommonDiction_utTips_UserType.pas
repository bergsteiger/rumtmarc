unit PrimCommonDiction_utTips_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/PrimCommonDiction_utTips_UserType.pas"
// �����: 27.01.2009 12:45
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Common::View::Common::PrimCommonDiction::utTips
//
// ����� ���
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
   { ��������� ��� ���� ����� utTips }
  utTipsName = 'utTips';
   { ��������� ������������� ����������������� ���� "����� ���" }
  utTips = TvcmUserType(0);
   { ����� ��� }

type
  Tkw_FormUserType_utTips = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utTips }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utTips
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utTips

{$If not defined(NoScripts)}
function Tkw_FormUserType_utTips.GetInteger: Integer;
 {-}
begin
 Result := utTips;
end;//Tkw_FormUserType_utTips.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_utTips
 Tkw_FormUserType_utTips.Register('���_�����::utTips');
{$IfEnd} //not Admin AND not Monitorings

end.