unit PrimSelectedAttributes_utSelectedAttributes_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/LiteSearch/Forms/PrimSelectedAttributes_utSelectedAttributes_UserType.pas"
// �����: 27.01.2009 11:20
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ������� ����������� ���������� �������::SearchLite::View::LiteSearch::PrimSelectedAttributes::utSelectedAttributes
//
// �����: ��������� �������� ���������
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
   { ��������� ��� ���� ����� utSelectedAttributes }
  utSelectedAttributesName = 'utSelectedAttributes';
   { ��������� ������������� ����������������� ���� "�����: ��������� �������� ���������" }
  utSelectedAttributes = TvcmUserType(0);
   { �����: ��������� �������� ��������� }

type
  Tkw_FormUserType_utSelectedAttributes = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utSelectedAttributes }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utSelectedAttributes

implementation

// start class Tkw_FormUserType_utSelectedAttributes

{$If not defined(NoScripts)}
function Tkw_FormUserType_utSelectedAttributes.GetInteger: Integer;
 {-}
begin
 Result := utSelectedAttributes;
end;//Tkw_FormUserType_utSelectedAttributes.GetInteger
{$IfEnd} //not NoScripts

initialization
// ����������� Tkw_FormUserType_utSelectedAttributes
 Tkw_FormUserType_utSelectedAttributes.Register('���_�����::utSelectedAttributes');

end.