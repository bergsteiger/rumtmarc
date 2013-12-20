unit ListUserTypes_lftUserCR2_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/ListUserTypes_lftUserCR2_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ListUserTypes::lftUserCR2
//
// ������������� ������� ��������� ���������� 2
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
  ListUserTypes_lftUserCR1_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� lftUserCR2 }
  lftUserCR2Name = 'lftUserCR2';
   { ��������� ������������� ����������������� ���� "������������� ������� ��������� ���������� 2" }
  lftUserCR2 = TvcmUserType(lftUserCR1 + 1);
   { ������������� ������� ��������� ���������� 2 }

type
  Tkw_FormUserType_lftUserCR2 = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� lftUserCR2 }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_lftUserCR2
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_lftUserCR2

{$If not defined(NoScripts)}
function Tkw_FormUserType_lftUserCR2.GetInteger: Integer;
 {-}
begin
 Result := lftUserCR2;
end;//Tkw_FormUserType_lftUserCR2.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_lftUserCR2
 Tkw_FormUserType_lftUserCR2.Register('���_�����::lftUserCR2');
{$IfEnd} //not Admin AND not Monitorings

end.