unit PrimMainMenu_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/MainMenu/Forms/PrimMainMenu_Form.pas"
// �����: 29.12.2008 17:23
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Core::Base Operations::View::MainMenu::PrimMainMenu
//
// �������� ����
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
  vcmExternalInterfaces
  {$IfEnd} //not NoVCM
  ,
  l3TreeInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  ,
  Messages
  {$If not defined(NoVCM)}
  ,
  vcmContainerForm
  {$IfEnd} //not NoVCM
  ,
  MainMenuDomainInterfaces,
  l3ProtoObject,
  vtPanel,
  nsMainMenuNew
  {$If defined(Nemesis)}
  ,
  nscInterfaces
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscHideField
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscTreeViewHotTruck
  {$IfEnd} //Nemesis
  ,
  PrimWorkJournalInterfaces
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  afwInterfaces,
  bsInterfaces,
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 _evStyleTableListner_Parent_ = TvcmContainerForm;
 {$Include w:\common\components\gui\Garant\Everest\evStyleTableListner.imp.pas}
 _nsUserSettingsListener_Parent_ = _evStyleTableListner_;
 {$Include w:\garant6x\implementation\Garant\GbaNemesis\Data\Common\nsUserSettingsListener.imp.pas}
 TPrimMainMenuForm = {abstract form} class(_nsUserSettingsListener_, InsWorkJournalListener)
  {* �������� ���� }
 private
 // private fields
   f_LastOpenDocsManager : TnsLastOpenDocsManager;
   f_TabTable : InscTabTable;
   f_ArrangeCount : Integer;
   f_pnlMain : TvtPanel;
    {* ���� ��� �������� pnlMain}
   f_hfLastOpenDocs : TnscHideField;
    {* ���� ��� �������� hfLastOpenDocs}
   f_tvLastOpenDocs : TnscTreeViewHotTruck;
    {* ���� ��� �������� tvLastOpenDocs}
   f_Grid : InscArrangeGrid;
    {* ���� ��� �������� Grid}
   f_TreeStyle : TnsTreeStyleManager;
    {* ���� ��� �������� TreeStyle}
 private
 // private methods
   procedure GridSizeChanged(aSender: TObject);
     {* ��������� ������ �������, �������� ����� ����� �������� ������ ���������� }
   procedure InitKeyboardNavigation;
   procedure ActionElement(Sender: TObject;
     Index: Integer);
   procedure PnlMainResize(aSender: TObject);
   procedure WMMouseWheel(var Message: TWMMouseWheel); message WM_MOUSEWHEEL;
 protected
 // property methods
   function pm_GetPnlMain: TvtPanel;
   function pm_GetHfLastOpenDocs: TnscHideField;
   function pm_GetTvLastOpenDocs: TnscTreeViewHotTruck;
   function pm_GetTreeStyle: TnsTreeStyleManager;
   function pm_GetContainerForBaseSearch: IvcmContainer; virtual;
 protected
 // realized methods
   {$If not defined(DesignTimeLibrary)}
   procedure DoStyleTableChanged; override;
   {$IfEnd} //not DesignTimeLibrary
   procedure JournalShrinked;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* ������� ������� ����� �������. }
   procedure FinishDataUpdate; override;
   {$If not defined(NoVCM)}
   procedure DoInit(aFromHistory: Boolean); override;
     {* ������������� �����. ��� ���������� � �������� }
   {$IfEnd} //not NoVCM
   {$If not defined(NoVCM)}
   function DoLoadState(const aState: IvcmBase;
    aStateType: TvcmStateType): Boolean; override;
     {* ��������� ��������� �����. ��� ���������� � �������� }
   {$IfEnd} //not NoVCM
   {$If not defined(NoVCM)}
   procedure InitControls; override;
     {* ��������� ������������� ���������. ��� ���������� � �������� }
   {$IfEnd} //not NoVCM
   {$If not defined(NoVCM)}
   function SaveOwnFormState(out theState: IvcmBase;
    aStateType: TvcmStateType): Boolean; override;
   {$IfEnd} //not NoVCM
   procedure ClearFields; override;
 protected
 // protected methods
   procedure ArrangeGrid;
     {* ���������� ������� ������� }
   procedure RecalcGrid;
   procedure BuildGrid;
   function DoBuildGrid: InscArrangeGrid; virtual; abstract;
   procedure DoInitKeyboardNavigation(const aTable: InscTabTable); virtual;
   procedure LoadLastOpenDocs; virtual;
   procedure DoActionElement(const aNode: InsMainMenuNode); virtual;
   procedure LoadTrees; virtual;
   function NewSchool: Boolean; virtual;
     {* ����������, ��� �������� ���� ���� 2009 - [$164601183] }
   procedure DoRecalcGrid(const aGrid: InscArrangeGrid); virtual;
 private
 // private properties
   property Grid: InscArrangeGrid
     read f_Grid;
 protected
 // protected properties
   property TreeStyle: TnsTreeStyleManager
     read pm_GetTreeStyle;
   property ContainerForBaseSearch: IvcmContainer
     read pm_GetContainerForBaseSearch;
 public
 // public properties
   property pnlMain: TvtPanel
     read pm_GetPnlMain;
   property hfLastOpenDocs: TnscHideField
     read pm_GetHfLastOpenDocs;
   property tvLastOpenDocs: TnscTreeViewHotTruck
     read pm_GetTvLastOpenDocs;
 end;//TPrimMainMenuForm

 TvcmEntityFormRef = TPrimMainMenuForm;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  SysUtils
  {$If defined(Nemesis)}
  ,
  nscArrangeGrid
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscTabTable
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscTreeView
  {$IfEnd} //Nemesis
  ,
  Forms,
  nsOpenUtils,
  nsConst,
  StdRes,
  lgTypes
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(DesignTimeLibrary)}
  ,
  evStyleTableSpy
  {$IfEnd} //not DesignTimeLibrary
  ,
  afwFacade
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

{$Include w:\common\components\gui\Garant\Everest\evStyleTableListner.imp.pas}

{$Include w:\garant6x\implementation\Garant\GbaNemesis\Data\Common\nsUserSettingsListener.imp.pas}

type
  TPrimMainMenuState = class(Tl3ProtoObject {$If not defined(NoVCM)}, IvcmBase{$IfEnd} //not NoVCM
  )
  public
  // public methods
   class function Make: IvcmBase; reintroduce;
  end;//TPrimMainMenuState

// start class TPrimMainMenuState

class function TPrimMainMenuState.Make: IvcmBase;
var
 l_Inst : TPrimMainMenuState;
begin
 l_Inst := Create;
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

type
  Tkw_PrimMainMenu_Control_pnlMain = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� pnlMain
----
*������ �������������*:
[code]
�������::pnlMain TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenu_Control_pnlMain

// start class Tkw_PrimMainMenu_Control_pnlMain

{$If not defined(NoScripts)}
function Tkw_PrimMainMenu_Control_pnlMain.GetString: AnsiString;
 {-}
begin
 Result := 'pnlMain';
end;//Tkw_PrimMainMenu_Control_pnlMain.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenu_Control_pnlMain_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� pnlMain
----
*������ �������������*:
[code]
�������::pnlMain:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenu_Control_pnlMain_Push

// start class Tkw_PrimMainMenu_Control_pnlMain_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimMainMenu_Control_pnlMain_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('pnlMain');
 inherited;
end;//Tkw_PrimMainMenu_Control_pnlMain_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenu_Control_hfLastOpenDocs = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� hfLastOpenDocs
----
*������ �������������*:
[code]
�������::hfLastOpenDocs TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenu_Control_hfLastOpenDocs

// start class Tkw_PrimMainMenu_Control_hfLastOpenDocs

{$If not defined(NoScripts)}
function Tkw_PrimMainMenu_Control_hfLastOpenDocs.GetString: AnsiString;
 {-}
begin
 Result := 'hfLastOpenDocs';
end;//Tkw_PrimMainMenu_Control_hfLastOpenDocs.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenu_Control_hfLastOpenDocs_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� hfLastOpenDocs
----
*������ �������������*:
[code]
�������::hfLastOpenDocs:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenu_Control_hfLastOpenDocs_Push

// start class Tkw_PrimMainMenu_Control_hfLastOpenDocs_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimMainMenu_Control_hfLastOpenDocs_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('hfLastOpenDocs');
 inherited;
end;//Tkw_PrimMainMenu_Control_hfLastOpenDocs_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenu_Control_tvLastOpenDocs = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� tvLastOpenDocs
----
*������ �������������*:
[code]
�������::tvLastOpenDocs TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenu_Control_tvLastOpenDocs

// start class Tkw_PrimMainMenu_Control_tvLastOpenDocs

{$If not defined(NoScripts)}
function Tkw_PrimMainMenu_Control_tvLastOpenDocs.GetString: AnsiString;
 {-}
begin
 Result := 'tvLastOpenDocs';
end;//Tkw_PrimMainMenu_Control_tvLastOpenDocs.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimMainMenu_Control_tvLastOpenDocs_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� tvLastOpenDocs
----
*������ �������������*:
[code]
�������::tvLastOpenDocs:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimMainMenu_Control_tvLastOpenDocs_Push

// start class Tkw_PrimMainMenu_Control_tvLastOpenDocs_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimMainMenu_Control_tvLastOpenDocs_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('tvLastOpenDocs');
 inherited;
end;//Tkw_PrimMainMenu_Control_tvLastOpenDocs_Push.DoDoIt
{$IfEnd} //not NoScripts

procedure TPrimMainMenuForm.GridSizeChanged(aSender: TObject);
//#UC START# *4AC9B71F032F_4958DD7002B6_var*
//#UC END# *4AC9B71F032F_4958DD7002B6_var*
begin
//#UC START# *4AC9B71F032F_4958DD7002B6_impl*
 ArrangeGrid;
//#UC END# *4AC9B71F032F_4958DD7002B6_impl*
end;//TPrimMainMenuForm.GridSizeChanged

procedure TPrimMainMenuForm.InitKeyboardNavigation;
//#UC START# *4AC9CB6100E4_4958DD7002B6_var*
//#UC END# *4AC9CB6100E4_4958DD7002B6_var*
begin
//#UC START# *4AC9CB6100E4_4958DD7002B6_impl*
 f_TabTable := TnscTabTable.Make;
 DoInitKeyboardNavigation(f_TabTable);
//#UC END# *4AC9CB6100E4_4958DD7002B6_impl*
end;//TPrimMainMenuForm.InitKeyboardNavigation

procedure TPrimMainMenuForm.ActionElement(Sender: TObject;
  Index: Integer);
//#UC START# *4AC9E13902F9_4958DD7002B6_var*
//#UC END# *4AC9E13902F9_4958DD7002B6_var*
var
 l_Node : Il3SimpleNode;
 l_MenuNode : InsMainMenuNode;
begin
//#UC START# *4AC9E13902F9_4958DD7002B6_impl*
 l_Node := TnscTreeView(Sender).GetNode(Index);
 if Supports(l_Node, InsMainMenuNode, l_MenuNode) then
  try
   DoActionElement(l_MenuNode);
  finally
   l_Node := nil;
  end//try..finally
 else
  nsOpenNavigatorItem(l_Node, NativeMainForm);
//#UC END# *4AC9E13902F9_4958DD7002B6_impl*
end;//TPrimMainMenuForm.ActionElement

procedure TPrimMainMenuForm.PnlMainResize(aSender: TObject);
//#UC START# *4ACC82D6017B_4958DD7002B6_var*
//#UC END# *4ACC82D6017B_4958DD7002B6_var*
begin
//#UC START# *4ACC82D6017B_4958DD7002B6_impl*
 if (f_Grid <> nil) then
  //if not Dispatcher.FormDispatcher.Locked then
   ArrangeGrid;
//#UC END# *4ACC82D6017B_4958DD7002B6_impl*
end;//TPrimMainMenuForm.PnlMainResize

procedure TPrimMainMenuForm.ArrangeGrid;
//#UC START# *4AC9B1BB022A_4958DD7002B6_var*
//#UC END# *4AC9B1BB022A_4958DD7002B6_var*
begin
//#UC START# *4AC9B1BB022A_4958DD7002B6_impl*
 Inc(f_ArrangeCount);
 try
  if (f_ArrangeCount = 1) then
   agArrangeGrid(f_Grid, Self, pnlMain, 0);
 finally
  Dec(f_ArrangeCount);
 end;//try..finally
//#UC END# *4AC9B1BB022A_4958DD7002B6_impl*
end;//TPrimMainMenuForm.ArrangeGrid

function TPrimMainMenuForm.pm_GetPnlMain: TvtPanel;
begin
 if (f_pnlMain = nil) then
  f_pnlMain := FindComponent('pnlMain') As TvtPanel;
 Result := f_pnlMain;
end;

function TPrimMainMenuForm.pm_GetHfLastOpenDocs: TnscHideField;
begin
 if (f_hfLastOpenDocs = nil) then
  f_hfLastOpenDocs := FindComponent('hfLastOpenDocs') As TnscHideField;
 Result := f_hfLastOpenDocs;
end;

function TPrimMainMenuForm.pm_GetTvLastOpenDocs: TnscTreeViewHotTruck;
begin
 if (f_tvLastOpenDocs = nil) then
  f_tvLastOpenDocs := FindComponent('tvLastOpenDocs') As TnscTreeViewHotTruck;
 Result := f_tvLastOpenDocs;
end;

procedure TPrimMainMenuForm.RecalcGrid;
//#UC START# *4AC9B367032D_4958DD7002B6_var*
//#UC END# *4AC9B367032D_4958DD7002B6_var*
begin
//#UC START# *4AC9B367032D_4958DD7002B6_impl*
 if (f_Grid <> nil) then
 begin
  DoRecalcGrid(f_Grid);
  ArrangeGrid;
 end;//f_Grid <> nil
//#UC END# *4AC9B367032D_4958DD7002B6_impl*
end;//TPrimMainMenuForm.RecalcGrid

procedure TPrimMainMenuForm.BuildGrid;
//#UC START# *4AC9B6A80163_4958DD7002B6_var*
//#UC END# *4AC9B6A80163_4958DD7002B6_var*
begin
//#UC START# *4AC9B6A80163_4958DD7002B6_impl*
 f_Grid := nil;
 f_Grid := DoBuildGrid;
 Assert(f_Grid <> nil);
 f_Grid.OnSizeChanged := GridSizeChanged;
 RecalcGrid;
 if f_Grid.TwoStageBuild then
  RecalcGrid;
 // - ��� ���������� ����� ������ �� � �� ������� ����������� ������� ������ ��������
 //   �.�. ����������� ���������� ������. � ������� �������� ������ ����� ������� ����.
 //   ��� ������ ���������� � ����. 
//#UC END# *4AC9B6A80163_4958DD7002B6_impl*
end;//TPrimMainMenuForm.BuildGrid

function TPrimMainMenuForm.pm_GetTreeStyle: TnsTreeStyleManager;
//#UC START# *4AC9C93202F7_4958DD7002B6get_var*
var
 l_Index: Integer;
//#UC END# *4AC9C93202F7_4958DD7002B6get_var*
begin
//#UC START# *4AC9C93202F7_4958DD7002B6get_impl*
 if (f_TreeStyle = nil) then
 begin
  f_TreeStyle := TnsTreeStyleManager.Create(c_MainMenuColor, Self.NewSchool);
  for l_Index := 0 to Pred(ComponentCount) do
   if (Components[l_Index] <> tvLastOpenDocs) and
     (Components[l_Index] is TnscTreeView) then
   begin
    f_TreeStyle.Init(TnscTreeView(Components[l_Index]));
    TnscTreeView(Components[l_Index]).OnActionElement := ActionElement;
   end;//Components[l_Index] <> tvLastOpenDocs
 end;//f_TreeStyle = nil
 Result := f_TreeStyle;
//#UC END# *4AC9C93202F7_4958DD7002B6get_impl*
end;//TPrimMainMenuForm.pm_GetTreeStyle

function TPrimMainMenuForm.pm_GetContainerForBaseSearch: IvcmContainer;
//#UC START# *4ACA197F0147_4958DD7002B6get_var*
//#UC END# *4ACA197F0147_4958DD7002B6get_var*
begin
//#UC START# *4ACA197F0147_4958DD7002B6get_impl*
 Result := nil;
//#UC END# *4ACA197F0147_4958DD7002B6get_impl*
end;//TPrimMainMenuForm.pm_GetContainerForBaseSearch

procedure TPrimMainMenuForm.WMMouseWheel(var Message: TWMMouseWheel);
//#UC START# *4AC9A3AD01DE_4958DD7002B6_var*
//#UC END# *4AC9A3AD01DE_4958DD7002B6_var*
begin
//#UC START# *4AC9A3AD01DE_4958DD7002B6_impl*
 if nsScrollMainMenu(Self, Message) then
  inherited;
//#UC END# *4AC9A3AD01DE_4958DD7002B6_impl*
end;//TPrimMainMenuForm.WMMouseWheel

procedure TPrimMainMenuForm.DoInitKeyboardNavigation(const aTable: InscTabTable);
//#UC START# *4AC9CB8B01D3_4958DD7002B6_var*
//#UC END# *4AC9CB8B01D3_4958DD7002B6_var*
begin
//#UC START# *4AC9CB8B01D3_4958DD7002B6_impl*
 // - ������ �� ������
//#UC END# *4AC9CB8B01D3_4958DD7002B6_impl*
end;//TPrimMainMenuForm.DoInitKeyboardNavigation

procedure TPrimMainMenuForm.LoadLastOpenDocs;
//#UC START# *4AC9D12600E0_4958DD7002B6_var*
//#UC END# *4AC9D12600E0_4958DD7002B6_var*
begin
//#UC START# *4AC9D12600E0_4958DD7002B6_impl*
 Assert(false, '����� TPrimMainMenuForm.LoadLastOpenDocs ������ ���� ������������ � ��������');
//#UC END# *4AC9D12600E0_4958DD7002B6_impl*
end;//TPrimMainMenuForm.LoadLastOpenDocs

procedure TPrimMainMenuForm.DoActionElement(const aNode: InsMainMenuNode);
//#UC START# *4AC9E19E022B_4958DD7002B6_var*
//#UC END# *4AC9E19E022B_4958DD7002B6_var*
begin
//#UC START# *4AC9E19E022B_4958DD7002B6_impl*
(* case TnsSimpleMainMenuItem(aNode.NodeType) of
  // ������ ������ (�������� ���������):
  ns_siMakeConsultation:
   Dispatcher.ModuleOperation(TdmStdRes.mod_opcode_Search_OpenConsult);
  // ���������� ������ (�������� ���������)
  ns_siShowAnswers:
   Dispatcher.ModuleOperation(TdmStdRes.mod_opcode_Folders_MyConsultations);
  ns_siLawSupportHelp:
   Application.HelpSystem.ShowTopicHelp(cHelpConsultingRules, '');
  ns_siTaxesPublishSearch:
   TdmStdRes.OpenTaxesPublishSearch(nil);
   // - ����� ������-�� ���� ����� ��������� ��������
  else*)
   nsOpenNavigatorItem(aNode, NativeMainForm);
 //end;//case l_MenuItem.ItemType of
//#UC END# *4AC9E19E022B_4958DD7002B6_impl*
end;//TPrimMainMenuForm.DoActionElement

procedure TPrimMainMenuForm.LoadTrees;
//#UC START# *4AC9E9EC0064_4958DD7002B6_var*
//#UC END# *4AC9E9EC0064_4958DD7002B6_var*
begin
//#UC START# *4AC9E9EC0064_4958DD7002B6_impl*
 LoadLastOpenDocs;
//#UC END# *4AC9E9EC0064_4958DD7002B6_impl*
end;//TPrimMainMenuForm.LoadTrees

function TPrimMainMenuForm.NewSchool: Boolean;
//#UC START# *4ACB2F98002B_4958DD7002B6_var*
//#UC END# *4ACB2F98002B_4958DD7002B6_var*
begin
//#UC START# *4ACB2F98002B_4958DD7002B6_impl*
 Result := false;
//#UC END# *4ACB2F98002B_4958DD7002B6_impl*
end;//TPrimMainMenuForm.NewSchool

procedure TPrimMainMenuForm.DoRecalcGrid(const aGrid: InscArrangeGrid);
//#UC START# *4AD3468102DB_4958DD7002B6_var*
//#UC END# *4AD3468102DB_4958DD7002B6_var*
begin
//#UC START# *4AD3468102DB_4958DD7002B6_impl*
 aGrid.Recalc;
//#UC END# *4AD3468102DB_4958DD7002B6_impl*
end;//TPrimMainMenuForm.DoRecalcGrid

{$If not defined(DesignTimeLibrary)}
procedure TPrimMainMenuForm.DoStyleTableChanged;
//#UC START# *4A485B710126_4958DD7002B6_var*
//#UC END# *4A485B710126_4958DD7002B6_var*
begin
//#UC START# *4A485B710126_4958DD7002B6_impl*
 RecalcGrid;
//#UC END# *4A485B710126_4958DD7002B6_impl*
end;//TPrimMainMenuForm.DoStyleTableChanged
{$IfEnd} //not DesignTimeLibrary

procedure TPrimMainMenuForm.JournalShrinked;
//#UC START# *4A83AA610299_4958DD7002B6_var*
//#UC END# *4A83AA610299_4958DD7002B6_var*
begin
//#UC START# *4A83AA610299_4958DD7002B6_impl*
 with tvLastOpenDocs do
 begin
  Changing;
  try
   LoadLastOpenDocs;
  finally
   Changed;
  end;//try..finally
 end;//with tvLastOpenDocs
 Invalidate;
//#UC END# *4A83AA610299_4958DD7002B6_impl*
end;//TPrimMainMenuForm.JournalShrinked

procedure TPrimMainMenuForm.Cleanup;
//#UC START# *479731C50290_4958DD7002B6_var*
//#UC END# *479731C50290_4958DD7002B6_var*
begin
//#UC START# *479731C50290_4958DD7002B6_impl*
 f_Grid := nil;
 f_TabTable := nil;
 FreeAndNil(f_LastOpenDocsManager);
 FreeAndNil(f_TreeStyle);
 TdmStdRes.MakeWorkJournal.UnRegisterListener(Self);
 inherited;
//#UC END# *479731C50290_4958DD7002B6_impl*
end;//TPrimMainMenuForm.Cleanup

procedure TPrimMainMenuForm.FinishDataUpdate;
//#UC START# *47EA4E9002C6_4958DD7002B6_var*
//#UC END# *47EA4E9002C6_4958DD7002B6_var*
begin
//#UC START# *47EA4E9002C6_4958DD7002B6_impl*
 LoadTrees;
 inherited;
 BuildGrid;
//#UC END# *47EA4E9002C6_4958DD7002B6_impl*
end;//TPrimMainMenuForm.FinishDataUpdate

{$If not defined(NoVCM)}
procedure TPrimMainMenuForm.DoInit(aFromHistory: Boolean);
//#UC START# *49803F5503AA_4958DD7002B6_var*
//#UC END# *49803F5503AA_4958DD7002B6_var*
begin
//#UC START# *49803F5503AA_4958DD7002B6_impl*
 inherited;
 if not aFromHistory then
  LoadTrees;
 BuildGrid;
 InitKeyboardNavigation;
//#UC END# *49803F5503AA_4958DD7002B6_impl*
end;//TPrimMainMenuForm.DoInit
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
function TPrimMainMenuForm.DoLoadState(const aState: IvcmBase;
  aStateType: TvcmStateType): Boolean;
//#UC START# *49807428008C_4958DD7002B6_var*
//#UC END# *49807428008C_4958DD7002B6_var*
begin
//#UC START# *49807428008C_4958DD7002B6_impl*
 Result := inherited DoLoadState(aState, aStateType);
 if (aStateType = vcm_stContent) then
  LoadLastOpenDocs;
//#UC END# *49807428008C_4958DD7002B6_impl*
end;//TPrimMainMenuForm.DoLoadState
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
procedure TPrimMainMenuForm.InitControls;
//#UC START# *4A8E8F2E0195_4958DD7002B6_var*
//#UC END# *4A8E8F2E0195_4958DD7002B6_var*
begin
//#UC START# *4A8E8F2E0195_4958DD7002B6_impl*
 inherited;
 pnlMain.OnResize := pnlMainResize;
 TdmStdRes.MakeWorkJournal.RegisterListener(Self);
 TreeStyle;
 f_LastOpenDocsManager := TnsLastOpenDocsManager.Create(c_MainMenuColor,
                                                        tvLastOpenDocs,
                                                        Self.NewSchool);
//#UC END# *4A8E8F2E0195_4958DD7002B6_impl*
end;//TPrimMainMenuForm.InitControls
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
function TPrimMainMenuForm.SaveOwnFormState(out theState: IvcmBase;
  aStateType: TvcmStateType): Boolean;
//#UC START# *4B4F49900003_4958DD7002B6_var*
//#UC END# *4B4F49900003_4958DD7002B6_var*
begin
//#UC START# *4B4F49900003_4958DD7002B6_impl*
 if (aStateType = vcm_stContent) then
 begin
  Result := true;
  theState := TPrimMainMenuState.Make;
  // - ��� ����������, ����� DoLoadState ��������
 end
 else
  Result := inherited SaveOwnFormState(theState, aStateType);
//#UC END# *4B4F49900003_4958DD7002B6_impl*
end;//TPrimMainMenuForm.SaveOwnFormState
{$IfEnd} //not NoVCM

procedure TPrimMainMenuForm.ClearFields;
 {-}
begin
 f_Grid := nil;
 inherited;
end;//TPrimMainMenuForm.ClearFields

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenu_Control_pnlMain
 Tkw_PrimMainMenu_Control_pnlMain.Register('�������::pnlMain', TvtPanel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenu_Control_pnlMain_Push
 Tkw_PrimMainMenu_Control_pnlMain_Push.Register('�������::pnlMain:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenu_Control_hfLastOpenDocs
 Tkw_PrimMainMenu_Control_hfLastOpenDocs.Register('�������::hfLastOpenDocs', TnscHideField);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenu_Control_hfLastOpenDocs_Push
 Tkw_PrimMainMenu_Control_hfLastOpenDocs_Push.Register('�������::hfLastOpenDocs:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenu_Control_tvLastOpenDocs
 Tkw_PrimMainMenu_Control_tvLastOpenDocs.Register('�������::tvLastOpenDocs', TnscTreeViewHotTruck);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_PrimMainMenu_Control_tvLastOpenDocs_Push
 Tkw_PrimMainMenu_Control_tvLastOpenDocs_Push.Register('�������::tvLastOpenDocs:push');
{$IfEnd} //not Admin AND not Monitorings

end.