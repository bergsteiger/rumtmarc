unit AACContainerPrim_AACContainer_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/AAC/Forms/AACContainerPrim_AACContainer_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ���������������� �������::AAC::View::AAC::AACContainerPrim::AACContainer
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
   { ��������� ��� ���� ����� AACContainer }
  AACContainerName = 'AACContainer';
   { ��������� ������������� ����������������� ���� "" }
  AACContainer = TvcmUserType(0);

type
  Tkw_FormUserType_AACContainer = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� AACContainer }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_AACContainer
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_AACContainer

{$If not defined(NoScripts)}
function Tkw_FormUserType_AACContainer.GetInteger: Integer;
 {-}
begin
 Result := AACContainer;
end;//Tkw_FormUserType_AACContainer.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_AACContainer
 Tkw_FormUserType_AACContainer.Register('���_�����::AACContainer');
{$IfEnd} //not Admin AND not Monitorings

end.