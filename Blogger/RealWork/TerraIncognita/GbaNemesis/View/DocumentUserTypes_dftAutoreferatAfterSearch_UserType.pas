unit DocumentUserTypes_dftAutoreferatAfterSearch_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftAutoreferatAfterSearch_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftAutoreferatAfterSearch
//
// �����. ����� ��������� ����������������
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
  DocumentUserTypes_dftAnnotation_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� dftAutoreferatAfterSearch }
  dftAutoreferatAfterSearchName = 'dftAutoreferatAfterSearch';
   { ��������� ������������� ����������������� ���� "�����. ����� ��������� ����������������" }
  dftAutoreferatAfterSearch = TvcmUserType(dftAnnotation + 1);
   { �����. ����� ��������� ���������������� }

type
  Tkw_FormUserType_dftAutoreferatAfterSearch = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� dftAutoreferatAfterSearch }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftAutoreferatAfterSearch
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftAutoreferatAfterSearch

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftAutoreferatAfterSearch.GetInteger: Integer;
 {-}
begin
 Result := dftAutoreferatAfterSearch;
end;//Tkw_FormUserType_dftAutoreferatAfterSearch.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_dftAutoreferatAfterSearch
 Tkw_FormUserType_dftAutoreferatAfterSearch.Register('���_�����::dftAutoreferatAfterSearch');
{$IfEnd} //not Admin AND not Monitorings

end.