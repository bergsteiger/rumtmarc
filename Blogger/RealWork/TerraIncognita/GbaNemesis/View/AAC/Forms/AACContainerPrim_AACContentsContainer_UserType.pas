unit AACContainerPrim_AACContentsContainer_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/AAC/Forms/AACContainerPrim_AACContentsContainer_UserType.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 ���������������� �������::AAC::View::AAC::AACContainerPrim::AACContentsContainer
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
  ,
  AACContainerPrim_AACContainer_UserType
  ;

const
   { ��������� ��� ���� ����� AACContentsContainer }
  AACContentsContainerName = 'AACContentsContainer';
   { ��������� ������������� ����������������� ���� "" }
  AACContentsContainer = TvcmUserType(AACContainer + 1);

type
  Tkw_FormUserType_AACContentsContainer = class(TtfwInteger)
   {* ����� ������� ��� ���� ����� AACContentsContainer }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_AACContentsContainer
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_AACContentsContainer

{$If not defined(NoScripts)}
function Tkw_FormUserType_AACContentsContainer.GetInteger: Integer;
 {-}
begin
 Result := AACContentsContainer;
end;//Tkw_FormUserType_AACContentsContainer.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FormUserType_AACContentsContainer
 Tkw_FormUserType_AACContentsContainer.Register('���_�����::AACContentsContainer');
{$IfEnd} //not Admin AND not Monitorings

end.