unit PrimQueryCard_utqcAttributeSearch_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View$For F1 and Monitorings"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimQueryCard_utqcAttributeSearch_UserType.pas"
// �����: 27.01.2009 10:40
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::PrimQueryCard::utqcAttributeSearch
//
// ����� �� ����������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin)}
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
  
  ;

const
   { ��������� ��� ���� ����� utqcAttributeSearch }
  utqcAttributeSearchName = 'utqcAttributeSearch';
   { ��������� ������������� ����������������� ���� "����� �� ����������" }
  utqcAttributeSearch = TvcmUserType(0);
   { ����� �� ���������� }

type
  Tkw_FormUserType_utqcAttributeSearch = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utqcAttributeSearch }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utqcAttributeSearch
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}
// start class Tkw_FormUserType_utqcAttributeSearch

{$If not defined(NoScripts)}
function Tkw_FormUserType_utqcAttributeSearch.GetInteger: Integer;
 {-}
begin
 Result := utqcAttributeSearch;
end;//Tkw_FormUserType_utqcAttributeSearch.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// ����������� Tkw_FormUserType_utqcAttributeSearch
 Tkw_FormUserType_utqcAttributeSearch.Register('���_�����::utqcAttributeSearch');
{$IfEnd} //not Admin

end.