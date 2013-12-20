unit DocumentWithFlashUserTypes_dwftSynchro_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentWithFlashUserTypes_dwftSynchro_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentWithFlashUserTypes::dwftSynchro
//
// ����� (���������� ��������)
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
  DocumentWithFlashUserTypes_dwftMain_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� dwftSynchro }
  dwftSynchroName = 'dwftSynchro';
   { ��������� ������������� ����������������� ���� "����� (���������� ��������)" }
  dwftSynchro = TvcmUserType(dwftMain + 1);
   { ����� (���������� ��������) }

type
  Tkw_FormUserType_dwftSynchro = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� dwftSynchro }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dwftSynchro
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dwftSynchro

{$If not defined(NoScripts)}
function Tkw_FormUserType_dwftSynchro.GetInteger: Integer;
 {-}
begin
 Result := dwftSynchro;
end;//Tkw_FormUserType_dwftSynchro.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_dwftSynchro
 Tkw_FormUserType_dwftSynchro.Register('���_�����::dwftSynchro');
{$IfEnd} //not Admin AND not Monitorings

end.