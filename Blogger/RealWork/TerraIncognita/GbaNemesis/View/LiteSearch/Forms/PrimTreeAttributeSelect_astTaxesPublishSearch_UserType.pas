unit PrimTreeAttributeSelect_astTaxesPublishSearch_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/LiteSearch/Forms/PrimTreeAttributeSelect_astTaxesPublishSearch_UserType.pas"
// �����: 27.01.2009 11:56
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ������� ����������� ���������� �������::SearchLite::View::LiteSearch::PrimTreeAttributeSelect::astTaxesPublishSearch
//
// ��� �� ������� � ��������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  PrimTreeAttributeSelect_astNone_UserType,
  PrimTreeAttributeSelect_astFirstLevel_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� astTaxesPublishSearch }
  astTaxesPublishSearchName = 'astTaxesPublishSearch';
   { ��������� ������������� ����������������� ���� "��� �� ������� � ��������" }
  astTaxesPublishSearch = TvcmUserType(astFirstLevel + 1);
   { ��� �� ������� � �������� }

type
  Tkw_FormUserType_astTaxesPublishSearch = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� astTaxesPublishSearch }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_astTaxesPublishSearch

implementation

// start class Tkw_FormUserType_astTaxesPublishSearch

{$If not defined(NoScripts)}
function Tkw_FormUserType_astTaxesPublishSearch.GetInteger: Integer;
 {-}
begin
 Result := astTaxesPublishSearch;
end;//Tkw_FormUserType_astTaxesPublishSearch.GetInteger
{$IfEnd} //not NoScripts

initialization
// ����������� Tkw_FormUserType_astTaxesPublishSearch
 Tkw_FormUserType_astTaxesPublishSearch.Register('���_�����::astTaxesPublishSearch');

end.