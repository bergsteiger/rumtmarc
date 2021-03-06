unit PrimUserList_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ������ �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Admin/Forms/PrimUserList_Form.pas"
// �����: 15.08.2005 19.00
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 �������������::Admin::View::Admin::PrimUserList
//
// ����� ��� ����������� ������ �������������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If defined(Admin)}
uses
  l3Interfaces,
  l3Types
  {$If not defined(NoVCM)}
  ,
  vcmExternalInterfaces
  {$IfEnd} //not NoVCM
  ,
  AdminInterfaces,
  eeTreeView,
  OfficeLike_Usual_Controls,
  Admin_Users_Controls
  {$If not defined(NoVCM)}
  ,
  vcmEntityForm
  {$IfEnd} //not NoVCM
  ,
  L10nInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  
  {$If defined(Nemesis)}
  ,
  nscContextFilter
  {$IfEnd} //Nemesis
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
  PrimUserList_admUserList_UserType
  {$If not defined(NoVCM)}
  ,
  vcmControllers
  {$IfEnd} //not NoVCM
  ,
  vcmInterfaces {a}
  ;
{$IfEnd} //Admin

{$If defined(Admin)}
type
 TPrimUserListForm = {form} class(TvcmEntityForm, IbsUserListViewListener)
  {* ����� ��� ����������� ������ ������������� }
 private
 // private fields
   f_PrevUID : Integer;
    {* ID ����������� ������������, �� �������� ���� ������ � ������ ������ �������� ������ ������������}
   f_AutoRegistration : Tl3Bool;
   f_FilterMap : InsIntegerValueMap;
   f_NeedFillFilterList : Boolean;
   UseCase : IsdsAdmin;
   f_trUserList : TeeTreeView;
    {* ���� ��� �������� trUserList}
   f_ContextFilter : TnscContextFilter;
    {* ���� ��� �������� ContextFilter}
 protected
  procedure SignalDataSourceChanged(const anOld : IvcmViewAreaController;
                                const aDsNew : IvcmViewAreaController); override;
  procedure InitEntities; override;
  procedure MakeControls; override;
 protected
 // property methods
   function pm_GetTrUserList: TeeTreeView;
   function pm_GetContextFilter: TnscContextFilter;
   function pm_GetAutoRegistration: Boolean;
 protected
 // realized methods
   procedure Edit_Delete_Test(const aParams: IvcmTestParamsPrim);
     {* ������� }
   procedure Edit_Delete_GetState(var State: TvcmOperationStateIndex);
     {* ������� }
   procedure Edit_Delete_Execute(const aParams: IvcmExecuteParamsPrim);
     {* ������� }
   procedure Users_Add_Test(const aParams: IvcmTestParamsPrim);
     {* �������� }
   procedure Users_Add_Execute(const aParams: IvcmExecuteParamsPrim);
     {* �������� }
   procedure CreateUserFinished(Successfull: Boolean);
   procedure GroupChanged(aGroupUID: Integer);
     {* ��������� ������ }
   procedure RequestUpdateCurrent;
   procedure Users_LogoutUser_Test(const aParams: IvcmTestParamsPrim);
     {* ��������� ������������ }
   procedure Users_LogoutUser_GetState(var State: TvcmOperationStateIndex);
     {* ��������� ������������ }
   procedure Users_LogoutUser_Execute(const aParams: IvcmExecuteParamsPrim);
     {* ��������� ������������ }
   procedure Users_ConsultingStateForNewbie_GetState(var State: TvcmOperationStateIndex);
     {* ���������/��������� ����� ��������� ������������� ������������� ������ ��������� ����������� }
   procedure Users_ConsultingStateForNewbie_Execute(const aParams: IvcmExecuteParamsPrim);
     {* ���������/��������� ����� ��������� ������������� ������������� ������ ��������� ����������� }
   procedure Users_Autoregistration_GetState(var State: TvcmOperationStateIndex);
     {* ���������/��������� ��������������� ����� ������������� }
   procedure Users_Autoregistration_Execute(const aParams: IvcmExecuteParamsPrim);
     {* ���������/��������� ��������������� ����� ������������� }
   procedure Users_AddPrivelegedRight_Test(const aParams: IvcmTestParamsPrim);
     {* ������� ���������� ������������� ������������������ }
   procedure Users_AddPrivelegedRight_GetState(var State: TvcmOperationStateIndex);
     {* ������� ���������� ������������� ������������������ }
   procedure Users_AddPrivelegedRight_Execute(const aParams: IvcmExecuteParamsPrim);
     {* ������� ���������� ������������� ������������������ }
   procedure Users_RemovePrivelegedRight_Test(const aParams: IvcmTestParamsPrim);
     {* �������� ��� ���������� ������������� ����� ���������� }
   procedure Users_RemovePrivelegedRight_GetState(var State: TvcmOperationStateIndex);
     {* �������� ��� ���������� ������������� ����� ���������� }
   procedure Users_RemovePrivelegedRight_Execute(const aParams: IvcmExecuteParamsPrim);
     {* �������� ��� ���������� ������������� ����� ���������� }
   procedure Users_UserFilter_Test(const aParams: IvcmTestParamsPrim);
   procedure Users_UserFilter_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Users_DisableConsulting_Test(const aParams: IvcmTestParamsPrim);
   procedure Users_DisableConsulting_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Users_EnableConsulting_Test(const aParams: IvcmTestParamsPrim);
   procedure Users_EnableConsulting_Execute(const aParams: IvcmExecuteParamsPrim);
   procedure Users_MakeFiltersShared_Test(const aParams: IvcmTestParamsPrim);
     {* ������� ������� ������� ������������ ������ }
   procedure Users_MakeFiltersShared_Execute(const aParams: IvcmExecuteParamsPrim);
     {* ������� ������� ������� ������������ ������ }
   procedure Users_DenyDeleteIdle_Test(const aParams: IvcmTestParamsPrim);
     {* �� ������� ��� ����������� }
   procedure Users_DenyDeleteIdle_Execute(const aParams: IvcmExecuteParamsPrim);
     {* �� ������� ��� ����������� }
 protected
 // overridden protected methods
   procedure InitFields; override;
   procedure FinishDataUpdate; override;
   {$If not defined(NoVCM)}
   procedure NotifyDataSourceChanged(const anOld: IvcmViewAreaController;
    const aNew: IvcmViewAreaController); override;
     {* ��������� �������� ������. ��� ���������� � �������� }
   {$IfEnd} //not NoVCM
   {$If not defined(NoVCM)}
   procedure DoInit(aFromHistory: Boolean); override;
     {* ������������� �����. ��� ���������� � �������� }
   {$IfEnd} //not NoVCM
   procedure ClearFields; override;
 protected
 // protected fields
   f_InCreateNew : Boolean;
   ViewArea : IdsUserList;
 protected
 // protected methods
   procedure SetPrivilegedRightTest(const aParams: IvcmTestParamsPrim;
     TargetValue: Boolean);
   procedure SetPrivilegedRight(IsPrivileged: Boolean);
   procedure PrepareConsultingParams(const aParams: IvcmTestParamsPrim;
     aDisable: Boolean);
   procedure SetConsultingPayment(IsAllowed: Boolean;
     ForAll: Boolean);
     {* ���������/��������� ����������� �������� ������������ ��� ����
           ������������� }
   procedure SelectFailed(const aList: Il3InterfaceList);
     {* �������� ���������� ������������� }
   procedure UpdateCurrent;
   function IsApplyMultiOperations: Boolean;
   procedure CheckUnsavedUserProperty;
 protected
 // protected properties
   property trUserList: TeeTreeView
     read pm_GetTrUserList;
   property ContextFilter: TnscContextFilter
     read pm_GetContextFilter;
   property AutoRegistration: Boolean
     read pm_GetAutoRegistration;
 end;//TPrimUserListForm
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
  nsUserNodes,
  ForbidAutoregistration_Form,
  DataAdapter,
  l3Utils,
  bsTypes,
  SecurityUnit,
  dsForbidAutoregistration,
  nsValueMaps,
  nsValueMapsIDs
  {$If not defined(NoVCM)}
  ,
  vcmBase
  {$IfEnd} //not NoVCM
  ,
  SysUtils,
  l3MessageID
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //Admin

{$If defined(Admin)}

var
   { ������������ ������ admUserListLocalConstants }
  str_admUserListCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'admUserListCaption'; rValue : '������ �������������');
   { ��������� ����������������� ���� "������ �������������" }

var
   { ������������ ������ PrimUserListConsts }
  str_DisableConsultingForAll : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'DisableConsultingForAll'; rValue : '��������� ���� ������������� ������ ��������� �����������');
   { '��������� ���� ������������� ������ ��������� �����������' }
  str_EnableConsultingForAll : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'EnableConsultingForAll'; rValue : '��������� ���� ������������� ������ ��������� �����������');
   { '��������� ���� ������������� ������ ��������� �����������' }
  str_DisableConsulting : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'DisableConsulting'; rValue : '��������� ������������� ������ ��������� �����������');
   { '��������� ������������� ������ ��������� �����������' }
  str_EnableConsulting : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'EnableConsulting'; rValue : '��������� ������������� ������ ��������� �����������');
   { '��������� ������������� ������ ��������� �����������' }

type
  Tkw_PrimUserList_Control_trUserList = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� trUserList
----
*������ �������������*:
[code]
�������::trUserList TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimUserList_Control_trUserList

// start class Tkw_PrimUserList_Control_trUserList

{$If not defined(NoScripts)}
function Tkw_PrimUserList_Control_trUserList.GetString: AnsiString;
 {-}
begin
 Result := 'trUserList';
end;//Tkw_PrimUserList_Control_trUserList.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimUserList_Control_trUserList_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� trUserList
----
*������ �������������*:
[code]
�������::trUserList:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimUserList_Control_trUserList_Push

// start class Tkw_PrimUserList_Control_trUserList_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimUserList_Control_trUserList_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('trUserList');
 inherited;
end;//Tkw_PrimUserList_Control_trUserList_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimUserList_Control_ContextFilter = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� ContextFilter
----
*������ �������������*:
[code]
�������::ContextFilter TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimUserList_Control_ContextFilter

// start class Tkw_PrimUserList_Control_ContextFilter

{$If not defined(NoScripts)}
function Tkw_PrimUserList_Control_ContextFilter.GetString: AnsiString;
 {-}
begin
 Result := 'ContextFilter';
end;//Tkw_PrimUserList_Control_ContextFilter.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimUserList_Control_ContextFilter_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� ContextFilter
----
*������ �������������*:
[code]
�������::ContextFilter:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimUserList_Control_ContextFilter_Push

// start class Tkw_PrimUserList_Control_ContextFilter_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimUserList_Control_ContextFilter_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('ContextFilter');
 inherited;
end;//Tkw_PrimUserList_Control_ContextFilter_Push.DoDoIt
{$IfEnd} //not NoScripts

procedure TPrimUserListForm.SetPrivilegedRightTest(const aParams: IvcmTestParamsPrim;
  TargetValue: Boolean);
//#UC START# *4C7CE69202BD_49480F0901B9_var*
const
 c_States: array [Boolean] of TbsUserNodeTypes = ([untActivePrivileged, untInActivePrivileged], [untActiveNonSystem, untInActiveNonSystem]);
//#UC END# *4C7CE69202BD_49480F0901B9_var*
begin
//#UC START# *4C7CE69202BD_49480F0901B9_impl*
 aParams.Op.Flag[vcm_ofEnabled] := defDataAdapter.PrivelegedUsersAllowed and
 (IsApplyMultiOperations or
 (ViewArea.UserListNodeType(trUserList.GetCurrentNode) in c_States[TargetValue]));
//#UC END# *4C7CE69202BD_49480F0901B9_impl*
end;//TPrimUserListForm.SetPrivilegedRightTest

procedure TPrimUserListForm.SetPrivilegedRight(IsPrivileged: Boolean);
//#UC START# *4C7CE6BF018B_49480F0901B9_var*
//#UC END# *4C7CE6BF018B_49480F0901B9_var*
begin
//#UC START# *4C7CE6BF018B_49480F0901B9_impl*
 CheckUnsavedUserProperty;
 try
  if IsApplyMultiOperations then
  begin
   ViewArea.SetPrivelegedRights(trUserList.TreeStruct, IsPrivileged);
   Say(inf_MultiplyChangePrivilegedUsers);
  end
  else
   ViewArea.SetIsPrivileged(trUserList.GetCurrentNode, IsPrivileged);
 except
  on ENoMorePrivilegedProfiles do
   Say(err_PrivilegedUsersLicenceViolation);
 end;
 UpdateCurrent;
//#UC END# *4C7CE6BF018B_49480F0901B9_impl*
end;//TPrimUserListForm.SetPrivilegedRight

procedure TPrimUserListForm.PrepareConsultingParams(const aParams: IvcmTestParamsPrim;
  aDisable: Boolean);
//#UC START# *4C7CF2C0000D_49480F0901B9_var*
//#UC END# *4C7CF2C0000D_49480F0901B9_var*
begin
//#UC START# *4C7CF2C0000D_49480F0901B9_impl*
 with aParams.Op do
 begin
  if aDisable then
   if ViewArea.SimpleTree.SelectCount <= 1
    then Caption := str_DisableConsultingForAll.AsCStr
    else Caption := str_DisableConsulting.AsCStr
  else
   if ViewArea.SimpleTree.SelectCount <= 1
    then Caption := str_EnableConsultingForAll.AsCStr
    else Caption := str_EnableConsulting.AsCStr;
  with SubItems do
  begin
   Clear;
   if IsApplyMultiOperations then
   begin
    Add(vcmCStr(str_AllUsers));
    Add(vcmCStr(str_SelectedUsers));
   end;
  end;
 end;
//#UC END# *4C7CF2C0000D_49480F0901B9_impl*
end;//TPrimUserListForm.PrepareConsultingParams

procedure TPrimUserListForm.SetConsultingPayment(IsAllowed: Boolean;
  ForAll: Boolean);
//#UC START# *4C7CF2E301AC_49480F0901B9_var*
//#UC END# *4C7CF2E301AC_49480F0901B9_var*
begin
//#UC START# *4C7CF2E301AC_49480F0901B9_impl*
 CheckUnsavedUserProperty;
 if ForAll then
  ViewArea.SetConsultingPaymentForAll(IsAllowed)
 else
 begin
  ViewArea.SetConsultingPayment(trUserList.TreeStruct, IsAllowed);
  Say(inf_MultiplyChangeConsulting);
 end;
 UpdateCurrent;
//#UC END# *4C7CF2E301AC_49480F0901B9_impl*
end;//TPrimUserListForm.SetConsultingPayment

function TPrimUserListForm.pm_GetTrUserList: TeeTreeView;
begin
 if (f_trUserList = nil) then
  f_trUserList := FindComponent('trUserList') As TeeTreeView;
 Result := f_trUserList;
end;

function TPrimUserListForm.pm_GetContextFilter: TnscContextFilter;
begin
 if (f_ContextFilter = nil) then
  f_ContextFilter := FindComponent('ContextFilter') As TnscContextFilter;
 Result := f_ContextFilter;
end;

function TPrimUserListForm.pm_GetAutoRegistration: Boolean;
//#UC START# *4C7CE5B40225_49480F0901B9get_var*
//#UC END# *4C7CE5B40225_49480F0901B9get_var*
begin
//#UC START# *4C7CE5B40225_49480F0901B9get_impl*
 if not l3BoolCheck(f_AutoRegistration, Result) then
  Result := l3BoolSet(DefDataAdapter.Authorization.
   GetAutoregistrationStatus, f_AutoRegistration);
//#UC END# *4C7CE5B40225_49480F0901B9get_impl*
end;//TPrimUserListForm.pm_GetAutoRegistration

procedure TPrimUserListForm.SelectFailed(const aList: Il3InterfaceList);
//#UC START# *494FC4EF0305_49480F0901B9_var*
//#UC END# *494FC4EF0305_49480F0901B9_var*
begin
//#UC START# *494FC4EF0305_49480F0901B9_impl*
 Assert(aList.Count > 0);
 with trUserList do
 begin
  Changing;
  try
   vlbDeselectAllItems;
   ViewArea.SelectNodes(TreeStruct, aList);
   GotoOnNode(aList.Items[0] as Il3SImpleNode);
  finally
   Changed;
   UpdateCurrent;
  end;
 end;
//#UC END# *494FC4EF0305_49480F0901B9_impl*
end;//TPrimUserListForm.SelectFailed

procedure TPrimUserListForm.UpdateCurrent;
//#UC START# *494FC5BF03BD_49480F0901B9_var*
//#UC END# *494FC5BF03BD_49480F0901B9_var*
begin
//#UC START# *494FC5BF03BD_49480F0901B9_impl*
 if not f_InCreateNew then
  ViewArea.CurrentChanged(trUserList.GetCurrentNode);
 UpdateStatusInfo;
//#UC END# *494FC5BF03BD_49480F0901B9_impl*
end;//TPrimUserListForm.UpdateCurrent

function TPrimUserListForm.IsApplyMultiOperations: Boolean;
//#UC START# *494FC5D003DD_49480F0901B9_var*
//#UC END# *494FC5D003DD_49480F0901B9_var*
begin
//#UC START# *494FC5D003DD_49480F0901B9_impl*
 Result := trUserList.TreeStruct.SelectCount > 1;
//#UC END# *494FC5D003DD_49480F0901B9_impl*
end;//TPrimUserListForm.IsApplyMultiOperations

procedure TPrimUserListForm.CheckUnsavedUserProperty;
//#UC START# *49F6DCF102A7_49480F0901B9_var*
//#UC END# *49F6DCF102A7_49480F0901B9_var*
begin
//#UC START# *49F6DCF102A7_49480F0901B9_impl*
 ViewArea.CheckUnsavedUserProperty;
//#UC END# *49F6DCF102A7_49480F0901B9_impl*
end;//TPrimUserListForm.CheckUnsavedUserProperty

procedure TPrimUserListForm.Edit_Delete_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *494F89C30197_49480F0901B9test_var*
var
 l_Node: Il3SimpleNode;
//#UC END# *494F89C30197_49480F0901B9test_var*
begin
//#UC START# *494F89C30197_49480F0901B9test_impl*
 if aParams.Control = trUserList then
 begin
  l_Node := trUserList.GetCurrentNode;
  aParams.Op.Flag[vcm_ofEnabled] := IsApplyMultiOperations or
                                    (Assigned(l_Node) and (ViewArea.GetUserState(l_Node)=[]));
 end
 else
  if not aParams.CallControl then
   aParams.Op.Flag[vcm_ofEnabled] := False;
//#UC END# *494F89C30197_49480F0901B9test_impl*
end;//TPrimUserListForm.Edit_Delete_Test

procedure TPrimUserListForm.Edit_Delete_GetState(var State: TvcmOperationStateIndex);
//#UC START# *494F89C30197_49480F0901B9getstate_var*
//#UC END# *494F89C30197_49480F0901B9getstate_var*
begin
//#UC START# *494F89C30197_49480F0901B9getstate_impl*
 //if aParams.Control = trUserList then
 begin
  if IsApplyMultiOperations then
   State := st_user_Edit_Delete_MultiUsers
  else
   State := st_user_Edit_Delete_User;
 end;  
//#UC END# *494F89C30197_49480F0901B9getstate_impl*
end;//TPrimUserListForm.Edit_Delete_GetState

procedure TPrimUserListForm.Edit_Delete_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *494F89C30197_49480F0901B9exec_var*
var
 l_CurrentNode: Il3SimpleNode;
 l_ErrList: Il3InterfaceList;
//#UC END# *494F89C30197_49480F0901B9exec_var*
begin
//#UC START# *494F89C30197_49480F0901B9exec_impl*
 if aParams.Control = trUserList then
 begin
  if IsApplyMultiOperations then
  begin
   if Ask(qr_DeleteUsers, [trUserList.TreeStruct.SelectCount]) then
   begin
    ViewArea.DeleteUsers(trUserList.TreeStruct, l_ErrList);
    if (l_ErrList.Count > 0) then
    begin
     if Ask(qr_UsersDeleteFailed) then
      SelectFailed(l_ErrList);
    end
    else
     Say(inf_UsersDeleted);
   end;
  end
  else
  begin
   l_CurrentNode := trUserList.GetCurrentNode;
   if Assigned(l_CurrentNode) and Ask(qr_DeleteUser, [l3CStr(l_CurrentNode)]) then
    ViewArea.DeleteUser(l_CurrentNode);
  end;
 end
 else
  aParams.CallControl;
//#UC END# *494F89C30197_49480F0901B9exec_impl*
end;//TPrimUserListForm.Edit_Delete_Execute

procedure TPrimUserListForm.Users_Add_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *494FD65902BF_49480F0901B9test_var*
//#UC END# *494FD65902BF_49480F0901B9test_var*
begin
//#UC START# *494FD65902BF_49480F0901B9test_impl*
 // - ������ �� ������
//#UC END# *494FD65902BF_49480F0901B9test_impl*
end;//TPrimUserListForm.Users_Add_Test

procedure TPrimUserListForm.Users_Add_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *494FD65902BF_49480F0901B9exec_var*
//#UC END# *494FD65902BF_49480F0901B9exec_var*
begin
//#UC START# *494FD65902BF_49480F0901B9exec_impl*
 f_InCreateNew := True;
 try
  f_PrevUID := GetUserID(trUserList.GetCurrentNode);
  trUserList.AllowWithoutCurrent := True;
  trUserList.Current := -1;
  ViewArea.CreateNewUser;
 finally
  f_InCreateNew := False;
 end;
//#UC END# *494FD65902BF_49480F0901B9exec_impl*
end;//TPrimUserListForm.Users_Add_Execute

procedure TPrimUserListForm.CreateUserFinished(Successfull: Boolean);
//#UC START# *49E5B915022D_49480F0901B9_var*
var
 l_Node: Il3SimpleNode;
//#UC END# *49E5B915022D_49480F0901B9_var*
begin
//#UC START# *49E5B915022D_49480F0901B9_impl*
 if not Successfull then
 begin
  l_Node := GetUserByID(f_PrevUID, trUserList.TreeStruct);
  if Assigned(l_Node) then
   trUserList.GotoOnNode(l_Node)
  else
   trUserList.Current := 0;
 end;  
 trUserList.AllowWithoutCurrent := False;
//#UC END# *49E5B915022D_49480F0901B9_impl*
end;//TPrimUserListForm.CreateUserFinished

procedure TPrimUserListForm.GroupChanged(aGroupUID: Integer);
//#UC START# *49F02DCF0116_49480F0901B9_var*
var
 l_TreeSource: Il3SimpleTree;
 l_Current: Integer;
//#UC END# *49F02DCF0116_49480F0901B9_var*
begin
//#UC START# *49F02DCF0116_49480F0901B9_impl*
 with trUserList do
 begin
  l_TreeSource := ViewArea.FiltrateByGroup(TreeStruct, GetCurrentNode, aGroupUID, l_Current);
  if Assigned(l_TreeSource) then
  begin
   Changing;
   try
    LockChangeSelected;
    try
     ContextFilter.BeginAssignState;
     try
      TreeStruct := l_TreeSource;
     finally
      ContextFilter.EndAssignState;
     end;
    finally
     UnLockChangeSelected;
    end;
   finally
    Changed;
   end;
   Current := l_Current;
   UpdateCurrent;
  end;
  ContextFilter.UpdateIsContextWrong;
 end;
//#UC END# *49F02DCF0116_49480F0901B9_impl*
end;//TPrimUserListForm.GroupChanged

procedure TPrimUserListForm.RequestUpdateCurrent;
//#UC START# *49F6E0C101AC_49480F0901B9_var*
//#UC END# *49F6E0C101AC_49480F0901B9_var*
begin
//#UC START# *49F6E0C101AC_49480F0901B9_impl*
 UpdateCurrent;
//#UC END# *49F6E0C101AC_49480F0901B9_impl*
end;//TPrimUserListForm.RequestUpdateCurrent

procedure TPrimUserListForm.Users_LogoutUser_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C7CDF1B0192_49480F0901B9test_var*
var
 l_Node: Il3SimpleNode;
//#UC END# *4C7CDF1B0192_49480F0901B9test_var*
begin
//#UC START# *4C7CDF1B0192_49480F0901B9test_impl*
 l_Node := trUserList.GetCurrentNode;
 aParams.Op.Flag[vcm_ofEnabled] := IsApplyMultiOperations or
                                   (usActive in ViewArea.GetUserState(l_Node));
//#UC END# *4C7CDF1B0192_49480F0901B9test_impl*
end;//TPrimUserListForm.Users_LogoutUser_Test

procedure TPrimUserListForm.Users_LogoutUser_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4C7CDF1B0192_49480F0901B9getstate_var*
//#UC END# *4C7CDF1B0192_49480F0901B9getstate_var*
begin
//#UC START# *4C7CDF1B0192_49480F0901B9getstate_impl*
 if IsApplyMultiOperations then
  State := st_user_Users_LogoutUser_MultiUsers
 else
  State := st_user_Users_LogoutUser_SingleUser;
//#UC END# *4C7CDF1B0192_49480F0901B9getstate_impl*
end;//TPrimUserListForm.Users_LogoutUser_GetState

procedure TPrimUserListForm.Users_LogoutUser_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C7CDF1B0192_49480F0901B9exec_var*
//#UC END# *4C7CDF1B0192_49480F0901B9exec_var*
begin
//#UC START# *4C7CDF1B0192_49480F0901B9exec_impl*
 try
  if IsApplyMultiOperations then
  begin
   if Ask(qr_LogoutUsers, [trUserList.TreeStruct.SelectCount]) then
   begin
    ViewArea.LogoutUsers(trUserList.TreeStruct);
    Say(inf_LogoutUsersNotify);
   end;
  end
  else
  begin
   ViewArea.LogoutUser(trUserList.GetCurrentNode);
   Say(inf_LogoutUserNotify);
  end;
 except
  on ETryLogoutCurrentUser do
   Say(war_TryLogoutCurrent);
 end;
//#UC END# *4C7CDF1B0192_49480F0901B9exec_impl*
end;//TPrimUserListForm.Users_LogoutUser_Execute

procedure TPrimUserListForm.Users_ConsultingStateForNewbie_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4C7CDF570361_49480F0901B9getstate_var*
//#UC END# *4C7CDF570361_49480F0901B9getstate_var*
begin
//#UC START# *4C7CDF570361_49480F0901B9getstate_impl*
 if ViewArea.ConsultingPaymentForNewbies then
  State := st_user_Users_ConsultingStateForNewbie_Enabled
 else
  State := st_user_Users_ConsultingStateForNewbie_Disabled;
//#UC END# *4C7CDF570361_49480F0901B9getstate_impl*
end;//TPrimUserListForm.Users_ConsultingStateForNewbie_GetState

procedure TPrimUserListForm.Users_ConsultingStateForNewbie_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C7CDF570361_49480F0901B9exec_var*
//#UC END# *4C7CDF570361_49480F0901B9exec_var*
begin
//#UC START# *4C7CDF570361_49480F0901B9exec_impl*
 ViewArea.ConsultingPaymentForNewbies := not ViewArea.ConsultingPaymentForNewbies;
//#UC END# *4C7CDF570361_49480F0901B9exec_impl*
end;//TPrimUserListForm.Users_ConsultingStateForNewbie_Execute

procedure TPrimUserListForm.Users_Autoregistration_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4C7CDFE10330_49480F0901B9getstate_var*
//#UC END# *4C7CDFE10330_49480F0901B9getstate_var*
begin
//#UC START# *4C7CDFE10330_49480F0901B9getstate_impl*
 if AutoRegistration then
  State := st_user_Users_Autoregistration_Enabled
   // - ��������� ���������������;
 else
  State := st_user_Users_Autoregistration_Disabled;
   // - ��������� ���������������;
//#UC END# *4C7CDFE10330_49480F0901B9getstate_impl*
end;//TPrimUserListForm.Users_Autoregistration_GetState

procedure TPrimUserListForm.Users_Autoregistration_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C7CDFE10330_49480F0901B9exec_var*
var
 l_ForbidAutoregistration: IdsForbidAutoregistration;
//#UC END# *4C7CDFE10330_49480F0901B9exec_var*
begin
//#UC START# *4C7CDFE10330_49480F0901B9exec_impl*
 // ������������� ����� ��������� �������������� ����������� �������������.
 // ����� �������� �������������� ������������ �����, � ������� �� ���������
 // ���� ����������, � ����� ������������ ������ �������� �� ����� "OK". ����
 // ������������ ������ ����� �� "Cancel", �� ������ �� ���������������
 // (CQ: OIT5-25328):
 if AutoRegistration then
 begin
  l_ForbidAutoregistration := TdsForbidAutoregistration.Make(nil);
  try
   TefForbidAutoregistration.Make(nil,
                                  vcm_ztModal,
                                  0,
                                  l_ForbidAutoregistration);
   if not l_ForbidAutoregistration.NeedForbid then
    Exit;
  finally
   l_ForbidAutoregistration := nil;
  end;//try..finally
 end;//if AutoRegistration then
 DefDataAdapter.Authorization.
  SetAutoregistrationStatus(not AutoRegistration);
 l3BoolReset(f_AutoRegistration);
//#UC END# *4C7CDFE10330_49480F0901B9exec_impl*
end;//TPrimUserListForm.Users_Autoregistration_Execute

procedure TPrimUserListForm.Users_AddPrivelegedRight_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C7CE03100BF_49480F0901B9test_var*
//#UC END# *4C7CE03100BF_49480F0901B9test_var*
begin
//#UC START# *4C7CE03100BF_49480F0901B9test_impl*
 SetPrivilegedRightTest(aParams, true);
//#UC END# *4C7CE03100BF_49480F0901B9test_impl*
end;//TPrimUserListForm.Users_AddPrivelegedRight_Test

procedure TPrimUserListForm.Users_AddPrivelegedRight_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4C7CE03100BF_49480F0901B9getstate_var*
//#UC END# *4C7CE03100BF_49480F0901B9getstate_var*
begin
//#UC START# *4C7CE03100BF_49480F0901B9getstate_impl*
 if IsApplyMultiOperations then
  State := st_user_Users_AddPrivelegedRight_MultiUsers
 else
  State := st_user_Users_AddPrivelegedRight_SingleUser;
//#UC END# *4C7CE03100BF_49480F0901B9getstate_impl*
end;//TPrimUserListForm.Users_AddPrivelegedRight_GetState

procedure TPrimUserListForm.Users_AddPrivelegedRight_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C7CE03100BF_49480F0901B9exec_var*
//#UC END# *4C7CE03100BF_49480F0901B9exec_var*
begin
//#UC START# *4C7CE03100BF_49480F0901B9exec_impl*
 SetPrivilegedRight(True);
//#UC END# *4C7CE03100BF_49480F0901B9exec_impl*
end;//TPrimUserListForm.Users_AddPrivelegedRight_Execute

procedure TPrimUserListForm.Users_RemovePrivelegedRight_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C7CE0710199_49480F0901B9test_var*
//#UC END# *4C7CE0710199_49480F0901B9test_var*
begin
//#UC START# *4C7CE0710199_49480F0901B9test_impl*
 SetPrivilegedRightTest(aParams, false);
//#UC END# *4C7CE0710199_49480F0901B9test_impl*
end;//TPrimUserListForm.Users_RemovePrivelegedRight_Test

procedure TPrimUserListForm.Users_RemovePrivelegedRight_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4C7CE0710199_49480F0901B9getstate_var*
//#UC END# *4C7CE0710199_49480F0901B9getstate_var*
begin
//#UC START# *4C7CE0710199_49480F0901B9getstate_impl*
 if IsApplyMultiOperations then
  State := st_user_Users_RemovePrivelegedRight_MultiUsers
 else
  State := st_user_Users_RemovePrivelegedRight_SingleUser;
//#UC END# *4C7CE0710199_49480F0901B9getstate_impl*
end;//TPrimUserListForm.Users_RemovePrivelegedRight_GetState

procedure TPrimUserListForm.Users_RemovePrivelegedRight_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C7CE0710199_49480F0901B9exec_var*
//#UC END# *4C7CE0710199_49480F0901B9exec_var*
begin
//#UC START# *4C7CE0710199_49480F0901B9exec_impl*
 SetPrivilegedRight(False);
//#UC END# *4C7CE0710199_49480F0901B9exec_impl*
end;//TPrimUserListForm.Users_RemovePrivelegedRight_Execute

procedure TPrimUserListForm.Users_UserFilter_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C7CEDAC0209_49480F0901B9test_var*
var
 l_Strings: IvcmStrings;
 l_StringSource: InsStringsSource;
//#UC END# *4C7CEDAC0209_49480F0901B9test_var*
begin
//#UC START# *4C7CEDAC0209_49480F0901B9test_impl*
 l_Strings := aParams.Op.SubItems;
 if Assigned(l_Strings) then
 begin
  if (l_Strings.Count = 0) or f_NeedFillFilterList then
   if Supports(f_FilterMap, InsStringsSource, l_StringSource) then
   begin
    l_StringSource.FillStrings(l_Strings);
    f_NeedFillFilterList := False;
   end;
  aParams.Op.SelectedString := f_FilterMap.
   ValueToDisplayName(Ord(ViewArea.CurrentFlagFilter));
 end;//if Assigned(l_Strings) then
//#UC END# *4C7CEDAC0209_49480F0901B9test_impl*
end;//TPrimUserListForm.Users_UserFilter_Test

procedure TPrimUserListForm.Users_UserFilter_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C7CEDAC0209_49480F0901B9exec_var*
var
 l_TreeSource: Il3SimpleTree;
 l_Current: Integer;
//#UC END# *4C7CEDAC0209_49480F0901B9exec_var*
begin
//#UC START# *4C7CEDAC0209_49480F0901B9exec_impl*
 with trUserList do
 begin
  l_TreeSource := ViewArea.FiltrateByType(TreeStruct, GetCurrentNode,
   TUserListFilterTypes(f_FilterMap.DisplayNameToValue(aParams.SelectedString)),
   l_Current);
  if Assigned(l_TreeSource) then
  begin
   Changing;
   try
    LockChangeSelected;
    try
     ContextFilter.BeginAssignState;
     try
      TreeStruct := l_TreeSource;
     finally
      ContextFilter.EndAssignState;
     end;
    finally
     UnLockChangeSelected;
    end;
   finally
    Changed;
   end;
   Current := l_Current;
  end;
  ContextFilter.UpdateIsContextWrong;
 end;
//#UC END# *4C7CEDAC0209_49480F0901B9exec_impl*
end;//TPrimUserListForm.Users_UserFilter_Execute

procedure TPrimUserListForm.Users_DisableConsulting_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C7CEDB701D6_49480F0901B9test_var*
//#UC END# *4C7CEDB701D6_49480F0901B9test_var*
begin
//#UC START# *4C7CEDB701D6_49480F0901B9test_impl*
 PrepareConsultingParams(aParams, True);
//#UC END# *4C7CEDB701D6_49480F0901B9test_impl*
end;//TPrimUserListForm.Users_DisableConsulting_Test

procedure TPrimUserListForm.Users_DisableConsulting_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C7CEDB701D6_49480F0901B9exec_var*
//#UC END# *4C7CEDB701D6_49480F0901B9exec_var*
begin
//#UC START# *4C7CEDB701D6_49480F0901B9exec_impl*
 SetConsultingPayment(False, aParams.ItemIndex < 2);
//#UC END# *4C7CEDB701D6_49480F0901B9exec_impl*
end;//TPrimUserListForm.Users_DisableConsulting_Execute

procedure TPrimUserListForm.Users_EnableConsulting_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4C7CEDC20353_49480F0901B9test_var*
//#UC END# *4C7CEDC20353_49480F0901B9test_var*
begin
//#UC START# *4C7CEDC20353_49480F0901B9test_impl*
 PrepareConsultingParams(aParams, False);
//#UC END# *4C7CEDC20353_49480F0901B9test_impl*
end;//TPrimUserListForm.Users_EnableConsulting_Test

procedure TPrimUserListForm.Users_EnableConsulting_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C7CEDC20353_49480F0901B9exec_var*
//#UC END# *4C7CEDC20353_49480F0901B9exec_var*
begin
//#UC START# *4C7CEDC20353_49480F0901B9exec_impl*
 SetConsultingPayment(True, aParams.ItemIndex < 2);
//#UC END# *4C7CEDC20353_49480F0901B9exec_impl*
end;//TPrimUserListForm.Users_EnableConsulting_Execute

procedure TPrimUserListForm.Users_MakeFiltersShared_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4E807746035F_49480F0901B9test_var*
var
 l_UID : Integer;
//#UC END# *4E807746035F_49480F0901B9test_var*
begin
//#UC START# *4E807746035F_49480F0901B9test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := (trUserList.GetCurrentNode <> nil) and
                                   (trUserList.SelectedCount = 1);
 if aParams.Op.Flag[vcm_ofEnabled] then
 begin
  l_UID := GetUserID(trUserList.GetCurrentNode);
  aParams.Op.Flag[vcm_ofChecked] := defDataAdapter.NativeAdapter.MakeUserManager.HasSharedFilters(l_UID);
 end;//aParams.Op.Flag[vcm_ofEnabled]
//#UC END# *4E807746035F_49480F0901B9test_impl*
end;//TPrimUserListForm.Users_MakeFiltersShared_Test

procedure TPrimUserListForm.Users_MakeFiltersShared_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4E807746035F_49480F0901B9exec_var*
var
 l_UID : Integer;
 l_Has : Boolean;
//#UC END# *4E807746035F_49480F0901B9exec_var*
begin
//#UC START# *4E807746035F_49480F0901B9exec_impl*
 l_UID := GetUserID(trUserList.GetCurrentNode);
 with defDataAdapter.NativeAdapter.MakeUserManager do
 begin
  l_Has := HasSharedFilters(l_UID);
  SetSharedFiltersState(l_UID, not l_Has);
 end;//with defDataAdapter.NativeAdapter.MakeUserManager
 ViewArea.RequestUpdateCureent;
//#UC END# *4E807746035F_49480F0901B9exec_impl*
end;//TPrimUserListForm.Users_MakeFiltersShared_Execute

procedure TPrimUserListForm.Users_DenyDeleteIdle_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4F3D030901C3_49480F0901B9test_var*
var
 l_UID: Integer;
 l_Node: Il3SimpleNode;
//#UC END# *4F3D030901C3_49480F0901B9test_var*
begin
//#UC START# *4F3D030901C3_49480F0901B9test_impl*
 aParams.Op.Flag[vcm_ofVisible] := defDataAdapter.CommonInterfaces.IsEraseOfInactiveUsersEnabled;
 l_Node := trUserList.GetCurrentNode;
 aParams.Op.Flag[vcm_ofEnabled] := not UseCase.dsUserProperty.IsSystem
                                   and (l_Node <> nil)
                                   and (trUserList.SelectedCount = 1);
 if l_Node <> nil then
 begin
  l_UID := GetUserID(l_Node);
  aParams.Op.Flag[vcm_ofChecked] := UseCase.dsUserProperty.IsSystem or not defDataAdapter.NativeAdapter.MakeUserManager.IsErasable(l_UID);
 end;
//#UC END# *4F3D030901C3_49480F0901B9test_impl*
end;//TPrimUserListForm.Users_DenyDeleteIdle_Test

procedure TPrimUserListForm.Users_DenyDeleteIdle_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4F3D030901C3_49480F0901B9exec_var*
var
 l_UID : Integer;
 l_CanDelete : Boolean;
//#UC END# *4F3D030901C3_49480F0901B9exec_var*
begin
//#UC START# *4F3D030901C3_49480F0901B9exec_impl*
 l_UID := GetUserID(trUserList.GetCurrentNode);
 with defDataAdapter.NativeAdapter.MakeUserManager do
 begin
  l_CanDelete := IsErasable(l_UID);
  SetErasableState(l_UID, not l_CanDelete);
 end;//with defDataAdapter.NativeAdapter.MakeUserManager
 ViewArea.RequestUpdateCureent;
//#UC END# *4F3D030901C3_49480F0901B9exec_impl*
end;//TPrimUserListForm.Users_DenyDeleteIdle_Execute

procedure TPrimUserListForm.InitFields;
//#UC START# *47A042E100E2_49480F0901B9_var*
//#UC END# *47A042E100E2_49480F0901B9_var*
begin
//#UC START# *47A042E100E2_49480F0901B9_impl*
 inherited;
 f_FilterMap := nsIntegerMapManager.Map[imap_UserListFilterTypes];
//#UC END# *47A042E100E2_49480F0901B9_impl*
end;//TPrimUserListForm.InitFields

procedure TPrimUserListForm.FinishDataUpdate;
//#UC START# *47EA4E9002C6_49480F0901B9_var*
//#UC END# *47EA4E9002C6_49480F0901B9_var*
begin
//#UC START# *47EA4E9002C6_49480F0901B9_impl*
 inherited;
 f_NeedFillFilterList := True;
//#UC END# *47EA4E9002C6_49480F0901B9_impl*
end;//TPrimUserListForm.FinishDataUpdate

{$If not defined(NoVCM)}
procedure TPrimUserListForm.NotifyDataSourceChanged(const anOld: IvcmViewAreaController;
  const aNew: IvcmViewAreaController);
//#UC START# *497469C90140_49480F0901B9_var*
//#UC END# *497469C90140_49480F0901B9_var*
begin
//#UC START# *497469C90140_49480F0901B9_impl*
 inherited;
 if (anOld <> nil) then
  anOld.Unsubscribe(IbsUserListViewListener(Self));
 if (aNew <> nil) then
  aNew.Subscribe(IbsUserListViewListener(Self));
//#UC END# *497469C90140_49480F0901B9_impl*
end;//TPrimUserListForm.NotifyDataSourceChanged
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
procedure TPrimUserListForm.DoInit(aFromHistory: Boolean);
//#UC START# *49803F5503AA_49480F0901B9_var*
//#UC END# *49803F5503AA_49480F0901B9_var*
begin
//#UC START# *49803F5503AA_49480F0901B9_impl*
 inherited;
 l3BoolReset(f_AutoRegistration);
//#UC END# *49803F5503AA_49480F0901B9_impl*
end;//TPrimUserListForm.DoInit
{$IfEnd} //not NoVCM

procedure TPrimUserListForm.ClearFields;
 {-}
begin
 f_FilterMap := nil;
 inherited;
end;//TPrimUserListForm.ClearFields

procedure TPrimUserListForm.SignalDataSourceChanged(const anOld : IvcmViewAreaController;
 const aDsNew : IvcmViewAreaController);
begin
 inherited;
 if (aDsNew = nil) then
 begin
  ViewArea := nil;
  UseCase := nil;
 end//aDsNew = nil
 else
 begin
  ViewArea := aDsNew As IdsUserList;
  aDsNew.CastUCC(IsdsAdmin, UseCase);
 end;//aDsNew = nil
end;

procedure TPrimUserListForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_Edit, nil);
  PublishFormEntity(en_Users, nil);
  PublishOp(en_Edit, op_Delete, Edit_Delete_Execute, Edit_Delete_Test, Edit_Delete_GetState);
  PublishOp(en_Users, op_Add, Users_Add_Execute, Users_Add_Test, nil);
  PublishOp(en_Users, op_LogoutUser, Users_LogoutUser_Execute, Users_LogoutUser_Test, Users_LogoutUser_GetState);
  PublishOp(en_Users, op_ConsultingStateForNewbie, Users_ConsultingStateForNewbie_Execute, nil, Users_ConsultingStateForNewbie_GetState);
  PublishOp(en_Users, op_Autoregistration, Users_Autoregistration_Execute, nil, Users_Autoregistration_GetState);
  PublishOp(en_Users, op_AddPrivelegedRight, Users_AddPrivelegedRight_Execute, Users_AddPrivelegedRight_Test, Users_AddPrivelegedRight_GetState);
  PublishOp(en_Users, op_RemovePrivelegedRight, Users_RemovePrivelegedRight_Execute, Users_RemovePrivelegedRight_Test, Users_RemovePrivelegedRight_GetState);
  PublishOp(en_Users, op_UserFilter, Users_UserFilter_Execute, Users_UserFilter_Test, nil);
  PublishOp(en_Users, op_DisableConsulting, Users_DisableConsulting_Execute, Users_DisableConsulting_Test, nil);
  PublishOp(en_Users, op_EnableConsulting, Users_EnableConsulting_Execute, Users_EnableConsulting_Test, nil);
  PublishOp(en_Users, op_MakeFiltersShared, Users_MakeFiltersShared_Execute, Users_MakeFiltersShared_Test, nil);
  ShowInContextMenu(en_Users, op_MakeFiltersShared, true);
  ShowInToolbar(en_Users, op_MakeFiltersShared, false);
  PublishOp(en_Users, op_DenyDeleteIdle, Users_DenyDeleteIdle_Execute, Users_DenyDeleteIdle_Test, nil);
  ShowInContextMenu(en_Users, op_DenyDeleteIdle, true);
  ShowInToolbar(en_Users, op_DenyDeleteIdle, false);
 end;//with Entities.Entities
end;

procedure TPrimUserListForm.MakeControls;
begin
 inherited;
 with AddUsertype(admUserListName,
  str_admUserListCaption,
  str_admUserListCaption,
  true,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(admUserListName
end;

{$IfEnd} //Admin

initialization
{$If defined(Admin)}
// ������������� str_admUserListCaption
 str_admUserListCaption.Init;
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_PrimUserList_Control_trUserList
 Tkw_PrimUserList_Control_trUserList.Register('�������::trUserList', TeeTreeView);
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_PrimUserList_Control_trUserList_Push
 Tkw_PrimUserList_Control_trUserList_Push.Register('�������::trUserList:push');
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_PrimUserList_Control_ContextFilter
 Tkw_PrimUserList_Control_ContextFilter.Register('�������::ContextFilter', TnscContextFilter);
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_PrimUserList_Control_ContextFilter_Push
 Tkw_PrimUserList_Control_ContextFilter_Push.Register('�������::ContextFilter:push');
{$IfEnd} //Admin
{$If defined(Admin)}
// ������������� str_DisableConsultingForAll
 str_DisableConsultingForAll.Init;
{$IfEnd} //Admin
{$If defined(Admin)}
// ������������� str_EnableConsultingForAll
 str_EnableConsultingForAll.Init;
{$IfEnd} //Admin
{$If defined(Admin)}
// ������������� str_DisableConsulting
 str_DisableConsulting.Init;
{$IfEnd} //Admin
{$If defined(Admin)}
// ������������� str_EnableConsulting
 str_EnableConsulting.Init;
{$IfEnd} //Admin

end.