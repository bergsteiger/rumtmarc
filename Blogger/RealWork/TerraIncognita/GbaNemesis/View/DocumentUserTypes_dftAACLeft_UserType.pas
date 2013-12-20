unit DocumentUserTypes_dftAACLeft_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftAACLeft_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftAACLeft
//
// ����� ����� ������������ �������
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
  DocumentUserTypes_dftDrugSynchroView_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� dftAACLeft }
  dftAACLeftName = 'dftAACLeft';
   { ��������� ������������� ����������������� ���� "����� ����� ������������ �������" }
  dftAACLeft = TvcmUserType(dftDrugSynchroView + 1);
   { ����� ����� ������������ ������� }

type
  Tkw_FormUserType_dftAACLeft = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� dftAACLeft }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftAACLeft
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftAACLeft

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftAACLeft.GetInteger: Integer;
 {-}
begin
 Result := dftAACLeft;
end;//Tkw_FormUserType_dftAACLeft.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_dftAACLeft
 Tkw_FormUserType_dftAACLeft.Register('���_�����::dftAACLeft');
{$IfEnd} //not Admin AND not Monitorings

end.