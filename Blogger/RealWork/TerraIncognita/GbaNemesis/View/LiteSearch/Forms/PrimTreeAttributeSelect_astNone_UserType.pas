unit PrimTreeAttributeSelect_astNone_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/LiteSearch/Forms/PrimTreeAttributeSelect_astNone_UserType.pas"
// �����: 27.01.2009 11:56
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ������� ����������� ���������� �������::SearchLite::View::LiteSearch::PrimTreeAttributeSelect::astNone
//
// �����: ����� ���������
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
   { ��������� ��� ���� ����� astNone }
  astNoneName = 'astNone';
   { ��������� ������������� ����������������� ���� "�����: ����� ���������" }
  astNone = TvcmUserType(0);
   { �����: ����� ��������� }

type
  Tkw_FormUserType_astNone = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� astNone }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_astNone

implementation

// start class Tkw_FormUserType_astNone

{$If not defined(NoScripts)}
function Tkw_FormUserType_astNone.GetInteger: Integer;
 {-}
begin
 Result := astNone;
end;//Tkw_FormUserType_astNone.GetInteger
{$IfEnd} //not NoScripts

initialization
// ����������� Tkw_FormUserType_astNone
 Tkw_FormUserType_astNone.Register('���_�����::astNone');

end.