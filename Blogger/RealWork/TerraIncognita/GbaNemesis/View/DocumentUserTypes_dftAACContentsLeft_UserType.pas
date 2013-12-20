unit DocumentUserTypes_dftAACContentsLeft_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftAACContentsLeft_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftAACContentsLeft
//
// ����� ����� ���������� ������������ �������
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
  DocumentUserTypes_dftAACRight_UserType
  ;

const
   { ��������� ��� ���� ����� dftAACContentsLeft }
  dftAACContentsLeftName = 'dftAACContentsLeft';
   { ��������� ������������� ����������������� ���� "����� ����� ���������� ������������ �������" }
  dftAACContentsLeft = TvcmUserType(dftAACRight + 1);
   { ����� ����� ���������� ������������ ������� }

type
  Tkw_FormUserType_dftAACContentsLeft = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� dftAACContentsLeft }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftAACContentsLeft
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftAACContentsLeft

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftAACContentsLeft.GetInteger: Integer;
 {-}
begin
 Result := dftAACContentsLeft;
end;//Tkw_FormUserType_dftAACContentsLeft.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_dftAACContentsLeft
 Tkw_FormUserType_dftAACContentsLeft.Register('���_�����::dftAACContentsLeft');
{$IfEnd} //not Admin AND not Monitorings

end.