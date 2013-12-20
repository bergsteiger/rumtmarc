unit DocumentUserTypes_dftMedDictEntry_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftMedDictEntry_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftMedDictEntry
//
// �������� ������������ �������
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
  DocumentUserTypes_dftTips_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� dftMedDictEntry }
  dftMedDictEntryName = 'dftMedDictEntry';
   { ��������� ������������� ����������������� ���� "�������� ������������ �������" }
  dftMedDictEntry = TvcmUserType(dftTips + 1);
   { �������� ������������ ������� }

type
  Tkw_FormUserType_dftMedDictEntry = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� dftMedDictEntry }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftMedDictEntry
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftMedDictEntry

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftMedDictEntry.GetInteger: Integer;
 {-}
begin
 Result := dftMedDictEntry;
end;//Tkw_FormUserType_dftMedDictEntry.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_dftMedDictEntry
 Tkw_FormUserType_dftMedDictEntry.Register('���_�����::dftMedDictEntry');
{$IfEnd} //not Admin AND not Monitorings

end.