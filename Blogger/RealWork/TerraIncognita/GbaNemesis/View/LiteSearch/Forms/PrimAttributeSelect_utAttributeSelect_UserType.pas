unit PrimAttributeSelect_utAttributeSelect_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/LiteSearch/Forms/PrimAttributeSelect_utAttributeSelect_UserType.pas"
// �����: 27.01.2009 15:22
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ������� ����������� ���������� �������::SearchLite::View::LiteSearch::PrimAttributeSelect::utAttributeSelect
//
// ����� �������� ��������
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
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� utAttributeSelect }
  utAttributeSelectName = 'utAttributeSelect';
   { ��������� ������������� ����������������� ���� "����� �������� ��������" }
  utAttributeSelect = TvcmUserType(0);
   { ����� �������� �������� }

type
  Tkw_FormUserType_utAttributeSelect = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utAttributeSelect }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utAttributeSelect

implementation

// start class Tkw_FormUserType_utAttributeSelect

{$If not defined(NoScripts)}
function Tkw_FormUserType_utAttributeSelect.GetInteger: Integer;
 {-}
begin
 Result := utAttributeSelect;
end;//Tkw_FormUserType_utAttributeSelect.GetInteger
{$IfEnd} //not NoScripts

initialization
// ����������� Tkw_FormUserType_utAttributeSelect
 Tkw_FormUserType_utAttributeSelect.Register('���_�����::utAttributeSelect');

end.