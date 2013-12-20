unit AdminAppRes;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/AdminAppRes.pas"
// �����: 07.09.2009 18:25
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMApplication::Class>> F1 �������������::Admin$Shell::AdminApp
//
// �������� Admin
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
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  PrimF1Res,
  PrimAdminMain_Form,
  l3StringIDEx,
  PrimMainOptions_Form
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  AdminMain_Form
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  vcmExternalInterfaces {a}
  {$If not defined(NoVCM)}
  ,
  vcmFormSetFactory
  {$IfEnd} //not NoVCM
  ,
  AdminInterfaces,
  PrimUserProperty_admUseProperties_UserType,
  PrimGroupsList_admGroupList_UserType,
  PrimUserList_admUserList_UserType,
  PrimAdmin_utAdmin_UserType,
  Admin_FormDefinitions_Controls
  {$If not defined(NoVCM)}
  ,
  vcmFormSetFormsCollectionItemPrim
  {$IfEnd} //not NoVCM
  ,
  vcmMainForm {a}
  ;
{$IfEnd} //Admin

{$If defined(Admin)}
var
 { ������������ ������ AdminTitle }
str_AdminTitle : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'AdminTitle'; rValue : '������ ����');
 { '������ ����' }

type
TAdminAppRes = {final} class(TPrimF1Res)
 {* �������� Admin }
protected
   procedure RegisterFormSetFactories; override;
   class procedure RegisterModules(aMain: TvcmMainForm); override;
   procedure Loaded; override;
protected
// overridden protected methods
   class procedure DoRun(var theSplash: IUnknown); override;
 public
 // modules operations
   class procedure OpenUserList(const aContainer: IvcmContainer);
   class function ShowRenameGroupDialog(const aData: IbsEditGroupName): Integer;
 public
 // operations codes
   class function opcode_Result_Cancel : TvcmOpID;
     { ��������� ������� -> ������ }
   class function opcode_Result_Ok : TvcmOpID;
     { ��������� ������� -> OK }
   class function opcode_Result_Save : TvcmOpID;
     {  -> ��������� }
   class function opcode_Result_OkExt : TvcmOpID;
     { ��������� ������� -> OK }
end;//TAdminAppRes
TvcmApplicationRef = TAdminAppRes;
 {* ������ �� ���������� ��� DesignTime ���������� }

{$IfEnd} //Admin

implementation

{$If defined(Admin)}
uses
  l3MessageID
  {$If not defined(NoVCM)}
  ,
  StdRes
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmSettings
  {$IfEnd} //not NoVCM
  ,
  Controls,
  Forms
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  moAdmin,
  nsStartupSupport,
  evExtFormat,
  Admin_Module,
  OfficeLike_Result_Controls,
  OfficeLike_Usual_Controls,
  Admin_Users_Controls,
  OfficeLike_ResultEx_Controls,
  fsAdmin
  ;
{$IfEnd} //Admin

{$If defined(Admin)}

// start class TAdminAppRes

class procedure TAdminAppRes.DoRun(var theSplash: IUnknown);
//#UC START# *4AA7E4DC0047_4AA517B5037A_var*
var
 l_Main : TAdminMainForm;
//#UC END# *4AA7E4DC0047_4AA517B5037A_var*
begin
//#UC START# *4AA7E4DC0047_4AA517B5037A_impl*
 inherited;
 Application.CreateForm(TAdminMainForm, l_Main);
//#UC END# *4AA7E4DC0047_4AA517B5037A_impl*
end;//TAdminAppRes.DoRun

procedure TAdminAppRes.RegisterFormSetFactories;
begin
 inherited;
 RegisterFormSetFactory(Tfs_Admin);
end;

class procedure TAdminAppRes.RegisterModules(aMain: TvcmMainForm);
begin
 inherited;
 aMain.RegisterModule(Tmo_Admin);
end;

var
 g_opcode_Result_Cancel : TvcmOpID;
 g_opcode_Result_Ok : TvcmOpID;
 g_opcode_Result_Save : TvcmOpID;
 g_opcode_Result_OkExt : TvcmOpID;

procedure TAdminAppRes.Loaded;
begin
 inherited;
 PublishModule(Tmo_Admin, '����������������� �������������');
 g_opcode_Result_Cancel :=
  PublishOperation(en_Result,
                    op_Cancel,
                    en_capResult,
                    op_capCancel);
 g_opcode_Result_Ok :=
  PublishOperation(en_Result,
                    op_Ok,
                    en_capResult,
                    op_capOk);
  with PublishOperationState(en_Result, op_Ok, 'Search') do
  begin
   st_user_Result_Ok_Search := StateIndex;
   Caption := '������';
   Hint := '�������� ����� �� ��������� ����������';
  end;//with PublishOperationState(en_Result, op_Ok, 'Search')
  with PublishOperationState(en_Result, op_Ok, 'Print') do
  begin
   st_user_Result_Ok_Print := StateIndex;
   Caption := '������';
   ImageIndex := 3;
  end;//with PublishOperationState(en_Result, op_Ok, 'Print')
  with PublishOperationState(en_Result, op_Ok, 'AttributesSelect') do
  begin
   st_user_Result_Ok_AttributesSelect := StateIndex;
   Caption := '����������� ����� ���������';
  end;//with PublishOperationState(en_Result, op_Ok, 'AttributesSelect')
  with PublishOperationState(en_Result, op_Ok, 'ConsultationMark') do
  begin
   st_user_Result_Ok_ConsultationMark := StateIndex;
   Caption := '�������';
  end;//with PublishOperationState(en_Result, op_Ok, 'ConsultationMark')
  with PublishOperationState(en_Result, op_Ok, 'Analize') do
  begin
   st_user_Result_Ok_Analize := StateIndex;
   Caption := '���������';
  end;//with PublishOperationState(en_Result, op_Ok, 'Analize')
  with PublishOperationState(en_Result, op_Cancel, 'Close') do
  begin
   st_user_Result_Cancel_Close := StateIndex;
   Caption := '�������';
  end;//with PublishOperationState(en_Result, op_Cancel, 'Close')
 PublishOperation(en_Edit,
                    op_Delete,
                    en_capEdit,
                    op_capDelete);
 {$If not defined(Admin) AND not defined(Monitorings)}
  with PublishOperationState(en_Edit, op_Delete, 'Controlled') do
  begin
   st_user_Edit_Delete_Controlled := StateIndex;
   Caption := '����� � ��������';
  end;//with PublishOperationState(en_Edit, op_Delete, 'Controlled')
 {$IfEnd} //not Admin AND not Monitorings
  with PublishOperationState(en_Edit, op_Delete, 'User') do
  begin
   st_user_Edit_Delete_User := StateIndex;
   Caption := '������� ������������';
   ImageIndex := 149;
  end;//with PublishOperationState(en_Edit, op_Delete, 'User')
  with PublishOperationState(en_Edit, op_Delete, 'MultiUsers') do
  begin
   st_user_Edit_Delete_MultiUsers := StateIndex;
   Caption := '������� ���������� �������������';
   ImageIndex := 149;
  end;//with PublishOperationState(en_Edit, op_Delete, 'MultiUsers')
  with PublishOperationState(en_Edit, op_Delete, 'Group') do
  begin
   st_user_Edit_Delete_Group := StateIndex;
   Caption := '������� ������';
   ImageIndex := 193;
  end;//with PublishOperationState(en_Edit, op_Delete, 'Group')
 {$If not defined(Admin) AND not defined(Monitorings)}
  with PublishOperationState(en_Edit, op_Delete, 'Contact') do
  begin
   st_user_Edit_Delete_Contact := StateIndex;
   Caption := '������� ������������';
  end;//with PublishOperationState(en_Edit, op_Delete, 'Contact')
 {$IfEnd} //not Admin AND not Monitorings
 PublishOperation(en_Users,
                    op_LogoutUser,
                    en_capUsers,
                    op_capLogoutUser);
  with PublishOperationState(en_Users, op_LogoutUser, 'SingleUser') do
  begin
   st_user_Users_LogoutUser_SingleUser := StateIndex;
  end;//with PublishOperationState(en_Users, op_LogoutUser, 'SingleUser')
  with PublishOperationState(en_Users, op_LogoutUser, 'MultiUsers') do
  begin
   st_user_Users_LogoutUser_MultiUsers := StateIndex;
   Caption := '��������� ���������� �������������';
  end;//with PublishOperationState(en_Users, op_LogoutUser, 'MultiUsers')
 PublishOperation(en_Users,
                    op_ConsultingStateForNewbie,
                    en_capUsers,
                    op_capConsultingStateForNewbie);
  with PublishOperationState(en_Users, op_ConsultingStateForNewbie, 'Enabled') do
  begin
   st_user_Users_ConsultingStateForNewbie_Enabled := StateIndex;
   Caption := '��������� ����� ��������� ������������� ������������� ������ ��������� �����������';
   ImageIndex := 163;
  end;//with PublishOperationState(en_Users, op_ConsultingStateForNewbie, 'Enabled')
  with PublishOperationState(en_Users, op_ConsultingStateForNewbie, 'Disabled') do
  begin
   st_user_Users_ConsultingStateForNewbie_Disabled := StateIndex;
   Caption := '��������� ����� ��������� ������������� ������������� ������ ��������� �����������';
   Checked := true;
  end;//with PublishOperationState(en_Users, op_ConsultingStateForNewbie, 'Disabled')
 PublishOperation(en_Users,
                    op_Autoregistration,
                    en_capUsers,
                    op_capAutoregistration);
  with PublishOperationState(en_Users, op_Autoregistration, 'Enabled') do
  begin
   st_user_Users_Autoregistration_Enabled := StateIndex;
   Caption := '��������� ��������������� ����� �������������';
   ImageIndex := 171;
  end;//with PublishOperationState(en_Users, op_Autoregistration, 'Enabled')
  with PublishOperationState(en_Users, op_Autoregistration, 'Disabled') do
  begin
   st_user_Users_Autoregistration_Disabled := StateIndex;
   Caption := '��������� ��������������� ����� �������������';
   Checked := true;
  end;//with PublishOperationState(en_Users, op_Autoregistration, 'Disabled')
 PublishOperation(en_Users,
                    op_AddPrivelegedRight,
                    en_capUsers,
                    op_capAddPrivelegedRight);
  with PublishOperationState(en_Users, op_AddPrivelegedRight, 'MultiUsers') do
  begin
   st_user_Users_AddPrivelegedRight_MultiUsers := StateIndex;
  end;//with PublishOperationState(en_Users, op_AddPrivelegedRight, 'MultiUsers')
  with PublishOperationState(en_Users, op_AddPrivelegedRight, 'SingleUser') do
  begin
   st_user_Users_AddPrivelegedRight_SingleUser := StateIndex;
   Caption := '������� �����������������';
  end;//with PublishOperationState(en_Users, op_AddPrivelegedRight, 'SingleUser')
 PublishOperation(en_Users,
                    op_RemovePrivelegedRight,
                    en_capUsers,
                    op_capRemovePrivelegedRight);
  with PublishOperationState(en_Users, op_RemovePrivelegedRight, 'MultiUsers') do
  begin
   st_user_Users_RemovePrivelegedRight_MultiUsers := StateIndex;
  end;//with PublishOperationState(en_Users, op_RemovePrivelegedRight, 'MultiUsers')
  with PublishOperationState(en_Users, op_RemovePrivelegedRight, 'SingleUser') do
  begin
   st_user_Users_RemovePrivelegedRight_SingleUser := StateIndex;
   Caption := '�������� ����� ����������';
  end;//with PublishOperationState(en_Users, op_RemovePrivelegedRight, 'SingleUser')
 PublishOperation(en_Users,
                    op_UserFilter,
                    en_capUsers,
                    op_capUserFilter);
 PublishOperation(en_Users,
                    op_DisableConsulting,
                    en_capUsers,
                    op_capDisableConsulting);
 PublishOperation(en_Users,
                    op_EnableConsulting,
                    en_capUsers,
                    op_capEnableConsulting);
 PublishOperation(en_Users,
                    op_MakeFiltersShared,
                    en_capUsers,
                    op_capMakeFiltersShared);
 PublishOperation(en_Users,
                    op_DenyDeleteIdle,
                    en_capUsers,
                    op_capDenyDeleteIdle);
 PublishOperation(en_Users,
                    op_Add,
                    en_capUsers,
                    op_capAdd);
 g_opcode_Result_Save :=
  PublishOperation(en_Result,
                    op_Save,
                    en_capResult,
                    op_capSave);
  with PublishOperationState(en_Result, op_Save, 'Create') do
  begin
   st_user_Result_Save_Create := StateIndex;
   Caption := '�������';
  end;//with PublishOperationState(en_Result, op_Save, 'Create')
 PublishOperation(en_Groups,
                    op_Add,
                    en_capGroups,
                    op_capAdd);
 PublishOperation(en_Groups,
                    op_ChangeBaseAccess,
                    en_capGroups,
                    op_capChangeBaseAccess);
 PublishOperation(en_Groups,
                    op_Rename,
                    en_capGroups,
                    op_capRename);
 g_opcode_Result_OkExt :=
  PublishOperation(en_Result,
                    op_OkExt,
                    en_capResult,
                    op_capOkExt);
  with PublishOperationState(en_Result, op_OkExt, 'Search') do
  begin
   st_user_Result_OkExt_Search := StateIndex;
   Caption := '������';
   Hint := '�������� ����� �� ��������� ����������';
  end;//with PublishOperationState(en_Result, op_OkExt, 'Search')
  with PublishOperationState(en_Result, op_OkExt, 'Save') do
  begin
   st_user_Result_OkExt_Save := StateIndex;
   Caption := '���������';
   Hint := '���������';
  end;//with PublishOperationState(en_Result, op_OkExt, 'Save')
  with PublishOperationState(en_Result, op_OkExt, 'AttributesSelect') do
  begin
   st_user_Result_OkExt_AttributesSelect := StateIndex;
  end;//with PublishOperationState(en_Result, op_OkExt, 'AttributesSelect')
  with PublishOperationState(en_Result, op_OkExt, 'Consult') do
  begin
   st_user_Result_OkExt_Consult := StateIndex;
   Caption := '��������� ������';
   ImageIndex := 154;
  end;//with PublishOperationState(en_Result, op_OkExt, 'Consult')
  with PublishOperationState(en_Result, op_OkExt, 'Chat') do
  begin
   st_user_Result_OkExt_Chat := StateIndex;
   Caption := '��������� (Ctrl+Enter)';
  end;//with PublishOperationState(en_Result, op_OkExt, 'Chat')
end;

// modules operations

class procedure TAdminAppRes.OpenUserList(const aContainer: IvcmContainer);
begin
 TAdminModule.OpenUserList(aContainer);
end;

class function TAdminAppRes.ShowRenameGroupDialog(const aData: IbsEditGroupName): Integer;
begin
 Result := TAdminModule.ShowRenameGroupDialog(aData);
end;

// operations codes

class function TAdminAppRes.opcode_Result_Cancel : TvcmOpID;
begin
 Result := g_opcode_Result_Cancel;
 Assert((Result.rEnID > 0) AND (Result.rOpID > 0));
end;

class function TAdminAppRes.opcode_Result_Ok : TvcmOpID;
begin
 Result := g_opcode_Result_Ok;
 Assert((Result.rEnID > 0) AND (Result.rOpID > 0));
end;

class function TAdminAppRes.opcode_Result_Save : TvcmOpID;
begin
 Result := g_opcode_Result_Save;
 Assert((Result.rEnID > 0) AND (Result.rOpID > 0));
end;

class function TAdminAppRes.opcode_Result_OkExt : TvcmOpID;
begin
 Result := g_opcode_Result_OkExt;
 Assert((Result.rEnID > 0) AND (Result.rOpID > 0));
end;

{$IfEnd} //Admin

initialization
{$If defined(Admin)}
// ������������� str_AdminTitle
 str_AdminTitle.Init;
{$IfEnd} //Admin

end.