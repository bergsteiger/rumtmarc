unit PrimEditionsContainer_utEditionsContainer_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Editions/Forms/PrimEditionsContainer_utEditionsContainer_UserType.pas"
// �����: 28.07.2009 13:12
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ���������������� �������::CompareEditions::View::Editions::PrimEditionsContainer::utEditionsContainer
//
// ��������� �������� ���������
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
   { ��������� ��� ���� ����� utEditionsContainer }
  utEditionsContainerName = 'utEditionsContainer';
   { ��������� ������������� ����������������� ���� "��������� �������� ���������" }
  utEditionsContainer = TvcmUserType(0);
   { ��������� �������� ��������� }

type
  Tkw_FormUserType_utEditionsContainer = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utEditionsContainer }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utEditionsContainer
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utEditionsContainer

{$If not defined(NoScripts)}
function Tkw_FormUserType_utEditionsContainer.GetInteger: Integer;
 {-}
begin
 Result := utEditionsContainer;
end;//Tkw_FormUserType_utEditionsContainer.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_utEditionsContainer
 Tkw_FormUserType_utEditionsContainer.Register('���_�����::utEditionsContainer');
{$IfEnd} //not Admin AND not Monitorings

end.