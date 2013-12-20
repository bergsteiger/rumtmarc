unit DocumentUserTypes_dftAACContentsRight_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftAACContentsRight_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftAACContentsRight
//
// ������ ����� ���������� ������������ �������
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
  DocumentUserTypes_dftAACContentsLeft_UserType
  ;

const
   { ��������� ��� ���� ����� dftAACContentsRight }
  dftAACContentsRightName = 'dftAACContentsRight';
   { ��������� ������������� ����������������� ���� "������ ����� ���������� ������������ �������" }
  dftAACContentsRight = TvcmUserType(dftAACContentsLeft + 1);
   { ������ ����� ���������� ������������ ������� }

type
  Tkw_FormUserType_dftAACContentsRight = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� dftAACContentsRight }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftAACContentsRight
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftAACContentsRight

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftAACContentsRight.GetInteger: Integer;
 {-}
begin
 Result := dftAACContentsRight;
end;//Tkw_FormUserType_dftAACContentsRight.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_dftAACContentsRight
 Tkw_FormUserType_dftAACContentsRight.Register('���_�����::dftAACContentsRight');
{$IfEnd} //not Admin AND not Monitorings

end.