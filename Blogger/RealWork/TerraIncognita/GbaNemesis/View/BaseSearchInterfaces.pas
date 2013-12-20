unit BaseSearchInterfaces;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaseSearchInterfaces.pas"
// Начат: 03.09.2009 14:22
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Interfaces::Category>> F1 Core::Base Operations::View::BaseSearchInterfaces
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
  DynamicTreeUnit,
  l3Interfaces
  {$If not defined(NoVCM)}
  ,
  vcmExternalInterfaces
  {$IfEnd} //not NoVCM
  ,
  l3TreeInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  ,
  PrimBaseSearchInterfaces,
  SysUtils
  ;

type
 TnsBaseSearchOpenKind = (
  {* Типы открытия базового поиска }
   ns_bsokLocal // Локальный поиск контекста (Ctrl+F)
 , ns_bsokSpecify // Уточнить
 , ns_bsokGlobal // Глобальный поиск (F4)
 );//TnsBaseSearchOpenKind

 InsBaseSearchVisibleWatcher = interface(IUnknown)
   ['{E98658D8-1553-40D7-A6E1-840C705598C9}']
   procedure VisibleChanged(aNewVisible: Boolean);
 end;//InsBaseSearchVisibleWatcher

 InsBaseSearchContextProvider = interface(IUnknown)
   ['{674A4919-B96A-489C-AFEC-726940684C28}']
   function pm_GetContext: Il3CString;
   procedure RepairMistakes;
   property Context: Il3CString
     read pm_GetContext;
 end;//InsBaseSearchContextProvider

 TnsBaseSearchClasses = DynamicTreeUnit.INodeBase;

 TnsBaseSearchKind = (
   ns_bskMenu
 , ns_bskList
 , ns_bskDocument
 , ns_bskQuery
 );//TnsBaseSearchKind

 TnsBaseSearchClassPrim = DynamicTreeUnit.INodeBase;

 TnsSearchArea = (
   ns_saEverywere
 , ns_saText
 , ns_saTitlesOnly
 );//TnsSearchArea

 InsBaseSearchDataReadyChecker = interface(IUnknown)
   ['{F01A4C08-BF24-4300-B7E1-EA5CE47AD428}']
   procedure CheckLocalDataReady;
 end;//InsBaseSearchDataReadyChecker

(*
 MnsSupportDisabled = PureMixIn
   function SupportDisabled: Boolean;
 end;//MnsSupportDisabled
*)

 InsBaseSearchQueryDataProcessor = interface(IUnknown)
   ['{40201F1F-3C11-4497-B812-5CC0D75A2355}']
   procedure SetDataFromQuery(const aQuery: IUnknown);
   procedure RequestFind;
   procedure RequestCheckFragmentsCount;
   procedure RequestCheckFindBack;
 end;//InsBaseSearchQueryDataProcessor

 InsSearchWindow = interface(IUnknown)
   ['{793F257C-3520-4B48-AE36-4CB918875D2E}']
   function Get_Container: IvcmContainer;
   procedure ParamsChanged;
   procedure PresentationChanged;
   procedure ExampleChanged;
   procedure CheckFindEnabled;
   procedure ClassNamesChanged;
   procedure CloseWindow;
   procedure ActivateWindow(aNeedFlash: Boolean = True);
   procedure CheckFragmentsCount;
   property Container: IvcmContainer
     read Get_Container;
 end;//InsSearchWindow

 InsContextSearcher = interface(IUnknown)
   ['{3E94FD76-AA33-4F11-894F-7F6344176794}']
   function pm_GetArea: TnsSearchArea;
   procedure pm_SetArea(aValue: TnsSearchArea);
   function Get_VisibleWatcher: InsBaseSearchVisibleWatcher;
   function Kind: TnsBaseSearchKind;
   function Find(const aContext: InsBaseSearchContextProvider;
    const aProcessor: InsBaseSearchResultProcessor): Boolean;
   function AllowSearchInTitles: Boolean;
   function IsLocalSearchArea: Boolean;
   procedure ContextChanged(const aNewContext: Il3CString);
   function IsLocalDataReady: Boolean;
   function FindBack(const aContext: InsBaseSearchContextProvider;
    const aProcessor: InsBaseSearchResultProcessor): Boolean;
     {* Искать назад }
   function FindBackSupported: Boolean;
   function FindBackEnabled: Boolean;
   function FragmentsCountSuffix: Il3CString;
   function AllowPrompts: Boolean;
   function PromptsInfo: LongWord;
   function SwitchToTextIfPossible: Boolean;
   property Area: TnsSearchArea
     read pm_GetArea
     write pm_SetArea;
   property VisibleWatcher: InsBaseSearchVisibleWatcher
     read Get_VisibleWatcher;
  // MnsSupportDisabled
   function SupportDisabled: Boolean;
 end;//InsContextSearcher

 InsContextSearchHistoryNotifier = interface(IUnknown)
   ['{25C6AC9C-73FF-42BF-9698-3B5205CC201C}']
   procedure HistoryChanged(const aNewHistory: IvcmStrings);
   procedure ContextSearched;
 end;//InsContextSearchHistoryNotifier

 InsMistakesCorrector = interface(IUnknown)
   ['{48789C4F-0569-4518-821B-EA5BF3A64480}']
   procedure Correct(const aCorrectedContext: Il3StringsEx;
    const aMistakesList: Il3StringsEx);
 end;//InsMistakesCorrector

 TnsContainerForBaseSearchInfo = record
   rContainer : IvcmContainer;
   rZone : TvcmZoneType;
 end;//TnsContainerForBaseSearchInfo

(*
 MnsBaseSearchPresentationState = PureMixIn
  {* http://mdp.garant.ru/pages/viewpage.action?pageId=321989072
http://mdp.garant.ru/pages/viewpage.action?pageId=321989072&focusedCommentId=330698655#comment-330698655 }
   function FormCloseWasRequested: Boolean;
     {* Окно уже попросили закрыться
http://mdp.garant.ru/pages/viewpage.action?pageId=321989072&focusedCommentId=330698655#comment-330698655
Скорее всего его нельзя запоминать в историю. Точнее не егго а форму БП, которая на него смотрит }
 end;//MnsBaseSearchPresentationState
*)

(*
 MnsContextSearchHistory = PureMixIn
   procedure AddNotifier(const aNotifier: InsContextSearchHistoryNotifier);
   function History: IvcmStrings;
   procedure RemoveNotifier(const aNotifier: InsContextSearchHistoryNotifier);
   procedure Searched(const aContext: IvcmStrings);
 end;//MnsContextSearchHistory
*)

 ETryToFindEmptyContext = class(Exception)
 end;//ETryToFindEmptyContext

 InsBaseSearchWindowOpener = interface(IUnknown)
   ['{5D504A4A-A102-4393-A6E3-7B05893425C5}']
   procedure OpenWindow(OpenKind: TnsBaseSearchOpenKind);
 end;//InsBaseSearchWindowOpener

 InsBaseSearchListSource = interface(IUnknown)
   ['{A3EE6B9E-5CDF-4D52-9384-3ADB2C60D102}']
   function Get_SearchList: IDynList;
   property SearchList: IDynList
     read Get_SearchList;
 end;//InsBaseSearchListSource

 InsBaseSearchPresentation = interface(IUnknown{, При хождении по истории выбор должен восстанавливаться})
  {* Представление "Базового поиска" }
   ['{6F7CE717-5FD9-45EE-9487-F4F1A0F9C248}']
   function Get_ContainerForBaseSearch: TnsContainerForBaseSearchInfo;
   function Get_ContextSearcher: InsContextSearcher;
   function Get_NeedSaveActiveClassBeforeSearch: Boolean;
   function WindowRequired: Boolean;
   function WindowCloseable: Boolean;
   function CanCloseWindow: Boolean;
   function IsQueryCard: Boolean;
   function TreatSuccessSearchAsManualOpen: Boolean;
   function AutoActivateWindow: Boolean;
   property ContainerForBaseSearch: TnsContainerForBaseSearchInfo
     read Get_ContainerForBaseSearch;
   property ContextSearcher: InsContextSearcher
     read Get_ContextSearcher;
   property NeedSaveActiveClassBeforeSearch: Boolean
     read Get_NeedSaveActiveClassBeforeSearch;
     {* Сохранять ли активный класс ДО поиска (как в списке) или ПОСЛЕ (как в ОМ)
http://mdp.garant.ru/pages/viewpage.action?pageId=327826220
Вообще говоря там надо ещё обрабатывать ситуацию - локальный поиск или глобальный, т.е. смениться прецедент после поиска или нет }
  // MnsSupportDisabled
   function SupportDisabled: Boolean;
  // MnsBaseSearchPresentationState
   function FormCloseWasRequested: Boolean;
     {* Окно уже попросили закрыться
http://mdp.garant.ru/pages/viewpage.action?pageId=321989072&focusedCommentId=330698655#comment-330698655
Скорее всего его нельзя запоминать в историю. Точнее не егго а форму БП, которая на него смотрит }
 end;//InsBaseSearchPresentation

 InsCutToLeafFilter = interface(IUnknown)
   ['{82C20B16-25CE-4A11-A1AA-BC052236983F}']
   function pm_GetLeafCount: LongWord;
   property LeafCount: LongWord
     read pm_GetLeafCount;
 end;//InsCutToLeafFilter

 InsPromptForDocFilter = interface(IUnknown)
   ['{37181736-0998-4C7D-9DFD-6245F00168A6}']
   function Get_InternalDocNumber: Longword;
   property InternalDocNumber: Longword
     read Get_InternalDocNumber;
 end;//InsPromptForDocFilter

 InsBaseSearchPromptFilters = interface(Il3TreeFilters)
   ['{1C61F6BE-82F5-4A17-AA9F-A2AD82FE6F96}']
   function Get_ForDoc: InsPromptForDocFilter;
   function pm_GetLeaf: InsCutToLeafFilter;
   function SetLeaf(const aFilter: InsCutToLeafFilter): InsBaseSearchPromptFilters;
   function SetPromptForDoc(const aFilter: InsPromptForDocFilter): InsBaseSearchPromptFilters;
   property ForDoc: InsPromptForDocFilter
     read Get_ForDoc;
   property Leaf: InsCutToLeafFilter
     read pm_GetLeaf;
 end;//InsBaseSearchPromptFilters

 TbsBaseSearchResult = (
   bsrNone // в случае если параметры поиска не заданы
 , bsrContinueSearch // продолжить поиск
 , bsrSearchFinished // поиск в текте завершен
 , bsrSearchFinishedNotFound // в тексте ничего не найдено
 , bsrSearchFinishedAllInHidden // тексте нечто найдено, но все в скрытом тексте
 );//TbsBaseSearchResult

 IbsBaseDocumentContextSearcher = interface(IUnknown{, Контекстный поиск в документе})
   ['{12BC458F-160F-4D3E-AE17-B95998B2B341}']
   function pm_GetCanContinue: Boolean;
   function Get_CanFindBack: Boolean;
   function pm_GetFragmentsCount: Integer;
   function pm_GetContext: Il3CString;
   function Find(const aContext: Il3CString): TbsBaseSearchResult;
     {* поиск }
   procedure ContextChanged(const aNewContext: Il3CString);
   function FindBack: TbsBaseSearchResult;
     {* Вернутся к предыдущему вхождению }
   property CanContinue: Boolean
     read pm_GetCanContinue;
     {* может ли поиск быть продолжен (F3) }
   property CanFindBack: Boolean
     read Get_CanFindBack;
   property FragmentsCount: Integer
     read pm_GetFragmentsCount;
   property Context: Il3CString
     read pm_GetContext;
 end;//IbsBaseDocumentContextSearcher

 TnsBaseSearchClass = TnsBaseSearchClassPrim;

 TnsContextHistoryKind = (
   ns_chkDocument // Истрия контекстов для всего кроме Инфарма
 , ns_chkInpharm // История контекстов для Инфарма
 );//TnsContextHistoryKind

 InsContextSearchHistory = interface(IUnknown)
   ['{F8992110-90FB-4A46-A23D-60C7F226D9FE}']
  // MnsContextSearchHistory
   procedure AddNotifier(const aNotifier: InsContextSearchHistoryNotifier);
   function History: IvcmStrings;
   procedure RemoveNotifier(const aNotifier: InsContextSearchHistoryNotifier);
   procedure Searched(const aContext: IvcmStrings);
 end;//InsContextSearchHistory

(*
 MnsPresentationHolder = PureMixIn
   function ValidateBaseSearchForm(const aForm: IvcmEntityForm): Boolean;
     {* Проверяет, что форма БП "той системы", т.е. встроена в то же главное окно, что и сам Searcher }
   function pm_GetPresentation: InsBaseSearchPresentation;
   procedure RemovePresentation(const aPresentation: InsBaseSearchPresentation);
   property Presentation: InsBaseSearchPresentation
     read pm_GetPresentation;
 end;//MnsPresentationHolder
*)

 InsBaseSearcher = interface(IUnknown)
   ['{A794F871-A872-47EC-B5D2-C2FFE1FF4138}']
   procedure DropActiveClass;
     {* http://mdp.garant.ru/pages/viewpage.action?pageId=269069309&focusedCommentId=296624258#comment-296624258 }
   procedure ShowWindowByUser(OpenKind: TnsBaseSearchOpenKind);
   procedure AddPresentation(const aPresentation: InsBaseSearchPresentation);
  // MnsPresentationHolder
   function ValidateBaseSearchForm(const aForm: IvcmEntityForm): Boolean;
     {* Проверяет, что форма БП "той системы", т.е. встроена в то же главное окно, что и сам Searcher }
   function pm_GetPresentation: InsBaseSearchPresentation;
   procedure RemovePresentation(const aPresentation: InsBaseSearchPresentation);
   property Presentation: InsBaseSearchPresentation
     read pm_GetPresentation;
 end;//InsBaseSearcher

const
  { SearchClassesConst }
 ns_bscNone = nil;

type
 InsMainMenuLikeBaseSearchOwner = interface(IUnknown)
  {* Определяет, что владелец БП является похожим на ОМ }
   ['{DF3EF06D-56F1-477C-932A-6CC09342E7DD}']
   function IsIt: Boolean;
 end;//InsMainMenuLikeBaseSearchOwner

 InsBaseSearcherWindowData = interface(IUnknown)
   ['{DD7D1F2D-820E-444C-9DF2-8780A9B6256D}']
   function Get_ClassesAnywayDisabled: Boolean;
   function Get_AllowSearchInTitles: Boolean;
   function Get_FindEnabled: Boolean;
   function pm_GetFindBackSupported: Boolean;
   function pm_GetFindBackEnabled: Boolean;
   function pm_GetFragmentsCountSuffix: Il3CString;
   function Get_ContextKind: TnsBaseSearchKind;
   function Get_AvailableClasses: TnsBaseSearchClasses;
   function pm_GetContext: Il3CString;
   procedure pm_SetContext(const aValue: Il3CString);
   function pm_GetActiveClass: TnsBaseSearchClass;
   procedure pm_SetActiveClass(const aValue: TnsBaseSearchClass);
   function pm_GetSearchWindow: InsSearchWindow;
   procedure pm_SetSearchWindow(const aValue: InsSearchWindow);
   function pm_GetArea: TnsSearchArea;
   procedure pm_SetArea(aValue: TnsSearchArea);
   function pm_GetExampleText: Il3CString;
   function pm_GetErrorWords: IvcmStrings;
   function Get_ActiveClassForSaveState: TnsBaseSearchClass;
   procedure Find;
   function ClassName(const aClass: TnsBaseSearchClass): Il3CString;
   procedure ApplyCurrentExample;
   procedure FindBack;
     {* Искать назад }
   function MakePromptTree: Il3SimpleTree;
   procedure StoreActiveClass;
   property ClassesAnywayDisabled: Boolean
     read Get_ClassesAnywayDisabled;
   property AllowSearchInTitles: Boolean
     read Get_AllowSearchInTitles;
   property FindEnabled: Boolean
     read Get_FindEnabled;
   property FindBackSupported: Boolean
     read pm_GetFindBackSupported;
     {* В принципе можем искать назад }
   property FindBackEnabled: Boolean
     read pm_GetFindBackEnabled;
     {* Поиск назад доступен в данный момент }
   property FragmentsCountSuffix: Il3CString
     read pm_GetFragmentsCountSuffix;
   property ContextKind: TnsBaseSearchKind
     read Get_ContextKind;
   property AvailableClasses: TnsBaseSearchClasses
     read Get_AvailableClasses;
   property Context: Il3CString
     read pm_GetContext
     write pm_SetContext;
   property ActiveClass: TnsBaseSearchClass
     read pm_GetActiveClass
     write pm_SetActiveClass;
   property SearchWindow: InsSearchWindow
     read pm_GetSearchWindow
     write pm_SetSearchWindow;
   property Area: TnsSearchArea
     read pm_GetArea
     write pm_SetArea;
   property ExampleText: Il3CString
     read pm_GetExampleText;
   property ErrorWords: IvcmStrings
     read pm_GetErrorWords;
   property ActiveClassForSaveState: TnsBaseSearchClass
     read Get_ActiveClassForSaveState;
     {* http://mdp.garant.ru/pages/viewpage.action?pageId=300026165 }
  // MnsPresentationHolder
   function ValidateBaseSearchForm(const aForm: IvcmEntityForm): Boolean;
     {* Проверяет, что форма БП "той системы", т.е. встроена в то же главное окно, что и сам Searcher }
   function pm_GetPresentation: InsBaseSearchPresentation;
   procedure RemovePresentation(const aPresentation: InsBaseSearchPresentation);
   property Presentation: InsBaseSearchPresentation
     read pm_GetPresentation;
 end;//InsBaseSearcherWindowData
{$IfEnd} //not Admin AND not Monitorings

implementation

end.