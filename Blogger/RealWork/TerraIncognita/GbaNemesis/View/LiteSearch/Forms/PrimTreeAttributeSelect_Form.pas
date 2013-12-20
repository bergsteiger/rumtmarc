unit PrimTreeAttributeSelect_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/LiteSearch/Forms/PrimTreeAttributeSelect_Form.pas"
// Начат: 27.01.2009 11:56
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Базовые определения предметной области::SearchLite::View::LiteSearch::PrimTreeAttributeSelect
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  DynamicTreeUnit,
  SearchUnit,
  l3Interfaces,
  l3TreeInterfaces,
  Classes,
  bsInterfaces,
  SearchInterfaces,
  TreeAttribute_Form,
  SearchDomainInterfaces
  {$If defined(Nemesis)}
  ,
  nscTreeView
  {$IfEnd} //Nemesis
  
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  
  {$If defined(Nemesis)}
  ,
  nscContextFilter
  {$IfEnd} //Nemesis
  ,
  nsTypes,
  SearchLite_Strange_Controls,
  l3StringIDEx,
  PrimTreeAttributeSelect_astNone_UserType,
  PrimTreeAttributeSelect_astOneLevel_UserType,
  PrimTreeAttributeSelect_astFirstLevel_UserType
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
  PrimTreeAttributeSelect_astTaxesPublishSearch_UserType
  {$If defined(Nemesis)}
  ,
  nscNewInterfaces
  {$IfEnd} //Nemesis
  ,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a},
  vcmControllers {a}
  ;

type
 TPrimTreeAttributeSelectForm = {abstract form} class(TTreeAttributeForm, InsTreeDataListener)
 private
 // private fields
   f_ContextFilter : TnscContextFilter;
    {* Поле для свойства ContextFilter}
   f_AttributeTree : TnscTreeView;
    {* Поле для свойства AttributeTree}
 protected
  procedure SignalDataSourceChanged(const anOld : IvcmViewAreaController;
                                const aDsNew : IvcmViewAreaController); override;
  procedure InitEntities; override;
  procedure MakeControls; override;
 protected
 // property methods
   function pm_GetContextFilter: TnscContextFilter;
   function pm_GetAttributeTree: TnscTreeView;
 protected
 // realized methods
   procedure Updated;
     {* данные дерева были обновлены. Реакция на обновление данных
            приложения }
   procedure AttributeTree_ExternalCharPressed_Execute(const aChar: Il3CString);
   procedure AttributeTree_ExternalCharPressed(const aParams: IvcmExecuteParams);
   procedure AttributeTree_SetCurrent_Execute(const aNode: Il3SimpleNode;
    aExpand: Boolean = false);
   procedure AttributeTree_SetCurrent(const aParams: IvcmExecuteParams);
   procedure AttributeTree_DropAllLogicSelection_Execute(aDropSelection: Boolean;
    aNotifyMultipleChanges: Boolean = false;
    SetToTop: Boolean = True);
   procedure AttributeTree_DropAllLogicSelection(const aParams: IvcmExecuteParams);
   function SearchParameters_IsQueryEmpty_Execute: Boolean;
   procedure SearchParameters_IsQueryEmpty(const aParams: IvcmExecuteParams);
   procedure AttributeTree_SaveToQuery_Execute(const aQuery: IQuery);
   procedure AttributeTree_SaveToQuery(const aParams: IvcmExecuteParams);
   procedure AttributeTree_Invalidate_Execute(aUserType: Integer);
   procedure AttributeTree_Invalidate(const aParams: IvcmExecuteParams);
   procedure Attribute_DefaultAction_Execute(anIndex: Integer = -1);
   procedure Attribute_DefaultAction(const aParams: IvcmExecuteParams);
   procedure SearchParameters_SetQuery_Execute(const aQuery: IQuery);
   procedure SearchParameters_SetQuery(const aParams: IvcmExecuteParams);
   procedure AttributeTree_DropLogicSelection_Execute(const aNode: INodeBase);
   procedure AttributeTree_DropLogicSelection(const aParams: IvcmExecuteParams);
   procedure AttributeTree_LoadQuery_Execute(const aQuery: IQuery);
   procedure AttributeTree_LoadQuery(const aParams: IvcmExecuteParams);
   procedure AttributeTree_SetOneLevelCurrent_Execute(const aNode: Il3SimpleNode);
   procedure AttributeTree_SetOneLevelCurrent(const aParams: IvcmExecuteParams);
   procedure Context_SetContext_Execute(const aState: InscContextFilterState);
   procedure Context_SetContext(const aParams: IvcmExecuteParams);
   procedure AttributeTree_SetRoot_Execute(const aTag: Il3CString);
   procedure AttributeTree_SetRoot(const aParams: IvcmExecuteParams);
   procedure AttributeTree_ChangeRoot_Execute(const aTag: Il3CString;
    const aRoot: Il3SimpleNode;
    const aCurrent: Il3SimpleNode);
   procedure AttributeTree_ChangeRoot(const aParams: IvcmExecuteParams);
   procedure Context_SyncContextParams_Execute(aAdditionalFilter: TnsFilterType);
   procedure Context_SyncContextParams(const aParams: IvcmExecuteParams);
   procedure AttributeTree_AddNodeIfEmpty_Execute;
   procedure AttributeTree_AddNodeIfEmpty(const aParams: IvcmExecuteParams);
   procedure SearchParameters_ClearQuery_Execute;
   procedure SearchParameters_ClearQuery(const aParams: IvcmExecuteParams);
   procedure Folder_FindFirstSelected_Test(const aParams: IvcmTestParamsPrim);
   procedure Folder_FindFirstSelected_Execute(const aParams: IvcmExecuteParamsPrim);
 protected
 // protected fields
   dsTreeAttributeSelect : IdsTreeAttributeSelect;
   f_NeedRefilterTree : Boolean;
 protected
 // protected methods
   procedure SetFilter(aFilterType: TnsFilterType);
     {* Накладывает фильтр на дерево }
   function IsOldSchoolNone: Boolean;
     {* Аналог проверки TefTreeAttributeSelectUT(UserType) <> astNone, только с учётом astTaxesPublishSearch }
   function EntitiesenAttributeGetTarget(aControl: TComponent;
     aX: Integer;
     aY: Integer;
     out theTarget: IUnknown): Boolean;
   procedure SendContextChangeMessage; virtual; abstract;
   procedure SetupNewTreeStruct(const aTree: Il3SimpleTree); virtual; abstract;
   procedure AttributeTreeNewCharPressed(aChar: AnsiChar); virtual; abstract;
   procedure SetCurrentNode(const aNode: Il3SimpleNode;
    aExpand: Boolean = false); virtual; abstract;
   procedure DropAllLogicSelection(aDropSelection: Boolean = false); virtual; abstract;
   procedure NotifyMultipleChanges; virtual; abstract;
   function SaveToQuery(const aQuery: IQuery): Boolean; virtual; abstract;
   procedure ActivateElement(anIndex: Integer;
    LogicOperationOnly: Boolean = false); virtual; abstract;
   procedure LoadFromQuery(const aQuery: IQuery); virtual; abstract;
   procedure DoContextFilterChange(aSender: TObject); virtual; abstract;
   procedure InvalidateOtherTree; virtual; abstract;
   procedure SetRootForFullForm(const aTag: Il3CString); virtual; abstract;
   procedure SetRootForFirstLevelForm(const aTag: Il3CString); virtual; abstract;
   function GetRootInfo: InsRootInfo; virtual; abstract;
   procedure NotifyOperationChange(const aNode: INodeBase;
    aOldOp: TLogicOperation;
    aNewOp: TLogicOperation); virtual; abstract;
   procedure FormLogicOperation(const aNode: INodeBase;
    aOp: TLogicOperation;
    aWithNotify: Boolean = true); virtual; abstract;
   procedure DropSelectedOperation; virtual; abstract;
   procedure ChangeOperationOnSelected(aNewOp: TLogicOperation); virtual; abstract;
 public
 // public properties
   property ContextFilter: TnscContextFilter
     read pm_GetContextFilter;
   property AttributeTree: TnscTreeView
     read pm_GetAttributeTree;
 end;//TPrimTreeAttributeSelectForm

implementation

uses
  SysUtils
  {$If not defined(NoVCM)}
  ,
  StdRes
  {$IfEnd} //not NoVCM
  
  {$If defined(Nemesis)}
  ,
  nscContextFilterState
  {$IfEnd} //Nemesis
  ,
  l3String,
  nsLogicOperationToFlags,
  l3Tree,
  nsAttrBranchStruct,
  l3Base,
  nsUtils
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  l3MessageID
  ;

var
   { Локализуемые строки astNoneLocalConstants }
  str_astNoneCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'astNoneCaption'; rValue : 'Поиск: Выбор реквизита');
   { Заголовок пользовательского типа "Поиск: Выбор реквизита" }

var
   { Локализуемые строки astOneLevelLocalConstants }
  str_astOneLevelCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'astOneLevelCaption'; rValue : 'Ситуации второго уровня');
   { Заголовок пользовательского типа "Ситуации второго уровня" }

var
   { Локализуемые строки astFirstLevelLocalConstants }
  str_astFirstLevelCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'astFirstLevelCaption'; rValue : 'Ситуации первого уровня');
   { Заголовок пользовательского типа "Ситуации первого уровня" }

var
   { Локализуемые строки astTaxesPublishSearchLocalConstants }
  str_astTaxesPublishSearchCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'astTaxesPublishSearchCaption'; rValue : 'СМИ по налогам и бухучету');
   { Заголовок пользовательского типа "СМИ по налогам и бухучету" }

type
  Tkw_PrimTreeAttributeSelect_Control_ContextFilter = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола ContextFilter
----
*Пример использования*:
[code]
контрол::ContextFilter TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimTreeAttributeSelect_Control_ContextFilter

// start class Tkw_PrimTreeAttributeSelect_Control_ContextFilter

{$If not defined(NoScripts)}
function Tkw_PrimTreeAttributeSelect_Control_ContextFilter.GetString: AnsiString;
 {-}
begin
 Result := 'ContextFilter';
end;//Tkw_PrimTreeAttributeSelect_Control_ContextFilter.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimTreeAttributeSelect_Control_ContextFilter_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола ContextFilter
----
*Пример использования*:
[code]
контрол::ContextFilter:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimTreeAttributeSelect_Control_ContextFilter_Push

// start class Tkw_PrimTreeAttributeSelect_Control_ContextFilter_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimTreeAttributeSelect_Control_ContextFilter_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('ContextFilter');
 inherited;
end;//Tkw_PrimTreeAttributeSelect_Control_ContextFilter_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimTreeAttributeSelect_Control_AttributeTree = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола AttributeTree
----
*Пример использования*:
[code]
контрол::AttributeTree TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimTreeAttributeSelect_Control_AttributeTree

// start class Tkw_PrimTreeAttributeSelect_Control_AttributeTree

{$If not defined(NoScripts)}
function Tkw_PrimTreeAttributeSelect_Control_AttributeTree.GetString: AnsiString;
 {-}
begin
 Result := 'AttributeTree';
end;//Tkw_PrimTreeAttributeSelect_Control_AttributeTree.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimTreeAttributeSelect_Control_AttributeTree_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола AttributeTree
----
*Пример использования*:
[code]
контрол::AttributeTree:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimTreeAttributeSelect_Control_AttributeTree_Push

// start class Tkw_PrimTreeAttributeSelect_Control_AttributeTree_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimTreeAttributeSelect_Control_AttributeTree_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('AttributeTree');
 inherited;
end;//Tkw_PrimTreeAttributeSelect_Control_AttributeTree_Push.DoDoIt
{$IfEnd} //not NoScripts

function TPrimTreeAttributeSelectForm.pm_GetContextFilter: TnscContextFilter;
begin
 if (f_ContextFilter = nil) then
  f_ContextFilter := FindComponent('ContextFilter') As TnscContextFilter;
 Result := f_ContextFilter;
end;

function TPrimTreeAttributeSelectForm.pm_GetAttributeTree: TnscTreeView;
begin
 if (f_AttributeTree = nil) then
  f_AttributeTree := FindComponent('AttributeTree') As TnscTreeView;
 Result := f_AttributeTree;
end;

procedure TPrimTreeAttributeSelectForm.SetFilter(aFilterType: TnsFilterType);
//#UC START# *4ACDE6BF0255_497ECC0E0325_var*
//#UC END# *4ACDE6BF0255_497ECC0E0325_var*
var
 l_Filters : InsAttributeTreeFilters;
 l_Tree : Il3FilterableTree;
 l_Index : Integer;
begin
//#UC START# *4ACDE6BF0255_497ECC0E0325_impl*
 if Supports(AttributeTree.TreeStruct, Il3FilterableTree, l_Tree) and
    Supports(l_Tree.CloneFilters, InsAttributeTreeFilters, l_Filters) and
    ((l_Filters.FilterType <> aFilterType) or
     not l3IsNil(l_Filters.Context)) then
 begin
  SetupNewTreeStruct(l_Tree.MakeFiltered(l_Filters.SetFilterType(aFilterType).
                                                   SetContext(nil),
                                         nil,
                                         l_Index,
                                         IsOldSchoolNone,
                                         true));
  ContextFilter.AssignState(TnscContextFilterState.Make(False, nil, 0));
  SendContextChangeMessage;
 end;//Supports(AttributeTree.TreeStruct, Il3FilterableTree, l_Tree)
//#UC END# *4ACDE6BF0255_497ECC0E0325_impl*
end;//TPrimTreeAttributeSelectForm.SetFilter

function TPrimTreeAttributeSelectForm.IsOldSchoolNone: Boolean;
//#UC START# *4ACDF3B90238_497ECC0E0325_var*
//#UC END# *4ACDF3B90238_497ECC0E0325_var*
begin
//#UC START# *4ACDF3B90238_497ECC0E0325_impl*
 Result := (UserType in [astNone, astTaxesPublishSearch]);
//#UC END# *4ACDF3B90238_497ECC0E0325_impl*
end;//TPrimTreeAttributeSelectForm.IsOldSchoolNone

function TPrimTreeAttributeSelectForm.EntitiesenAttributeGetTarget(aControl: TComponent;
  aX: Integer;
  aY: Integer;
  out theTarget: IUnknown): Boolean;
//#UC START# *4F88602F0276_497ECC0E0325_var*
//#UC END# *4F88602F0276_497ECC0E0325_var*
begin
//#UC START# *4F88602F0276_497ECC0E0325_impl*
 // Это нужно для того, чтобы в логических операциях вызывались OnContextTest
 Result := True;
 // Отдавать нужно обязательно так, поэтому что IInterface может умереть не
 // зависимо от IvcmEntityForm
 theTarget := (Self.as_IvcmEntityForm);
//#UC END# *4F88602F0276_497ECC0E0325_impl*
end;//TPrimTreeAttributeSelectForm.EntitiesenAttributeGetTarget

procedure TPrimTreeAttributeSelectForm.Updated;
//#UC START# *48FF6D200201_497ECC0E0325_var*
//#UC END# *48FF6D200201_497ECC0E0325_var*
begin
//#UC START# *48FF6D200201_497ECC0E0325_impl*
 SendContextChangeMessage;
//#UC END# *48FF6D200201_497ECC0E0325_impl*
end;//TPrimTreeAttributeSelectForm.Updated

procedure TPrimTreeAttributeSelectForm.AttributeTree_ExternalCharPressed_Execute(const aChar: Il3CString);
//#UC START# *4AE831FA00F9_497ECC0E0325exec_var*
//#UC END# *4AE831FA00F9_497ECC0E0325exec_var*
begin
//#UC START# *4AE831FA00F9_497ECC0E0325exec_impl*
 if (l3Len(aChar) > 0) then
  AttributeTreeNewCharPressed(l3Char(aChar, 0));
//#UC END# *4AE831FA00F9_497ECC0E0325exec_impl*
end;//TPrimTreeAttributeSelectForm.AttributeTree_ExternalCharPressed_Execute

procedure TPrimTreeAttributeSelectForm.AttributeTree_ExternalCharPressed(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IAttributeTree_ExternalCharPressed_Params) do
  AttributeTree_ExternalCharPressed_Execute(Char);
end;

procedure TPrimTreeAttributeSelectForm.AttributeTree_SetCurrent_Execute(const aNode: Il3SimpleNode;
  aExpand: Boolean = false);
//#UC START# *4AE8703B02A2_497ECC0E0325exec_var*
//#UC END# *4AE8703B02A2_497ECC0E0325exec_var*
begin
//#UC START# *4AE8703B02A2_497ECC0E0325exec_impl*
 if (UserType <> astOneLevel) then
  SetCurrentNode(aNode, aExpand);
//#UC END# *4AE8703B02A2_497ECC0E0325exec_impl*
end;//TPrimTreeAttributeSelectForm.AttributeTree_SetCurrent_Execute

procedure TPrimTreeAttributeSelectForm.AttributeTree_SetCurrent(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IAttributeTree_SetCurrent_Params) do
  AttributeTree_SetCurrent_Execute(Node, Expand);
end;

procedure TPrimTreeAttributeSelectForm.AttributeTree_DropAllLogicSelection_Execute(aDropSelection: Boolean;
  aNotifyMultipleChanges: Boolean = false;
  SetToTop: Boolean = True);
//#UC START# *4AE870DD01D0_497ECC0E0325exec_var*
//#UC END# *4AE870DD01D0_497ECC0E0325exec_var*
begin
//#UC START# *4AE870DD01D0_497ECC0E0325exec_impl*
 if (UserType <> astOneLevel) then
 begin
  ContextFilter.Active := False;
  ContextFilter.Context := nil;
  SendContextChangeMessage;
  DropAllLogicSelection(aDropSelection);
  if SetToTop then
   AttributeTree.Current := 0;
  if aNotifyMultipleChanges then
   NotifyMultipleChanges;
 end;//UserType <> astOneLevel
//#UC END# *4AE870DD01D0_497ECC0E0325exec_impl*
end;//TPrimTreeAttributeSelectForm.AttributeTree_DropAllLogicSelection_Execute

procedure TPrimTreeAttributeSelectForm.AttributeTree_DropAllLogicSelection(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IAttributeTree_DropAllLogicSelection_Params) do
  AttributeTree_DropAllLogicSelection_Execute(DropSelection, NotifyMultipleChanges, SetToTop);
end;

function TPrimTreeAttributeSelectForm.SearchParameters_IsQueryEmpty_Execute: Boolean;
//#UC START# *4AE879D00143_497ECC0E0325exec_var*
var
 l_Node: INodeBase;
//#UC END# *4AE879D00143_497ECC0E0325exec_var*
begin
//#UC START# *4AE879D00143_497ECC0E0325exec_impl*
 if Supports(AttributeTree.TreeStruct.RootNode, INodeBase, l_Node) then
  Result := not HasAnyChildOperation(l_Node)
 else
  Result := true;
//#UC END# *4AE879D00143_497ECC0E0325exec_impl*
end;//TPrimTreeAttributeSelectForm.SearchParameters_IsQueryEmpty_Execute

procedure TPrimTreeAttributeSelectForm.SearchParameters_IsQueryEmpty(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As ISearchParameters_IsQueryEmpty_Params) do
  ResultValue := SearchParameters_IsQueryEmpty_Execute;
end;

procedure TPrimTreeAttributeSelectForm.AttributeTree_SaveToQuery_Execute(const aQuery: IQuery);
//#UC START# *4AE8913D00A7_497ECC0E0325exec_var*
//#UC END# *4AE8913D00A7_497ECC0E0325exec_var*
begin
//#UC START# *4AE8913D00A7_497ECC0E0325exec_impl*
 if (UserType <> astOneLevel) then
  SaveToQuery(aQuery);
//#UC END# *4AE8913D00A7_497ECC0E0325exec_impl*
end;//TPrimTreeAttributeSelectForm.AttributeTree_SaveToQuery_Execute

procedure TPrimTreeAttributeSelectForm.AttributeTree_SaveToQuery(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IAttributeTree_SaveToQuery_Params) do
  AttributeTree_SaveToQuery_Execute(Query);
end;

procedure TPrimTreeAttributeSelectForm.AttributeTree_Invalidate_Execute(aUserType: Integer);
//#UC START# *4AEAE67802ED_497ECC0E0325exec_var*
//#UC END# *4AEAE67802ED_497ECC0E0325exec_var*
begin
//#UC START# *4AEAE67802ED_497ECC0E0325exec_impl*
 if IsOldSchoolNone or
    (UserType = aUserType) then
  AttributeTree.Invalidate;
//#UC END# *4AEAE67802ED_497ECC0E0325exec_impl*
end;//TPrimTreeAttributeSelectForm.AttributeTree_Invalidate_Execute

procedure TPrimTreeAttributeSelectForm.AttributeTree_Invalidate(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IAttributeTree_Invalidate_Params) do
  AttributeTree_Invalidate_Execute(UserType);
end;

procedure TPrimTreeAttributeSelectForm.Attribute_DefaultAction_Execute(anIndex: Integer = -1);
//#UC START# *4AEAEABF034E_497ECC0E0325exec_var*
//#UC END# *4AEAEABF034E_497ECC0E0325exec_var*
begin
//#UC START# *4AEAEABF034E_497ECC0E0325exec_impl*
 ActivateElement(anIndex, True);
//#UC END# *4AEAEABF034E_497ECC0E0325exec_impl*
end;//TPrimTreeAttributeSelectForm.Attribute_DefaultAction_Execute

procedure TPrimTreeAttributeSelectForm.Attribute_DefaultAction(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IAttribute_DefaultAction_Params) do
  Attribute_DefaultAction_Execute(nIndex);
end;

procedure TPrimTreeAttributeSelectForm.SearchParameters_SetQuery_Execute(const aQuery: IQuery);
//#UC START# *4AEF213001F0_497ECC0E0325exec_var*
//#UC END# *4AEF213001F0_497ECC0E0325exec_var*
begin
//#UC START# *4AEF213001F0_497ECC0E0325exec_impl*
 AttributeTree.Changing;
 try
  if (aQuery <> nil) then
  begin
   DropAllLogicSelection;
   LoadFromQuery(aQuery);
   NotifyMultipleChanges;
  end;//aQuery <> nil
 finally
  AttributeTree.Changed;
 end;//try..finally
//#UC END# *4AEF213001F0_497ECC0E0325exec_impl*
end;//TPrimTreeAttributeSelectForm.SearchParameters_SetQuery_Execute

procedure TPrimTreeAttributeSelectForm.SearchParameters_SetQuery(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As ISearchParameters_SetQuery_Params) do
  SearchParameters_SetQuery_Execute(Query);
end;

procedure TPrimTreeAttributeSelectForm.AttributeTree_DropLogicSelection_Execute(const aNode: INodeBase);
//#UC START# *4AEF38310030_497ECC0E0325exec_var*
//#UC END# *4AEF38310030_497ECC0E0325exec_var*
begin
//#UC START# *4AEF38310030_497ECC0E0325exec_impl*
 if (aNode <> nil) then
 begin
  SetLogicOperation(aNode, loNone);
  AttributeTree.Invalidate;
  InvalidateOtherTree;
 end;//aNode <> nil
//#UC END# *4AEF38310030_497ECC0E0325exec_impl*
end;//TPrimTreeAttributeSelectForm.AttributeTree_DropLogicSelection_Execute

procedure TPrimTreeAttributeSelectForm.AttributeTree_DropLogicSelection(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IAttributeTree_DropLogicSelection_Params) do
  AttributeTree_DropLogicSelection_Execute(Node);
end;

procedure TPrimTreeAttributeSelectForm.AttributeTree_LoadQuery_Execute(const aQuery: IQuery);
//#UC START# *4AEF3857010A_497ECC0E0325exec_var*
//#UC END# *4AEF3857010A_497ECC0E0325exec_var*
begin
//#UC START# *4AEF3857010A_497ECC0E0325exec_impl*
 if (IsOldSchoolNone or (UserType = astFirstLevel)) and
    (aQuery <> nil) then
 begin
  AttributeTree.Changing;
  try
   LoadFromQuery(aQuery);
   InvalidateOtherTree;
   NotifyMultipleChanges;
  finally
   AttributeTree.Changed;
  end;//try..finally
 end;//IsOldSchoolNone
//#UC END# *4AEF3857010A_497ECC0E0325exec_impl*
end;//TPrimTreeAttributeSelectForm.AttributeTree_LoadQuery_Execute

procedure TPrimTreeAttributeSelectForm.AttributeTree_LoadQuery(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IAttributeTree_LoadQuery_Params) do
  AttributeTree_LoadQuery_Execute(Query);
end;

procedure TPrimTreeAttributeSelectForm.AttributeTree_SetOneLevelCurrent_Execute(const aNode: Il3SimpleNode);
//#UC START# *4AEF3871010E_497ECC0E0325exec_var*
//#UC END# *4AEF3871010E_497ECC0E0325exec_var*
begin
//#UC START# *4AEF3871010E_497ECC0E0325exec_impl*
 if (UserType = astOneLevel) and
    (aNode <> nil) then
  SetCurrentNode(aNode);
//#UC END# *4AEF3871010E_497ECC0E0325exec_impl*
end;//TPrimTreeAttributeSelectForm.AttributeTree_SetOneLevelCurrent_Execute

procedure TPrimTreeAttributeSelectForm.AttributeTree_SetOneLevelCurrent(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IAttributeTree_SetOneLevelCurrent_Params) do
  AttributeTree_SetOneLevelCurrent_Execute(Node);
end;

procedure TPrimTreeAttributeSelectForm.Context_SetContext_Execute(const aState: InscContextFilterState);
//#UC START# *4AEF38920247_497ECC0E0325exec_var*
//#UC END# *4AEF38920247_497ECC0E0325exec_var*
begin
//#UC START# *4AEF38920247_497ECC0E0325exec_impl*
 if (aState <> nil) then
 begin
  ContextFilter.BeginAssignState;
  try
   ContextFilter.AssignState(aState);
   f_NeedRefilterTree := aState.NeedRefilterTree;
   try
    DoContextFilterChange(ContextFilter);
   finally
    f_NeedRefilterTree := False;
   end;//try..finally
  finally
   ContextFilter.EndAssignState;
  end;//try..finally
 end//aState <> nil 
 else
  Assert(False);
//#UC END# *4AEF38920247_497ECC0E0325exec_impl*
end;//TPrimTreeAttributeSelectForm.Context_SetContext_Execute

procedure TPrimTreeAttributeSelectForm.Context_SetContext(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IContext_SetContext_Params) do
  Context_SetContext_Execute(State);
end;

procedure TPrimTreeAttributeSelectForm.AttributeTree_SetRoot_Execute(const aTag: Il3CString);
//#UC START# *4AF3EBC001C4_497ECC0E0325exec_var*
//#UC END# *4AF3EBC001C4_497ECC0E0325exec_var*
begin
//#UC START# *4AF3EBC001C4_497ECC0E0325exec_impl*
 case UserType of
  astNone:
   SetRootForFullForm(aTag);
  astFirstLevel:
   SetRootForFirstLevelForm(aTag);
  astOneLevel:
   ;
  astTaxesPublishSearch:
  begin
   SetRootForFullForm(aTag);
   //SetFilter(ns_ftTrimLeaf);
  end;//astTaxesPublishSearch
 end;//case UserType
 NotifyMultipleChanges;
//#UC END# *4AF3EBC001C4_497ECC0E0325exec_impl*
end;//TPrimTreeAttributeSelectForm.AttributeTree_SetRoot_Execute

procedure TPrimTreeAttributeSelectForm.AttributeTree_SetRoot(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IAttributeTree_SetRoot_Params) do
  AttributeTree_SetRoot_Execute(Tag);
end;

procedure TPrimTreeAttributeSelectForm.AttributeTree_ChangeRoot_Execute(const aTag: Il3CString;
  const aRoot: Il3SimpleNode;
  const aCurrent: Il3SimpleNode);
//#UC START# *4AF3FE7D0138_497ECC0E0325exec_var*
//#UC END# *4AF3FE7D0138_497ECC0E0325exec_var*
begin
//#UC START# *4AF3FE7D0138_497ECC0E0325exec_impl*
 if (UserType = astOneLevel) then
 begin
  if Assigned(aCurrent) then
  begin
   AttributeTree.Changing;
   try
    AttributeTree.TreeStruct := TnsAttrBranchStruct.Make(aCurrent As INodeBase,
                                                         aTag,
                                                         AttributeTree.ShowRoot);
    if AttributeTree.TreeStruct.RootNode <> nil then
     CCaption := l3CStr(AttributeTree.TreeStruct.RootNode);
    if Assigned(aRoot) then
     GetRootInfo.Root := aRoot As INodeBase;
   finally
    AttributeTree.Changed;
   end;//try..finally
  end//Assigned(aCurrent)
  else
   AttributeTree.TreeStruct := Tl3Tree.Make;
 end;//UserType = astOneLevel
//#UC END# *4AF3FE7D0138_497ECC0E0325exec_impl*
end;//TPrimTreeAttributeSelectForm.AttributeTree_ChangeRoot_Execute

procedure TPrimTreeAttributeSelectForm.AttributeTree_ChangeRoot(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IAttributeTree_ChangeRoot_Params) do
  AttributeTree_ChangeRoot_Execute(Tag, Root, Current);
end;

procedure TPrimTreeAttributeSelectForm.Context_SyncContextParams_Execute(aAdditionalFilter: TnsFilterType);
//#UC START# *4AF40A0E01D3_497ECC0E0325exec_var*
//#UC END# *4AF40A0E01D3_497ECC0E0325exec_var*
begin
//#UC START# *4AF40A0E01D3_497ECC0E0325exec_impl*
 SetFilter(aAdditionalFilter);
//#UC END# *4AF40A0E01D3_497ECC0E0325exec_impl*
end;//TPrimTreeAttributeSelectForm.Context_SyncContextParams_Execute

procedure TPrimTreeAttributeSelectForm.Context_SyncContextParams(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IContext_SyncContextParams_Params) do
  Context_SyncContextParams_Execute(AdditionalFilter);
end;

procedure TPrimTreeAttributeSelectForm.AttributeTree_AddNodeIfEmpty_Execute;
//#UC START# *4AF8604B021E_497ECC0E0325exec_var*
Var
 l_Root,
 l_Node,
 l_FirstChild,
 l_NextNode : INodeBase;
//#UC END# *4AF8604B021E_497ECC0E0325exec_var*
begin
//#UC START# *4AF8604B021E_497ECC0E0325exec_impl*
 try
  if (UserType <> astFirstLevel) and
     Supports(AttributeTree.GetCurrentNode, INodeBase, l_Node) and

     (((UserType <> astOneLevel) and
      Supports(AttributeTree.TreeStruct.RootNode, INodeBase, l_Root) and
      not HasAnyChildOperation(l_Root)) or

     ((UserType = astOneLevel) and
      not HasAnyChildOperation(GetRootInfo.Root))) then
  begin
   if not l_Node.HasFilteredChildren then
    FormLogicOperation(l_Node, loOr)
   else
   begin
    //l_Node.SetAllFlag(cOrBitFlag, True); - почему-то устанавливает флаг для
    //_всех_ нод дерева, а не только для отфильтрованых
    l_Node.GetFirstChild(l_FirstChild);
    if l_FirstChild <> nil then
    begin
     while l_FirstChild <> nil do
     begin
      l_FirstChild.SetFlag(cOrBitFlag, True);
      l_FirstChild.GetNext(l_NextNode);
      l_FirstChild := l_NextNode;
     end;
     NotifyOperationChange(l_Node, loNone, loOr);
    end;
   end;

  end;
 finally
  l_Root := nil;
  l_Node := nil;
 end;
 AttributeTree.Invalidate;
 InvalidateOtherTree;
//#UC END# *4AF8604B021E_497ECC0E0325exec_impl*
end;//TPrimTreeAttributeSelectForm.AttributeTree_AddNodeIfEmpty_Execute

procedure TPrimTreeAttributeSelectForm.AttributeTree_AddNodeIfEmpty(const aParams: IvcmExecuteParams);
begin
 AttributeTree_AddNodeIfEmpty_Execute;
end;

procedure TPrimTreeAttributeSelectForm.SearchParameters_ClearQuery_Execute;
//#UC START# *4AF92B09017F_497ECC0E0325exec_var*
//#UC END# *4AF92B09017F_497ECC0E0325exec_var*
begin
//#UC START# *4AF92B09017F_497ECC0E0325exec_impl*
 // - ничего не делаем
//#UC END# *4AF92B09017F_497ECC0E0325exec_impl*
end;//TPrimTreeAttributeSelectForm.SearchParameters_ClearQuery_Execute

procedure TPrimTreeAttributeSelectForm.SearchParameters_ClearQuery(const aParams: IvcmExecuteParams);
begin
 SearchParameters_ClearQuery_Execute;
end;

procedure TPrimTreeAttributeSelectForm.Folder_FindFirstSelected_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C2B1B9100B5_497ECC0E0325test_var*
var
 l_Node: INodeBase;
//#UC END# *4C2B1B9100B5_497ECC0E0325test_var*
begin
//#UC START# *4C2B1B9100B5_497ECC0E0325test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := Supports(AttributeTree.GetCurrentNode,
  INodeBase, l_Node) and HasAnyChildOperation(l_Node);
//#UC END# *4C2B1B9100B5_497ECC0E0325test_impl*
end;//TPrimTreeAttributeSelectForm.Folder_FindFirstSelected_Test

procedure TPrimTreeAttributeSelectForm.Folder_FindFirstSelected_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C2B1B9100B5_497ECC0E0325exec_var*
var
 l_l3Node: Il3SimpleNode;
//#UC END# *4C2B1B9100B5_497ECC0E0325exec_var*
begin
//#UC START# *4C2B1B9100B5_497ECC0E0325exec_impl*
 case UserType of
  astNone,
  astTaxesPublishSearch:
   nsSetCurrentFirstSelected(AttributeTree, AttributeTree.GetCurrentNode);
  astFirstLevel:
  begin
   l_l3Node := nsGetFirstSelectedChild(AttributeTree.GetCurrentNode);
   try
    op_AttributeTree_SetCurrent.Call(Aggregate, l_l3Node);
   finally
    l_l3Node := nil;
   end;//try..finally
  end;//astFirstLevel
  astOneLevel:
   ;
 end;//case UserType of
//#UC END# *4C2B1B9100B5_497ECC0E0325exec_impl*
end;//TPrimTreeAttributeSelectForm.Folder_FindFirstSelected_Execute

procedure TPrimTreeAttributeSelectForm.SignalDataSourceChanged(const anOld : IvcmViewAreaController;
 const aDsNew : IvcmViewAreaController);
begin
 inherited;
 if (aDsNew = nil) then
 begin
  dsTreeAttributeSelect := nil;
 end//aDsNew = nil
 else
 begin
  Supports(aDsNew, IdsTreeAttributeSelect, dsTreeAttributeSelect);
 end;//aDsNew = nil
end;

procedure TPrimTreeAttributeSelectForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_AttributeTree, nil);
  PublishFormEntity(en_SearchParameters, nil);
  PublishFormEntity(en_Attribute, EntitiesenAttributeGetTarget);
  PublishFormEntity(en_Context, nil);
  PublishFormEntity(en_Folder, nil);
  PublishOpWithResult(en_AttributeTree, op_ExternalCharPressed, AttributeTree_ExternalCharPressed, nil, nil);
  PublishOpWithResult(en_AttributeTree, op_SetCurrent, AttributeTree_SetCurrent, nil, nil);
  PublishOpWithResult(en_AttributeTree, op_DropAllLogicSelection, AttributeTree_DropAllLogicSelection, nil, nil);
  PublishOpWithResult(en_SearchParameters, op_IsQueryEmpty, SearchParameters_IsQueryEmpty, nil, nil);
  PublishOpWithResult(en_AttributeTree, op_SaveToQuery, AttributeTree_SaveToQuery, nil, nil);
  PublishOpWithResult(en_AttributeTree, op_Invalidate, AttributeTree_Invalidate, nil, nil);
  PublishOpWithResult(en_Attribute, op_DefaultAction, Attribute_DefaultAction, nil, nil);
  PublishOpWithResult(en_SearchParameters, op_SetQuery, SearchParameters_SetQuery, nil, nil);
  PublishOpWithResult(en_AttributeTree, op_DropLogicSelection, AttributeTree_DropLogicSelection, nil, nil);
  PublishOpWithResult(en_AttributeTree, op_LoadQuery, AttributeTree_LoadQuery, nil, nil);
  PublishOpWithResult(en_AttributeTree, op_SetOneLevelCurrent, AttributeTree_SetOneLevelCurrent, nil, nil);
  PublishOpWithResult(en_Context, op_SetContext, Context_SetContext, nil, nil);
  PublishOpWithResult(en_AttributeTree, op_SetRoot, AttributeTree_SetRoot, nil, nil);
  PublishOpWithResult(en_AttributeTree, op_ChangeRoot, AttributeTree_ChangeRoot, nil, nil);
  PublishOpWithResult(en_Context, op_SyncContextParams, Context_SyncContextParams, nil, nil);
  PublishOpWithResult(en_AttributeTree, op_AddNodeIfEmpty, AttributeTree_AddNodeIfEmpty, nil, nil);
  PublishOpWithResult(en_SearchParameters, op_ClearQuery, SearchParameters_ClearQuery, nil, nil);
  PublishOp(en_Folder, op_FindFirstSelected, Folder_FindFirstSelected_Execute, Folder_FindFirstSelected_Test, nil);
  ShowInContextMenu(en_Folder, op_FindFirstSelected, true);
  ShowInToolbar(en_Folder, op_FindFirstSelected, false);
 end;//with Entities.Entities
 AddUserTypeExclude(astOneLevelName, en_AttributeTree, op_ExternalCharPressed, false);
 AddUserTypeExclude(astOneLevelName, en_Folder, op_FindFirstSelected, false);
end;

procedure TPrimTreeAttributeSelectForm.MakeControls;
begin
 inherited;
 with AddUsertype(astNoneName,
  str_astNoneCaption,
  str_astNoneCaption,
  true,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(astNoneName
 with AddUsertype(astOneLevelName,
  str_astOneLevelCaption,
  str_astOneLevelCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(astOneLevelName
 with AddUsertype(astFirstLevelName,
  str_astFirstLevelCaption,
  str_astFirstLevelCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(astFirstLevelName
 with AddUsertype(astTaxesPublishSearchName,
  str_astTaxesPublishSearchCaption,
  str_astTaxesPublishSearchCaption,
  false,
  -1,
  -1,
  astNoneName,
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(astTaxesPublishSearchName
end;

initialization
// Регистрация Tkw_PrimTreeAttributeSelect_Control_ContextFilter
 Tkw_PrimTreeAttributeSelect_Control_ContextFilter.Register('контрол::ContextFilter', TnscContextFilter);
// Регистрация Tkw_PrimTreeAttributeSelect_Control_ContextFilter_Push
 Tkw_PrimTreeAttributeSelect_Control_ContextFilter_Push.Register('контрол::ContextFilter:push');
// Регистрация Tkw_PrimTreeAttributeSelect_Control_AttributeTree
 Tkw_PrimTreeAttributeSelect_Control_AttributeTree.Register('контрол::AttributeTree', TnscTreeView);
// Регистрация Tkw_PrimTreeAttributeSelect_Control_AttributeTree_Push
 Tkw_PrimTreeAttributeSelect_Control_AttributeTree_Push.Register('контрол::AttributeTree:push');
// Инициализация str_astNoneCaption
 str_astNoneCaption.Init;
// Инициализация str_astOneLevelCaption
 str_astOneLevelCaption.Init;
// Инициализация str_astFirstLevelCaption
 str_astFirstLevelCaption.Init;
// Инициализация str_astTaxesPublishSearchCaption
 str_astTaxesPublishSearchCaption.Init;

end.