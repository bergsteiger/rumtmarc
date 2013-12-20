unit MonitoringsMain_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/MonitoringsMain_Form.pas"
// �����: 10.09.2009 17:48
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMMainForm::Class>> F1 ������� �����::Monitoring::Monitorings::MonitoringsMain
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If defined(Monitorings) AND not defined(Admin)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  ,
  PrimMonitoringsMain_Form
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
  nscStatusBar
  {$IfEnd} //Nemesis
  ,
  vtPanel,
  vtProportionalPanel,
  vtSizeablePanel
  {$If defined(Nemesis)}
  ,
  nscNavigator
  {$IfEnd} //Nemesis
  ,
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //Monitorings AND not Admin

{$If defined(Monitorings) AND not defined(Admin)}
const
   { MonitoringsMainIDs }
  fm_MonitoringsMainForm : TvcmFormDescriptor = (rFormID : (rName : 'MonitoringsMainForm'; rID : 0); rFactory : nil);
   { ������������� ����� TMonitoringsMainForm }

type
 MonitoringsMainFormDef = interface(IUnknown)
  {* ������������� ����� MonitoringsMain }
   ['{302D255D-E242-47AD-ACB5-B3822A5E3F7F}']
 end;//MonitoringsMainFormDef

 TMonitoringsMainForm = {final form} class(TvcmMainFormRef, MonitoringsMainFormDef)
  Entities : TvcmEntities;
 end;//TMonitoringsMainForm
{$IfEnd} //Monitorings AND not Admin

implementation

{$R *.DFM}

{$If defined(Monitorings) AND not defined(Admin)}
uses
  SysUtils
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //Monitorings AND not Admin

{$If defined(Monitorings) AND not defined(Admin)}

type
  Tkw_Form_MonitoringsMain = class(TtfwControlString)
   {* ����� ������� ��� �������������� ����� MonitoringsMain
----
*������ �������������*:
[code]
'aControl' �����::MonitoringsMain TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_MonitoringsMain

// start class Tkw_Form_MonitoringsMain

{$If not defined(NoScripts)}
function Tkw_Form_MonitoringsMain.GetString: AnsiString;
 {-}
begin
 Result := 'MonitoringsMainForm';
end;//Tkw_Form_MonitoringsMain.GetString
{$IfEnd} //not NoScripts

type
  Tkw_MonitoringsMain_StatusBar_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� StatusBar ����� MonitoringsMain }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MonitoringsMain_StatusBar_ControlInstance

// start class Tkw_MonitoringsMain_StatusBar_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MonitoringsMain_StatusBar_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TMonitoringsMainForm).StatusBar);
end;//Tkw_MonitoringsMain_StatusBar_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MonitoringsMain_ClientZone_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� ClientZone ����� MonitoringsMain }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MonitoringsMain_ClientZone_ControlInstance

// start class Tkw_MonitoringsMain_ClientZone_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MonitoringsMain_ClientZone_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TMonitoringsMainForm).ClientZone);
end;//Tkw_MonitoringsMain_ClientZone_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MonitoringsMain_MainZone_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� MainZone ����� MonitoringsMain }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MonitoringsMain_MainZone_ControlInstance

// start class Tkw_MonitoringsMain_MainZone_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MonitoringsMain_MainZone_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TMonitoringsMainForm).MainZone);
end;//Tkw_MonitoringsMain_MainZone_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MonitoringsMain_ParentZonePanel_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� ParentZonePanel ����� MonitoringsMain }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MonitoringsMain_ParentZonePanel_ControlInstance

// start class Tkw_MonitoringsMain_ParentZonePanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MonitoringsMain_ParentZonePanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TMonitoringsMainForm).ParentZonePanel);
end;//Tkw_MonitoringsMain_ParentZonePanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MonitoringsMain_ChildZonePanel_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� ChildZonePanel ����� MonitoringsMain }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MonitoringsMain_ChildZonePanel_ControlInstance

// start class Tkw_MonitoringsMain_ChildZonePanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MonitoringsMain_ChildZonePanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TMonitoringsMainForm).ChildZonePanel);
end;//Tkw_MonitoringsMain_ChildZonePanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MonitoringsMain_BaseSearchPanel_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� BaseSearchPanel ����� MonitoringsMain }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MonitoringsMain_BaseSearchPanel_ControlInstance

// start class Tkw_MonitoringsMain_BaseSearchPanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MonitoringsMain_BaseSearchPanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TMonitoringsMainForm).BaseSearchPanel);
end;//Tkw_MonitoringsMain_BaseSearchPanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MonitoringsMain_LeftNavigator_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� LeftNavigator ����� MonitoringsMain }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MonitoringsMain_LeftNavigator_ControlInstance

// start class Tkw_MonitoringsMain_LeftNavigator_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MonitoringsMain_LeftNavigator_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TMonitoringsMainForm).LeftNavigator);
end;//Tkw_MonitoringsMain_LeftNavigator_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts
{$If defined(HasRightNavigator) AND defined(Monitorings) AND not defined(Admin)}

type
  Tkw_MonitoringsMain_RightNavigator_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� RightNavigator ����� MonitoringsMain }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MonitoringsMain_RightNavigator_ControlInstance
{$IfEnd} //HasRightNavigator AND Monitorings AND not Admin

{$If defined(HasRightNavigator) AND defined(Monitorings) AND not defined(Admin)}

// start class Tkw_MonitoringsMain_RightNavigator_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MonitoringsMain_RightNavigator_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TMonitoringsMainForm).RightNavigator);
end;//Tkw_MonitoringsMain_RightNavigator_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //HasRightNavigator AND Monitorings AND not Admin

{$IfEnd} //Monitorings AND not Admin

initialization
{$If defined(Monitorings) AND not defined(Admin)}
// ����������� ������� ����� MonitoringsMain
 fm_MonitoringsMainForm.SetFactory(TMonitoringsMainForm.Make);
{$IfEnd} //Monitorings AND not Admin
{$If defined(Monitorings) AND not defined(Admin)}
// ����������� Tkw_Form_MonitoringsMain
 Tkw_Form_MonitoringsMain.Register('�����::MonitoringsMain', TMonitoringsMainForm);
{$IfEnd} //Monitorings AND not Admin
{$If defined(Monitorings) AND not defined(Admin)}
// ����������� Tkw_MonitoringsMain_StatusBar_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TMonitoringsMainForm.StatusBar', Tkw_MonitoringsMain_StatusBar_ControlInstance);
{$IfEnd} //Monitorings AND not Admin
{$If defined(Monitorings) AND not defined(Admin)}
// ����������� Tkw_MonitoringsMain_ClientZone_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TMonitoringsMainForm.ClientZone', Tkw_MonitoringsMain_ClientZone_ControlInstance);
{$IfEnd} //Monitorings AND not Admin
{$If defined(Monitorings) AND not defined(Admin)}
// ����������� Tkw_MonitoringsMain_MainZone_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TMonitoringsMainForm.MainZone', Tkw_MonitoringsMain_MainZone_ControlInstance);
{$IfEnd} //Monitorings AND not Admin
{$If defined(Monitorings) AND not defined(Admin)}
// ����������� Tkw_MonitoringsMain_ParentZonePanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TMonitoringsMainForm.ParentZonePanel', Tkw_MonitoringsMain_ParentZonePanel_ControlInstance);
{$IfEnd} //Monitorings AND not Admin
{$If defined(Monitorings) AND not defined(Admin)}
// ����������� Tkw_MonitoringsMain_ChildZonePanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TMonitoringsMainForm.ChildZonePanel', Tkw_MonitoringsMain_ChildZonePanel_ControlInstance);
{$IfEnd} //Monitorings AND not Admin
{$If defined(Monitorings) AND not defined(Admin)}
// ����������� Tkw_MonitoringsMain_BaseSearchPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TMonitoringsMainForm.BaseSearchPanel', Tkw_MonitoringsMain_BaseSearchPanel_ControlInstance);
{$IfEnd} //Monitorings AND not Admin
{$If defined(Monitorings) AND not defined(Admin)}
// ����������� Tkw_MonitoringsMain_LeftNavigator_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TMonitoringsMainForm.LeftNavigator', Tkw_MonitoringsMain_LeftNavigator_ControlInstance);
{$IfEnd} //Monitorings AND not Admin
{$If defined(HasRightNavigator) AND defined(Monitorings) AND not defined(Admin)}
// ����������� Tkw_MonitoringsMain_RightNavigator_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TMonitoringsMainForm.RightNavigator', Tkw_MonitoringsMain_RightNavigator_ControlInstance);
{$IfEnd} //HasRightNavigator AND Monitorings AND not Admin

end.