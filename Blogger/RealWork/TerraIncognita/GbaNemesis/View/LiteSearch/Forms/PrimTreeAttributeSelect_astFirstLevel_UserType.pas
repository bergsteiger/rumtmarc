unit PrimTreeAttributeSelect_astFirstLevel_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/LiteSearch/Forms/PrimTreeAttributeSelect_astFirstLevel_UserType.pas"
// �����: 27.01.2009 11:56
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ������� ����������� ���������� �������::SearchLite::View::LiteSearch::PrimTreeAttributeSelect::astFirstLevel
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
  PrimTreeAttributeSelect_astOneLevel_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� astFirstLevel }
  astFirstLevelName = 'astFirstLevel';
   { ��������� ������������� ����������������� ���� "�������� ������� ������" }
  astFirstLevel = TvcmUserType(astOneLevel + 1);
   { �������� ������� ������ }

type
  Tkw_FormUserType_astFirstLevel = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� astFirstLevel }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_astFirstLevel

implementation

// start class Tkw_FormUserType_astFirstLevel

{$If not defined(NoScripts)}
function Tkw_FormUserType_astFirstLevel.GetInteger: Integer;
 {-}
begin
 Result := astFirstLevel;
end;//Tkw_FormUserType_astFirstLevel.GetInteger
{$IfEnd} //not NoScripts

initialization
// ����������� Tkw_FormUserType_astFirstLevel
 Tkw_FormUserType_astFirstLevel.Register('���_�����::astFirstLevel');

end.