unit PrimConfigurationList_utConfigurationList_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Settings/Forms/PrimConfigurationList_utConfigurationList_UserType.pas"
// �����: 27.04.2010 22:06
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 �������� ����������::Settings::View::Settings::PrimConfigurationList::utConfigurationList
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
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� utConfigurationList }
  utConfigurationListName = 'utConfigurationList';
   { ��������� ������������� ����������������� ���� "������������" }
  utConfigurationList = TvcmUserType(0);
   { ������������ }

type
  Tkw_FormUserType_utConfigurationList = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utConfigurationList }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utConfigurationList
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utConfigurationList

{$If not defined(NoScripts)}
function Tkw_FormUserType_utConfigurationList.GetInteger: Integer;
 {-}
begin
 Result := utConfigurationList;
end;//Tkw_FormUserType_utConfigurationList.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_utConfigurationList
 Tkw_FormUserType_utConfigurationList.Register('���_�����::utConfigurationList');
{$IfEnd} //not Admin AND not Monitorings

end.