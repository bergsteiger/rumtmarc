unit PrimShutDown_sftNone_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/PrimCommon/Forms/PrimShutDown_sftNone_UserType.pas"
// �����: 21.08.2009 21:18
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ������� ����������� ���������� �������::F1 Application Template::View::PrimCommon::PrimShutDown::sftNone
//
// �������������� � �������� ����������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

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
   { ��������� ��� ���� ����� sftNone }
  sftNoneName = 'sftNone';
   { ��������� ������������� ����������������� ���� "�������������� � �������� ����������" }
  sftNone = TvcmUserType(0);
   { �������������� � �������� ���������� }

type
  Tkw_FormUserType_sftNone = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� sftNone }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_sftNone

implementation

// start class Tkw_FormUserType_sftNone

{$If not defined(NoScripts)}
function Tkw_FormUserType_sftNone.GetInteger: Integer;
 {-}
begin
 Result := sftNone;
end;//Tkw_FormUserType_sftNone.GetInteger
{$IfEnd} //not NoScripts

initialization
// ����������� Tkw_FormUserType_sftNone
 Tkw_FormUserType_sftNone.Register('���_�����::sftNone');

end.