unit RedactionsUserTypes_utRedaction_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/RedactionsUserTypes_utRedaction_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::RedactionsUserTypes::utRedaction
//
// ��������
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
   { ��������� ��� ���� ����� utRedaction }
  utRedactionName = 'utRedaction';
   { ��������� ������������� ����������������� ���� "��������" }
  utRedaction = TvcmUserType(0);
   { �������� }

type
  Tkw_FormUserType_utRedaction = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utRedaction }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utRedaction
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utRedaction

{$If not defined(NoScripts)}
function Tkw_FormUserType_utRedaction.GetInteger: Integer;
 {-}
begin
 Result := utRedaction;
end;//Tkw_FormUserType_utRedaction.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_utRedaction
 Tkw_FormUserType_utRedaction.Register('���_�����::utRedaction');
{$IfEnd} //not Admin AND not Monitorings

end.