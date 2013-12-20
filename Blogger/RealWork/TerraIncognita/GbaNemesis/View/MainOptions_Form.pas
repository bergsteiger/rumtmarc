unit MainOptions_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/MainOptions_Form.pas"
// Начат: 10.09.2010 16:50
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMMainForm::Class>> F1 Оболочка Без Прецедентов::F1 Without Usecases::View::PrimNemesis::MainOptions
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
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmExternalInterfaces
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  ,
  NemesisMain_Form,
  L10nInterfaces,
  OfficeLike_Result_Controls,
  F1_Without_Usecases_System_Controls
  {$If defined(Nemesis)}
  ,
  nscReminder
  {$IfEnd} //Nemesis
  
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush
  {$IfEnd} //not NoScripts
  ,
  nsIntegrationSupport
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoVCM)}
  ,
  vcmMainForm
  {$IfEnd} //not NoVCM
  ,
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 InsIntegrationProcessor = interface(IUnknown)
   ['{C3E4F420-4422-4607-9F30-25BB208269A6}']
   function ProcessCommand(aCommand: Integer;
     InNewWindow: Boolean;
     const aContainer: IvcmContainer): Boolean;
   function ProcessLink(aLink: PnsLinkDataArray): Boolean;
   function CheckKey(aKey: PnsLinkDataArray): Boolean;
   procedure CheckInconic;
 end;//InsIntegrationProcessor

 TMainOptionsForm = {form} class(TNemesisMainForm)
 private
 // private fields
   f_ControlledChangingWarning : TnscReminder;
    {* Поле для свойства ControlledChangingWarning}
   f_remUnreadConsultations : TnscReminder;
    {* Поле для свойства remUnreadConsultations}
 protected
  procedure InitEntities; override;
  procedure MakeControls; override;
 protected
 // realized methods
   procedure Result_Cancel_Test(const aParams: IvcmTestParamsPrim);
     {* Отмена }
   procedure Result_Cancel_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Отмена }
   procedure Fonts_IncreaseFont_Test(const aParams: IvcmTestParamsPrim);
   procedure Fonts_IncreaseFont_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Fonts_DecreaseFont_Test(const aParams: IvcmTestParamsPrim);
   procedure Fonts_DecreaseFont_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Help_HotInformation_Test(const aParams: IvcmTestParamsPrim);
   procedure Help_HotInformation_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Help_HelpShortCuts_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Help_HelpNewFeatures_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Help_ContactInformation_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Help_ReplyBook_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Help_GarantInternet_Test(const aParams: IvcmTestParamsPrim);
   procedure Help_GarantInternet_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Help_About_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure System_BookmarkList_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure WarnOnControl_BuildControlledList_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Построить список изменившихся документов на контроле }
   procedure WarnOnControl_OpenUnderControlTree_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Открыть вкладку "Документы на контроле" }
   procedure WarnOnControl_HideReminder_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Скрыть предупреждающий знак }
 protected
 // overridden protected methods
   procedure InitClone(aForm: TvcmMainForm); override;
   procedure VcmMainFormAfterInsertForm(const aForm: IvcmEntityForm); override;
   procedure DropChangeStatusToOpened; override;
   procedure ClearFields; override;
 protected
 // protected fields
   f_InternetMap : InsStringValueMap;
   f_WindowInitialized : Boolean;
 protected
 // protected methods
   procedure LoadStartState(const aParams: IvcmMakeParams);
   procedure OpenUnderControl;
   procedure ShowWhatsNewHelpPage;
   function ConvertOpenOnStartSetting: Integer;
 public
 // public properties
   property ControlledChangingWarning: TnscReminder
     read f_ControlledChangingWarning;
   property remUnreadConsultations: TnscReminder
     read f_remUnreadConsultations;
 end;//TMainOptionsForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  OfficeLikeAppInterfaces,
  nsWindowsList,
  SysUtils
  {$If not defined(NoVCM)}
  ,
  vcmBase
  {$IfEnd} //not NoVCM
  ,
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
  DataAdapter,
  Forms,
  Common_FormDefinitions_Controls,
  Common_Rubricator_Controls,
  nsUtils,
  DocumentUnit,
  l3Base,
  afwFacade,
  l3Interfaces,
  Dialogs
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  StdRes {a},
  OfficeLike_Usual_Controls,
  OfficeLike_System_Controls
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
   g_InternerMapStrings : IvcmStrings = nil;

type
  Tkw_MainOptions_Control_ControlledChangingWarning = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола ControlledChangingWarning
----
*Пример использования*:
[code]
контрол::ControlledChangingWarning TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainOptions_Control_ControlledChangingWarning

// start class Tkw_MainOptions_Control_ControlledChangingWarning

{$If not defined(NoScripts)}
function Tkw_MainOptions_Control_ControlledChangingWarning.GetString: AnsiString;
 {-}
begin
 Result := 'ControlledChangingWarning';
end;//Tkw_MainOptions_Control_ControlledChangingWarning.GetString
{$IfEnd} //not NoScripts

type
  Tkw_MainOptions_Control_ControlledChangingWarning_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола ControlledChangingWarning
----
*Пример использования*:
[code]
контрол::ControlledChangingWarning:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainOptions_Control_ControlledChangingWarning_Push

// start class Tkw_MainOptions_Control_ControlledChangingWarning_Push

{$If not defined(NoScripts)}
procedure Tkw_MainOptions_Control_ControlledChangingWarning_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('ControlledChangingWarning');
 inherited;
end;//Tkw_MainOptions_Control_ControlledChangingWarning_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MainOptions_Control_remUnreadConsultations = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола remUnreadConsultations
----
*Пример использования*:
[code]
контрол::remUnreadConsultations TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainOptions_Control_remUnreadConsultations

// start class Tkw_MainOptions_Control_remUnreadConsultations

{$If not defined(NoScripts)}
function Tkw_MainOptions_Control_remUnreadConsultations.GetString: AnsiString;
 {-}
begin
 Result := 'remUnreadConsultations';
end;//Tkw_MainOptions_Control_remUnreadConsultations.GetString
{$IfEnd} //not NoScripts

type
  Tkw_MainOptions_Control_remUnreadConsultations_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола remUnreadConsultations
----
*Пример использования*:
[code]
контрол::remUnreadConsultations:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainOptions_Control_remUnreadConsultations_Push

// start class Tkw_MainOptions_Control_remUnreadConsultations_Push

{$If not defined(NoScripts)}
procedure Tkw_MainOptions_Control_remUnreadConsultations_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('remUnreadConsultations');
 inherited;
end;//Tkw_MainOptions_Control_remUnreadConsultations_Push.DoDoIt
{$IfEnd} //not NoScripts

procedure TMainOptionsForm.LoadStartState(const aParams: IvcmMakeParams);
//#UC START# *4C8A33C301CA_4C8A29700261_var*

 function lp_CheckCommandLine: Boolean;
 var
  l_Document : IDocument;
  l_Idx      : Integer;
  l_DocPos   : String;
 const
  c_OpenByNumberParamName = '-OpenByNumber';
 begin//lp_CheckCommandLine
  Result := false;
  for l_Idx := 1 to ParamCount do
   if (ANSICompareText(ParamStr(l_Idx),c_OpenByNumberParamName) = 0) then
   begin
    if (l_Idx < ParamCount) then
    begin
     l_DocPos := ParamStr(l_Idx + 1);
     Result := nsOpenDocumentByNumber(l_DocPos, True, True);
    end;//l_Idx < ParamCount
    Break;
   end;//ANSICompareText(ParamStr(l_Idx),c_OpenByNumberParamName)
 end;//lp_CheckCommandLine

//#UC END# *4C8A33C301CA_4C8A29700261_var*
begin
//#UC START# *4C8A33C301CA_4C8A29700261_impl*
 if not defDataAdapter.AdministratorLogin then
 begin
  if (g_Dispatcher.FormDispatcher.MainFormsCount > 1) or
     not lp_CheckCommandLine then
   (Self As InsIntegrationProcessor).ProcessCommand(ConvertOpenOnStartSetting, False, aParams.Container);
 end//not defDataAdapter.AdministratorLogin
 else
  Assert(false);
(*  Dispatcher._ModuleOperation(mop_Admin_OpenUserList,
                             vcmCleanUserParams(aParams));*)
//#UC END# *4C8A33C301CA_4C8A29700261_impl*
end;//TMainOptionsForm.LoadStartState

procedure TMainOptionsForm.OpenUnderControl;
//#UC START# *4C8A4B95003E_4C8A29700261_var*
//#UC END# *4C8A4B95003E_4C8A29700261_var*
begin
//#UC START# *4C8A4B95003E_4C8A29700261_impl*
 // Открываем форму с документами на контроле
 TdmStdRes.OpenUnderControl(Self);
 // Выдадим сообщение:
 MessageDlg(l3Cat(l3CStr(ControlledChangingWarning.Hint), '.'),
            'TnsMainWindow.OpenUnderControl', mtInformation);
 // Убираем значок предупреждения
 f_IsControlledObjectsChanging := False;
//#UC END# *4C8A4B95003E_4C8A29700261_impl*
end;//TMainOptionsForm.OpenUnderControl

procedure TMainOptionsForm.ShowWhatsNewHelpPage;
//#UC START# *4C8A4C9B00F9_4C8A29700261_var*
const
 c_HelpWhatsNewPage ='page-whatsnew.htm';
//#UC END# *4C8A4C9B00F9_4C8A29700261_var*
begin
//#UC START# *4C8A4C9B00F9_4C8A29700261_impl*
 Application.HelpSystem.ShowTopicHelp(c_HelpWhatsNewPage, '');
//#UC END# *4C8A4C9B00F9_4C8A29700261_impl*
end;//TMainOptionsForm.ShowWhatsNewHelpPage

function TMainOptionsForm.ConvertOpenOnStartSetting: Integer;
//#UC START# *4F86CBED00E7_4C8A29700261_var*
var
 l_Str : Il3CString;
//#UC END# *4F86CBED00E7_4C8A29700261_var*
begin
//#UC START# *4F86CBED00E7_4C8A29700261_impl*
 l_Str := afw.Settings.LoadString(pi_OpenOnStart, dv_OpenOnStart);
 if l3Same(l_Str, li_OpenOnStartAttributeSearch) then
  Result := GC_ATTRIBUTES_SEARCH
 else
 if l3Same(l_Str, li_OpenOnStartSituationSearch) then
  Result := GC_SITUATION_SEARCH
 else
 if l3Same(l_Str, li_OpenOnStartMainMenu) then
  Result := GC_MAIN_MENU
 else
 if l3Same(l_Str, li_OpenOnStartNavigator) then
  Result := GC_NAVIGATOR
 else
 if l3Same(l_Str, li_OpenOnStartInpharmSearch) then
  Result := GC_INPHARM_SEARCH
 else
 if l3Same(l_Str, li_OpenOnStartFullDrugList) then
  Result := GC_DRUG_LIST
 else
 if l3Same(l_Str, li_OpenOnStartInpharmMainMenu) then
  Result := GC_INPHARM_MAIN_MENU
 else
  Result := GC_LAST + 1;
//#UC END# *4F86CBED00E7_4C8A29700261_impl*
end;//TMainOptionsForm.ConvertOpenOnStartSetting

procedure TMainOptionsForm.Result_Cancel_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C762C910358_4C8A29700261test_var*
//#UC END# *4C762C910358_4C8A29700261test_var*
begin
//#UC START# *4C762C910358_4C8A29700261test_impl*
 aParams.Op.Flag[vcm_ofVisible] := False;
//#UC END# *4C762C910358_4C8A29700261test_impl*
end;//TMainOptionsForm.Result_Cancel_Test

procedure TMainOptionsForm.Result_Cancel_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C762C910358_4C8A29700261exec_var*
//#UC END# *4C762C910358_4C8A29700261exec_var*
begin
//#UC START# *4C762C910358_4C8A29700261exec_impl*
 Dispatcher.History.Back;
//#UC END# *4C762C910358_4C8A29700261exec_impl*
end;//TMainOptionsForm.Result_Cancel_Execute

procedure TMainOptionsForm.Fonts_IncreaseFont_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C8A2A5C03E4_4C8A29700261test_var*
//#UC END# *4C8A2A5C03E4_4C8A29700261test_var*
begin
//#UC START# *4C8A2A5C03E4_4C8A29700261test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := CanChangeDefaultFontSize;
//#UC END# *4C8A2A5C03E4_4C8A29700261test_impl*
end;//TMainOptionsForm.Fonts_IncreaseFont_Test

procedure TMainOptionsForm.Fonts_IncreaseFont_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C8A2A5C03E4_4C8A29700261exec_var*
//#UC END# *4C8A2A5C03E4_4C8A29700261exec_var*
begin
//#UC START# *4C8A2A5C03E4_4C8A29700261exec_impl*
 ChangeDefaultFontSize;
//#UC END# *4C8A2A5C03E4_4C8A29700261exec_impl*
end;//TMainOptionsForm.Fonts_IncreaseFont_Execute

procedure TMainOptionsForm.Fonts_DecreaseFont_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C8A2A72034C_4C8A29700261test_var*
//#UC END# *4C8A2A72034C_4C8A29700261test_var*
begin
//#UC START# *4C8A2A72034C_4C8A29700261test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := CanChangeDefaultFontSize(False);
//#UC END# *4C8A2A72034C_4C8A29700261test_impl*
end;//TMainOptionsForm.Fonts_DecreaseFont_Test

procedure TMainOptionsForm.Fonts_DecreaseFont_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C8A2A72034C_4C8A29700261exec_var*
//#UC END# *4C8A2A72034C_4C8A29700261exec_var*
begin
//#UC START# *4C8A2A72034C_4C8A29700261exec_impl*
 ChangeDefaultFontSize(False);
//#UC END# *4C8A2A72034C_4C8A29700261exec_impl*
end;//TMainOptionsForm.Fonts_DecreaseFont_Execute

procedure TMainOptionsForm.Help_HotInformation_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C8A43B3015E_4C8A29700261test_var*
var
 l_HotInformation: INodeBase;

 function lp_IsAlreadyShow: Boolean;
 {* Да, если на экране форма рубрикатора с горячей информацией. }
 var
  l_Form : IvcmEntityForm;
  l_Node : INodeBase;
 begin
  HasForm(fm_efRubricator.rFormID, vcm_ztParent, True, @l_Form);
  if l_Form <> nil then
   Result := Supports(Op_Rubricator_GetRoot.Call(l_Form), INodeBase, l_Node) and
             l_Node.IsSameNode(l_HotInformation)
  else
   Result := False;
 end;//lp_IsAlreadyShow

//#UC END# *4C8A43B3015E_4C8A29700261test_var*
begin
//#UC START# *4C8A43B3015E_4C8A29700261test_impl*
 l_HotInformation := TnsBaseMainMenuTree.nsFindNavigatorItem(ns_nipHotInformation);
 try
  aParams.Op.Flag[vcm_ofEnabled] := (l_HotInformation <> nil) and
   not lp_IsAlreadyShow;
 finally
  l_HotInformation := nil;
 end;//try..finally
//#UC END# *4C8A43B3015E_4C8A29700261test_impl*
end;//TMainOptionsForm.Help_HotInformation_Test

procedure TMainOptionsForm.Help_HotInformation_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C8A43B3015E_4C8A29700261exec_var*
var
 l_HotInformation: INodeBase;
//#UC END# *4C8A43B3015E_4C8A29700261exec_var*
begin
//#UC START# *4C8A43B3015E_4C8A29700261exec_impl*
 l_HotInformation := TnsBaseMainMenuTree.nsFindNavigatorItem(ns_nipHotInformation);
 try
  Assert(l_HotInformation <> nil);
  nsOpenNavigatorItem(l_HotInformation, Self, l_HotInformation, nil);
 finally
  l_HotInformation := nil;
 end;//try..finally
//#UC END# *4C8A43B3015E_4C8A29700261exec_impl*
end;//TMainOptionsForm.Help_HotInformation_Execute

procedure TMainOptionsForm.Help_HelpShortCuts_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C8A43C40120_4C8A29700261exec_var*
//#UC END# *4C8A43C40120_4C8A29700261exec_var*
begin
//#UC START# *4C8A43C40120_4C8A29700261exec_impl*
 Application.HelpSystem.ShowTopicHelp(cHelpShortcutPage, '');
//#UC END# *4C8A43C40120_4C8A29700261exec_impl*
end;//TMainOptionsForm.Help_HelpShortCuts_Execute

procedure TMainOptionsForm.Help_HelpNewFeatures_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C8A43E30011_4C8A29700261exec_var*
//#UC END# *4C8A43E30011_4C8A29700261exec_var*
begin
//#UC START# *4C8A43E30011_4C8A29700261exec_impl*
 ShowWhatsNewHelpPage;
//#UC END# *4C8A43E30011_4C8A29700261exec_impl*
end;//TMainOptionsForm.Help_HelpNewFeatures_Execute

procedure TMainOptionsForm.Help_ContactInformation_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C8A43FE01BD_4C8A29700261exec_var*
//#UC END# *4C8A43FE01BD_4C8A29700261exec_var*
begin
//#UC START# *4C8A43FE01BD_4C8A29700261exec_impl*
 Say(inf_AnyInformation, [DefDataAdapter.GetDealerInfo]);
//#UC END# *4C8A43FE01BD_4C8A29700261exec_impl*
end;//TMainOptionsForm.Help_ContactInformation_Execute

procedure TMainOptionsForm.Help_ReplyBook_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C8A440F025D_4C8A29700261exec_var*
//#UC END# *4C8A440F025D_4C8A29700261exec_var*
begin
//#UC START# *4C8A440F025D_4C8A29700261exec_impl*
 nsDoShellExecute(nsCStr(cInternetReplyBook));
//#UC END# *4C8A440F025D_4C8A29700261exec_impl*
end;//TMainOptionsForm.Help_ReplyBook_Execute

procedure TMainOptionsForm.Help_GarantInternet_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C8A4428006F_4C8A29700261test_var*
var
 l_Strings      : IvcmItems;
 l_StringSource : InsStringsSource;
//#UC END# *4C8A4428006F_4C8A29700261test_var*
begin
//#UC START# *4C8A4428006F_4C8A29700261test_impl*
 with aParams do
 begin
  Op.Flag[vcm_ofEnabled] := true;
  l_Strings := Op.SubItems;
  if (l_Strings <> nil) and
     (l_Strings.Count = 0) then
  begin
   if Supports(f_InternetMap, InsStringsSource, l_StringSource) then
    l_StringSource.FillStrings(l_Strings);
   l_Strings.AddOp(TdmStdRes.mod_opcode_Common_LetterToDevelopers);
   g_InternerMapStrings := l_Strings;
  end;//l_Strings <> nil
 end;
//#UC END# *4C8A4428006F_4C8A29700261test_impl*
end;//TMainOptionsForm.Help_GarantInternet_Test

procedure TMainOptionsForm.Help_GarantInternet_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C8A4428006F_4C8A29700261exec_var*
var
 l_CurOpIndex : Integer;
//#UC END# *4C8A4428006F_4C8A29700261exec_var*
begin
//#UC START# *4C8A4428006F_4C8A29700261exec_impl*
 l_CurOpIndex := aParams.ItemIndex;
 if (l_CurOpIndex <= 0) then
  Exit
 else
  Dec(l_CurOpIndex);
 // - индекс первого элемента в меню 1, поэтому подкорректируем индекс:
 nsDoShellExecute(f_InternetMap.DisplayNameToValue(g_InternerMapStrings.ItemC[l_CurOpIndex]));
//#UC END# *4C8A4428006F_4C8A29700261exec_impl*
end;//TMainOptionsForm.Help_GarantInternet_Execute

procedure TMainOptionsForm.Help_About_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C8A4442036F_4C8A29700261exec_var*
//#UC END# *4C8A4442036F_4C8A29700261exec_var*
begin
//#UC START# *4C8A4442036F_4C8A29700261exec_impl*
 TdmStdRes.About;
//#UC END# *4C8A4442036F_4C8A29700261exec_impl*
end;//TMainOptionsForm.Help_About_Execute

procedure TMainOptionsForm.System_BookmarkList_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C8A44DD0291_4C8A29700261exec_var*
//#UC END# *4C8A44DD0291_4C8A29700261exec_var*
begin
//#UC START# *4C8A44DD0291_4C8A29700261exec_impl*
 TdmStdRes.SelectOpen(Self.As_IvcmEntityForm,
                      TnsFolderFilterInfo.Make(ffBookmark, ns_ffNone),
                      str_OpenBookmark);
//#UC END# *4C8A44DD0291_4C8A29700261exec_impl*
end;//TMainOptionsForm.System_BookmarkList_Execute

procedure TMainOptionsForm.WarnOnControl_BuildControlledList_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C8A454E0063_4C8A29700261exec_var*
//#UC END# *4C8A454E0063_4C8A29700261exec_var*
begin
//#UC START# *4C8A454E0063_4C8A29700261exec_impl*
 TdmStdRes.BuildUnderControlList((aParams As IvcmExecuteParams).Container);
//#UC END# *4C8A454E0063_4C8A29700261exec_impl*
end;//TMainOptionsForm.WarnOnControl_BuildControlledList_Execute

procedure TMainOptionsForm.WarnOnControl_OpenUnderControlTree_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C8A456A0188_4C8A29700261exec_var*
//#UC END# *4C8A456A0188_4C8A29700261exec_var*
begin
//#UC START# *4C8A456A0188_4C8A29700261exec_impl*
 OpenUnderControl;
//#UC END# *4C8A456A0188_4C8A29700261exec_impl*
end;//TMainOptionsForm.WarnOnControl_OpenUnderControlTree_Execute

procedure TMainOptionsForm.WarnOnControl_HideReminder_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C8A4584039B_4C8A29700261exec_var*
//#UC END# *4C8A4584039B_4C8A29700261exec_var*
begin
//#UC START# *4C8A4584039B_4C8A29700261exec_impl*
 f_IsControlledObjectsChanging := False;
//#UC END# *4C8A4584039B_4C8A29700261exec_impl*
end;//TMainOptionsForm.WarnOnControl_HideReminder_Execute

procedure TMainOptionsForm.InitClone(aForm: TvcmMainForm);
//#UC START# *4F7AE85E01EF_4C8A29700261_var*
//#UC END# *4F7AE85E01EF_4C8A29700261_var*
begin
//#UC START# *4F7AE85E01EF_4C8A29700261_impl*
 inherited;
 LoadStartState(vcmMakeParams(nil, aForm, aForm));
//#UC END# *4F7AE85E01EF_4C8A29700261_impl*
end;//TMainOptionsForm.InitClone

procedure TMainOptionsForm.VcmMainFormAfterInsertForm(const aForm: IvcmEntityForm);
//#UC START# *4F7AEC7F03CB_4C8A29700261_var*
const
 cBSHeight = 107;
 // - так в dfm написано
//#UC END# *4F7AEC7F03CB_4C8A29700261_var*
begin
//#UC START# *4F7AEC7F03CB_4C8A29700261_impl*
 inherited;
 if aForm.SameName(fm_NewBaseSearchForm.rFormID) then
 begin
  if (aForm.VCLWinControl.Height <= 0) then
  // костыль для http://mdp.garant.ru/pages/viewpage.action?pageId=333552196
  begin
   aForm.VCLWinControl.Parent.Height := cBSHeight;
   aForm.VCLWinControl.Height := cBSHeight;
  end;//aForm.VCLWinControl.Height <= 0
 end;//aForm.SameName(fm_NewBaseSearchForm)
//#UC END# *4F7AEC7F03CB_4C8A29700261_impl*
end;//TMainOptionsForm.VcmMainFormAfterInsertForm

procedure TMainOptionsForm.DropChangeStatusToOpened;
//#UC START# *4F7AED150304_4C8A29700261_var*
//#UC END# *4F7AED150304_4C8A29700261_var*
begin
//#UC START# *4F7AED150304_4C8A29700261_impl*
 inherited;
 TdmStdRes.DropChangeStatusToOpened(Self.as_IvcmEntityForm);
//#UC END# *4F7AED150304_4C8A29700261_impl*
end;//TMainOptionsForm.DropChangeStatusToOpened

procedure TMainOptionsForm.ClearFields;
 {-}
begin
 f_InternetMap := nil;
 inherited;
end;//TMainOptionsForm.ClearFields

procedure TMainOptionsForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_Result, nil);
  PublishFormEntity(en_Fonts, nil);
  PublishFormEntity(en_Help, nil);
  PublishFormEntity(en_System, nil);
  PublishFormEntity(en_WarnOnControl, nil);
  MakeEntitySupportedByControl(en_WarnOnControl, ControlledChangingWarning);
  PublishOp(en_Result, op_Cancel, Result_Cancel_Execute, Result_Cancel_Test, nil);
  ShowInContextMenu(en_Result, op_Cancel, false);
  ShowInToolbar(en_Result, op_Cancel, false);
  PublishOp(en_Fonts, op_IncreaseFont, Fonts_IncreaseFont_Execute, Fonts_IncreaseFont_Test, nil);
  ShowInContextMenu(en_Fonts, op_IncreaseFont, false);
  ShowInToolbar(en_Fonts, op_IncreaseFont, true);
  PublishOp(en_Fonts, op_DecreaseFont, Fonts_DecreaseFont_Execute, Fonts_DecreaseFont_Test, nil);
  ShowInContextMenu(en_Fonts, op_DecreaseFont, false);
  ShowInToolbar(en_Fonts, op_DecreaseFont, true);
  PublishOp(en_Help, op_HotInformation, Help_HotInformation_Execute, Help_HotInformation_Test, nil);
  ShowInContextMenu(en_Help, op_HotInformation, false);
  ShowInToolbar(en_Help, op_HotInformation, false);
  PublishOp(en_Help, op_HelpShortCuts, Help_HelpShortCuts_Execute, nil, nil);
  ShowInContextMenu(en_Help, op_HelpShortCuts, false);
  ShowInToolbar(en_Help, op_HelpShortCuts, false);
  PublishOp(en_Help, op_HelpNewFeatures, Help_HelpNewFeatures_Execute, nil, nil);
  ShowInContextMenu(en_Help, op_HelpNewFeatures, false);
  ShowInToolbar(en_Help, op_HelpNewFeatures, false);
  PublishOp(en_Help, op_ContactInformation, Help_ContactInformation_Execute, nil, nil);
  ShowInContextMenu(en_Help, op_ContactInformation, false);
  ShowInToolbar(en_Help, op_ContactInformation, false);
  PublishOp(en_Help, op_ReplyBook, Help_ReplyBook_Execute, nil, nil);
  ShowInContextMenu(en_Help, op_ReplyBook, false);
  ShowInToolbar(en_Help, op_ReplyBook, false);
  PublishOp(en_Help, op_GarantInternet, Help_GarantInternet_Execute, Help_GarantInternet_Test, nil);
  ShowInContextMenu(en_Help, op_GarantInternet, false);
  ShowInToolbar(en_Help, op_GarantInternet, false);
  PublishOp(en_Help, op_About, Help_About_Execute, nil, nil);
  ShowInContextMenu(en_Help, op_About, false);
  ShowInToolbar(en_Help, op_About, false);
  PublishOp(en_System, op_BookmarkList, System_BookmarkList_Execute, nil, nil);
  ShowInContextMenu(en_System, op_BookmarkList, false);
  ShowInToolbar(en_System, op_BookmarkList, false);
  PublishOp(en_WarnOnControl, op_BuildControlledList, WarnOnControl_BuildControlledList_Execute, nil, nil);
  ShowInContextMenu(en_WarnOnControl, op_BuildControlledList, true);
  ShowInToolbar(en_WarnOnControl, op_BuildControlledList, false);
  PublishOp(en_WarnOnControl, op_OpenUnderControlTree, WarnOnControl_OpenUnderControlTree_Execute, nil, nil);
  ShowInContextMenu(en_WarnOnControl, op_OpenUnderControlTree, true);
  ShowInToolbar(en_WarnOnControl, op_OpenUnderControlTree, false);
  PublishOp(en_WarnOnControl, op_HideReminder, WarnOnControl_HideReminder_Execute, nil, nil);
  ShowInContextMenu(en_WarnOnControl, op_HideReminder, true);
  ShowInToolbar(en_WarnOnControl, op_HideReminder, false);
  ShowInContextMenu(en_History, op_Back, false);
  ShowInToolbar(en_History, op_Back, true);
  
  ShowInContextMenu(en_History, op_Forward, false);
  ShowInToolbar(en_History, op_Forward, true);
  
  ShowInContextMenu(en_Common, op_OpenNewWindowByUser, false);
  ShowInToolbar(en_Common, op_OpenNewWindowByUser, false);
  
  ShowInContextMenu(en_Common, op_GetWindowList, false);
  ShowInToolbar(en_Common, op_GetWindowList, false);
  
  ShowInContextMenu(en_Common, op_CascadeWindows, false);
  ShowInToolbar(en_Common, op_CascadeWindows, false);
  
  ShowInContextMenu(en_Common, op_TileWindowsHorizontal, false);
  ShowInToolbar(en_Common, op_TileWindowsHorizontal, false);
  
  ShowInContextMenu(en_Common, op_TileWindowsVertical, false);
  ShowInToolbar(en_Common, op_TileWindowsVertical, false);
  
  ShowInContextMenu(en_Common, op_CloseAllWindows, false);
  ShowInToolbar(en_Common, op_CloseAllWindows, false);
 end;//with Entities.Entities
end;

procedure TMainOptionsForm.MakeControls;
begin
 inherited;
 f_ControlledChangingWarning := TnscReminder.Create(Self);
 f_ControlledChangingWarning.Name := 'ControlledChangingWarning';
 f_ControlledChangingWarning.Parent := Self;
 f_remUnreadConsultations := TnscReminder.Create(Self);
 f_remUnreadConsultations.Name := 'remUnreadConsultations';
 f_remUnreadConsultations.Parent := Self;
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
//#UC START# *4C8A47F102D1*
//#UC END# *4C8A47F102D1*
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainOptions_Control_ControlledChangingWarning
 Tkw_MainOptions_Control_ControlledChangingWarning.Register('контрол::ControlledChangingWarning', TnscReminder);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainOptions_Control_ControlledChangingWarning_Push
 Tkw_MainOptions_Control_ControlledChangingWarning_Push.Register('контрол::ControlledChangingWarning:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainOptions_Control_remUnreadConsultations
 Tkw_MainOptions_Control_remUnreadConsultations.Register('контрол::remUnreadConsultations', TnscReminder);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainOptions_Control_remUnreadConsultations_Push
 Tkw_MainOptions_Control_remUnreadConsultations_Push.Register('контрол::remUnreadConsultations:push');
{$IfEnd} //not Admin AND not Monitorings

finalization
{$If not defined(Admin) AND not defined(Monitorings)}
//#UC START# *4C8A47FA036C*
 g_InternerMapStrings := nil;
//#UC END# *4C8A47FA036C*
{$IfEnd} //not Admin AND not Monitorings

end.