unit BaseSearchContainer_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaseSearch/Forms/BaseSearchContainer_Form.pas"
// �����: 11.03.2011 18:53
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 �������� ����������::BaseSearch::View::BaseSearch$Module::BaseSearch::BaseSearchContainer
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
  Common_FormDefinitions_Controls,
  PrimBaseSearchContainer_Form
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  vtPanel,
  vtLabel,
  ExtCtrls,
  Classes {a},
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
  TBaseSearchContainerForm = {final form} class(TvcmContainerFormRef, BaseSearchContainerFormDef)
  Entities : TvcmEntities;
  end;//TBaseSearchContainerForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  SysUtils
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type
   Tkw_Form_BaseSearchContainer = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� BaseSearchContainer
----
*������ �������������*:
[code]
'aControl' �����::BaseSearchContainer TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_BaseSearchContainer

// start class Tkw_Form_BaseSearchContainer

{$If not defined(NoScripts)}
function Tkw_Form_BaseSearchContainer.GetString: AnsiString;
 {-}
begin
 Result := 'BaseSearchContainerForm';
end;//Tkw_Form_BaseSearchContainer.GetString
{$IfEnd} //not NoScripts

type
   Tkw_BaseSearchContainer_ChildZone_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� ChildZone ����� BaseSearchContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_BaseSearchContainer_ChildZone_ControlInstance

// start class Tkw_BaseSearchContainer_ChildZone_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_BaseSearchContainer_ChildZone_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TBaseSearchContainerForm).ChildZone);
end;//Tkw_BaseSearchContainer_ChildZone_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_BaseSearchContainer_pnHeader_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� pnHeader ����� BaseSearchContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_BaseSearchContainer_pnHeader_ControlInstance

// start class Tkw_BaseSearchContainer_pnHeader_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_BaseSearchContainer_pnHeader_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TBaseSearchContainerForm).pnHeader);
end;//Tkw_BaseSearchContainer_pnHeader_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_BaseSearchContainer_lbHeader_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� lbHeader ����� BaseSearchContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_BaseSearchContainer_lbHeader_ControlInstance

// start class Tkw_BaseSearchContainer_lbHeader_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_BaseSearchContainer_lbHeader_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TBaseSearchContainerForm).lbHeader);
end;//Tkw_BaseSearchContainer_lbHeader_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_BaseSearchContainer_pbHeader_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� pbHeader ����� BaseSearchContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_BaseSearchContainer_pbHeader_ControlInstance

// start class Tkw_BaseSearchContainer_pbHeader_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_BaseSearchContainer_pbHeader_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TBaseSearchContainerForm).pbHeader);
end;//Tkw_BaseSearchContainer_pbHeader_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_BaseSearchContainer_ParentZone_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� ParentZone ����� BaseSearchContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_BaseSearchContainer_ParentZone_ControlInstance

// start class Tkw_BaseSearchContainer_ParentZone_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_BaseSearchContainer_ParentZone_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TBaseSearchContainerForm).ParentZone);
end;//Tkw_BaseSearchContainer_ParentZone_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� ������� ����� BaseSearchContainer
 fm_BaseSearchContainerForm.SetFactory(TBaseSearchContainerForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_BaseSearchContainer
 Tkw_Form_BaseSearchContainer.Register('�����::BaseSearchContainer', TBaseSearchContainerForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_BaseSearchContainer_ChildZone_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TBaseSearchContainerForm.ChildZone', Tkw_BaseSearchContainer_ChildZone_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_BaseSearchContainer_pnHeader_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TBaseSearchContainerForm.pnHeader', Tkw_BaseSearchContainer_pnHeader_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_BaseSearchContainer_lbHeader_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TBaseSearchContainerForm.lbHeader', Tkw_BaseSearchContainer_lbHeader_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_BaseSearchContainer_pbHeader_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TBaseSearchContainerForm.pbHeader', Tkw_BaseSearchContainer_pbHeader_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_BaseSearchContainer_ParentZone_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TBaseSearchContainerForm.ParentZone', Tkw_BaseSearchContainer_ParentZone_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.