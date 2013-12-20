unit BaloonWarningUserTypes_WarnInactualDocument_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaloonWarningUserTypes_WarnInactualDocument_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::BaloonWarningUserTypes::WarnInactualDocument
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
  BaloonWarningUserTypes_WarnOnControl_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  BaloonWarningUserTypes_Fake_UserType
  ;

const
   { ��������� ��� ���� ����� WarnInactualDocument }
  WarnInactualDocumentName = 'WarnInactualDocument';
   { ��������� ������������� ����������������� ���� "" }
  WarnInactualDocument = TvcmUserType(WarnOnControl + 1);

type
  Tkw_FormUserType_WarnInactualDocument = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� WarnInactualDocument }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_WarnInactualDocument
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_WarnInactualDocument

{$If not defined(NoScripts)}
function Tkw_FormUserType_WarnInactualDocument.GetInteger: Integer;
 {-}
begin
 Result := WarnInactualDocument;
end;//Tkw_FormUserType_WarnInactualDocument.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_WarnInactualDocument
 Tkw_FormUserType_WarnInactualDocument.Register('���_�����::WarnInactualDocument');
{$IfEnd} //not Admin AND not Monitorings

end.