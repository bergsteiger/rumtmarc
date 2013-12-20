unit PrimGroupsList_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Admin/Forms/PrimGroupsList_Form.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Администратор::Admin::View::Admin::PrimGroupsList
//
// Список групп
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If defined(Admin)}
uses
  AdminInterfaces,
  eeTreeView,
  OfficeLike_Usual_Controls,
  Admin_Users_Controls
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
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
  PrimGroupsList_admGroupList_UserType,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a},
  vcmControllers {a}
  ;
{$IfEnd} //Admin

{$If defined(Admin)}
type
 TPrimGroupsListForm = {form} class(TvcmEntityForm)
  {* Список групп }
 private
 // private fields
   f_GroupsTree : TeeTreeView;
    {* Поле для свойства GroupsTree}
 protected
  procedure SignalDataSourceChanged(const anOld : IvcmViewAreaController;
                                const aDsNew : IvcmViewAreaController); override;
  procedure InitEntities; override;
  procedure MakeControls; override;
 private
 // private methods
   function IsCurrentUsual: Boolean;
     {* Является ли текущая группа обычной }
 protected
 // property methods
   function pm_GetGroupsTree: TeeTreeView;
 protected
 // realized methods
   procedure Edit_Delete_Test(const aParams: IvcmTestParamsPrim);
     {* Удалить }
   procedure Edit_Delete_GetState(var State: TvcmOperationStateIndex);
     {* Удалить }
   procedure Edit_Delete_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Удалить }
   procedure Groups_Add_Test(const aParams: IvcmTestParamsPrim);
     {* Добавить }
   procedure Groups_Add_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Добавить }
   procedure Groups_ChangeBaseAccess_Test(const aParams: IvcmTestParamsPrim);
   procedure Groups_ChangeBaseAccess_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Groups_Rename_Test(const aParams: IvcmTestParamsPrim);
     {* Переименовать группу }
   procedure Groups_Rename_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Переименовать группу }
 protected
 // protected fields
   ViewArea : IdsGroupsList;
 protected
 // protected methods
   procedure UpdateCurrent;
     {* Текущий поменялся }
 protected
 // protected properties
   property GroupsTree: TeeTreeView
     read pm_GetGroupsTree;
 end;//TPrimGroupsListForm
{$IfEnd} //Admin

implementation

{$If defined(Admin)}
uses
  l3TreeInterfaces
  {$If not defined(NoVCM)}
  ,
  StdRes
  {$IfEnd} //not NoVCM
  ,
  l3Base,
  nsTypes,
  l3MessageID
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //Admin

{$If defined(Admin)}

var
   { Локализуемые строки admGroupListLocalConstants }
  str_admGroupListCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'admGroupListCaption'; rValue : 'Группы пользователей');
   { Заголовок пользовательского типа "Группы пользователей" }
  str_admGroupListSettingsCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'admGroupListSettingsCaption'; rValue : 'Группы пользователей (вкладка)');
   { Заголовок пользовательского типа "Группы пользователей" для настройки панелей инструментов }

type
  Tkw_PrimGroupsList_Control_GroupsTree = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола GroupsTree
----
*Пример использования*:
[code]
контрол::GroupsTree TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimGroupsList_Control_GroupsTree

// start class Tkw_PrimGroupsList_Control_GroupsTree

{$If not defined(NoScripts)}
function Tkw_PrimGroupsList_Control_GroupsTree.GetString: AnsiString;
 {-}
begin
 Result := 'GroupsTree';
end;//Tkw_PrimGroupsList_Control_GroupsTree.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimGroupsList_Control_GroupsTree_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола GroupsTree
----
*Пример использования*:
[code]
контрол::GroupsTree:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimGroupsList_Control_GroupsTree_Push

// start class Tkw_PrimGroupsList_Control_GroupsTree_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimGroupsList_Control_GroupsTree_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('GroupsTree');
 inherited;
end;//Tkw_PrimGroupsList_Control_GroupsTree_Push.DoDoIt
{$IfEnd} //not NoScripts

function TPrimGroupsListForm.pm_GetGroupsTree: TeeTreeView;
begin
 if (f_GroupsTree = nil) then
  f_GroupsTree := FindComponent('GroupsTree') As TeeTreeView;
 Result := f_GroupsTree;
end;

procedure TPrimGroupsListForm.UpdateCurrent;
//#UC START# *49EEDBC902C6_49EC75B5022C_var*
//#UC END# *49EEDBC902C6_49EC75B5022C_var*
begin
//#UC START# *49EEDBC902C6_49EC75B5022C_impl*
 ViewArea.CurrentChanged(GroupsTree.GetCurrentNode);
 UpdateStatusInfo;
//#UC END# *49EEDBC902C6_49EC75B5022C_impl*
end;//TPrimGroupsListForm.UpdateCurrent

function TPrimGroupsListForm.IsCurrentUsual: Boolean;
//#UC START# *49EEF5D100ED_49EC75B5022C_var*
var
 l_Node: Il3SimpleNode;
//#UC END# *49EEF5D100ED_49EC75B5022C_var*
begin
//#UC START# *49EEF5D100ED_49EC75B5022C_impl*
 l_Node := GroupsTree.GetCurrentNode;
 Result := ViewArea.GroupsListNodeType(l_Node) = gntUsual;
//#UC END# *49EEF5D100ED_49EC75B5022C_impl*
end;//TPrimGroupsListForm.IsCurrentUsual

procedure TPrimGroupsListForm.Edit_Delete_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *494F89C30197_49EC75B5022Ctest_var*
//#UC END# *494F89C30197_49EC75B5022Ctest_var*
begin
//#UC START# *494F89C30197_49EC75B5022Ctest_impl*
 if aParams.Control = GroupsTree then
  aParams.Op.Flag[vcm_ofEnabled] := IsCurrentUsual
 else
  if not aParams.CallControl then
   aParams.Op.Flag[vcm_ofEnabled] := False;
//#UC END# *494F89C30197_49EC75B5022Ctest_impl*
end;//TPrimGroupsListForm.Edit_Delete_Test

procedure TPrimGroupsListForm.Edit_Delete_GetState(var State: TvcmOperationStateIndex);
//#UC START# *494F89C30197_49EC75B5022Cgetstate_var*
//#UC END# *494F89C30197_49EC75B5022Cgetstate_var*
begin
//#UC START# *494F89C30197_49EC75B5022Cgetstate_impl*
 State := st_user_Edit_Delete_Group;
//#UC END# *494F89C30197_49EC75B5022Cgetstate_impl*
end;//TPrimGroupsListForm.Edit_Delete_GetState

procedure TPrimGroupsListForm.Edit_Delete_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *494F89C30197_49EC75B5022Cexec_var*
var
 l_CurrentNode: Il3SimpleNode;
 l_HasUsers: Boolean;
//#UC END# *494F89C30197_49EC75B5022Cexec_var*
begin
//#UC START# *494F89C30197_49EC75B5022Cexec_impl*
 if aParams.Control = GroupsTree then
 begin
  l_CurrentNode := GroupsTree.GetCurrentNode;
  l_HasUsers := ViewArea.HasUsers(l_CurrentNode);
  if l_HasUsers and not Ask(qr_DeleteNotEmptyGroup) then
   Exit;
  if not l_HasUsers and not Ask(qr_DeleteGroup, [l3CStr(l_CurrentNode)]) then
   Exit;
  ViewArea.DeleteGroup(l_CurrentNode);
 end
 else
  aParams.CallControl;
//#UC END# *494F89C30197_49EC75B5022Cexec_impl*
end;//TPrimGroupsListForm.Edit_Delete_Execute

procedure TPrimGroupsListForm.Groups_Add_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49EC7545036C_49EC75B5022Ctest_var*
//#UC END# *49EC7545036C_49EC75B5022Ctest_var*
begin
//#UC START# *49EC7545036C_49EC75B5022Ctest_impl*
// Do Nothing
//#UC END# *49EC7545036C_49EC75B5022Ctest_impl*
end;//TPrimGroupsListForm.Groups_Add_Test

procedure TPrimGroupsListForm.Groups_Add_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49EC7545036C_49EC75B5022Cexec_var*
//#UC END# *49EC7545036C_49EC75B5022Cexec_var*
begin
//#UC START# *49EC7545036C_49EC75B5022Cexec_impl*
 try
  ViewArea.CreateNewGroup;
 except
  on E: EDuplicateGroupName do
   Say(war_GroupNameDuplicate, [nsCStr(E.Message)]);
 end;
//#UC END# *49EC7545036C_49EC75B5022Cexec_impl*
end;//TPrimGroupsListForm.Groups_Add_Execute

procedure TPrimGroupsListForm.Groups_ChangeBaseAccess_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49EC755501FB_49EC75B5022Ctest_var*
//#UC END# *49EC755501FB_49EC75B5022Ctest_var*
begin
//#UC START# *49EC755501FB_49EC75B5022Ctest_impl*
 aParams.Op.Flag[vcm_ofEnabled] := IsCurrentUsual;
//#UC END# *49EC755501FB_49EC75B5022Ctest_impl*
end;//TPrimGroupsListForm.Groups_ChangeBaseAccess_Test

procedure TPrimGroupsListForm.Groups_ChangeBaseAccess_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49EC755501FB_49EC75B5022Cexec_var*
//#UC END# *49EC755501FB_49EC75B5022Cexec_var*
begin
//#UC START# *49EC755501FB_49EC75B5022Cexec_impl*
 ViewArea.ChangeBasesAccessForGroup(GroupsTree.GetCurrentNode);
//#UC END# *49EC755501FB_49EC75B5022Cexec_impl*
end;//TPrimGroupsListForm.Groups_ChangeBaseAccess_Execute

procedure TPrimGroupsListForm.Groups_Rename_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *49EEF22D004A_49EC75B5022Ctest_var*
//#UC END# *49EEF22D004A_49EC75B5022Ctest_var*
begin
//#UC START# *49EEF22D004A_49EC75B5022Ctest_impl*
 aParams.Op.Flag[vcm_ofEnabled] := IsCurrentUsual;
//#UC END# *49EEF22D004A_49EC75B5022Ctest_impl*
end;//TPrimGroupsListForm.Groups_Rename_Test

procedure TPrimGroupsListForm.Groups_Rename_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *49EEF22D004A_49EC75B5022Cexec_var*
//#UC END# *49EEF22D004A_49EC75B5022Cexec_var*
begin
//#UC START# *49EEF22D004A_49EC75B5022Cexec_impl*
 try
  ViewArea.RenameGroup(GroupsTree.GetCurrentNode);
 except
  on E: EDuplicateGroupName do
   Say(war_GroupNameDuplicate, [nsCStr(E.Message)]);
 end;
//#UC END# *49EEF22D004A_49EC75B5022Cexec_impl*
end;//TPrimGroupsListForm.Groups_Rename_Execute

procedure TPrimGroupsListForm.SignalDataSourceChanged(const anOld : IvcmViewAreaController;
 const aDsNew : IvcmViewAreaController);
begin
 inherited;
 if (aDsNew = nil) then
 begin
  ViewArea := nil;
 end//aDsNew = nil
 else
 begin
  ViewArea := aDsNew As IdsGroupsList;
 end;//aDsNew = nil
end;

procedure TPrimGroupsListForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_Edit, nil);
  PublishFormEntity(en_Groups, nil);
  PublishOp(en_Edit, op_Delete, Edit_Delete_Execute, Edit_Delete_Test, Edit_Delete_GetState);
  PublishOp(en_Groups, op_Add, Groups_Add_Execute, Groups_Add_Test, nil);
  PublishOp(en_Groups, op_ChangeBaseAccess, Groups_ChangeBaseAccess_Execute, Groups_ChangeBaseAccess_Test, nil);
  PublishOp(en_Groups, op_Rename, Groups_Rename_Execute, Groups_Rename_Test, nil);
 end;//with Entities.Entities
end;

procedure TPrimGroupsListForm.MakeControls;
begin
 inherited;
 with AddUsertype(admGroupListName,
  str_admGroupListCaption,
  str_admGroupListSettingsCaption,
  true,
  -1,
  10,
  '',
  nil,
  nil,
  nil,
  vcm_ccDisable) do
 begin
 end;//with AddUsertype(admGroupListName
end;

{$IfEnd} //Admin

initialization
{$If defined(Admin)}
// Инициализация str_admGroupListCaption
 str_admGroupListCaption.Init;
{$IfEnd} //Admin
{$If defined(Admin)}
// Инициализация str_admGroupListSettingsCaption
 str_admGroupListSettingsCaption.Init;
{$IfEnd} //Admin
{$If defined(Admin)}
// Регистрация Tkw_PrimGroupsList_Control_GroupsTree
 Tkw_PrimGroupsList_Control_GroupsTree.Register('контрол::GroupsTree', TeeTreeView);
{$IfEnd} //Admin
{$If defined(Admin)}
// Регистрация Tkw_PrimGroupsList_Control_GroupsTree_Push
 Tkw_PrimGroupsList_Control_GroupsTree_Push.Register('контрол::GroupsTree:push');
{$IfEnd} //Admin

end.