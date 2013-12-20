unit TasksPanel_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/TasksPanel_Form.pas"
// �����: 24.08.2009 20:35
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Core::Common::View::Common::PrimF1Common::TasksPanel
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
  PrimTasksPanel_Form,
  Common_FormDefinitions_Controls
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  
  {$If defined(Nemesis)}
  ,
  nscTasksPanelView
  {$IfEnd} //Nemesis
  ,
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
  Ten_TasksPanel = {final form} class(TvcmEntityFormRef, TasksPanelFormDef)
  Entities : TvcmEntities;
  tpvMain: TnscTasksPanelView;
  end;//Ten_TasksPanel

  TTasksPanelForm = Ten_TasksPanel;
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
   Tkw_Form_TasksPanel = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� TasksPanel
----
*������ �������������*:
[code]
'aControl' �����::TasksPanel TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_TasksPanel

// start class Tkw_Form_TasksPanel

{$If not defined(NoScripts)}
function Tkw_Form_TasksPanel.GetString: AnsiString;
 {-}
begin
 Result := 'en_TasksPanel';
end;//Tkw_Form_TasksPanel.GetString
{$IfEnd} //not NoScripts

type
   Tkw_TasksPanel_tpvMain_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� tpvMain ����� TasksPanel }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_TasksPanel_tpvMain_ControlInstance

// start class Tkw_TasksPanel_tpvMain_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_TasksPanel_tpvMain_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_TasksPanel).tpvMain);
end;//Tkw_TasksPanel_tpvMain_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� ������� ����� TasksPanel
 fm_en_TasksPanel.SetFactory(Ten_TasksPanel.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_TasksPanel
 Tkw_Form_TasksPanel.Register('�����::TasksPanel', Ten_TasksPanel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_TasksPanel_tpvMain_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_TasksPanel.tpvMain', Tkw_TasksPanel_tpvMain_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.