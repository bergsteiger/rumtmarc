unit EditionsContainer_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Editions/Forms/EditionsContainer_Form.pas"
// �����: 28.07.2009 13:11
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 ���������������� �������::CompareEditions::View::Editions::BaseEditions::EditionsContainer
//
// ��������� �������� ���������
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
  PrimEditionsContainer_Form
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  CompareEditions_FormDefinitions_Controls
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  vtProportionalPanel,
  vtSizeablePanel,
  vtPanel,
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
  TEditionsContainerForm = {final form} class(TvcmContainerFormRef, EditionsContainerFormDef)
   {* ��������� �������� ��������� }
  Entities : TvcmEntities;
  BackgroundPanel: TvtProportionalPanel;
  pnLeft: TvtSizeablePanel;
  pnRight: TvtPanel;
  end;//TEditionsContainerForm
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
   Tkw_Form_EditionsContainer = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� EditionsContainer
----
*������ �������������*:
[code]
'aControl' �����::EditionsContainer TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_EditionsContainer

// start class Tkw_Form_EditionsContainer

{$If not defined(NoScripts)}
function Tkw_Form_EditionsContainer.GetString: AnsiString;
 {-}
begin
 Result := 'EditionsContainerForm';
end;//Tkw_Form_EditionsContainer.GetString
{$IfEnd} //not NoScripts

type
   Tkw_EditionsContainer_BackgroundPanel_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� BackgroundPanel ����� EditionsContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_EditionsContainer_BackgroundPanel_ControlInstance

// start class Tkw_EditionsContainer_BackgroundPanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_EditionsContainer_BackgroundPanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TEditionsContainerForm).BackgroundPanel);
end;//Tkw_EditionsContainer_BackgroundPanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_EditionsContainer_pnLeft_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� pnLeft ����� EditionsContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_EditionsContainer_pnLeft_ControlInstance

// start class Tkw_EditionsContainer_pnLeft_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_EditionsContainer_pnLeft_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TEditionsContainerForm).pnLeft);
end;//Tkw_EditionsContainer_pnLeft_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_EditionsContainer_pnRight_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� pnRight ����� EditionsContainer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_EditionsContainer_pnRight_ControlInstance

// start class Tkw_EditionsContainer_pnRight_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_EditionsContainer_pnRight_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TEditionsContainerForm).pnRight);
end;//Tkw_EditionsContainer_pnRight_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� ������� ����� EditionsContainer
 fm_EditionsContainerForm.SetFactory(TEditionsContainerForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_EditionsContainer
 Tkw_Form_EditionsContainer.Register('�����::EditionsContainer', TEditionsContainerForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_EditionsContainer_BackgroundPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TEditionsContainerForm.BackgroundPanel', Tkw_EditionsContainer_BackgroundPanel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_EditionsContainer_pnLeft_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TEditionsContainerForm.pnLeft', Tkw_EditionsContainer_pnLeft_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_EditionsContainer_pnRight_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TEditionsContainerForm.pnRight', Tkw_EditionsContainer_pnRight_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.