unit DocumentUserTypes_dftAACRight_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftAACRight_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftAACRight
//
// ������ ����� ������������ �������
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
  DocumentUserTypes_dftAACLeft_UserType
  ;

const
   { ��������� ��� ���� ����� dftAACRight }
  dftAACRightName = 'dftAACRight';
   { ��������� ������������� ����������������� ���� "������ ����� ������������ �������" }
  dftAACRight = TvcmUserType(dftAACLeft + 1);
   { ������ ����� ������������ ������� }

type
  Tkw_FormUserType_dftAACRight = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� dftAACRight }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftAACRight
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftAACRight

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftAACRight.GetInteger: Integer;
 {-}
begin
 Result := dftAACRight;
end;//Tkw_FormUserType_dftAACRight.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_dftAACRight
 Tkw_FormUserType_dftAACRight.Register('���_�����::dftAACRight');
{$IfEnd} //not Admin AND not Monitorings

end.