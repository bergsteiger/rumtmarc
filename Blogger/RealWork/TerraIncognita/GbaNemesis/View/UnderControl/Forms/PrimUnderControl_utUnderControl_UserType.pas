unit PrimUnderControl_utUnderControl_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/UnderControl/Forms/PrimUnderControl_utUnderControl_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ������ � ���������� � ������� ����������::UnderControl::View::UnderControl::PrimUnderControl::utUnderControl
//
// ��������� �� ��������
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
   { ��������� ��� ���� ����� utUnderControl }
  utUnderControlName = 'utUnderControl';
   { ��������� ������������� ����������������� ���� "��������� �� ��������" }
  utUnderControl = TvcmUserType(0);
   { ��������� �� �������� }

type
  Tkw_FormUserType_utUnderControl = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utUnderControl }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utUnderControl
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utUnderControl

{$If not defined(NoScripts)}
function Tkw_FormUserType_utUnderControl.GetInteger: Integer;
 {-}
begin
 Result := utUnderControl;
end;//Tkw_FormUserType_utUnderControl.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_utUnderControl
 Tkw_FormUserType_utUnderControl.Register('���_�����::utUnderControl');
{$IfEnd} //not Admin AND not Monitorings

end.