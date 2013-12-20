unit AdminMain_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/AdminMain_Form.pas"
// �����: 07.09.2009 18:25
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMMainForm::Class>> F1 �������������::Admin$Shell::AdminApp::AdminMain
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If defined(Admin)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  ,
  PrimAdminMain_Form
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
{$IfEnd} //Admin

{$If defined(Admin)}
const
   { AdminMainIDs }
  fm_AdminMainForm : TvcmFormDescriptor = (rFormID : (rName : 'AdminMainForm'; rID : 0); rFactory : nil);
   { ������������� ����� TAdminMainForm }

type
 AdminMainFormDef = interface(IUnknown)
  {* ������������� ����� AdminMain }
   ['{26239010-1045-42DC-ABBF-3909601CF2CB}']
 end;//AdminMainFormDef

 TAdminMainForm = {final form} class(TvcmMainFormRef, AdminMainFormDef)
  Entities : TvcmEntities;
 end;//TAdminMainForm
{$IfEnd} //Admin

implementation

{$R *.DFM}

{$If defined(Admin)}
uses
  SysUtils
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //Admin

{$If defined(Admin)}

type
  Tkw_Form_AdminMain = class(TtfwControlString)
   {* ����� ������� ��� �������������� ����� AdminMain
----
*������ �������������*:
[code]
'aControl' �����::AdminMain TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_AdminMain

// start class Tkw_Form_AdminMain

{$If not defined(NoScripts)}
function Tkw_Form_AdminMain.GetString: AnsiString;
 {-}
begin
 Result := 'AdminMainForm';
end;//Tkw_Form_AdminMain.GetString
{$IfEnd} //not NoScripts

type
  Tkw_AdminMain_StatusBar_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� StatusBar ����� AdminMain }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AdminMain_StatusBar_ControlInstance

// start class Tkw_AdminMain_StatusBar_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AdminMain_StatusBar_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAdminMainForm).StatusBar);
end;//Tkw_AdminMain_StatusBar_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_AdminMain_ClientZone_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� ClientZone ����� AdminMain }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AdminMain_ClientZone_ControlInstance

// start class Tkw_AdminMain_ClientZone_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AdminMain_ClientZone_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAdminMainForm).ClientZone);
end;//Tkw_AdminMain_ClientZone_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_AdminMain_MainZone_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� MainZone ����� AdminMain }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AdminMain_MainZone_ControlInstance

// start class Tkw_AdminMain_MainZone_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AdminMain_MainZone_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAdminMainForm).MainZone);
end;//Tkw_AdminMain_MainZone_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_AdminMain_ParentZonePanel_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� ParentZonePanel ����� AdminMain }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AdminMain_ParentZonePanel_ControlInstance

// start class Tkw_AdminMain_ParentZonePanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AdminMain_ParentZonePanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAdminMainForm).ParentZonePanel);
end;//Tkw_AdminMain_ParentZonePanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_AdminMain_ChildZonePanel_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� ChildZonePanel ����� AdminMain }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AdminMain_ChildZonePanel_ControlInstance

// start class Tkw_AdminMain_ChildZonePanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AdminMain_ChildZonePanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAdminMainForm).ChildZonePanel);
end;//Tkw_AdminMain_ChildZonePanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_AdminMain_BaseSearchPanel_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� BaseSearchPanel ����� AdminMain }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AdminMain_BaseSearchPanel_ControlInstance

// start class Tkw_AdminMain_BaseSearchPanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AdminMain_BaseSearchPanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAdminMainForm).BaseSearchPanel);
end;//Tkw_AdminMain_BaseSearchPanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_AdminMain_LeftNavigator_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� LeftNavigator ����� AdminMain }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AdminMain_LeftNavigator_ControlInstance

// start class Tkw_AdminMain_LeftNavigator_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AdminMain_LeftNavigator_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAdminMainForm).LeftNavigator);
end;//Tkw_AdminMain_LeftNavigator_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts
{$If defined(Admin) AND defined(HasRightNavigator)}

type
  Tkw_AdminMain_RightNavigator_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� RightNavigator ����� AdminMain }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_AdminMain_RightNavigator_ControlInstance
{$IfEnd} //Admin AND HasRightNavigator

{$If defined(Admin) AND defined(HasRightNavigator)}

// start class Tkw_AdminMain_RightNavigator_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_AdminMain_RightNavigator_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TAdminMainForm).RightNavigator);
end;//Tkw_AdminMain_RightNavigator_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //Admin AND HasRightNavigator

{$IfEnd} //Admin

initialization
{$If defined(Admin)}
// ����������� ������� ����� AdminMain
 fm_AdminMainForm.SetFactory(TAdminMainForm.Make);
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_Form_AdminMain
 Tkw_Form_AdminMain.Register('�����::AdminMain', TAdminMainForm);
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_AdminMain_StatusBar_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAdminMainForm.StatusBar', Tkw_AdminMain_StatusBar_ControlInstance);
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_AdminMain_ClientZone_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAdminMainForm.ClientZone', Tkw_AdminMain_ClientZone_ControlInstance);
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_AdminMain_MainZone_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAdminMainForm.MainZone', Tkw_AdminMain_MainZone_ControlInstance);
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_AdminMain_ParentZonePanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAdminMainForm.ParentZonePanel', Tkw_AdminMain_ParentZonePanel_ControlInstance);
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_AdminMain_ChildZonePanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAdminMainForm.ChildZonePanel', Tkw_AdminMain_ChildZonePanel_ControlInstance);
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_AdminMain_BaseSearchPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAdminMainForm.BaseSearchPanel', Tkw_AdminMain_BaseSearchPanel_ControlInstance);
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_AdminMain_LeftNavigator_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAdminMainForm.LeftNavigator', Tkw_AdminMain_LeftNavigator_ControlInstance);
{$IfEnd} //Admin
{$If defined(Admin) AND defined(HasRightNavigator)}
// ����������� Tkw_AdminMain_RightNavigator_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TAdminMainForm.RightNavigator', Tkw_AdminMain_RightNavigator_ControlInstance);
{$IfEnd} //Admin AND HasRightNavigator

end.