unit PrimAttributeSelect_utSingleSearch_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/LiteSearch/Forms/PrimAttributeSelect_utSingleSearch_UserType.pas"
// �����: 27.01.2009 15:22
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ������� ����������� ���������� �������::SearchLite::View::LiteSearch::PrimAttributeSelect::utSingleSearch
//
// ��������� �����
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
  PrimAttributeSelect_utAttributeSelect_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� utSingleSearch }
  utSingleSearchName = 'utSingleSearch';
   { ��������� ������������� ����������������� ���� "��������� �����" }
  utSingleSearch = TvcmUserType(utAttributeSelect + 1);
   { ��������� ����� }

type
  Tkw_FormUserType_utSingleSearch = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utSingleSearch }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utSingleSearch

implementation

// start class Tkw_FormUserType_utSingleSearch

{$If not defined(NoScripts)}
function Tkw_FormUserType_utSingleSearch.GetInteger: Integer;
 {-}
begin
 Result := utSingleSearch;
end;//Tkw_FormUserType_utSingleSearch.GetInteger
{$IfEnd} //not NoScripts

initialization
// ����������� Tkw_FormUserType_utSingleSearch
 Tkw_FormUserType_utSingleSearch.Register('���_�����::utSingleSearch');

end.