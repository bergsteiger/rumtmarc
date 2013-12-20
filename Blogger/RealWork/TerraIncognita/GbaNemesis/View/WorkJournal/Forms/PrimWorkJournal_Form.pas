unit PrimWorkJournal_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/WorkJournal/Forms/PrimWorkJournal_Form.pas"
// Начат: 27.04.2010 16:22
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Основные прецеденты::WorkJournal::View::WorkJournal::PrimWorkJournal
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
  OfficeLike_Usual_Controls
  {$If not defined(NoVCM)}
  ,
  vcmEntityForm
  {$IfEnd} //not NoVCM
  
  {$If defined(Nemesis)}
  ,
  nscTreeView
  {$IfEnd} //Nemesis
  
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  Base_Operations_Strange_Controls,
  Base_Operations_Editions_Controls,
  l3StringIDEx,
  OfficeLike_Tree_Controls,
  WorkJournal_Strange_Controls
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
  PrimWorkJournal_utWorkJournal_UserType,
  vcmExternalInterfaces {a},
  vcmInterfaces {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TPrimWorkJournalForm = {form} class(TvcmEntityForm)
 private
 // private fields
   f_JournalTree : TnscTreeView;
    {* Поле для свойства JournalTree}
 protected
  procedure InitEntities; override;
  procedure MakeControls; override;
 protected
 // property methods
   function pm_GetJournalTree: TnscTreeView;
 protected
 // realized methods
   procedure Edit_Delete_Test(const aParams: IvcmTestParamsPrim);
     {* Удалить }
   procedure Edit_Delete_GetState(var State: TvcmOperationStateIndex);
     {* Удалить }
   procedure Edit_Delete_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Удалить }
   procedure Tree_ExpandAll_Test(const aParams: IvcmTestParamsPrim);
     {* Развернуть все }
   procedure Tree_CollapseAll_Test(const aParams: IvcmTestParamsPrim);
     {* Свернуть все }
   procedure SavedQuery_OpenQuery_Test(const aParams: IvcmTestParamsPrim);
   procedure SavedQuery_OpenQuery_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure SavedQuery_ExecuteQuery_Test(const aParams: IvcmTestParamsPrim);
   procedure SavedQuery_ExecuteQuery_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Journal_Clear_Test(const aParams: IvcmTestParamsPrim);
   procedure Journal_Clear_Execute(const aParams: IvcmExecuteParamsPrim);
 protected
 // overridden protected methods
   {$If not defined(NoVCM)}
   procedure DoInit(aFromHistory: Boolean); override;
     {* Инициализация формы. Для перекрытия в потомках }
   {$IfEnd} //not NoVCM
 public
 // overridden public methods
   {$If not defined(NoVCM)}
   procedure SetActiveControl; override;
     {* Устанавливает текущий контрол. Какой? Сама форма решает. Для перекрытия в потомках }
   {$IfEnd} //not NoVCM
 public
 // public properties
   property JournalTree: TnscTreeView
     read pm_GetJournalTree;
 end;//TPrimWorkJournalForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  FoldersRes,
  DynamicTreeUnit,
  SysUtils,
  UserJournalUnit,
  eeInterfaces,
  BaseTypesUnit,
  nsOpenUtils,
  nsQueryUtils,
  SearchUnit,
  Windows,
  l3MessageID
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  StdRes {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
   { Локализуемые строки utWorkJournalLocalConstants }
  str_utWorkJournalCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utWorkJournalCaption'; rValue : 'Журнал работы');
   { Заголовок пользовательского типа "Журнал работы" }

type
  Tkw_PrimWorkJournal_Control_JournalTree = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола JournalTree
----
*Пример использования*:
[code]
контрол::JournalTree TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimWorkJournal_Control_JournalTree

// start class Tkw_PrimWorkJournal_Control_JournalTree

{$If not defined(NoScripts)}
function Tkw_PrimWorkJournal_Control_JournalTree.GetString: AnsiString;
 {-}
begin
 Result := 'JournalTree';
end;//Tkw_PrimWorkJournal_Control_JournalTree.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimWorkJournal_Control_JournalTree_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола JournalTree
----
*Пример использования*:
[code]
контрол::JournalTree:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimWorkJournal_Control_JournalTree_Push

// start class Tkw_PrimWorkJournal_Control_JournalTree_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimWorkJournal_Control_JournalTree_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('JournalTree');
 inherited;
end;//Tkw_PrimWorkJournal_Control_JournalTree_Push.DoDoIt
{$IfEnd} //not NoScripts

function TPrimWorkJournalForm.pm_GetJournalTree: TnscTreeView;
begin
 if (f_JournalTree = nil) then
  f_JournalTree := FindComponent('JournalTree') As TnscTreeView;
 Result := f_JournalTree;
end;

procedure TPrimWorkJournalForm.Edit_Delete_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *494F89C30197_4BD6D6EA0075test_var*
//#UC END# *494F89C30197_4BD6D6EA0075test_var*
begin
//#UC START# *494F89C30197_4BD6D6EA0075test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := JournalTree.TreeView.Current >= 0;
//#UC END# *494F89C30197_4BD6D6EA0075test_impl*
end;//TPrimWorkJournalForm.Edit_Delete_Test

procedure TPrimWorkJournalForm.Edit_Delete_GetState(var State: TvcmOperationStateIndex);
//#UC START# *494F89C30197_4BD6D6EA0075getstate_var*
//#UC END# *494F89C30197_4BD6D6EA0075getstate_var*
begin
//#UC START# *494F89C30197_4BD6D6EA0075getstate_impl*
 // - ничего не делаем
//#UC END# *494F89C30197_4BD6D6EA0075getstate_impl*
end;//TPrimWorkJournalForm.Edit_Delete_GetState

procedure TPrimWorkJournalForm.Edit_Delete_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *494F89C30197_4BD6D6EA0075exec_var*
//#UC END# *494F89C30197_4BD6D6EA0075exec_var*
begin
//#UC START# *494F89C30197_4BD6D6EA0075exec_impl*
 TdmStdRes.MakeWorkJournal.Delete(JournalTree.GetCurrentNode);
//#UC END# *494F89C30197_4BD6D6EA0075exec_impl*
end;//TPrimWorkJournalForm.Edit_Delete_Execute

procedure TPrimWorkJournalForm.Tree_ExpandAll_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4BDAF7880236_4BD6D6EA0075test_var*
//#UC END# *4BDAF7880236_4BD6D6EA0075test_var*
begin
//#UC START# *4BDAF7880236_4BD6D6EA0075test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := JournalTree.TreeView.Current >= 0;
//#UC END# *4BDAF7880236_4BD6D6EA0075test_impl*
end;//TPrimWorkJournalForm.Tree_ExpandAll_Test

procedure TPrimWorkJournalForm.Tree_CollapseAll_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4BDAF7A2005C_4BD6D6EA0075test_var*
//#UC END# *4BDAF7A2005C_4BD6D6EA0075test_var*
begin
//#UC START# *4BDAF7A2005C_4BD6D6EA0075test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := JournalTree.TreeView.Current >= 0;
//#UC END# *4BDAF7A2005C_4BD6D6EA0075test_impl*
end;//TPrimWorkJournalForm.Tree_CollapseAll_Test

procedure TPrimWorkJournalForm.SavedQuery_OpenQuery_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C3F3421036A_4BD6D6EA0075test_var*
var
 l_Node: INodeBase;
//#UC END# *4C3F3421036A_4BD6D6EA0075test_var*
begin
//#UC START# *4C3F3421036A_4BD6D6EA0075test_impl*
 aParams.Op.Flag[vcm_ofEnabled] :=
  Supports(JournalTree.TreeView.CurrentNode, INodeBase, l_Node) and
  (TJournalObjectType(l_Node.GetType) = JOT_QUERY);
//#UC END# *4C3F3421036A_4BD6D6EA0075test_impl*
end;//TPrimWorkJournalForm.SavedQuery_OpenQuery_Test

procedure TPrimWorkJournalForm.SavedQuery_OpenQuery_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C3F3421036A_4BD6D6EA0075exec_var*
var
 l_eeNode      : IeeNode;
 l_AdapterNode : INodeBase;
 l_BaseEntity  : IUnknown;
//#UC END# *4C3F3421036A_4BD6D6EA0075exec_var*
begin
//#UC START# *4C3F3421036A_4BD6D6EA0075exec_impl*
 with JournalTree.TreeView do
 begin
  l_eeNode := CurrentNode;
  try
   if Supports(l_eeNode, INodeBase, l_AdapterNode) then
    try
     try
      l_AdapterNode.GetEntity(l_BaseEntity);
     except
      on ECanNotFindData do
       exit; //TODO: нода "пропала" что делать?
     end;
     try
      OpenQuery(l_BaseEntity);
     finally
      l_BaseEntity := nil;
     end;
    finally
     l_AdapterNode := nil;
    end;
  finally
   l_eeNode := nil;
  end;
 end;
//#UC END# *4C3F3421036A_4BD6D6EA0075exec_impl*
end;//TPrimWorkJournalForm.SavedQuery_OpenQuery_Execute

procedure TPrimWorkJournalForm.SavedQuery_ExecuteQuery_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C3F342E02AF_4BD6D6EA0075test_var*
//#UC END# *4C3F342E02AF_4BD6D6EA0075test_var*
begin
//#UC START# *4C3F342E02AF_4BD6D6EA0075test_impl*
 SavedQuery_OpenQuery_Test(aParams);
//#UC END# *4C3F342E02AF_4BD6D6EA0075test_impl*
end;//TPrimWorkJournalForm.SavedQuery_ExecuteQuery_Test

procedure TPrimWorkJournalForm.SavedQuery_ExecuteQuery_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C3F342E02AF_4BD6D6EA0075exec_var*
var
 l_eeNode : IeeNode;
 l_AdapterNode : INodeBase;
 l_BaseEntity : IUnknown;
 l_Query: IQuery;
//#UC END# *4C3F342E02AF_4BD6D6EA0075exec_var*
begin
//#UC START# *4C3F342E02AF_4BD6D6EA0075exec_impl*
 with JournalTree.TreeView do
 begin
  l_eeNode := CurrentNode;
  try
   if Supports(l_eeNode, INodeBase, l_AdapterNode) then
    try
     try
      l_AdapterNode.GetEntity(l_BaseEntity);
     except
      on ECanNotFindData do
       Exit; //TODO: нода "пропала" что делать?
     end;
     try
      l_Query := l_BaseEntity As IQuery;
      try
       if l_Query.GetType = QT_BASE_SEARCH then
        OpenQuery(l_Query);
       nsSearch(l_Query, nil, nil, NativeMainForm);
      finally
       l_Query := nil;
      end;
     finally
      l_BaseEntity := nil;
     end;//try..finally
    finally
     l_AdapterNode := nil;
    end;//try..finally
  finally
   l_eeNode := nil;
  end;//try..finally
 end;//with JournalTree.TreeView
//#UC END# *4C3F342E02AF_4BD6D6EA0075exec_impl*
end;//TPrimWorkJournalForm.SavedQuery_ExecuteQuery_Execute

procedure TPrimWorkJournalForm.Journal_Clear_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C3F348402AC_4BD6D6EA0075test_var*
//#UC END# *4C3F348402AC_4BD6D6EA0075test_var*
begin
//#UC START# *4C3F348402AC_4BD6D6EA0075test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := JournalTree.TreeView.Current >= 0;
//#UC END# *4C3F348402AC_4BD6D6EA0075test_impl*
end;//TPrimWorkJournalForm.Journal_Clear_Test

procedure TPrimWorkJournalForm.Journal_Clear_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C3F348402AC_4BD6D6EA0075exec_var*
//#UC END# *4C3F348402AC_4BD6D6EA0075exec_var*
begin
//#UC START# *4C3F348402AC_4BD6D6EA0075exec_impl*
 TdmStdRes.MakeWorkJournal.Clear;
//#UC END# *4C3F348402AC_4BD6D6EA0075exec_impl*
end;//TPrimWorkJournalForm.Journal_Clear_Execute

{$If not defined(NoVCM)}
procedure TPrimWorkJournalForm.DoInit(aFromHistory: Boolean);
//#UC START# *49803F5503AA_4BD6D6EA0075_var*
//#UC END# *49803F5503AA_4BD6D6EA0075_var*
begin
//#UC START# *49803F5503AA_4BD6D6EA0075_impl*
 inherited;
 JournalTree.Images := nsFoldersRes.FoldersItemImages;
//#UC END# *49803F5503AA_4BD6D6EA0075_impl*
end;//TPrimWorkJournalForm.DoInit
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
procedure TPrimWorkJournalForm.SetActiveControl;
//#UC START# *4AC3803A03CD_4BD6D6EA0075_var*
//#UC END# *4AC3803A03CD_4BD6D6EA0075_var*
begin
//#UC START# *4AC3803A03CD_4BD6D6EA0075_impl*
 Windows.SetFocus(JournalTree.Handle);
//#UC END# *4AC3803A03CD_4BD6D6EA0075_impl*
end;//TPrimWorkJournalForm.SetActiveControl
{$IfEnd} //not NoVCM

procedure TPrimWorkJournalForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_Edit, nil);
  PublishFormEntity(en_Tree, nil);
  PublishFormEntity(en_SavedQuery, nil);
  PublishFormEntity(en_Journal, nil);
  PublishOp(en_Edit, op_Delete, Edit_Delete_Execute, Edit_Delete_Test, Edit_Delete_GetState);
  ShowInContextMenu(en_Edit, op_Delete, true);
  PublishOp(en_Tree, op_ExpandAll, nil, Tree_ExpandAll_Test, nil);
  ShowInContextMenu(en_Tree, op_ExpandAll, true);
  ShowInToolbar(en_Tree, op_ExpandAll, true);
  PublishOp(en_Tree, op_CollapseAll, nil, Tree_CollapseAll_Test, nil);
  ShowInContextMenu(en_Tree, op_CollapseAll, true);
  ShowInToolbar(en_Tree, op_CollapseAll, true);
  PublishOp(en_SavedQuery, op_OpenQuery, SavedQuery_OpenQuery_Execute, SavedQuery_OpenQuery_Test, nil);
  ShowInContextMenu(en_SavedQuery, op_OpenQuery, true);
  PublishOp(en_SavedQuery, op_ExecuteQuery, SavedQuery_ExecuteQuery_Execute, SavedQuery_ExecuteQuery_Test, nil);
  ShowInContextMenu(en_SavedQuery, op_ExecuteQuery, true);
  PublishOp(en_Journal, op_Clear, Journal_Clear_Execute, Journal_Clear_Test, nil);
  ShowInContextMenu(en_Journal, op_Clear, true);
  ShowInToolbar(en_Journal, op_Clear, true);
 end;//with Entities.Entities
end;

procedure TPrimWorkJournalForm.MakeControls;
begin
 inherited;
 with AddUsertype(utWorkJournalName,
  str_utWorkJournalCaption,
  str_utWorkJournalCaption,
  true,
  128,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(utWorkJournalName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_utWorkJournalCaption
 str_utWorkJournalCaption.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimWorkJournal_Control_JournalTree
 Tkw_PrimWorkJournal_Control_JournalTree.Register('контрол::JournalTree', TnscTreeView);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimWorkJournal_Control_JournalTree_Push
 Tkw_PrimWorkJournal_Control_JournalTree_Push.Register('контрол::JournalTree:push');
{$IfEnd} //not Admin AND not Monitorings

end.