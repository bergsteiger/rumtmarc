unit PrimSaveLoadOptionsForBaseSearch_slqtBaseSearch_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View$For F1 and Monitorings"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimSaveLoadOptionsForBaseSearch_slqtBaseSearch_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::PrimSaveLoadOptionsForBaseSearch::slqtBaseSearch
//
// ������� �����
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
   { ��������� ��� ���� ����� slqtBaseSearch }
  slqtBaseSearchName = 'slqtBaseSearch';
   { ��������� ������������� ����������������� ���� "������� �����" }
  slqtBaseSearch = TvcmUserType(0);
   { ������� ����� }

type
  Tkw_FormUserType_slqtBaseSearch = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� slqtBaseSearch }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_slqtBaseSearch
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}
// start class Tkw_FormUserType_slqtBaseSearch

{$If not defined(NoScripts)}
function Tkw_FormUserType_slqtBaseSearch.GetInteger: Integer;
 {-}
begin
 Result := slqtBaseSearch;
end;//Tkw_FormUserType_slqtBaseSearch.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// ����������� Tkw_FormUserType_slqtBaseSearch
 Tkw_FormUserType_slqtBaseSearch.Register('���_�����::slqtBaseSearch');
{$IfEnd} //not Admin

end.