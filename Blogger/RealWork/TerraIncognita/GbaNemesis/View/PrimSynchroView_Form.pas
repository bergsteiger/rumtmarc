unit PrimSynchroView_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/PrimSynchroView_Form.pas"
// Начат: 23.01.2009 18:51
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMContainer::Class>> F1 Работа с документом и списком документов::Document::View::SynchroView::PrimSynchroView
//
// Контейнер синхронного просмотра
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
  DynamicDocListUnit,
  vtPanel,
  Base_Operations_Strange_Controls,
  Base_Operations_Editions_Controls,
  nsLogEvent,
  WorkWithListInterfaces
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  
  {$If defined(Nemesis)}
  ,
  nscNewInterfaces
  {$IfEnd} //Nemesis
  
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  l3StringIDEx
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  SynchroViewUserTypes_svSynchroView_UserType,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a},
  nsTypes,
  vcmControllers {a},
  vcmContainerForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 _PageControlNotification_Parent_ = TvcmContainerForm;
 {$Include ..\View\PageControlNotification.imp.pas}
 _SynchroViewUserTypes_Parent_ = _PageControlNotification_;
 {$Include ..\View\SynchroViewUserTypes.imp.pas}
 TPrimSynchroViewForm = {form} class(_SynchroViewUserTypes_)
  {* Контейнер синхронного просмотра }
 private
 // private fields
   f_DocView : TvtPanel;
    {* Поле для свойства DocView}
 protected
  procedure SignalDataSourceChanged(const anOld : IvcmViewAreaController;
                                const aDsNew : IvcmViewAreaController); override;
  procedure InitEntities; override;
 protected
 // property methods
   function pm_GetDocView: TvtPanel;
 protected
 // realized methods
   procedure DoTabActivate; override;
     {* Реакция на переключение вкладки }
   procedure SynchroView_BecomeActive_Execute(aFormType: TnsShowSynchroForm);
   procedure SynchroView_BecomeActive(const aParams: IvcmExecuteParams);
   procedure SvSynchroViewQueryClose(aSender: TObject); override;
     {* Обработчик события svSynchroView.OnQueryClose }
 protected
 // protected fields
   ViewArea : IdsSynchroView;
   sdsList : IsdsList;
 public
 // public properties
   property DocView: TvtPanel
     read pm_GetDocView;
 end;//TPrimSynchroViewForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  LoggingUnit,
  F1Like_InternalOperations_Controls
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  nsManagers
  {$If not defined(NoVCM)}
  ,
  StdRes
  {$IfEnd} //not NoVCM
  ,
  l3MessageID,
  SysUtils {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

{$Include ..\View\PageControlNotification.imp.pas}

{$Include ..\View\SynchroViewUserTypes.imp.pas}

type
  TnsSynchroviewActivateEvent = {final} class(TnsLogEvent)
  public
  // public methods
   class procedure Log(const aList: IDynList);
  end;//TnsSynchroviewActivateEvent

// start class TnsSynchroviewActivateEvent

class procedure TnsSynchroviewActivateEvent.Log(const aList: IDynList);
//#UC START# *4B150F39031A_4B150F140142_var*
var
 l_Data: ILogEventData;
//#UC END# *4B150F39031A_4B150F140142_var*
begin
//#UC START# *4B150F39031A_4B150F140142_impl*
 l_Data := MakeParamsList;
 l_Data.AddObject(aList);
 GetLogger.AddEvent(LE_SYNCHROVIEW_ACTIVATE, l_Data);
//#UC END# *4B150F39031A_4B150F140142_impl*
end;//TnsSynchroviewActivateEvent.Log

type
  Tkw_PrimSynchroView_Control_DocView = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола DocView
----
*Пример использования*:
[code]
контрол::DocView TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimSynchroView_Control_DocView

// start class Tkw_PrimSynchroView_Control_DocView

{$If not defined(NoScripts)}
function Tkw_PrimSynchroView_Control_DocView.GetString: AnsiString;
 {-}
begin
 Result := 'DocView';
end;//Tkw_PrimSynchroView_Control_DocView.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimSynchroView_Control_DocView_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола DocView
----
*Пример использования*:
[code]
контрол::DocView:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimSynchroView_Control_DocView_Push

// start class Tkw_PrimSynchroView_Control_DocView_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimSynchroView_Control_DocView_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('DocView');
 inherited;
end;//Tkw_PrimSynchroView_Control_DocView_Push.DoDoIt
{$IfEnd} //not NoScripts

function TPrimSynchroViewForm.pm_GetDocView: TvtPanel;
begin
 if (f_DocView = nil) then
  f_DocView := FindComponent('DocView') As TvtPanel;
 Result := f_DocView;
end;

procedure TPrimSynchroViewForm.DoTabActivate;
//#UC START# *497F16AC015A_4979E75C00C7_var*
//#UC END# *497F16AC015A_4979E75C00C7_var*
begin
//#UC START# *497F16AC015A_4979E75C00C7_impl*
 if (sdsList <> nil) then
  TnsSynchroviewActivateEvent.Log(sdsList.dsList.List);
//#UC END# *497F16AC015A_4979E75C00C7_impl*
end;//TPrimSynchroViewForm.DoTabActivate

procedure TPrimSynchroViewForm.SynchroView_BecomeActive_Execute(aFormType: TnsShowSynchroForm);
//#UC START# *4AE9E3CC03C7_4979E75C00C7exec_var*
//#UC END# *4AE9E3CC03C7_4979E75C00C7exec_var*
begin
//#UC START# *4AE9E3CC03C7_4979E75C00C7exec_impl*
 case aFormType of
  ssfRelated:
   ViewArea.OpenRelatedDoc;
  ssfAttribute:
   ViewArea.OpenAttributes;
  ssfAnnotation:
   ViewArea.OpenAnnotation;
  ssfSimilarDocuments:
   ViewArea.OpenSimilarDocuments;
 end;//case aFormType of
 // Сделаем закладку активной
 SetActiveInParent;
//#UC END# *4AE9E3CC03C7_4979E75C00C7exec_impl*
end;//TPrimSynchroViewForm.SynchroView_BecomeActive_Execute

procedure TPrimSynchroViewForm.SynchroView_BecomeActive(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As ISynchroView_BecomeActive_Params) do
  SynchroView_BecomeActive_Execute(FormType);
end;

procedure TPrimSynchroViewForm.SvSynchroViewQueryClose(aSender: TObject);
//#UC START# *F5C4A5904D01_4979E75C00C7_var*
//#UC END# *F5C4A5904D01_4979E75C00C7_var*
begin
//#UC START# *F5C4A5904D01_4979E75C00C7_impl*
 op_Switcher_SetFirstPageActive.Call(Container);
//#UC END# *F5C4A5904D01_4979E75C00C7_impl*
end;//TPrimSynchroViewForm.SvSynchroViewQueryClose

procedure TPrimSynchroViewForm.SignalDataSourceChanged(const anOld : IvcmViewAreaController;
 const aDsNew : IvcmViewAreaController);
begin
 inherited;
 if (aDsNew = nil) then
 begin
  ViewArea := nil;
  sdsList := nil;
 end//aDsNew = nil
 else
 begin
  ViewArea := aDsNew As IdsSynchroView;
  aDsNew.CastUCC(IsdsList, sdsList);
 end;//aDsNew = nil
end;

procedure TPrimSynchroViewForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_SynchroView, nil);
  PublishOpWithResult(en_SynchroView, op_BecomeActive, SynchroView_BecomeActive, nil, nil);
 end;//with Entities.Entities
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
 {$Include ..\View\SynchroViewUserTypes.imp.pas}
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimSynchroView_Control_DocView
 Tkw_PrimSynchroView_Control_DocView.Register('контрол::DocView', TvtPanel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimSynchroView_Control_DocView_Push
 Tkw_PrimSynchroView_Control_DocView_Push.Register('контрол::DocView:push');
{$IfEnd} //not Admin AND not Monitorings

end.