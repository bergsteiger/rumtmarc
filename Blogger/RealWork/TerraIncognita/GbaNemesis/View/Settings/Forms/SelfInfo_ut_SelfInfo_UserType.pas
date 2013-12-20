unit SelfInfo_ut_SelfInfo_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Settings/Forms/SelfInfo_ut_SelfInfo_UserType.pas"
// �����: 09.09.2009 16:29
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 �������� ����������::Settings::View::Settings::Settings::SelfInfo::ut_SelfInfo
//
// SelfInfo
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
    { ��������� ��� ���� ����� ut_SelfInfo }
   ut_SelfInfoName = 'ut_SelfInfo';
    { ��������� ������������� ����������������� ���� "SelfInfo" }
   ut_SelfInfo = TvcmUserType(0);
    { SelfInfo }

type
   Tkw_FormUserType_ut_SelfInfo = class(TtfwInteger)
    {* ����� ������� ��� ���� ����� ut_SelfInfo }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FormUserType_ut_SelfInfo
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_ut_SelfInfo

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_SelfInfo.GetInteger: Integer;
 {-}
begin
 Result := ut_SelfInfo;
end;//Tkw_FormUserType_ut_SelfInfo.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_ut_SelfInfo
 Tkw_FormUserType_ut_SelfInfo.Register('���_�����::ut_SelfInfo');
{$IfEnd} //not Admin AND not Monitorings

end.