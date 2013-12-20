unit DocumentUserTypes_dftAutoreferat_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftAutoreferat_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftAutoreferat
//
// �����. ��� ��������� �����
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
  DocumentUserTypes_dftMedDictEntry_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� dftAutoreferat }
  dftAutoreferatName = 'dftAutoreferat';
   { ��������� ������������� ����������������� ���� "�����. ��� ��������� �����" }
  dftAutoreferat = TvcmUserType(dftMedDictEntry + 1);
   { �����. ��� ��������� ����� }

type
  Tkw_FormUserType_dftAutoreferat = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� dftAutoreferat }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftAutoreferat
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftAutoreferat

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftAutoreferat.GetInteger: Integer;
 {-}
begin
 Result := dftAutoreferat;
end;//Tkw_FormUserType_dftAutoreferat.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_dftAutoreferat
 Tkw_FormUserType_dftAutoreferat.Register('���_�����::dftAutoreferat');
{$IfEnd} //not Admin AND not Monitorings

end.