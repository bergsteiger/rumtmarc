unit BaseSearch_Module;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/BaseSearch/BaseSearch_Module.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFormsPack::Class>> F1 Основные прецеденты::BaseSearch::View::BaseSearch$Module::BaseSearch
//
// Базовый поиск
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
  SearchUnit
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  BaseSearchInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmModule
  {$IfEnd} //not NoVCM
  ,
  PrimBaseSearchCard_Form,
  BaseSearchCard_Form,
  l3StringIDEx,
  Common_FormDefinitions_Controls,
  NewBaseSearchForDFM_Form,
  PrimBaseSearchInterfaces,
  PrimBaseSearchContainer_Form
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  NewBaseSearch_Form,
  BaseSearchContainer_Form,
  vcmExternalInterfaces {a},
  vcmBase {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TBaseSearchModule = {formspack} class(TvcmModule)
  {* Базовый поиск }
 protected
  class procedure GetEntityForms(aList : TvcmClassList); override;
 public
 // public methods
   class procedure TryAnotherBaseSearch(const aContainer: IvcmContainer;
     const aProcessor: InsBaseSearchResultProcessor;
     TryFullList: Boolean = False);
   class procedure OpenBaseSearch(OpenKind: TnsBaseSearchOpenKind;
     const aQuery: IQuery);
   class function MakeBaseSearchWindow(const aContainer: IvcmContainer;
     const aData: InsBaseSearcherWindowData;
     aZoneType: TvcmZoneType): IvcmEntityForm;
   class procedure BaseSearchCheckFragmentsCount(const aContainer: IvcmContainer);
   class procedure CheckBaseSearchDataReady(const aContainer: IvcmContainer);
   class procedure BaseSearchCheckFindBack(const aContainer: IvcmContainer);
   class function MakeBaseSearchCard(const aContainer: IvcmContainer): IvcmEntityForm;
 end;//TBaseSearchModule
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Classes
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  l3MessageID,
  SysUtils,
  Search_Strange_Controls,
  SearchLite_Strange_Controls,
  PrimSaveLoadOptionsForBaseSearch_slqtBaseSearch_UserType,
  vcmFormSetFactory {a},
  StdRes {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type
  Tkw_Form_NewBaseSearch = class(TtfwControlString)
   {* Слово словаря для идентификатора формы NewBaseSearch
----
*Пример использования*:
[code]
'aControl' форма::NewBaseSearch TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_NewBaseSearch

// start class Tkw_Form_NewBaseSearch

{$If not defined(NoScripts)}
function Tkw_Form_NewBaseSearch.GetString: AnsiString;
 {-}
begin
 Result := 'NewBaseSearchForm';
end;//Tkw_Form_NewBaseSearch.GetString
{$IfEnd} //not NoScripts

type
  Tkw_NewBaseSearch_FindBtn_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола FindBtn формы NewBaseSearch }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_NewBaseSearch_FindBtn_ControlInstance

// start class Tkw_NewBaseSearch_FindBtn_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_NewBaseSearch_FindBtn_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TNewBaseSearchForm).FindBtn);
end;//Tkw_NewBaseSearch_FindBtn_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_NewBaseSearch_FindBackBtn_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола FindBackBtn формы NewBaseSearch }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_NewBaseSearch_FindBackBtn_ControlInstance

// start class Tkw_NewBaseSearch_FindBackBtn_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_NewBaseSearch_FindBackBtn_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TNewBaseSearchForm).FindBackBtn);
end;//Tkw_NewBaseSearch_FindBackBtn_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_NewBaseSearch_CloseBtn_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола CloseBtn формы NewBaseSearch }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_NewBaseSearch_CloseBtn_ControlInstance

// start class Tkw_NewBaseSearch_CloseBtn_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_NewBaseSearch_CloseBtn_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TNewBaseSearchForm).CloseBtn);
end;//Tkw_NewBaseSearch_CloseBtn_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_NewBaseSearch_AreaCombo_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола AreaCombo формы NewBaseSearch }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_NewBaseSearch_AreaCombo_ControlInstance

// start class Tkw_NewBaseSearch_AreaCombo_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_NewBaseSearch_AreaCombo_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TNewBaseSearchForm).AreaCombo);
end;//Tkw_NewBaseSearch_AreaCombo_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_NewBaseSearch_QueryExampleLabel_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола QueryExampleLabel формы NewBaseSearch }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_NewBaseSearch_QueryExampleLabel_ControlInstance

// start class Tkw_NewBaseSearch_QueryExampleLabel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_NewBaseSearch_QueryExampleLabel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TNewBaseSearchForm).QueryExampleLabel);
end;//Tkw_NewBaseSearch_QueryExampleLabel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_NewBaseSearch_DropButton_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола DropButton формы NewBaseSearch }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_NewBaseSearch_DropButton_ControlInstance

// start class Tkw_NewBaseSearch_DropButton_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_NewBaseSearch_DropButton_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TNewBaseSearchForm).DropButton);
end;//Tkw_NewBaseSearch_DropButton_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_NewBaseSearch_FoundCountLabel_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола FoundCountLabel формы NewBaseSearch }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_NewBaseSearch_FoundCountLabel_ControlInstance

// start class Tkw_NewBaseSearch_FoundCountLabel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_NewBaseSearch_FoundCountLabel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TNewBaseSearchForm).FoundCountLabel);
end;//Tkw_NewBaseSearch_FoundCountLabel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_NewBaseSearch_ExampleLabel_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола ExampleLabel формы NewBaseSearch }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_NewBaseSearch_ExampleLabel_ControlInstance

// start class Tkw_NewBaseSearch_ExampleLabel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_NewBaseSearch_ExampleLabel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TNewBaseSearchForm).ExampleLabel);
end;//Tkw_NewBaseSearch_ExampleLabel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_NewBaseSearch_ContextEditPanel_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола ContextEditPanel формы NewBaseSearch }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_NewBaseSearch_ContextEditPanel_ControlInstance

// start class Tkw_NewBaseSearch_ContextEditPanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_NewBaseSearch_ContextEditPanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TNewBaseSearchForm).ContextEditPanel);
end;//Tkw_NewBaseSearch_ContextEditPanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_NewBaseSearch_Layout1_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола Layout1 формы NewBaseSearch }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_NewBaseSearch_Layout1_ControlInstance

// start class Tkw_NewBaseSearch_Layout1_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_NewBaseSearch_Layout1_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TNewBaseSearchForm).Layout1);
end;//Tkw_NewBaseSearch_Layout1_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_NewBaseSearch_Layout2_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола Layout2 формы NewBaseSearch }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_NewBaseSearch_Layout2_ControlInstance

// start class Tkw_NewBaseSearch_Layout2_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_NewBaseSearch_Layout2_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TNewBaseSearchForm).Layout2);
end;//Tkw_NewBaseSearch_Layout2_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_NewBaseSearch_Layout3_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола Layout3 формы NewBaseSearch }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_NewBaseSearch_Layout3_ControlInstance

// start class Tkw_NewBaseSearch_Layout3_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_NewBaseSearch_Layout3_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TNewBaseSearchForm).Layout3);
end;//Tkw_NewBaseSearch_Layout3_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_NewBaseSearch_vgScene1_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола vgScene1 формы NewBaseSearch }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_NewBaseSearch_vgScene1_ControlInstance

// start class Tkw_NewBaseSearch_vgScene1_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_NewBaseSearch_vgScene1_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TNewBaseSearchForm).vgScene1);
end;//Tkw_NewBaseSearch_vgScene1_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_NewBaseSearch_MoreTab_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола MoreTab формы NewBaseSearch }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_NewBaseSearch_MoreTab_ControlInstance

// start class Tkw_NewBaseSearch_MoreTab_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_NewBaseSearch_MoreTab_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TNewBaseSearchForm).MoreTab);
end;//Tkw_NewBaseSearch_MoreTab_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_NewBaseSearch_Border_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола Border формы NewBaseSearch }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_NewBaseSearch_Border_ControlInstance

// start class Tkw_NewBaseSearch_Border_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_NewBaseSearch_Border_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TNewBaseSearchForm).Border);
end;//Tkw_NewBaseSearch_Border_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_NewBaseSearch_InnerBorder_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола InnerBorder формы NewBaseSearch }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_NewBaseSearch_InnerBorder_ControlInstance

// start class Tkw_NewBaseSearch_InnerBorder_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_NewBaseSearch_InnerBorder_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TNewBaseSearchForm).InnerBorder);
end;//Tkw_NewBaseSearch_InnerBorder_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_NewBaseSearch_MostOuterRectangle_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола MostOuterRectangle формы NewBaseSearch }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_NewBaseSearch_MostOuterRectangle_ControlInstance

// start class Tkw_NewBaseSearch_MostOuterRectangle_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_NewBaseSearch_MostOuterRectangle_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TNewBaseSearchForm).MostOuterRectangle);
end;//Tkw_NewBaseSearch_MostOuterRectangle_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_NewBaseSearch_Rectangle1_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола Rectangle1 формы NewBaseSearch }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_NewBaseSearch_Rectangle1_ControlInstance

// start class Tkw_NewBaseSearch_Rectangle1_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_NewBaseSearch_Rectangle1_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TNewBaseSearchForm).Rectangle1);
end;//Tkw_NewBaseSearch_Rectangle1_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_NewBaseSearch_ContextEdit_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола ContextEdit формы NewBaseSearch }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_NewBaseSearch_ContextEdit_ControlInstance

// start class Tkw_NewBaseSearch_ContextEdit_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_NewBaseSearch_ContextEdit_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TNewBaseSearchForm).ContextEdit);
end;//Tkw_NewBaseSearch_ContextEdit_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_NewBaseSearch_FlashTimer_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола FlashTimer формы NewBaseSearch }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_NewBaseSearch_FlashTimer_ControlInstance

// start class Tkw_NewBaseSearch_FlashTimer_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_NewBaseSearch_FlashTimer_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TNewBaseSearchForm).FlashTimer);
end;//Tkw_NewBaseSearch_FlashTimer_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

class procedure TBaseSearchModule.TryAnotherBaseSearch(const aContainer: IvcmContainer;
  const aProcessor: InsBaseSearchResultProcessor;
  TryFullList: Boolean = False);
var
 __WasEnter : Boolean;
//#UC START# *4AB79DF40349_4CC97D020011_var*
//#UC END# *4AB79DF40349_4CC97D020011_var*
var
 l_Processor : InsBaseSearchResultProcessor;
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AB79DF40349_4CC97D020011_impl*
 if (aProcessor <> nil) then
  l_Processor := aProcessor
 else
  Supports(CheckContainer(aContainer).NativeMainForm,
           InsBaseSearchQueryDataProcessor, l_Processor);
 if (l_Processor <> nil) then
  l_Processor.SearchResultEmpty(TryFullList);
//#UC END# *4AB79DF40349_4CC97D020011_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TBaseSearchModule.TryAnotherBaseSearch

class procedure TBaseSearchModule.OpenBaseSearch(OpenKind: TnsBaseSearchOpenKind;
  const aQuery: IQuery);
var
 __WasEnter : Boolean;
//#UC START# *4AB7881B00EA_4CC97D020011_var*
//#UC END# *4AB7881B00EA_4CC97D020011_var*
var
 l_Container : IvcmContainer;
 l_Opener : InsBaseSearchWindowOpener;
 l_Processor : InsBaseSearchQueryDataProcessor;
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AB7881B00EA_4CC97D020011_impl*
 l_Container := CheckContainer(nil).NativeMainForm;
 if Supports(l_Container, InsBaseSearchWindowOpener, l_Opener) then
  l_Opener.OpenWindow(OpenKind);
 if (aQuery <> nil) and
    Supports(l_Container, InsBaseSearchQueryDataProcessor, l_Processor) then
  l_Processor.SetDataFromQuery(aQuery);
//#UC END# *4AB7881B00EA_4CC97D020011_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TBaseSearchModule.OpenBaseSearch

class function TBaseSearchModule.MakeBaseSearchWindow(const aContainer: IvcmContainer;
  const aData: InsBaseSearcherWindowData;
  aZoneType: TvcmZoneType): IvcmEntityForm;
var
 __WasEnter : Boolean;
//#UC START# *4AB793B903E6_4CC97D020011_var*
//#UC END# *4AB793B903E6_4CC97D020011_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AB793B903E6_4CC97D020011_impl*
  Result := TNewBaseSearchForm.MakeSingleChild(aData, CheckContainer(aContainer), aZoneType);
//  Result := Ten_BaseSearch.MakeSingleChild(aData, CheckContainer(aContainer));
//#UC END# *4AB793B903E6_4CC97D020011_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TBaseSearchModule.MakeBaseSearchWindow

class procedure TBaseSearchModule.BaseSearchCheckFragmentsCount(const aContainer: IvcmContainer);
var
 __WasEnter : Boolean;
//#UC START# *4AB79B8201F8_4CC97D020011_var*
//#UC END# *4AB79B8201F8_4CC97D020011_var*
var
 l_Processor : InsBaseSearchQueryDataProcessor;
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AB79B8201F8_4CC97D020011_impl*
 if Supports(CheckContainer(aContainer).NativeMainForm,
             InsBaseSearchQueryDataProcessor, l_Processor) then
  l_Processor.RequestCheckFragmentsCount;
//#UC END# *4AB79B8201F8_4CC97D020011_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TBaseSearchModule.BaseSearchCheckFragmentsCount

class procedure TBaseSearchModule.CheckBaseSearchDataReady(const aContainer: IvcmContainer);
var
 __WasEnter : Boolean;
//#UC START# *4AB797E7001F_4CC97D020011_var*
//#UC END# *4AB797E7001F_4CC97D020011_var*
var
 l_Checker : InsBaseSearchDataReadyChecker;
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AB797E7001F_4CC97D020011_impl*
 if Supports(CheckContainer(aContainer).NativeMainForm,
             InsBaseSearchDataReadyChecker, l_Checker) then
  l_Checker.CheckLocalDataReady;
//#UC END# *4AB797E7001F_4CC97D020011_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TBaseSearchModule.CheckBaseSearchDataReady

class procedure TBaseSearchModule.BaseSearchCheckFindBack(const aContainer: IvcmContainer);
var
 __WasEnter : Boolean;
//#UC START# *4AB7A5A500FB_4CC97D020011_var*
//#UC END# *4AB7A5A500FB_4CC97D020011_var*
var
 l_Processor : InsBaseSearchQueryDataProcessor;
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AB7A5A500FB_4CC97D020011_impl*
 if Supports(CheckContainer(aContainer).NativeMainForm,
             InsBaseSearchQueryDataProcessor, l_Processor) then
  l_Processor.RequestCheckFindBack;
//#UC END# *4AB7A5A500FB_4CC97D020011_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TBaseSearchModule.BaseSearchCheckFindBack

class function TBaseSearchModule.MakeBaseSearchCard(const aContainer: IvcmContainer): IvcmEntityForm;
var
 __WasEnter : Boolean;
//#UC START# *4AB7A2E20096_4CC97D020011_var*
var
 l_Container : IvcmContainer;
//#UC END# *4AB7A2E20096_4CC97D020011_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AB7A2E20096_4CC97D020011_impl*
  l_Container := TBaseSearchContainerForm.MakeSingleChild(CheckContainer(aContainer),
                                                          vcmMakeParams(nil{anAggregate},
                                                          CheckContainer(aContainer)),
                                            vcm_ztParent,
                                            slqtBaseSearch).AsContainer;
  Result := Ten_BaseSearchCard.Make(vcmMakeParams(nil,
                                                  l_Container,
                                                  l_Container.AsForm.VCLWinControl),
                                    vcm_ztParent);
//#UC END# *4AB7A2E20096_4CC97D020011_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TBaseSearchModule.MakeBaseSearchCard

class procedure TBaseSearchModule.GetEntityForms(aList : TvcmClassList);
begin
 inherited;
 aList.Add(Ten_BaseSearchCard);
 aList.Add(TNewBaseSearchForm);
 aList.Add(TBaseSearchContainerForm);
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация фабрики формы NewBaseSearch
 fm_NewBaseSearchForm.SetFactory(TNewBaseSearchForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_NewBaseSearch
 Tkw_Form_NewBaseSearch.Register('форма::NewBaseSearch', TNewBaseSearchForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_NewBaseSearch_FindBtn_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TNewBaseSearchForm.FindBtn', Tkw_NewBaseSearch_FindBtn_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_NewBaseSearch_FindBackBtn_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TNewBaseSearchForm.FindBackBtn', Tkw_NewBaseSearch_FindBackBtn_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_NewBaseSearch_CloseBtn_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TNewBaseSearchForm.CloseBtn', Tkw_NewBaseSearch_CloseBtn_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_NewBaseSearch_AreaCombo_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TNewBaseSearchForm.AreaCombo', Tkw_NewBaseSearch_AreaCombo_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_NewBaseSearch_QueryExampleLabel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TNewBaseSearchForm.QueryExampleLabel', Tkw_NewBaseSearch_QueryExampleLabel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_NewBaseSearch_DropButton_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TNewBaseSearchForm.DropButton', Tkw_NewBaseSearch_DropButton_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_NewBaseSearch_FoundCountLabel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TNewBaseSearchForm.FoundCountLabel', Tkw_NewBaseSearch_FoundCountLabel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_NewBaseSearch_ExampleLabel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TNewBaseSearchForm.ExampleLabel', Tkw_NewBaseSearch_ExampleLabel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_NewBaseSearch_ContextEditPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TNewBaseSearchForm.ContextEditPanel', Tkw_NewBaseSearch_ContextEditPanel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_NewBaseSearch_Layout1_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TNewBaseSearchForm.Layout1', Tkw_NewBaseSearch_Layout1_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_NewBaseSearch_Layout2_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TNewBaseSearchForm.Layout2', Tkw_NewBaseSearch_Layout2_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_NewBaseSearch_Layout3_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TNewBaseSearchForm.Layout3', Tkw_NewBaseSearch_Layout3_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_NewBaseSearch_vgScene1_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TNewBaseSearchForm.vgScene1', Tkw_NewBaseSearch_vgScene1_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_NewBaseSearch_MoreTab_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TNewBaseSearchForm.MoreTab', Tkw_NewBaseSearch_MoreTab_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_NewBaseSearch_Border_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TNewBaseSearchForm.Border', Tkw_NewBaseSearch_Border_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_NewBaseSearch_InnerBorder_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TNewBaseSearchForm.InnerBorder', Tkw_NewBaseSearch_InnerBorder_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_NewBaseSearch_MostOuterRectangle_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TNewBaseSearchForm.MostOuterRectangle', Tkw_NewBaseSearch_MostOuterRectangle_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_NewBaseSearch_Rectangle1_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TNewBaseSearchForm.Rectangle1', Tkw_NewBaseSearch_Rectangle1_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_NewBaseSearch_ContextEdit_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TNewBaseSearchForm.ContextEdit', Tkw_NewBaseSearch_ContextEdit_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_NewBaseSearch_FlashTimer_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TNewBaseSearchForm.FlashTimer', Tkw_NewBaseSearch_FlashTimer_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.