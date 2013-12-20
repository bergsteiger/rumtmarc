unit PrimPreview_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View$For F1 and Monitorings"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimPreview_Form.pas"
// Начат: 15.09.2009 14:41
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::PrimPreview
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin)}
uses
  afwInterfaces,
  OfficeLike_Usual_Controls
  {$If not defined(NoVCM)}
  ,
  vcmEntityForm
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  OfficeLike_Result_Controls
  {$If defined(Nemesis)}
  ,
  nscPreviewPanel
  {$IfEnd} //Nemesis
  ,
  Search_Strange_Controls,
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
  PrimPreview_utPrintPreview_UserType,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmBase {a}
  ;
{$IfEnd} //not Admin

{$If not defined(Admin)}
type
 TPrimPreviewForm = {abstract form} class(TvcmEntityForm)
 private
 // private fields
   f_PreviewPanel : TnscPreviewPanel;
    {* Поле для свойства PreviewPanel}
 protected
  procedure InitEntities; override;
  procedure MakeControls; override;
 protected
 // property methods
   function pm_GetPreviewPanel: TnscPreviewPanel;
 protected
 // realized methods
   procedure File_Print_Test(const aParams: IvcmTestParamsPrim);
     {* Печать }
   procedure File_PrintDialog_Test(const aParams: IvcmTestParamsPrim);
     {* Печать... }
   procedure Result_Cancel_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Отмена }
   procedure Result_Ok_Test(const aParams: IvcmTestParamsPrim);
     {* OK }
   procedure Result_Ok_GetState(var State: TvcmOperationStateIndex);
     {* OK }
   procedure Result_Ok_Execute(const aParams: IvcmExecuteParamsPrim);
     {* OK }
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   function CloseQuery: Boolean; override;
     {* CloseQuery is called automatically when an attempt is made to close the form. CloseQuery can allow the form to close by returning true, or prevent the form from closing by returning false.

As implemented in TCustomForm, CloseQuery polls any MDI children by calling their CloseQuery methods. If no child form aborts the close, CloseQuery then calls the OnCloseQuery event handler, if it exists, to determine if the close should be allowed. If no such event handler exists, CloseQuery returns true. }
 protected
 // protected fields
   f_Preview : IafwDocumentPreview;
 protected
 // protected methods
   function IsReady: Boolean;
     {* все готово, можно печатать }
   function Preview: IafwDocumentPreview;
 public
 // public methods
   class function Make(const aData: IafwDocumentPreview;
    const aParams : IvcmMakeParams = nil;
    aZoneType     : TvcmZoneType = vcm_ztAny;
    aUserType     : TvcmEffectiveUserType = 0;
    aDataSource   : IvcmFormDataSource = nil): IvcmEntityForm; reintroduce;
 public
 // public properties
   property PreviewPanel: TnscPreviewPanel
     read pm_GetPreviewPanel;
 end;//TPrimPreviewForm

 TvcmEntityFormRef = TPrimPreviewForm;
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}
uses
  Controls,
  nsTrialSupport
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  l3MessageID,
  l3Base {a}
  ;
{$IfEnd} //not Admin

{$If not defined(Admin)}

var
   { Локализуемые строки utPrintPreviewLocalConstants }
  str_utPrintPreviewCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utPrintPreviewCaption'; rValue : 'Предварительный просмотр печати');
   { Заголовок пользовательского типа "Предварительный просмотр печати" }

type
  Tkw_PrimPreview_Control_PreviewPanel = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола PreviewPanel
----
*Пример использования*:
[code]
контрол::PreviewPanel TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPreview_Control_PreviewPanel

// start class Tkw_PrimPreview_Control_PreviewPanel

{$If not defined(NoScripts)}
function Tkw_PrimPreview_Control_PreviewPanel.GetString: AnsiString;
 {-}
begin
 Result := 'PreviewPanel';
end;//Tkw_PrimPreview_Control_PreviewPanel.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimPreview_Control_PreviewPanel_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола PreviewPanel
----
*Пример использования*:
[code]
контрол::PreviewPanel:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPreview_Control_PreviewPanel_Push

// start class Tkw_PrimPreview_Control_PreviewPanel_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimPreview_Control_PreviewPanel_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('PreviewPanel');
 inherited;
end;//Tkw_PrimPreview_Control_PreviewPanel_Push.DoDoIt
{$IfEnd} //not NoScripts

function TPrimPreviewForm.pm_GetPreviewPanel: TnscPreviewPanel;
begin
 if (f_PreviewPanel = nil) then
  f_PreviewPanel := FindComponent('PreviewPanel') As TnscPreviewPanel;
 Result := f_PreviewPanel;
end;

function TPrimPreviewForm.IsReady: Boolean;
//#UC START# *4AC61241009B_4AAF6F4E010E_var*
//#UC END# *4AC61241009B_4AAF6F4E010E_var*
begin
//#UC START# *4AC61241009B_4AAF6F4E010E_impl*
 Result := (PreviewPanel <> nil) AND PreviewPanel.IsReady and
           PreviewPanel.Preview.Printer.HasPrinter and
           not PreviewPanel.Preview.InPrinting;
//#UC END# *4AC61241009B_4AAF6F4E010E_impl*
end;//TPrimPreviewForm.IsReady

function TPrimPreviewForm.Preview: IafwDocumentPreview;
//#UC START# *4AC612AF032F_4AAF6F4E010E_var*
//#UC END# *4AC612AF032F_4AAF6F4E010E_var*
begin
//#UC START# *4AC612AF032F_4AAF6F4E010E_impl*
 if (f_Preview = nil) AND (PreviewPanel <> nil) then
  f_Preview := PreviewPanel.Preview;
 Result := f_Preview;
//#UC END# *4AC612AF032F_4AAF6F4E010E_impl*
end;//TPrimPreviewForm.Preview

class function TPrimPreviewForm.Make(const aData: IafwDocumentPreview;
  const aParams : IvcmMakeParams = nil;
  aZoneType     : TvcmZoneType = vcm_ztAny;
  aUserType     : TvcmEffectiveUserType = 0;
  aDataSource   : IvcmFormDataSource = nil): IvcmEntityForm;

 procedure AfterCreate(aForm : TPrimPreviewForm);
 begin
  with aForm do
  begin
//#UC START# *4AC610DF03A7_4AAF6F4E010E_impl*
   f_Preview := aData;
   PreviewPanel.Preview := f_Preview;
//#UC END# *4AC610DF03A7_4AAF6F4E010E_impl*
  end;//with aForm
 end;

var
 l_AC : TvcmInitProc;
 l_ACHack : Pointer absolute l_AC;
begin
 l_AC := l3LocalStub(@AfterCreate);
 try
  Result := inherited Make(aParams, aZoneType, aUserType, nil, aDataSource, vcm_utAny, l_AC);
 finally
  l3FreeLocalStub(l_ACHack);
 end;//try..finally
end;

procedure TPrimPreviewForm.File_Print_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49521D8E0295_4AAF6F4E010Etest_var*
//#UC END# *49521D8E0295_4AAF6F4E010Etest_var*
begin
//#UC START# *49521D8E0295_4AAF6F4E010Etest_impl*
 aParams.CallControl;
 if not IsReady then
  aParams.Op.Flag[vcm_ofEnabled] := false;
 {$If not defined(Admin) AND not defined(Monitorings)} 
 nsDisableOperationInTrialMode(aParams);
 {$IfEnd} //not Admin AND not Monitorings
//#UC END# *49521D8E0295_4AAF6F4E010Etest_impl*
end;//TPrimPreviewForm.File_Print_Test

procedure TPrimPreviewForm.File_PrintDialog_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *495220DE0298_4AAF6F4E010Etest_var*
//#UC END# *495220DE0298_4AAF6F4E010Etest_var*
begin
//#UC START# *495220DE0298_4AAF6F4E010Etest_impl*
 aParams.CallControl;
 if not IsReady then
  aParams.Op.Flag[vcm_ofEnabled] := false;
 {$If not defined(Admin) AND not defined(Monitorings)} 
 nsDisableOperationInTrialMode(aParams);
 {$IfEnd} //not Admin AND not Monitorings
//#UC END# *495220DE0298_4AAF6F4E010Etest_impl*
end;//TPrimPreviewForm.File_PrintDialog_Test

procedure TPrimPreviewForm.Result_Cancel_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4A8AD46D0226_4AAF6F4E010Eexec_var*
//#UC END# *4A8AD46D0226_4AAF6F4E010Eexec_var*
begin
//#UC START# *4A8AD46D0226_4AAF6F4E010Eexec_impl*
 if IsModalForm then
  ModalResult := mrCancel
 else
  Dispatcher.History.Back;
//#UC END# *4A8AD46D0226_4AAF6F4E010Eexec_impl*
end;//TPrimPreviewForm.Result_Cancel_Execute

procedure TPrimPreviewForm.Result_Ok_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4A97EBE702F8_4AAF6F4E010Etest_var*
//#UC END# *4A97EBE702F8_4AAF6F4E010Etest_var*
begin
//#UC START# *4A97EBE702F8_4AAF6F4E010Etest_impl*
 if not IsReady then
  aParams.Op.Flag[vcm_ofEnabled] := false;
 {$If not defined(Admin) AND not defined(Monitorings)}
 nsDisableOperationInTrialMode(aParams);
 {$IfEnd} //not Admin AND not Monitorings
//#UC END# *4A97EBE702F8_4AAF6F4E010Etest_impl*
end;//TPrimPreviewForm.Result_Ok_Test

procedure TPrimPreviewForm.Result_Ok_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4A97EBE702F8_4AAF6F4E010Egetstate_var*
//#UC END# *4A97EBE702F8_4AAF6F4E010Egetstate_var*
begin
//#UC START# *4A97EBE702F8_4AAF6F4E010Egetstate_impl*
 State := st_user_Result_Ok_Print;
//#UC END# *4A97EBE702F8_4AAF6F4E010Egetstate_impl*
end;//TPrimPreviewForm.Result_Ok_GetState

procedure TPrimPreviewForm.Result_Ok_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4A97EBE702F8_4AAF6F4E010Eexec_var*
//#UC END# *4A97EBE702F8_4AAF6F4E010Eexec_var*
begin
//#UC START# *4A97EBE702F8_4AAF6F4E010Eexec_impl*
 PreviewPanel.Print;
 if IsModalForm then
  ModalResult := mrOk
 else
  Dispatcher.History.Back;
//#UC END# *4A97EBE702F8_4AAF6F4E010Eexec_impl*
end;//TPrimPreviewForm.Result_Ok_Execute

procedure TPrimPreviewForm.Cleanup;
//#UC START# *479731C50290_4AAF6F4E010E_var*
//#UC END# *479731C50290_4AAF6F4E010E_var*
begin
//#UC START# *479731C50290_4AAF6F4E010E_impl*
 f_Preview := nil;
 inherited;
//#UC END# *479731C50290_4AAF6F4E010E_impl*
end;//TPrimPreviewForm.Cleanup

function TPrimPreviewForm.CloseQuery: Boolean;
//#UC START# *4980403E021E_4AAF6F4E010E_var*
//#UC END# *4980403E021E_4AAF6F4E010E_var*
begin
//#UC START# *4980403E021E_4AAF6F4E010E_impl*
 Result := inherited CloseQuery; 
 if Result AND (Preview <> nil) AND Preview.InProcess then
 begin
  // Разрешаем удалять во время подготовки печати, потому, что защитили
  // соответствующие методы в Preview вызовами afw.BeginOp, afw.EndOp;
  //Result := false;
  Preview.Stop(Handle);
 end;//Result
//#UC END# *4980403E021E_4AAF6F4E010E_impl*
end;//TPrimPreviewForm.CloseQuery

procedure TPrimPreviewForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_File, nil);
  PublishFormEntity(en_Result, nil);
  PublishFormEntity(en_Preview, nil);
  PublishFormEntity(en_Document, nil);
  PublishOp(en_File, op_Print, nil, File_Print_Test, nil);
  ShowInToolbar(en_File, op_Print, true);
  PublishOp(en_File, op_PrintDialog, nil, File_PrintDialog_Test, nil);
  ShowInContextMenu(en_File, op_PrintDialog, false);
  ShowInToolbar(en_File, op_PrintDialog, false);
  PublishOp(en_Result, op_Cancel, Result_Cancel_Execute, nil, nil);
  ShowInToolbar(en_Result, op_Cancel, true);
  PublishOp(en_Result, op_Ok, Result_Ok_Execute, Result_Ok_Test, Result_Ok_GetState);
  ShowInToolbar(en_Result, op_Ok, true);
  PublishOp(en_Preview, op_ZoomIn, nil, nil, nil);
  ShowInContextMenu(en_Preview, op_ZoomIn, true);
  ShowInToolbar(en_Preview, op_ZoomIn, true);
  PublishOp(en_Preview, op_ZoomOut, nil, nil, nil);
  ShowInContextMenu(en_Preview, op_ZoomOut, true);
  ShowInToolbar(en_Preview, op_ZoomOut, true);
  PublishOp(en_Preview, op_ZoomWidth, nil, nil, nil);
  ShowInContextMenu(en_Preview, op_ZoomWidth, true);
  ShowInToolbar(en_Preview, op_ZoomWidth, true);
  PublishOp(en_Preview, op_ZoomPage, nil, nil, nil);
  ShowInContextMenu(en_Preview, op_ZoomPage, true);
  ShowInToolbar(en_Preview, op_ZoomPage, true);
  PublishOp(en_Document, op_FullSelectedSwitch, nil, nil, nil);
  ShowInContextMenu(en_Document, op_FullSelectedSwitch, true);
  ShowInToolbar(en_Document, op_FullSelectedSwitch, true);
  PublishOp(en_Document, op_RGBGrayscaleSwitch, nil, nil, nil);
  ShowInContextMenu(en_Document, op_RGBGrayscaleSwitch, true);
  ShowInToolbar(en_Document, op_RGBGrayscaleSwitch, true);
  PublishOp(en_Document, op_PrintInfoSwitch, nil, nil, nil);
  ShowInContextMenu(en_Document, op_PrintInfoSwitch, true);
  ShowInToolbar(en_Document, op_PrintInfoSwitch, true);
 end;//with Entities.Entities
end;

procedure TPrimPreviewForm.MakeControls;
begin
 inherited;
 with AddUsertype(utPrintPreviewName,
  str_utPrintPreviewCaption,
  str_utPrintPreviewCaption,
  true,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(utPrintPreviewName
end;

{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// Регистрация Tkw_PrimPreview_Control_PreviewPanel
 Tkw_PrimPreview_Control_PreviewPanel.Register('контрол::PreviewPanel', TnscPreviewPanel);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrimPreview_Control_PreviewPanel_Push
 Tkw_PrimPreview_Control_PreviewPanel_Push.Register('контрол::PreviewPanel:push');
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Инициализация str_utPrintPreviewCaption
 str_utPrintPreviewCaption.Init;
{$IfEnd} //not Admin

end.