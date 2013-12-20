unit DocumentUserTypes_dftTips_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftTips_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftTips
//
// ����� ���
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
  DocumentUserTypes_dftAnnotationSynchroView_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� dftTips }
  dftTipsName = 'dftTips';
   { ��������� ������������� ����������������� ���� "����� ���" }
  dftTips = TvcmUserType(dftAnnotationSynchroView + 1);
   { ����� ��� }

type
  Tkw_FormUserType_dftTips = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� dftTips }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftTips
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftTips

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftTips.GetInteger: Integer;
 {-}
begin
 Result := dftTips;
end;//Tkw_FormUserType_dftTips.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_dftTips
 Tkw_FormUserType_dftTips.Register('���_�����::dftTips');
{$IfEnd} //not Admin AND not Monitorings

end.