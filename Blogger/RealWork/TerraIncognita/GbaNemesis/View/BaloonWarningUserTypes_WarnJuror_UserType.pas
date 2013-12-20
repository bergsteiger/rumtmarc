unit BaloonWarningUserTypes_WarnJuror_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaloonWarningUserTypes_WarnJuror_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::BaloonWarningUserTypes::WarnJuror
//
// ����������� ��������������
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
  ,
  BaloonWarningUserTypes_Fake_UserType
  ;

const
   { ��������� ��� ���� ����� WarnJuror }
  WarnJurorName = 'WarnJuror';
   { ��������� ������������� ����������������� ���� "����������� ��������������" }
  WarnJuror = TvcmUserType(Fake + 1);
   { ����������� �������������� }

type
  Tkw_FormUserType_WarnJuror = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� WarnJuror }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_WarnJuror
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_WarnJuror

{$If not defined(NoScripts)}
function Tkw_FormUserType_WarnJuror.GetInteger: Integer;
 {-}
begin
 Result := WarnJuror;
end;//Tkw_FormUserType_WarnJuror.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_WarnJuror
 Tkw_FormUserType_WarnJuror.Register('���_�����::WarnJuror');
{$IfEnd} //not Admin AND not Monitorings

end.