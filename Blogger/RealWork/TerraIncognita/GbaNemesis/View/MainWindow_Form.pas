unit MainWindow_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/MainWindow_Form.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalMainForm::Class>> F1 �������� ��� �����������::F1 Without Usecases::View::PrimNemesis::MainWindow
//
// ������
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
  vcmInterfaces
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  MainWithReminders_Form
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  
  {$If defined(Nemesis)}
  ,
  nscReminder
  {$IfEnd} //Nemesis
  
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
  
  {$If defined(Nemesis)}
  ,
  nscRemindersLine
  {$IfEnd} //Nemesis
  ,
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
const
   { MainWindowIDs }
  fm_nsMainWindow : TvcmFormDescriptor = (rFormID : (rName : 'nsMainWindow'; rID : 0); rFactory : nil);
   { ������������� ����� TnsMainWindow }

type
 MainWindowFormDef = interface(IUnknown)
  {* ������������� ����� MainWindow }
   ['{A88F9772-00AF-401E-BACE-E6A02B415485}']
 end;//MainWindowFormDef

 TnsMainWindow = {final form} class(TvcmMainFormRef, MainWindowFormDef)
  {* ������ }
  Entities : TvcmEntities;
 end;//TnsMainWindow

  TMainWindowForm = TnsMainWindow;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  nsBaseSearcher,
  L10nInterfaces,
  nsWindowsList
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type
  Tkw_Form_MainWindow = class(TtfwControlString)
   {* ����� ������� ��� �������������� ����� MainWindow
----
*������ �������������*:
[code]
'aControl' �����::MainWindow TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_MainWindow

// start class Tkw_Form_MainWindow

{$If not defined(NoScripts)}
function Tkw_Form_MainWindow.GetString: AnsiString;
 {-}
begin
 Result := 'nsMainWindow';
end;//Tkw_Form_MainWindow.GetString
{$IfEnd} //not NoScripts

type
  Tkw_MainWindow_OldBaseWarning_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� OldBaseWarning ����� MainWindow }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainWindow_OldBaseWarning_ControlInstance

// start class Tkw_MainWindow_OldBaseWarning_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainWindow_OldBaseWarning_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TnsMainWindow).OldBaseWarning);
end;//Tkw_MainWindow_OldBaseWarning_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MainWindow_TrialModeWarning_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� TrialModeWarning ����� MainWindow }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainWindow_TrialModeWarning_ControlInstance

// start class Tkw_MainWindow_TrialModeWarning_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainWindow_TrialModeWarning_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TnsMainWindow).TrialModeWarning);
end;//Tkw_MainWindow_TrialModeWarning_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MainWindow_remNewChatMessages_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� remNewChatMessages ����� MainWindow }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainWindow_remNewChatMessages_ControlInstance

// start class Tkw_MainWindow_remNewChatMessages_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainWindow_remNewChatMessages_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TnsMainWindow).remNewChatMessages);
end;//Tkw_MainWindow_remNewChatMessages_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MainWindow_remOnlineDead_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� remOnlineDead ����� MainWindow }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainWindow_remOnlineDead_ControlInstance

// start class Tkw_MainWindow_remOnlineDead_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainWindow_remOnlineDead_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TnsMainWindow).remOnlineDead);
end;//Tkw_MainWindow_remOnlineDead_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MainWindow_RemindersLine_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� RemindersLine ����� MainWindow }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainWindow_RemindersLine_ControlInstance

// start class Tkw_MainWindow_RemindersLine_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainWindow_RemindersLine_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TnsMainWindow).RemindersLine);
end;//Tkw_MainWindow_RemindersLine_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MainWindow_ControlledChangingWarning_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� ControlledChangingWarning ����� MainWindow }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainWindow_ControlledChangingWarning_ControlInstance

// start class Tkw_MainWindow_ControlledChangingWarning_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainWindow_ControlledChangingWarning_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TnsMainWindow).ControlledChangingWarning);
end;//Tkw_MainWindow_ControlledChangingWarning_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MainWindow_remUnreadConsultations_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� remUnreadConsultations ����� MainWindow }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainWindow_remUnreadConsultations_ControlInstance

// start class Tkw_MainWindow_remUnreadConsultations_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainWindow_remUnreadConsultations_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TnsMainWindow).remUnreadConsultations);
end;//Tkw_MainWindow_remUnreadConsultations_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MainWindow_StatusBar_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� StatusBar ����� MainWindow }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainWindow_StatusBar_ControlInstance

// start class Tkw_MainWindow_StatusBar_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainWindow_StatusBar_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TnsMainWindow).StatusBar);
end;//Tkw_MainWindow_StatusBar_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MainWindow_ClientZone_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� ClientZone ����� MainWindow }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainWindow_ClientZone_ControlInstance

// start class Tkw_MainWindow_ClientZone_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainWindow_ClientZone_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TnsMainWindow).ClientZone);
end;//Tkw_MainWindow_ClientZone_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MainWindow_MainZone_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� MainZone ����� MainWindow }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainWindow_MainZone_ControlInstance

// start class Tkw_MainWindow_MainZone_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainWindow_MainZone_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TnsMainWindow).MainZone);
end;//Tkw_MainWindow_MainZone_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MainWindow_ParentZonePanel_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� ParentZonePanel ����� MainWindow }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainWindow_ParentZonePanel_ControlInstance

// start class Tkw_MainWindow_ParentZonePanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainWindow_ParentZonePanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TnsMainWindow).ParentZonePanel);
end;//Tkw_MainWindow_ParentZonePanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MainWindow_ChildZonePanel_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� ChildZonePanel ����� MainWindow }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainWindow_ChildZonePanel_ControlInstance

// start class Tkw_MainWindow_ChildZonePanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainWindow_ChildZonePanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TnsMainWindow).ChildZonePanel);
end;//Tkw_MainWindow_ChildZonePanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MainWindow_BaseSearchPanel_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� BaseSearchPanel ����� MainWindow }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainWindow_BaseSearchPanel_ControlInstance

// start class Tkw_MainWindow_BaseSearchPanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainWindow_BaseSearchPanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TnsMainWindow).BaseSearchPanel);
end;//Tkw_MainWindow_BaseSearchPanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MainWindow_LeftNavigator_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� LeftNavigator ����� MainWindow }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainWindow_LeftNavigator_ControlInstance

// start class Tkw_MainWindow_LeftNavigator_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainWindow_LeftNavigator_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TnsMainWindow).LeftNavigator);
end;//Tkw_MainWindow_LeftNavigator_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts
{$If defined(HasRightNavigator) AND not defined(Admin) AND not defined(Monitorings)}

type
  Tkw_MainWindow_RightNavigator_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� RightNavigator ����� MainWindow }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainWindow_RightNavigator_ControlInstance
{$IfEnd} //HasRightNavigator AND not Admin AND not Monitorings

{$If defined(HasRightNavigator) AND not defined(Admin) AND not defined(Monitorings)}

// start class Tkw_MainWindow_RightNavigator_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_MainWindow_RightNavigator_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TnsMainWindow).RightNavigator);
end;//Tkw_MainWindow_RightNavigator_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //HasRightNavigator AND not Admin AND not Monitorings

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� ������� ����� MainWindow
 fm_nsMainWindow.SetFactory(TnsMainWindow.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_MainWindow
 Tkw_Form_MainWindow.Register('�����::MainWindow', TnsMainWindow);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_MainWindow_OldBaseWarning_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TnsMainWindow.OldBaseWarning', Tkw_MainWindow_OldBaseWarning_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_MainWindow_TrialModeWarning_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TnsMainWindow.TrialModeWarning', Tkw_MainWindow_TrialModeWarning_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_MainWindow_remNewChatMessages_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TnsMainWindow.remNewChatMessages', Tkw_MainWindow_remNewChatMessages_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_MainWindow_remOnlineDead_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TnsMainWindow.remOnlineDead', Tkw_MainWindow_remOnlineDead_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_MainWindow_RemindersLine_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TnsMainWindow.RemindersLine', Tkw_MainWindow_RemindersLine_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_MainWindow_ControlledChangingWarning_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TnsMainWindow.ControlledChangingWarning', Tkw_MainWindow_ControlledChangingWarning_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_MainWindow_remUnreadConsultations_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TnsMainWindow.remUnreadConsultations', Tkw_MainWindow_remUnreadConsultations_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_MainWindow_StatusBar_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TnsMainWindow.StatusBar', Tkw_MainWindow_StatusBar_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_MainWindow_ClientZone_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TnsMainWindow.ClientZone', Tkw_MainWindow_ClientZone_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_MainWindow_MainZone_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TnsMainWindow.MainZone', Tkw_MainWindow_MainZone_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_MainWindow_ParentZonePanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TnsMainWindow.ParentZonePanel', Tkw_MainWindow_ParentZonePanel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_MainWindow_ChildZonePanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TnsMainWindow.ChildZonePanel', Tkw_MainWindow_ChildZonePanel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_MainWindow_BaseSearchPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TnsMainWindow.BaseSearchPanel', Tkw_MainWindow_BaseSearchPanel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_MainWindow_LeftNavigator_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TnsMainWindow.LeftNavigator', Tkw_MainWindow_LeftNavigator_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If defined(HasRightNavigator) AND not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_MainWindow_RightNavigator_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TnsMainWindow.RightNavigator', Tkw_MainWindow_RightNavigator_ControlInstance);
{$IfEnd} //HasRightNavigator AND not Admin AND not Monitorings

end.