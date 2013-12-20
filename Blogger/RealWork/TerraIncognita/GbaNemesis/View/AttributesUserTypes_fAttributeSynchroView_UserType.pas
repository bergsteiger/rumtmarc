unit AttributesUserTypes_fAttributeSynchroView_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/AttributesUserTypes_fAttributeSynchroView_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::AttributesUserTypes::fAttributeSynchroView
//
// ���������� � ��������� (���������� ��������)
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
  AttributesUserTypes_fDocAttribute_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { ��������� ��� ���� ����� fAttributeSynchroView }
  fAttributeSynchroViewName = 'fAttributeSynchroView';
   { ��������� ������������� ����������������� ���� "���������� � ��������� (���������� ��������)" }
  fAttributeSynchroView = TvcmUserType(fDocAttribute + 1);
   { ���������� � ��������� (���������� ��������) }

type
  Tkw_FormUserType_fAttributeSynchroView = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� fAttributeSynchroView }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_fAttributeSynchroView
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_fAttributeSynchroView

{$If not defined(NoScripts)}
function Tkw_FormUserType_fAttributeSynchroView.GetInteger: Integer;
 {-}
begin
 Result := fAttributeSynchroView;
end;//Tkw_FormUserType_fAttributeSynchroView.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_fAttributeSynchroView
 Tkw_FormUserType_fAttributeSynchroView.Register('���_�����::fAttributeSynchroView');
{$IfEnd} //not Admin AND not Monitorings

end.