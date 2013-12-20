unit MainPrim_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/common/components/gui/Garant/VCM/View/MainPrim_Form.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMMainForm::Class>> Shared Delphi F1 Like Application::F1Like::View::F1Like::MainPrim
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\common\components\gui\f1LikeAppDefine.inc}

interface

uses
  l3Interfaces
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmContainerForm
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmMainForm
  {$IfEnd} //not NoVCM
  ,
  PresentationInterfaces
  {$If defined(Nemesis)}
  ,
  nscNavigator
  {$IfEnd} //Nemesis
  ,
  vtSizeablePanel,
  vtPanel,
  vtProportionalPanel,
  OfficeLikeMain_Form
  {$If defined(Nemesis)}
  ,
  nscStatusBar
  {$IfEnd} //Nemesis
  
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush
  {$IfEnd} //not NoScripts
  ,
  OfficeLike_System_Controls,
  F1Like_InternalOperations_Controls
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  Classes,
  vcmExternalInterfaces {a},
  vcmEntityForm {a}
  ;

type

{$If not defined(Admin) AND not defined(Monitorings)}
 {$Define HasRightNavigator}
{$IfEnd} //not Admin AND not Monitorings

 TMainPrimForm = {form} class(TOfficeLikeMainForm, InsMainFormChildZoneManager)
 private
 // private fields
   f_NeedSwitchKeyboard : Boolean;
   f_OldCaption : Il3CString;
   f_StatusBar : TnscStatusBar;
    {* Поле для свойства StatusBar}
   f_ClientZone : TvtPanel;
    {* Поле для свойства ClientZone}
   f_MainZone : TvtProportionalPanel;
    {* Поле для свойства MainZone}
   f_ParentZonePanel : TvtPanel;
    {* Поле для свойства ParentZonePanel}
   f_ChildZonePanel : TvtSizeablePanel;
    {* Поле для свойства ChildZonePanel}
   f_BaseSearchPanel : TvtPanel;
    {* Поле для свойства BaseSearchPanel}
   f_LeftNavigator : TnscNavigator;
    {* Поле для свойства LeftNavigator}
  {$If defined(HasRightNavigator)}
   f_RightNavigator : TnscNavigator;
    {* Поле для свойства RightNavigator}
  {$IfEnd} //HasRightNavigator
 protected
  procedure InitEntities; override;
  procedure MakeControls; override;
 private
 // private methods
   procedure VcmMainFormCloseQuery(Sender: TObject;
     var CanClose: Boolean);
   procedure VcmMainFormInsertForm(const aForm: IvcmEntityForm;
     var aMode: TvcmInsertMode);
   procedure FChildZoneQueryResize(ALeft: Integer;
     ATop: Integer;
     AWidth: Integer;
     AHeight: Integer;
     var aCanResize: Boolean);
   procedure FLeftNavigatorSaveSize(Sender: TObject;
     aSize: Integer);
   procedure FLeftNavigatorStateChange(Sender: TObject);
   procedure FLeftNavigatorLoadSize(Sender: TObject;
     var aSize: Integer);
    {$If defined(HasRightNavigator)}
   procedure FRightNavigatorSaveSize(Sender: TObject;
     aSize: Integer);
    {$IfEnd} //HasRightNavigator
    {$If defined(HasRightNavigator)}
   procedure FRightNavigatorStateChange(Sender: TObject);
    {$IfEnd} //HasRightNavigator
    {$If defined(HasRightNavigator)}
   procedure FRightNavigatorLoadSize(Sender: TObject;
     var aSize: Integer);
    {$IfEnd} //HasRightNavigator
    {$If defined(HasRightNavigator)}
   procedure SaveRightNavigatorSize;
    {$IfEnd} //HasRightNavigator
    {$If defined(HasRightNavigator)}
   procedure LoadRightNavigatorSize;
    {$IfEnd} //HasRightNavigator
   procedure SaveLeftNavigatorSize;
   procedure LoadLeftNavigatorSize;
 protected
 // property methods

    {$If defined(HasRightNavigator)}

    {$IfEnd} //HasRightNavigator
 protected
 // realized methods
   procedure CorrectHeight(var aHeight: Integer);
     {* корректирует при необходимости высоту дочерней зоны }
   procedure Common_ShowSplitter_Execute(aVisible: Boolean);
   procedure Common_ShowSplitter(const aParams: IvcmExecuteParams);
   procedure Common_CheckChildZone_Execute(aToggle: Boolean);
   procedure Common_CheckChildZone(const aParams: IvcmExecuteParams);
   procedure Common_OpenNewWindowByUser_Test(const aParams: IvcmTestParamsPrim);
   procedure Common_OpenNewWindowByUser_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Common_GetWindowList_Test(const aParams: IvcmTestParamsPrim);
   procedure Common_GetWindowList_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Common_CascadeWindows_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Common_TileWindowsHorizontal_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Common_TileWindowsVertical_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Common_CloseAllWindows_Test(const aParams: IvcmTestParamsPrim);
   procedure Common_CloseAllWindows_Execute(const aParams: IvcmExecuteParamsPrim);
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure InitFields; override;
   {$If not defined(NoVCM)}
   procedure DoInit(aFromHistory: Boolean); override;
     {* Инициализация формы. Для перекрытия в потомках }
   {$IfEnd} //not NoVCM
   {$If not defined(NoVCM)}
   procedure InitControls; override;
     {* Процедура инициализации контролов. Для перекрытия в потомках }
   {$IfEnd} //not NoVCM
   procedure DoShow; override;
    {$If not defined(NoVCM)}
   procedure DoSaveInSettings; override;
    {$IfEnd} //not NoVCM
    {$If not defined(NoVCM)}
   procedure DispatcherCreated; override;
    {$IfEnd} //not NoVCM
   procedure ClearFields; override;
 public
 // overridden public methods
   constructor Create(AOwner: TComponent); override;
 protected
 // protected methods
   procedure ActivateDefKeyboardLayout; virtual;
   procedure InitClone(aForm: TvcmMainForm); virtual;
   procedure VcmMainFormAfterInsertForm(const aForm: IvcmEntityForm); virtual;
   procedure DropChangeStatusToOpened; virtual;
   procedure LoadSettings; virtual;
 public
 // public properties
   property StatusBar: TnscStatusBar
     read f_StatusBar;
   property ClientZone: TvtPanel
     read f_ClientZone;
   property MainZone: TvtProportionalPanel
     read f_MainZone;
   property ParentZonePanel: TvtPanel
     read f_ParentZonePanel;
   property ChildZonePanel: TvtSizeablePanel
     read f_ChildZonePanel;
   property BaseSearchPanel: TvtPanel
     read f_BaseSearchPanel;
   property LeftNavigator: TnscNavigator
     read f_LeftNavigator;
     {$If defined(HasRightNavigator)}
   property RightNavigator: TnscNavigator
     read f_RightNavigator;
     {$IfEnd} //HasRightNavigator
 end;//TMainPrimForm

implementation

uses
  F1Like_FormDefinitions_Controls,
  Graphics,
  Controls,
  Forms,
  nsWindowsList,
  l3Base,
  afwFacade,
  Windows,
  SysUtils,
  OfficeLikeAppInterfaces,
  l3String,
  nsFormUtils,
  nsSettingsConst
  {$If not defined(NoVCM)}
  ,
  vcmHistory
  {$IfEnd} //not NoVCM
  ,
  vtNavigator
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  StdRes {a}
  ;

var
   g_InMakeClone : Boolean = false;

type
  Tkw_MainPrim_Control_StatusBar = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола StatusBar
----
*Пример использования*:
[code]
контрол::StatusBar TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainPrim_Control_StatusBar

// start class Tkw_MainPrim_Control_StatusBar

{$If not defined(NoScripts)}
function Tkw_MainPrim_Control_StatusBar.GetString: AnsiString;
 {-}
begin
 Result := 'StatusBar';
end;//Tkw_MainPrim_Control_StatusBar.GetString
{$IfEnd} //not NoScripts

type
  Tkw_MainPrim_Control_StatusBar_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола StatusBar
----
*Пример использования*:
[code]
контрол::StatusBar:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainPrim_Control_StatusBar_Push

// start class Tkw_MainPrim_Control_StatusBar_Push

{$If not defined(NoScripts)}
procedure Tkw_MainPrim_Control_StatusBar_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('StatusBar');
 inherited;
end;//Tkw_MainPrim_Control_StatusBar_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MainPrim_Control_ClientZone = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола ClientZone
----
*Пример использования*:
[code]
контрол::ClientZone TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainPrim_Control_ClientZone

// start class Tkw_MainPrim_Control_ClientZone

{$If not defined(NoScripts)}
function Tkw_MainPrim_Control_ClientZone.GetString: AnsiString;
 {-}
begin
 Result := 'ClientZone';
end;//Tkw_MainPrim_Control_ClientZone.GetString
{$IfEnd} //not NoScripts

type
  Tkw_MainPrim_Control_ClientZone_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола ClientZone
----
*Пример использования*:
[code]
контрол::ClientZone:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainPrim_Control_ClientZone_Push

// start class Tkw_MainPrim_Control_ClientZone_Push

{$If not defined(NoScripts)}
procedure Tkw_MainPrim_Control_ClientZone_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('ClientZone');
 inherited;
end;//Tkw_MainPrim_Control_ClientZone_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MainPrim_Control_MainZone = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола MainZone
----
*Пример использования*:
[code]
контрол::MainZone TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainPrim_Control_MainZone

// start class Tkw_MainPrim_Control_MainZone

{$If not defined(NoScripts)}
function Tkw_MainPrim_Control_MainZone.GetString: AnsiString;
 {-}
begin
 Result := 'MainZone';
end;//Tkw_MainPrim_Control_MainZone.GetString
{$IfEnd} //not NoScripts

type
  Tkw_MainPrim_Control_MainZone_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола MainZone
----
*Пример использования*:
[code]
контрол::MainZone:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainPrim_Control_MainZone_Push

// start class Tkw_MainPrim_Control_MainZone_Push

{$If not defined(NoScripts)}
procedure Tkw_MainPrim_Control_MainZone_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('MainZone');
 inherited;
end;//Tkw_MainPrim_Control_MainZone_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MainPrim_Control_ParentZonePanel = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола ParentZonePanel
----
*Пример использования*:
[code]
контрол::ParentZonePanel TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainPrim_Control_ParentZonePanel

// start class Tkw_MainPrim_Control_ParentZonePanel

{$If not defined(NoScripts)}
function Tkw_MainPrim_Control_ParentZonePanel.GetString: AnsiString;
 {-}
begin
 Result := 'ParentZonePanel';
end;//Tkw_MainPrim_Control_ParentZonePanel.GetString
{$IfEnd} //not NoScripts

type
  Tkw_MainPrim_Control_ParentZonePanel_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола ParentZonePanel
----
*Пример использования*:
[code]
контрол::ParentZonePanel:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainPrim_Control_ParentZonePanel_Push

// start class Tkw_MainPrim_Control_ParentZonePanel_Push

{$If not defined(NoScripts)}
procedure Tkw_MainPrim_Control_ParentZonePanel_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('ParentZonePanel');
 inherited;
end;//Tkw_MainPrim_Control_ParentZonePanel_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MainPrim_Control_ChildZonePanel = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола ChildZonePanel
----
*Пример использования*:
[code]
контрол::ChildZonePanel TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainPrim_Control_ChildZonePanel

// start class Tkw_MainPrim_Control_ChildZonePanel

{$If not defined(NoScripts)}
function Tkw_MainPrim_Control_ChildZonePanel.GetString: AnsiString;
 {-}
begin
 Result := 'ChildZonePanel';
end;//Tkw_MainPrim_Control_ChildZonePanel.GetString
{$IfEnd} //not NoScripts

type
  Tkw_MainPrim_Control_ChildZonePanel_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола ChildZonePanel
----
*Пример использования*:
[code]
контрол::ChildZonePanel:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainPrim_Control_ChildZonePanel_Push

// start class Tkw_MainPrim_Control_ChildZonePanel_Push

{$If not defined(NoScripts)}
procedure Tkw_MainPrim_Control_ChildZonePanel_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('ChildZonePanel');
 inherited;
end;//Tkw_MainPrim_Control_ChildZonePanel_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MainPrim_Control_BaseSearchPanel = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола BaseSearchPanel
----
*Пример использования*:
[code]
контрол::BaseSearchPanel TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainPrim_Control_BaseSearchPanel

// start class Tkw_MainPrim_Control_BaseSearchPanel

{$If not defined(NoScripts)}
function Tkw_MainPrim_Control_BaseSearchPanel.GetString: AnsiString;
 {-}
begin
 Result := 'BaseSearchPanel';
end;//Tkw_MainPrim_Control_BaseSearchPanel.GetString
{$IfEnd} //not NoScripts

type
  Tkw_MainPrim_Control_BaseSearchPanel_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола BaseSearchPanel
----
*Пример использования*:
[code]
контрол::BaseSearchPanel:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainPrim_Control_BaseSearchPanel_Push

// start class Tkw_MainPrim_Control_BaseSearchPanel_Push

{$If not defined(NoScripts)}
procedure Tkw_MainPrim_Control_BaseSearchPanel_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('BaseSearchPanel');
 inherited;
end;//Tkw_MainPrim_Control_BaseSearchPanel_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MainPrim_Control_LeftNavigator = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола LeftNavigator
----
*Пример использования*:
[code]
контрол::LeftNavigator TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainPrim_Control_LeftNavigator

// start class Tkw_MainPrim_Control_LeftNavigator

{$If not defined(NoScripts)}
function Tkw_MainPrim_Control_LeftNavigator.GetString: AnsiString;
 {-}
begin
 Result := 'LeftNavigator';
end;//Tkw_MainPrim_Control_LeftNavigator.GetString
{$IfEnd} //not NoScripts

type
  Tkw_MainPrim_Control_LeftNavigator_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола LeftNavigator
----
*Пример использования*:
[code]
контрол::LeftNavigator:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainPrim_Control_LeftNavigator_Push

// start class Tkw_MainPrim_Control_LeftNavigator_Push

{$If not defined(NoScripts)}
procedure Tkw_MainPrim_Control_LeftNavigator_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('LeftNavigator');
 inherited;
end;//Tkw_MainPrim_Control_LeftNavigator_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MainPrim_Control_RightNavigator = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола RightNavigator
----
*Пример использования*:
[code]
контрол::RightNavigator TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainPrim_Control_RightNavigator

// start class Tkw_MainPrim_Control_RightNavigator

{$If not defined(NoScripts)}
function Tkw_MainPrim_Control_RightNavigator.GetString: AnsiString;
 {-}
begin
 Result := 'RightNavigator';
end;//Tkw_MainPrim_Control_RightNavigator.GetString
{$IfEnd} //not NoScripts

type
  Tkw_MainPrim_Control_RightNavigator_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола RightNavigator
----
*Пример использования*:
[code]
контрол::RightNavigator:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainPrim_Control_RightNavigator_Push

// start class Tkw_MainPrim_Control_RightNavigator_Push

{$If not defined(NoScripts)}
procedure Tkw_MainPrim_Control_RightNavigator_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('RightNavigator');
 inherited;
end;//Tkw_MainPrim_Control_RightNavigator_Push.DoDoIt
{$IfEnd} //not NoScripts

procedure TMainPrimForm.VcmMainFormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
//#UC START# *4F6B4C7101EB_4F6B382E00D9_var*
//#UC END# *4F6B4C7101EB_4F6B382E00D9_var*
begin
//#UC START# *4F6B4C7101EB_4F6B382E00D9_impl*
 if CanClose AND
   (not SDI OR (Dispatcher.FormDispatcher.MainFormsCount <= 1)) then
 begin
  with Dispatcher do
  begin
   if not InClosingAllWindows then
   begin
    CanClose := AskMayExit;
    if CanClose then
     CanClose := (l3System.CheckClipboard(afw.Application.AskClearClipboardProc) <> IDCancel);
   end//not InClosingAllWindows
   else
    CanClose := InClosingAllWindows;

  if CanClose then
   Self.DropChangeStatusToOpened;
  end;//with Dispatcher
 end;//CanClose..
//#UC END# *4F6B4C7101EB_4F6B382E00D9_impl*
end;//TMainPrimForm.VcmMainFormCloseQuery

procedure TMainPrimForm.VcmMainFormInsertForm(const aForm: IvcmEntityForm;
  var aMode: TvcmInsertMode);
//#UC START# *4F6B688F02BB_4F6B382E00D9_var*
var
 l_IForm: IvcmEntityForm;
//#UC END# *4F6B688F02BB_4F6B382E00D9_var*
begin
//#UC START# *4F6B688F02BB_4F6B382E00D9_impl*
 case aForm.ZoneType of
  vcm_ztParent:
  begin
   // Проверка вставки самого контейнера:
   if not aForm.SameName(fm_ParentForm.rFormID) then
   begin
    aMode := vcm_imDisable;
    if HasForm(fm_ParentForm.rFormID, vcm_ztParent, false, @l_IForm) then
     // Если контейнер уже существует, то вставляем в него:
     l_IForm.AsContainer.InsertForm(aForm)
    else
    begin
     // Создаем контейнер для основных объектов и вставляем форму уже в него:
     l_IForm := TdmStdRes.MakeParent(Self);
     l_IForm.AsContainer.InsertForm(aForm);
    end;//HasForm(fm_ParentForm, vcm_ztParent, false, @l_IForm)
   end//not aForm.SameName(fm_ParentForm)
   else
    aMode := vcm_imAllow;
  end;//vcm_ztParent
  vcm_ztChild:
  begin
   if not aForm.SameName(fm_ChildForm.rFormID) then {проверка вставки самого контейнера}
   begin
    aMode := vcm_imDisable;
    if HasForm(fm_ChildForm.rFormID, vcm_ztChild, false, @l_IForm) then
     // Если контейнер уже существует, то вставляем в него:
     l_IForm.AsContainer.InsertForm(aForm)
    else
    if HasForm(fm_ParentForm.rFormID, vcm_ztParent, false, @l_IForm) then
     // Создаем контейнер для зависимых объектов и вставляем форму уже в него:
     TdmStdRes.MakeChild(Self, l_IForm.VCLWinControl As TvcmEntityForm).AsContainer.InsertForm(aForm)
    else
     raise Exception.Create('Дочерняя зона создаётся раньше родительской');
   end//not aForm.SameName(fm_ChildForm)
   else
    aMode := vcm_imAllow;
  end;//vcm_ztChild
  vcm_ztNavigator:
   aMode := vcm_imAllow;
  else
   aMode := vcm_imAllow;
 end;//case aForm.ZoneType
//#UC END# *4F6B688F02BB_4F6B382E00D9_impl*
end;//TMainPrimForm.VcmMainFormInsertForm

procedure TMainPrimForm.FChildZoneQueryResize(ALeft: Integer;
  ATop: Integer;
  AWidth: Integer;
  AHeight: Integer;
  var aCanResize: Boolean);
//#UC START# *4F7AE3370161_4F6B382E00D9_var*
const
 cMinChildHeight = 75;
   {* - минимальная высота ChildZone при которой не происходит перехода на
        первую закладку. }
var
 lForm : IvcmEntityForm;
//#UC END# *4F7AE3370161_4F6B382E00D9_var*
begin
//#UC START# *4F7AE3370161_4F6B382E00D9_impl*
 aCanResize := (AHeight > cMinChildHeight);
 (* Поиск Child_Form *)
 if not aCanResize and HasForm(fm_ChildForm.rFormID, vcm_ztChild, True, @lForm) then
 try
  (* Переход на первую закладку *)
  op_Switcher_SetFirstPageActive.Call(lForm);
 finally
  lForm := nil;
 end;//try..finally
//#UC END# *4F7AE3370161_4F6B382E00D9_impl*
end;//TMainPrimForm.FChildZoneQueryResize

procedure TMainPrimForm.FLeftNavigatorSaveSize(Sender: TObject;
  aSize: Integer);
//#UC START# *4F7B02880214_4F6B382E00D9_var*
//#UC END# *4F7B02880214_4F6B382E00D9_var*
begin
//#UC START# *4F7B02880214_4F6B382E00D9_impl*
 afw.Settings.SaveInteger(pi_Navigator_LeftSize, aSize);
//#UC END# *4F7B02880214_4F6B382E00D9_impl*
end;//TMainPrimForm.FLeftNavigatorSaveSize

procedure TMainPrimForm.FLeftNavigatorStateChange(Sender: TObject);
//#UC START# *4F7B02A4014A_4F6B382E00D9_var*
//#UC END# *4F7B02A4014A_4F6B382E00D9_var*
begin
//#UC START# *4F7B02A4014A_4F6B382E00D9_impl*
 afw.Settings.SaveInteger(pi_LeftNavigator, Ord(LeftNavigator.State));
//#UC END# *4F7B02A4014A_4F6B382E00D9_impl*
end;//TMainPrimForm.FLeftNavigatorStateChange

procedure TMainPrimForm.FLeftNavigatorLoadSize(Sender: TObject;
  var aSize: Integer);
//#UC START# *4F7B02C1038C_4F6B382E00D9_var*
//#UC END# *4F7B02C1038C_4F6B382E00D9_var*
begin
//#UC START# *4F7B02C1038C_4F6B382E00D9_impl*
 aSize := afw.Settings.LoadInteger(pi_Navigator_LeftSize, dv_Navigator_LeftSize);
//#UC END# *4F7B02C1038C_4F6B382E00D9_impl*
end;//TMainPrimForm.FLeftNavigatorLoadSize

{$If defined(HasRightNavigator)}
procedure TMainPrimForm.FRightNavigatorSaveSize(Sender: TObject;
  aSize: Integer);
//#UC START# *4F7B030202AF_4F6B382E00D9_var*
//#UC END# *4F7B030202AF_4F6B382E00D9_var*
begin
//#UC START# *4F7B030202AF_4F6B382E00D9_impl*
 afw.Settings.SaveInteger(pi_Navigator_RightSize, aSize);
//#UC END# *4F7B030202AF_4F6B382E00D9_impl*
end;//TMainPrimForm.FRightNavigatorSaveSize
{$IfEnd} //HasRightNavigator

{$If defined(HasRightNavigator)}
procedure TMainPrimForm.FRightNavigatorStateChange(Sender: TObject);
//#UC START# *4F7B0324026C_4F6B382E00D9_var*
//#UC END# *4F7B0324026C_4F6B382E00D9_var*
begin
//#UC START# *4F7B0324026C_4F6B382E00D9_impl*
 afw.Settings.SaveInteger(pi_RightNavigator, Ord(RightNavigator.State));
//#UC END# *4F7B0324026C_4F6B382E00D9_impl*
end;//TMainPrimForm.FRightNavigatorStateChange
{$IfEnd} //HasRightNavigator

{$If defined(HasRightNavigator)}
procedure TMainPrimForm.FRightNavigatorLoadSize(Sender: TObject;
  var aSize: Integer);
//#UC START# *4F7B03520229_4F6B382E00D9_var*
//#UC END# *4F7B03520229_4F6B382E00D9_var*
begin
//#UC START# *4F7B03520229_4F6B382E00D9_impl*
 aSize := afw.Settings.LoadInteger(pi_Navigator_RightSize, dv_Navigator_RightSize);
//#UC END# *4F7B03520229_4F6B382E00D9_impl*
end;//TMainPrimForm.FRightNavigatorLoadSize
{$IfEnd} //HasRightNavigator

{$If defined(HasRightNavigator)}
procedure TMainPrimForm.SaveRightNavigatorSize;
//#UC START# *4F7B07610146_4F6B382E00D9_var*
//#UC END# *4F7B07610146_4F6B382E00D9_var*
begin
//#UC START# *4F7B07610146_4F6B382E00D9_impl*
 afw.Settings.SaveInteger(pi_Navigator_RightSize, RightNavigator.SizeNormal);
//#UC END# *4F7B07610146_4F6B382E00D9_impl*
end;//TMainPrimForm.SaveRightNavigatorSize
{$IfEnd} //HasRightNavigator

{$If defined(HasRightNavigator)}
procedure TMainPrimForm.LoadRightNavigatorSize;
//#UC START# *4F7B077502AC_4F6B382E00D9_var*
//#UC END# *4F7B077502AC_4F6B382E00D9_var*
begin
//#UC START# *4F7B077502AC_4F6B382E00D9_impl*
 RightNavigator.SizeNormal := afw.Settings.LoadInteger(pi_Navigator_RightSize,
  dv_Navigator_RightSize);
//#UC END# *4F7B077502AC_4F6B382E00D9_impl*
end;//TMainPrimForm.LoadRightNavigatorSize
{$IfEnd} //HasRightNavigator

procedure TMainPrimForm.SaveLeftNavigatorSize;
//#UC START# *4F7B0786002B_4F6B382E00D9_var*
//#UC END# *4F7B0786002B_4F6B382E00D9_var*
begin
//#UC START# *4F7B0786002B_4F6B382E00D9_impl*
 afw.Settings.SaveInteger(pi_Navigator_LeftSize, LeftNavigator.SizeNormal);
//#UC END# *4F7B0786002B_4F6B382E00D9_impl*
end;//TMainPrimForm.SaveLeftNavigatorSize

procedure TMainPrimForm.LoadLeftNavigatorSize;
//#UC START# *4F7B079B001C_4F6B382E00D9_var*
//#UC END# *4F7B079B001C_4F6B382E00D9_var*
begin
//#UC START# *4F7B079B001C_4F6B382E00D9_impl*
 LeftNavigator.SizeNormal := afw.Settings.LoadInteger(pi_Navigator_LeftSize,
  dv_Navigator_LeftSize);
//#UC END# *4F7B079B001C_4F6B382E00D9_impl*
end;//TMainPrimForm.LoadLeftNavigatorSize

procedure TMainPrimForm.ActivateDefKeyboardLayout;
//#UC START# *4F71FA8102BF_4F6B382E00D9_var*
//#UC END# *4F71FA8102BF_4F6B382E00D9_var*
begin
//#UC START# *4F71FA8102BF_4F6B382E00D9_impl*
 // - ничего не делаем
//#UC END# *4F71FA8102BF_4F6B382E00D9_impl*
end;//TMainPrimForm.ActivateDefKeyboardLayout

procedure TMainPrimForm.InitClone(aForm: TvcmMainForm);
//#UC START# *4F7AE85E01EF_4F6B382E00D9_var*
//#UC END# *4F7AE85E01EF_4F6B382E00D9_var*
begin
//#UC START# *4F7AE85E01EF_4F6B382E00D9_impl*
 // - ничего не делаем, пусть потомки делают
//#UC END# *4F7AE85E01EF_4F6B382E00D9_impl*
end;//TMainPrimForm.InitClone

procedure TMainPrimForm.VcmMainFormAfterInsertForm(const aForm: IvcmEntityForm);
//#UC START# *4F7AEC7F03CB_4F6B382E00D9_var*
//#UC END# *4F7AEC7F03CB_4F6B382E00D9_var*
begin
//#UC START# *4F7AEC7F03CB_4F6B382E00D9_impl*
 nsSetPageIcon(aForm);
//#UC END# *4F7AEC7F03CB_4F6B382E00D9_impl*
end;//TMainPrimForm.VcmMainFormAfterInsertForm

procedure TMainPrimForm.DropChangeStatusToOpened;
//#UC START# *4F7AED150304_4F6B382E00D9_var*
//#UC END# *4F7AED150304_4F6B382E00D9_var*
begin
//#UC START# *4F7AED150304_4F6B382E00D9_impl*
 // - ничего не делаем, пусть потомки разбираются
//#UC END# *4F7AED150304_4F6B382E00D9_impl*
end;//TMainPrimForm.DropChangeStatusToOpened

procedure TMainPrimForm.LoadSettings;
//#UC START# *4F7B0815025A_4F6B382E00D9_var*

 procedure LoadNavigator(aNavigator : TnscNavigator;
                         aPropId    : PAnsiChar;
                         aDefVal    : Integer);
 begin
  aNavigator.State := TNavigatorState(afw.Settings.LoadInteger(aPropId, aDefVal));
 end;

//#UC END# *4F7B0815025A_4F6B382E00D9_var*
begin
//#UC START# *4F7B0815025A_4F6B382E00D9_impl*
 LoadNavigator(LeftNavigator, pi_LeftNavigator, Ord(dv_LeftNavigator));
 {$IfDef HasRightNavigator}
 LoadNavigator(RightNavigator, pi_RightNavigator, Ord(dv_RightNavigator));
 {$EndIf HasRightNavigator}
 LoadLeftNavigatorSize;
 {$IfDef HasRightNavigator}
 LoadRightNavigatorSize;
 {$EndIf HasRightNavigator}
 LeftNavigator.AutoHideFloat := afw.Settings.LoadBoolean(pi_lnAutoHideFloat,
  dv_lnAutoHideFloat);
 {$IfDef HasRightNavigator}
 RightNavigator.AutoHideFloat := afw.Settings.LoadBoolean(pi_rnAutoHideFloat,
  dv_rnAutoHideFloat);
 {$EndIf HasRightNavigator} 
//#UC END# *4F7B0815025A_4F6B382E00D9_impl*
end;//TMainPrimForm.LoadSettings

procedure TMainPrimForm.CorrectHeight(var aHeight: Integer);
//#UC START# *499037820017_4F6B382E00D9_var*
var
 l_AvailableHeight: Integer;
//#UC END# *499037820017_4F6B382E00D9_var*
begin
//#UC START# *499037820017_4F6B382E00D9_impl*
 l_AvailableHeight := MainZone.Height - ParentZonePanel.Constraints.MinHeight;
 if aHeight > l_AvailableHeight then
  aHeight := l_AvailableHeight;
//#UC END# *499037820017_4F6B382E00D9_impl*
end;//TMainPrimForm.CorrectHeight

procedure TMainPrimForm.Common_ShowSplitter_Execute(aVisible: Boolean);
//#UC START# *4AE8744002F3_4F6B382E00D9exec_var*
//#UC END# *4AE8744002F3_4F6B382E00D9exec_var*
begin
//#UC START# *4AE8744002F3_4F6B382E00D9exec_impl*
 if aVisible then
  ChildZonePanel.SizeableSides := [szTop]
 else
  ChildZonePanel.SizeableSides := [];
//#UC END# *4AE8744002F3_4F6B382E00D9exec_impl*
end;//TMainPrimForm.Common_ShowSplitter_Execute

procedure TMainPrimForm.Common_ShowSplitter(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As ICommon_ShowSplitter_Params) do
  Common_ShowSplitter_Execute(Visible);
end;

procedure TMainPrimForm.Common_CheckChildZone_Execute(aToggle: Boolean);
//#UC START# *4AE8777F01A3_4F6B382E00D9exec_var*
var
 l_IForm: IvcmEntityForm;
//#UC END# *4AE8777F01A3_4F6B382E00D9exec_var*
begin
//#UC START# *4AE8777F01A3_4F6B382E00D9exec_impl*
 if aToggle then
 begin
  // Управляем видимостью нижнего контейнера
  if not HasForm(fm_ChildForm.rFormID, vcm_ztChild, false, @l_IForm) then
   ChildZonePanel.Hide
  else
  if l_IForm.AsContainer.HasForm(vcm_ztChild, false) then
   ChildZonePanel.Show
  else
   ChildZonePanel.Hide;
 end//aToggle
 else
  ChildZonePanel.Show;
//#UC END# *4AE8777F01A3_4F6B382E00D9exec_impl*
end;//TMainPrimForm.Common_CheckChildZone_Execute

procedure TMainPrimForm.Common_CheckChildZone(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As ICommon_CheckChildZone_Params) do
  Common_CheckChildZone_Execute(Toggle);
end;

procedure TMainPrimForm.Common_OpenNewWindowByUser_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C8A30B60087_4F6B382E00D9test_var*
//#UC END# *4C8A30B60087_4F6B382E00D9test_var*
begin
//#UC START# *4C8A30B60087_4F6B382E00D9test_impl*
 if g_InMakeClone then
  aParams.Op.Flag[vcm_ofEnabled] := false;
//#UC END# *4C8A30B60087_4F6B382E00D9test_impl*
end;//TMainPrimForm.Common_OpenNewWindowByUser_Test

procedure TMainPrimForm.Common_OpenNewWindowByUser_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C8A30B60087_4F6B382E00D9exec_var*
var
 l_Form: TvcmMainForm;
//#UC END# *4C8A30B60087_4F6B382E00D9exec_var*
begin
//#UC START# *4C8A30B60087_4F6B382E00D9exec_impl*
 g_InMakeClone := true;
 try
  l_Form := MakeClone;
  // http://mdp.garant.ru/pages/viewpage.action?pageId=414849606
  if (l_Form <> nil) then
  try
   InitClone(l_Form);
   if (GetForegroundWindow <> l_Form.Handle) then
    SetForegroundWindow(l_Form.Handle);
  finally
   l_Form := nil;
  end;//try..finally
 finally
  g_InMakeClone := false;
 end;//try..finally
//#UC END# *4C8A30B60087_4F6B382E00D9exec_impl*
end;//TMainPrimForm.Common_OpenNewWindowByUser_Execute

procedure TMainPrimForm.Common_GetWindowList_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C8A30DB001D_4F6B382E00D9test_var*
var
 l_List : IvcmNodes;
//#UC END# *4C8A30DB001D_4F6B382E00D9test_var*
begin
//#UC START# *4C8A30DB001D_4F6B382E00D9test_impl*
 l_List := aParams.Op.SubNodes;
 // Для одной формы список не показываем
 if Dispatcher.FormDispatcher.MainFormsCount = 1 then
 begin
  l_List.Clear;
  aParams.Op.Flag[vcm_ofEnabled] := false;
 end//Dispatcher.FormDispatcher.MainFormsCount
 else
 begin
  // Перезагрузим список, если изменился _Caption формы
  if not l3Same(f_OldCaption, CCaption) then
  begin
   TnsWindowsList.Instance.Reload;
   f_OldCaption := CCaption;
  end;//not l3Same(f_OldCaption, CCaption)
  // Установим список
  if (l_List <> nil) then
  begin
   with l_List do
   begin
    Clear;
    Add(TnsWindowsList.Instance.Root);
    // Текущая формы выделена check-ом
    Current := TnsWindowsList.Instance.FindNode(Self.As_IvcmEntityForm);
   end;//with l_List
  end;//l_List <> nil
 end;//Dispatcher.FormDispatcher.MainFormsCount
//#UC END# *4C8A30DB001D_4F6B382E00D9test_impl*
end;//TMainPrimForm.Common_GetWindowList_Test

procedure TMainPrimForm.Common_GetWindowList_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C8A30DB001D_4F6B382E00D9exec_var*
var
 lWindow  : InsWindow;
 lIndex   : Integer;
 lMyIndex : Integer;
//#UC END# *4C8A30DB001D_4F6B382E00D9exec_var*
begin
//#UC START# *4C8A30DB001D_4F6B382E00D9exec_impl*
 with Dispatcher.FormDispatcher do
 begin
  // Пользователь выбрал значение в списке
  if Supports(aParams.CurrentNode, InsWindow, lWindow) then
   try
    ShowMainForm(lWindow.Form);
   finally
    lWindow := nil;
   end//try..finally
  // Пользователь нажал на кнопку в toolbar-е, выберем следующее окно после
  // текущего
  else
  begin
   lMyIndex := -1;
   // Индекс текущей формы
   for lIndex := 0 to Pred(MainFormsCount) do
    if (MainForm[lIndex].VCLWinControl = Self) then
    begin
     lMyIndex := lIndex;
     Break;
    end;//VCLWinControl = Self
   // Надейм следущую форму и сделаем ее активной
   if (lMyIndex <> -1) then
   begin
    Inc(lMyIndex);
    if (lMyIndex = MainFormsCount) then
     lMyIndex := 0;
    ShowMainForm(MainForm[lMyIndex]);
   end;//lMyIndex <> -1
  end;//Supports(aParams.CurrentNode, InsWindow, lWindow)
 end;//with Dispatcher.FormDispatcher
//#UC END# *4C8A30DB001D_4F6B382E00D9exec_impl*
end;//TMainPrimForm.Common_GetWindowList_Execute

procedure TMainPrimForm.Common_CascadeWindows_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C8A30F30115_4F6B382E00D9exec_var*
//#UC END# *4C8A30F30115_4F6B382E00D9exec_var*
begin
//#UC START# *4C8A30F30115_4F6B382E00D9exec_impl*
 Dispatcher.CascadeWindows;
//#UC END# *4C8A30F30115_4F6B382E00D9exec_impl*
end;//TMainPrimForm.Common_CascadeWindows_Execute

procedure TMainPrimForm.Common_TileWindowsHorizontal_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C8A3114001E_4F6B382E00D9exec_var*
//#UC END# *4C8A3114001E_4F6B382E00D9exec_var*
begin
//#UC START# *4C8A3114001E_4F6B382E00D9exec_impl*
 Dispatcher.TileWindowsHorizontal;
//#UC END# *4C8A3114001E_4F6B382E00D9exec_impl*
end;//TMainPrimForm.Common_TileWindowsHorizontal_Execute

procedure TMainPrimForm.Common_TileWindowsVertical_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C8A312F018D_4F6B382E00D9exec_var*
//#UC END# *4C8A312F018D_4F6B382E00D9exec_var*
begin
//#UC START# *4C8A312F018D_4F6B382E00D9exec_impl*
 Dispatcher.TileWindowsVertical;
//#UC END# *4C8A312F018D_4F6B382E00D9exec_impl*
end;//TMainPrimForm.Common_TileWindowsVertical_Execute

procedure TMainPrimForm.Common_CloseAllWindows_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C8A31770143_4F6B382E00D9test_var*
//#UC END# *4C8A31770143_4F6B382E00D9test_var*
begin
//#UC START# *4C8A31770143_4F6B382E00D9test_impl*
 if (Dispatcher.FormDispatcher.MainFormsCount = 1) then
  aParams.Op.Flag[vcm_ofEnabled] := False;
//#UC END# *4C8A31770143_4F6B382E00D9test_impl*
end;//TMainPrimForm.Common_CloseAllWindows_Test

procedure TMainPrimForm.Common_CloseAllWindows_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C8A31770143_4F6B382E00D9exec_var*
//#UC END# *4C8A31770143_4F6B382E00D9exec_var*
begin
//#UC START# *4C8A31770143_4F6B382E00D9exec_impl*
 Dispatcher.CloseAllWindows(Self.as_IvcmEntityForm);
//#UC END# *4C8A31770143_4F6B382E00D9exec_impl*
end;//TMainPrimForm.Common_CloseAllWindows_Execute

procedure TMainPrimForm.Cleanup;
//#UC START# *479731C50290_4F6B382E00D9_var*
//#UC END# *479731C50290_4F6B382E00D9_var*
begin
//#UC START# *479731C50290_4F6B382E00D9_impl*
 TnsWindowsList.Instance.Remove(Self.As_IvcmEntityForm);
 inherited;
//#UC END# *479731C50290_4F6B382E00D9_impl*
end;//TMainPrimForm.Cleanup

procedure TMainPrimForm.InitFields;
//#UC START# *47A042E100E2_4F6B382E00D9_var*
//#UC END# *47A042E100E2_4F6B382E00D9_var*
begin
//#UC START# *47A042E100E2_4F6B382E00D9_impl*
 inherited;
 SDI := true;
//#UC END# *47A042E100E2_4F6B382E00D9_impl*
end;//TMainPrimForm.InitFields

constructor TMainPrimForm.Create(AOwner: TComponent);
//#UC START# *47D1602000C6_4F6B382E00D9_var*
//#UC END# *47D1602000C6_4F6B382E00D9_var*
begin
//#UC START# *47D1602000C6_4F6B382E00D9_impl*
 SDI := True;
 inherited;
//#UC END# *47D1602000C6_4F6B382E00D9_impl*
end;//TMainPrimForm.Create

{$If not defined(NoVCM)}
procedure TMainPrimForm.DoInit(aFromHistory: Boolean);
//#UC START# *49803F5503AA_4F6B382E00D9_var*
//#UC END# *49803F5503AA_4F6B382E00D9_var*
begin
//#UC START# *49803F5503AA_4F6B382E00D9_impl*
 inherited;
 // Появилась новая форма, перегрузим список открытых окон
 History.AddForm(Self.As_IvcmEntityForm);
 TnsWindowsList.Instance.Reload;
 OnInsertForm := vcmMainFormInsertForm;
 OnAfterInsertForm := vcmMainFormAfterInsertForm;
 OnCloseQuery := vcmMainFormCloseQuery;
 //WindowState := wsMaximized;
 f_NeedSwitchKeyboard := (Dispatcher.FormDispatcher.MainFormsCount = 1);
//#UC END# *49803F5503AA_4F6B382E00D9_impl*
end;//TMainPrimForm.DoInit
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
procedure TMainPrimForm.InitControls;
//#UC START# *4A8E8F2E0195_4F6B382E00D9_var*
//#UC END# *4A8E8F2E0195_4F6B382E00D9_var*
begin
//#UC START# *4A8E8F2E0195_4F6B382E00D9_impl*
 inherited;
 ActiveControl := ParentZonePanel;
 with ClientZone do
 begin
   Left := 0;
   Top := 0;
   Width := 801;
   Height := 542;
   Align := alClient;
   BevelOuter := bvNone;
   Color := clWhite;
   TabOrder := 0;
 end;//with ClientZone
 with BaseSearchPanel do
 begin
   Left := 0;
   Top := 0;
   Width := 801;
   Height := 41;
   Align := alTop;
   AutoSize := True;
   BevelOuter := bvNone;
   Color := clWhite;
   TabOrder := 0;
 end;//with BaseSearchPanel
 with MainZone do
 begin
   Left := 20;
   Top := 41;
   Width := 761;
   Height := 501;
   BevelOuter := bvNone;
   Color := clWhite;
   TabOrder := 1;
 end;//with MainZone;
 with LeftNavigator do
 begin
   Left := 0;
   Top := 41;
   Width := 20;
   Height := 501;
   OnSaveSize := fLeftNavigatorSaveSize;
   OnLoadSize := fLeftNavigatorLoadSize;
   Images := dmStdRes.SmallImageList;
   DelayIntervalOnHide := 700;
   DelayOnAutoHide := True;
   SingleFloatNavigator := False;
   Align := alLeft;
   SizeEmpty := 2;
   SizeNormal := 200;
   OnStateChange := fLeftNavigatorStateChange;
   UnDockFromFloat := True;
   ButtonsImageList := dmStdRes.NavigatorImageList;
   BevelOuter := bvNone;
   Color := clWhite;
   TabOrder := 3;
 end;//with LeftNavigator
 {$IfDef HasRightNavigator}
 with RightNavigator do
 begin
   Left := 781;
   Top := 41;
   Width := 20;
   Height := 501;
   OnSaveSize := fRightNavigatorSaveSize;
   OnLoadSize := fRightNavigatorLoadSize;
   Images := dmStdRes.SmallImageList;
   DelayIntervalOnHide := 700;
   DelayOnAutoHide := True;
   SingleFloatNavigator := False;
   Align := alRight;
   SizeEmpty := 2;
   SizeNormal := 200;
   OnStateChange := fRightNavigatorStateChange;
   UnDockFromFloat := True;
   ButtonsImageList := dmStdRes.NavigatorImageList;
   BevelOuter := bvNone;
   Color := clWhite;
   TabOrder := 2;
 end;//RightNavigator
 {$EndIf HasRightNavigator}
 with ChildZonePanel do
 begin
   Left := 0;
   Top := 261;
   Width := 761;
   Height := 240;
   ResizeAreaWidth := 5;
   SizeableSides := [szTop];
   SplitterBevel := bvRaised;
   OnQueryResize := fChildZoneQueryResize;
   Align := alBottom;
   BevelOuter := bvNone;
   Color := clWhite;
   Constraints.MinHeight := 27;
   TabOrder := 1;
 end;//ChildZonePanel
  with ParentZonePanel do
  begin
    Left := 0;
    Top := 0;
    Width := 761;
    Height := 261;
    Align := alClient;
    BevelOuter := bvNone;
    Color := clWhite;
    Constraints.MinHeight := 40;
    TabOrder := 0;
  end;//with ParentZonePanel
  with StatusBar do
  begin
    Left := 0;
    Top := 542;
    Width := 801;
    Height := 28;
    Font.Charset := RUSSIAN_CHARSET;
    Font.Color := clWindowText;
    Font.Height := -13;
    Font.Name := 'Arial';
    Font.Style := [];
    ParentFont := False;
    ParentShowHint := False;
    ShowHint := True;
  end;//with StatusBar
 RequestAlign; 
//#UC END# *4A8E8F2E0195_4F6B382E00D9_impl*
end;//TMainPrimForm.InitControls
{$IfEnd} //not NoVCM

procedure TMainPrimForm.DoShow;
//#UC START# *4B321D1301DD_4F6B382E00D9_var*
//#UC END# *4B321D1301DD_4F6B382E00D9_var*
begin
//#UC START# *4B321D1301DD_4F6B382E00D9_impl*
 inherited;
 if f_NeedSwitchKeyboard then
 begin
  Self.ActivateDefKeyboardLayout;
  f_NeedSwitchKeyboard := False;
 end;//f_NeedSwitchKeyboard
//#UC END# *4B321D1301DD_4F6B382E00D9_impl*
end;//TMainPrimForm.DoShow

{$If not defined(NoVCM)}
procedure TMainPrimForm.DoSaveInSettings;
//#UC START# *4F7B072201AA_4F6B382E00D9_var*
//#UC END# *4F7B072201AA_4F6B382E00D9_var*
begin
//#UC START# *4F7B072201AA_4F6B382E00D9_impl*
 inherited;
 with afw.Settings do
 begin
  SaveInteger(pi_LeftNavigator, Ord(LeftNavigator.State));
  {$IfDef HasRightNavigator}
  SaveInteger(pi_RightNavigator, Ord(RightNavigator.State));
  {$EndIf HasRightNavigator}
  SaveLeftNavigatorSize;
  {$IfDef HasRightNavigator}
  SaveRightNavigatorSize;
  {$EndIf HasRightNavigator}
  SaveBoolean(pi_lnAutoHideFloat, LeftNavigator.AutoHideFloat);
  {$IfDef HasRightNavigator}
  SaveBoolean(pi_rnAutoHideFloat, RightNavigator.AutoHideFloat);
  {$EndIf HasRightNavigator}
 end;//with afw.Settings
//#UC END# *4F7B072201AA_4F6B382E00D9_impl*
end;//TMainPrimForm.DoSaveInSettings
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
procedure TMainPrimForm.DispatcherCreated;
//#UC START# *4F7B0CF50022_4F6B382E00D9_var*
//#UC END# *4F7B0CF50022_4F6B382E00D9_var*
begin
//#UC START# *4F7B0CF50022_4F6B382E00D9_impl*
 inherited;
 g_vcmHistoryLimit := afw.Settings.LoadInteger(piHistoryItems, dvHistoryItems);
 MenuManager.LoadShortcuts;
//#UC END# *4F7B0CF50022_4F6B382E00D9_impl*
end;//TMainPrimForm.DispatcherCreated
{$IfEnd} //not NoVCM

procedure TMainPrimForm.ClearFields;
 {-}
begin
 f_OldCaption := nil;
 inherited;
end;//TMainPrimForm.ClearFields

procedure TMainPrimForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_Common, nil);
  PublishOpWithResult(en_Common, op_ShowSplitter, Common_ShowSplitter, nil, nil);
  PublishOpWithResult(en_Common, op_CheckChildZone, Common_CheckChildZone, nil, nil);
  PublishOp(en_Common, op_OpenNewWindowByUser, Common_OpenNewWindowByUser_Execute, Common_OpenNewWindowByUser_Test, nil);
  ShowInContextMenu(en_Common, op_OpenNewWindowByUser, false);
  ShowInToolbar(en_Common, op_OpenNewWindowByUser, false);
  PublishOp(en_Common, op_GetWindowList, Common_GetWindowList_Execute, Common_GetWindowList_Test, nil);
  ShowInContextMenu(en_Common, op_GetWindowList, false);
  ShowInToolbar(en_Common, op_GetWindowList, false);
  PublishOp(en_Common, op_CascadeWindows, Common_CascadeWindows_Execute, nil, nil);
  ShowInContextMenu(en_Common, op_CascadeWindows, false);
  ShowInToolbar(en_Common, op_CascadeWindows, false);
  PublishOp(en_Common, op_TileWindowsHorizontal, Common_TileWindowsHorizontal_Execute, nil, nil);
  ShowInContextMenu(en_Common, op_TileWindowsHorizontal, false);
  ShowInToolbar(en_Common, op_TileWindowsHorizontal, false);
  PublishOp(en_Common, op_TileWindowsVertical, Common_TileWindowsVertical_Execute, nil, nil);
  ShowInContextMenu(en_Common, op_TileWindowsVertical, false);
  ShowInToolbar(en_Common, op_TileWindowsVertical, false);
  PublishOp(en_Common, op_CloseAllWindows, Common_CloseAllWindows_Execute, Common_CloseAllWindows_Test, nil);
  ShowInContextMenu(en_Common, op_CloseAllWindows, false);
  ShowInToolbar(en_Common, op_CloseAllWindows, false);
 end;//with Entities.Entities
end;

procedure TMainPrimForm.MakeControls;
begin
 inherited;
 f_StatusBar := TnscStatusBar.Create(Self);
 f_StatusBar.Name := 'StatusBar';
 f_StatusBar.Parent := Self;
 f_ClientZone := TvtPanel.Create(Self);
 f_ClientZone.Name := 'ClientZone';
 f_ClientZone.Parent := Self;
 f_MainZone := TvtProportionalPanel.Create(Self);
 f_MainZone.Name := 'MainZone';
 f_MainZone.Parent := ClientZone;
 f_ParentZonePanel := TvtPanel.Create(Self);
 f_ParentZonePanel.Name := 'ParentZonePanel';
 f_ParentZonePanel.Parent := MainZone;
 with DefineZone(vcm_ztParent, f_ParentZonePanel) do
 begin
  //#UC START# *4F6B3F1401A7*
  FormStyle.Toolbars.Top.MergeWithContainer := vcm_bTrue;
  FormStyle.Toolbars.Bottom.ImageSize := isLarge;
  Self.TasksPanelZone := Index;
  //#UC END# *4F6B3F1401A7*
 end;//with DefineZone(vcm_ztParent, f_ParentZonePanel)
 f_ChildZonePanel := TvtSizeablePanel.Create(Self);
 f_ChildZonePanel.Name := 'ChildZonePanel';
 f_ChildZonePanel.Parent := MainZone;
 with DefineZone(vcm_ztChild, f_ChildZonePanel) do
 begin
 end;//with DefineZone(vcm_ztChild, f_ChildZonePanel)
 f_BaseSearchPanel := TvtPanel.Create(Self);
 f_BaseSearchPanel.Name := 'BaseSearchPanel';
 f_BaseSearchPanel.Parent := ClientZone;
 with DefineZone(vcm_ztMain, f_BaseSearchPanel) do
 begin
 end;//with DefineZone(vcm_ztMain, f_BaseSearchPanel)
 f_LeftNavigator := TnscNavigator.Create(Self);
 f_LeftNavigator.Name := 'LeftNavigator';
 f_LeftNavigator.Parent := ClientZone;
 with DefineZone(vcm_ztNavigator, f_LeftNavigator) do
 begin
  CanClose := vcm_ccEnable;
  //#UC START# *4F6B38AA020C*
  //Self.TasksPanelZone := Index;
  CanUndock := True;
  //CanClose = vcm_ccEnable
  FormStyle.Toolbars.Left.ImageSize := isSmall;
  FormStyle.Toolbars.Right.ImageSize := isSmall;
  FormStyle.Toolbars.Top.ImageSize := isSmall;
  FormStyle.Toolbars.Bottom.ImageSize := isSmall;
  //#UC END# *4F6B38AA020C*
 end;//with DefineZone(vcm_ztNavigator, f_LeftNavigator)
{$If defined(HasRightNavigator)}
 f_RightNavigator := TnscNavigator.Create(Self);
 f_RightNavigator.Name := 'RightNavigator';
 f_RightNavigator.Parent := ClientZone;
 with DefineZone(vcm_ztNavigator, f_RightNavigator) do
 begin
  CanClose := vcm_ccEnable;
  //#UC START# *4F6B38BE03C7*
  CanUndock := True;
  //CanClose = vcm_ccEnable
  FormStyle.Toolbars.Left.ImageSize := isSmall;
  FormStyle.Toolbars.Right.ImageSize := isSmall;
  FormStyle.Toolbars.Top.ImageSize := isSmall;
  FormStyle.Toolbars.Bottom.ImageSize := isSmall;
  //#UC END# *4F6B38BE03C7*
 end;//with DefineZone(vcm_ztNavigator, f_RightNavigator)
{$IfEnd} //HasRightNavigator
end;

initialization
// Регистрация Tkw_MainPrim_Control_StatusBar
 Tkw_MainPrim_Control_StatusBar.Register('контрол::StatusBar', TnscStatusBar);
// Регистрация Tkw_MainPrim_Control_StatusBar_Push
 Tkw_MainPrim_Control_StatusBar_Push.Register('контрол::StatusBar:push');
// Регистрация Tkw_MainPrim_Control_ClientZone
 Tkw_MainPrim_Control_ClientZone.Register('контрол::ClientZone', TvtPanel);
// Регистрация Tkw_MainPrim_Control_ClientZone_Push
 Tkw_MainPrim_Control_ClientZone_Push.Register('контрол::ClientZone:push');
// Регистрация Tkw_MainPrim_Control_MainZone
 Tkw_MainPrim_Control_MainZone.Register('контрол::MainZone', TvtProportionalPanel);
// Регистрация Tkw_MainPrim_Control_MainZone_Push
 Tkw_MainPrim_Control_MainZone_Push.Register('контрол::MainZone:push');
// Регистрация Tkw_MainPrim_Control_ParentZonePanel
 Tkw_MainPrim_Control_ParentZonePanel.Register('контрол::ParentZonePanel', TvtPanel);
// Регистрация Tkw_MainPrim_Control_ParentZonePanel_Push
 Tkw_MainPrim_Control_ParentZonePanel_Push.Register('контрол::ParentZonePanel:push');
// Регистрация Tkw_MainPrim_Control_ChildZonePanel
 Tkw_MainPrim_Control_ChildZonePanel.Register('контрол::ChildZonePanel', TvtSizeablePanel);
// Регистрация Tkw_MainPrim_Control_ChildZonePanel_Push
 Tkw_MainPrim_Control_ChildZonePanel_Push.Register('контрол::ChildZonePanel:push');
// Регистрация Tkw_MainPrim_Control_BaseSearchPanel
 Tkw_MainPrim_Control_BaseSearchPanel.Register('контрол::BaseSearchPanel', TvtPanel);
// Регистрация Tkw_MainPrim_Control_BaseSearchPanel_Push
 Tkw_MainPrim_Control_BaseSearchPanel_Push.Register('контрол::BaseSearchPanel:push');
// Регистрация Tkw_MainPrim_Control_LeftNavigator
 Tkw_MainPrim_Control_LeftNavigator.Register('контрол::LeftNavigator', TnscNavigator);
// Регистрация Tkw_MainPrim_Control_LeftNavigator_Push
 Tkw_MainPrim_Control_LeftNavigator_Push.Register('контрол::LeftNavigator:push');
// Регистрация Tkw_MainPrim_Control_RightNavigator
 Tkw_MainPrim_Control_RightNavigator.Register('контрол::RightNavigator', TnscNavigator);
// Регистрация Tkw_MainPrim_Control_RightNavigator_Push
 Tkw_MainPrim_Control_RightNavigator_Push.Register('контрол::RightNavigator:push');

end.