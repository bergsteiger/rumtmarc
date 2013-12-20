unit LiteSearch_Module;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/LiteSearch/LiteSearch_Module.pas"
// Начат: 04.09.2009 14:23
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFormsPack::Class>> F1 Базовые определения предметной области::SearchLite::View::LiteSearch::LiteSearch
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  l3Interfaces
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  ,
  SearchInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  nsTypes,
  PrimTreeAttributeSelectOptions_Form,
  PrimSelectedAttributesOptions_Form,
  PrimAttributeSelectOptions_Form,
  SearchLite_FormDefinitions_Controls
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  TreeAttributeSelect_Form,
  AttributeSelect_Form,
  SelectedAttributes_Form,
  vcmExternalInterfaces {a},
  vcmModule {a},
  vcmBase {a}
  ;

type
 TLiteSearchModule = {formspack} class(TvcmModule)
 protected
  class procedure GetEntityForms(aList : TvcmClassList); override;
 public
 // public methods
   class function MakeTreeAttributeSelect(const aParams: IvcmMakeParams;
     aZoneType: TvcmZoneType;
     aRecursive: Boolean;
     aUserType: TvcmUserType): IvcmEntityForm;
   class function MakeAttributeSelect(const aParams: IvcmMakeParams;
     aZoneType: TvcmZoneType;
     aRecursive: Boolean;
     aUserType: TvcmUserType): IvcmEntityForm;
   class function MakeSelectedAttributes(const aParams: IvcmMakeParams;
     aZoneType: TvcmZoneType;
     aRecursive: Boolean): IvcmEntityForm;
   class function OpenTreeSelection(const aTag: Il3CString;
     anAdditionalFilter: TnsFilterType;
     const aFormData: IdsTreeAttributeSelect): Integer;
 end;//TLiteSearchModule

implementation

uses
  OfficeLike_ResultEx_Controls,
  OfficeLike_Result_Controls,
  l3String
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  SearchLite_Strange_Controls,
  PrimAttributeSelect_utAttributeSelect_UserType,
  vcmFormSetFactory {a},
  StdRes {a}
  ;

type
  Tkw_Form_TreeAttributeSelect = class(TtfwControlString)
   {* Слово словаря для идентификатора формы TreeAttributeSelect
----
*Пример использования*:
[code]
'aControl' форма::TreeAttributeSelect TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_TreeAttributeSelect

// start class Tkw_Form_TreeAttributeSelect

{$If not defined(NoScripts)}
function Tkw_Form_TreeAttributeSelect.GetString: AnsiString;
 {-}
begin
 Result := 'efTreeAttributeSelect';
end;//Tkw_Form_TreeAttributeSelect.GetString
{$IfEnd} //not NoScripts

type
  Tkw_TreeAttributeSelect_ContextFilter_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола ContextFilter формы TreeAttributeSelect }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_TreeAttributeSelect_ContextFilter_ControlInstance

// start class Tkw_TreeAttributeSelect_ContextFilter_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_TreeAttributeSelect_ContextFilter_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefTreeAttributeSelect).ContextFilter);
end;//Tkw_TreeAttributeSelect_ContextFilter_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_TreeAttributeSelect_AttributeTree_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола AttributeTree формы TreeAttributeSelect }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_TreeAttributeSelect_AttributeTree_ControlInstance

// start class Tkw_TreeAttributeSelect_AttributeTree_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_TreeAttributeSelect_AttributeTree_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefTreeAttributeSelect).AttributeTree);
end;//Tkw_TreeAttributeSelect_AttributeTree_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Form_SelectedAttributes = class(TtfwControlString)
   {* Слово словаря для идентификатора формы SelectedAttributes
----
*Пример использования*:
[code]
'aControl' форма::SelectedAttributes TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_SelectedAttributes

// start class Tkw_Form_SelectedAttributes

{$If not defined(NoScripts)}
function Tkw_Form_SelectedAttributes.GetString: AnsiString;
 {-}
begin
 Result := 'enSelectedAttributes';
end;//Tkw_Form_SelectedAttributes.GetString
{$IfEnd} //not NoScripts

type
  Tkw_SelectedAttributes_SelectedTree_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола SelectedTree формы SelectedAttributes }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_SelectedAttributes_SelectedTree_ControlInstance

// start class Tkw_SelectedAttributes_SelectedTree_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_SelectedAttributes_SelectedTree_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TenSelectedAttributes).SelectedTree);
end;//Tkw_SelectedAttributes_SelectedTree_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

class function TLiteSearchModule.MakeTreeAttributeSelect(const aParams: IvcmMakeParams;
  aZoneType: TvcmZoneType;
  aRecursive: Boolean;
  aUserType: TvcmUserType): IvcmEntityForm;
var
 __WasEnter : Boolean;
//#UC START# *4AAF48F502E7_4AA0EA76017F_var*
//#UC END# *4AAF48F502E7_4AA0EA76017F_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AAF48F502E7_4AA0EA76017F_impl*
 Assert(aRecursive);
 Result := TTreeAttributeSelectForm.MakeSingleChild(aParams.Container,
                                             aParams,
                                             aZoneType,
                                             aUserType);
//#UC END# *4AAF48F502E7_4AA0EA76017F_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TLiteSearchModule.MakeTreeAttributeSelect

class function TLiteSearchModule.MakeAttributeSelect(const aParams: IvcmMakeParams;
  aZoneType: TvcmZoneType;
  aRecursive: Boolean;
  aUserType: TvcmUserType): IvcmEntityForm;
var
 __WasEnter : Boolean;
//#UC START# *4AAF4FC80387_4AA0EA76017F_var*
//#UC END# *4AAF4FC80387_4AA0EA76017F_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AAF4FC80387_4AA0EA76017F_impl*
 Assert(aRecursive);
 Result := TcfAttributeSelect.MakeSingleChild(aParams.Container,
                                             aParams,
                                             aZoneType,
                                             aUserType);
//#UC END# *4AAF4FC80387_4AA0EA76017F_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TLiteSearchModule.MakeAttributeSelect

class function TLiteSearchModule.MakeSelectedAttributes(const aParams: IvcmMakeParams;
  aZoneType: TvcmZoneType;
  aRecursive: Boolean): IvcmEntityForm;
var
 __WasEnter : Boolean;
//#UC START# *4AAF52280022_4AA0EA76017F_var*
//#UC END# *4AAF52280022_4AA0EA76017F_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AAF52280022_4AA0EA76017F_impl*
 Assert(aRecursive);
 Result := TenSelectedAttributes.MakeSingleChild(aParams.Container,
                                             aParams,
                                             aZoneType,
                                             0);
//#UC END# *4AAF52280022_4AA0EA76017F_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TLiteSearchModule.MakeSelectedAttributes

class function TLiteSearchModule.OpenTreeSelection(const aTag: Il3CString;
  anAdditionalFilter: TnsFilterType;
  const aFormData: IdsTreeAttributeSelect): Integer;
var
 __WasEnter : Boolean;
//#UC START# *4AAF590401AC_4AA0EA76017F_var*
//#UC END# *4AAF590401AC_4AA0EA76017F_var*
var
 l_Params : IvcmMakeParams;
 l_Container : IvcmEntityForm;
 l_Form : IvcmEntityForm;
 l_FilterType : TnsFilterType;
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AAF590401AC_4AA0EA76017F_impl*
 vcmDispatcher.FormDispatcher.Lock;
 try
  l_Params := vcmCheckAggregate(vcmMakeParams);

  l_Container := TcfAttributeSelect.Make(l_Params, vcm_ztManualModal,
                                         TvcmUserType(utAttributeSelect));
  l_Params := vcmMakeParams(l_Params.Aggregate,
                        l_Container.AsContainer,
                        l_Params.Owner);
  l_Form := TTreeAttributeSelectForm.Make(l_Params);
  l_FilterType := anAdditionalFilter;
  {$IfDef Admin}
  Assert(l_FilterType = ns_ftNone);
  l_FilterType := ns_ftInpharm;
  l_Form.DataSource := aFormData;
  {$Else  Admin}
  Assert(aFormData = nil);
  {$EndIf Admin}
  TenSelectedAttributes.Make(l_Params);

  Assert(l_Params.Aggregate <> nil);

  op_AttributeTree_SetRoot.Call(l_Params.Aggregate, aTag);

  Op_Context_SyncContextParams.Call(l_Params.Aggregate, l_FilterType);

 finally
  vcmDispatcher.FormDispatcher.UnLock;
 end;//try..finally

 Result := l_Container.ShowModal;

 // 15.09.2004 fireton
 // Убрано, т.к. порождало проблемы возврата фокуса при выходе из модального
 // состояния. И вообще.
 // afw.ProcessMessages;

 l_Container := nil;
//#UC END# *4AAF590401AC_4AA0EA76017F_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TLiteSearchModule.OpenTreeSelection

class procedure TLiteSearchModule.GetEntityForms(aList : TvcmClassList);
begin
 inherited;
 aList.Add(TefTreeAttributeSelect);
 aList.Add(TcfAttributeSelect);
 aList.Add(TenSelectedAttributes);
end;

initialization
// Регистрация фабрики формы TreeAttributeSelect
 fm_efTreeAttributeSelect.SetFactory(TefTreeAttributeSelect.Make);
// Регистрация Tkw_Form_TreeAttributeSelect
 Tkw_Form_TreeAttributeSelect.Register('форма::TreeAttributeSelect', TefTreeAttributeSelect);
// Регистрация Tkw_TreeAttributeSelect_ContextFilter_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefTreeAttributeSelect.ContextFilter', Tkw_TreeAttributeSelect_ContextFilter_ControlInstance);
// Регистрация Tkw_TreeAttributeSelect_AttributeTree_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefTreeAttributeSelect.AttributeTree', Tkw_TreeAttributeSelect_AttributeTree_ControlInstance);
// Регистрация фабрики формы SelectedAttributes
 fm_enSelectedAttributes.SetFactory(TenSelectedAttributes.Make);
// Регистрация Tkw_Form_SelectedAttributes
 Tkw_Form_SelectedAttributes.Register('форма::SelectedAttributes', TenSelectedAttributes);
// Регистрация Tkw_SelectedAttributes_SelectedTree_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TenSelectedAttributes.SelectedTree', Tkw_SelectedAttributes_SelectedTree_ControlInstance);

end.