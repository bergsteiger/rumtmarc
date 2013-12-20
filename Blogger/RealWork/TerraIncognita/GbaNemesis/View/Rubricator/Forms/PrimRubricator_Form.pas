unit PrimRubricator_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Rubricator/Forms/PrimRubricator_Form.pas"
// Начат: 08.09.2009 20:56
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Основные прецеденты::Rubricator::View::Rubricator::PrimRubricator
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
  BaseTypesUnit,
  DynamicTreeUnit
  {$If not defined(NoVCM)}
  ,
  vcmExternalInterfaces
  {$IfEnd} //not NoVCM
  ,
  l3TreeInterfaces
  {$If defined(Nemesis)}
  ,
  nscTreeView
  {$IfEnd} //Nemesis
  
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  l3ProtoObject,
  Common_Rubricator_Controls,
  l3StringIDEx,
  Rubricator_Strange_Controls,
  MainMenuUnit
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
  PrimRubricator_utRubricatorList_UserType,
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 InsRubricatorState = interface(IUnknown{, IvcmBase})
   ['{E4FB5DDB-8888-4F1E-8408-E4D56CCB1FBD}']
   function Get_NewDocLabelVisible: Boolean;
   function Get_LinkType: TNavigatorMenuItemType;
   property NewDocLabelVisible: Boolean
     read Get_NewDocLabelVisible;
   property LinkType: TNavigatorMenuItemType
     read Get_LinkType;
  // Методы преобразования к реализуемым интерфейсам
   function As_IvcmBase: IvcmBase;
 end;//InsRubricatorState

 TnsRubricatorState = class(Tl3ProtoObject, InsRubricatorState, IvcmBase {from InsRubricatorState})
 private
 // private fields
   f_NewDocLabelVisible : Boolean;
   f_LinkType : TNavigatorMenuItemType;
 protected
 // realized methods
   function Get_NewDocLabelVisible: Boolean;
   function Get_LinkType: TNavigatorMenuItemType;
 public
 // public methods
   constructor Create(aNewDocLabelVisible: Boolean;
    aLinkType: TNavigatorMenuItemType); reintroduce;
   class function Make(aNewDocLabelVisible: Boolean;
    aLinkType: TNavigatorMenuItemType): InsRubricatorState; reintroduce;
 protected
 // Методы преобразования к реализуемым интерфейсам
   function As_IvcmBase: IvcmBase;
 end;//TnsRubricatorState

 TPrimRubricatorForm = {form} class(TvcmEntityForm)
 private
 // private fields
   f_RubricatorList : TnscTreeView;
    {* Поле для свойства RubricatorList}
 protected
  procedure InitEntities; override;
  procedure MakeControls; override;
 private
 // private methods
   procedure InternalInitRoot(const aNode: Il3SimpleNode;
     const aRootToKeep: INodeBase;
     const aMenuSectionItemToKeep: ISectionItem);
 protected
 // property methods
   function pm_GetRubricatorList: TnscTreeView;
 protected
 // realized methods
   procedure Rubricator_SetListRoot_Execute(const aNode: Il3SimpleNode;
    const aRootToKeep: INodeBase;
    const aMenuSectionItemToKeep: ISectionItem);
   procedure Rubricator_SetListRoot(const aParams: IvcmExecuteParams);
   procedure Rubricator_InitListRoot_Execute(const aNode: Il3SimpleNode;
    const aRootToKeep: INodeBase;
    const aMenuSectionItemToKeep: ISectionItem);
   procedure Rubricator_InitListRoot(const aParams: IvcmExecuteParams);
   procedure Rubricator_Synchronize_Execute;
   procedure Rubricator_Synchronize(const aParams: IvcmExecuteParams);
   function Rubricator_GetRoot_Execute: Il3SimpleNode;
   procedure Rubricator_GetRoot(const aParams: IvcmExecuteParams);
   procedure Rubric_Execute_Execute(const aParams: IvcmExecuteParamsPrim);
 protected
 // overridden protected methods
   procedure InitFields; override;
   {$If not defined(NoVCM)}
   procedure InitControls; override;
     {* Процедура инициализации контролов. Для перекрытия в потомках }
   {$IfEnd} //not NoVCM
 protected
 // protected fields
   f_SetCurrentLock : Integer;
 protected
 // protected methods
   procedure InternalSetRoot(const aNode: Il3SimpleNode;
     const aRootToKeep: INodeBase;
     const aMenuSectionItemToKeep: ISectionItem);
   procedure UpdateTopPanel(aNodeType: TNavigatorMenuItemType); virtual; abstract;
   procedure RubricExecute; virtual; abstract;
 public
 // public properties
   property RubricatorList: TnscTreeView
     read pm_GetRubricatorList;
 end;//TPrimRubricatorForm

 TvcmEntityFormRef = TPrimRubricatorForm;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  nsRubricatorList,
  l3Base,
  SysUtils
  {$If not defined(NoVCM)}
  ,
  vcmBase
  {$IfEnd} //not NoVCM
  ,
  RubricatorRes,
  Common_Strange_Controls,
  RubricatorInterfaces,
  evdTextStyle_Const
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  l3MessageID,
  StdRes {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
   { Локализуемые строки utRubricatorListLocalConstants }
  str_utRubricatorListCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utRubricatorListCaption'; rValue : 'Правовой навигатор (линейное представление)');
   { Заголовок пользовательского типа "Правовой навигатор (линейное представление)" }
  str_utRubricatorListSettingsCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utRubricatorListSettingsCaption'; rValue : 'Правовой навигатор');
   { Заголовок пользовательского типа "Правовой навигатор (линейное представление)" для настройки панелей инструментов }

type
  Tkw_PrimRubricator_Control_RubricatorList = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола RubricatorList
----
*Пример использования*:
[code]
контрол::RubricatorList TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimRubricator_Control_RubricatorList

// start class Tkw_PrimRubricator_Control_RubricatorList

{$If not defined(NoScripts)}
function Tkw_PrimRubricator_Control_RubricatorList.GetString: AnsiString;
 {-}
begin
 Result := 'RubricatorList';
end;//Tkw_PrimRubricator_Control_RubricatorList.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimRubricator_Control_RubricatorList_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола RubricatorList
----
*Пример использования*:
[code]
контрол::RubricatorList:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimRubricator_Control_RubricatorList_Push

// start class Tkw_PrimRubricator_Control_RubricatorList_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimRubricator_Control_RubricatorList_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('RubricatorList');
 inherited;
end;//Tkw_PrimRubricator_Control_RubricatorList_Push.DoDoIt
{$IfEnd} //not NoScripts

procedure TPrimRubricatorForm.InternalInitRoot(const aNode: Il3SimpleNode;
  const aRootToKeep: INodeBase;
  const aMenuSectionItemToKeep: ISectionItem);
//#UC START# *4AA781EA039B_4AA68CA10101_var*
//#UC END# *4AA781EA039B_4AA68CA10101_var*
var
 l_Node : INodeBase;
begin
//#UC START# *4AA781EA039B_4AA68CA10101_impl*
 inc(f_SetCurrentLock);
 try
  with RubricatorList.TreeStruct do
  begin
   if Supports(aNode, INodeBase, l_Node) and
      not aNode.IsSame(RootNode) then
   begin
    RubricatorList.TreeStruct := TnsRubricatorList.Make(l_Node, aRootToKeep, aMenuSectionItemToKeep);
    CCaption := l3CStr(RubricatorList.TreeStruct.RootNode);
    UpdateTopPanel(TNavigatorMenuItemType(l_Node.GetType));
    Op_Navigator_SetCurrent.Call(Aggregate, aNode);
   end;//Supports(aNode, INodeBase, l_Node)
  end;
 finally
  dec(f_SetCurrentLock);
 end;//try..finally
//#UC END# *4AA781EA039B_4AA68CA10101_impl*
end;//TPrimRubricatorForm.InternalInitRoot

procedure TPrimRubricatorForm.InternalSetRoot(const aNode: Il3SimpleNode;
  const aRootToKeep: INodeBase;
  const aMenuSectionItemToKeep: ISectionItem);
//#UC START# *4AA7824B03DF_4AA68CA10101_var*
//#UC END# *4AA7824B03DF_4AA68CA10101_var*
begin
//#UC START# *4AA7824B03DF_4AA68CA10101_impl*
 with RubricatorList.TreeStruct do
  if not aNode.IsSame(RootNode) then
   Dispatcher.History.SaveState(Self.As_IvcmEntityForm); //Запись в историю
 InternalInitRoot(aNode, aRootToKeep, aMenuSectionItemToKeep);
//#UC END# *4AA7824B03DF_4AA68CA10101_impl*
end;//TPrimRubricatorForm.InternalSetRoot

function TPrimRubricatorForm.pm_GetRubricatorList: TnscTreeView;
begin
 if (f_RubricatorList = nil) then
  f_RubricatorList := FindComponent('RubricatorList') As TnscTreeView;
 Result := f_RubricatorList;
end;
// start class TnsRubricatorState

constructor TnsRubricatorState.Create(aNewDocLabelVisible: Boolean;
  aLinkType: TNavigatorMenuItemType);
//#UC START# *4AA78D81011E_4AA78D4B020B_var*
//#UC END# *4AA78D81011E_4AA78D4B020B_var*
begin
//#UC START# *4AA78D81011E_4AA78D4B020B_impl*
 inherited Create;
 f_NewDocLabelVisible := aNewDocLabelVisible;
 f_LinkType := aLinkType;
//#UC END# *4AA78D81011E_4AA78D4B020B_impl*
end;//TnsRubricatorState.Create

class function TnsRubricatorState.Make(aNewDocLabelVisible: Boolean;
  aLinkType: TNavigatorMenuItemType): InsRubricatorState;
var
 l_Inst : TnsRubricatorState;
begin
 l_Inst := Create(aNewDocLabelVisible, aLinkType);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function TnsRubricatorState.Get_NewDocLabelVisible: Boolean;
//#UC START# *4AA78D1501FF_4AA78D4B020Bget_var*
//#UC END# *4AA78D1501FF_4AA78D4B020Bget_var*
begin
//#UC START# *4AA78D1501FF_4AA78D4B020Bget_impl*
 Result := f_NewDocLabelVisible;
//#UC END# *4AA78D1501FF_4AA78D4B020Bget_impl*
end;//TnsRubricatorState.Get_NewDocLabelVisible

function TnsRubricatorState.Get_LinkType: TNavigatorMenuItemType;
//#UC START# *4AA78D2C012A_4AA78D4B020Bget_var*
//#UC END# *4AA78D2C012A_4AA78D4B020Bget_var*
begin
//#UC START# *4AA78D2C012A_4AA78D4B020Bget_impl*
 Result := f_LinkType;
//#UC END# *4AA78D2C012A_4AA78D4B020Bget_impl*
end;//TnsRubricatorState.Get_LinkType

// Методы преобразования к реализуемым интерфейсам

function TnsRubricatorState.As_IvcmBase: IvcmBase;
begin
 Result := Self;
end;

procedure TPrimRubricatorForm.Rubricator_SetListRoot_Execute(const aNode: Il3SimpleNode;
  const aRootToKeep: INodeBase;
  const aMenuSectionItemToKeep: ISectionItem);
//#UC START# *4AA7805301DC_4AA68CA10101exec_var*
//#UC END# *4AA7805301DC_4AA68CA10101exec_var*
begin
//#UC START# *4AA7805301DC_4AA68CA10101exec_impl*
 if (aNode <> nil) then
  InternalSetRoot(aNode, aRootToKeep, aMenuSectionItemToKeep)
 else
 begin
  CCaption := nil;
  RubricatorList.TreeStruct.RootNode := nil;
 end;//aNode <> nil
//#UC END# *4AA7805301DC_4AA68CA10101exec_impl*
end;//TPrimRubricatorForm.Rubricator_SetListRoot_Execute

procedure TPrimRubricatorForm.Rubricator_SetListRoot(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IRubricator_SetListRoot_Params) do
  Rubricator_SetListRoot_Execute(Node, RootToKeep, MenuSectionItemToKeep);
end;

procedure TPrimRubricatorForm.Rubricator_InitListRoot_Execute(const aNode: Il3SimpleNode;
  const aRootToKeep: INodeBase;
  const aMenuSectionItemToKeep: ISectionItem);
//#UC START# *4AA7806601AE_4AA68CA10101exec_var*
//#UC END# *4AA7806601AE_4AA68CA10101exec_var*
begin
//#UC START# *4AA7806601AE_4AA68CA10101exec_impl*
 if (aNode <> nil) then
  InternalInitRoot(aNode, aRootToKeep, aMenuSectionItemToKeep)
 else
 begin
  CCaption := nil;
  RubricatorList.TreeStruct.RootNode := nil;
 end;//aNode <> nil
//#UC END# *4AA7806601AE_4AA68CA10101exec_impl*
end;//TPrimRubricatorForm.Rubricator_InitListRoot_Execute

procedure TPrimRubricatorForm.Rubricator_InitListRoot(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IRubricator_InitListRoot_Params) do
  Rubricator_InitListRoot_Execute(Node, RootToKeep, MenuSectionItemToKeep);
end;

procedure TPrimRubricatorForm.Rubricator_Synchronize_Execute;
//#UC START# *4AA7809901AE_4AA68CA10101exec_var*
//#UC END# *4AA7809901AE_4AA68CA10101exec_var*
begin
//#UC START# *4AA7809901AE_4AA68CA10101exec_impl*
 Op_Navigator_SetCurrent.Call(Aggregate, RubricatorList.TreeStruct.RootNode);
//#UC END# *4AA7809901AE_4AA68CA10101exec_impl*
end;//TPrimRubricatorForm.Rubricator_Synchronize_Execute

procedure TPrimRubricatorForm.Rubricator_Synchronize(const aParams: IvcmExecuteParams);
begin
 Rubricator_Synchronize_Execute;
end;

function TPrimRubricatorForm.Rubricator_GetRoot_Execute: Il3SimpleNode;
//#UC START# *4B02CFA303DA_4AA68CA10101exec_var*
//#UC END# *4B02CFA303DA_4AA68CA10101exec_var*
begin
//#UC START# *4B02CFA303DA_4AA68CA10101exec_impl*
 if RubricatorList.IsTreeAssign then
  Result := RubricatorList.TreeStruct.RootNode
 else
  Result := nil;
//#UC END# *4B02CFA303DA_4AA68CA10101exec_impl*
end;//TPrimRubricatorForm.Rubricator_GetRoot_Execute

procedure TPrimRubricatorForm.Rubricator_GetRoot(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IRubricator_GetRoot_Params) do
  ResultValue := Rubricator_GetRoot_Execute;
end;

procedure TPrimRubricatorForm.Rubric_Execute_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C4433150077_4AA68CA10101exec_var*
//#UC END# *4C4433150077_4AA68CA10101exec_var*
begin
//#UC START# *4C4433150077_4AA68CA10101exec_impl*
 RubricExecute;
//#UC END# *4C4433150077_4AA68CA10101exec_impl*
end;//TPrimRubricatorForm.Rubric_Execute_Execute

procedure TPrimRubricatorForm.InitFields;
//#UC START# *47A042E100E2_4AA68CA10101_var*
//#UC END# *47A042E100E2_4AA68CA10101_var*
begin
//#UC START# *47A042E100E2_4AA68CA10101_impl*
 inherited;
 f_SetCurrentLock := 0;
//#UC END# *47A042E100E2_4AA68CA10101_impl*
end;//TPrimRubricatorForm.InitFields

{$If not defined(NoVCM)}
procedure TPrimRubricatorForm.InitControls;
//#UC START# *4A8E8F2E0195_4AA68CA10101_var*
//#UC END# *4A8E8F2E0195_4AA68CA10101_var*
begin
//#UC START# *4A8E8F2E0195_4AA68CA10101_impl*
 inherited;
 RubricatorList.Images := nsRubricatorRes.RubricatorItemsImageList;
 RubricatorList.StyleId := evd_saTxtNormalANSI;
//#UC END# *4A8E8F2E0195_4AA68CA10101_impl*
end;//TPrimRubricatorForm.InitControls
{$IfEnd} //not NoVCM

procedure TPrimRubricatorForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_Rubricator, nil);
  PublishFormEntity(en_Rubric, nil);
  PublishOpWithResult(en_Rubricator, op_SetListRoot, Rubricator_SetListRoot, nil, nil);
  PublishOpWithResult(en_Rubricator, op_InitListRoot, Rubricator_InitListRoot, nil, nil);
  PublishOpWithResult(en_Rubricator, op_Synchronize, Rubricator_Synchronize, nil, nil);
  PublishOpWithResult(en_Rubricator, op_GetRoot, Rubricator_GetRoot, nil, nil);
  PublishOp(en_Rubric, op_Execute, Rubric_Execute_Execute, nil, nil);
  ShowInContextMenu(en_Rubric, op_Execute, true);
 end;//with Entities.Entities
end;

procedure TPrimRubricatorForm.MakeControls;
begin
 inherited;
 with AddUsertype(utRubricatorListName,
  str_utRubricatorListCaption,
  str_utRubricatorListSettingsCaption,
  true,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(utRubricatorListName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimRubricator_Control_RubricatorList
 Tkw_PrimRubricator_Control_RubricatorList.Register('контрол::RubricatorList', TnscTreeView);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimRubricator_Control_RubricatorList_Push
 Tkw_PrimRubricator_Control_RubricatorList_Push.Register('контрол::RubricatorList:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_utRubricatorListCaption
 str_utRubricatorListCaption.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_utRubricatorListSettingsCaption
 str_utRubricatorListSettingsCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.