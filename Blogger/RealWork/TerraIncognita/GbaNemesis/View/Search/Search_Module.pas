unit Search_Module;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Search_Module.pas"
// �����: 08.09.2009 15:35
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFormsPack::Class>> F1 �������� ����������::Search::View::Search::Search
//
// �����
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  DynamicDocListUnit,
  SearchUnit,
  l3Interfaces
  {$If not defined(NoVCM)}
  ,
  vcmExternalInterfaces
  {$IfEnd} //not NoVCM
  ,
  nsQueryInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmFormSetFactory
  {$IfEnd} //not NoVCM
  ,
  bsTypes,
  SimpleListInterfaces,
  PrimTreeAttributeFirstLevel_Form
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  QueryCardInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmModule
  {$IfEnd} //not NoVCM
  ,
  DefineSearchDate_Form,
  PrimDefineSearchDate_Form,
  PrimPrimListInterfaces,
  l3StringIDEx,
  PrimSaveLoadUserTypes_slqtKW_UserType,
  PrimSaveLoadUserTypes_slqtFilters_UserType,
  PrimAttributeSelect_utSingleSearch_UserType,
  PrimTreeAttributeSelect_astNone_UserType,
  PrimTreeAttributeFirstLevel_flSituation_UserType,
  FiltersUserTypes_utFilters_UserType,
  Common_FormDefinitions_Controls,
  Search_FormDefinitions_Controls,
  PrimOldSituationSearchOptions_Form,
  PrimSelectedAttributes_utSelectedAttributes_UserType,
  SearchLite_FormDefinitions_Controls
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoVCM)}
  ,
  vcmFormSetFormsCollectionItemPrim
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  fsSituationSearch,
  fsSituationFilter,
  TreeAttributeFirstLevel_Form,
  OldSituationSearch_Form,
  vcmBase {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TSearchModule = {formspack} class(TvcmModule)
  {* ����� }
 private
 // private fields
   f_SearchTypeList : IvcmItems;
 protected
  procedure Loaded; override;
  class procedure GetEntityForms(aList : TvcmClassList); override;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* ������� ������� ����� �������. }
 protected
 // protected methods
   class function DefineFilterForm(const aQuery: IQuery): TnsFilterForm;
     {* ���������� ��� ����� ������� }
   class procedure ShowList(aType: TnsSearchListType);
   class function CreateSearchContainer(const anAggregate: IvcmAggregate;
     const aContainer: IvcmContainer;
     aSearchType: TvcmUserType;
     aSearchInList: Boolean;
     const aList: IdeList;
     aZoneType: TvcmZoneType): IvcmEntityForm;
   class procedure OpenInpharm(anIndex: Integer;
     aZoneType: TvcmZoneType;
     aUserType: TvcmUserType;
     const aQuery: IQuery;
     const aList: IDynList);
   class procedure OpenPublishSource(anIndex: Integer;
     aZoneType: TvcmZoneType;
     aUserType: TvcmUserType;
     const aQuery: IQuery;
     const aList: IDynList;
     const aPublishSearchTag: Il3CString);
     {* ��������� �������� ������ �� ��������� ������������� }
   procedure opPublishSourceSearchTest(const aParams: IvcmTestParamsPrim);
   procedure opPublishSourceSearch(const aParams: IvcmExecuteParamsPrim);
   class procedure FillAllBaseListParams(const aParams: IvcmTestParamsPrim);
   procedure opInpharmSearchTest(const aParams: IvcmTestParamsPrim);
     {* ����� �������������� �������� }
   procedure opInpharmSearch(const aParams: IvcmExecuteParamsPrim);
     {* ����� �������������� �������� }
   procedure opStartENOTest(const aParams: IvcmTestParamsPrim);
   procedure opStartENO(const aParams: IvcmExecuteParamsPrim);
   procedure opDocumentsWithoutClassTest(const aParams: IvcmTestParamsPrim);
   procedure opDocumentsWithoutClass(const aParams: IvcmExecuteParamsPrim);
   procedure opDocumentsWithoutIncludedTest(const aParams: IvcmTestParamsPrim);
   procedure opDocumentsWithoutIncluded(const aParams: IvcmExecuteParamsPrim);
   procedure opDocumentsWithoutKeyTest(const aParams: IvcmTestParamsPrim);
   procedure opDocumentsWithoutKey(const aParams: IvcmExecuteParamsPrim);
   procedure opBaseSearch(const aParams: IvcmExecuteParamsPrim);
   procedure opOpenConsultTest(const aParams: IvcmTestParamsPrim);
   procedure opOpenConsult(const aParams: IvcmExecuteParamsPrim);
   procedure opAllSearchTest(const aParams: IvcmTestParamsPrim);
     {* ����� }
   procedure opAllSearch(const aParams: IvcmExecuteParamsPrim);
     {* ����� }
   class procedure OpenSituation(aFormSetId: RvcmFormSetFactory;
     const aQuery: IQuery);
     {* ������� ��� 6.� }
   class procedure OpenOldSituation(aZoneType: TvcmZoneType;
     aUserType: TvcmUserType;
     const aQuery: IQuery);
     {* ������� ��� 5.� }
   procedure opOpenKeyWordSearchTest(const aParams: IvcmTestParamsPrim);
     {* ����� �� �������� }
   procedure opOpenKeyWordSearch(const aParams: IvcmExecuteParamsPrim);
     {* ����� �� �������� }
   class procedure OpenAttribute(anIndex: Integer;
     aZoneType: TvcmZoneType;
     aUserType: TvcmUserType;
     const aQuery: IQuery;
     const aList: IDynList);
     {* ������� ��� }
   procedure opAttributeSearchTest(const aParams: IvcmTestParamsPrim);
     {* ����� �� ���������� }
   procedure opAttributeSearch(const aParams: IvcmExecuteParamsPrim);
     {* ����� �� ���������� }
 public
 // public methods
   class function OpenLegislationReview(const aQuery: IQuery): IvcmEntityForm;
     {* ������� ����� ��������� ���������������� }
   class function OpenFiltersForm(const aData: IdeFilter): IvcmEntityForm;
     {* ��������� ����� �������� }
   class procedure MakeNewFilter(aListType: TbsListType);
     {* �������� ����� �������� ������ ������� }
   class procedure InpharmSearch(const aQuery: IQuery;
     const aList: IDynList);
   class procedure PublishSourceSearch(const aQuery: IQuery;
     const aList: IDynList);
   class function DateQuery(const aCaller: IvcmEntityForm;
     const aData: IqaDateReqDataHolder): IvcmEntityForm;
   class procedure OpenKeyWord(const aQuery: IQuery);
     {* ������� ��� }
   class procedure EditFilter(const aFilter: IdeFilter;
     anItemIndex: Integer);
     {* �������������� ������ }
   class procedure AttributeSearch(const aQuery: IQuery;
     const aList: IDynList);
   class procedure OpenTaxesPublishSearch(const aPublishSearchTag: Il3CString);
     {* ��� �� ������� � �������� }
   class procedure OpenSituationCard(const aQuery: IQuery);
     {* ������� ��� 6.� }
   class procedure OpenOldSituationCard(const aQuery: IQuery);
     {* ������� ��� 5.� }
 end;//TSearchModule
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  nsConst,
  l3String,
  afwFacade,
  DataAdapter,
  deListSet,
  l3Base {a},
  l3MessageID,
  SysUtils {a},
  Base_Operations_Strange_Controls,
  Base_Operations_Editions_Controls,
  nsManagers,
  deList,
  nsTypes,
  deDocumentList,
  nsENOIntegration
  {$If not defined(NoVCM)}
  ,
  vcmItems
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  deSearch,
  sdsSituation,
  DynamicTreeUnit,
  PrimSaveLoadUserTypes_slqtAttribute_UserType,
  PrimSaveLoadUserTypes_slqtOldKW_UserType,
  PrimSaveLoadUserTypes_slqtPublishSource_UserType,
  PrimSaveLoadUserTypes_slqtLegislationReview_UserType,
  PrimSaveLoadUserTypes_slqtPostingOrder_UserType,
  PrimSaveLoadUserTypes_slqtConsult_UserType,
  PrimSaveLoadUserTypes_slqtInpharmSearch_UserType,
  PrimQueryCard_utqcAttributeSearch_UserType,
  PrimQueryCard_utqcLegislationReview_UserType,
  PrimQueryCard_utqcInpharmSearch_UserType,
  PrimAttributeSelect_utAttributeSelect_UserType,
  PrimTreeAttributeSelect_astOneLevel_UserType,
  PrimTreeAttributeSelect_astFirstLevel_UserType,
  PrimTreeAttributeSelect_astTaxesPublishSearch_UserType,
  bsUtils,
  SearchLite_Strange_Controls,
  Search_Strange_Controls,
  BaseSearchInterfaces,
  kw_Search_PublishSourceSearch,
  kw_Search_InpharmSearch,
  kw_Search_StartENO,
  kw_Search_DocumentsWithoutClass,
  kw_Search_DocumentsWithoutIncluded,
  kw_Search_DocumentsWithoutKey,
  kw_Search_BaseSearch,
  kw_Search_OpenConsult,
  kw_Search_AllSearch,
  kw_Search_OpenKeyWordSearch,
  kw_Search_AttributeSearch,
  StdRes {a},
  vcmModuleDef {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type
  Tkw_Form_TreeAttributeFirstLevel = class(TtfwControlString)
   {* ����� ������� ��� �������������� ����� TreeAttributeFirstLevel
----
*������ �������������*:
[code]
'aControl' �����::TreeAttributeFirstLevel TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_TreeAttributeFirstLevel

// start class Tkw_Form_TreeAttributeFirstLevel

{$If not defined(NoScripts)}
function Tkw_Form_TreeAttributeFirstLevel.GetString: AnsiString;
 {-}
begin
 Result := 'efTreeAttributeFirstLevel';
end;//Tkw_Form_TreeAttributeFirstLevel.GetString
{$IfEnd} //not NoScripts

type
  Tkw_TreeAttributeFirstLevel_FirstLevelContent_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� FirstLevelContent ����� TreeAttributeFirstLevel }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_TreeAttributeFirstLevel_FirstLevelContent_ControlInstance

// start class Tkw_TreeAttributeFirstLevel_FirstLevelContent_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_TreeAttributeFirstLevel_FirstLevelContent_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefTreeAttributeFirstLevel).FirstLevelContent);
end;//Tkw_TreeAttributeFirstLevel_FirstLevelContent_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Form_OldSituationSearch = class(TtfwControlString)
   {* ����� ������� ��� �������������� ����� OldSituationSearch
----
*������ �������������*:
[code]
'aControl' �����::OldSituationSearch TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_OldSituationSearch

// start class Tkw_Form_OldSituationSearch

{$If not defined(NoScripts)}
function Tkw_Form_OldSituationSearch.GetString: AnsiString;
 {-}
begin
 Result := 'cfOldSituationSearch';
end;//Tkw_Form_OldSituationSearch.GetString
{$IfEnd} //not NoScripts

type
  Tkw_OldSituationSearch_ContextFilter_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� ContextFilter ����� OldSituationSearch }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_OldSituationSearch_ContextFilter_ControlInstance

// start class Tkw_OldSituationSearch_ContextFilter_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_OldSituationSearch_ContextFilter_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TcfOldSituationSearch).ContextFilter);
end;//Tkw_OldSituationSearch_ContextFilter_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

class function TSearchModule.DefineFilterForm(const aQuery: IQuery): TnsFilterForm;
//#UC START# *4AA64AFA0360_4AA641A3036C_var*

  function lp_CheckValue(const aSettingId : PAnsiChar;
                         const aDefault   : AnsiString;
                         const aValue     : AnsiString): Boolean;
  begin
   Result := l3Same(afw.Settings.LoadString(aSettingId, aDefault), aValue);
  end;//lp_CheckValue

//#UC END# *4AA64AFA0360_4AA641A3036C_var*
begin
//#UC START# *4AA64AFA0360_4AA641A3036C_impl*
 Result := ns_ffAttributeSearch;
 // �������������� ������
 if Assigned(aQuery) then
 begin
  case aQuery.GetType of
(*   QT_OLD_FILTER:
    Result := ns_ffAttributeSearch;*)
   QT_ATTRIBUTE
(*   ,
   QT_OLD_ATTRIBUTE*)
   :
    Result := ns_ffAttributeSearch;
   QT_KEYWORD:
    // ��� 6.�
    if lp_CheckValue(pi_Search_SituationType,
                     dv_Search_SituationType,
                     li_NewSearch_SituationType) then
     Result := ns_ffSituation
    // ��� 5.�
    else
     Result := ns_ffOldSituation;
   QT_PUBLISHED_SOURCE:
    // ���
    Result := ns_ffPublishSource;
   QT_BASE_SEARCH:
    // ������� �����
    Result := ns_ffBaseSearch;
   QT_PHARM_SEARCH:
    Result := ns_ffInpharmSearch; 
   else
    Assert(false);
  end;//case l_Filter.Query.GetType of
 end//if Assigned(aQuery) then
 // ������� ����� ������
 else
  Result := ns_ffAttributeSearch
//#UC END# *4AA64AFA0360_4AA641A3036C_impl*
end;//TSearchModule.DefineFilterForm

class procedure TSearchModule.ShowList(aType: TnsSearchListType);
//#UC START# *4AA65AA9011E_4AA641A3036C_var*
//#UC END# *4AA65AA9011E_4AA641A3036C_var*
var
 l_List : IDynList;
begin
//#UC START# *4AA65AA9011E_4AA641A3036C_impl*
 l_List := nil;
 with DefDataAdapter.Search do
  case aType of
    ns_sltWithoutClass:
     GetDocumentsWithoutClass(l_List);
    ns_sltWithoutKey:
     GetDocumentsWithoutKey(l_List);
    ns_sltWithoutInluded:
     GetDocumentsWithoutIncluded(l_List);
    else
     Assert(False);
  end;//case aType of
 if l_List <> nil then
 try
  TdmStdRes.OpenList(TdeListSet.Make(l_List), nil);
 finally
  l_List := nil;
 end;//try..finally
//#UC END# *4AA65AA9011E_4AA641A3036C_impl*
end;//TSearchModule.ShowList

class function TSearchModule.OpenLegislationReview(const aQuery: IQuery): IvcmEntityForm;
var
 __WasEnter : Boolean;
//#UC START# *4AB77FFF008F_4AA641A3036C_var*
//#UC END# *4AB77FFF008F_4AA641A3036C_var*
var
 l_Container : IvcmEntityForm;
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AB77FFF008F_4AA641A3036C_impl*
 // �������� �������� ���������� ��� ��
 l_Container := TdmStdRes.MakeSaveLoadForm(vcmCheckAggregate(
                                            vcmMakeParams(nil,
                                                      CheckContainer(nil))),
                                           vcm_ztParent,
                                           True,
                                           Ord(slqtLegislationReview));

 // �������� �������� "���������� ������ ����������������"
 Result := TdmStdRes.MakeQueryCardForm(false, // IsFilter
                                       vcmMakeParams(l_Container.Aggregate,
                                                 l_Container.AsContainer),
                                       vcm_ztParent,
                                       True,
                                       Ord(utqcLegislationReview));
 if (aQuery <> nil) then
  // �������� ������ � ����� ��
  op_SearchParameters_SetQuery.Call(l_Container.Aggregate, aQuery)
 else
  Op_Query_ClearAll.Call(l_Container.Aggregate, True);
//#UC END# *4AB77FFF008F_4AA641A3036C_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TSearchModule.OpenLegislationReview

class function TSearchModule.OpenFiltersForm(const aData: IdeFilter): IvcmEntityForm;
var
 __WasEnter : Boolean;
//#UC START# *4AB7B8D30345_4AA641A3036C_var*
//#UC END# *4AB7B8D30345_4AA641A3036C_var*
var
 l_MainContainer : IvcmEntityForm;
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AB7B8D30345_4AA641A3036C_impl*
 vcmDispatcher.FormDispatcher.Lock;
 try
  l_MainContainer := TdmStdRes.MakeSaveLoadForm(vcmCheckAggregate(
                                                 vcmMakeParams(nil,
                                                           CheckContainer(nil))),
                                                vcm_ztManualModal,
                                                true,
                                                Ord(slqtFilters));
  Result := TdmStdRes.MakeQueryCardForm(true, // IsFilter
                                        vcmMakeParams(l_MainContainer.Aggregate,
                                                  l_MainContainer.AsContainer),
                                        vcm_ztAny,
                                        True,
                                        0);
  // ��������� ������ � ��
  if (aData <> nil) then
   op_SearchParameters_SetQuery.Call(l_MainContainer.Aggregate, aData.Query);
 finally
  vcmDispatcher.FormDispatcher.UnLock;
 end;//try..finally
 if (l_MainContainer <> nil) AND (l_MainContainer.ZoneType = vcm_ztManualModal) then
 begin
  l_MainContainer.ShowModal;
  Result := nil;
  l_MainContainer := nil;
 end;//Result <> nil
//#UC END# *4AB7B8D30345_4AA641A3036C_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TSearchModule.OpenFiltersForm

class procedure TSearchModule.MakeNewFilter(aListType: TbsListType);
var
 __WasEnter : Boolean;
//#UC START# *4AB7BFE700D2_4AA641A3036C_var*
//#UC END# *4AB7BFE700D2_4AA641A3036C_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AB7BFE700D2_4AA641A3036C_impl*
 Case aListType of
  bs_ltNone:
   Assert(false);
  bs_ltDocument:
   OpenFiltersForm(nil);
  bs_ltDrug:
   OpenInpharm(0,
               vcm_ztManualModal,
               slqtFilters,
               nil,
               nil);
  else
   Assert(false);
 end;//Case aListType
//#UC END# *4AB7BFE700D2_4AA641A3036C_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TSearchModule.MakeNewFilter

class function TSearchModule.CreateSearchContainer(const anAggregate: IvcmAggregate;
  const aContainer: IvcmContainer;
  aSearchType: TvcmUserType;
  aSearchInList: Boolean;
  const aList: IdeList;
  aZoneType: TvcmZoneType): IvcmEntityForm;

 function GetCurrentListObject: IdeList;
 //#UC START# *4AB7C6AF0140__var*
//#UC END# *4AB7C6AF0140__var*
 var
  l_Form : IvcmEntityForm;
 begin
 //#UC START# *4AB7C6AF0140__impl*
  if CheckContainer(aContainer).HasForm(fm_efList.rFormID, vcm_ztParent, true, @l_Form) then
   Result := op_List_GetDeList.Call(l_Form)
  else
   Result := nil;
 //#UC END# *4AB7C6AF0140__impl*
 end;//GetCurrentListObject

//#UC START# *4AB7C62D0091_4AA641A3036C_var*
//#UC END# *4AB7C62D0091_4AA641A3036C_var*
var
 l_SearchInList : Boolean;
 l_List : IdeList;
begin
//#UC START# *4AB7C62D0091_4AA641A3036C_impl*
 l_SearchInList := aSearchInList;
 if (aList = nil) then
  l_List := GetCurrentListObject
 else
 begin
  l_List := aList;
  l_SearchInList := True;
 end;//aList = nil
 Result := TdmStdRes.MakeSaveLoadForm(vcmMakeParams(anAggregate,
                                                CheckContainer(aContainer)),
                                      aZoneType,
                                      True,
                                      aSearchType);
 if (l_List <> nil) then
  Op_Query_SetList.Call(Result.Entity, l_List, l_SearchInList);
//#UC END# *4AB7C62D0091_4AA641A3036C_impl*
end;//TSearchModule.CreateSearchContainer

class procedure TSearchModule.OpenInpharm(anIndex: Integer;
  aZoneType: TvcmZoneType;
  aUserType: TvcmUserType;
  const aQuery: IQuery;
  const aList: IDynList);
//#UC START# *4AB7CC92001F_4AA641A3036C_var*

 procedure InpharmSearchExecute(const aParams : IvcmMakeParams;
                                aZoneType     : TvcmZoneType;
                                aUserType     : TvcmUserType);
 var
  l_Form : IvcmEntityForm;
 begin//InpharmSearchExecute
  l_Form := TdmStdRes.MakeQueryCardForm((aUserType = slqtFilters), // IsFilter
                                        aParams,
                                        vcm_ztParent,
                                        True,
                                        utqcInpharmSearch);
  if (aZoneType <> vcm_ztManualModal) AND (aZoneType <> vcm_ztModal) then
   if afw.Settings.LoadBoolean(pi_Search_Sheets_Filters, dv_Search_Sheets_Filters) then
    TdmStdRes.OldSchoolFiltersOpen(l_Form.Aggregate,
                                   l_Form.Container,
                                   l_Form.VCLWinControl);
  if (aQuery <> nil) then
   // �������� ������ � ����� ��
   op_SearchParameters_SetQuery.Call(l_Form.Aggregate, aQuery)
  else
   Op_Query_ClearAll.Call(l_Form.Aggregate, True);
 end;//InpharmSearchExecute
 
//#UC END# *4AB7CC92001F_4AA641A3036C_var*
var
 l_Container : IvcmEntityForm;
 l_UserType : TvcmUserType;
 l_ZoneType : TvcmZoneType;
begin
//#UC START# *4AB7CC92001F_4AA641A3036C_impl*
 {$IfDef vcmUseProfilers}
 ProfilersManager.QueryCard.Start;
 {$EndIf vcmUseProfilers}

  // ��������� UserType
 case aUserType of
  vcm_utAny:
   l_UserType := slqtInpharmSearch;
  else
   l_UserType := aUserType;
 end;//case aUserType of
 // ��������� ZoneType
 Assert(aZoneType <> vcm_ztAny);
 case aZoneType of
  vcm_ztAny:
   l_ZoneType := vcm_ztParent;
  else
   l_ZoneType := aZoneType;
 end;//case aUserType of
 // �������� �������� ���������� ��� ��

 if (aList <> nil) then
  l_Container := CreateSearchContainer(vcmCheckAggregate(
                                        vcmMakeParams)
                                         .Aggregate,
                                       CheckContainer(nil),
                                       l_UserType,
                                       True,
                                       TdeList.Make(aList),
                                       l_ZoneType)
 else
  l_Container := CreateSearchContainer(vcmCheckAggregate(
                                        vcmMakeParams)
                                         .Aggregate,
                                       CheckContainer(nil),
                                       l_UserType,
                                       anIndex = 2,
                                       nil,
                                       l_ZoneType);
 // �������� ���������� �������� �������
 InpharmSearchExecute(vcmMakeParams(l_Container.Aggregate,
                                l_Container.AsContainer),
                      l_ZoneType,
                      l_UserType);
 // ������� ���������
 if (l_ZoneType = vcm_ztManualModal) then
  l_Container.ShowModal;
//#UC END# *4AB7CC92001F_4AA641A3036C_impl*
end;//TSearchModule.OpenInpharm

class procedure TSearchModule.InpharmSearch(const aQuery: IQuery;
  const aList: IDynList);
var
 __WasEnter : Boolean;
//#UC START# *4AB7D4340301_4AA641A3036C_var*
//#UC END# *4AB7D4340301_4AA641A3036C_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AB7D4340301_4AA641A3036C_impl*
 OpenInpharm(0,
             vcm_ztParent,
             vcm_utAny,
             aQuery,
             aList);
//#UC END# *4AB7D4340301_4AA641A3036C_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TSearchModule.InpharmSearch

class procedure TSearchModule.OpenPublishSource(anIndex: Integer;
  aZoneType: TvcmZoneType;
  aUserType: TvcmUserType;
  const aQuery: IQuery;
  const aList: IDynList;
  const aPublishSearchTag: Il3CString);
//#UC START# *4AB87D3603B7_4AA641A3036C_var*
//#UC END# *4AB87D3603B7_4AA641A3036C_var*
var
 l_Params : IvcmMakeParams;
 l_Main : IvcmEntityForm;
 l_Container : IvcmEntityForm;
 l_UserType : TvcmUserType;
 l_ZoneType : TvcmZoneType;
begin
//#UC START# *4AB87D3603B7_4AA641A3036C_impl*
  // ��������� UserType
 case aUserType of
  vcm_utAny:
   l_UserType := slqtPublishSource;
  else
   l_UserType := aUserType;
 end;//case aUserType of
 // ��������� ZoneType
 case aZoneType of
  vcm_ztAny:
   l_ZoneType := vcm_ztParent;
  else
   l_ZoneType := aZoneType;
 end;//case aUserType of
 l_Params := vcmCheckAggregate(vcmMakeParams(nil, CheckContainer(nil)));
 if (aList <> nil) then
  l_Main := CreateSearchContainer(l_Params.Aggregate,
                                  l_Params.Container,
                                  l_UserType,
                                  True,
                                  TdeDocumentList.Make(aList),
                                  l_ZoneType)
 else
  l_Main := CreateSearchContainer(l_Params.Aggregate,
                                  l_Params.Container,
                                  l_UserType,
                                  anIndex = 2,
                                  nil,
                                  l_ZoneType);

 l_Params := vcmMakeParams(l_Main.Aggregate,
                       l_Main.AsContainer);

 l_Container := TdmStdRes.MakeAttributeSelect(l_Params,
                                              vcm_ztParent,
                                              true,
                                              utSingleSearch);

 l_Params := vcmMakeParams(l_Container.Aggregate,
                       l_Container.AsContainer);
 if (aPublishSearchTag <> nil) then
  TdmStdRes.MakeTreeAttributeSelect(l_Params,
                                    vcm_ztAny,
                                    true,
                                    Ord(astTaxesPublishSearch))
 else
  TdmStdRes.MakeTreeAttributeSelect(l_Params,
                                    vcm_ztAny,
                                    true,
                                    0);
 TdmStdRes.MakeSelectedAttributes(l_Params, vcm_ztAny, true);

 if (l_ZoneType <> vcm_ztManualModal) and
   afw.Settings.LoadBoolean(pi_Search_Sheets_Filters, dv_Search_Sheets_Filters) then
  TdmStdRes.OldSchoolFiltersOpen(l_Params.Aggregate,
                                 l_Params.Container,
                                 l_Params.Container.AsForm.VCLWinControl);
 if (aPublishSearchTag = nil) then
  Op_AttributeTree_SetRoot.Call(l_Container.Aggregate,
                                nsCStr(AT_PUBLISH_SOURCE))
 else
  Op_AttributeTree_SetRoot.Call(l_Container.Aggregate,
                                aPublishSearchTag);

 Op_AttributeTree_DropAllLogicSelection.Call(l_Container.Aggregate, true, true);
 // !^! ������� �������� ����� ��������������, ��������� ����� �����

 if (aQuery <> nil) then
  op_SearchParameters_SetQuery.Call(l_Container.Aggregate, aQuery)
 else
  Op_Query_ClearAll.Call(l_Container.Aggregate, True);
 // ���� ����������� ������, �� ���������� ��������
 if (l_ZoneType = vcm_ztManualModal) then
  l_Main.ShowModal;
//#UC END# *4AB87D3603B7_4AA641A3036C_impl*
end;//TSearchModule.OpenPublishSource

class procedure TSearchModule.PublishSourceSearch(const aQuery: IQuery;
  const aList: IDynList);
var
 __WasEnter : Boolean;
//#UC START# *4AB8A68700C7_4AA641A3036C_var*
//#UC END# *4AB8A68700C7_4AA641A3036C_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AB8A68700C7_4AA641A3036C_impl*
 OpenPublishSource(0,
                   vcm_ztParent,
                   vcm_utAny,
                   aQuery,
                   aList,
                   nil);
//#UC END# *4AB8A68700C7_4AA641A3036C_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TSearchModule.PublishSourceSearch

procedure TSearchModule.opPublishSourceSearchTest(const aParams: IvcmTestParamsPrim);
//#UC START# *4AB8A97D01BF_4AA641A3036Ctest_var*
//#UC END# *4AB8A97D01BF_4AA641A3036Ctest_var*
begin
//#UC START# *4AB8A97D01BF_4AA641A3036Ctest_impl*
 aParams.Op.Flag[vcm_ofEnabled] := defDataAdapter.IsExists_PublishSourceTag;
 aParams.Op.Flag[vcm_ofVisible] := aParams.Op.Flag[vcm_ofEnabled];
 FillAllBaseListParams(aParams);
//#UC END# *4AB8A97D01BF_4AA641A3036Ctest_impl*
end;//TSearchModule.opPublishSourceSearchTest

procedure TSearchModule.opPublishSourceSearch(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AB8A97D01BF_4AA641A3036Cexec_var*
//#UC END# *4AB8A97D01BF_4AA641A3036Cexec_var*
begin
//#UC START# *4AB8A97D01BF_4AA641A3036Cexec_impl*
 with (aParams As IvcmExecuteParams) do
  Assert((Data = nil));
 OpenPublishSource(aParams.ItemIndex, vcm_ztParent, vcm_utAny, nil, nil, nil);
//#UC END# *4AB8A97D01BF_4AA641A3036Cexec_impl*
end;//TSearchModule.opPublishSourceSearch

class procedure TSearchModule.FillAllBaseListParams(const aParams: IvcmTestParamsPrim);
//#UC START# *4AB8ABF801D5_4AA641A3036C_var*

 function IsCurrentObjectList : Boolean;
 begin//IsCurrentObjectList
  if Assigned(g_Dispatcher.FormDispatcher.CurrentMainForm) then
   Result := (g_Dispatcher.FormDispatcher.CurrentMainForm.asContainer)
              .HasForm(fm_efList.rFormID, vcm_ztParent, true)
  else
   Result := False;
 end;//IsCurrentObjectList

//#UC END# *4AB8ABF801D5_4AA641A3036C_var*
begin
//#UC START# *4AB8ABF801D5_4AA641A3036C_impl*
 with aParams.Op.SubItems do
  if IsCurrentObjectList then
  begin
   if (Count = 0) then
   begin
    Add(vcmCStr(str_AllDocumentSearch));
    Add(vcmCStr(str_CurListSearch));
   end;//Count = 0
  end//IsCurrentObjectList
  else
  if (Count <> 0) then
   Clear;
//#UC END# *4AB8ABF801D5_4AA641A3036C_impl*
end;//TSearchModule.FillAllBaseListParams

procedure TSearchModule.opInpharmSearchTest(const aParams: IvcmTestParamsPrim);
//#UC START# *4AB8AF2002B4_4AA641A3036Ctest_var*
//#UC END# *4AB8AF2002B4_4AA641A3036Ctest_var*
begin
//#UC START# *4AB8AF2002B4_4AA641A3036Ctest_impl*
 aParams.Op.Flag[vcm_ofEnabled] := defDataAdapter.IsInpharmExists;
 FillAllBaseListParams(aParams);
//#UC END# *4AB8AF2002B4_4AA641A3036Ctest_impl*
end;//TSearchModule.opInpharmSearchTest

procedure TSearchModule.opInpharmSearch(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AB8AF2002B4_4AA641A3036Cexec_var*
//#UC END# *4AB8AF2002B4_4AA641A3036Cexec_var*
begin
//#UC START# *4AB8AF2002B4_4AA641A3036Cexec_impl*
 with (aParams As IvcmExecuteParams) do
  Assert((Data = nil));
 OpenInpharm(aParams.ItemIndex,
             vcm_ztParent,
             vcm_utAny,
             nil,
             nil);
//#UC END# *4AB8AF2002B4_4AA641A3036Cexec_impl*
end;//TSearchModule.opInpharmSearch

procedure TSearchModule.opStartENOTest(const aParams: IvcmTestParamsPrim);
//#UC START# *4AB8B29F0256_4AA641A3036Ctest_var*
//#UC END# *4AB8B29F0256_4AA641A3036Ctest_var*
begin
//#UC START# *4AB8B29F0256_4AA641A3036Ctest_impl*
 aParams.Op.Flag[vcm_ofEnabled] := defDataAdapter.IsENOEnabled;
 aParams.Op.Flag[vcm_ofVisible] := aParams.Op.Flag[vcm_ofEnabled];
//#UC END# *4AB8B29F0256_4AA641A3036Ctest_impl*
end;//TSearchModule.opStartENOTest

procedure TSearchModule.opStartENO(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AB8B29F0256_4AA641A3036Cexec_var*
const
 c_StartEnoLink = 'Start.ger';
//#UC END# *4AB8B29F0256_4AA641A3036Cexec_var*
begin
//#UC START# *4AB8B29F0256_4AA641A3036Cexec_impl*
 nsProcessENOLink(nsCStr(c_StartEnoLink));
//#UC END# *4AB8B29F0256_4AA641A3036Cexec_impl*
end;//TSearchModule.opStartENO

procedure TSearchModule.opDocumentsWithoutClassTest(const aParams: IvcmTestParamsPrim);
//#UC START# *4AB8B7D100EA_4AA641A3036Ctest_var*
//#UC END# *4AB8B7D100EA_4AA641A3036Ctest_var*
begin
//#UC START# *4AB8B7D100EA_4AA641A3036Ctest_impl*
 aParams.Op.Flag[vcm_ofVisible] := afw.Application.IsInternal;
 aParams.Op.Flag[vcm_ofEnabled] := afw.Application.IsInternal;
//#UC END# *4AB8B7D100EA_4AA641A3036Ctest_impl*
end;//TSearchModule.opDocumentsWithoutClassTest

procedure TSearchModule.opDocumentsWithoutClass(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AB8B7D100EA_4AA641A3036Cexec_var*
//#UC END# *4AB8B7D100EA_4AA641A3036Cexec_var*
begin
//#UC START# *4AB8B7D100EA_4AA641A3036Cexec_impl*
 ShowList(ns_sltWithoutClass);
//#UC END# *4AB8B7D100EA_4AA641A3036Cexec_impl*
end;//TSearchModule.opDocumentsWithoutClass

procedure TSearchModule.opDocumentsWithoutIncludedTest(const aParams: IvcmTestParamsPrim);
//#UC START# *4AB8B7E501F3_4AA641A3036Ctest_var*
//#UC END# *4AB8B7E501F3_4AA641A3036Ctest_var*
begin
//#UC START# *4AB8B7E501F3_4AA641A3036Ctest_impl*
 aParams.Op.Flag[vcm_ofVisible] := afw.Application.IsInternal;
 aParams.Op.Flag[vcm_ofEnabled] := afw.Application.IsInternal;
//#UC END# *4AB8B7E501F3_4AA641A3036Ctest_impl*
end;//TSearchModule.opDocumentsWithoutIncludedTest

procedure TSearchModule.opDocumentsWithoutIncluded(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AB8B7E501F3_4AA641A3036Cexec_var*
//#UC END# *4AB8B7E501F3_4AA641A3036Cexec_var*
begin
//#UC START# *4AB8B7E501F3_4AA641A3036Cexec_impl*
 ShowList(ns_sltWithoutInluded);
//#UC END# *4AB8B7E501F3_4AA641A3036Cexec_impl*
end;//TSearchModule.opDocumentsWithoutIncluded

procedure TSearchModule.opDocumentsWithoutKeyTest(const aParams: IvcmTestParamsPrim);
//#UC START# *4AB8B7F8006D_4AA641A3036Ctest_var*
//#UC END# *4AB8B7F8006D_4AA641A3036Ctest_var*
begin
//#UC START# *4AB8B7F8006D_4AA641A3036Ctest_impl*
 aParams.Op.Flag[vcm_ofVisible] := afw.Application.IsInternal;
 aParams.Op.Flag[vcm_ofEnabled] := afw.Application.IsInternal;
//#UC END# *4AB8B7F8006D_4AA641A3036Ctest_impl*
end;//TSearchModule.opDocumentsWithoutKeyTest

procedure TSearchModule.opDocumentsWithoutKey(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AB8B7F8006D_4AA641A3036Cexec_var*
//#UC END# *4AB8B7F8006D_4AA641A3036Cexec_var*
begin
//#UC START# *4AB8B7F8006D_4AA641A3036Cexec_impl*
 ShowList(ns_sltWithoutKey);
//#UC END# *4AB8B7F8006D_4AA641A3036Cexec_impl*
end;//TSearchModule.opDocumentsWithoutKey

procedure TSearchModule.opBaseSearch(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AB8B9530325_4AA641A3036Cexec_var*
//#UC END# *4AB8B9530325_4AA641A3036Cexec_var*
begin
//#UC START# *4AB8B9530325_4AA641A3036Cexec_impl*
 Assert((aParams As IvcmExecuteParams).Data = nil);
 TdmStdRes.OpenBaseSearch(ns_bsokGlobal, nil);
//#UC END# *4AB8B9530325_4AA641A3036Cexec_impl*
end;//TSearchModule.opBaseSearch

procedure TSearchModule.opOpenConsultTest(const aParams: IvcmTestParamsPrim);
//#UC START# *4AB8BA8302A8_4AA641A3036Ctest_var*
//#UC END# *4AB8BA8302A8_4AA641A3036Ctest_var*
begin
//#UC START# *4AB8BA8302A8_4AA641A3036Ctest_impl*
 aParams.Op.Flag[vcm_ofVisible] := DefDataAdapter.HasConsultations;
 aParams.Op.Flag[vcm_ofEnabled] := aParams.Op.Flag[vcm_ofVisible];
//#UC END# *4AB8BA8302A8_4AA641A3036Ctest_impl*
end;//TSearchModule.opOpenConsultTest

procedure TSearchModule.opOpenConsult(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AB8BA8302A8_4AA641A3036Cexec_var*
//#UC END# *4AB8BA8302A8_4AA641A3036Cexec_var*
begin
//#UC START# *4AB8BA8302A8_4AA641A3036Cexec_impl*
 TdmStdRes.OpenSendConsultation(nil);
//#UC END# *4AB8BA8302A8_4AA641A3036Cexec_impl*
end;//TSearchModule.opOpenConsult

procedure TSearchModule.opAllSearchTest(const aParams: IvcmTestParamsPrim);
//#UC START# *4AB8C9EB0166_4AA641A3036Ctest_var*

 function MakeAvailableSearches: IvcmItems;
   {-}
 begin//MakeAvailableSearches
  if (f_SearchTypeList = nil) then
  begin
   f_SearchTypeList := TvcmItems.Make;
   f_SearchTypeList.AddOp(TdmStdRes.mod_opcode_Search_BaseSearch);
   f_SearchTypeList.Add('-');
   f_SearchTypeList.AddOp(TdmStdRes.mod_opcode_Search_AttributeSearch);
   f_SearchTypeList.AddOp(TdmStdRes.mod_opcode_Search_OpenKeyWordSearch);
   f_SearchTypeList.AddOp(TdmStdRes.mod_opcode_Search_PublishSourceSearch);
   f_SearchTypeList.AddOp(TdmStdRes.mod_opcode_Monitorings_OpenLegislationReview);
   f_SearchTypeList.AddOp(TdmStdRes.mod_opcode_Diction_OpenDict);
   f_SearchTypeList.Add('-');
   f_SearchTypeList.AddOp(TdmStdRes.mod_opcode_Search_StartENO);
  end;//f_SearchTypeList = nil
  Result := f_SearchTypeList;
 end;//MakeAvailableSearches

var
 l_List : IvcmItems;
//#UC END# *4AB8C9EB0166_4AA641A3036Ctest_var*
begin
//#UC START# *4AB8C9EB0166_4AA641A3036Ctest_impl*
 l_List := MakeAvailableSearches;
 aParams.Op.SubItems := l_List;
 aParams.Op.Flag[vcm_ofEnabled] := (l_List <> nil) AND (l_List.Count > 0);
//#UC END# *4AB8C9EB0166_4AA641A3036Ctest_impl*
end;//TSearchModule.opAllSearchTest

procedure TSearchModule.opAllSearch(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AB8C9EB0166_4AA641A3036Cexec_var*
//#UC END# *4AB8C9EB0166_4AA641A3036Cexec_var*
begin
//#UC START# *4AB8C9EB0166_4AA641A3036Cexec_impl*
 // - ������ �� ������
//#UC END# *4AB8C9EB0166_4AA641A3036Cexec_impl*
end;//TSearchModule.opAllSearch

class function TSearchModule.DateQuery(const aCaller: IvcmEntityForm;
  const aData: IqaDateReqDataHolder): IvcmEntityForm;
var
 __WasEnter : Boolean;
//#UC START# *4AB8CC830075_4AA641A3036C_var*
//#UC END# *4AB8CC830075_4AA641A3036C_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AB8CC830075_4AA641A3036C_impl*
 Result := Ten_DefineSearchDate.Make(aData, vcmMakeParams(nil, nil, aCaller.VCLWinControl));
//#UC END# *4AB8CC830075_4AA641A3036C_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TSearchModule.DateQuery

class procedure TSearchModule.OpenSituation(aFormSetId: RvcmFormSetFactory;
  const aQuery: IQuery);
//#UC START# *4AB8E3B301CA_4AA641A3036C_var*
var
 l_DataSource: IvcmFormSetDataSource;
//#UC END# *4AB8E3B301CA_4AA641A3036C_var*
begin
//#UC START# *4AB8E3B301CA_4AA641A3036C_impl*
 l_DataSource := TsdsSituation.Make(TdeSearch.Make(nsCStr(AT_KW), aQuery));
 aFormSetId.Make(l_DataSource,
                 CheckContainer(nil),
                 false);
 // ������� ��
 // http://mdp.garant.ru/pages/viewpage.action?pageId=235867256
 Op_AttributeTree_DropAllLogicSelection.Call(l_DataSource.FormSet, true, true);
 if (aQuery = nil) then
  Op_Query_ClearAll.Call(l_DataSource.FormSet, True);
 l_DataSource := nil;
//#UC END# *4AB8E3B301CA_4AA641A3036C_impl*
end;//TSearchModule.OpenSituation

class procedure TSearchModule.OpenOldSituation(aZoneType: TvcmZoneType;
  aUserType: TvcmUserType;
  const aQuery: IQuery);
//#UC START# *4AB8EA610164_4AA641A3036C_var*

 procedure OpenOldKeyWordSearchExecute(const aParams: IvcmMakeParams);
 var
  l_Params    : IvcmMakeParams;
  l_Container : IvcmEntityForm;
 begin//OpenOldKeyWordSearchExecute
  l_Container := TcfOldSituationSearch.MakeSingleChild(aParams.Container,
                                                   aParams,
                                                   vcm_ztParent);
  l_Params := vcmMakeParams(l_Container.Aggregate,
                        l_Container.AsContainer,
                        aParams.Owner);
  TdmStdRes.MakeTreeAttributeSelect(l_Params,
                                    vcm_ztChild,
                                    True,
                                    Byte(astOneLevel));
  TdmStdRes.MakeTreeAttributeSelect(l_Params,
                                    vcm_ztMain,
                                    True,
                                    Byte(astFirstLevel));
  TdmStdRes.MakeSelectedAttributes(l_Params, vcm_ztParent, True);

  // ������� �������� ����� ��������������, ��������� ����� �����
  op_AttributeTree_SetRoot.Call(l_Params.Aggregate,
                                nsCStr(AT_KW));
  Op_AttributeTree_DropAllLogicSelection.Call(l_Params.Aggregate, true, true);
  // ������� �������� ����� ��������������, ��������� ����� �����
  if (aQuery <> nil) then
   // �������� ������ � ����� ��
   op_SearchParameters_SetQuery.Call(l_Params.Aggregate, aQuery)
  else
   Op_Query_ClearAll.Call(l_Params.Aggregate, True);
 end;//OpenOldKeyWordSearchExecute

var
 l_Container : IvcmEntityForm;
 l_UserType  : TvcmUserType;
 l_ZoneType  : TvcmZoneType;
//#UC END# *4AB8EA610164_4AA641A3036C_var*
begin
//#UC START# *4AB8EA610164_4AA641A3036C_impl*
 // ��������� UserType
 case aUserType of
  vcm_utAny:
   l_UserType := slqtOldKW;
  else
   l_UserType := aUserType;
 end;//case aUserType of
 // ��������� ZoneType
 case aZoneType of
  vcm_ztAny:
   l_ZoneType := vcm_ztParent;
  else
   l_ZoneType := aZoneType;
 end;//case aUserType of
 // �������� �������� ���������� ��� ��
 l_Container := TdmStdRes.MakeSaveLoadForm(vcmCheckAggregate(
                                            vcmMakeParams(nil,
                                                      CheckContainer(nil))),
                                           l_ZoneType,
                                           True,
                                           l_UserType);
 // �������� ���� ��� 5.�
 OpenOldKeyWordSearchExecute(vcmMakeParams(l_Container.Aggregate,
                                       l_Container.AsContainer));
 // ������� �����
 if (l_ZoneType = vcm_ztManualModal) then
  l_Container.ShowModal;
//#UC END# *4AB8EA610164_4AA641A3036C_impl*
end;//TSearchModule.OpenOldSituation

class procedure TSearchModule.OpenKeyWord(const aQuery: IQuery);
var
 __WasEnter : Boolean;
//#UC START# *4AB8EF3B0310_4AA641A3036C_var*
//#UC END# *4AB8EF3B0310_4AA641A3036C_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AB8EF3B0310_4AA641A3036C_impl*
 // ��� 6.�
 if l3Same(afw.Settings.LoadString(pi_Search_SituationType,
                     dv_Search_SituationType),
                     li_NewSearch_SituationType) then
  OpenSituationCard(aQuery)
 // ��� 5.�
 else
  OpenOldSituationCard(aQuery);
//#UC END# *4AB8EF3B0310_4AA641A3036C_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TSearchModule.OpenKeyWord

procedure TSearchModule.opOpenKeyWordSearchTest(const aParams: IvcmTestParamsPrim);
//#UC START# *4AB8F0B00149_4AA641A3036Ctest_var*
//#UC END# *4AB8F0B00149_4AA641A3036Ctest_var*
begin
//#UC START# *4AB8F0B00149_4AA641A3036Ctest_impl*
 aParams.Op.Flag[vcm_ofEnabled] := defDataAdapter.IsExists_KeyWordTag;
 aParams.Op.Flag[vcm_ofVisible] := aParams.Op.Flag[vcm_ofEnabled];
//#UC END# *4AB8F0B00149_4AA641A3036Ctest_impl*
end;//TSearchModule.opOpenKeyWordSearchTest

procedure TSearchModule.opOpenKeyWordSearch(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AB8F0B00149_4AA641A3036Cexec_var*
//#UC END# *4AB8F0B00149_4AA641A3036Cexec_var*
begin
//#UC START# *4AB8F0B00149_4AA641A3036Cexec_impl*
 Assert(((aParams As IvcmExecuteParams).Data = nil),
        '����������� �������� TdmStdRes.OpenKeyWord');
 OpenKeyWord(nil);
//#UC END# *4AB8F0B00149_4AA641A3036Cexec_impl*
end;//TSearchModule.opOpenKeyWordSearch

class procedure TSearchModule.EditFilter(const aFilter: IdeFilter;
  anItemIndex: Integer);
var
 __WasEnter : Boolean;
//#UC START# *4AB8F2DC01A3_4AA641A3036C_var*
//#UC END# *4AB8F2DC01A3_4AA641A3036C_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AB8F2DC01A3_4AA641A3036C_impl*
 // �������������� ������
 if (aFilter <> nil) AND (aFilter.Query <> nil) then
 begin
  case DefineFilterForm(aFilter.Query) of
   ns_ffAttributeSearch:
    OpenFiltersForm(aFilter);
   ns_ffPublishSource:
    OpenPublishSource(anItemIndex,
                      vcm_ztManualModal,
                      slqtFilters,
                      aFilter.Query,
                      nil,
                      nil);
   ns_ffSituation:
    OpenSituation(Tfs_SituationFilter,
                  aFilter.Query);
   ns_ffOldSituation:
    OpenOldSituation(vcm_ztManualModal,
                     slqtFilters,
                     aFilter.Query);
   ns_ffBaseSearch:
    TdmStdRes.OpenBaseSearch(ns_bsokGlobal, aFilter.Query);
   ns_ffInpharmSearch:
    OpenInpharm(anItemIndex,
                vcm_ztManualModal,
                slqtFilters,
                aFilter.Query,
                nil);
   else
    Assert(false, '����������� ��� �������');
  end;//case DefineFilterForm(aFilter.Query) of
 end//aFilter <> nil..
 // ������� ����� ������
 else
  Assert(false, '����������� �������� TdmStdRes.MakeNewFilter');
//#UC END# *4AB8F2DC01A3_4AA641A3036C_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TSearchModule.EditFilter

class procedure TSearchModule.OpenAttribute(anIndex: Integer;
  aZoneType: TvcmZoneType;
  aUserType: TvcmUserType;
  const aQuery: IQuery;
  const aList: IDynList);
//#UC START# *4AB8FB72017D_4AA641A3036C_var*
                            
 procedure AttributeSearchExecute(const aParams: IvcmMakeParams);
 var
  l_Form  : IvcmEntityForm;
 begin
  l_Form := TdmStdRes.MakeQueryCardForm(false, // IsFilter
                                        aParams,
                                        vcm_ztParent,
                                        True,
                                        utqcAttributeSearch);
  if afw.Settings.LoadBoolean(pi_Search_Sheets_Filters, dv_Search_Sheets_Filters) then
   TdmStdRes.OldSchoolFiltersOpen(l_Form.Aggregate,
                                  l_Form.Container,
                                  l_Form.VCLWinControl);
  if (aQuery <> nil) then
   op_SearchParameters_SetQuery.Call(l_Form.Aggregate, aQuery)
  else
   Op_Query_ClearAll.Call(l_Form.Aggregate, True);
 end;

var
 l_Params        : IvcmMakeParams;
 l_Container     : IvcmEntityForm;
 l_UserType      : TvcmUserType;
 l_ZoneType      : TvcmZoneType;
//#UC END# *4AB8FB72017D_4AA641A3036C_var*
begin
//#UC START# *4AB8FB72017D_4AA641A3036C_impl*
 {$IfDef vcmUseProfilers}
 ProfilersManager.QueryCard.Start;
 {$EndIf vcmUseProfilers}

  // ��������� UserType
 case aUserType of
  vcm_utAny:
   l_UserType := slqtAttribute;
  else
   l_UserType := aUserType;
 end;//case aUserType of
 // ��������� ZoneType
 case aZoneType of
  vcm_ztAny:
   l_ZoneType := vcm_ztParent;
  else
   l_ZoneType := aZoneType;
 end;//case aUserType of
 // �������� �������� ���������� ��� ��
 l_Params := vcmCheckAggregate(vcmMakeParams(nil, CheckContainer(nil)));

 if (aList <> nil) then
  l_Container := CreateSearchContainer(l_Params.Aggregate,
                                       l_Params.Container,
                                       l_UserType,
                                       True,
                                       TdeDocumentList.Make(aList),
                                       l_ZoneType)
 else
  l_Container := CreateSearchContainer(l_Params.Aggregate,
                                       l_Params.Container,
                                       l_UserType,
                                       anIndex = 2,
                                       nil,
                                       l_ZoneType);
 // �������� ���������� �������� �������
 AttributeSearchExecute(vcmMakeParams(l_Container.Aggregate,
                        l_Container.AsContainer,
                        l_Params.Owner));
 // ������� ���������
 if (l_ZoneType = vcm_ztManualModal) then
  l_Container.ShowModal;
//#UC END# *4AB8FB72017D_4AA641A3036C_impl*
end;//TSearchModule.OpenAttribute

class procedure TSearchModule.AttributeSearch(const aQuery: IQuery;
  const aList: IDynList);
var
 __WasEnter : Boolean;
//#UC START# *4AB8FBBA016C_4AA641A3036C_var*
//#UC END# *4AB8FBBA016C_4AA641A3036C_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AB8FBBA016C_4AA641A3036C_impl*
 OpenAttribute(0,
               vcm_ztParent,
               vcm_utAny,
               aQuery,
               aList);
//#UC END# *4AB8FBBA016C_4AA641A3036C_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TSearchModule.AttributeSearch

procedure TSearchModule.opAttributeSearchTest(const aParams: IvcmTestParamsPrim);
//#UC START# *4AB8FF1C0353_4AA641A3036Ctest_var*
//#UC END# *4AB8FF1C0353_4AA641A3036Ctest_var*
begin
//#UC START# *4AB8FF1C0353_4AA641A3036Ctest_impl*
 FillAllBaseListParams(aParams);
//#UC END# *4AB8FF1C0353_4AA641A3036Ctest_impl*
end;//TSearchModule.opAttributeSearchTest

procedure TSearchModule.opAttributeSearch(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AB8FF1C0353_4AA641A3036Cexec_var*
//#UC END# *4AB8FF1C0353_4AA641A3036Cexec_var*
begin
//#UC START# *4AB8FF1C0353_4AA641A3036Cexec_impl*
 Assert(((aParams As IvcmExecuteParams).Data = nil),
        '����������� �������� TdmStsRes.AttributeSearch');
 OpenAttribute(aParams.ItemIndex, vcm_ztParent, vcm_utAny, nil, nil);
//#UC END# *4AB8FF1C0353_4AA641A3036Cexec_impl*
end;//TSearchModule.opAttributeSearch

class procedure TSearchModule.OpenTaxesPublishSearch(const aPublishSearchTag: Il3CString);
var
 __WasEnter : Boolean;
//#UC START# *4ACDF7FB02FB_4AA641A3036C_var*
//#UC END# *4ACDF7FB02FB_4AA641A3036C_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4ACDF7FB02FB_4AA641A3036C_impl*
 if (aPublishSearchTag = nil) then
  OpenPublishSource(0,
                    vcm_ztParent,
                    vcm_utAny,
                    nil,
                    nil,
                    nsCStr('AT_PUBLISH_SOURCE_FINANCE'))
 else                   
  OpenPublishSource(0,
                    vcm_ztParent,
                    vcm_utAny,
                    nil,
                    nil,
                    aPublishSearchTag);
//#UC END# *4ACDF7FB02FB_4AA641A3036C_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TSearchModule.OpenTaxesPublishSearch

class procedure TSearchModule.OpenSituationCard(const aQuery: IQuery);
var
 __WasEnter : Boolean;
//#UC START# *4F27EA7D0011_4AA641A3036C_var*
//#UC END# *4F27EA7D0011_4AA641A3036C_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4F27EA7D0011_4AA641A3036C_impl*
 OpenSituation(Tfs_SituationSearch, aQuery);
//#UC END# *4F27EA7D0011_4AA641A3036C_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TSearchModule.OpenSituationCard

class procedure TSearchModule.OpenOldSituationCard(const aQuery: IQuery);
var
 __WasEnter : Boolean;
//#UC START# *4F27EAB1039F_4AA641A3036C_var*
//#UC END# *4F27EAB1039F_4AA641A3036C_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4F27EAB1039F_4AA641A3036C_impl*
 OpenOldSituation(vcm_ztParent, vcm_utAny, aQuery);
//#UC END# *4F27EAB1039F_4AA641A3036C_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TSearchModule.OpenOldSituationCard

procedure TSearchModule.Cleanup;
//#UC START# *479731C50290_4AA641A3036C_var*
//#UC END# *479731C50290_4AA641A3036C_var*
begin
//#UC START# *479731C50290_4AA641A3036C_impl*
 f_SearchTypeList := nil;
 inherited;
//#UC END# *479731C50290_4AA641A3036C_impl*
end;//TSearchModule.Cleanup

procedure TSearchModule.Loaded;
begin
 inherited;
 PublishOp('opPublishSourceSearch', opPublishSourceSearch, opPublishSourceSearchTest);
 PublishOp('opInpharmSearch', opInpharmSearch, opInpharmSearchTest);
 PublishOp('opStartENO', opStartENO, opStartENOTest);
 PublishOp('opDocumentsWithoutClass', opDocumentsWithoutClass, opDocumentsWithoutClassTest);
 PublishOp('opDocumentsWithoutIncluded', opDocumentsWithoutIncluded, opDocumentsWithoutIncludedTest);
 PublishOp('opDocumentsWithoutKey', opDocumentsWithoutKey, opDocumentsWithoutKeyTest);
 PublishOp('opBaseSearch', opBaseSearch, nil);
 PublishOp('opOpenConsult', opOpenConsult, opOpenConsultTest);
 PublishOp('opAllSearch', opAllSearch, opAllSearchTest);
 PublishOp('opOpenKeyWordSearch', opOpenKeyWordSearch, opOpenKeyWordSearchTest);
 PublishOp('opAttributeSearch', opAttributeSearch, opAttributeSearchTest);
end;

class procedure TSearchModule.GetEntityForms(aList : TvcmClassList);
begin
 inherited;
 aList.Add(Ten_DefineSearchDate);
 aList.Add(TefTreeAttributeFirstLevel);
 aList.Add(TcfOldSituationSearch);
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� ������� ����� TreeAttributeFirstLevel
 fm_efTreeAttributeFirstLevel.SetFactory(TefTreeAttributeFirstLevel.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_TreeAttributeFirstLevel
 Tkw_Form_TreeAttributeFirstLevel.Register('�����::TreeAttributeFirstLevel', TefTreeAttributeFirstLevel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_TreeAttributeFirstLevel_FirstLevelContent_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefTreeAttributeFirstLevel.FirstLevelContent', Tkw_TreeAttributeFirstLevel_FirstLevelContent_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_OldSituationSearch
 Tkw_Form_OldSituationSearch.Register('�����::OldSituationSearch', TcfOldSituationSearch);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_OldSituationSearch_ContextFilter_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TcfOldSituationSearch.ContextFilter', Tkw_OldSituationSearch_ContextFilter_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.