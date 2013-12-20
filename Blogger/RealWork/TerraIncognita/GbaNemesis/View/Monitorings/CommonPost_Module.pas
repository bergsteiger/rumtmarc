unit CommonPost_Module;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Monitorings/CommonPost_Module.pas"
// Начат: 10.09.2009 19:22
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFormsPack::Class>> F1 Утилита Прайм::NewsLineTuning::View::Monitorings::CommonPost
//
// Новостная лента
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If defined(Monitorings) AND not defined(Admin)}
uses
  SearchUnit
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  ,
  Messages,
  NewsLineTuning_FormDefinitions_Controls
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  PrimPostingsListOptions_Form
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  PostingsList_Form,
  vcmExternalInterfaces {a},
  vcmModule {a},
  vcmBase {a}
  ;
{$IfEnd} //Monitorings AND not Admin

{$If defined(Monitorings) AND not defined(Admin)}
type
 TCommonPostModule = {formspack} class(TvcmModule)
  {* Новостная лента }
 protected
  procedure Loaded; override;
  class procedure GetEntityForms(aList : TvcmClassList); override;
 private
 // private methods
   class function MessageHook(var Msg: TMessage): Boolean;
 protected
 // protected methods
   class function OpenPostingOrderForm(const anAggregate: IvcmAggregate;
     const aContainer: IvcmContainer;
     const aQuery: IQuery): IvcmEntityForm;
   class function OpenPostingOrderList(const anAggregate: IvcmAggregate;
     const aContainer: IvcmContainer;
     anActive: Boolean): IvcmEntityForm;
   procedure opSavePostListTest(const aParams: IvcmTestParamsPrim);
     {* Экспортировать все индивидуальные ленты в файл }
   procedure opSavePostList(const aParams: IvcmExecuteParamsPrim);
     {* Экспортировать все индивидуальные ленты в файл }
 public
 // public methods
   class function OpenPostingOrder(const aQuery: IQuery): IvcmEntityForm;
   class procedure SavePostingList;
   class procedure CheckHistory;
     {* пробуем возвратиться по истории, если активна форма предварительного просмотра }
   class function StartOpen(const aContainer: IvcmContainer): IvcmEntityForm;
   class procedure SavePostList;
     {* Сохранить индивидуальные ленты в файл }
   class function CanSavePostList: Boolean;
     {* Можно ли сохранить индивидуальные ленты в файл }
 end;//TCommonPostModule
{$IfEnd} //Monitorings AND not Admin

implementation

{$If defined(Monitorings) AND not defined(Admin)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUtils
  {$IfEnd} //not NoVCM
  ,
  SysUtils,
  Search_Strange_Controls,
  nsPostingsTreeSingle
  {$If not defined(NoVCM)}
  ,
  vcmMessagesSupport
  {$IfEnd} //not NoVCM
  ,
  l3String,
  Forms,
  FileCtrl,
  DataAdapter,
  PrimeUnit,
  nsTypes,
  Windows,
  nsFindSelectDialog,
  SearchLite_Strange_Controls,
  PrimSaveLoadUserTypes_slqtPostingOrder_UserType,
  PrimQueryCard_utqcPostingOrder_UserType,
  Search_FormDefinitions_Controls
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  kw_CommonPost_SavePostList,
  vcmFormSetFactory {a},
  StdRes {a},
  vcmModuleDef {a}
  ;
{$IfEnd} //Monitorings AND not Admin

{$If defined(Monitorings) AND not defined(Admin)}

type
  Tkw_Form_PostingsList = class(TtfwControlString)
   {* Слово словаря для идентификатора формы PostingsList
----
*Пример использования*:
[code]
'aControl' форма::PostingsList TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_PostingsList

// start class Tkw_Form_PostingsList

{$If not defined(NoScripts)}
function Tkw_Form_PostingsList.GetString: AnsiString;
 {-}
begin
 Result := 'enPostingsList';
end;//Tkw_Form_PostingsList.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PostingsList_tvPostings_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола tvPostings формы PostingsList }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PostingsList_tvPostings_ControlInstance

// start class Tkw_PostingsList_tvPostings_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_PostingsList_tvPostings_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TenPostingsList).tvPostings);
end;//Tkw_PostingsList_tvPostings_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

class function TCommonPostModule.MessageHook(var Msg: TMessage): Boolean;
//#UC START# *4AAF94F8009A_4AA919B200AB_var*
//#UC END# *4AAF94F8009A_4AA919B200AB_var*
begin
//#UC START# *4AAF94F8009A_4AA919B200AB_impl*
 Result := False;
 if (Msg.Msg = WM_ACTIVATEAPP) and TWMActivateApp(Msg).Active then
  EnumWindows(@FindSelectDialog, LongInt(@Msg));
//#UC END# *4AAF94F8009A_4AA919B200AB_impl*
end;//TCommonPostModule.MessageHook

class function TCommonPostModule.OpenPostingOrderForm(const anAggregate: IvcmAggregate;
  const aContainer: IvcmContainer;
  const aQuery: IQuery): IvcmEntityForm;
//#UC START# *4AA9304801B8_4AA919B200AB_var*
//#UC END# *4AA9304801B8_4AA919B200AB_var*
var
 l_Container : IvcmEntityForm;
begin
//#UC START# *4AA9304801B8_4AA919B200AB_impl*
 // Создание базового контейнера для КЗ
 l_Container := TdmStdRes.MakeSaveLoadForm(vcmMakeParams(anAggregate, aContainer),
                                           vcm_ztParent,
                                           True,
                                           Ord(slqtPostingOrder));
 // Создание конкретной карточки запроса
 vcmDispatcher.FormDispatcher.Lock;
 try
  Result := TdmStdRes.MakeQueryCardForm(false,
                                        vcmMakeParams(l_Container.Aggregate,
                                                  l_Container.AsContainer),
                                        vcm_ztParent,
                                        True,
                                        Ord(utqcPostingOrder));
  // Загрузим запрос если подали
  if (l_Container.Aggregate <> nil) then
  begin
   if (aQuery <> nil) then
    op_SearchParameters_SetQuery.Call(l_Container.Aggregate, aQuery)
   else
   begin
    Op_Query_ClearAll.Call(l_Container.Aggregate, true);
    op_SearchParameters_SetQuery.Call(l_Container.Aggregate, nil);
   end;//aQuery <> nil
  end;//l_Container.Aggregate <> nil
 finally
  vcmDispatcher.FormDispatcher.Unlock;
 end;//try..finally
//#UC END# *4AA9304801B8_4AA919B200AB_impl*
end;//TCommonPostModule.OpenPostingOrderForm

class function TCommonPostModule.OpenPostingOrder(const aQuery: IQuery): IvcmEntityForm;
var
 __WasEnter : Boolean;
//#UC START# *4AA93C87000C_4AA919B200AB_var*
//#UC END# *4AA93C87000C_4AA919B200AB_var*
var
 l_Form : IvcmEntityForm;
 l_Cont : IvcmContainer;
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AA93C87000C_4AA919B200AB_impl*
 l_Form := nil;
 l_Cont := CheckContainer(nil);
 l_Cont.HasForm(fm_enPostingsList.rFormID, vcm_ztNavigator, True, @l_Form);
 Assert(l_Form <> nil);
 if (l_Form <> nil) then
  Result := OpenPostingOrderForm(l_Form.Aggregate, l_Cont, aQuery)
 else
  Result := OpenPostingOrderForm(nil, l_Cont, aQuery);
//#UC END# *4AA93C87000C_4AA919B200AB_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TCommonPostModule.OpenPostingOrder

class procedure TCommonPostModule.SavePostingList;
var
 __WasEnter : Boolean;
//#UC START# *4AAF935E01A7_4AA919B200AB_var*
//#UC END# *4AAF935E01A7_4AA919B200AB_var*
var
 l_PathName : AnsiString;
 l_MayExit : Boolean;
 l_Result : Boolean;
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AAF935E01A7_4AA919B200AB_impl*
 // сохранение XML на стороне сервера приложений
 TnsPostingsTreeSingle.Instance.SaveXMLForServer;
 // сохранение XML на стороне клиента
 if TnsPostingsTreeSingle.Instance.HasChildren then
 begin
  l_PathName := l3PStr(TnsPostingsTreeSingle.Instance.LastCatalog);
  with dmStdRes do
  begin
   repeat
    Application.HookMainWindow(MessageHook);
    try
     l_Result := SelectDirectory(vcmConstString(str_ChooseSaveSettingsFolder),
       '', l_PathName);
    finally
      Application.UnhookMainWindow(MessageHook);
    end; 
    l_MayExit := not l_Result; //Пользователь отказался от выбора - выходим
    if not l_MayExit then //Решил сохраниться, но это не так просто. :-)
    begin
     l_MayExit := DirectoryExists(l_PathName);
     if not l_MayExit then
     begin
      vcmSay(war_WrongCatalogSelect, [l_PathName]);
      l_PathName := '';
     end;
    end;
   until l_MayExit;
   if l_Result then
   begin
    if l_PathName[Length(l_PathName)] = '\' then
     Delete(l_PathName, Length(l_PathName), 1);
    try
     DefDataAdapter.PrimeManager.SaveMailDeliveryTask(nsAStr(l_PathName));
     TnsPostingsTreeSingle.Instance.LastCatalog := nsCStr(l_PathName);
    except
     on EUnknownExportError do
      vcmSay(err_ErrorWhileSavePostings);
    end;//try..except
   end;//l_Result
  end;//with dmStdRes
 end;//TnsPostingsTreeSingle.Instance.HasChildren
 TnsPostingsTreeSingle.Instance.DataChanged := False;
//#UC END# *4AAF935E01A7_4AA919B200AB_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TCommonPostModule.SavePostingList

class procedure TCommonPostModule.CheckHistory;
var
 __WasEnter : Boolean;
//#UC START# *4AAF9E650070_4AA919B200AB_var*
//#UC END# *4AAF9E650070_4AA919B200AB_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AAF9E650070_4AA919B200AB_impl*
 if (vcmDispatcher.FormDispatcher.CurrentMainForm.AsContainer).HasForm(fm_efPreviewForm.rFormID) and
  vcmDispatcher.History.HasInPreviousStep(fm_enQueryCard.rFormID) then
   vcmDispatcher.History.Back;
//#UC END# *4AAF9E650070_4AA919B200AB_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TCommonPostModule.CheckHistory

class function TCommonPostModule.OpenPostingOrderList(const anAggregate: IvcmAggregate;
  const aContainer: IvcmContainer;
  anActive: Boolean): IvcmEntityForm;
//#UC START# *4AAFA0B10356_4AA919B200AB_var*
//#UC END# *4AAFA0B10356_4AA919B200AB_var*
begin
//#UC START# *4AAFA0B10356_4AA919B200AB_impl*
 vcmDispatcher.FormDispatcher.Lock;
 try
  Result := TenPostingsList.MakeSingleChild(aContainer.NativeMainForm,
                                             vcmMakeParams(anAggregate,
                                                       aContainer),
                                             vcm_ztNavigator);
  if anActive then
   Result.SetActiveInParent;
 finally
  vcmDispatcher.FormDispatcher.UnLock;
 end;//try..finally      
//#UC END# *4AAFA0B10356_4AA919B200AB_impl*
end;//TCommonPostModule.OpenPostingOrderList

class function TCommonPostModule.StartOpen(const aContainer: IvcmContainer): IvcmEntityForm;
var
 __WasEnter : Boolean;
//#UC START# *4AAFA52603B7_4AA919B200AB_var*
//#UC END# *4AAFA52603B7_4AA919B200AB_var*
var
 l_Aggregate : IvcmAggregate;
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AAFA52603B7_4AA919B200AB_impl*
 l_Aggregate := vcmCheckAggregate(vcmMakeParams).Aggregate;
 // Ленты
 OpenPostingOrderList(l_Aggregate, aContainer, true);
 // Карточка
 OpenPostingOrderForm(l_Aggregate, aContainer, nil);
//#UC END# *4AAFA52603B7_4AA919B200AB_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TCommonPostModule.StartOpen

class procedure TCommonPostModule.SavePostList;
var
 __WasEnter : Boolean;
//#UC START# *4B71840A00D2_4AA919B200AB_var*
//#UC END# *4B71840A00D2_4AA919B200AB_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4B71840A00D2_4AA919B200AB_impl*
  CheckHistory;
  with TnsPostingsTreeSingle.Instance do
  begin
   if (MgrSearch <> nil) and MgrSearch.Modified and vcmAsk(qr_SavePosting) then
    SaveOrCreateQuery;
  end;//with TnsPostingsTreeSingle.Instance do
  SavePostingList;
//#UC END# *4B71840A00D2_4AA919B200AB_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TCommonPostModule.SavePostList

class function TCommonPostModule.CanSavePostList: Boolean;
var
 __WasEnter : Boolean;
//#UC START# *4B7184370035_4AA919B200AB_var*
//#UC END# *4B7184370035_4AA919B200AB_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4B7184370035_4AA919B200AB_impl*
  Result := TnsPostingsTreeSingle.Instance.Root.HasChild;
//#UC END# *4B7184370035_4AA919B200AB_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TCommonPostModule.CanSavePostList

procedure TCommonPostModule.opSavePostListTest(const aParams: IvcmTestParamsPrim);
//#UC START# *4B71847503BF_4AA919B200ABtest_var*
//#UC END# *4B71847503BF_4AA919B200ABtest_var*
begin
//#UC START# *4B71847503BF_4AA919B200ABtest_impl*
 aParams.Op.Flag[vcm_ofEnabled] := CanSavePostList;
//#UC END# *4B71847503BF_4AA919B200ABtest_impl*
end;//TCommonPostModule.opSavePostListTest

procedure TCommonPostModule.opSavePostList(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4B71847503BF_4AA919B200ABexec_var*
//#UC END# *4B71847503BF_4AA919B200ABexec_var*
begin
//#UC START# *4B71847503BF_4AA919B200ABexec_impl*
 SavePostList;
//#UC END# *4B71847503BF_4AA919B200ABexec_impl*
end;//TCommonPostModule.opSavePostList

procedure TCommonPostModule.Loaded;
begin
 inherited;
 PublishOp('opSavePostList', opSavePostList, opSavePostListTest);
end;

class procedure TCommonPostModule.GetEntityForms(aList : TvcmClassList);
begin
 inherited;
 aList.Add(TenPostingsList);
end;

{$IfEnd} //Monitorings AND not Admin

initialization
{$If defined(Monitorings) AND not defined(Admin)}
// Регистрация фабрики формы PostingsList
 fm_enPostingsList.SetFactory(TenPostingsList.Make);
{$IfEnd} //Monitorings AND not Admin
{$If defined(Monitorings) AND not defined(Admin)}
// Регистрация Tkw_Form_PostingsList
 Tkw_Form_PostingsList.Register('форма::PostingsList', TenPostingsList);
{$IfEnd} //Monitorings AND not Admin
{$If defined(Monitorings) AND not defined(Admin)}
// Регистрация Tkw_PostingsList_tvPostings_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TenPostingsList.tvPostings', Tkw_PostingsList_tvPostings_ControlInstance);
{$IfEnd} //Monitorings AND not Admin

end.