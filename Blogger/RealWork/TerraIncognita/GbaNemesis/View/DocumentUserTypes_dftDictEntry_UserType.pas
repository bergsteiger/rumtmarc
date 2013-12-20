unit DocumentUserTypes_dftDictEntry_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftDictEntry_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftDictEntry
//
// ����� ��������� ������
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
  DocumentUserTypes_dftRelatedSynchroView_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� dftDictEntry }
  dftDictEntryName = 'dftDictEntry';
   { ��������� ������������� ����������������� ���� "����� ��������� ������" }
  dftDictEntry = TvcmUserType(dftRelatedSynchroView + 1);
   { ����� ��������� ������ }

type
  Tkw_FormUserType_dftDictEntry = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� dftDictEntry }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftDictEntry
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftDictEntry

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftDictEntry.GetInteger: Integer;
 {-}
begin
 Result := dftDictEntry;
end;//Tkw_FormUserType_dftDictEntry.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_dftDictEntry
 Tkw_FormUserType_dftDictEntry.Register('���_�����::dftDictEntry');
{$IfEnd} //not Admin AND not Monitorings

end.