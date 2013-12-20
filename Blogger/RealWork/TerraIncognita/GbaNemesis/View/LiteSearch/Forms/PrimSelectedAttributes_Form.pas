unit PrimSelectedAttributes_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/LiteSearch/Forms/PrimSelectedAttributes_Form.pas"
// Начат: 27.01.2009 11:20
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Базовые определения предметной области::SearchLite::View::LiteSearch::PrimSelectedAttributes
//
// форма отображения выбранных значений поисковых атрибутов
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
  l3TreeInterfaces,
  SearchInterfaces,
  SearchDomainInterfaces
  {$If defined(Nemesis)}
  ,
  nscTreeView
  {$IfEnd} //Nemesis
  
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
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
  PrimSelectedAttributes_utSelectedAttributes_UserType,
  l3Interfaces,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a},
  vcmControllers {a}
  ;

type
 TPrimSelectedAttributesForm = {form} class(TvcmEntityForm)
  {* форма отображения выбранных значений поисковых атрибутов }
 private
 // private fields
   f_SelectedTree : TnscTreeView;
    {* Поле для свойства SelectedTree}
 protected
  procedure SignalDataSourceChanged(const anOld : IvcmViewAreaController;
                                const aDsNew : IvcmViewAreaController); override;
  procedure InitEntities; override;
  procedure MakeControls; override;
 protected
 // property methods
   function pm_GetSelectedTree: TnscTreeView;
 protected
 // realized methods
   procedure AttributeTree_SetRoot_Execute(const aTag: Il3CString);
   procedure AttributeTree_SetRoot(const aParams: IvcmExecuteParams);
   procedure SelectedList_RefreshValues_Execute(const aData: InsSelectedAttributesIterators);
   procedure SelectedList_RefreshValues(const aParams: IvcmExecuteParams);
 protected
 // protected fields
   dsSelectedAttributes : IdsSelectedAttributes;
    {* Выбранные атрибуты}
   f_InternalOp : Boolean;
 protected
 // protected methods
   function GetTaggedTreeInfo: InsTaggedTreeInfo; virtual; abstract;
   procedure AddNodes(aOp: TLogicOperation;
    const aIterator: INodeIterator); virtual; abstract;
   function GetTreeNode(const aNode: INodeBase): Il3SimpleNode; overload;  virtual; abstract;
   function GetTreeNode(const aNode: Il3SimpleNode): Il3SimpleNode; overload;  virtual; abstract;
 public
 // public properties
   property SelectedTree: TnscTreeView
     read pm_GetSelectedTree;
 end;//TPrimSelectedAttributesForm

implementation

uses
  nsTreeAttributeNodesNew
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  l3MessageID,
  SysUtils {a},
  StdRes {a}
  ;

var
   { Локализуемые строки utSelectedAttributesLocalConstants }
  str_utSelectedAttributesCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utSelectedAttributesCaption'; rValue : 'Поиск: Выбранные значения реквизита');
   { Заголовок пользовательского типа "Поиск: Выбранные значения реквизита" }

type
  Tkw_PrimSelectedAttributes_Control_SelectedTree = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола SelectedTree
----
*Пример использования*:
[code]
контрол::SelectedTree TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimSelectedAttributes_Control_SelectedTree

// start class Tkw_PrimSelectedAttributes_Control_SelectedTree

{$If not defined(NoScripts)}
function Tkw_PrimSelectedAttributes_Control_SelectedTree.GetString: AnsiString;
 {-}
begin
 Result := 'SelectedTree';
end;//Tkw_PrimSelectedAttributes_Control_SelectedTree.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimSelectedAttributes_Control_SelectedTree_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола SelectedTree
----
*Пример использования*:
[code]
контрол::SelectedTree:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimSelectedAttributes_Control_SelectedTree_Push

// start class Tkw_PrimSelectedAttributes_Control_SelectedTree_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimSelectedAttributes_Control_SelectedTree_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('SelectedTree');
 inherited;
end;//Tkw_PrimSelectedAttributes_Control_SelectedTree_Push.DoDoIt
{$IfEnd} //not NoScripts

function TPrimSelectedAttributesForm.pm_GetSelectedTree: TnscTreeView;
begin
 if (f_SelectedTree = nil) then
  f_SelectedTree := FindComponent('SelectedTree') As TnscTreeView;
 Result := f_SelectedTree;
end;

procedure TPrimSelectedAttributesForm.AttributeTree_SetRoot_Execute(const aTag: Il3CString);
//#UC START# *4AF3EBC001C4_497EC3B20359exec_var*
//#UC END# *4AF3EBC001C4_497EC3B20359exec_var*
begin
//#UC START# *4AF3EBC001C4_497EC3B20359exec_impl*
 GetTaggedTreeInfo.Tag := aTag
//#UC END# *4AF3EBC001C4_497EC3B20359exec_impl*
end;//TPrimSelectedAttributesForm.AttributeTree_SetRoot_Execute

procedure TPrimSelectedAttributesForm.AttributeTree_SetRoot(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IAttributeTree_SetRoot_Params) do
  AttributeTree_SetRoot_Execute(Tag);
end;

procedure TPrimSelectedAttributesForm.SelectedList_RefreshValues_Execute(const aData: InsSelectedAttributesIterators);
//#UC START# *4AF40D070123_497EC3B20359exec_var*
var
 l_CurNode     : Il3SimpleNode;
 l_Node        : INodeBase;
 l_OpInterface : InsLogicOperation;
 l_Op          : TLogicOperation;
//#UC END# *4AF40D070123_497EC3B20359exec_var*
begin
//#UC START# *4AF40D070123_497EC3B20359exec_impl*
 l_Op := loNone;
 l_CurNode := SelectedTree.GetCurrentNode;
 try
  if not Supports(l_CurNode, INodeBase, l_Node) then
   if Supports(l_CurNode, InsLogicOperation, l_OpInterface) then
    l_Op := l_OpInterface.Operation;

  SelectedTree.CTree.CRootNode.ReleaseChilds;

  if Assigned(aData.OrIterator) then
   AddNodes(loOr, aData.OrIterator);
  if Assigned(aData.AndIterator) then
   AddNodes(loAnd, aData.AndIterator);
  if Assigned(aData.NotIterator) then
   AddNodes(loNot, aData.NotIterator);

  f_InternalOp := true;
  try
   if l_OpInterface <> nil then
    SelectedTree.GotoOnNode(GetTreeNode(TnsLogicNode.Make(l_Op)))
   else
    if l_Node <> nil then
     SelectedTree.GotoOnNode(GetTreeNode(TnsSelectedNode.Make(l_Node)))
    else
     SelectedTree.GotoOnNode(SelectedTree.TreeStruct.RootNode);
  finally
   f_InternalOp := false;
  end;
 finally
  l_CurNode := nil;
 end;
//#UC END# *4AF40D070123_497EC3B20359exec_impl*
end;//TPrimSelectedAttributesForm.SelectedList_RefreshValues_Execute

procedure TPrimSelectedAttributesForm.SelectedList_RefreshValues(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As ISelectedList_RefreshValues_Params) do
  SelectedList_RefreshValues_Execute(Data);
end;

procedure TPrimSelectedAttributesForm.SignalDataSourceChanged(const anOld : IvcmViewAreaController;
 const aDsNew : IvcmViewAreaController);
begin
 inherited;
 if (aDsNew = nil) then
 begin
  dsSelectedAttributes := nil;
 end//aDsNew = nil
 else
 begin
  Supports(aDsNew, IdsSelectedAttributes, dsSelectedAttributes);
 end;//aDsNew = nil
end;

procedure TPrimSelectedAttributesForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_AttributeTree, nil);
  PublishFormEntity(en_SelectedList, nil);
  PublishOpWithResult(en_AttributeTree, op_SetRoot, AttributeTree_SetRoot, nil, nil);
  PublishOpWithResult(en_SelectedList, op_RefreshValues, SelectedList_RefreshValues, nil, nil);
 end;//with Entities.Entities
end;

procedure TPrimSelectedAttributesForm.MakeControls;
begin
 inherited;
 with AddUsertype(utSelectedAttributesName,
  str_utSelectedAttributesCaption,
  str_utSelectedAttributesCaption,
  true,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(utSelectedAttributesName
end;

initialization
// Регистрация Tkw_PrimSelectedAttributes_Control_SelectedTree
 Tkw_PrimSelectedAttributes_Control_SelectedTree.Register('контрол::SelectedTree', TnscTreeView);
// Регистрация Tkw_PrimSelectedAttributes_Control_SelectedTree_Push
 Tkw_PrimSelectedAttributes_Control_SelectedTree_Push.Register('контрол::SelectedTree:push');
// Инициализация str_utSelectedAttributesCaption
 str_utSelectedAttributesCaption.Init;

end.