unit MainWithReminders_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/MainWithReminders_Form.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMMainForm::Class>> F1 Оболочка Без Прецедентов::F1 Without Usecases::View::PrimNemesis::MainWithReminders
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
  l3Interfaces,
  F1_Without_Usecases_System_Controls,
  Main_Form
  {$If defined(Nemesis)}
  ,
  nscReminder
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscRemindersLine
  {$IfEnd} //Nemesis
  
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 InsFlashingWindow = interface(IUnknown)
   ['{18DC2344-959D-4854-A58E-84080F09D788}']
   procedure StartFlashing;
   procedure StopFlashing;
 end;//InsFlashingWindow

 TMainWithRemindersForm = {form} class(TMainForm, InsFlashingWindow)
 private
 // private fields
   f_Flashing : Boolean;
   f_OldBaseWarning : TnscReminder;
    {* Поле для свойства OldBaseWarning}
   f_TrialModeWarning : TnscReminder;
    {* Поле для свойства TrialModeWarning}
   f_remNewChatMessages : TnscReminder;
    {* Поле для свойства remNewChatMessages}
   f_remOnlineDead : TnscReminder;
    {* Поле для свойства remOnlineDead}
   f_RemindersLine : TnscRemindersLine;
    {* Поле для свойства RemindersLine}
 protected
  procedure InitEntities; override;
  procedure MakeControls; override;
 private
 // private methods
   procedure ControlledChangingWarningBecomeVisible(Sender: TObject);
   procedure ControlledChangingWarningAfterBaloonShowed(Sender: TObject);
   procedure ControlledChangingWarningAfterBaloonHidden(Sender: TObject);
   procedure RemOnlineDeadAfterBaloonHidden(Sender: TObject);
   procedure RemUnreadConsultationsClick(Sender: TObject);
 protected
 // realized methods
   procedure StartFlashing;
   procedure StopFlashing;
   procedure Reminder_RemMWControlledChangingWarning_Test(const aParams: IvcmTestParamsPrim);
   procedure Reminder_RemMWControlledChangingWarning_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Reminder_RemMWOldBaseWarning_Test(const aParams: IvcmTestParamsPrim);
   procedure Reminder_RemMWOldBaseWarning_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Reminder_RemMWTrialModeWarning_Test(const aParams: IvcmTestParamsPrim);
   procedure Reminder_RemMWTrialModeWarning_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Reminder_RemNewChatMessages_Test(const aParams: IvcmTestParamsPrim);
   procedure Reminder_RemNewChatMessages_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Reminder_RemOnlineDead_Test(const aParams: IvcmTestParamsPrim);
   procedure Reminder_RemOnlineDead_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure FillOldBaseWarning; override;
 protected
 // overridden protected methods
   {$If not defined(NoVCM)}
   procedure InitControls; override;
     {* Процедура инициализации контролов. Для перекрытия в потомках }
   {$IfEnd} //not NoVCM
   {$If not defined(NoVCM)}
   procedure EntitiesInited; override;
     {* Вызывается после того как все операции зарегистрированы }
   {$IfEnd} //not NoVCM
   procedure ClearFields; override;
 protected
 // protected fields
   f_remOnlineDeadHidden : Boolean;
   f_OldBaseWarningString : Il3CString;
 public
 // public properties
   property OldBaseWarning: TnscReminder
     read f_OldBaseWarning;
   property TrialModeWarning: TnscReminder
     read f_TrialModeWarning;
   property remNewChatMessages: TnscReminder
     read f_remNewChatMessages;
   property remOnlineDead: TnscReminder
     read f_remOnlineDead;
   property RemindersLine: TnscRemindersLine
     read f_RemindersLine;
 end;//TMainWithRemindersForm

 TvcmMainFormRef = TMainWithRemindersForm;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  resWarnImages,
  nsFlashWindow,
  Windows,
  Controls,
  Forms,
  SysUtils,
  l3Base,
  DataAdapter,
  l3String,
  l3Chars
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  StdRes {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type
  Tkw_MainWithReminders_Control_OldBaseWarning = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола OldBaseWarning
----
*Пример использования*:
[code]
контрол::OldBaseWarning TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainWithReminders_Control_OldBaseWarning

// start class Tkw_MainWithReminders_Control_OldBaseWarning

{$If not defined(NoScripts)}
function Tkw_MainWithReminders_Control_OldBaseWarning.GetString: AnsiString;
 {-}
begin
 Result := 'OldBaseWarning';
end;//Tkw_MainWithReminders_Control_OldBaseWarning.GetString
{$IfEnd} //not NoScripts

type
  Tkw_MainWithReminders_Control_OldBaseWarning_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола OldBaseWarning
----
*Пример использования*:
[code]
контрол::OldBaseWarning:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainWithReminders_Control_OldBaseWarning_Push

// start class Tkw_MainWithReminders_Control_OldBaseWarning_Push

{$If not defined(NoScripts)}
procedure Tkw_MainWithReminders_Control_OldBaseWarning_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('OldBaseWarning');
 inherited;
end;//Tkw_MainWithReminders_Control_OldBaseWarning_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MainWithReminders_Control_TrialModeWarning = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола TrialModeWarning
----
*Пример использования*:
[code]
контрол::TrialModeWarning TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainWithReminders_Control_TrialModeWarning

// start class Tkw_MainWithReminders_Control_TrialModeWarning

{$If not defined(NoScripts)}
function Tkw_MainWithReminders_Control_TrialModeWarning.GetString: AnsiString;
 {-}
begin
 Result := 'TrialModeWarning';
end;//Tkw_MainWithReminders_Control_TrialModeWarning.GetString
{$IfEnd} //not NoScripts

type
  Tkw_MainWithReminders_Control_TrialModeWarning_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола TrialModeWarning
----
*Пример использования*:
[code]
контрол::TrialModeWarning:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainWithReminders_Control_TrialModeWarning_Push

// start class Tkw_MainWithReminders_Control_TrialModeWarning_Push

{$If not defined(NoScripts)}
procedure Tkw_MainWithReminders_Control_TrialModeWarning_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('TrialModeWarning');
 inherited;
end;//Tkw_MainWithReminders_Control_TrialModeWarning_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MainWithReminders_Control_remNewChatMessages = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола remNewChatMessages
----
*Пример использования*:
[code]
контрол::remNewChatMessages TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainWithReminders_Control_remNewChatMessages

// start class Tkw_MainWithReminders_Control_remNewChatMessages

{$If not defined(NoScripts)}
function Tkw_MainWithReminders_Control_remNewChatMessages.GetString: AnsiString;
 {-}
begin
 Result := 'remNewChatMessages';
end;//Tkw_MainWithReminders_Control_remNewChatMessages.GetString
{$IfEnd} //not NoScripts

type
  Tkw_MainWithReminders_Control_remNewChatMessages_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола remNewChatMessages
----
*Пример использования*:
[code]
контрол::remNewChatMessages:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainWithReminders_Control_remNewChatMessages_Push

// start class Tkw_MainWithReminders_Control_remNewChatMessages_Push

{$If not defined(NoScripts)}
procedure Tkw_MainWithReminders_Control_remNewChatMessages_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('remNewChatMessages');
 inherited;
end;//Tkw_MainWithReminders_Control_remNewChatMessages_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MainWithReminders_Control_remOnlineDead = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола remOnlineDead
----
*Пример использования*:
[code]
контрол::remOnlineDead TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainWithReminders_Control_remOnlineDead

// start class Tkw_MainWithReminders_Control_remOnlineDead

{$If not defined(NoScripts)}
function Tkw_MainWithReminders_Control_remOnlineDead.GetString: AnsiString;
 {-}
begin
 Result := 'remOnlineDead';
end;//Tkw_MainWithReminders_Control_remOnlineDead.GetString
{$IfEnd} //not NoScripts

type
  Tkw_MainWithReminders_Control_remOnlineDead_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола remOnlineDead
----
*Пример использования*:
[code]
контрол::remOnlineDead:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainWithReminders_Control_remOnlineDead_Push

// start class Tkw_MainWithReminders_Control_remOnlineDead_Push

{$If not defined(NoScripts)}
procedure Tkw_MainWithReminders_Control_remOnlineDead_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('remOnlineDead');
 inherited;
end;//Tkw_MainWithReminders_Control_remOnlineDead_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_MainWithReminders_Component_RemindersLine = class(TtfwControlString)
   {* Слово словаря для идентификатора компонента RemindersLine
----
*Пример использования*:
[code]
компонент::RemindersLine TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_MainWithReminders_Component_RemindersLine

// start class Tkw_MainWithReminders_Component_RemindersLine

{$If not defined(NoScripts)}
function Tkw_MainWithReminders_Component_RemindersLine.GetString: AnsiString;
 {-}
begin
 Result := 'RemindersLine';
end;//Tkw_MainWithReminders_Component_RemindersLine.GetString
{$IfEnd} //not NoScripts

procedure TMainWithRemindersForm.ControlledChangingWarningBecomeVisible(Sender: TObject);
//#UC START# *4F7DCAFE028B_4F7DAC14027A_var*
var
 l_Flash: InsFlashingWindow;
 l_IDX: Integer;
//#UC END# *4F7DCAFE028B_4F7DAC14027A_var*
begin
//#UC START# *4F7DCAFE028B_4F7DAC14027A_impl*
 if (FindControl(GetForegroundWindow) = nil) then
 begin
  for l_IDX := 0 to Dispatcher.FormDispatcher.MainFormsCount - 1 do
   if Supports(Dispatcher.FormDispatcher.MainForm[l_IDX], InsFlashingWindow, l_Flash) then
   begin
    l_Flash.StartFlashing;
    Break;
   end;// Supports(Dispatcher.FormDispatcher.MainForm[l_IDX], InsFlashingWindow, l_Flash)
 end;//FindControl(GetForegroundWindow) = nil
//#UC END# *4F7DCAFE028B_4F7DAC14027A_impl*
end;//TMainWithRemindersForm.ControlledChangingWarningBecomeVisible

procedure TMainWithRemindersForm.ControlledChangingWarningAfterBaloonShowed(Sender: TObject);
//#UC START# *4F7DCB4E032C_4F7DAC14027A_var*
//#UC END# *4F7DCB4E032C_4F7DAC14027A_var*
begin
//#UC START# *4F7DCB4E032C_4F7DAC14027A_impl*
 TdmStdRes.OpenUnderControl(Self);
//#UC END# *4F7DCB4E032C_4F7DAC14027A_impl*
end;//TMainWithRemindersForm.ControlledChangingWarningAfterBaloonShowed

procedure TMainWithRemindersForm.ControlledChangingWarningAfterBaloonHidden(Sender: TObject);
//#UC START# *4F7DCB68009E_4F7DAC14027A_var*
//#UC END# *4F7DCB68009E_4F7DAC14027A_var*
begin
//#UC START# *4F7DCB68009E_4F7DAC14027A_impl*
 // Убираем значок предупреждения
 f_IsControlledObjectsChanging := False;
//#UC END# *4F7DCB68009E_4F7DAC14027A_impl*
end;//TMainWithRemindersForm.ControlledChangingWarningAfterBaloonHidden

procedure TMainWithRemindersForm.RemOnlineDeadAfterBaloonHidden(Sender: TObject);
//#UC START# *4F7DCB83012B_4F7DAC14027A_var*
//#UC END# *4F7DCB83012B_4F7DAC14027A_var*
begin
//#UC START# *4F7DCB83012B_4F7DAC14027A_impl*
 f_remOnlineDeadHidden := true;
//#UC END# *4F7DCB83012B_4F7DAC14027A_impl*
end;//TMainWithRemindersForm.RemOnlineDeadAfterBaloonHidden

procedure TMainWithRemindersForm.RemUnreadConsultationsClick(Sender: TObject);
//#UC START# *4F7DD95001B3_4F7DAC14027A_var*
//#UC END# *4F7DD95001B3_4F7DAC14027A_var*
begin
//#UC START# *4F7DD95001B3_4F7DAC14027A_impl*
 if Ask(qr_TryOpenConsultationAnswer) then
  TdmStdRes.TryOpenConsultationAnswer(Self);
//#UC END# *4F7DD95001B3_4F7DAC14027A_impl*
end;//TMainWithRemindersForm.RemUnreadConsultationsClick

procedure TMainWithRemindersForm.StartFlashing;
//#UC START# *4F7DCF74032D_4F7DAC14027A_var*
var
 l_Info: TFlashWInfo;
//#UC END# *4F7DCF74032D_4F7DAC14027A_var*
begin
//#UC START# *4F7DCF74032D_4F7DAC14027A_impl*
 if not f_Flashing then
 begin
  l3FillChar(l_Info, SizeOf(l_Info), 0);
  l_Info.cbSize :=SizeOf(l_Info);
  l_Info.hwnd := Handle;
  l_Info.dwFlags := FLASHW_ALL or FLASHW_TIMER;
  FlashWindowEx(l_Info);
  f_Flashing := True;
 end;//not f_Flashing
//#UC END# *4F7DCF74032D_4F7DAC14027A_impl*
end;//TMainWithRemindersForm.StartFlashing

procedure TMainWithRemindersForm.StopFlashing;
//#UC START# *4F7DCF8D03CC_4F7DAC14027A_var*
var
 l_Info: TFlashWInfo;
//#UC END# *4F7DCF8D03CC_4F7DAC14027A_var*
begin
//#UC START# *4F7DCF8D03CC_4F7DAC14027A_impl*
 if f_Flashing then
 begin
  l3FillChar(l_Info, SizeOf(l_Info), 0);
  l_Info.cbSize :=SizeOf(l_Info);
  l_Info.hwnd := Handle;
  l_Info.dwFlags := FLASHW_STOP;
  FlashWindowEx(l_Info);
  f_Flashing := False;
 end;//f_Flashing
//#UC END# *4F7DCF8D03CC_4F7DAC14027A_impl*
end;//TMainWithRemindersForm.StopFlashing

procedure TMainWithRemindersForm.Reminder_RemMWControlledChangingWarning_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4F86AAF903B5_4F7DAC14027Atest_var*
//#UC END# *4F86AAF903B5_4F7DAC14027Atest_var*
begin
//#UC START# *4F86AAF903B5_4F7DAC14027Atest_impl*
 aParams.Op.Flag[vcm_ofVisible] := f_IsControlledObjectsChanging;
//#UC END# *4F86AAF903B5_4F7DAC14027Atest_impl*
end;//TMainWithRemindersForm.Reminder_RemMWControlledChangingWarning_Test

procedure TMainWithRemindersForm.Reminder_RemMWControlledChangingWarning_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4F86AAF903B5_4F7DAC14027Aexec_var*
//#UC END# *4F86AAF903B5_4F7DAC14027Aexec_var*
begin
//#UC START# *4F86AAF903B5_4F7DAC14027Aexec_impl*
 OpenUnderControl;
//#UC END# *4F86AAF903B5_4F7DAC14027Aexec_impl*
end;//TMainWithRemindersForm.Reminder_RemMWControlledChangingWarning_Execute

procedure TMainWithRemindersForm.Reminder_RemMWOldBaseWarning_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4F86AB3A03E4_4F7DAC14027Atest_var*
//#UC END# *4F86AB3A03E4_4F7DAC14027Atest_var*
begin
//#UC START# *4F86AB3A03E4_4F7DAC14027Atest_impl*
 aParams.Op.Flag[vcm_ofVisible] := l3Len(f_OldBaseWarningString) > 0;
//#UC END# *4F86AB3A03E4_4F7DAC14027Atest_impl*
end;//TMainWithRemindersForm.Reminder_RemMWOldBaseWarning_Test

procedure TMainWithRemindersForm.Reminder_RemMWOldBaseWarning_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4F86AB3A03E4_4F7DAC14027Aexec_var*
//#UC END# *4F86AB3A03E4_4F7DAC14027Aexec_var*
begin
//#UC START# *4F86AB3A03E4_4F7DAC14027Aexec_impl*
 Say(inf_AnyInformation, [f_OldBaseWarningString]);
//#UC END# *4F86AB3A03E4_4F7DAC14027Aexec_impl*
end;//TMainWithRemindersForm.Reminder_RemMWOldBaseWarning_Execute

procedure TMainWithRemindersForm.Reminder_RemMWTrialModeWarning_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4F86AB490283_4F7DAC14027Atest_var*
//#UC END# *4F86AB490283_4F7DAC14027Atest_var*
begin
//#UC START# *4F86AB490283_4F7DAC14027Atest_impl*
 aParams.Op.Flag[vcm_ofVisible] := defDataAdapter.IsTrialMode;
//#UC END# *4F86AB490283_4F7DAC14027Atest_impl*
end;//TMainWithRemindersForm.Reminder_RemMWTrialModeWarning_Test

procedure TMainWithRemindersForm.Reminder_RemMWTrialModeWarning_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4F86AB490283_4F7DAC14027Aexec_var*
//#UC END# *4F86AB490283_4F7DAC14027Aexec_var*
begin
//#UC START# *4F86AB490283_4F7DAC14027Aexec_impl*
 with DefDataAdapter do
  Say(inf_TrialModeWarning, [TrialDaysLeft, GetDealerInfo]);
//#UC END# *4F86AB490283_4F7DAC14027Aexec_impl*
end;//TMainWithRemindersForm.Reminder_RemMWTrialModeWarning_Execute

procedure TMainWithRemindersForm.Reminder_RemNewChatMessages_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4F86AB5600B9_4F7DAC14027Atest_var*
//#UC END# *4F86AB5600B9_4F7DAC14027Atest_var*
begin
//#UC START# *4F86AB5600B9_4F7DAC14027Atest_impl*
 aParams.Op.Flag[vcm_ofVisible] := TdmStdRes.MakeChatDispatcher.HasUnreadedMessages;
//#UC END# *4F86AB5600B9_4F7DAC14027Atest_impl*
end;//TMainWithRemindersForm.Reminder_RemNewChatMessages_Test

procedure TMainWithRemindersForm.Reminder_RemNewChatMessages_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4F86AB5600B9_4F7DAC14027Aexec_var*
//#UC END# *4F86AB5600B9_4F7DAC14027Aexec_var*
begin
//#UC START# *4F86AB5600B9_4F7DAC14027Aexec_impl*
 TdmStdRes.MakeChatDispatcher.OpenAllUnreaded;
//#UC END# *4F86AB5600B9_4F7DAC14027Aexec_impl*
end;//TMainWithRemindersForm.Reminder_RemNewChatMessages_Execute

procedure TMainWithRemindersForm.Reminder_RemOnlineDead_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4F86AB6502AA_4F7DAC14027Atest_var*
//#UC END# *4F86AB6502AA_4F7DAC14027Atest_var*
begin
//#UC START# *4F86AB6502AA_4F7DAC14027Atest_impl*
 aParams.Op.Flag[vcm_ofVisible] := not f_remOnlineDeadHidden AND
                                   DefDataAdapter.NativeAdapter.
                                    MakeInternetSupport.ShowWarning;
//#UC END# *4F86AB6502AA_4F7DAC14027Atest_impl*
end;//TMainWithRemindersForm.Reminder_RemOnlineDead_Test

procedure TMainWithRemindersForm.Reminder_RemOnlineDead_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4F86AB6502AA_4F7DAC14027Aexec_var*
//#UC END# *4F86AB6502AA_4F7DAC14027Aexec_var*
begin
//#UC START# *4F86AB6502AA_4F7DAC14027Aexec_impl*
 defDataAdapter.ShowMessageWithDealerInfo(war_OnlineDead);
 f_remOnlineDeadHidden := true;
//#UC END# *4F86AB6502AA_4F7DAC14027Aexec_impl*
end;//TMainWithRemindersForm.Reminder_RemOnlineDead_Execute

procedure TMainWithRemindersForm.FillOldBaseWarning;
//#UC START# *4F8BED97037A_4F7DAC14027A_var*
//#UC END# *4F8BED97037A_4F7DAC14027A_var*
begin
//#UC START# *4F8BED97037A_4F7DAC14027A_impl*
 f_OldBaseWarningString := l3CStr(l3RTrim(defDataAdapter.GetOldBaseWarning.AsWStr, cc_NonReadable));
//#UC END# *4F8BED97037A_4F7DAC14027A_impl*
end;//TMainWithRemindersForm.FillOldBaseWarning

{$If not defined(NoVCM)}
procedure TMainWithRemindersForm.InitControls;
//#UC START# *4A8E8F2E0195_4F7DAC14027A_var*
//#UC END# *4A8E8F2E0195_4F7DAC14027A_var*
begin
//#UC START# *4A8E8F2E0195_4F7DAC14027A_impl*
 inherited;
 with ControlledChangingWarning do
 begin
  Left := 32;
  Top := 8;
  Width := 48;
  Height := 48;
  Hint := 'Внимание! Документы на контроле изменились';
  Images := nsWarnImages.WarnImages;
  ImageIndex := 2;
  Flashing := True;
  Visible := False;
  ShowHint := True;
  AfterBaloonShowed := ControlledChangingWarningAfterBaloonShowed;
  AfterBaloonHidden := ControlledChangingWarningAfterBaloonHidden;
  OnBecomeVisible := ControlledChangingWarningBecomeVisible;
 end;
 with OldBaseWarning do
 begin
  Left := 82;
  Top := 8;
  Width := 48;
  Height := 48;
  Hint := 'Внимание! Информационный банк устарел';
  Images := nsWarnImages.WarnImages;
  ImageIndex := 11;
  Visible := False;
  ShowHint := True;
  OnBecomeVisible := ControlledChangingWarningBecomeVisible;
 end;
 with TrialModeWarning do
 begin
  Left := 132;
  Top := 8;
  Width := 48;
  Height := 48;
  Hint := 'Вы работаете с ознакомительной версией системы ГАРАНТ';
  Images := nsWarnImages.WarnImages;
  ImageIndex := 1;
  Visible := False;
  ShowHint := True;
  OnBecomeVisible := ControlledChangingWarningBecomeVisible;
 end;
 with remUnreadConsultations do
 begin
  Left := 182;
  Top := 8;
  Width := 48;
  Height := 48;
  Hint :=
    'Получены ответы или уведомления от службы Правовой поддержки онл' +
    'айн';
  Images := nsWarnImages.WarnImages;
  ImageIndex := 14;
  Flashing := True;
  OnClick := remUnreadConsultationsClick;
  Visible := False;
  ShowHint := True;
  OnBecomeVisible := ControlledChangingWarningBecomeVisible;
 end;
 with remNewChatMessages do
 begin
  Left := 232;
  Top := 8;
  Width := 48;
  Height := 48;
  Hint :=
    'Получены ответы или уведомления от службы Правовой поддержки онл' +
    'айн';
  Images := nsWarnImages.WarnImages;
  ImageIndex := 15;
  Flashing := True;
  Visible := False;
  ShowHint := True;
  Anchors := [akTop, akRight];
  OnBecomeVisible := ControlledChangingWarningBecomeVisible;
 end;
 with remOnlineDead do
 begin
  Left := 282;
  Top := 8;
  Width := 48;
  Height := 48;
  Hint :=
    'С момента последнего обновления Вашего информационного банка про' +
    'шло более 6 месяцев. Онлайн-проверка актуальности документов буд' +
    'ет отключена.';
  Images := nsWarnImages.WarnImages;
  ImageIndex := 17;
  Visible := False;
  ShowHint := True;
  Anchors := [akTop, akRight];
  AfterBaloonHidden := remOnlineDeadAfterBaloonHidden;
  OnBecomeVisible := ControlledChangingWarningBecomeVisible;
 end;
 with RemindersLine do
 begin
  PosX := 32;
  PosY := 8;
  AddReminder(ControlledChangingWarning);
  AddReminder(OldBaseWarning);
  AddReminder(TrialModeWarning);
  AddReminder(remUnreadConsultations);
  AddReminder(remNewChatMessages);
  AddReminder(remOnlineDead);
 end;//with RemindersLine
//#UC END# *4A8E8F2E0195_4F7DAC14027A_impl*
end;//TMainWithRemindersForm.InitControls
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
procedure TMainWithRemindersForm.EntitiesInited;
//#UC START# *4AE1948900DE_4F7DAC14027A_var*
//#UC END# *4AE1948900DE_4F7DAC14027A_var*
begin
//#UC START# *4AE1948900DE_4F7DAC14027A_impl*
 inherited;
 with ControlledChangingWarning do
 begin
  EntityName := en_Reminder;
  OperationName := op_RemMWControlledChangingWarning;
 end;
 with OldBaseWarning do
 begin
  EntityName := en_Reminder;
  OperationName := op_RemMWOldBaseWarning;
 end;
 with TrialModeWarning do
 begin
  EntityName := en_Reminder;
  OperationName := op_RemMWTrialModeWarning;
 end;
 with remNewChatMessages do
 begin
  EntityName := en_Reminder;
  OperationName := op_RemNewChatMessages;
 end;
 with remOnlineDead do
 begin
  EntityName := en_Reminder;
  OperationName := op_RemOnlineDead;
 end;
//#UC END# *4AE1948900DE_4F7DAC14027A_impl*
end;//TMainWithRemindersForm.EntitiesInited
{$IfEnd} //not NoVCM

procedure TMainWithRemindersForm.ClearFields;
 {-}
begin
 f_OldBaseWarningString := nil;
 inherited;
end;//TMainWithRemindersForm.ClearFields

procedure TMainWithRemindersForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_Reminder, nil);
  PublishOp(en_Reminder, op_RemMWControlledChangingWarning, Reminder_RemMWControlledChangingWarning_Execute, Reminder_RemMWControlledChangingWarning_Test, nil);
  PublishOp(en_Reminder, op_RemMWOldBaseWarning, Reminder_RemMWOldBaseWarning_Execute, Reminder_RemMWOldBaseWarning_Test, nil);
  PublishOp(en_Reminder, op_RemMWTrialModeWarning, Reminder_RemMWTrialModeWarning_Execute, Reminder_RemMWTrialModeWarning_Test, nil);
  PublishOp(en_Reminder, op_RemNewChatMessages, Reminder_RemNewChatMessages_Execute, Reminder_RemNewChatMessages_Test, nil);
  PublishOp(en_Reminder, op_RemOnlineDead, Reminder_RemOnlineDead_Execute, Reminder_RemOnlineDead_Test, nil);
 end;//with Entities.Entities
end;

procedure TMainWithRemindersForm.MakeControls;
begin
 inherited;
 f_OldBaseWarning := TnscReminder.Create(Self);
 f_OldBaseWarning.Name := 'OldBaseWarning';
 f_OldBaseWarning.Parent := Self;
 f_TrialModeWarning := TnscReminder.Create(Self);
 f_TrialModeWarning.Name := 'TrialModeWarning';
 f_TrialModeWarning.Parent := Self;
 f_remNewChatMessages := TnscReminder.Create(Self);
 f_remNewChatMessages.Name := 'remNewChatMessages';
 f_remNewChatMessages.Parent := Self;
 f_remOnlineDead := TnscReminder.Create(Self);
 f_remOnlineDead.Name := 'remOnlineDead';
 f_remOnlineDead.Parent := Self;
 f_RemindersLine := TnscRemindersLine.Create(Self);
 f_RemindersLine.Name := 'RemindersLine';
 with DefineZone(vcm_ztReminder, f_RemindersLine) do
 begin
 end;//with DefineZone(vcm_ztReminder, f_RemindersLine)
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainWithReminders_Control_OldBaseWarning
 Tkw_MainWithReminders_Control_OldBaseWarning.Register('контрол::OldBaseWarning', TnscReminder);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainWithReminders_Control_OldBaseWarning_Push
 Tkw_MainWithReminders_Control_OldBaseWarning_Push.Register('контрол::OldBaseWarning:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainWithReminders_Control_TrialModeWarning
 Tkw_MainWithReminders_Control_TrialModeWarning.Register('контрол::TrialModeWarning', TnscReminder);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainWithReminders_Control_TrialModeWarning_Push
 Tkw_MainWithReminders_Control_TrialModeWarning_Push.Register('контрол::TrialModeWarning:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainWithReminders_Control_remNewChatMessages
 Tkw_MainWithReminders_Control_remNewChatMessages.Register('контрол::remNewChatMessages', TnscReminder);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainWithReminders_Control_remNewChatMessages_Push
 Tkw_MainWithReminders_Control_remNewChatMessages_Push.Register('контрол::remNewChatMessages:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainWithReminders_Control_remOnlineDead
 Tkw_MainWithReminders_Control_remOnlineDead.Register('контрол::remOnlineDead', TnscReminder);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainWithReminders_Control_remOnlineDead_Push
 Tkw_MainWithReminders_Control_remOnlineDead_Push.Register('контрол::remOnlineDead:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_MainWithReminders_Component_RemindersLine
 Tkw_MainWithReminders_Component_RemindersLine.Register('компонент::RemindersLine', TnscRemindersLine);
{$IfEnd} //not Admin AND not Monitorings

end.