unit ContentsUserTypes_utContents_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/ContentsUserTypes_utContents_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ContentsUserTypes::utContents
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
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� utContents }
  utContentsName = 'utContents';
   { ��������� ������������� ����������������� ���� "��������� ���������" }
  utContents = TvcmUserType(0);
   { ��������� ��������� }

type
  Tkw_FormUserType_utContents = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utContents }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utContents
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utContents

{$If not defined(NoScripts)}
function Tkw_FormUserType_utContents.GetInteger: Integer;
 {-}
begin
 Result := utContents;
end;//Tkw_FormUserType_utContents.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_utContents
 Tkw_FormUserType_utContents.Register('���_�����::utContents');
{$IfEnd} //not Admin AND not Monitorings

end.