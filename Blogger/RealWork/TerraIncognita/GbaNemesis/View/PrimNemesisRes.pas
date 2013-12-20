unit PrimNemesisRes;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/PrimNemesisRes.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMApplication::Class>> F1 Оболочка Без Прецедентов::F1 Without Usecases::View::PrimNemesis
//
// Приложение Nemesis
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3Interfaces
  {$If not defined(NoVCM)}
  ,
  vcmExternalInterfaces
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  ,
  Messages,
  OfficeLike_Usual_Controls,
  NemesisMain_Form,
  L10nInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  OfficeLike_Result_Controls,
  F1_Without_Usecases_System_Controls,
  Main_Form,
  BaseSearchInterfaces,
  MainWindow_Form,
  ShellAndMonitoringsRes,
  ShellAndMonitoringsMain_Form,
  Search_Strange_Controls,
  nsLogEvent,
  l3StringIDEx
  {$If defined(Nemesis)}
  ,
  nscReminder
  {$IfEnd} //Nemesis
  ,
  MainOptions_Form,
  PrimBaseSearchInterfaces
  {$If defined(Nemesis)}
  ,
  nscRemindersLine
  {$IfEnd} //Nemesis
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  MainWindowInterfaces
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush
  {$IfEnd} //not NoScripts
  ,
  MainWithReminders_Form,
  nsIntegrationSupport
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  Forms,
  SearchUnit,
  lgTypes,
  Classes {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
TPrimNemesisRes = {abstract} class(TShellAndMonitoringsRes)
 {* Приложение Nemesis }
protected
   procedure RegisterFormSetFactories; override;
   procedure Loaded; override;
private
// private methods
   class procedure BeforeCorrectDate(const aDate: AnsiString);
     {* Глобальный обработчик сообщения о корректировке даты }
protected
// overridden protected methods
   class function RunOtherProcesses: Boolean; override;
   class function DoGlobalInit(aLogo: TCustomForm;
   var theSplash: IUnknown): Boolean; override;
   class procedure DoRun(var theSplash: IUnknown); override;
public
// overridden public methods
   class procedure OpenQuery(aQueryType: TlgQueryType;
   const aQuery: IQuery); override;

 public
 // operations codes
   class function opcode_Loadable_Load : TvcmOpID;
     { Это первый кандидат на превращение в Facet. Который нужно вызвать вот тут:
f_RequestingForm.Entity.Operation(op_Loadable_Load, l_Params).Done -> Коллеги, кто может описать этот метод? }
   class function opcode_System_CantReceiveLegalServiceAnswer : TvcmOpID;
     { Система -> Статус связи с ППО }
   class function opcode_Common_OnControlChanged : TvcmOpID;
     { Кандидат на превращение в фасет -> Изменился статус какого-то контроля }
   class function opcode_Scalable_ChangeScale : TvcmOpID;
     { Масштабируемый объект -> Изменить масштаб }
   class function opcode_Scalable_CanChangeScale : TvcmOpID;
     { Масштабируемый объект -> Масштабирование запрещено }
   class function opcode_Result_Cancel : TvcmOpID;
     { Результат диалога -> Отмена }
   class function opcode_Rubricator_SetListRoot : TvcmOpID;
     {  ->  }
   class function opcode_Rubricator_InitListRoot : TvcmOpID;
     {  ->  }
   class function opcode_Rubricator_Synchronize : TvcmOpID;
     {  ->  }
   class function opcode_Rubricator_GetRoot : TvcmOpID;
     {  ->  }
end;//TPrimNemesisRes
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  DataAdapter
  {$If not defined(NoVCM)}
  ,
  vcmBase
  {$IfEnd} //not NoVCM
  ,
  evStyleInterface,
  nsSettingsUtils,
  evStyleTableTools,
  LoggingUnit,
  resWarnImages,
  BaseTypesUnit,
  nsNodes,
  BaseTreeSupportUnit,
  Base_Operations_View_Controls,
  sdsMainWindow,
  WarningUserTypes_Warning_UserType,
  BaloonWarningUserTypes_Fake_UserType,
  BaloonWarningUserTypes_WarnJuror_UserType,
  BaloonWarningUserTypes_WarnPreActive_UserType,
  BaloonWarningUserTypes_WarnIsAbolished_UserType,
  BaloonWarningUserTypes_WarnOnControl_UserType,
  BaloonWarningUserTypes_WarnInactualDocument_UserType,
  BaloonWarningUserTypes_WarnTimeMachineOn_UserType,
  BaloonWarningUserTypes_WarnRedaction_UserType,
  BaloonWarningUserTypes_WarnTimeMachineWarning_UserType,
  BaloonWarningUserTypes_WarnTimeMachineException_UserType,
  BaloonWarningUserTypes_remListModified_UserType,
  BaloonWarningUserTypes_remListFiltered_UserType,
  BaloonWarningUserTypes_remTimeMachineWarning_UserType,
  BaloonWarningUserTypes_remUnreadConsultations_UserType,
  BaloonWarningUserTypes_remOnlineDead_UserType,
  BaloonWarningUserTypes_TrialModeWarning_UserType,
  BaloonWarningUserTypes_OldBaseWarning_UserType,
  BaloonWarningUserTypes_ControlledChangingWarning_UserType,
  l3MessageID,
  SysUtils,
  afwFacade
  {$If defined(Nemesis)}
  ,
  nscStatusBarOperationDefsList
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscStatusBarOperationDef
  {$IfEnd} //Nemesis
  ,
  StdRes,
  vcmEntityForm {a}
  {$If not defined(NoVCM)}
  ,
  vcmMessagesSupport
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmMainForm
  {$IfEnd} //not NoVCM
  ,
  OfficeLikeAppInterfaces,
  nsWindowsList,
  Windows,
  l3String,
  nsExternalObject,
  nsFolderFilterInfo,
  nsBaseMainMenuTree,
  nsOpenUtils,
  nsTypes,
  FoldersDomainInterfaces,
  DynamicTreeUnit,
  nsConst,
  Common_FormDefinitions_Controls,
  Common_Rubricator_Controls,
  nsUtils,
  DocumentUnit,
  l3Base,
  Dialogs,
  OfficeLike_System_Controls,
  IOUnit,
  bsTypes,
  nsManagers,
  Controls,
  nsBaseSearcher,
  nsQueryUtils,
  nsContextHistory,
  MemoryUsage_Form,
  l3AsincMessageWindow,
  l3SysUtils,
  IntegrationProjectUnit
  {$If not defined(NoVCM)}
  ,
  vcmMenuManager
  {$IfEnd} //not NoVCM
  ,
  l3ListenersManager,
  HelpIntfs,
  vtVerInf,
  SettingsUnit,
  nsConfiguration,
  nsValueMaps,
  nsValueMapsIDs,
  nsFlashWindow,
  l3Chars
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  nsStartupSupport,
  GblAdapter,
  StartUnit,
  MedicMainMenuRes,
  MainMenuNewRes,
  vtDateEdit,
  nsHooks,
  DebugStr
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type
  Tkw_Form_MainWindow = class(TtfwControlString)
   {* Слово словаря для идентификатора формы MainWindow
----
*Пример использования*:
[code]
'aControl' форма::MainWindow TryFocus ASSERT
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
   {* Слово словаря для доступа к экземпляру контрола OldBaseWarning формы MainWindow }
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
   {* Слово словаря для доступа к экземпляру контрола TrialModeWarning формы MainWindow }
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
   {* Слово словаря для доступа к экземпляру контрола remNewChatMessages формы MainWindow }
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
   {* Слово словаря для доступа к экземпляру контрола remOnlineDead формы MainWindow }
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
   {* Слово словаря для доступа к экземпляру контрола RemindersLine формы MainWindow }
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
   {* Слово словаря для доступа к экземпляру контрола ControlledChangingWarning формы MainWindow }
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
   {* Слово словаря для доступа к экземпляру контрола remUnreadConsultations формы MainWindow }
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
   {* Слово словаря для доступа к экземпляру контрола StatusBar формы MainWindow }
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
   {* Слово словаря для доступа к экземпляру контрола ClientZone формы MainWindow }
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
   {* Слово словаря для доступа к экземпляру контрола MainZone формы MainWindow }
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
   {* Слово словаря для доступа к экземпляру контрола ParentZonePanel формы MainWindow }
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
   {* Слово словаря для доступа к экземпляру контрола ChildZonePanel формы MainWindow }
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
   {* Слово словаря для доступа к экземпляру контрола BaseSearchPanel формы MainWindow }
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
   {* Слово словаря для доступа к экземпляру контрола LeftNavigator формы MainWindow }
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
   {* Слово словаря для доступа к экземпляру контрола RightNavigator формы MainWindow }
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

class procedure TPrimNemesisRes.BeforeCorrectDate(const aDate: AnsiString);
//#UC START# *4AA8AC090381_4A925AFF01BA_var*
//#UC END# *4AA8AC090381_4A925AFF01BA_var*
begin
//#UC START# *4AA8AC090381_4A925AFF01BA_impl*
 vcmAsk(err_DateWillBeCorrectF, [aDate]);
//#UC END# *4AA8AC090381_4A925AFF01BA_impl*
end;//TPrimNemesisRes.BeforeCorrectDate

class function TPrimNemesisRes.RunOtherProcesses: Boolean;
//#UC START# *4AA7C28A0113_4A925AFF01BA_var*
//#UC END# *4AA7C28A0113_4A925AFF01BA_var*
begin
//#UC START# *4AA7C28A0113_4A925AFF01BA_impl*
 Result := true;
 with TnsStartupSupport do
 begin
  repeat
   StartupPendingNotify;
   if IsRunDataInstallerParamExist then
   begin
    if TryRunDataInstaller then
    begin
     StartupCompletedNotify;
     WaitForDataInstallerExit;
     Result := false;
     Exit;
    end;//TryRunDataInstaller
   end//IsRunDataInstallerParamExist
   else
   if IsRunDataUpdaterParamExist then
   begin
    if TryRunDataUpdater then
    begin
     StartupCompletedNotify;
     WaitForDataUpdaterExit;
     Result := false;
     Exit;
    end;//TryRunDataUpdater
   end//IsRunDataUpdaterParamExist
   else
   if IsRunDownloaderParamExist then
   begin
    if TryRunDownloader then
    begin
     StartupCompletedNotify;
     WaitForDownloaderExit;
     Result := false;
     Exit;
    end;//TryRunDownloader
   end//IsRunDownloaderParamExist
   else
   if (TryUnlockLogin or TrySwitchToOtherRunningCopy) then
   begin
    TrySendOpenByNumer;
    //
    StartupCompletedNotify;
    Result := false;
    Exit;
   end;//TryUnlockLogin or TrySwitchToOtherRunningCopy
   StartupCompletedNotify;
  until (CheckAndCreateRunningCopyMutex);
  StartupPendingNotify;
 end;//TnsStartupSupport
//#UC END# *4AA7C28A0113_4A925AFF01BA_impl*
end;//TPrimNemesisRes.RunOtherProcesses

class function TPrimNemesisRes.DoGlobalInit(aLogo: TCustomForm;
  var theSplash: IUnknown): Boolean;
//#UC START# *4AA7D7CA00FE_4A925AFF01BA_var*
//#UC END# *4AA7D7CA00FE_4A925AFF01BA_var*
begin
//#UC START# *4AA7D7CA00FE_4A925AFF01BA_impl*
 Result := true;
 try
  theSplash := DataAdapter.GlobalInit(aLogo, afw.Application.LocaleInfo.Name);
 except
  on EAbort do
  begin
   l3System.CheckClipboard;
   // http://mdp.garant.ru/pages/viewpage.action?pageId=121145106
   Result := false;
   Exit;
   // здесь нужно именно так, чтобы выполнились все секции финализации (в частности те, которые удаляют временные файлы)
  end;//on EAbort
  on EInvalidBase do
  begin
   Result := false;
   Exit;
   // здесь нужно именно так, чтобы в десктопе завершила работу с настройками серверная часть (которая жива)
  end;//on EInvalidBase
  on EMorphoNotExists do
  begin
   Result := false;
   Exit;
   // здесь нужно именно так, чтобы в десктопе завершила работу с настройками серверная часть (которая жива)
  end;//on EMorphoNotExists
  on ECorbaException do
  begin
   aLogo.Hide;
   Application.HandleException(nil);
   TerminateProcess(GetCurrentProcess, 255);
  end;//on ECorbaException
  else
  begin
   aLogo.Hide;
   theSplash := nil;
   TerminateProcess(GetCurrentProcess, 255);
  end;
 end;//try..except
//#UC END# *4AA7D7CA00FE_4A925AFF01BA_impl*
end;//TPrimNemesisRes.DoGlobalInit

class procedure TPrimNemesisRes.DoRun(var theSplash: IUnknown);
//#UC START# *4AA7E4DC0047_4A925AFF01BA_var*
var
 l_Main : TnsMainWindow;
//#UC END# *4AA7E4DC0047_4A925AFF01BA_var*
begin
//#UC START# *4AA7E4DC0047_4A925AFF01BA_impl*
 inherited;
 g_vtBeforeCorrectDate := Self.BeforeCorrectDate;
 afw.Application.LockKeyboard;
 try
  defDataAdapter.DefineApplicationTitle;
  Application.CreateForm(TdmMedicMainMenuRes, dmMainMenuNewRes);
  afw.ProcessMessages;
  Application.CreateForm(TdmMainMenuNew, dmMainMenuNew);
  afw.ProcessMessages;
  Application.CreateForm(TnsMainWindow, l_Main);
  {$IfDef InsiderTest}
  l_Main.DefaultMonitor := dmDesktop;
  {$EndIf InsiderTest}
  afw.ProcessMessages;
 finally
  if defDataAdapter.FatalExceptionRaised then
  begin
   theSplash := nil;
   TerminateProcess(GetCurrentProcess, 255);
  end;
  theSplash := nil;
  defDataAdapter.InStartUpProcess := False;
  afw.Application.UnLockKeyboard;
  if (l_Main <> nil) then
   SetForeGroundWindow(l_Main.Handle);
 end;//try..finally
//#UC END# *4AA7E4DC0047_4A925AFF01BA_impl*
end;//TPrimNemesisRes.DoRun

class procedure TPrimNemesisRes.OpenQuery(aQueryType: TlgQueryType;
  const aQuery: IQuery);
//#UC START# *4AC4A69D03B7_4A925AFF01BA_var*
//#UC END# *4AC4A69D03B7_4A925AFF01BA_var*
begin
//#UC START# *4AC4A69D03B7_4A925AFF01BA_impl*
 case aQueryType of
  lg_qtKeyWord:
   TdmStdRes.OpenKeyWord(aQuery);
  lg_qtAttribute:
   TdmStdRes.AttributeSearch(aQuery, nil);
  lg_qtPublishedSource:
   TdmStdRes.PublishSourceSearch(aQuery, nil);
  lg_qtLegislationReview:
   TdmStdRes.OpenLegislationReview(aQuery);
  lg_qtSendConsultation:
   vcmDispatcher.ModuleOperation(TdmStdRes.mod_opcode_Search_OpenConsult);
  lg_qtBaseSearch:
   TdmStdRes.OpenBaseSearch(ns_bsokGlobal,
                            aQuery);
  lg_qtInpharmSearch:
   TdmStdRes.InpharmSearch(aQuery, nil);
  else
   inherited;   
 end;//case aQueryType
//#UC END# *4AC4A69D03B7_4A925AFF01BA_impl*
end;//TPrimNemesisRes.OpenQuery

procedure TPrimNemesisRes.RegisterFormSetFactories;
begin
 inherited;
end;

var
 g_opcode_Loadable_Load : TvcmOpID;
 g_opcode_System_CantReceiveLegalServiceAnswer : TvcmOpID;
 g_opcode_Common_OnControlChanged : TvcmOpID;
 g_opcode_Scalable_ChangeScale : TvcmOpID;
 g_opcode_Scalable_CanChangeScale : TvcmOpID;
 g_opcode_Result_Cancel : TvcmOpID;
 g_opcode_Rubricator_SetListRoot : TvcmOpID;
 g_opcode_Rubricator_InitListRoot : TvcmOpID;
 g_opcode_Rubricator_Synchronize : TvcmOpID;
 g_opcode_Rubricator_GetRoot : TvcmOpID;

procedure TPrimNemesisRes.Loaded;
begin
 inherited;
 g_opcode_Loadable_Load :=
  PublishInternalOperation(en_Loadable,
                    op_Load,
                    en_capLoadable,
                    op_capLoad);
 g_opcode_System_CantReceiveLegalServiceAnswer :=
  PublishOperation(en_System,
                    op_CantReceiveLegalServiceAnswer,
                    en_capSystem,
                    op_capCantReceiveLegalServiceAnswer);
  with PublishOperationState(en_System, op_CantReceiveLegalServiceAnswer, 'On') do
  begin
   st_user_System_CantReceiveLegalServiceAnswer_On := StateIndex;
   Hint := 'Произошла ошибка связи при получении ответов службы Правовой поддержки онлайн. ' + 'В связи с этим ответы на ранее заданные Вами вопросы не могут быть доставлены.' + #13#10#13#10 + 'Для решения технических вопросов обратитесь, к Вашему системному администратору. ' + 'Если проблемы с интернет-соединением возникают только для системы ГАРАНТ, обратитесь в обслуживающую Вас организацию:' + #13#10 + '<текст из dealer.inf>';
   ImageIndex := 185;
  end;//with PublishOperationState(en_System, op_CantReceiveLegalServiceAnswer, 'On')
  with PublishOperationState(en_System, op_CantReceiveLegalServiceAnswer, 'Off') do
  begin
   st_user_System_CantReceiveLegalServiceAnswer_Off := StateIndex;
   Caption := 'Связь восстановлена';
   ImageIndex := 186;
  end;//with PublishOperationState(en_System, op_CantReceiveLegalServiceAnswer, 'Off')
  with PublishOperationState(en_System, op_CantReceiveLegalServiceAnswer, 'Disabled') do
  begin
   st_user_System_CantReceiveLegalServiceAnswer_Disabled := StateIndex;
   Enabled := false;
  end;//with PublishOperationState(en_System, op_CantReceiveLegalServiceAnswer, 'Disabled')
 g_opcode_Common_OnControlChanged :=
  PublishInternalOperation(en_Common,
                    op_OnControlChanged,
                    en_capCommon,
                    op_capOnControlChanged);
 PublishOperation(en_Common,
                    op_Exit,
                    en_capCommon,
                    op_capExit);
 g_opcode_Scalable_ChangeScale :=
  PublishInternalOperation(en_Scalable,
                    op_ChangeScale,
                    en_capScalable,
                    op_capChangeScale);
 g_opcode_Scalable_CanChangeScale :=
  PublishInternalOperation(en_Scalable,
                    op_CanChangeScale,
                    en_capScalable,
                    op_capCanChangeScale);
 g_opcode_Result_Cancel :=
  PublishOperation(en_Result,
                    op_Cancel,
                    en_capResult,
                    op_capCancel);
  with PublishOperationState(en_Result, op_Cancel, 'Close') do
  begin
   st_user_Result_Cancel_Close := StateIndex;
   Caption := 'Закрыть';
  end;//with PublishOperationState(en_Result, op_Cancel, 'Close')
 PublishOperation(en_Fonts,
                    op_IncreaseFont,
                    en_capFonts,
                    op_capIncreaseFont);
 PublishOperation(en_Fonts,
                    op_DecreaseFont,
                    en_capFonts,
                    op_capDecreaseFont);
 PublishOperation(en_Help,
                    op_HotInformation,
                    en_capHelp,
                    op_capHotInformation);
 PublishOperation(en_Help,
                    op_HelpShortCuts,
                    en_capHelp,
                    op_capHelpShortCuts);
 PublishOperation(en_Help,
                    op_HelpNewFeatures,
                    en_capHelp,
                    op_capHelpNewFeatures);
 PublishOperation(en_Help,
                    op_ContactInformation,
                    en_capHelp,
                    op_capContactInformation);
 PublishOperation(en_Help,
                    op_ReplyBook,
                    en_capHelp,
                    op_capReplyBook);
 PublishOperation(en_Help,
                    op_GarantInternet,
                    en_capHelp,
                    op_capGarantInternet);
 PublishOperation(en_Help,
                    op_About,
                    en_capHelp,
                    op_capAbout);
 PublishOperation(en_System,
                    op_BookmarkList,
                    en_capSystem,
                    op_capBookmarkList);
 PublishOperation(en_WarnOnControl,
                    op_BuildControlledList,
                    en_capWarnOnControl,
                    op_capBuildControlledList);
 PublishOperation(en_WarnOnControl,
                    op_OpenUnderControlTree,
                    en_capWarnOnControl,
                    op_capOpenUnderControlTree);
 PublishOperation(en_WarnOnControl,
                    op_HideReminder,
                    en_capWarnOnControl,
                    op_capHideReminder);
 g_opcode_Rubricator_SetListRoot :=
  PublishInternalOperation(en_Rubricator,
                    op_SetListRoot,
                    en_capRubricator,
                    op_capSetListRoot);
 g_opcode_Rubricator_InitListRoot :=
  PublishInternalOperation(en_Rubricator,
                    op_InitListRoot,
                    en_capRubricator,
                    op_capInitListRoot);
 g_opcode_Rubricator_Synchronize :=
  PublishInternalOperation(en_Rubricator,
                    op_Synchronize,
                    en_capRubricator,
                    op_capSynchronize);
 g_opcode_Rubricator_GetRoot :=
  PublishInternalOperation(en_Rubricator,
                    op_GetRoot,
                    en_capRubricator,
                    op_capGetRoot);
 PublishOperation(en_Common,
                    op_MemUsage,
                    en_capCommon,
                    op_capMemUsage);
 PublishOperation(en_Reminder,
                    op_RemMWControlledChangingWarning,
                    en_capReminder,
                    op_capRemMWControlledChangingWarning);
 PublishOperation(en_Reminder,
                    op_RemMWOldBaseWarning,
                    en_capReminder,
                    op_capRemMWOldBaseWarning);
 PublishOperation(en_Reminder,
                    op_RemMWTrialModeWarning,
                    en_capReminder,
                    op_capRemMWTrialModeWarning);
 PublishOperation(en_Reminder,
                    op_RemNewChatMessages,
                    en_capReminder,
                    op_capRemNewChatMessages);
 PublishOperation(en_Reminder,
                    op_RemOnlineDead,
                    en_capReminder,
                    op_capRemOnlineDead);
end;

// operations codes

class function TPrimNemesisRes.opcode_Loadable_Load : TvcmOpID;
begin
 Result := g_opcode_Loadable_Load;
 Assert((Result.rEnID > 0) AND (Result.rOpID > 0));
end;

class function TPrimNemesisRes.opcode_System_CantReceiveLegalServiceAnswer : TvcmOpID;
begin
 Result := g_opcode_System_CantReceiveLegalServiceAnswer;
 Assert((Result.rEnID > 0) AND (Result.rOpID > 0));
end;

class function TPrimNemesisRes.opcode_Common_OnControlChanged : TvcmOpID;
begin
 Result := g_opcode_Common_OnControlChanged;
 Assert((Result.rEnID > 0) AND (Result.rOpID > 0));
end;

class function TPrimNemesisRes.opcode_Scalable_ChangeScale : TvcmOpID;
begin
 Result := g_opcode_Scalable_ChangeScale;
 Assert((Result.rEnID > 0) AND (Result.rOpID > 0));
end;

class function TPrimNemesisRes.opcode_Scalable_CanChangeScale : TvcmOpID;
begin
 Result := g_opcode_Scalable_CanChangeScale;
 Assert((Result.rEnID > 0) AND (Result.rOpID > 0));
end;

class function TPrimNemesisRes.opcode_Result_Cancel : TvcmOpID;
begin
 Result := g_opcode_Result_Cancel;
 Assert((Result.rEnID > 0) AND (Result.rOpID > 0));
end;

class function TPrimNemesisRes.opcode_Rubricator_SetListRoot : TvcmOpID;
begin
 Result := g_opcode_Rubricator_SetListRoot;
 Assert((Result.rEnID > 0) AND (Result.rOpID > 0));
end;

class function TPrimNemesisRes.opcode_Rubricator_InitListRoot : TvcmOpID;
begin
 Result := g_opcode_Rubricator_InitListRoot;
 Assert((Result.rEnID > 0) AND (Result.rOpID > 0));
end;

class function TPrimNemesisRes.opcode_Rubricator_Synchronize : TvcmOpID;
begin
 Result := g_opcode_Rubricator_Synchronize;
 Assert((Result.rEnID > 0) AND (Result.rOpID > 0));
end;

class function TPrimNemesisRes.opcode_Rubricator_GetRoot : TvcmOpID;
begin
 Result := g_opcode_Rubricator_GetRoot;
 Assert((Result.rEnID > 0) AND (Result.rOpID > 0));
end;

{$IfEnd} //not Admin AND not Monitorings

end.