unit ContentsUserTypes_utDrugContents_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/ContentsUserTypes_utDrugContents_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ContentsUserTypes::utDrugContents
//
// ��������� ���������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  ContentsUserTypes_utContents_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� utDrugContents }
  utDrugContentsName = 'utDrugContents';
   { ��������� ������������� ����������������� ���� "��������� ���������" }
  utDrugContents = TvcmUserType(utContents + 1);
   { ��������� ��������� }

type
  Tkw_FormUserType_utDrugContents = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utDrugContents }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utDrugContents
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utDrugContents

{$If not defined(NoScripts)}
function Tkw_FormUserType_utDrugContents.GetInteger: Integer;
 {-}
begin
 Result := utDrugContents;
end;//Tkw_FormUserType_utDrugContents.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_utDrugContents
 Tkw_FormUserType_utDrugContents.Register('���_�����::utDrugContents');
{$IfEnd} //not Admin AND not Monitorings

end.