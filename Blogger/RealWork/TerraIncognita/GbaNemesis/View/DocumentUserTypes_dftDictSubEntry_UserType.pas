unit DocumentUserTypes_dftDictSubEntry_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftDictSubEntry_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftDictSubEntry
//
// ������� ��������� ������
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
  DocumentUserTypes_dftDictEntry_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� dftDictSubEntry }
  dftDictSubEntryName = 'dftDictSubEntry';
   { ��������� ������������� ����������������� ���� "������� ��������� ������" }
  dftDictSubEntry = TvcmUserType(dftDictEntry + 1);
   { ������� ��������� ������ }

type
  Tkw_FormUserType_dftDictSubEntry = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� dftDictSubEntry }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftDictSubEntry
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftDictSubEntry

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftDictSubEntry.GetInteger: Integer;
 {-}
begin
 Result := dftDictSubEntry;
end;//Tkw_FormUserType_dftDictSubEntry.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_dftDictSubEntry
 Tkw_FormUserType_dftDictSubEntry.Register('���_�����::dftDictSubEntry');
{$IfEnd} //not Admin AND not Monitorings

end.