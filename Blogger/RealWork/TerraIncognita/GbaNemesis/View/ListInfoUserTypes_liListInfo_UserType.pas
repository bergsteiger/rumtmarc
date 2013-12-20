unit ListInfoUserTypes_liListInfo_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/ListInfoUserTypes_liListInfo_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ListInfoUserTypes::liListInfo
//
// ������� � ������
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
   { ��������� ��� ���� ����� liListInfo }
  liListInfoName = 'liListInfo';
   { ��������� ������������� ����������������� ���� "������� � ������" }
  liListInfo = TvcmUserType(0);
   { ������� � ������ }

type
  Tkw_FormUserType_liListInfo = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� liListInfo }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_liListInfo
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_liListInfo

{$If not defined(NoScripts)}
function Tkw_FormUserType_liListInfo.GetInteger: Integer;
 {-}
begin
 Result := liListInfo;
end;//Tkw_FormUserType_liListInfo.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_liListInfo
 Tkw_FormUserType_liListInfo.Register('���_�����::liListInfo');
{$IfEnd} //not Admin AND not Monitorings

end.