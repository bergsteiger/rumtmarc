unit PrimOldSituationSearch_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimOldSituationSearch_Form.pas"
// Начат: 28.10.2009 20:45
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMContainer::Class>> F1 Основные прецеденты::Search::View::Search::PrimOldSituationSearch
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
  SearchUnit,
  nsQueryInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmContainerForm
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  
  {$If defined(Nemesis)}
  ,
  nscContextFilter
  {$IfEnd} //Nemesis
  ,
  SearchLite_Strange_Controls,
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
  PrimOldSituationSearch_cutOldKeyWord_UserType,
  l3TreeInterfaces
  {$If defined(Nemesis)}
  ,
  nscNewInterfaces
  {$IfEnd} //Nemesis
  ,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TPrimOldSituationSearchForm = {abstract form} class(TvcmContainerForm)
 private
 // private fields
   f_ContextFilter : TnscContextFilter;
    {* Поле для свойства ContextFilter}
 protected
  procedure InitEntities; override;
  procedure MakeControls; override;
 protected
 // property methods
   function pm_GetContextFilter: TnscContextFilter;
 protected
 // realized methods
   function SearchParameters_IsQueryEmpty_Execute: Boolean;
   procedure SearchParameters_IsQueryEmpty(const aParams: IvcmExecuteParams);
   function SearchParameters_GetQuery_Execute(aIgnoreError: Boolean = false): TnsQueryInfo;
   procedure SearchParameters_GetQuery(const aParams: IvcmExecuteParams);
   function SearchParameters_IsQuerySaved_Execute: Boolean;
   procedure SearchParameters_IsQuerySaved(const aParams: IvcmExecuteParams);
   procedure SearchParameters_SetQuery_Execute(const aQuery: IQuery);
   procedure SearchParameters_SetQuery(const aParams: IvcmExecuteParams);
   procedure ContextParams_ContextChanged_Execute(const aContextState: InscContextFilterState;
    const aContextTarget: Il3ContextFilterTarget);
   procedure ContextParams_ContextChanged(const aParams: IvcmExecuteParams);
   procedure SearchParameters_ClearQuery_Execute;
   procedure SearchParameters_ClearQuery(const aParams: IvcmExecuteParams);
 protected
 // overridden protected methods
   procedure ClearFields; override;
 protected
 // protected fields
   f_FormState : InsQueryFormState;
 protected
 // protected methods
   function FillQuery: IQuery; virtual; abstract;
 public
 // public properties
   property ContextFilter: TnscContextFilter
     read pm_GetContextFilter;
 end;//TPrimOldSituationSearchForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  nsQueryUtils
  {$If not defined(NoVCM)}
  ,
  vcmBase
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  l3MessageID
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
   { Локализуемые строки cutOldKeyWordLocalConstants }
  str_cutOldKeyWordCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'cutOldKeyWordCaption'; rValue : 'Поиск по ситуации');
   { Заголовок пользовательского типа "Поиск по ситуации" }
  str_cutOldKeyWordSettingsCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'cutOldKeyWordSettingsCaption'; rValue : 'Поиск: По ситуации (Преемственный)');
   { Заголовок пользовательского типа "Поиск по ситуации" для настройки панелей инструментов }

type
  Tkw_PrimOldSituationSearch_Control_ContextFilter = class(TtfwControlString)
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
  end;//Tkw_PrimOldSituationSearch_Control_ContextFilter

// start class Tkw_PrimOldSituationSearch_Control_ContextFilter

{$If not defined(NoScripts)}
function Tkw_PrimOldSituationSearch_Control_ContextFilter.GetString: AnsiString;
 {-}
begin
 Result := 'ContextFilter';
end;//Tkw_PrimOldSituationSearch_Control_ContextFilter.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimOldSituationSearch_Control_ContextFilter_Push = class(TkwBynameControlPush)
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
  end;//Tkw_PrimOldSituationSearch_Control_ContextFilter_Push

// start class Tkw_PrimOldSituationSearch_Control_ContextFilter_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimOldSituationSearch_Control_ContextFilter_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('ContextFilter');
 inherited;
end;//Tkw_PrimOldSituationSearch_Control_ContextFilter_Push.DoDoIt
{$IfEnd} //not NoScripts

function TPrimOldSituationSearchForm.pm_GetContextFilter: TnscContextFilter;
begin
 if (f_ContextFilter = nil) then
  f_ContextFilter := FindComponent('ContextFilter') As TnscContextFilter;
 Result := f_ContextFilter;
end;

function TPrimOldSituationSearchForm.SearchParameters_IsQueryEmpty_Execute: Boolean;
//#UC START# *4AE879D00143_4AE8831A02A5exec_var*
//#UC END# *4AE879D00143_4AE8831A02A5exec_var*
begin
//#UC START# *4AE879D00143_4AE8831A02A5exec_impl*
 Result := false;
//#UC END# *4AE879D00143_4AE8831A02A5exec_impl*
end;//TPrimOldSituationSearchForm.SearchParameters_IsQueryEmpty_Execute

procedure TPrimOldSituationSearchForm.SearchParameters_IsQueryEmpty(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As ISearchParameters_IsQueryEmpty_Params) do
  ResultValue := SearchParameters_IsQueryEmpty_Execute;
end;

function TPrimOldSituationSearchForm.SearchParameters_GetQuery_Execute(aIgnoreError: Boolean = false): TnsQueryInfo;
//#UC START# *4AE884E803AA_4AE8831A02A5exec_var*
//#UC END# *4AE884E803AA_4AE8831A02A5exec_var*
begin
//#UC START# *4AE884E803AA_4AE8831A02A5exec_impl*
 FillChar(Result, SizeOf(Result), 0);
 if (f_FormState.Query <> nil) then
  f_FormState.Query.Clear;
 Result.rQuery := FillQuery;
 if (f_FormState.Filter <> nil) then
  Result.rFilter := f_FormState.Filter
 else
  Result.rAskFilters := true; 
//#UC END# *4AE884E803AA_4AE8831A02A5exec_impl*
end;//TPrimOldSituationSearchForm.SearchParameters_GetQuery_Execute

procedure TPrimOldSituationSearchForm.SearchParameters_GetQuery(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As ISearchParameters_GetQuery_Params) do
  ResultValue := SearchParameters_GetQuery_Execute(IgnoreError);
end;

function TPrimOldSituationSearchForm.SearchParameters_IsQuerySaved_Execute: Boolean;
//#UC START# *4AE8A577027D_4AE8831A02A5exec_var*
//#UC END# *4AE8A577027D_4AE8831A02A5exec_var*
begin
//#UC START# *4AE8A577027D_4AE8831A02A5exec_impl*
 Result := nsIsQuerySaved(f_FormState.Query);
//#UC END# *4AE8A577027D_4AE8831A02A5exec_impl*
end;//TPrimOldSituationSearchForm.SearchParameters_IsQuerySaved_Execute

procedure TPrimOldSituationSearchForm.SearchParameters_IsQuerySaved(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As ISearchParameters_IsQuerySaved_Params) do
  ResultValue := SearchParameters_IsQuerySaved_Execute;
end;

procedure TPrimOldSituationSearchForm.SearchParameters_SetQuery_Execute(const aQuery: IQuery);
//#UC START# *4AEF213001F0_4AE8831A02A5exec_var*
//#UC END# *4AEF213001F0_4AE8831A02A5exec_var*
begin
//#UC START# *4AEF213001F0_4AE8831A02A5exec_impl*
 f_FormState.Query := nil;

 // Очищаем текущие выбранные значения
 Op_AttributeTree_DropAllLogicSelection.Call(Aggregate, true, true);

 if (aQuery <> nil) then
 begin
  f_FormState.Query := aQuery;
  op_AttributeTree_LoadQuery.Call(Aggregate, f_FormState.Query);
 end;//aQuery <> nil
//#UC END# *4AEF213001F0_4AE8831A02A5exec_impl*
end;//TPrimOldSituationSearchForm.SearchParameters_SetQuery_Execute

procedure TPrimOldSituationSearchForm.SearchParameters_SetQuery(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As ISearchParameters_SetQuery_Params) do
  SearchParameters_SetQuery_Execute(Query);
end;

procedure TPrimOldSituationSearchForm.ContextParams_ContextChanged_Execute(const aContextState: InscContextFilterState;
  const aContextTarget: Il3ContextFilterTarget);
//#UC START# *4AF4008101F4_4AE8831A02A5exec_var*
//#UC END# *4AF4008101F4_4AE8831A02A5exec_var*
begin
//#UC START# *4AF4008101F4_4AE8831A02A5exec_impl*
 ContextFilter.AssignState(aContextState);
 Assert(Assigned(aContextTarget));
 ContextFilter.UpdateIsContextWrong(aContextTarget);
//#UC END# *4AF4008101F4_4AE8831A02A5exec_impl*
end;//TPrimOldSituationSearchForm.ContextParams_ContextChanged_Execute

procedure TPrimOldSituationSearchForm.ContextParams_ContextChanged(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IContextParams_ContextChanged_Params) do
  ContextParams_ContextChanged_Execute(ContextState, ContextTarget);
end;

procedure TPrimOldSituationSearchForm.SearchParameters_ClearQuery_Execute;
//#UC START# *4AF92B09017F_4AE8831A02A5exec_var*
//#UC END# *4AF92B09017F_4AE8831A02A5exec_var*
begin
//#UC START# *4AF92B09017F_4AE8831A02A5exec_impl*
 Op_AttributeTree_DropAllLogicSelection.Call(Aggregate, true, true);
 // Очищаем поле фильтра
 f_FormState.Filter := nil;
//#UC END# *4AF92B09017F_4AE8831A02A5exec_impl*
end;//TPrimOldSituationSearchForm.SearchParameters_ClearQuery_Execute

procedure TPrimOldSituationSearchForm.SearchParameters_ClearQuery(const aParams: IvcmExecuteParams);
begin
 SearchParameters_ClearQuery_Execute;
end;

procedure TPrimOldSituationSearchForm.ClearFields;
 {-}
begin
 f_FormState := nil;
 inherited;
end;//TPrimOldSituationSearchForm.ClearFields

procedure TPrimOldSituationSearchForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_SearchParameters, nil);
  PublishFormEntity(en_ContextParams, nil);
  PublishOpWithResult(en_SearchParameters, op_IsQueryEmpty, SearchParameters_IsQueryEmpty, nil, nil);
  PublishOpWithResult(en_SearchParameters, op_GetQuery, SearchParameters_GetQuery, nil, nil);
  PublishOpWithResult(en_SearchParameters, op_IsQuerySaved, SearchParameters_IsQuerySaved, nil, nil);
  PublishOpWithResult(en_SearchParameters, op_SetQuery, SearchParameters_SetQuery, nil, nil);
  PublishOpWithResult(en_ContextParams, op_ContextChanged, ContextParams_ContextChanged, nil, nil);
  PublishOpWithResult(en_SearchParameters, op_ClearQuery, SearchParameters_ClearQuery, nil, nil);
 end;//with Entities.Entities
end;

procedure TPrimOldSituationSearchForm.MakeControls;
begin
 inherited;
 with AddUsertype(cutOldKeyWordName,
  str_cutOldKeyWordCaption,
  str_cutOldKeyWordSettingsCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(cutOldKeyWordName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimOldSituationSearch_Control_ContextFilter
 Tkw_PrimOldSituationSearch_Control_ContextFilter.Register('контрол::ContextFilter', TnscContextFilter);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimOldSituationSearch_Control_ContextFilter_Push
 Tkw_PrimOldSituationSearch_Control_ContextFilter_Push.Register('контрол::ContextFilter:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_cutOldKeyWordCaption
 str_cutOldKeyWordCaption.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_cutOldKeyWordSettingsCaption
 str_cutOldKeyWordSettingsCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.