unit PrimSaveLoadUserTypes_slqtInpharmSearch_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View$For F1 and Monitorings"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimSaveLoadUserTypes_slqtInpharmSearch_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::PrimSaveLoadUserTypes::slqtInpharmSearch
//
// ����� �������������� ��������
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
  ,
  PrimSaveLoadUserTypes_slqtConsult_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� slqtInpharmSearch }
  slqtInpharmSearchName = 'slqtInpharmSearch';
   { ��������� ������������� ����������������� ���� "����� �������������� ��������" }
  slqtInpharmSearch = TvcmUserType(slqtConsult + 1);
   { ����� �������������� �������� }

type
  Tkw_FormUserType_slqtInpharmSearch = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� slqtInpharmSearch }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_slqtInpharmSearch
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}
// start class Tkw_FormUserType_slqtInpharmSearch

{$If not defined(NoScripts)}
function Tkw_FormUserType_slqtInpharmSearch.GetInteger: Integer;
 {-}
begin
 Result := slqtInpharmSearch;
end;//Tkw_FormUserType_slqtInpharmSearch.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// ����������� Tkw_FormUserType_slqtInpharmSearch
 Tkw_FormUserType_slqtInpharmSearch.Register('���_�����::slqtInpharmSearch');
{$IfEnd} //not Admin

end.