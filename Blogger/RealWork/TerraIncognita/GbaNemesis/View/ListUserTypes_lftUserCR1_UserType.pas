unit ListUserTypes_lftUserCR1_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/ListUserTypes_lftUserCR1_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ListUserTypes::lftUserCR1
//
// ������������� ������� ��������� ���������� 1
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
  ListUserTypes_lftRCToPart_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� lftUserCR1 }
  lftUserCR1Name = 'lftUserCR1';
   { ��������� ������������� ����������������� ���� "������������� ������� ��������� ���������� 1" }
  lftUserCR1 = TvcmUserType(lftRCToPart + 1);
   { ������������� ������� ��������� ���������� 1 }

type
  Tkw_FormUserType_lftUserCR1 = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� lftUserCR1 }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_lftUserCR1
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_lftUserCR1

{$If not defined(NoScripts)}
function Tkw_FormUserType_lftUserCR1.GetInteger: Integer;
 {-}
begin
 Result := lftUserCR1;
end;//Tkw_FormUserType_lftUserCR1.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_lftUserCR1
 Tkw_FormUserType_lftUserCR1.Register('���_�����::lftUserCR1');
{$IfEnd} //not Admin AND not Monitorings

end.