unit PrimAdmin_utAdmin_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Admin/Forms/PrimAdmin_utAdmin_UserType.pas"
// �����: 11.11.2009 21:24
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 �������������::Admin::View::Admin::PrimAdmin::utAdmin
//
// ����������������� �������������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If defined(Admin)}
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
   { ��������� ��� ���� ����� utAdmin }
  utAdminName = 'utAdmin';
   { ��������� ������������� ����������������� ���� "����������������� �������������" }
  utAdmin = TvcmUserType(0);
   { ����������������� ������������� }

type
  Tkw_FormUserType_utAdmin = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utAdmin }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utAdmin
{$IfEnd} //Admin

implementation

{$If defined(Admin)}
// start class Tkw_FormUserType_utAdmin

{$If not defined(NoScripts)}
function Tkw_FormUserType_utAdmin.GetInteger: Integer;
 {-}
begin
 Result := utAdmin;
end;//Tkw_FormUserType_utAdmin.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //Admin

initialization
{$If defined(Admin)}
// ����������� Tkw_FormUserType_utAdmin
 Tkw_FormUserType_utAdmin.Register('���_�����::utAdmin');
{$IfEnd} //Admin

end.