unit NOT_FINISHED_nsBaseSearcher;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Search$Lib"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/Search/NOT_FINISHED_nsBaseSearcher.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Оболочка Без Прецедентов::F1 Without Usecases::Search$Lib::BaseSearch::TnsBaseSearcher
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  DataAdapterInterfaces,
  BaseSearchInterfaces,
  PrimBaseSearchInterfaces,
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
  
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TnsBaseSearcher = class(, InsBaseSearchContextProvider, InsBaseSearchResultProcessor, InsBaseSearchDataReadyChecker, InsMistakesCorrector, InsBaseSearchQueryDataProcessor, InsContextSearchHistoryNotifier, InsBaseSearcher, InsBaseSearcherWindowData, InsDataAdapterListener)
 protected
 // realized methods
   procedure RepairMistakes;
   function pm_GetContext: Il3CString;
   procedure CheckLocalDataReady;
   procedure SearchResultEmpty(TryFullList: Boolean);
   procedure SearchResultExists;
   procedure AnotherSearchSuccessed;
   procedure Correct(const aCorrectedContext: Il3StringsEx;
    const aMistakesList: Il3StringsEx);
   procedure SetDataFromQuery(const aQuery: IUnknown);
   procedure RequestFind;
   procedure HistoryChanged(const aNewHistory: IvcmStrings);
   procedure ContextSearched;
   procedure ShowWindowByUser(OpenKind: TnsBaseSearchOpenKind);
   procedure Find;
   function Get_ContextKind: TnsBaseSearchKind;
   function Get_AvailableClasses: TnsBaseSearchClasses;
   function Get_ClassesAnywayDisabled: Boolean;
   function ClassName(const aClass: TnsBaseSearchClass): Il3CString;
   function Get_AllowSearchInTitles: Boolean;
   procedure ApplyCurrentExample;
   function Get_FindEnabled: Boolean;
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
   procedure Updated;
     {* данные адаптера были обновлен }
   function pm_GetFindBackSupported: Boolean;
   function pm_GetFindBackEnabled: Boolean;
   procedure FindBack;
     {* Искать назад }
   function pm_GetFragmentsCountSuffix: Il3CString;
   procedure RequestCheckFragmentsCount;
   procedure RequestCheckFindBack;
   function MakePromptTree: Il3SimpleTree;
   procedure AddPresentation(const aPresentation: InsBaseSearchPresentation);
   function pm_GetPresentation: InsBaseSearchPresentation;
   procedure StoreActiveClass;
   procedure AnotherSearchCancelled;
   procedure DropActiveClass;
     {* http://mdp.garant.ru/pages/viewpage.action?pageId=269069309&focusedCommentId=296624258#comment-296624258 }
   function Get_ActiveClassForSaveState: TnsBaseSearchClass;
 public
 // realized methods
   procedure RemovePresentation(const aPresentation: InsBaseSearchPresentation);
   function ValidateBaseSearchForm(const aForm: IvcmEntityForm): Boolean;
     {* Проверяет, что форма БП "той системы", т.е. встроена в то же главное окно, что и сам Searcher }
 end;//TnsBaseSearcher
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  nsFiltersContainer,
  Common_FormDefinitions_Controls
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TnsBaseSearcher

procedure TnsBaseSearcher.RepairMistakes;
//#UC START# *49513746034D_4AC226030181_var*
//#UC END# *49513746034D_4AC226030181_var*
begin
//#UC START# *49513746034D_4AC226030181_impl*
 !!! Needs to be implemented !!!
//#UC END# *49513746034D_4AC226030181_impl*
end;//TnsBaseSearcher.RepairMistakes

function TnsBaseSearcher.pm_GetContext: Il3CString;
//#UC START# *4951375B0052_4AC226030181get_var*
//#UC END# *4951375B0052_4AC226030181get_var*
begin
//#UC START# *4951375B0052_4AC226030181get_impl*
 !!! Needs to be implemented !!!
//#UC END# *4951375B0052_4AC226030181get_impl*
end;//TnsBaseSearcher.pm_GetContext

procedure TnsBaseSearcher.CheckLocalDataReady;
//#UC START# *496B4F6D02B5_4AC226030181_var*
//#UC END# *496B4F6D02B5_4AC226030181_var*
begin
//#UC START# *496B4F6D02B5_4AC226030181_impl*
 !!! Needs to be implemented !!!
//#UC END# *496B4F6D02B5_4AC226030181_impl*
end;//TnsBaseSearcher.CheckLocalDataReady

procedure TnsBaseSearcher.SearchResultEmpty(TryFullList: Boolean);
//#UC START# *496B4FAA02FA_4AC226030181_var*
//#UC END# *496B4FAA02FA_4AC226030181_var*
begin
//#UC START# *496B4FAA02FA_4AC226030181_impl*
 !!! Needs to be implemented !!!
//#UC END# *496B4FAA02FA_4AC226030181_impl*
end;//TnsBaseSearcher.SearchResultEmpty

procedure TnsBaseSearcher.SearchResultExists;
//#UC START# *496B4FC70065_4AC226030181_var*
//#UC END# *496B4FC70065_4AC226030181_var*
begin
//#UC START# *496B4FC70065_4AC226030181_impl*
 !!! Needs to be implemented !!!
//#UC END# *496B4FC70065_4AC226030181_impl*
end;//TnsBaseSearcher.SearchResultExists

procedure TnsBaseSearcher.AnotherSearchSuccessed;
//#UC START# *496B4FD20320_4AC226030181_var*
//#UC END# *496B4FD20320_4AC226030181_var*
begin
//#UC START# *496B4FD20320_4AC226030181_impl*
 !!! Needs to be implemented !!!
//#UC END# *496B4FD20320_4AC226030181_impl*
end;//TnsBaseSearcher.AnotherSearchSuccessed

procedure TnsBaseSearcher.Correct(const aCorrectedContext: Il3StringsEx;
  const aMistakesList: Il3StringsEx);
//#UC START# *496B513C0168_4AC226030181_var*
//#UC END# *496B513C0168_4AC226030181_var*
begin
//#UC START# *496B513C0168_4AC226030181_impl*
 !!! Needs to be implemented !!!
//#UC END# *496B513C0168_4AC226030181_impl*
end;//TnsBaseSearcher.Correct

procedure TnsBaseSearcher.SetDataFromQuery(const aQuery: IUnknown);
//#UC START# *496B534B0098_4AC226030181_var*
//#UC END# *496B534B0098_4AC226030181_var*
begin
//#UC START# *496B534B0098_4AC226030181_impl*
 !!! Needs to be implemented !!!
//#UC END# *496B534B0098_4AC226030181_impl*
end;//TnsBaseSearcher.SetDataFromQuery

procedure TnsBaseSearcher.RequestFind;
//#UC START# *496B5356008C_4AC226030181_var*
//#UC END# *496B5356008C_4AC226030181_var*
begin
//#UC START# *496B5356008C_4AC226030181_impl*
 !!! Needs to be implemented !!!
//#UC END# *496B5356008C_4AC226030181_impl*
end;//TnsBaseSearcher.RequestFind

procedure TnsBaseSearcher.HistoryChanged(const aNewHistory: IvcmStrings);
//#UC START# *496B53B70380_4AC226030181_var*
//#UC END# *496B53B70380_4AC226030181_var*
begin
//#UC START# *496B53B70380_4AC226030181_impl*
 !!! Needs to be implemented !!!
//#UC END# *496B53B70380_4AC226030181_impl*
end;//TnsBaseSearcher.HistoryChanged

procedure TnsBaseSearcher.ContextSearched;
//#UC START# *496B53C30337_4AC226030181_var*
//#UC END# *496B53C30337_4AC226030181_var*
begin
//#UC START# *496B53C30337_4AC226030181_impl*
 !!! Needs to be implemented !!!
//#UC END# *496B53C30337_4AC226030181_impl*
end;//TnsBaseSearcher.ContextSearched

procedure TnsBaseSearcher.ShowWindowByUser(OpenKind: TnsBaseSearchOpenKind);
//#UC START# *496B5FE00107_4AC226030181_var*
//#UC END# *496B5FE00107_4AC226030181_var*
begin
//#UC START# *496B5FE00107_4AC226030181_impl*
 !!! Needs to be implemented !!!
//#UC END# *496B5FE00107_4AC226030181_impl*
end;//TnsBaseSearcher.ShowWindowByUser

procedure TnsBaseSearcher.Find;
//#UC START# *496B62A60135_4AC226030181_var*
//#UC END# *496B62A60135_4AC226030181_var*
begin
//#UC START# *496B62A60135_4AC226030181_impl*
 !!! Needs to be implemented !!!
//#UC END# *496B62A60135_4AC226030181_impl*
end;//TnsBaseSearcher.Find

function TnsBaseSearcher.Get_ContextKind: TnsBaseSearchKind;
//#UC START# *496B62BF00A7_4AC226030181get_var*
//#UC END# *496B62BF00A7_4AC226030181get_var*
begin
//#UC START# *496B62BF00A7_4AC226030181get_impl*
 !!! Needs to be implemented !!!
//#UC END# *496B62BF00A7_4AC226030181get_impl*
end;//TnsBaseSearcher.Get_ContextKind

function TnsBaseSearcher.Get_AvailableClasses: TnsBaseSearchClasses;
//#UC START# *496B62E80050_4AC226030181get_var*
//#UC END# *496B62E80050_4AC226030181get_var*
begin
//#UC START# *496B62E80050_4AC226030181get_impl*
 !!! Needs to be implemented !!!
//#UC END# *496B62E80050_4AC226030181get_impl*
end;//TnsBaseSearcher.Get_AvailableClasses

function TnsBaseSearcher.Get_ClassesAnywayDisabled: Boolean;
//#UC START# *496B630301B5_4AC226030181get_var*
//#UC END# *496B630301B5_4AC226030181get_var*
begin
//#UC START# *496B630301B5_4AC226030181get_impl*
 !!! Needs to be implemented !!!
//#UC END# *496B630301B5_4AC226030181get_impl*
end;//TnsBaseSearcher.Get_ClassesAnywayDisabled

function TnsBaseSearcher.ClassName(const aClass: TnsBaseSearchClass): Il3CString;
//#UC START# *496B63130085_4AC226030181_var*
//#UC END# *496B63130085_4AC226030181_var*
begin
//#UC START# *496B63130085_4AC226030181_impl*
 !!! Needs to be implemented !!!
//#UC END# *496B63130085_4AC226030181_impl*
end;//TnsBaseSearcher.ClassName

function TnsBaseSearcher.Get_AllowSearchInTitles: Boolean;
//#UC START# *496B631F01AD_4AC226030181get_var*
//#UC END# *496B631F01AD_4AC226030181get_var*
begin
//#UC START# *496B631F01AD_4AC226030181get_impl*
 !!! Needs to be implemented !!!
//#UC END# *496B631F01AD_4AC226030181get_impl*
end;//TnsBaseSearcher.Get_AllowSearchInTitles

procedure TnsBaseSearcher.ApplyCurrentExample;
//#UC START# *496B632F022D_4AC226030181_var*
//#UC END# *496B632F022D_4AC226030181_var*
begin
//#UC START# *496B632F022D_4AC226030181_impl*
 !!! Needs to be implemented !!!
//#UC END# *496B632F022D_4AC226030181_impl*
end;//TnsBaseSearcher.ApplyCurrentExample

function TnsBaseSearcher.Get_FindEnabled: Boolean;
//#UC START# *496B633D033B_4AC226030181get_var*
//#UC END# *496B633D033B_4AC226030181get_var*
begin
//#UC START# *496B633D033B_4AC226030181get_impl*
 !!! Needs to be implemented !!!
//#UC END# *496B633D033B_4AC226030181get_impl*
end;//TnsBaseSearcher.Get_FindEnabled

function TnsBaseSearcher.pm_GetContext: Il3CString;
//#UC START# *496B636102E7_4AC226030181get_var*
//#UC END# *496B636102E7_4AC226030181get_var*
begin
//#UC START# *496B636102E7_4AC226030181get_impl*
 !!! Needs to be implemented !!!
//#UC END# *496B636102E7_4AC226030181get_impl*
end;//TnsBaseSearcher.pm_GetContext

procedure TnsBaseSearcher.pm_SetContext(const aValue: Il3CString);
//#UC START# *496B636102E7_4AC226030181set_var*
//#UC END# *496B636102E7_4AC226030181set_var*
begin
//#UC START# *496B636102E7_4AC226030181set_impl*
 !!! Needs to be implemented !!!
//#UC END# *496B636102E7_4AC226030181set_impl*
end;//TnsBaseSearcher.pm_SetContext

function TnsBaseSearcher.pm_GetActiveClass: TnsBaseSearchClass;
//#UC START# *496B637C00B7_4AC226030181get_var*
//#UC END# *496B637C00B7_4AC226030181get_var*
begin
//#UC START# *496B637C00B7_4AC226030181get_impl*
 !!! Needs to be implemented !!!
//#UC END# *496B637C00B7_4AC226030181get_impl*
end;//TnsBaseSearcher.pm_GetActiveClass

procedure TnsBaseSearcher.pm_SetActiveClass(const aValue: TnsBaseSearchClass);
//#UC START# *496B637C00B7_4AC226030181set_var*
//#UC END# *496B637C00B7_4AC226030181set_var*
begin
//#UC START# *496B637C00B7_4AC226030181set_impl*
 !!! Needs to be implemented !!!
//#UC END# *496B637C00B7_4AC226030181set_impl*
end;//TnsBaseSearcher.pm_SetActiveClass

function TnsBaseSearcher.pm_GetSearchWindow: InsSearchWindow;
//#UC START# *496B63A602EB_4AC226030181get_var*
//#UC END# *496B63A602EB_4AC226030181get_var*
begin
//#UC START# *496B63A602EB_4AC226030181get_impl*
 !!! Needs to be implemented !!!
//#UC END# *496B63A602EB_4AC226030181get_impl*
end;//TnsBaseSearcher.pm_GetSearchWindow

procedure TnsBaseSearcher.pm_SetSearchWindow(const aValue: InsSearchWindow);
//#UC START# *496B63A602EB_4AC226030181set_var*
//#UC END# *496B63A602EB_4AC226030181set_var*
begin
//#UC START# *496B63A602EB_4AC226030181set_impl*
 !!! Needs to be implemented !!!
//#UC END# *496B63A602EB_4AC226030181set_impl*
end;//TnsBaseSearcher.pm_SetSearchWindow

function TnsBaseSearcher.pm_GetArea: TnsSearchArea;
//#UC START# *496B63BE0309_4AC226030181get_var*
//#UC END# *496B63BE0309_4AC226030181get_var*
begin
//#UC START# *496B63BE0309_4AC226030181get_impl*
 !!! Needs to be implemented !!!
//#UC END# *496B63BE0309_4AC226030181get_impl*
end;//TnsBaseSearcher.pm_GetArea

procedure TnsBaseSearcher.pm_SetArea(aValue: TnsSearchArea);
//#UC START# *496B63BE0309_4AC226030181set_var*
//#UC END# *496B63BE0309_4AC226030181set_var*
begin
//#UC START# *496B63BE0309_4AC226030181set_impl*
 !!! Needs to be implemented !!!
//#UC END# *496B63BE0309_4AC226030181set_impl*
end;//TnsBaseSearcher.pm_SetArea

function TnsBaseSearcher.pm_GetExampleText: Il3CString;
//#UC START# *496B63D40168_4AC226030181get_var*
//#UC END# *496B63D40168_4AC226030181get_var*
begin
//#UC START# *496B63D40168_4AC226030181get_impl*
 !!! Needs to be implemented !!!
//#UC END# *496B63D40168_4AC226030181get_impl*
end;//TnsBaseSearcher.pm_GetExampleText

function TnsBaseSearcher.pm_GetErrorWords: IvcmStrings;
//#UC START# *496B6408019E_4AC226030181get_var*
//#UC END# *496B6408019E_4AC226030181get_var*
begin
//#UC START# *496B6408019E_4AC226030181get_impl*
 !!! Needs to be implemented !!!
//#UC END# *496B6408019E_4AC226030181get_impl*
end;//TnsBaseSearcher.pm_GetErrorWords

procedure TnsBaseSearcher.Updated;
//#UC START# *4991C3CD0077_4AC226030181_var*
//#UC END# *4991C3CD0077_4AC226030181_var*
begin
//#UC START# *4991C3CD0077_4AC226030181_impl*
 !!! Needs to be implemented !!!
//#UC END# *4991C3CD0077_4AC226030181_impl*
end;//TnsBaseSearcher.Updated

function TnsBaseSearcher.pm_GetFindBackSupported: Boolean;
//#UC START# *49FEA2840322_4AC226030181get_var*
//#UC END# *49FEA2840322_4AC226030181get_var*
begin
//#UC START# *49FEA2840322_4AC226030181get_impl*
 !!! Needs to be implemented !!!
//#UC END# *49FEA2840322_4AC226030181get_impl*
end;//TnsBaseSearcher.pm_GetFindBackSupported

function TnsBaseSearcher.pm_GetFindBackEnabled: Boolean;
//#UC START# *49FEA2AE013A_4AC226030181get_var*
//#UC END# *49FEA2AE013A_4AC226030181get_var*
begin
//#UC START# *49FEA2AE013A_4AC226030181get_impl*
 !!! Needs to be implemented !!!
//#UC END# *49FEA2AE013A_4AC226030181get_impl*
end;//TnsBaseSearcher.pm_GetFindBackEnabled

procedure TnsBaseSearcher.FindBack;
//#UC START# *49FEA2CC003F_4AC226030181_var*
//#UC END# *49FEA2CC003F_4AC226030181_var*
begin
//#UC START# *49FEA2CC003F_4AC226030181_impl*
 !!! Needs to be implemented !!!
//#UC END# *49FEA2CC003F_4AC226030181_impl*
end;//TnsBaseSearcher.FindBack

function TnsBaseSearcher.pm_GetFragmentsCountSuffix: Il3CString;
//#UC START# *49FFD84603C6_4AC226030181get_var*
//#UC END# *49FFD84603C6_4AC226030181get_var*
begin
//#UC START# *49FFD84603C6_4AC226030181get_impl*
 !!! Needs to be implemented !!!
//#UC END# *49FFD84603C6_4AC226030181get_impl*
end;//TnsBaseSearcher.pm_GetFragmentsCountSuffix

procedure TnsBaseSearcher.RequestCheckFragmentsCount;
//#UC START# *49FFFE5B033A_4AC226030181_var*
//#UC END# *49FFFE5B033A_4AC226030181_var*
begin
//#UC START# *49FFFE5B033A_4AC226030181_impl*
 !!! Needs to be implemented !!!
//#UC END# *49FFFE5B033A_4AC226030181_impl*
end;//TnsBaseSearcher.RequestCheckFragmentsCount

procedure TnsBaseSearcher.RequestCheckFindBack;
//#UC START# *4A13A97F0211_4AC226030181_var*
//#UC END# *4A13A97F0211_4AC226030181_var*
begin
//#UC START# *4A13A97F0211_4AC226030181_impl*
 !!! Needs to be implemented !!!
//#UC END# *4A13A97F0211_4AC226030181_impl*
end;//TnsBaseSearcher.RequestCheckFindBack

function TnsBaseSearcher.MakePromptTree: Il3SimpleTree;
//#UC START# *4AA4E3FB03C4_4AC226030181_var*
//#UC END# *4AA4E3FB03C4_4AC226030181_var*
begin
//#UC START# *4AA4E3FB03C4_4AC226030181_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AA4E3FB03C4_4AC226030181_impl*
end;//TnsBaseSearcher.MakePromptTree

procedure TnsBaseSearcher.AddPresentation(const aPresentation: InsBaseSearchPresentation);
//#UC START# *4AD5EB9B02C8_4AC226030181_var*
//#UC END# *4AD5EB9B02C8_4AC226030181_var*
begin
//#UC START# *4AD5EB9B02C8_4AC226030181_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AD5EB9B02C8_4AC226030181_impl*
end;//TnsBaseSearcher.AddPresentation

procedure TnsBaseSearcher.RemovePresentation(const aPresentation: InsBaseSearchPresentation);
//#UC START# *4AD5EBB302EA_4AC226030181_var*
//#UC END# *4AD5EBB302EA_4AC226030181_var*
begin
//#UC START# *4AD5EBB302EA_4AC226030181_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AD5EBB302EA_4AC226030181_impl*
end;//TnsBaseSearcher.RemovePresentation

function TnsBaseSearcher.pm_GetPresentation: InsBaseSearchPresentation;
//#UC START# *4AD5EDC703BE_4AC226030181get_var*
//#UC END# *4AD5EDC703BE_4AC226030181get_var*
begin
//#UC START# *4AD5EDC703BE_4AC226030181get_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AD5EDC703BE_4AC226030181get_impl*
end;//TnsBaseSearcher.pm_GetPresentation

procedure TnsBaseSearcher.StoreActiveClass;
//#UC START# *4C04A80C018D_4AC226030181_var*
//#UC END# *4C04A80C018D_4AC226030181_var*
begin
//#UC START# *4C04A80C018D_4AC226030181_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C04A80C018D_4AC226030181_impl*
end;//TnsBaseSearcher.StoreActiveClass

procedure TnsBaseSearcher.AnotherSearchCancelled;
//#UC START# *4C04AFC8015D_4AC226030181_var*
//#UC END# *4C04AFC8015D_4AC226030181_var*
begin
//#UC START# *4C04AFC8015D_4AC226030181_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C04AFC8015D_4AC226030181_impl*
end;//TnsBaseSearcher.AnotherSearchCancelled

procedure TnsBaseSearcher.DropActiveClass;
//#UC START# *4EB7BE980010_4AC226030181_var*
//#UC END# *4EB7BE980010_4AC226030181_var*
begin
//#UC START# *4EB7BE980010_4AC226030181_impl*
 !!! Needs to be implemented !!!
//#UC END# *4EB7BE980010_4AC226030181_impl*
end;//TnsBaseSearcher.DropActiveClass

function TnsBaseSearcher.Get_ActiveClassForSaveState: TnsBaseSearchClass;
//#UC START# *4EE5F8200085_4AC226030181get_var*
//#UC END# *4EE5F8200085_4AC226030181get_var*
begin
//#UC START# *4EE5F8200085_4AC226030181get_impl*
 !!! Needs to be implemented !!!
//#UC END# *4EE5F8200085_4AC226030181get_impl*
end;//TnsBaseSearcher.Get_ActiveClassForSaveState

function TnsBaseSearcher.ValidateBaseSearchForm(const aForm: IvcmEntityForm): Boolean;
//#UC START# *4F1EA8A202D8_4AC226030181_var*
//#UC END# *4F1EA8A202D8_4AC226030181_var*
begin
//#UC START# *4F1EA8A202D8_4AC226030181_impl*
 !!! Needs to be implemented !!!
//#UC END# *4F1EA8A202D8_4AC226030181_impl*
end;//TnsBaseSearcher.ValidateBaseSearchForm

{$IfEnd} //not Admin AND not Monitorings

end.