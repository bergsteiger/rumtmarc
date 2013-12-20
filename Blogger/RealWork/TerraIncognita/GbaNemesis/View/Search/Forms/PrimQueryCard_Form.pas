unit PrimQueryCard_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View$For F1 and Monitorings"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimQueryCard_Form.pas"
// Начат: 27.01.2009 10:40
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::PrimQueryCard
//
// Новая карточка запросов
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
  nsQueryInterfaces,
  evQueryCardEditor,
  OfficeLike_Usual_Controls
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  QueryCardInterfaces,
  SearchLite_Strange_Controls,
  Search_Strange_Controls,
  l3StringIDEx,
  PrimQueryCard_utqcAttributeSearch_UserType,
  PrimQueryCard_utqcPostingOrder_UserType,
  PrimQueryCard_utqcLegislationReview_UserType,
  PrimQueryCard_utqcSendConsultation_UserType,
  PrimQueryCard_utqcInpharmSearch_UserType
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
  SearchUnit,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a},
  vcmControllers {a},
  vcmBase {a}
  ;
{$IfEnd} //not Admin

{$If not defined(Admin)}
type
 TPrimQueryCardForm = {form} class(TvcmEntityForm)
  {* Новая карточка запросов }
 private
 // private fields
   f_IsFilter : Boolean;
   f_Editor : TevQueryCardEditor;
    {* Поле для свойства Editor}
   f_CanWriteMgrSettings : Boolean;
    {* Поле для свойства CanWriteMgrSettings}
 protected
  procedure SignalDataSourceChanged(const anOld : IvcmViewAreaController;
                                const aDsNew : IvcmViewAreaController); override;
  procedure InitEntities; override;
  procedure MakeControls; override;
 protected
 // property methods
   function pm_GetEditor: TevQueryCardEditor;
 protected
 // realized methods
   procedure File_PrintDialog_Test(const aParams: IvcmTestParamsPrim);
     {* Печать... }
   procedure File_PrintDialog_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Печать... }
   procedure File_PrintPreview_Test(const aParams: IvcmTestParamsPrim);
     {* Предварительный просмотр }
   procedure File_PrintPreview_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Предварительный просмотр }
   function SearchParameters_IsQueryEmpty_Execute: Boolean;
   procedure SearchParameters_IsQueryEmpty(const aParams: IvcmExecuteParams);
   function SearchParameters_GetQuery_Execute(aIgnoreError: Boolean = false): TnsQueryInfo;
   procedure SearchParameters_GetQuery(const aParams: IvcmExecuteParams);
   function SearchParameters_IsQuerySaved_Execute: Boolean;
   procedure SearchParameters_IsQuerySaved(const aParams: IvcmExecuteParams);
   procedure SearchParameters_SetQuery_Execute(const aQuery: IQuery);
   procedure SearchParameters_SetQuery(const aParams: IvcmExecuteParams);
   procedure SearchParameters_ClearQuery_Execute;
   procedure SearchParameters_ClearQuery(const aParams: IvcmExecuteParams);
   procedure SearchParameter_QueryNotSaved_Execute;
   procedure SearchParameter_QueryNotSaved(const aParams: IvcmExecuteParams);
   procedure SearchParameter_ClearMistakes_Execute;
   procedure SearchParameter_ClearMistakes(const aParams: IvcmExecuteParams);
   procedure SearchParameter_QuerySaved_Execute;
   procedure SearchParameter_QuerySaved(const aParams: IvcmExecuteParams);
   procedure CardOperation_ExpandCollapse_Test(const aParams: IvcmTestParamsPrim);
   procedure CardOperation_ExpandCollapse_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure CardOperation_DeleteAll_Test(const aParams: IvcmTestParamsPrim);
   procedure CardOperation_DeleteAll_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure CardOperation_CreateAttr_Test(const aParams: IvcmTestParamsPrim);
   procedure CardOperation_CreateAttr_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure CardOperation_OpenTreeSelection_Test(const aParams: IvcmTestParamsPrim);
   procedure CardOperation_OpenTreeSelection_Execute(const aParams: IvcmExecuteParamsPrim);
 protected
 // overridden protected methods
   procedure InitFields; override;
   {$If not defined(NoVCM)}
   procedure InitControls; override;
     {* Процедура инициализации контролов. Для перекрытия в потомках }
   {$IfEnd} //not NoVCM
   procedure ClearFields; override;
 protected
 // protected fields
   dsQuery : IdsQuery;
    {* Запрос}
   f_MgrSearch : IqaMgrSearch;
 protected
 // protected methods
    {$If defined(Monitorings) AND not defined(Admin)}
   function CheckQuery: Boolean;
     {* Проверяет запрос на корректность и в случае ошибки выводит сообщение }
    {$IfEnd} //Monitorings AND not Admin
    {$If defined(Monitorings) AND not defined(Admin)}
   function MakePreview: IafwDocumentPreview;
    {$IfEnd} //Monitorings AND not Admin
   procedure WriteMgrSettings;
   procedure SaveConsultationCreditnails; virtual; abstract;
   procedure HandleException(anException: EqaException); virtual; abstract;
   procedure LoadConsultationCreditnails; virtual; abstract;
 public
 // public methods
   class function MakeSingleChild(aIsFilter: Boolean;
     const aCont   : IvcmContainer;
     const anAgg   : IvcmAggregate;
     aZoneType     : TvcmZoneType = vcm_ztAny;
     aUserType     : TvcmEffectiveUserType = 0;
     aDataSource   : IvcmFormDataSource = nil): IvcmEntityForm; reintroduce;
 public
 // public properties
   property Editor: TevQueryCardEditor
     read pm_GetEditor;
   property CanWriteMgrSettings: Boolean
     read f_CanWriteMgrSettings
     write f_CanWriteMgrSettings;
     {* Можно ли писать состояние карточки в настройки
http://mdp.garant.ru/pages/viewpage.action?pageId=349114873&focusedCommentId=349116523#comment-349116523 }
 end;//TPrimQueryCardForm
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}
uses
  ActiveX,
  l3Memory,
  l3Interfaces,
  DataAdapter,
  nsDocumentPreview,
  evEvdDataObject,
  Printers
  {$If defined(Monitorings) AND not defined(Admin)}
  ,
  nsPostingsTreeSingle
  {$IfEnd} //Monitorings AND not Admin
  ,
  Classes,
  nsHAFPainter,
  nsFixedHAFMacroReplacer,
  nevBase,
  PrimeUnit,
  eeDocumentContainer,
  evTypes,
  ComObj,
  l3Types,
  nevTools,
  evParaTools,
  evSearch,
  IOUnit,
  l3String,
  afwFacade,
  evQueryCardInt,
  nsQueryUtils,
  nsTypes,
  DynamicTreeUnit,
  OfficeLike_ResultEx_Controls,
  OfficeLike_Result_Controls,
  evControlParaTools,
  evdTypes,
  vtF1InterfaceConst,
  evControlContainerEX
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  l3MessageID,
  SysUtils {a},
  StdRes {a},
  l3Base {a}
  ;
{$IfEnd} //not Admin

{$If not defined(Admin)}

var
   { Локализуемые строки utqcAttributeSearchLocalConstants }
  str_utqcAttributeSearchCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utqcAttributeSearchCaption'; rValue : 'Поиск по реквизитам');
   { Заголовок пользовательского типа "Поиск по реквизитам" }

var
   { Локализуемые строки utqcPostingOrderLocalConstants }
  str_utqcPostingOrderCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utqcPostingOrderCaption'; rValue : 'Создание индивидуальной ленты');
   { Заголовок пользовательского типа "Создание индивидуальной ленты" }

var
   { Локализуемые строки utqcLegislationReviewLocalConstants }
  str_utqcLegislationReviewCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utqcLegislationReviewCaption'; rValue : 'Обзор изменений законодательства');
   { Заголовок пользовательского типа "Обзор изменений законодательства" }

var
   { Локализуемые строки utqcSendConsultationLocalConstants }
  str_utqcSendConsultationCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utqcSendConsultationCaption'; rValue : 'Правовая поддержка онлайн');
   { Заголовок пользовательского типа "Правовая поддержка онлайн" }

var
   { Локализуемые строки utqcInpharmSearchLocalConstants }
  str_utqcInpharmSearchCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utqcInpharmSearchCaption'; rValue : 'Поиск лекарственного средства');
   { Заголовок пользовательского типа "Поиск лекарственного средства" }

type
  Tkw_PrimQueryCard_Control_Editor = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола Editor
----
*Пример использования*:
[code]
контрол::Editor TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimQueryCard_Control_Editor

// start class Tkw_PrimQueryCard_Control_Editor

{$If not defined(NoScripts)}
function Tkw_PrimQueryCard_Control_Editor.GetString: AnsiString;
 {-}
begin
 Result := 'Editor';
end;//Tkw_PrimQueryCard_Control_Editor.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimQueryCard_Control_Editor_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола Editor
----
*Пример использования*:
[code]
контрол::Editor:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimQueryCard_Control_Editor_Push

// start class Tkw_PrimQueryCard_Control_Editor_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimQueryCard_Control_Editor_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('Editor');
 inherited;
end;//Tkw_PrimQueryCard_Control_Editor_Push.DoDoIt
{$IfEnd} //not NoScripts

function TPrimQueryCardForm.pm_GetEditor: TevQueryCardEditor;
begin
 if (f_Editor = nil) then
  f_Editor := FindComponent('Editor') As TevQueryCardEditor;
 Result := f_Editor;
end;

{$If defined(Monitorings) AND not defined(Admin)}
function TPrimQueryCardForm.CheckQuery: Boolean;
//#UC START# *4C2E199E00BE_497EBA4301CA_var*
//#UC END# *4C2E199E00BE_497EBA4301CA_var*
begin
//#UC START# *4C2E199E00BE_497EBA4301CA_impl*
 if (f_MgrSearch = nil) then
  Result := False
 else
  try
   f_MgrSearch.Check;
   Result := True;
  except
   on E: EqaException do
   begin
    Result := False;
    with E.ErrorControl do
    begin
     with Req.Group do
      if not Expanded then
       Expanded := True;
     Req.SetFocus(E.ErrorControl, True);
    end;
    HandleException(E);
   end;//EqaException
  end//try..except
//#UC END# *4C2E199E00BE_497EBA4301CA_impl*
end;//TPrimQueryCardForm.CheckQuery
{$IfEnd} //Monitorings AND not Admin

{$If defined(Monitorings) AND not defined(Admin)}
function TPrimQueryCardForm.MakePreview: IafwDocumentPreview;
//#UC START# *4C2E19C50385_497EBA4301CA_var*

var
 l_PCD  : IPrimeContractData;
 l_Text : InevObject;

 procedure FillFields;

 var
  l_Para : InevPara;
  
  procedure FillField(const aMask : String; const aValue : IString);
  const
   cOpt = [ev_soGlobal, ev_soReplace, ev_soReplaceAll];
  begin//FillField
   evReplaceInPara(l_Para,
                   TevBMTextSearcher.Make(aMask, cOpt),
                   TevTextReplacer.Make(l3Str(nsCStr(aValue)), cOpt));
  end;//FillField

 var
  l_S : IString;
 begin//FillFields
  if not l_Text.QT(InevPara, l_Para) then
   Assert(false);
  l_PCD.GetArea(l_S);
  FillField('%AREA%', l_S);
  l_PCD.GetClientName(l_S);
  FillField('%USER%', l_S);
  l_PCD.GetEmail(l_S);
  FillField('%EMAIL%', l_S);
  l_PCD.GetInfoKind(l_S);
  FillField('%INFO_KIND%', l_S);
  l_PCD.GetOrganisationType(l_S);
  FillField('%ORGANISATION_TYPE%', l_S);
  l_PCD.GetProfession(l_S);
  FillField('%PROFESSION%', l_S);
  l_PCD.GetTaxes(l_S);
  FillField('%TAXES%', l_S);
  l_PCD.GetThemesName(l_S);
  FillField('%NAME%', l_S);
 end;//FillFields

var
 l_AdStream  : IStream;
 l_Name      : Il3CString;
 l_Cont      : TeeDocumentContainer;
 l_Res       : Int64;
//#UC END# *4C2E19C50385_497EBA4301CA_var*
begin
//#UC START# *4C2E19C50385_497EBA4301CA_impl*
 try
  f_MgrSearch.Save;
 except
  on E: EqaException do
  begin
   HandleException(E);
   Assert(False, 'Некорректные параметры запроса!');
  end;//EqaException
 end;//try..except
 l_PCD := DefDataAdapter.NativeAdapter.GetContractDataPrimeContractData(f_MgrSearch.Query);
 l_PCD.GetContractEvdForm(l_AdStream);
 OleCheck(l_AdStream.Seek(0, STREAM_SEEK_SET, l_Res));
 l_Cont := TeeDocumentContainer.Create;
 try
  InevTagWriter(l_Cont).WriteTag(nil, cf_EverestBin, l_AdStream, nil);
  l_Name := vcmFmt(str_PrivateNewLinePrintTitle, [f_MgrSearch.GetName4Query]);
  l_Text := InevObjectHolder(l_Cont).Obj;
  FillFields;
  Result := TnsDocumentPreview.Make(
              l_Text,
              evDefaultPreviewCacheKey,
              TnsHAFPainter.Make(TnsFixedHAFMacroReplacer.Make(nil, l_Name, l_Name)));
 finally
  FreeAndNil(l_Cont);
 end;//try..finally
//#UC END# *4C2E19C50385_497EBA4301CA_impl*
end;//TPrimQueryCardForm.MakePreview
{$IfEnd} //Monitorings AND not Admin

class function TPrimQueryCardForm.MakeSingleChild(aIsFilter: Boolean;
  const aCont   : IvcmContainer;
  const anAgg   : IvcmAggregate;
  aZoneType     : TvcmZoneType = vcm_ztAny;
  aUserType     : TvcmEffectiveUserType = 0;
  aDataSource   : IvcmFormDataSource = nil): IvcmEntityForm;

 procedure AfterCreate(aForm : TPrimQueryCardForm);
 begin
  with aForm do
  begin
//#UC START# *4CC015B701A1_497EBA4301CA_impl*
   f_IsFilter := aIsFilter;
//#UC END# *4CC015B701A1_497EBA4301CA_impl*
  end;//with aForm
 end;

var
 l_AC : TvcmInitProc;
 l_ACHack : Pointer absolute l_AC;
begin
 l_AC := l3LocalStub(@AfterCreate);
 try
  Result := inherited MakeSingleChild(aCont, vcmSetAggregate(anAgg, vcmMakeParams), aZoneType, aUserType, nil, aDataSource, vcm_utAny, l_AC);
 finally
  l3FreeLocalStub(l_ACHack);
 end;//try..finally
end;

procedure TPrimQueryCardForm.WriteMgrSettings;
//#UC START# *4F69A6310375_497EBA4301CA_var*
//#UC END# *4F69A6310375_497EBA4301CA_var*
begin
//#UC START# *4F69A6310375_497EBA4301CA_impl*
 if f_CanWriteMgrSettings then
  if Assigned(f_MgrSearch) then
   f_MgrSearch.WriteSettings;
//#UC END# *4F69A6310375_497EBA4301CA_impl*
end;//TPrimQueryCardForm.WriteMgrSettings

procedure TPrimQueryCardForm.File_PrintDialog_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *495220DE0298_497EBA4301CAtest_var*
//#UC END# *495220DE0298_497EBA4301CAtest_var*
begin
//#UC START# *495220DE0298_497EBA4301CAtest_impl*
 File_PrintPreview_Test(aParams);
 {$IFDEF Monitorings}
 if aParams.Op.Flag[vcm_ofEnabled] then
  if (afw.Application = nil) OR (afw.Application.PrintManager = nil) OR
     not afw.Application.PrintManager.CanPrint then
   aParams.Op.Flag[vcm_ofEnabled] := false;
 {$ENDIF Monitorings}
//#UC END# *495220DE0298_497EBA4301CAtest_impl*
end;//TPrimQueryCardForm.File_PrintDialog_Test

procedure TPrimQueryCardForm.File_PrintDialog_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *495220DE0298_497EBA4301CAexec_var*
//#UC END# *495220DE0298_497EBA4301CAexec_var*
begin
//#UC START# *495220DE0298_497EBA4301CAexec_impl*
 {$IFDEF Monitorings}
 if CheckQuery then
  if (afw.Application <> nil) and (afw.Application.PrintManager <> nil) then
   afw.Application.PrintManager.PrintDialog(MakePreview);
 {$ENDIF Monitorings}
//#UC END# *495220DE0298_497EBA4301CAexec_impl*
end;//TPrimQueryCardForm.File_PrintDialog_Execute

procedure TPrimQueryCardForm.File_PrintPreview_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *495220F2033A_497EBA4301CAtest_var*
//#UC END# *495220F2033A_497EBA4301CAtest_var*
begin
//#UC START# *495220F2033A_497EBA4301CAtest_impl*
 {$IFDEF Monitorings}
 if aParams.Op.Flag[vcm_ofEnabled] then
  aParams.Op.Flag[vcm_ofEnabled] := (UserType = utqcPostingOrder) and
   (Printer.Printers.Count > 0);
 {$ELSE Monitorings}
 aParams.Op.Flag[vcm_ofEnabled] := False;
 {$ENDIF Monitorings}
//#UC END# *495220F2033A_497EBA4301CAtest_impl*
end;//TPrimQueryCardForm.File_PrintPreview_Test

procedure TPrimQueryCardForm.File_PrintPreview_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *495220F2033A_497EBA4301CAexec_var*
//#UC END# *495220F2033A_497EBA4301CAexec_var*
begin
//#UC START# *495220F2033A_497EBA4301CAexec_impl*
 {$IFDEF Monitorings}
 if CheckQuery then
  if (afw.Application <> nil) AND (afw.Application.PrintManager <> nil) then
  begin
   TnsPostingsTreeSingle.Instance.OldModifed := f_MgrSearch.Modified;
   afw.Application.PrintManager.ShowPreview(MakePreview);
  end;
 {$ENDIF Monitorings}
//#UC END# *495220F2033A_497EBA4301CAexec_impl*
end;//TPrimQueryCardForm.File_PrintPreview_Execute

function TPrimQueryCardForm.SearchParameters_IsQueryEmpty_Execute: Boolean;
//#UC START# *4AE879D00143_497EBA4301CAexec_var*
//#UC END# *4AE879D00143_497EBA4301CAexec_var*
begin
//#UC START# *4AE879D00143_497EBA4301CAexec_impl*
 Result := not f_MgrSearch.IsSomeFieldFilled(True);
//#UC END# *4AE879D00143_497EBA4301CAexec_impl*
end;//TPrimQueryCardForm.SearchParameters_IsQueryEmpty_Execute

procedure TPrimQueryCardForm.SearchParameters_IsQueryEmpty(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As ISearchParameters_IsQueryEmpty_Params) do
  ResultValue := SearchParameters_IsQueryEmpty_Execute;
end;

function TPrimQueryCardForm.SearchParameters_GetQuery_Execute(aIgnoreError: Boolean = false): TnsQueryInfo;
//#UC START# *4AE884E803AA_497EBA4301CAexec_var*
//#UC END# *4AE884E803AA_497EBA4301CAexec_var*
begin
//#UC START# *4AE884E803AA_497EBA4301CAexec_impl*
 l3FillChar(Result, SizeOf(Result));
 try
  Result.rIsQueryForFilter := f_IsFilter;
  f_MgrSearch.Save(aIgnoreError);
  if (f_MgrSearch.QueryCard.CardType = ev_qtConsultations) then
  begin
   SaveConsultationCreditnails;
   if (dsQuery <> nil) then
    dsQuery.IsQuerySaved := True;
   f_MgrSearch.Modified := False;
  end;//f_MgrSearch.QueryCard.CardType = ev_qtConsultations
 except
  on E: EqaException do
  begin
   HandleException(E);
   Result.rHasErrors := true;
  end;//on E: EqaException
 end;//try..except

 if not Result.rHasErrors then
 begin
  Result.rQuery := f_MgrSearch.Query;
  afw.ProcessMessages;
 end;//not Result.rHasErrors
 
 Result.rAskFilters := true;
//#UC END# *4AE884E803AA_497EBA4301CAexec_impl*
end;//TPrimQueryCardForm.SearchParameters_GetQuery_Execute

procedure TPrimQueryCardForm.SearchParameters_GetQuery(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As ISearchParameters_GetQuery_Params) do
  ResultValue := SearchParameters_GetQuery_Execute(IgnoreError);
end;

function TPrimQueryCardForm.SearchParameters_IsQuerySaved_Execute: Boolean;
//#UC START# *4AE8A577027D_497EBA4301CAexec_var*
//#UC END# *4AE8A577027D_497EBA4301CAexec_var*
begin
//#UC START# *4AE8A577027D_497EBA4301CAexec_impl*
 if Assigned(f_MgrSearch) then
  Result := nsIsQuerySaved(f_MgrSearch.Query)
 else
  Result := false; 
//#UC END# *4AE8A577027D_497EBA4301CAexec_impl*
end;//TPrimQueryCardForm.SearchParameters_IsQuerySaved_Execute

procedure TPrimQueryCardForm.SearchParameters_IsQuerySaved(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As ISearchParameters_IsQuerySaved_Params) do
  ResultValue := SearchParameters_IsQuerySaved_Execute;
end;

procedure TPrimQueryCardForm.SearchParameters_SetQuery_Execute(const aQuery: IQuery);
//#UC START# *4AEF213001F0_497EBA4301CAexec_var*
//#UC END# *4AEF213001F0_497EBA4301CAexec_var*
begin
//#UC START# *4AEF213001F0_497EBA4301CAexec_impl*
 Editor.TextSource.Lock(Self);
 try
  if (aQuery <> nil) then
  begin
   f_MgrSearch.Query := aQuery;
   {$IFDEF Monitorings}
   f_MgrSearch.Modified := False;
   CCaption := vcmCStr(str_ChangePrivateNewsLine);
   {$ENDIF Monitorings}
  end//aQuery <> nil
  else
  begin
   {$IFDEF Monitorings}
   f_MgrSearch.Modified := False;
   CCaption := vcmCStr(str_CreatePrivateNewsLine);
   {$ENDIF Monitorings}
  end;//aQuery <> nil
 finally
  Editor.TextSource.UnLock(Self); 
 end;//try..finally 
//#UC END# *4AEF213001F0_497EBA4301CAexec_impl*
end;//TPrimQueryCardForm.SearchParameters_SetQuery_Execute

procedure TPrimQueryCardForm.SearchParameters_SetQuery(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As ISearchParameters_SetQuery_Params) do
  SearchParameters_SetQuery_Execute(Query);
end;

procedure TPrimQueryCardForm.SearchParameters_ClearQuery_Execute;
//#UC START# *4AF92B09017F_497EBA4301CAexec_var*
//#UC END# *4AF92B09017F_497EBA4301CAexec_var*
begin
//#UC START# *4AF92B09017F_497EBA4301CAexec_impl*
 Editor.TextSource.Lock(Self);
 try
  if Assigned(f_MgrSearch) then
  begin
   f_MgrSearch.Clear;
   // Заплатка - "контролы модели" деражет ссылку на Para, которому при очистке
   // текста пытаются сказать InvalidateShape. Но он похоже отвязан от View
   // И мапы во вью не перестраиваются => появляется мусор.
   // 1. "контролы модели" НЕ ДОЛЖНЫ ДЕРЖАТь PARA. А сами должны быть PARA
   // 2. Манипулировать с текстом должен курсор и никакой прямой записи в k2_tiText!
   Editor.View.ClearShapes;
   if (f_MgrSearch.QueryCard.CardType = ev_qtConsultations) then
   begin
    LoadConsultationCreditnails;
    f_MgrSearch.Modified := False;
   end//f_MgrSearch.QueryCard.CardType = ev_qtConsultations
  end;//Assigned(f_MgrSearch)
  Editor.Invalidate;
 finally
  Editor.TextSource.UnLock(Self);
 end;//try..finally
//#UC END# *4AF92B09017F_497EBA4301CAexec_impl*
end;//TPrimQueryCardForm.SearchParameters_ClearQuery_Execute

procedure TPrimQueryCardForm.SearchParameters_ClearQuery(const aParams: IvcmExecuteParams);
begin
 SearchParameters_ClearQuery_Execute;
end;

procedure TPrimQueryCardForm.SearchParameter_QueryNotSaved_Execute;
//#UC START# *4AF9370C012B_497EBA4301CAexec_var*
//#UC END# *4AF9370C012B_497EBA4301CAexec_var*
begin
//#UC START# *4AF9370C012B_497EBA4301CAexec_impl*
 f_MgrSearch.Modified := True;
//#UC END# *4AF9370C012B_497EBA4301CAexec_impl*
end;//TPrimQueryCardForm.SearchParameter_QueryNotSaved_Execute

procedure TPrimQueryCardForm.SearchParameter_QueryNotSaved(const aParams: IvcmExecuteParams);
begin
 SearchParameter_QueryNotSaved_Execute;
end;

procedure TPrimQueryCardForm.SearchParameter_ClearMistakes_Execute;
//#UC START# *4AF9373C02B6_497EBA4301CAexec_var*
//#UC END# *4AF9373C02B6_497EBA4301CAexec_var*
begin
//#UC START# *4AF9373C02B6_497EBA4301CAexec_impl*
 f_MgrSearch.ClearContextMistakes;
//#UC END# *4AF9373C02B6_497EBA4301CAexec_impl*
end;//TPrimQueryCardForm.SearchParameter_ClearMistakes_Execute

procedure TPrimQueryCardForm.SearchParameter_ClearMistakes(const aParams: IvcmExecuteParams);
begin
 SearchParameter_ClearMistakes_Execute;
end;

procedure TPrimQueryCardForm.SearchParameter_QuerySaved_Execute;
//#UC START# *4AF9393802B0_497EBA4301CAexec_var*
//#UC END# *4AF9393802B0_497EBA4301CAexec_var*
begin
//#UC START# *4AF9393802B0_497EBA4301CAexec_impl*
 {$IFDEF Monitorings}
 CCaption := vcmCStr(str_ChangePrivateNewsLine);
 {$ENDIF Monitorings}
//#UC END# *4AF9393802B0_497EBA4301CAexec_impl*
end;//TPrimQueryCardForm.SearchParameter_QuerySaved_Execute

procedure TPrimQueryCardForm.SearchParameter_QuerySaved(const aParams: IvcmExecuteParams);
begin
 SearchParameter_QuerySaved_Execute;
end;

procedure TPrimQueryCardForm.CardOperation_ExpandCollapse_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C2E116E0315_497EBA4301CAtest_var*
var
 l_Control : IevCustomEditorControl;
//#UC END# *4C2E116E0315_497EBA4301CAtest_var*
begin
//#UC START# *4C2E116E0315_497EBA4301CAtest_impl*
 aParams.Op.Flag[vcm_ofEnabled] := False;
 if f_MgrSearch <> nil then
 begin
  l_Control := evGetCustomControl(Editor.Selection.Cursor.MostInner.Obj^);
  if (l_Control <> nil) then
   aParams.Op.Flag[vcm_ofEnabled] := l_Control.ControlType = ev_ctCollapsedPanel;
 end;
//#UC END# *4C2E116E0315_497EBA4301CAtest_impl*
end;//TPrimQueryCardForm.CardOperation_ExpandCollapse_Test

procedure TPrimQueryCardForm.CardOperation_ExpandCollapse_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C2E116E0315_497EBA4301CAexec_var*
var
 l_Group   : IevQueryGroup; 
 l_Control : IevCustomEditorControl;
//#UC END# *4C2E116E0315_497EBA4301CAexec_var*
begin
//#UC START# *4C2E116E0315_497EBA4301CAexec_impl*
 if f_MgrSearch <> nil then
 begin
  l_Control := evGetCustomControl(Editor.Selection.Cursor.MostInner.Obj^);
  if (l_Control <> nil) then   
   if Supports(l_Control, IevQueryGroup, l_Group) then
    if l_Group.CanCollapsed then
     l_Group.Expanded := not l_Group.Expanded;
 end;
//#UC END# *4C2E116E0315_497EBA4301CAexec_impl*
end;//TPrimQueryCardForm.CardOperation_ExpandCollapse_Execute

procedure TPrimQueryCardForm.CardOperation_DeleteAll_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C2E117F022C_497EBA4301CAtest_var*
var
 l_Req: IqaReq; 
//#UC END# *4C2E117F022C_497EBA4301CAtest_var*
begin
//#UC START# *4C2E117F022C_497EBA4301CAtest_impl*
 aParams.Op.Flag[vcm_ofEnabled] := False;
 if f_MgrSearch <> nil then
 begin
  l_Req := f_MgrSearch.GetCurrentReq;
  if l_Req <> nil then
   aParams.Op.Flag[vcm_ofEnabled] := l_Req.Multy and l_Req.IsSet;
 end;//if f_MgrSearch <> nil then
//#UC END# *4C2E117F022C_497EBA4301CAtest_impl*
end;//TPrimQueryCardForm.CardOperation_DeleteAll_Test

procedure TPrimQueryCardForm.CardOperation_DeleteAll_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C2E117F022C_497EBA4301CAexec_var*
//#UC END# *4C2E117F022C_497EBA4301CAexec_var*
begin
//#UC START# *4C2E117F022C_497EBA4301CAexec_impl*
 Editor.TextSource.Lock(Self);
 try
  if Assigned(f_MgrSearch) then
   f_MgrSearch.DeleteAll;
 finally
  Editor.TextSource.UnLock(Self);
 end; 
//#UC END# *4C2E117F022C_497EBA4301CAexec_impl*
end;//TPrimQueryCardForm.CardOperation_DeleteAll_Execute

procedure TPrimQueryCardForm.CardOperation_CreateAttr_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C2E118B010B_497EBA4301CAtest_var*
var
 l_Req : IqaReq;
 l_BTN : IevEditorControlButton;
//#UC END# *4C2E118B010B_497EBA4301CAtest_var*
begin
//#UC START# *4C2E118B010B_497EBA4301CAtest_impl*
 aParams.Op.Flag[vcm_ofEnabled] := False;
 if Assigned(f_MgrSearch) then
 begin
  l_Req := f_MgrSearch.GetCurrentReq;
  if (l_Req <> nil) and l_Req.Multy then
  begin
   l_BTN := f_MgrSearch.GetCurrentField.FindButton(ev_btLogical);
   aParams.Op.Flag[vcm_ofEnabled] := Assigned(l_BTN) and l_BTN.Visible;
  end;//if (l_Req <> nil) and l_Req.Multy then
 end;//if Assigned(f_MgrSearch) then
//#UC END# *4C2E118B010B_497EBA4301CAtest_impl*
end;//TPrimQueryCardForm.CardOperation_CreateAttr_Test

procedure TPrimQueryCardForm.CardOperation_CreateAttr_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C2E118B010B_497EBA4301CAexec_var*
//#UC END# *4C2E118B010B_497EBA4301CAexec_var*
begin
//#UC START# *4C2E118B010B_497EBA4301CAexec_impl*
 if Assigned(f_MgrSearch) then
  f_MgrSearch.AddValue(Editor.View);
//#UC END# *4C2E118B010B_497EBA4301CAexec_impl*
end;//TPrimQueryCardForm.CardOperation_CreateAttr_Execute

procedure TPrimQueryCardForm.CardOperation_OpenTreeSelection_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C2E11960124_497EBA4301CAtest_var*
var
 l_Req : IqaReq; 
//#UC END# *4C2E11960124_497EBA4301CAtest_var*
begin
//#UC START# *4C2E11960124_497EBA4301CAtest_impl*
 aParams.Op.Flag[vcm_ofEnabled] := False;
 if Assigned(f_MgrSearch) then
 begin
  l_Req := f_MgrSearch.GetCurrentReq; 
  if l_Req <> nil then 
   aParams.Op.Flag[vcm_ofEnabled] := l_Req.Multy and l_Req.CanOpenTree;
 end;//if Assigned(f_MgrSearch) then
//#UC END# *4C2E11960124_497EBA4301CAtest_impl*
end;//TPrimQueryCardForm.CardOperation_OpenTreeSelection_Test

procedure TPrimQueryCardForm.CardOperation_OpenTreeSelection_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C2E11960124_497EBA4301CAexec_var*
//#UC END# *4C2E11960124_497EBA4301CAexec_var*
begin
//#UC START# *4C2E11960124_497EBA4301CAexec_impl*
 if Assigned(f_MgrSearch) then
  f_MgrSearch.OpenSelectWindow;
//#UC END# *4C2E11960124_497EBA4301CAexec_impl*
end;//TPrimQueryCardForm.CardOperation_OpenTreeSelection_Execute

procedure TPrimQueryCardForm.InitFields;
//#UC START# *47A042E100E2_497EBA4301CA_var*
//#UC END# *47A042E100E2_497EBA4301CA_var*
begin
//#UC START# *47A042E100E2_497EBA4301CA_impl*
 inherited;
 f_CanWriteMgrSettings := true;
//#UC END# *47A042E100E2_497EBA4301CA_impl*
end;//TPrimQueryCardForm.InitFields

{$If not defined(NoVCM)}
procedure TPrimQueryCardForm.InitControls;
//#UC START# *4A8E8F2E0195_497EBA4301CA_var*
//#UC END# *4A8E8F2E0195_497EBA4301CA_var*
begin
//#UC START# *4A8E8F2E0195_497EBA4301CA_impl*
 inherited;
 Editor.Color := cGarant2011BackColor;
//#UC END# *4A8E8F2E0195_497EBA4301CA_impl*
end;//TPrimQueryCardForm.InitControls
{$IfEnd} //not NoVCM

procedure TPrimQueryCardForm.ClearFields;
 {-}
begin
 f_MgrSearch := nil;
 inherited;
end;//TPrimQueryCardForm.ClearFields

procedure TPrimQueryCardForm.SignalDataSourceChanged(const anOld : IvcmViewAreaController;
 const aDsNew : IvcmViewAreaController);
begin
 inherited;
 if (aDsNew = nil) then
 begin
  dsQuery := nil;
 end//aDsNew = nil
 else
 begin
  Supports(aDsNew, IdsQuery, dsQuery);
 end;//aDsNew = nil
end;

procedure TPrimQueryCardForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_File, nil);
  PublishFormEntity(en_SearchParameters, nil);
  PublishFormEntity(en_SearchParameter, nil);
  PublishFormEntity(en_CardOperation, nil);
  PublishOp(en_File, op_PrintDialog, File_PrintDialog_Execute, File_PrintDialog_Test, nil);
  PublishOp(en_File, op_PrintPreview, File_PrintPreview_Execute, File_PrintPreview_Test, nil);
  PublishOpWithResult(en_SearchParameters, op_IsQueryEmpty, SearchParameters_IsQueryEmpty, nil, nil);
  PublishOpWithResult(en_SearchParameters, op_GetQuery, SearchParameters_GetQuery, nil, nil);
  PublishOpWithResult(en_SearchParameters, op_IsQuerySaved, SearchParameters_IsQuerySaved, nil, nil);
  PublishOpWithResult(en_SearchParameters, op_SetQuery, SearchParameters_SetQuery, nil, nil);
  PublishOpWithResult(en_SearchParameters, op_ClearQuery, SearchParameters_ClearQuery, nil, nil);
  PublishOpWithResult(en_SearchParameter, op_QueryNotSaved, SearchParameter_QueryNotSaved, nil, nil);
  PublishOpWithResult(en_SearchParameter, op_ClearMistakes, SearchParameter_ClearMistakes, nil, nil);
  PublishOpWithResult(en_SearchParameter, op_QuerySaved, SearchParameter_QuerySaved, nil, nil);
  PublishOp(en_CardOperation, op_ExpandCollapse, CardOperation_ExpandCollapse_Execute, CardOperation_ExpandCollapse_Test, nil);
  PublishOp(en_CardOperation, op_DeleteAll, CardOperation_DeleteAll_Execute, CardOperation_DeleteAll_Test, nil);
  PublishOp(en_CardOperation, op_CreateAttr, CardOperation_CreateAttr_Execute, CardOperation_CreateAttr_Test, nil);
  PublishOp(en_CardOperation, op_OpenTreeSelection, CardOperation_OpenTreeSelection_Execute, CardOperation_OpenTreeSelection_Test, nil);
 end;//with Entities.Entities
 AddUserTypeExclude(utqcSendConsultationName, en_CardOperation, op_ExpandCollapse, false);
 AddUserTypeExclude(utqcSendConsultationName, en_CardOperation, op_DeleteAll, false);
 AddUserTypeExclude(utqcSendConsultationName, en_CardOperation, op_CreateAttr, false);
 AddUserTypeExclude(utqcSendConsultationName, en_CardOperation, op_OpenTreeSelection, false);
 AddUserTypeExclude(utqcAttributeSearchName, en_File, op_PrintDialog, false);
 AddUserTypeExclude(utqcAttributeSearchName, en_File, op_PrintPreview, false);
 AddUserTypeExclude(utqcLegislationReviewName, en_File, op_PrintDialog, false);
 AddUserTypeExclude(utqcLegislationReviewName, en_File, op_PrintPreview, false);
 AddUserTypeExclude(utqcSendConsultationName, en_File, op_PrintDialog, false);
 AddUserTypeExclude(utqcSendConsultationName, en_File, op_PrintPreview, false);
 AddUserTypeExclude(utqcInpharmSearchName, en_File, op_PrintDialog, false);
 AddUserTypeExclude(utqcInpharmSearchName, en_File, op_PrintPreview, false);
end;

procedure TPrimQueryCardForm.MakeControls;
begin
 inherited;
 with AddUsertype(utqcAttributeSearchName,
  str_utqcAttributeSearchCaption,
  str_utqcAttributeSearchCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(utqcAttributeSearchName
 with AddUsertype(utqcPostingOrderName,
  str_utqcPostingOrderCaption,
  str_utqcPostingOrderCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(utqcPostingOrderName
 with AddUsertype(utqcLegislationReviewName,
  str_utqcLegislationReviewCaption,
  str_utqcLegislationReviewCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(utqcLegislationReviewName
 with AddUsertype(utqcSendConsultationName,
  str_utqcSendConsultationCaption,
  str_utqcSendConsultationCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(utqcSendConsultationName
 with AddUsertype(utqcInpharmSearchName,
  str_utqcInpharmSearchCaption,
  str_utqcInpharmSearchCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(utqcInpharmSearchName
end;

{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// Регистрация Tkw_PrimQueryCard_Control_Editor
 Tkw_PrimQueryCard_Control_Editor.Register('контрол::Editor', TevQueryCardEditor);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Регистрация Tkw_PrimQueryCard_Control_Editor_Push
 Tkw_PrimQueryCard_Control_Editor_Push.Register('контрол::Editor:push');
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Инициализация str_utqcAttributeSearchCaption
 str_utqcAttributeSearchCaption.Init;
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Инициализация str_utqcPostingOrderCaption
 str_utqcPostingOrderCaption.Init;
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Инициализация str_utqcLegislationReviewCaption
 str_utqcLegislationReviewCaption.Init;
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Инициализация str_utqcSendConsultationCaption
 str_utqcSendConsultationCaption.Init;
{$IfEnd} //not Admin
{$If not defined(Admin)}
// Инициализация str_utqcInpharmSearchCaption
 str_utqcInpharmSearchCaption.Init;
{$IfEnd} //not Admin

end.