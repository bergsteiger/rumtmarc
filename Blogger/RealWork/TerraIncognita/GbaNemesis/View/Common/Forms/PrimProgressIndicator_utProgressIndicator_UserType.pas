unit PrimProgressIndicator_utProgressIndicator_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/PrimProgressIndicator_utProgressIndicator_UserType.pas"
// �����: 25.08.2009 18:14
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Common::View::Common::PrimProgressIndicator::utProgressIndicator
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
   { ��������� ��� ���� ����� utProgressIndicator }
  utProgressIndicatorName = 'utProgressIndicator';
   { ��������� ������������� ����������������� ���� "" }
  utProgressIndicator = TvcmUserType(0);

type
  Tkw_FormUserType_utProgressIndicator = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� utProgressIndicator }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utProgressIndicator
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utProgressIndicator

{$If not defined(NoScripts)}
function Tkw_FormUserType_utProgressIndicator.GetInteger: Integer;
 {-}
begin
 Result := utProgressIndicator;
end;//Tkw_FormUserType_utProgressIndicator.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_utProgressIndicator
 Tkw_FormUserType_utProgressIndicator.Register('���_�����::utProgressIndicator');
{$IfEnd} //not Admin AND not Monitorings

end.