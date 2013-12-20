unit ListAnalizeUserTypes_Analize_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/ListAnalizeUserTypes_Analize_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ListAnalizeUserTypes::Analize
//
// ������ ������
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
   { ��������� ��� ���� ����� Analize }
  AnalizeName = 'Analize';
   { ��������� ������������� ����������������� ���� "������ ������" }
  Analize = TvcmUserType(0);
   { ������ ������ }

type
  Tkw_FormUserType_Analize = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� Analize }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_Analize
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_Analize

{$If not defined(NoScripts)}
function Tkw_FormUserType_Analize.GetInteger: Integer;
 {-}
begin
 Result := Analize;
end;//Tkw_FormUserType_Analize.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_Analize
 Tkw_FormUserType_Analize.Register('���_�����::Analize');
{$IfEnd} //not Admin AND not Monitorings

end.