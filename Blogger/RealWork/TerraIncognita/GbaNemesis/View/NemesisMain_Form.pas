unit NemesisMain_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/NemesisMain_Form.pas"
// Начат: 29.12.2008 16:25
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMMainForm::Class>> F1 Оболочка Без Прецедентов::F1 Without Usecases::View::PrimNemesis::NemesisMain
//
// Главная форма
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
  OfficeLike_Usual_Controls
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  F1_Without_Usecases_System_Controls,
  ShellAndMonitoringsMain_Form,
  Search_Strange_Controls,
  nsLogEvent,
  l3StringIDEx,
  MainWindowInterfaces
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  bsInterfaces,
  afwInterfaces
  {$If defined(Nemesis)}
  ,
  nscNewInterfaces
  {$IfEnd} //Nemesis
  
  {$If not defined(NoVCM)}
  ,
  vcmControllers
  {$IfEnd} //not NoVCM
  ,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a},
  NemesisMain_utMainWindow_UserType,
  eeInterfaces,
  nsTypes
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TnsChangeFontSizeEvent = class(TnsLogEvent)
 public
 // public methods
   class procedure Log(aInc: Boolean;
    aSize: Cardinal);
 end;//TnsChangeFontSizeEvent

 TnsPrimaryMonitorResolutionEvent = class(TnsLogEvent)
 public
 // public methods
   class procedure Log(aWidth: Cardinal;
    aHeight: Cardinal);
 end;//TnsPrimaryMonitorResolutionEvent

 TnsDPIEvent = class(TnsLogEvent)
 public
 // public methods
   class procedure Log(aDPI: Cardinal);
 end;//TnsDPIEvent

 TnsFontSizeEvent = class(TnsLogEvent)
 private
 // private methods
   class procedure Log(aSize: Cardinal); virtual;
 end;//TnsFontSizeEvent

 TnsForwardEvent = class(TnsLogEvent)
 public
 // public methods
   class procedure Log;
 end;//TnsForwardEvent

 TnsBackEvent = class(TnsLogEvent)
 public
 // public methods
   class procedure Log;
 end;//TnsBackEvent

 _nsUserSettingsListener_Parent_ = TShellAndMonitoringsMainForm;
 {$Include w:\garant6x\implementation\Garant\GbaNemesis\Data\Common\nsUserSettingsListener.imp.pas}
 _nsUserSettingsEditListener_Parent_ = _nsUserSettingsListener_;
 {$Include w:\garant6x\implementation\Garant\GbaNemesis\Data\Common\nsUserSettingsEditListener.imp.pas}
 _StatusBarItems_Parent_ = _nsUserSettingsEditListener_;
 {$Include ..\View\StatusBarItems.imp.pas}
 TNemesisMainForm = {form} class(_StatusBarItems_)
  {* Главная форма }
 private
 // private fields
   f_CarrierLostHint : Il3CString;
   f_CantReceiveAnswer : Boolean;
   f_InternetDisconnected : Boolean;
   f_ConnectionWasLost : Boolean;
   f_sdsMainWindow : IsdsMainWindow;
 protected
  procedure InitEntities; override;
  procedure MakeControls; override;
 private
 // private methods
   procedure UpdateCarrierHint;
 protected
 // realized methods
   function Loadable_Load_Execute(const aNode: IeeNode;
    const aData: IUnknown;
    anOp: TListLogicOperation = LLO_NONE): Boolean;
     {* Коллеги, кто может описать этот метод? }
   procedure Loadable_Load(const aParams: IvcmExecuteParams);
     {* Коллеги, кто может описать этот метод? }
   procedure FillList(const aList: InscStatusBarItemDefsList); override;
     {* Заполняет список операций. Для перекрытия в потомках }
   procedure Common_OnControlChanged_Execute;
     {* Изменился статус какого-то контроля }
   procedure Common_OnControlChanged(const aParams: IvcmExecuteParams);
     {* Изменился статус какого-то контроля }
   procedure System_CantReceiveLegalServiceAnswer_Test(const aParams: IvcmTestParamsPrim);
     {* Статус связи с ППО }
   procedure System_CantReceiveLegalServiceAnswer_GetState(var State: TvcmOperationStateIndex);
     {* Статус связи с ППО }
   procedure System_CantReceiveLegalServiceAnswer_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Статус связи с ППО }
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   function NeedsStatusBarItems: Boolean; override;
     {* Определяет, что операции в статусной строке таки надо публиковать }
   {$If not defined(NoVCM)}
   function InsertForm(const aForm: IvcmEntityForm): Boolean; override;
   {$IfEnd} //not NoVCM
   procedure DoBack(const aParams: IvcmExecuteParamsPrim); override;
   procedure DoForward(const aParams: IvcmExecuteParamsPrim); override;
   procedure ClearFields; override;
 protected
 // protected fields
   f_IsControlledObjectsChanging : Boolean;
 protected
 // protected methods
   procedure CheckConsultationConnection;
   procedure ChangeDefaultFontSize(aInc: Boolean = True);
   procedure LogSystemInfo;
   function CanChangeDefaultFontSize(aInc: Boolean = true): Boolean;
   procedure CheckInternetConnection;
 end;//TNemesisMainForm
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
  Forms,
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
  StdRes
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

{$Include w:\garant6x\implementation\Garant\GbaNemesis\Data\Common\nsUserSettingsListener.imp.pas}

{$Include w:\garant6x\implementation\Garant\GbaNemesis\Data\Common\nsUserSettingsEditListener.imp.pas}

type _Instance_R_ = TNemesisMainForm;

{$Include ..\View\StatusBarItems.imp.pas}

var
   { Локализуемые строки Local }
  str_CarrierLost : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'CarrierLost'; rValue : 'Произошла ошибка связи при получении ответов службы Правовой поддержки онлайн. В связи с этим ответы на ранее заданные Вами вопросы не могут быть доставлены.'+#13#10#13#10'Для решения технических вопросов обратитесь к Вашему системному администратору. Если проблемы с интернет-соединением возникают только для системы ГАРАНТ, обратитесь в обслуживающую Вас организацию:'#13#10'%s');
   { 'Произошла ошибка связи при получении ответов службы Правовой поддержки онлайн. В связи с этим ответы на ранее заданные Вами вопросы не могут быть доставлены.'+#13#10#13#10'Для решения технических вопросов обратитесь к Вашему системному администратору. Если проблемы с интернет-соединением возникают только для системы ГАРАНТ, обратитесь в обслуживающую Вас организацию:'#13#10'%s' }
  str_InternetAbsent : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'InternetAbsent'; rValue : 'Не удалось установить связь с Интернет. Возможно, отсутствует активное соединение или сетевые настройки препятствуют обращению системы ГАРАНТ к интернет-ресурсам.'+' Возможности онлайн-проверки актуальности документов будут временно недоступны.'+#13#10#13#10'Для решения технических вопросов обратитесь к Вашему системному администратору. Если проблемы с интернет-соединением возникают только для системы ГАРАНТ, обратитесь в обслуживающую Вас организацию:'#13#10'%s');
   { 'Не удалось установить связь с Интернет. Возможно, отсутствует активное соединение или сетевые настройки препятствуют обращению системы ГАРАНТ к интернет-ресурсам.'+' Возможности онлайн-проверки актуальности документов будут временно недоступны.'+#13#10#13#10'Для решения технических вопросов обратитесь к Вашему системному администратору. Если проблемы с интернет-соединением возникают только для системы ГАРАНТ, обратитесь в обслуживающую Вас организацию:'#13#10'%s' }
  str_TotalFailure : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'TotalFailure'; rValue : 'Не удалось установить связь с Интернет. Возможно, отсутствует активное соединение или сетевые настройки препятствуют обращению системы ГАРАНТ к интернет-ресурсам.'+' Онлайн-проверка актуальности документов и работа со службой Правовой поддержки онлайн будут временно недоступны.'+#13#10#13#10'Для решения технических вопросов обратитесь к Вашему системному администратору. Если проблемы с интернет-соединением возникают только для системы ГАРАНТ, обратитесь в обслуживающую Вас организацию:'#13#10'%s');
   { 'Не удалось установить связь с Интернет. Возможно, отсутствует активное соединение или сетевые настройки препятствуют обращению системы ГАРАНТ к интернет-ресурсам.'+' Онлайн-проверка актуальности документов и работа со службой Правовой поддержки онлайн будут временно недоступны.'+#13#10#13#10'Для решения технических вопросов обратитесь к Вашему системному администратору. Если проблемы с интернет-соединением возникают только для системы ГАРАНТ, обратитесь в обслуживающую Вас организацию:'#13#10'%s' }

var
   { Локализуемые строки utMainWindowLocalConstants }
  str_utMainWindowCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utMainWindowCaption'; rValue : 'Главное окно');
   { Заголовок пользовательского типа "Главное окно" }
  str_utMainWindowSettingsCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utMainWindowSettingsCaption'; rValue : 'Главная панель инструментов');
   { Заголовок пользовательского типа "Главное окно" для настройки панелей инструментов }

// start class TNemesisMainForm

procedure TNemesisMainForm.UpdateCarrierHint;
//#UC START# *4BCDABAC037C_4958D2EA00CC_var*
//#UC END# *4BCDABAC037C_4958D2EA00CC_var*
begin
//#UC START# *4BCDABAC037C_4958D2EA00CC_impl*
 if f_CantReceiveAnswer then
  if f_InternetDisconnected then
   f_CarrierLostHint := vcmFmt(str_TotalFailure.AsCStr,[defDataAdapter.GetDealerInfo])
  else
   f_CarrierLostHint := vcmFmt(str_CarrierLost.AsCStr,[defDataAdapter.GetDealerInfo])
 else
  if f_InternetDisconnected then
   f_CarrierLostHint := vcmFmt(str_InternetAbsent.AsCStr,[defDataAdapter.GetDealerInfo])
  else
   f_CarrierLostHint := nil;
//#UC END# *4BCDABAC037C_4958D2EA00CC_impl*
end;//TNemesisMainForm.UpdateCarrierHint

procedure TNemesisMainForm.CheckConsultationConnection;
//#UC START# *4A8E7A6E0379_4958D2EA00CC_var*
//#UC END# *4A8E7A6E0379_4958D2EA00CC_var*
begin
//#UC START# *4A8E7A6E0379_4958D2EA00CC_impl*
 f_CantReceiveAnswer := defDataAdapter.ConsultationManager.CantReceiveAnswer;
 if f_CantReceiveAnswer then
  f_ConnectionWasLost := True;
 f_InternetDisconnected := False;
 UpdateCarrierHint;
//#UC END# *4A8E7A6E0379_4958D2EA00CC_impl*
end;//TNemesisMainForm.CheckConsultationConnection

procedure TNemesisMainForm.ChangeDefaultFontSize(aInc: Boolean = True);
//#UC START# *4B0BAF65023E_4958D2EA00CC_var*
var
 l_Font: TFont;
 l_Form : IvcmEntityForm;
 l_Cont : IvcmContainer;
//#UC END# *4B0BAF65023E_4958D2EA00CC_var*
begin
//#UC START# *4B0BAF65023E_4958D2EA00CC_impl*
 if HasForm(vcm_ztParent, false, @l_Form) then
 begin
  l_Cont := l_Form.AsContainer;
  if (l_Cont <> nil) AND
     l_Cont.HasForm(vcm_ztParent, false, @l_Form) then
   if Op_Scalable_ChangeScale.Call(l_Form, aInc) then
    Exit;
 end;//HasForm(vcm_ztParent, false, @l_Form)
 with TevStyleInterface.Make do
 try
  if aInc then
   IncAllFontSize
  else
   DecAllFontSize;
  l_Font := TFont.Create;
  try
   evGetDefaultFont(l_Font);
  TnsChangeFontSizeEvent.Log(aInc, Cardinal(l_Font.Size));
  finally
   FreeAndNil(l_Font);
  end;//try..finaly
 finally
  Free;
 end;//try..finally
 SaveStyleTableToSettings;
//#UC END# *4B0BAF65023E_4958D2EA00CC_impl*
end;//TNemesisMainForm.ChangeDefaultFontSize

procedure TNemesisMainForm.LogSystemInfo;
//#UC START# *4B0BAF8E03D0_4958D2EA00CC_var*
var
 l_Index : Integer;
 l_Font  : TFont;
//#UC END# *4B0BAF8E03D0_4958D2EA00CC_var*
begin
//#UC START# *4B0BAF8E03D0_4958D2EA00CC_impl*
  if (Dispatcher.FormDispatcher.MainFormsCount > 1) then
   Exit;
  // Разрешение монитора:
  for l_Index := 0 to Pred(Screen.MonitorCount) do
   with Screen.Monitors[l_Index] do
    if Primary then
    begin
     TnsPrimaryMonitorResolutionEvent.Log(Cardinal(Width), Cardinal(Height));
     Break;
    end;//if Screen.Monitors[l_Index].Primary then
  // Точек на дюйм:
  TnsDPIEvent.Log(Cardinal(Screen.PixelsPerInch));
  // Размер основного шрифта:
  l_Font := TFont.Create;
  try
   evGetDefaultFont(l_Font);
   TnsFontSizeEvent.Log(Cardinal(l_Font.Size));
  finally
   FreeAndNil(l_Font);
  end;//try..finally
//#UC END# *4B0BAF8E03D0_4958D2EA00CC_impl*
end;//TNemesisMainForm.LogSystemInfo

function TNemesisMainForm.CanChangeDefaultFontSize(aInc: Boolean = true): Boolean;
//#UC START# *4BB3637402F5_4958D2EA00CC_var*
const  
 c_MinFontSize = 8;
 c_MaxFontSize = 30;
var
 l_Form : IvcmEntityForm;
 l_Cont : IvcmContainer;
//#UC END# *4BB3637402F5_4958D2EA00CC_var*
begin
//#UC START# *4BB3637402F5_4958D2EA00CC_impl*
 if HasForm(vcm_ztParent, false, @l_Form) then
 begin
  l_Cont := l_Form.AsContainer;
  if (l_Cont <> nil) AND
     l_Cont.HasForm(vcm_ztParent, false, @l_Form) then
   Case Op_Scalable_CanChangeScale.Call(l_Form, aInc) of
    ccsNo :
    begin
     Result := false;
     Exit;
    end;//ccsNo
    ccsYes :
    begin
     Result := true;
     Exit;
    end;//ccsYes
   end;//Case Op_Scalable_CanChangeScale.Call(l_Form, aInc)
 end;//HasForm(vcm_ztParent, false, @l_Form)
 with TevStyleInterface.Make do
  try
   if aInc then
    Result := (Font.Size < c_MaxFontSize)
   else
    Result := (Font.Size > c_MinFontSize);            
  finally
   Free;
  end;//try..finally
//#UC END# *4BB3637402F5_4958D2EA00CC_impl*
end;//TNemesisMainForm.CanChangeDefaultFontSize

procedure TNemesisMainForm.CheckInternetConnection;
//#UC START# *4BCDAB6F00D2_4958D2EA00CC_var*
//#UC END# *4BCDAB6F00D2_4958D2EA00CC_var*
begin
//#UC START# *4BCDAB6F00D2_4958D2EA00CC_impl*
 f_InternetDisconnected := True;
 f_ConnectionWasLost := True;
 UpdateCarrierHint;
//#UC END# *4BCDAB6F00D2_4958D2EA00CC_impl*
end;//TNemesisMainForm.CheckInternetConnection
// start class TnsChangeFontSizeEvent

class procedure TnsChangeFontSizeEvent.Log(aInc: Boolean;
  aSize: Cardinal);
//#UC START# *4B0BAFD30056_4B0BAFB9012B_var*
var
 l_Data: ILogEventData;
const
 cMap: array [Boolean] of TLogEvent = (LE_DEC_FONT, LE_INC_FONT);
//#UC END# *4B0BAFD30056_4B0BAFB9012B_var*
begin
//#UC START# *4B0BAFD30056_4B0BAFB9012B_impl*
 l_Data := MakeParamsList;
 l_Data.AddULong(aSize);
 GetLogger.AddEvent(cMap[aInc], l_Data);
//#UC END# *4B0BAFD30056_4B0BAFB9012B_impl*
end;//TnsChangeFontSizeEvent.Log
// start class TnsPrimaryMonitorResolutionEvent

class procedure TnsPrimaryMonitorResolutionEvent.Log(aWidth: Cardinal;
  aHeight: Cardinal);
//#UC START# *4B0BB0510315_4B0BB046001B_var*
var
 l_Data: ILogEventData;
//#UC END# *4B0BB0510315_4B0BB046001B_var*
begin
//#UC START# *4B0BB0510315_4B0BB046001B_impl*
 l_Data := MakeParamsList;
 l_Data.AddULong(aWidth);
 l_Data.AddULong(aHeight);
 GetLogger.AddEvent(LE_PRIMARY_MONITOR_RESOLUTION, l_Data);
//#UC END# *4B0BB0510315_4B0BB046001B_impl*
end;//TnsPrimaryMonitorResolutionEvent.Log
// start class TnsDPIEvent

class procedure TnsDPIEvent.Log(aDPI: Cardinal);
//#UC START# *4B0BB0B9003D_4B0BB0A502EC_var*
var
 l_Data: ILogEventData;
//#UC END# *4B0BB0B9003D_4B0BB0A502EC_var*
begin
//#UC START# *4B0BB0B9003D_4B0BB0A502EC_impl*
 l_Data := MakeParamsList;
 l_Data.AddULong(aDPI);
 GetLogger.AddEvent(LE_DPI, l_Data);
//#UC END# *4B0BB0B9003D_4B0BB0A502EC_impl*
end;//TnsDPIEvent.Log
// start class TnsFontSizeEvent

class procedure TnsFontSizeEvent.Log(aSize: Cardinal);
//#UC START# *4B0BB10A02E7_4B0BB0FA011D_var*
var
 l_Data: ILogEventData;
//#UC END# *4B0BB10A02E7_4B0BB0FA011D_var*
begin
//#UC START# *4B0BB10A02E7_4B0BB0FA011D_impl*
 l_Data := MakeParamsList;
 l_Data.AddULong(aSize);
 GetLogger.AddEvent(LE_FONT_SIZE, l_Data);
//#UC END# *4B0BB10A02E7_4B0BB0FA011D_impl*
end;//TnsFontSizeEvent.Log
// start class TnsForwardEvent

class procedure TnsForwardEvent.Log;
//#UC START# *4B14E63700DE_4B14E5FB019B_var*
//#UC END# *4B14E63700DE_4B14E5FB019B_var*
begin
//#UC START# *4B14E63700DE_4B14E5FB019B_impl*
 GetLogger.AddEvent(LE_FORWARD, MakeParamsList);
//#UC END# *4B14E63700DE_4B14E5FB019B_impl*
end;//TnsForwardEvent.Log
// start class TnsBackEvent

class procedure TnsBackEvent.Log;
//#UC START# *4B14E64200BC_4B14E61701BC_var*
//#UC END# *4B14E64200BC_4B14E61701BC_var*
begin
//#UC START# *4B14E64200BC_4B14E61701BC_impl*
 GetLogger.AddEvent(LE_BACK, MakeParamsList);
//#UC END# *4B14E64200BC_4B14E61701BC_impl*
end;//TnsBackEvent.Log

function TNemesisMainForm.Loadable_Load_Execute(const aNode: IeeNode;
  const aData: IUnknown;
  anOp: TListLogicOperation = LLO_NONE): Boolean;
//#UC START# *49895A2102E8_4958D2EA00CCexec_var*
var
 l_FolderNode  : INode;
 l_BaseEntity  : IUnknown;
//#UC END# *49895A2102E8_4958D2EA00CCexec_var*
begin
//#UC START# *49895A2102E8_4958D2EA00CCexec_impl*
 Result := false;
 if Supports(aNode, INode, l_FolderNode) then
  try
   try
    l_FolderNode.Open(l_BaseEntity);
   except
    on ECanNotFindData do
    begin
     Say(inf_BookmarkedDocumentMissing, [nsGetCaption(l_FolderNode)]);
     Result := false;
     exit;
    end;//on ECanNotFindData
   end;//try..except
   try
    TdmStdRes.OpenEntityAsDocument(l_BaseEntity, nil);
    Result := true;
   finally
    l_BaseEntity := nil;
   end;//try..finally
  finally
   l_FolderNode := nil;
  end;//try..finally
//#UC END# *49895A2102E8_4958D2EA00CCexec_impl*
end;//TNemesisMainForm.Loadable_Load_Execute

procedure TNemesisMainForm.Loadable_Load(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As ILoadable_Load_Params) do
  ResultValue := Loadable_Load_Execute(Node, Data, nOp);
end;

procedure TNemesisMainForm.FillList(const aList: InscStatusBarItemDefsList);
//#UC START# *4A8E5E4702C6_4958D2EA00CC_var*
//#UC END# *4A8E5E4702C6_4958D2EA00CC_var*
begin
//#UC START# *4A8E5E4702C6_4958D2EA00CC_impl*
 aList.Add(TnscStatusBarOperationDef.MakeSNoCaption(TdmStdRes.opcode_System_CantReceiveLegalServiceAnswer, True, True, 10000, nsc_ttkWarning));
//#UC END# *4A8E5E4702C6_4958D2EA00CC_impl*
end;//TNemesisMainForm.FillList

procedure TNemesisMainForm.Common_OnControlChanged_Execute;
//#UC START# *4A8ED54D030E_4958D2EA00CCexec_var*
//#UC END# *4A8ED54D030E_4958D2EA00CCexec_var*
begin
//#UC START# *4A8ED54D030E_4958D2EA00CCexec_impl*
 f_IsControlledObjectsChanging := True;
//#UC END# *4A8ED54D030E_4958D2EA00CCexec_impl*
end;//TNemesisMainForm.Common_OnControlChanged_Execute

procedure TNemesisMainForm.Common_OnControlChanged(const aParams: IvcmExecuteParams);
begin
 Common_OnControlChanged_Execute;
end;

procedure TNemesisMainForm.System_CantReceiveLegalServiceAnswer_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C7D38560348_4958D2EA00CCtest_var*
//#UC END# *4C7D38560348_4958D2EA00CCtest_var*
begin
//#UC START# *4C7D38560348_4958D2EA00CCtest_impl*
 with aParams.Op do
 begin
  Hint := f_CarrierLostHint;
  LongHint := f_CarrierLostHint;
 end;
//#UC END# *4C7D38560348_4958D2EA00CCtest_impl*
end;//TNemesisMainForm.System_CantReceiveLegalServiceAnswer_Test

procedure TNemesisMainForm.System_CantReceiveLegalServiceAnswer_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4C7D38560348_4958D2EA00CCgetstate_var*
//#UC END# *4C7D38560348_4958D2EA00CCgetstate_var*
begin
//#UC START# *4C7D38560348_4958D2EA00CCgetstate_impl*
 if f_CantReceiveAnswer or f_InternetDisconnected then
  State := st_user_System_CantReceiveLegalServiceAnswer_On
 else
 if f_ConnectionWasLost then
  State := st_user_System_CantReceiveLegalServiceAnswer_Off
 else
  State := st_user_System_CantReceiveLegalServiceAnswer_Disabled;
//#UC END# *4C7D38560348_4958D2EA00CCgetstate_impl*
end;//TNemesisMainForm.System_CantReceiveLegalServiceAnswer_GetState

procedure TNemesisMainForm.System_CantReceiveLegalServiceAnswer_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C7D38560348_4958D2EA00CCexec_var*
//#UC END# *4C7D38560348_4958D2EA00CCexec_var*
begin
//#UC START# *4C7D38560348_4958D2EA00CCexec_impl*
 if f_CantReceiveAnswer or f_InternetDisconnected then
  Say(war_CarierLost, [f_CarrierLostHint])
 else
  Say(inf_CarrierFound);
//#UC END# *4C7D38560348_4958D2EA00CCexec_impl*
end;//TNemesisMainForm.System_CantReceiveLegalServiceAnswer_Execute

procedure TNemesisMainForm.Cleanup;
//#UC START# *479731C50290_4958D2EA00CC_var*
//#UC END# *479731C50290_4958D2EA00CC_var*
begin
//#UC START# *479731C50290_4958D2EA00CC_impl*
 f_CarrierLostHint := nil;
 inherited;
//#UC END# *479731C50290_4958D2EA00CC_impl*
end;//TNemesisMainForm.Cleanup

function TNemesisMainForm.NeedsStatusBarItems: Boolean;
//#UC START# *4A8E5CEC021F_4958D2EA00CC_var*
//#UC END# *4A8E5CEC021F_4958D2EA00CC_var*
begin
//#UC START# *4A8E5CEC021F_4958D2EA00CC_impl*
 CheckConsultationConnection;
 Result := f_CantReceiveAnswer or f_InternetDisconnected or defDataAdapter.RevisionCheckEnabled;
//#UC END# *4A8E5CEC021F_4958D2EA00CC_impl*
end;//TNemesisMainForm.NeedsStatusBarItems

{$If not defined(NoVCM)}
function TNemesisMainForm.InsertForm(const aForm: IvcmEntityForm): Boolean;
//#UC START# *4AD44CA20001_4958D2EA00CC_var*
//#UC END# *4AD44CA20001_4958D2EA00CC_var*
begin
//#UC START# *4AD44CA20001_4958D2EA00CC_impl*
 Result := inherited InsertForm(aForm);
 if (f_sdsMainWindow = nil) then
 begin
  f_sdsMainWindow := TsdsMainWindow.Make;
  TdmStdRes.MakeBaloonForm(Self,
                    remUnreadConsultations,
                    f_sdsMainWindow.dsBaloonWarning);
  TdmStdRes.MakeBaloonForm(Self,
                    OldBaseWarning,
                    f_sdsMainWindow.dsBaloonWarning);
  TdmStdRes.MakeBaloonForm(Self,
                    remOnlineDead,
                    f_sdsMainWindow.dsBaloonWarning);
  TdmStdRes.MakeBaloonForm(Self,
                    TrialModeWarning,
                    f_sdsMainWindow.dsBaloonWarning);
  TdmStdRes.MakeBaloonForm(Self,
                    ControlledChangingWarning,
                    f_sdsMainWindow.dsBaloonWarning);
 end;//f_sdsMainWindow = nil
//#UC END# *4AD44CA20001_4958D2EA00CC_impl*
end;//TNemesisMainForm.InsertForm
{$IfEnd} //not NoVCM

procedure TNemesisMainForm.DoBack(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C8DDE6B01A6_4958D2EA00CC_var*
//#UC END# *4C8DDE6B01A6_4958D2EA00CC_var*
begin
//#UC START# *4C8DDE6B01A6_4958D2EA00CC_impl*
 inherited;
 TnsBackEvent.Log;
//#UC END# *4C8DDE6B01A6_4958D2EA00CC_impl*
end;//TNemesisMainForm.DoBack

procedure TNemesisMainForm.DoForward(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C8DDEA5007E_4958D2EA00CC_var*
//#UC END# *4C8DDEA5007E_4958D2EA00CC_var*
begin
//#UC START# *4C8DDEA5007E_4958D2EA00CC_impl*
 inherited;
 TnsForwardEvent.Log;
//#UC END# *4C8DDEA5007E_4958D2EA00CC_impl*
end;//TNemesisMainForm.DoForward

procedure TNemesisMainForm.ClearFields;
 {-}
begin
 f_CarrierLostHint := nil;
 f_sdsMainWindow := nil;
 inherited;
end;//TNemesisMainForm.ClearFields

procedure TNemesisMainForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_Loadable, nil);
  PublishFormEntity(en_System, nil);
  PublishFormEntity(en_Common, nil);
  PublishOpWithResult(en_Loadable, op_Load, Loadable_Load, nil, nil);
  PublishOpWithResult(en_Common, op_OnControlChanged, Common_OnControlChanged, nil, nil);
  PublishOp(en_System, op_CantReceiveLegalServiceAnswer, System_CantReceiveLegalServiceAnswer_Execute, System_CantReceiveLegalServiceAnswer_Test, System_CantReceiveLegalServiceAnswer_GetState);
  ShowInContextMenu(en_System, op_CantReceiveLegalServiceAnswer, false);
  ShowInToolbar(en_System, op_CantReceiveLegalServiceAnswer, false);
 end;//with Entities.Entities
end;

procedure TNemesisMainForm.MakeControls;
begin
 inherited;
 with AddUsertype(utMainWindowName,
  str_utMainWindowCaption,
  str_utMainWindowSettingsCaption,
  true,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(utMainWindowName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_CarrierLost
 str_CarrierLost.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_InternetAbsent
 str_InternetAbsent.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_TotalFailure
 str_TotalFailure.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_utMainWindowCaption
 str_utMainWindowCaption.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_utMainWindowSettingsCaption
 str_utMainWindowSettingsCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.