unit PrimDiction_utDiction_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Diction/Forms/PrimDiction_utDiction_UserType.pas"
// �����: 23.01.2009 17:29
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ���������� ��������::Diction::View::Diction::PrimDiction::utDiction
//
// �������� �������
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
   { ��������� ��� ���� ����� utDiction }
  utDictionName = 'utDiction';
   { ��������� ������������� ����������������� ���� "�������� �������" }
  utDiction = TvcmUserType(0);
   { �������� ������� }

type
  Tkw_FormUserType_utDiction = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utDiction }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utDiction
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utDiction

{$If not defined(NoScripts)}
function Tkw_FormUserType_utDiction.GetInteger: Integer;
 {-}
begin
 Result := utDiction;
end;//Tkw_FormUserType_utDiction.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_utDiction
 Tkw_FormUserType_utDiction.Register('���_�����::utDiction');
{$IfEnd} //not Admin AND not Monitorings

end.