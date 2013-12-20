unit Folders_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ������ �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Folders/Forms/Folders_Form.pas"
// �����: 2003/08/06 08:30:59
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 �������� ����������::Folders::View::Folders::PrimFolders$UC::Folders
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
  PrimFoldersOptions_Form
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  vtProportionalPanel,
  vtPanel,
  vtSizeablePanel,
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
  TcfFolders = {final form} class(TvcmContainerFormRef, FoldersFormDef)
  Entities : TvcmEntities;
  BackgroundPanel: TvtProportionalPanel;
  ParentZone: TvtPanel;
  ChildZone: TvtSizeablePanel;
  end;//TcfFolders

  TFoldersForm = TcfFolders;
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
   Tkw_Form_Folders = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� Folders
----
*������ �������������*:
[code]
'aControl' �����::Folders TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_Folders

// start class Tkw_Form_Folders

{$If not defined(NoScripts)}
function Tkw_Form_Folders.GetString: AnsiString;
 {-}
begin
 Result := 'cfFolders';
end;//Tkw_Form_Folders.GetString
{$IfEnd} //not NoScripts

type
   Tkw_Folders_BackgroundPanel_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� BackgroundPanel ����� Folders }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Folders_BackgroundPanel_ControlInstance

// start class Tkw_Folders_BackgroundPanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Folders_BackgroundPanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TcfFolders).BackgroundPanel);
end;//Tkw_Folders_BackgroundPanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_Folders_ParentZone_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� ParentZone ����� Folders }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Folders_ParentZone_ControlInstance

// start class Tkw_Folders_ParentZone_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Folders_ParentZone_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TcfFolders).ParentZone);
end;//Tkw_Folders_ParentZone_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_Folders_ChildZone_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� ChildZone ����� Folders }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Folders_ChildZone_ControlInstance

// start class Tkw_Folders_ChildZone_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Folders_ChildZone_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TcfFolders).ChildZone);
end;//Tkw_Folders_ChildZone_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� ������� ����� Folders
 fm_cfFolders.SetFactory(TcfFolders.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_Folders
 Tkw_Form_Folders.Register('�����::Folders', TcfFolders);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Folders_BackgroundPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TcfFolders.BackgroundPanel', Tkw_Folders_BackgroundPanel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Folders_ParentZone_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TcfFolders.ParentZone', Tkw_Folders_ParentZone_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Folders_ChildZone_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TcfFolders.ChildZone', Tkw_Folders_ChildZone_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.