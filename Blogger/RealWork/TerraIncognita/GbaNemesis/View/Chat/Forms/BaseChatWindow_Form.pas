unit BaseChatWindow_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Лукьянец Р.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Chat/Forms/BaseChatWindow_Form.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMContainer::Class>> F1 Встроенные продукты::Chat::View::Chat::BaseChatWindow
//
// Переписка
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
  Messages,
  OfficeLike_Usual_Controls
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  ChatInterfaces,
  AbstractHistory_Form,
  vtSizeablePanel,
  vtPanel,
  vtProportionalPanel
  {$If defined(Nemesis)}
  ,
  nscChatMemo
  {$IfEnd} //Nemesis
  ,
  OfficeLike_ResultEx_Controls,
  OfficeLike_Result_Controls,
  l3StringIDEx
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  BaseChatWindow_cwChat_UserType,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TBaseChatWindowForm = {form} class(TAbstractHistoryForm, IbsChatWindow)
  {* Переписка }
 private
 // private fields
   f_BackgroundPanel : TvtProportionalPanel;
    {* Поле для свойства BackgroundPanel}
   f_BottomPanel : TvtSizeablePanel;
    {* Поле для свойства BottomPanel}
   f_BottomEditor : TnscChatMemo;
    {* Поле для свойства BottomEditor}
   f_TopPanel : TvtPanel;
    {* Поле для свойства TopPanel}
 protected
  procedure InitEntities; override;
  procedure MakeControls; override;
 private
 // private methods
   procedure WMActivate(var Message: TWMActivate); message WM_ACTIVATE;
 protected
 // realized methods
   procedure NewMessagesReceived;
   procedure RegisterInDispatcher; override;
   procedure UnRegisterInDispatcher; override;
   procedure HistoryCleaned;
   procedure Result_OkExt_Test(const aParams: IvcmTestParamsPrim);
     {* OK }
   procedure Result_OkExt_GetState(var State: TvcmOperationStateIndex);
     {* OK }
   procedure Result_OkExt_Execute(const aParams: IvcmExecuteParamsPrim);
     {* OK }
 protected
 // overridden protected methods
   {$If not defined(NoVCM)}
   procedure InitControls; override;
     {* Процедура инициализации контролов. Для перекрытия в потомках }
   {$IfEnd} //not NoVCM
   procedure InitEditors; override;
   function HistoryLimit: Integer; override;
   function NeedClose: Boolean; override;
 public
 // public properties
   property BackgroundPanel: TvtProportionalPanel
     read f_BackgroundPanel;
   property BottomPanel: TvtSizeablePanel
     read f_BottomPanel;
   property BottomEditor: TnscChatMemo
     read f_BottomEditor;
   property TopPanel: TvtPanel
     read f_TopPanel;
 end;//TBaseChatWindowForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Windows
  {$If not defined(NoVCM)}
  ,
  StdRes
  {$IfEnd} //not NoVCM
  ,
  Controls,
  l3Memory,
  evTypes,
  SysUtils
  {$If not defined(NoVCM)}
  ,
  vcmBase
  {$IfEnd} //not NoVCM
  ,
  l3Base,
  evdAllDocumentSubsEliminator,
  l3MessageID
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
   { Локализуемые строки cwChatLocalConstants }
  str_cwChatCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'cwChatCaption'; rValue : 'Переписка');
   { Заголовок пользовательского типа "Переписка" }

type
  Tkw_BaseChatWindow_Control_BackgroundPanel = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола BackgroundPanel
----
*Пример использования*:
[code]
контрол::BackgroundPanel TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_BaseChatWindow_Control_BackgroundPanel

// start class Tkw_BaseChatWindow_Control_BackgroundPanel

{$If not defined(NoScripts)}
function Tkw_BaseChatWindow_Control_BackgroundPanel.GetString: AnsiString;
 {-}
begin
 Result := 'BackgroundPanel';
end;//Tkw_BaseChatWindow_Control_BackgroundPanel.GetString
{$IfEnd} //not NoScripts

type
  Tkw_BaseChatWindow_Control_BackgroundPanel_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола BackgroundPanel
----
*Пример использования*:
[code]
контрол::BackgroundPanel:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_BaseChatWindow_Control_BackgroundPanel_Push

// start class Tkw_BaseChatWindow_Control_BackgroundPanel_Push

{$If not defined(NoScripts)}
procedure Tkw_BaseChatWindow_Control_BackgroundPanel_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('BackgroundPanel');
 inherited;
end;//Tkw_BaseChatWindow_Control_BackgroundPanel_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_BaseChatWindow_Control_BottomPanel = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола BottomPanel
----
*Пример использования*:
[code]
контрол::BottomPanel TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_BaseChatWindow_Control_BottomPanel

// start class Tkw_BaseChatWindow_Control_BottomPanel

{$If not defined(NoScripts)}
function Tkw_BaseChatWindow_Control_BottomPanel.GetString: AnsiString;
 {-}
begin
 Result := 'BottomPanel';
end;//Tkw_BaseChatWindow_Control_BottomPanel.GetString
{$IfEnd} //not NoScripts

type
  Tkw_BaseChatWindow_Control_BottomPanel_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола BottomPanel
----
*Пример использования*:
[code]
контрол::BottomPanel:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_BaseChatWindow_Control_BottomPanel_Push

// start class Tkw_BaseChatWindow_Control_BottomPanel_Push

{$If not defined(NoScripts)}
procedure Tkw_BaseChatWindow_Control_BottomPanel_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('BottomPanel');
 inherited;
end;//Tkw_BaseChatWindow_Control_BottomPanel_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_BaseChatWindow_Control_BottomEditor = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола BottomEditor
----
*Пример использования*:
[code]
контрол::BottomEditor TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_BaseChatWindow_Control_BottomEditor

// start class Tkw_BaseChatWindow_Control_BottomEditor

{$If not defined(NoScripts)}
function Tkw_BaseChatWindow_Control_BottomEditor.GetString: AnsiString;
 {-}
begin
 Result := 'BottomEditor';
end;//Tkw_BaseChatWindow_Control_BottomEditor.GetString
{$IfEnd} //not NoScripts

type
  Tkw_BaseChatWindow_Control_BottomEditor_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола BottomEditor
----
*Пример использования*:
[code]
контрол::BottomEditor:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_BaseChatWindow_Control_BottomEditor_Push

// start class Tkw_BaseChatWindow_Control_BottomEditor_Push

{$If not defined(NoScripts)}
procedure Tkw_BaseChatWindow_Control_BottomEditor_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('BottomEditor');
 inherited;
end;//Tkw_BaseChatWindow_Control_BottomEditor_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_BaseChatWindow_Control_TopPanel = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола TopPanel
----
*Пример использования*:
[code]
контрол::TopPanel TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_BaseChatWindow_Control_TopPanel

// start class Tkw_BaseChatWindow_Control_TopPanel

{$If not defined(NoScripts)}
function Tkw_BaseChatWindow_Control_TopPanel.GetString: AnsiString;
 {-}
begin
 Result := 'TopPanel';
end;//Tkw_BaseChatWindow_Control_TopPanel.GetString
{$IfEnd} //not NoScripts

type
  Tkw_BaseChatWindow_Control_TopPanel_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола TopPanel
----
*Пример использования*:
[code]
контрол::TopPanel:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_BaseChatWindow_Control_TopPanel_Push

// start class Tkw_BaseChatWindow_Control_TopPanel_Push

{$If not defined(NoScripts)}
procedure Tkw_BaseChatWindow_Control_TopPanel_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('TopPanel');
 inherited;
end;//Tkw_BaseChatWindow_Control_TopPanel_Push.DoDoIt
{$IfEnd} //not NoScripts

procedure TBaseChatWindowForm.WMActivate(var Message: TWMActivate);
//#UC START# *4B34C0B801B1_4A6EA44C0038_var*
var
 l_Info: TFlashWInfo;
//#UC END# *4B34C0B801B1_4A6EA44C0038_var*
begin
//#UC START# *4B34C0B801B1_4A6EA44C0038_impl*
 inherited;
 If Message.Active <> WA_INACTIVE then
 begin
  l3FillChar(l_Info, SizeOf(l_Info), 0);
  l_Info.cbSize :=SizeOf(l_Info);
  l_Info.hwnd := Handle;
  l_Info.dwFlags := FLASHW_STOP;
  FlashWindowEx(l_Info);
 end; 
//#UC END# *4B34C0B801B1_4A6EA44C0038_impl*
end;//TBaseChatWindowForm.WMActivate

procedure TBaseChatWindowForm.NewMessagesReceived;
//#UC START# *4A6D71700008_4A6EA44C0038_var*
var
 l_Info: TFlashWInfo;
//#UC END# *4A6D71700008_4A6EA44C0038_var*
begin
//#UC START# *4A6D71700008_4A6EA44C0038_impl*
 ProcessMessages(TdmStdRes.MakeChatDispatcher.GetMessages(UserID, -1));
 if not ContainsControl(FindControl(GetForegroundWindow)) then
 begin
  l3FillChar(l_Info, SizeOf(l_Info), 0); 
  l_Info.cbSize :=SizeOf(l_Info);
  l_Info.hwnd := Handle;
  l_Info.dwFlags := FLASHW_ALL or FLASHW_TIMER;
  FlashWindowEx(l_Info);
 end;
//#UC END# *4A6D71700008_4A6EA44C0038_impl*
end;//TBaseChatWindowForm.NewMessagesReceived

procedure TBaseChatWindowForm.RegisterInDispatcher;
//#UC START# *4A6EA5EA00CD_4A6EA44C0038_var*
//#UC END# *4A6EA5EA00CD_4A6EA44C0038_var*
begin
//#UC START# *4A6EA5EA00CD_4A6EA44C0038_impl*
 TdmStdRes.MakeChatDispatcher.RegisterChatWindow(Self);
//#UC END# *4A6EA5EA00CD_4A6EA44C0038_impl*
end;//TBaseChatWindowForm.RegisterInDispatcher

procedure TBaseChatWindowForm.UnRegisterInDispatcher;
//#UC START# *4A6EA6000339_4A6EA44C0038_var*
//#UC END# *4A6EA6000339_4A6EA44C0038_var*
begin
//#UC START# *4A6EA6000339_4A6EA44C0038_impl*
 TdmStdRes.MakeChatDispatcher.UnRegisterChatWindow(Self);
//#UC END# *4A6EA6000339_4A6EA44C0038_impl*
end;//TBaseChatWindowForm.UnRegisterInDispatcher

procedure TBaseChatWindowForm.HistoryCleaned;
//#UC START# *4A7C023702A5_4A6EA44C0038_var*
//#UC END# *4A7C023702A5_4A6EA44C0038_var*
begin
//#UC START# *4A7C023702A5_4A6EA44C0038_impl*
 HistoryEditor.TextSource.New;
//#UC END# *4A7C023702A5_4A6EA44C0038_impl*
end;//TBaseChatWindowForm.HistoryCleaned

procedure TBaseChatWindowForm.Result_OkExt_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4A8AD47D0357_4A6EA44C0038test_var*
//#UC END# *4A8AD47D0357_4A6EA44C0038test_var*
begin
//#UC START# *4A8AD47D0357_4A6EA44C0038test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := BottomEditor.TextSource.HasDocument AND
  not BottomEditor.IsEmpty;
//#UC END# *4A8AD47D0357_4A6EA44C0038test_impl*
end;//TBaseChatWindowForm.Result_OkExt_Test

procedure TBaseChatWindowForm.Result_OkExt_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4A8AD47D0357_4A6EA44C0038getstate_var*
//#UC END# *4A8AD47D0357_4A6EA44C0038getstate_var*
begin
//#UC START# *4A8AD47D0357_4A6EA44C0038getstate_impl*
 State := st_user_Result_OkExt_Chat;
//#UC END# *4A8AD47D0357_4A6EA44C0038getstate_impl*
end;//TBaseChatWindowForm.Result_OkExt_GetState

procedure TBaseChatWindowForm.Result_OkExt_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4A8AD47D0357_4A6EA44C0038exec_var*
var
 l_Memory: Tl3MemoryStream;
 l_Message: InsChatMessage;
const
 cMaxSize = 1024*10;
//#UC END# *4A8AD47D0357_4A6EA44C0038exec_var*
begin
//#UC START# *4A8AD47D0357_4A6EA44C0038exec_impl*
 l_Memory := Tl3MemoryStream.Make;
 try
   BottomEditor.TextSource.DocumentContainer.TagReader.ReadTag(CF_EverestBin,
                                                               l_Memory,
                                                               TevdAllDocumentSubsEliminator.Make);
  l_Memory.Position := 0;
  if l_Memory.Size > cMaxSize then
  begin
   Say(war_ChatLimitReached);
   Exit;
  end;
  try
   l_Message := TdmStdRes.MakeChatDispatcher.SendMessage(UserID, l_Memory);
  except
   on EnsUnknownChatUser do
    SafeClose;
  end;
  BottomEditor.TextSource.New;
  AddToHistory(l_Message);
 finally
  FreeAndNil(l_Memory);
 end;
//#UC END# *4A8AD47D0357_4A6EA44C0038exec_impl*
end;//TBaseChatWindowForm.Result_OkExt_Execute

{$If not defined(NoVCM)}
procedure TBaseChatWindowForm.InitControls;
//#UC START# *4A8E8F2E0195_4A6EA44C0038_var*
//#UC END# *4A8E8F2E0195_4A6EA44C0038_var*
begin
//#UC START# *4A8E8F2E0195_4A6EA44C0038_impl*
 inherited;
 with BackgroundPanel do
 begin
  Align := alClient;
  BevelOuter := bvNone;
 end;
 with BottomPanel do
 begin
  Align := alBottom;
  SizeableSides := [szTop];
  SplitterBevel := bvRaised;
  Height := Parent.ClientHeight div 2;
 end;
 with TopPanel do
 begin
  Align := alClient;
 end;
 with HistoryEditor do
 begin
  Align := alClient;
 end;

 with BottomEditor do
 begin
  Align := alClient;
  OnJumpTo := Self.JumpTo;
  OnGetHotSpotInfo := Self.GetHotSpotInfo;
  TextSource.OnGetControlItemImg := Self.TextSourceGetControlItemImg;
  {$IfOpt D+}
  ShowDocumentParts := true;
  DrawSpecial := true;
  {$EndIf}
 end;//with BottomEditor
//#UC END# *4A8E8F2E0195_4A6EA44C0038_impl*
end;//TBaseChatWindowForm.InitControls
{$IfEnd} //not NoVCM

procedure TBaseChatWindowForm.InitEditors;
//#UC START# *4AC5CD4402E7_4A6EA44C0038_var*
//#UC END# *4AC5CD4402E7_4A6EA44C0038_var*
begin
//#UC START# *4AC5CD4402E7_4A6EA44C0038_impl*
 inherited;
 BottomEditor.TextSource.New;
//#UC END# *4AC5CD4402E7_4A6EA44C0038_impl*
end;//TBaseChatWindowForm.InitEditors

function TBaseChatWindowForm.HistoryLimit: Integer;
//#UC START# *4AC5CD9C02FA_4A6EA44C0038_var*
//#UC END# *4AC5CD9C02FA_4A6EA44C0038_var*
begin
//#UC START# *4AC5CD9C02FA_4A6EA44C0038_impl*
 Result := 10;
//#UC END# *4AC5CD9C02FA_4A6EA44C0038_impl*
end;//TBaseChatWindowForm.HistoryLimit

function TBaseChatWindowForm.NeedClose: Boolean;
//#UC START# *4B1633CF01C2_4A6EA44C0038_var*
//#UC END# *4B1633CF01C2_4A6EA44C0038_var*
begin
//#UC START# *4B1633CF01C2_4A6EA44C0038_impl*
 Result := False;
//#UC END# *4B1633CF01C2_4A6EA44C0038_impl*
end;//TBaseChatWindowForm.NeedClose

procedure TBaseChatWindowForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_Result, nil);
  PublishFormEntity(en_Edit, nil);
  MakeEntitySupportedByControl(en_Edit, BottomEditor);
  PublishOp(en_Result, op_OkExt, Result_OkExt_Execute, Result_OkExt_Test, Result_OkExt_GetState);
 end;//with Entities.Entities
end;

procedure TBaseChatWindowForm.MakeControls;
begin
 inherited;
 with AddUsertype(cwChatName,
  str_cwChatCaption,
  str_cwChatCaption,
  true,
  198,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(cwChatName
 f_BackgroundPanel := TvtProportionalPanel.Create(Self);
 f_BackgroundPanel.Name := 'BackgroundPanel';
 f_BackgroundPanel.Parent := Self;
 f_BottomPanel := TvtSizeablePanel.Create(Self);
 f_BottomPanel.Name := 'BottomPanel';
 f_BottomPanel.Parent := BackgroundPanel;
 with DefineZone(vcm_ztChild, f_BottomPanel) do
 begin
 end;//with DefineZone(vcm_ztChild, f_BottomPanel)
 f_BottomEditor := TnscChatMemo.Create(Self);
 f_BottomEditor.Name := 'BottomEditor';
 f_BottomEditor.Parent := BottomPanel;
 f_TopPanel := TvtPanel.Create(Self);
 f_TopPanel.Name := 'TopPanel';
 f_TopPanel.Parent := BackgroundPanel;
 with DefineZone(vcm_ztParent, f_TopPanel) do
 begin
 end;//with DefineZone(vcm_ztParent, f_TopPanel)
 HistoryEditor.Parent := TopPanel;
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_cwChatCaption
 str_cwChatCaption.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_BaseChatWindow_Control_BackgroundPanel
 Tkw_BaseChatWindow_Control_BackgroundPanel.Register('контрол::BackgroundPanel', TvtProportionalPanel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_BaseChatWindow_Control_BackgroundPanel_Push
 Tkw_BaseChatWindow_Control_BackgroundPanel_Push.Register('контрол::BackgroundPanel:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_BaseChatWindow_Control_BottomPanel
 Tkw_BaseChatWindow_Control_BottomPanel.Register('контрол::BottomPanel', TvtSizeablePanel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_BaseChatWindow_Control_BottomPanel_Push
 Tkw_BaseChatWindow_Control_BottomPanel_Push.Register('контрол::BottomPanel:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_BaseChatWindow_Control_BottomEditor
 Tkw_BaseChatWindow_Control_BottomEditor.Register('контрол::BottomEditor', TnscChatMemo);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_BaseChatWindow_Control_BottomEditor_Push
 Tkw_BaseChatWindow_Control_BottomEditor_Push.Register('контрол::BottomEditor:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_BaseChatWindow_Control_TopPanel
 Tkw_BaseChatWindow_Control_TopPanel.Register('контрол::TopPanel', TvtPanel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_BaseChatWindow_Control_TopPanel_Push
 Tkw_BaseChatWindow_Control_TopPanel_Push.Register('контрол::TopPanel:push');
{$IfEnd} //not Admin AND not Monitorings

end.