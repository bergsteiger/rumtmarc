unit PrimTreeAttributeSelect_astOneLevel_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/LiteSearch/Forms/PrimTreeAttributeSelect_astOneLevel_UserType.pas"
// �����: 27.01.2009 11:56
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ������� ����������� ���������� �������::SearchLite::View::LiteSearch::PrimTreeAttributeSelect::astOneLevel
//
// �������� ������� ������
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
  PrimTreeAttributeSelect_astNone_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� astOneLevel }
  astOneLevelName = 'astOneLevel';
   { ��������� ������������� ����������������� ���� "�������� ������� ������" }
  astOneLevel = TvcmUserType(astNone + 1);
   { �������� ������� ������ }

type
  Tkw_FormUserType_astOneLevel = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� astOneLevel }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_astOneLevel

implementation

// start class Tkw_FormUserType_astOneLevel

{$If not defined(NoScripts)}
function Tkw_FormUserType_astOneLevel.GetInteger: Integer;
 {-}
begin
 Result := astOneLevel;
end;//Tkw_FormUserType_astOneLevel.GetInteger
{$IfEnd} //not NoScripts

initialization
// ����������� Tkw_FormUserType_astOneLevel
 Tkw_FormUserType_astOneLevel.Register('���_�����::astOneLevel');

end.