unit UserProperty_form;

{------------------------------------------------------------------------------}
{ �����      : ������ �.�.;                                                    }
{ �����      : 15.08.2005 19.00;                                               }
{ ������     : enUserProperty                                                  }
{ ��������   : ����� ��� ������� ������������;                                 }
{------------------------------------------------------------------------------}

// $Id: UserProperty_Form.pas,v 1.14 2013/01/22 15:59:35 kostitsin Exp $
// $Log: UserProperty_Form.pas,v $
// Revision 1.14  2013/01/22 15:59:35  kostitsin
// [$424399029]
//
// Revision 1.13  2012/03/07 07:47:33  kostitsin
// [$340170447]
//
// Revision 1.12  2012/02/16 11:52:55  kostitsin
// [$278837820]
//
// Revision 1.11  2012/01/23 08:40:49  kostitsin
// http://mdp.garant.ru/pages/viewpage.action?pageId=268342582
//
// Revision 1.10  2012/01/23 07:25:23  kostitsin
// http://mdp.garant.ru/pages/viewpage.action?pageId=268342582
//
// Revision 1.9  2012/01/17 14:41:09  kostitsin
// ����� � ��� ���:
//
// http://mdp.garant.ru/pages/viewpage.action?pageId=268342582
//
// Revision 1.8  2011/12/29 12:12:23  kostitsin
// ��������� ������
//
// Revision 1.7  2011/12/29 11:42:10  kostitsin
// http://mdp.garant.ru/pages/viewpage.action?pageId=325260198
//
// Revision 1.6  2011/12/27 15:47:06  kostitsin
// http://mdp.garant.ru/pages/viewpage.action?pageId=268342582
//
// Revision 1.5  2011/12/21 08:28:08  kostitsin
// http://mdp.garant.ru/pages/viewpage.action?pageId=268342582
//
// Revision 1.4  2011/11/16 17:35:34  lulin
// {RequestLink:232098711}
//
// Revision 1.3  2011/09/26 13:57:57  lulin
// {RequestLink:278826721}.
//
// Revision 1.2  2010/09/10 11:29:34  lulin
// {RequestLink:197496539}.
//
// Revision 1.80  2010/08/30 15:31:10  lulin
// {RequestLink:224134305}.
//
// Revision 1.79  2010/04/27 18:04:18  lulin
// {RequestLink:159352361}.
// - ������� ����������� �������� ����� ��������� �� ������.
//
// Revision 1.78  2010/01/18 12:13:56  oman
// - new: ��������� ���� {RequestLink:177538395}
//
// Revision 1.77  2009/12/09 13:12:02  lulin
// {RequestLink:124453871}.
//
// Revision 1.76  2009/12/07 19:10:33  lulin
// - ������ �������� ������.
//
// Revision 1.75  2009/11/18 13:06:13  lulin
// - ���������� ������� ��������� ��������.
//
// Revision 1.74  2009/11/12 14:32:40  lulin
// - ������� ����������� ������ ������ ����������.
//
// Revision 1.73  2009/11/06 09:31:54  oman
// - fix: {RequestLink:168957117}
//
// Revision 1.72  2009/10/02 13:43:55  lulin
// - ������ ����� ���������������� �������� �����������, ��������� � �������, � �� ����� ������ ���������� ����������.
//
// Revision 1.71  2009/08/14 14:57:57  lulin
// {RequestLink:129240934}. �42.
//
// Revision 1.70  2009/07/31 17:30:11  lulin
// - ������� �����.
//
// Revision 1.69  2009/07/22 05:10:04  oman
// - fix: �� ������ - {RequestLink:155030062}
//
// Revision 1.68  2009/04/28 11:59:12  oman
// - new: ������ drop - [$127762671]
//
// Revision 1.67  2009/04/24 07:45:37  oman
// - new: ��������� ��������� ������������� ������ ������ - [$127762671]
//
// Revision 1.66  2009/04/22 08:21:51  oman
// - new: ������� ���������� ������� � ����� � ������������ - [$127762671]
//
// Revision 1.65  2009/04/17 11:01:17  oman
// - new: ���������� ������ � ��������� ������������ - [$127762671]
//
// Revision 1.64  2009/04/17 09:03:59  oman
// - new: ���������� ������ � ��������� ������������ - [$127762671]
//
// Revision 1.63  2009/04/17 06:09:48  oman
// - new: ��������� ��� ����� � ��������� ������������ - [$127762671]
//                                                     
// Revision 1.62  2009/04/15 12:33:23  oman
// - new: ��� �������� ������������ ������� ���������� � ������ - [$127762671]
//
// Revision 1.61  2009/03/11 11:10:59  oman
// - fix: �� ������ �� ���������� ��������� (�-139429932)
//
// Revision 1.60  2009/02/20 18:50:47  lulin
// - <K>: 136941122. ������� �������� ���������� ��� ������� ��������� ��������.
//
// Revision 1.59  2009/01/30 13:51:33  lulin
// - ������ ����.
//
// Revision 1.58  2009/01/27 12:56:07  lulin
// - <K>: 136251752.
//
// Revision 1.57  2008/12/24 19:49:23  lulin
// - <K>: 121153186.
//
// Revision 1.56  2008/11/14 16:30:06  lulin
// - <K>: 122674202.
//
// Revision 1.55  2008/07/07 14:27:03  lulin
// - ���������������� � ��������������.
//
// Revision 1.54  2008/06/25 11:42:12  oman
// - fix: ����������� ����������� ��� ��������� ������������� (cq29373)
//
// Revision 1.53  2008/06/23 09:26:06  oman
// - new: ������ ������ �� ����������� (cq29373)
//
// Revision 1.52  2008/06/20 12:00:18  oman
// - new: ������� ���������� �� ����������� ������� ��� ��� ������������ (cq29373)
//
// Revision 1.51  2008/05/21 13:39:32  lulin
// - cleanup.
//
// Revision 1.50  2008/05/15 20:15:24  lulin
// - ��������� ������.
//
// Revision 1.49  2008/05/15 18:16:25  lulin
// - �������� ��������.
//
// Revision 1.48  2008/05/13 16:24:24  lulin
// - ��������� � ������ <K>: 90441490.
//
// Revision 1.47  2008/01/10 07:23:06  oman
// ������� �� ����� �������
//
// Revision 1.46  2007/12/11 10:42:42  oman
// �� ������� UndoBuffer
//
// Revision 1.45  2007/11/19 08:14:26  oman
// - new: ����� "�����������������" ���������, ���� ��� �������� (cq27255)
//
// Revision 1.44  2007/11/15 12:33:40  oman
// - new: ��������� �������� ��� ����������������� �������������  (cq27255)
//
// Revision 1.43  2007/11/14 11:26:32  oman
// - new: ��������� ����������������� ������������ (cq27255)
//
// Revision 1.42  2007/11/14 08:13:10  mmorozov
// - new: ����� "����������������� ������������";
//
// Revision 1.41  2007/04/11 11:28:53  oman
// - fix: ��������� ���������� ���������� � ������ �� �������������
//  (cq24352)
//
// Revision 1.40  2007/04/05 13:40:57  lulin
// - ����������� �� ������ �������������� �����.
//
// Revision 1.39  2007/04/05 11:57:38  oman
// - fix: ���������� ���������� ������ (cq24908, 24907)
//
// Revision 1.38  2007/03/28 19:43:00  lulin
// - ����������� �������� ��������� �� ������ � ����������.
//
// Revision 1.37  2007/03/20 08:52:01  lulin
// - �� ������ ��������� ��� ������������ ���������� ����.
//
// Revision 1.36  2007/03/19 10:45:54  oman
// cleanup
//
// Revision 1.35  2007/03/16 13:32:49  oman
// - new: ���� �� ������� ���� ������, �������� FakeBox.TextValid
//
// Revision 1.34  2007/03/07 13:11:20  lulin
// - cleanup.
//
// Revision 1.33  2007/03/02 15:08:37  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.32  2007/02/14 16:50:59  lulin
// - ����������� �� ������������� ����������� �����.
//
// Revision 1.31  2007/02/13 14:33:23  lulin
// - cleanup.
//
// Revision 1.30  2007/02/07 12:45:06  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.29  2007/02/06 15:20:52  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.28  2007/01/17 14:03:00  lulin
// - �������� ��������� ��������������� ��������� � ������ ��������.
//
// Revision 1.27  2006/12/07 12:40:42  lulin
// - ��������� ������� �� "����������" ������.
//
// Revision 1.26  2006/12/06 08:00:36  lulin
// - ����� ���������� ���� � �� �� �����.
//
// Revision 1.25  2006/11/10 16:00:03  oman
// Merge from B_NEMESIS_6_4
//
// Revision 1.24.4.2  2006/11/10 13:45:23  oman
// - fix: ��� ��������� ������������� �� ���� ������ ����� ��
//  ������������  (cq23515)
//
// Revision 1.24.4.1  2006/11/08 15:29:10  oman
// - new: ����� �������� �� ������� ������� ������������ (cq23515)
//
// Revision 1.24  2006/08/17 09:06:10  oman
// - fix: ��� ������� �� ��������� �� ���������� �������� ������������
//  ���������� ����� (cq22316)
//
// Revision 1.23  2006/04/19 13:34:27  oman
// - new beh: ������������� StdStr � _StdRes
//
// Revision 1.22  2006/03/31 07:42:17  lulin
// - ������� ��� ����������, ���������� � Execte ��������.
//
// Revision 1.21  2006/03/30 15:31:31  lulin
// - ������� ��� ���������� � _OnTest.
//
// Revision 1.20  2006/03/24 14:55:49  oman
// - new beh: ������� � _OnTest �� OnGetState ��� ��������
//
// Revision 1.19  2006/03/20 09:27:58  oman
// - new beh: ������������� ��� ��������� ��������� � ��� ����� (StdStr, DebugStr � SystemStr)
//
// Revision 1.18  2005/12/13 13:53:43  demon
// - fix: ������ ������ �� ���������� ��� ��������� ���������� ���������
//
// Revision 1.17  2005/11/28 09:30:06  oman
// -fix: ����������� �������� ������� ��������� ������.
//
// Revision 1.16  2005/11/25 12:25:26  mmorozov
// - ��������� �������� ������� ��������� ������;
//
// Revision 1.15  2005/11/25 12:19:57  mmorozov
// - bugfix: AV ��� ������� ������������ ��������� �������� (cq: 00018345);
//
// Revision 1.14  2005/11/23 13:19:39  oman
// - fix: ���������� ��������� ��������� (������ _TElEdit �� TnscComboBox)
//
// Revision 1.13  2005/11/22 11:05:37  oman
// - fix: ��� �������� �� ������ �� ���������� ������
//
// Revision 1.12  2005/11/22 07:09:48  oman
// fix: �������� �� ��������������� ��������� ��� �������� ����
//
// Revision 1.11  2005/09/28 18:15:07  mmorozov
// new: � ������� ChangedDataSource �������� �������� aFromHistory;
//
// Revision 1.10  2005/08/26 12:02:05  demon
// - new behavior: ������ �� ���������� ������������ ���������� �� UID ������ Login'�
//
// Revision 1.9  2005/08/22 11:29:21  demon
// - new behavior: ���������� �������� ������������ �������� �������� � ������ ��� ����������� ������ � ����������.
//
// Revision 1.8  2005/08/19 15:37:53  demon
// - new behavior: ���������� ���������� ��� �������� ������ ������������
//
// Revision 1.7  2005/08/19 15:24:28  demon
// - new behavior: ����������� �������� �������� ������ ������������
//
// Revision 1.6  2005/08/19 11:59:44  demon
// - new behavior: ������� ������ ���������� ���������� � ������������ (������ ��������)
//
// Revision 1.5  2005/08/18 16:19:17  demon
// - new behavior: ����������� �������� ���������� ���������� ���������� ������������
//
// Revision 1.4  2005/08/17 15:23:03  demon
// - new behavior: ����������� ����������� ������� ������������
//
// Revision 1.3  2005/08/16 16:28:21  demon
// - new behavior: �������� ��� ����������� ������� ������������
//
// Revision 1.2  2005/08/16 11:40:32  demon
// - new behavior: ��������� �������������� ��� ����, ����� ����� ����������������
//
// Revision 1.1  2005/08/15 18:18:41  demon
// - new behavior: ����� ��� ���������� ��������������
//

interface

// <no_string>

{$Include nsDefine.inc}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, l3Interfaces, vcmInterfaces, vcmExternalInterfaces, vcmBase, vcmEntityForm, vcmEntities,
  vcmComponent, vcmBaseEntities, ElXPThemedControl, StdCtrls,
  ExtCtrls, absdrop, treedrop,
  nscCombobox, eeCheckBox, vtLabel, OvcBase, afwControl, vtPanel,
  afwCustomCommonControl, evEditorWindow, evMultiSelectEditorWindow,
  evCustomEditor, evEditorWithOperations, evMemo, evCustomEdit,
  elCustomEdit, elCustomButtonEdit, ctButtonEdit, ctAbstractEdit,
  evCustomMemo, vtFocusLabel,
  AdminInterfaces, nevControl, EditableBox, FakeBox, afwControlPrim,
  afwBaseControl, afwTextControlPrim, afwTextControl,

  l3InterfacedComponent,

  PrimUserProperty_Form, vtComboBoxQS, evCustomEditorWindowModelPart,
  evCustomEditorWindowPrim, evCustomEditorModelPart,

  PrimUserPropertyOptions_Form, evCustomEditorWindow
  ;

type
  TefUserProperty = class(TvcmEntityFormRef)
    Entities : TvcmEntities;
    pnMainData: TvtPanel;
    UserNameLabel: TvtLabel;
    PasswordLabel: TvtLabel;
    LoginLabel: TvtLabel;
    EMailLabel: TvtLabel;
    ConfirmPasswordLabel: TvtLabel;
    edPassword: TnscComboBoxWithPwdChar;
    edUserName: TnscEdit;
    edLogin: TnscEdit;
    edEmail: TnscEdit;
    edConfirm: TnscComboBoxWithPwdChar;
    edBuyConsulting: TeeCheckBox;
    edPrivilegedUser: TeeCheckBox;
    edHasSharedFilters: TeeCheckBox;
    GroupLabel: TvtLabel;
    edGroup: TvtComboBoxQS;
    f_TopPanel: TvtPanel;
    f_MiddlePanel: TvtPanel;
    f_DontDeleteIdleUserPanel: TvtPanel;
    edDontDeleteIdleUser: TeeCheckBox;
    f_BottomPanel: TvtPanel;
    InfoLabel: TvtLabel;
    procedure vcmEntityFormChangedDataSource(aSender: TObject;
                                             const aOld, aNew: IvcmFormDataSource;
                                             const aFromHistory : Boolean);
    procedure edLoginChange(Sender: TObject);
    procedure edPasswordChange(Sender: TObject);
    procedure edConfirmChange(Sender: TObject);
    procedure edUserNameChange(Sender: TObject);
    procedure edEmailChange(Sender: TObject);
    procedure vcmEntityFormCloseQueryEx(Sender: TObject; var CanClose: Boolean;
                                        aCaller: TCustomForm);
    procedure edBuyConsultingClick(Sender: TObject);
    procedure edPrivilegedUserClick(Sender: TObject);
    procedure edGroupChange(Sender: TObject);
    procedure edHasSharedFiltersClick(Sender: TObject);
    procedure edDontDeleteIdleUserClick(Sender: TObject);
   protected
    // protected methods
    procedure DoCheckUnsavedProperties; override;
   private
    { Private declarations }
    f_PasswordChanged : Boolean;
    f_LockCheckBox    : Boolean;

    function ShowDontDeleteIdleUsers: Boolean;
    procedure InitUserFields;
    procedure RestoreFields; override;
    procedure CheckFields;
    procedure SaveChangedProfile(const aDataSource: IdsUserProperty); override;
    function CheckUnsaved(const aUserProperty: IdsUserProperty): Boolean; override;
     { ���������� ������� ��������� ������������� ��������� (��� �������������
       ������� ������ ������������) }
  end;//TefUserProperty

implementation

{$R *.DFM}

uses
  l3Chars,
  l3String,

  StdRes,

  DataAdapter,

  SecurityUnit,

  nsTypes,
  nsConst,
  nsVerifyValue,
  nsUserNodes,
  nsGroupTreeStruct,
  Admin_Users_Controls,
  l3Base,
  StartUnit;

procedure TefUserProperty.SaveChangedProfile(const aDataSource: IdsUserProperty);
begin
 if aDataSource.IsNewUser then
 begin
  try
   aDataSource.CreateUserProfile(l3PCharLen(edLogin.Text),
                                 l3PCharLen(edUserName.Text),
                                 l3PCharLen(edEmail.Text),
                                 l3PCharLen(edPassword.Text),
                                 edBuyConsulting.Checked,
                                 edPrivilegedUser.Checked,
                                 GetUserID(edGroup.CurrentNode));
   RestoreFields;
   aDataSource.CreateUserFinished(True);
  except
   on ELoginDuplicate do
    Say(war_LoginDuplicate, [edLogin.Text]);
   on EWrongAuthentication do
    Say(err_WrongAuthentification);
   on EXMLImportRunning do
    Say(inf_XMLImportRunning);
   on ENoMoreProfiles do
    Say(err_UsersLicenceViolation);
   on ENoMorePrivilegedProfiles do
    Say(err_PrivilegedUsersLicenceViolation);
  end;
 end
 else
  if l3Same(edPassword.Text, cHasPassword) then
  try
   aDataSource.SaveUserProfile(l3PCharLen(edUserName.Text),
                               l3PCharLen(edEmail.Text),
                               edBuyConsulting.Checked,
                               edPrivilegedUser.Checked,
                               edDontDeleteIdleUser.Checked,
                               cc_EmptyStr,
                               GetUserID(edGroup.CurrentNode))
  except
   on ENoMoreProfiles do
    Say(err_UsersLicenceViolation);
   on ENoMorePrivilegedProfiles do
    Say(err_PrivilegedUsersLicenceViolation);
  end
  else
  try
   aDataSource.SaveUserProfile(l3PCharLen(edUserName.Text),
                               l3PCharLen(edEmail.Text),
                               edBuyConsulting.Checked,
                               edPrivilegedUser.Checked,
                               edDontDeleteIdleUser.Checked,
                               l3PCharLen(edPassword.Text),
                               GetUserID(edGroup.CurrentNode),
                               f_PasswordChanged);
  except
   on ENoMoreProfiles do
    Say(err_UsersLicenceViolation);
   on ENoMorePrivilegedProfiles do
    Say(err_PrivilegedUsersLicenceViolation);
  end;
end;

function TefUserProperty.ShowDontDeleteIdleUsers: Boolean;
begin
 Result := defDataAdapter.CommonInterfaces.IsEraseOfInactiveUsersEnabled;
end;

procedure TefUserProperty.RestoreFields;
begin
 if Assigned(dsUserProperty) then
  dsUserProperty.IsChanged := False;
 InitUserFields;
end;

procedure TefUserProperty.InitUserFields;

 procedure lp_SetupEnabled(const aEnabled: Boolean);
 begin
  edPassword.Enabled := aEnabled;
  edConfirm.Enabled := aEnabled;
  edLogin.Enabled := aEnabled;
  edUserName.Enabled := aEnabled;
  edEmail.Enabled := aEnabled;
  edBuyConsulting.Enabled := aEnabled;
  edPrivilegedUser.Enabled := aEnabled and defDataAdapter.PrivelegedUsersAllowed;
  edDontDeleteIdleUser.Enabled := aEnabled and not dsUserProperty.IsNewUser;
  edGroup.Enabled := aEnabled;
 end;

 procedure lp_ClearFileds;
 begin
  edPassword.Text := nil;
  edConfirm.Text := nil;
  edLogin.Text := nil;
  edUserName.Text := nil;
  edEmail.Text := nil;
 end;

begin
 try
  f_PasswordChanged := False;

  lp_SetupEnabled(Assigned(dsUserProperty));
  if not Assigned(dsUserProperty) then
   begin
    lp_ClearFileds;
    edGroup.CurrentNode := nil;
    Exit;
   end;

  if dsUserProperty.IsNewUser then
  begin
   CCaption := vcmCStr(str_CreateUserFormCaption);
   f_IsCorrectInfo := False;
  end
  else
  begin
   CCaption := vcmCStr(str_UsualUserFormCaption);
   f_IsCorrectInfo := True;
  end;

  edLogin.TextValid := True;
  edPassword.TextValid := True;
  edEmail.TextValid := True;
  edConfirm.TextValid := True;
  f_LockCheckBox := True;
  try
   edBuyConsulting.Checked := dsUserProperty.CanBuyConsulting;
   edBuyConsulting.Enabled := not dsUserProperty.IsSystem;
   edPrivilegedUser.Checked := dsUserProperty.IsPrivileged;
   edPrivilegedUser.Enabled := not dsUserProperty.IsSystem and defDataAdapter.PrivelegedUsersAllowed;

   f_DontDeleteIdleUserPanel.Visible := ShowDontDeleteIdleUsers;

   edDontDeleteIdleUser.Checked := dsUserProperty.IsSystem or dsUserProperty.DontDeleteIdle;
   edDontDeleteIdleUser.Enabled := not dsUserProperty.IsSystem;
   edHasSharedFilters.Checked := defDataAdapter.NativeAdapter.MakeUserManager.HasSharedFilters(dsUserProperty.UID);
  finally
   f_LockCheckBox := False;
  end;//try..finally
  if dsUserProperty.HasUserProfile then
  begin
   if dsUserProperty.HasPassword then
   begin
    edPassword.Text := nsCStr(cHasPassword);
    edConfirm.Text := nsCStr(cHasPassword);
   end
   else
   begin
    edPassword.Text := nil;
    edConfirm.Text := nil;
   end;
   edPassword.Enabled := True;
   edConfirm.Enabled := True;

   edLogin.Text := dsUserProperty.Login;
   edLogin.Enabled := dsUserProperty.IsNewUser;
   edUserName.Text := dsUserProperty.Name;
   edUserName.Enabled := True;
   edEmail.Text := dsUserProperty.Mail;
   edEmail.Enabled := True;

   edGroup.Enabled := not dsUserProperty.IsSystem;
  end
  else
  begin
   lp_ClearFileds;
   lp_SetupEnabled(dsUserProperty.IsNewUser);
  end;
  edGroup.CUrrentNode := GetUserByID(dsUserProperty.GroupUID, edGroup.TreeStruct);
 finally
  edPassword.ClearUndoRedoLists;
  edConfirm.ClearUndoRedoLists;
  edLogin.ClearUndoRedoLists;
  edUserName.ClearUndoRedoLists;
  edEmail.ClearUndoRedoLists;
  edGroup.ClearUndoRedoLists;
 end;
end;

procedure TefUserProperty.vcmEntityFormChangedDataSource(aSender: TObject;
                                                         const aOld, aNew: IvcmFormDataSource;
                                                         const aFromHistory : Boolean);
var
 l_DataSource: IdsUserProperty;
begin
 // ��������� �� �������� �� ������ ��� �������� ������������
 if Supports(aOld, IdsUserProperty, l_DataSource) then
  CheckUnsaved(l_DataSource);

 if (dsUserProperty <> nil) then
  InitUserFields
 else
  f_IsCorrectInfo := false
end;

procedure TefUserProperty.CheckFields;
begin
 //l3System.Stack2Log;

 dsUserProperty.IsChanged := True;

 // ��������� �������
 edLogin.TextValid := nsLoginVerify.Verify(edLogin.Text);
 edPassword.TextValid := nsPasswordVerify.Verify(edPassword.Text);
 edEmail.TextValid := nsEmailVerify.Verify(edEmail.Text);
 edConfirm.TextValid := nsPasswordVerify.Verify(edConfirm.Text) and
                        l3Same(edConfirm.Text, edPassword.Text);

 f_IsCorrectInfo := not l3IsNil(edLogin.Text) and
                    not l3ISNil(edUserName.Text) and
                    edLogin.TextValid and
                    edPassword.TextValid and
                    edConfirm.TextValid and
                    (l3IsNil(edEmail.Text) or
                     edEmail.TextValid);
end;

procedure TefUserProperty.edLoginChange(Sender: TObject);
begin
 CheckFields;
end;

procedure TefUserProperty.edPasswordChange(Sender: TObject);
begin
 f_PasswordChanged := True;
 CheckFields;
end;

procedure TefUserProperty.edConfirmChange(Sender: TObject);
begin
 CheckFields;
end;

procedure TefUserProperty.edUserNameChange(Sender: TObject);
begin
 CheckFields;
end;

procedure TefUserProperty.edEmailChange(Sender: TObject);
begin
 CheckFields;
end;

function TefUserProperty.CheckUnsaved(const aUserProperty: IdsUserProperty): Boolean;
begin
 // ��������� �� �������� �� ������ ��� �������� ������������
 Result := True;
 // ��������, ��� ����� ����� ���� ������� �������� ��� ������ � �����������
 // ������� ������������, �� CheckUnsaved ������� ���������� �� _CloseQuery
 // ������� ������ _DataSource
 if Assigned(aUserProperty) and aUserProperty.IsChanged then
 begin
  // ���� �������� - �������� �� ���������
  if Ask(qr_UserChanged) then
  begin
   if f_IsCorrectInfo then
    SaveChangedProfile(aUserProperty)
   else
   begin
    // ��������� ������ ������, �.�. ��� ������� �� ��������� ��� �� ���������
    Say(err_WrongUserData);
    Result := False;
   end;
  end
  else
   Result := False;
 end;
end;

procedure TefUserProperty.vcmEntityFormCloseQueryEx(Sender: TObject;
                                                    var CanClose: Boolean;
                                                    aCaller: TCustomForm);
begin
 if not defDataAdapter.InTerminateProcess then
 begin
  // ��������� �� �������� �� ������ ��� �������� ������������
  DoCheckUnsavedProperties;
 end;
end;

procedure TefUserProperty.edBuyConsultingClick(Sender: TObject);
begin
 if not f_LockCheckBox then
  CheckFields;
end;

procedure TefUserProperty.edPrivilegedUserClick(Sender: TObject);
begin
 if not f_LockCheckBox then
  CheckFields;
end;

procedure TefUserProperty.edDontDeleteIdleUserClick(Sender: TObject);
begin
 if not f_LockCheckBox then
  CheckFields;
end;

procedure TefUserProperty.edGroupChange(Sender: TObject);
begin
 // http://mdp.garant.ru/pages/viewpage.action?pageId=268342582
 // �������������� ������ ���� � ��������� ������ � ����� ->
 // ���������, ��� ��-�� ������������ ����������.
//  l3System.Msg2Log('edGroupChange!!! ' +
//                   'dsUserProperty.HasUserProfile: %s; ' +
//                   'dsUserProperty.GroupUID: %d; ' +
//                   'GetUserID(edGroup.CurrentNode): %d;',
//                   [BoolToStr(dsUserProperty.HasUserProfile, True),
//                    dsUserProperty.GroupUID,
//                    GetUserID(edGroup.CurrentNode)
//                   ]);

 if not dsUserProperty.IsReadOnlyFor268342582 and // not dsUserProperty.IsReadOnly - ��� "�������" � �268342582
    dsUserProperty.HasUserProfile and
   (dsUserProperty.GroupUID <> GetUserID(edGroup.CurrentNode)) then
  CheckFields;
end;

procedure TefUserProperty.DoCheckUnsavedProperties;
begin
 if not CheckUnsaved(dsUserProperty) then
  RestoreFields;
end;

procedure TefUserProperty.edHasSharedFiltersClick(Sender: TObject);
var
 l_UID : Integer;
 l_Has : Boolean;
begin
 if not f_LockCheckBox then
 begin
  l_UID := dsUserProperty.UID;
  with defDataAdapter.NativeAdapter.MakeUserManager do
  begin
   l_Has := HasSharedFilters(l_UID);
   SetSharedFiltersState(l_UID, not l_Has);
   l_Has := HasSharedFilters(l_UID);
   edHasSharedFilters.Checked := l_Has;
  end;//with defDataAdapter.NativeAdapter.MakeUserManager
 end;//not f_LockCheckBox
end;

end.