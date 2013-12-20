unit Registration_Form;

// $Id: Registration_Form.pas,v 1.7 2013/08/20 10:08:08 kostitsin Exp $
// $Log: Registration_Form.pas,v $
// Revision 1.7  2013/08/20 10:08:08  kostitsin
// ��������
//
// Revision 1.6  2013/04/24 09:35:56  lulin
// - ���������.
//
// Revision 1.5  2013/01/22 15:59:11  kostitsin
// [$424399029]
//
// Revision 1.4  2011/06/23 15:30:34  lulin
// {RequestLink:254944102}.
//
// Revision 1.3  2010/03/19 13:39:18  oman
// - new: {RequestLink:197497742}
//
// Revision 1.2  2009/09/25 10:29:18  lulin
// {RequestLink:164596150}.
//
// Revision 1.1  2009/09/24 14:48:24  lulin
// - ���������� ���������� �� ������ ������ Common.
//
// Revision 1.74  2009/01/30 08:45:26  oman
// - fix: � ������ ���������� ��������� ������������ � ����� ������ (�-136254154)
//
// Revision 1.73  2009/01/15 08:01:11  oman
// �������� 5x
//
// Revision 1.72  2009/01/15 07:54:16  oman
// �������� 5x
//
// Revision 1.71  2009/01/14 13:54:56  oman
// �������� 5x
//
// Revision 1.70  2008/09/25 11:57:25  oman
// - fix: ������ � ������� (�-107840064)
//
// Revision 1.69  2008/09/02 19:45:36  lulin
// - <K>: 88080895.
//
// Revision 1.68  2008/08/11 11:25:35  oman
// - fix: ������� �� �� ����� (K-107839978)
//
// Revision 1.67  2008/07/09 12:42:26  mmorozov
// - ��������� � ���������� �������� �����.
//
// Revision 1.66  2008/07/07 14:26:52  lulin
// - ���������������� � ��������������.
//
// Revision 1.65  2008/05/15 20:15:13  lulin
// - ��������� ������.
//
// Revision 1.64  2008/05/15 18:16:17  lulin
// - �������� ��������.
//
// Revision 1.63  2008/05/13 16:24:13  lulin
// - ��������� � ������ <K>: 90441490.
//
// Revision 1.62  2008/03/06 13:42:06  oman
// - new: ������������� ����� (cq28586)
//
// Revision 1.61  2008/01/15 14:41:18  oman
// - new: ����� ������ ���� ������ (cq13279)
//
// Revision 1.60  2008/01/15 13:17:02  oman
// - new: ����� ������ ���� ��������������� - ������� ������ 2 (cq13279)
//
// Revision 1.59  2008/01/15 12:15:18  oman
// - new: ����� ������ ���� ��������������� - ������� ������ (cq13279)
//
// Revision 1.58  2008/01/15 11:32:39  oman
// - new: ����� ������ ���� ��������������� (cq13279)
//
// Revision 1.57  2008/01/10 07:23:10  oman
// ������� �� ����� �������
//
// Revision 1.56.4.1  2007/11/16 14:03:35  oman
// ������������ �� ����� �������
//
// Revision 1.56  2007/07/26 12:27:52  oman
// - fix: ������� ��� ����������� vtHeader (cq24480)
//
// Revision 1.55  2007/06/26 14:53:03  mmorozov
// - hint fix;
//
// Revision 1.54  2007/04/05 13:42:42  lulin
// - ����������� �� ������ �������������� �����.
//
// Revision 1.53  2007/04/05 11:56:53  oman
// - fix: ���������� ���������� ������
//
// Revision 1.52  2007/03/29 07:25:10  mmorozov
// - bugfix: ��������� ���������� ������ � ������������� (CQ: OIT5-24800);
//
// Revision 1.51  2007/03/28 19:42:53  lulin
// - ����������� �������� ��������� �� ������ � ����������.
//
// Revision 1.50  2007/03/16 15:47:07  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.49  2007/03/16 13:32:47  oman
// - new: ���� �� ������� ���� ������, �������� FakeBox.TextValid
//
// Revision 1.48  2007/03/13 14:51:24  lulin
// - ����������� �� ����� ������� �����.
//
// Revision 1.47  2007/03/07 12:58:29  lulin
// - ���������� ������ ��������, ������� ���������� �������������� (CQ OIT5-24544).
//
// Revision 1.46  2007/03/02 15:08:32  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.45  2007/02/28 16:17:01  lulin
// - ���������� ������������ ��������� ������.
//
// Revision 1.44  2007/02/09 15:44:45  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.43  2007/02/07 12:45:01  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.42  2006/12/22 15:06:16  lulin
// - ����� ���� - ������ ��������� � ������ � ������� ���������.
//
// Revision 1.41  2006/12/07 12:40:29  lulin
// - ��������� ������� �� "����������" ������.
//
// Revision 1.40  2006/12/06 08:00:29  lulin
// - ����� ���������� ���� � �� �� �����.
//
// Revision 1.39  2006/12/05 14:15:30  lulin
// - ������� �������� � ���������� ����������.
//
// Revision 1.38  2006/12/05 13:49:36  lulin
// - ������� �������� � ���������� ����������.
//
// Revision 1.37  2006/05/30 06:02:45  oman
// warning fix
//
// Revision 1.36  2005/08/19 08:59:58  mmorozov
// - add unit afwControl;
//
// Revision 1.35  2005/05/27 14:46:15  lulin
// - ������� ������� �������� � ���������� L3.
//
// Revision 1.34  2005/05/12 11:31:49  mmorozov
// bugfix: ��� ���������� �� ����������� �� ������ ������� � ������ ������;
// bugfix: ������������ ������� ������ �������������, ���� ������� �� ������ �������;
//
// Revision 1.33  2005/04/07 09:49:04  mmorozov
// change: ������������ ���� ��� ���������� "�����", "���";
//
// Revision 1.32  2005/04/06 12:33:19  mmorozov
// bugfix: ������ ���� email ������������� ��� �� ��������� ��������� ��������;
//
// Revision 1.31  2005/04/06 08:18:14  mmorozov
// change: ����������� �� ���������� ������, ������ ������������ ��� ���������: CheckForm (��������� ������������� ������������ ����� � ����������� ������� �� ����� ��������� ��������) � Save (������ ��������� �� ����� ��������� �������� � ��������� ����� � ������ ������);
//
// Revision 1.30  2005/04/05 14:05:01  mmorozov
// new: ������������ ������������ ����� �������� � ���� ������, ������ ���������;
//
// Revision 1.29  2005/03/29 05:34:48  mmorozov
// new behaviour: ���� ����� �������� �������� �������� � ����������� �������� ����� ���� "��� ������������" ������, �� ������� ���������� � ������������� ���������� ������������� ����;
//
// Revision 1.28  2005/03/24 13:39:25  mmorozov
// new: ������������� ������� ������ nsVerifyValue;
//
// Revision 1.27  2005/03/24 08:08:42  dinishev
// Bug fix: ������� ������ ��������� Monitorings
//
// Revision 1.26  2005/03/23 17:35:23  dinishev
// GetCurrentUserName -> LoginUtils
//
// Revision 1.25  2005/03/22 09:02:43  am
// change: ����� �� _uses enLogin (� ������ ������������ ����)
//
// Revision 1.24  2005/03/21 16:55:15  dinishev
// ��������� Monitorings.
//
// Revision 1.23  2005/02/24 11:26:36  am
// bugfix: ��� ����� ������������� ������� ������������ ������ �����������
//
// Revision 1.21  2005/02/18 12:37:05  am
// change: Hint �� ������
// change: ��� ������� ������ ������������ �������� ��������������� ������
// change: ��� ���������������� � ������ ������� (����� ��������������)
//
// Revision 1.20  2005/01/18 12:16:47  fireton
// - bug fix: ������ "������������������" ���� ���������� ���� ������������ ���������� �� 5-� ������ (��� ���� ����������� �����)
//
// Revision 1.19  2004/12/23 11:15:02  lulin
// - rename prop: TvtCustomOutliner.TreeSource -> TreeStruct.
//
// Revision 1.18  2004/11/24 11:06:03  am
// change: override ������� IsRealInstance ��� ���������� ������ � �������� ��������
//
// Revision 1.17  2004/11/17 13:46:12  am
// change: ������ ����� �� vcm'��� ������
//
// Revision 1.16  2004/10/25 12:20:56  mmorozov
// bugfix: � GetCurrentUserName �� ���������� ����������� ������;
//
// Revision 1.15  2004/10/25 08:37:57  mmorozov
// new: � ������ ������������ ���������� �� ������ ElPack;
//
// Revision 1.14  2004/10/12 11:37:33  demon
// - fix: ����� ���� ������������������ ��� ������������� ������ (����� ���, � ����� ��������� ������)
//
// Revision 1.13  2004/09/30 14:28:26  demon
// - fix: ��� ����������� ������ ������������� ������ ��� ���������...
//
// Revision 1.12  2004/09/30 14:17:08  demon
// - new behavior: � ������ ������������� ��� ��������������� ����� ����� ������������.
//

interface

{$Include nsDefine.inc}

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,
  ExtCtrls,
  ImgList,

  l3TreeInterfaces,
  l3Interfaces,

  ElBtnCtl,
  ElPopBtn,
  ElXPThemedControl,

  OvcBase,

  afwControl,
  afwInputControl,
  afwCustomCommonControl,

  vtLister,
  vtOutliner,
  vtLabel,
  vtPanel,

  eeCheckBox,

  absdrop,
  treedrop,

  vcmEntityForm,

  nscComboBox,

  vtFocusLabel, vtGroupBox, evEditorWindow,
  evMultiSelectEditorWindow, evCustomEditor, evEditorWithOperations,
  evMemo, evCustomEdit, elCustomEdit, elCustomButtonEdit, ctButtonEdit,
  ctAbstractEdit, evCustomMemo, EditableBox, FakeBox,
  afwCustomCommonControlPrim, afwControlPrim, afwTextControlPrim,
  afwTextControl, afwBaseControl, nevControl, evCustomEditorWindowPrim,
  evCustomEditorWindowModelPart, evCustomEditorModelPart
  ;

type

  TnsRegistrationForm = class;
  TnsRegisterAction = function(aSender: TnsRegistrationForm): TModalResult of object;

  TnsRegistrationForm = class(TvcmEntityForm)
    LoginLabel: TvtLabel;
    edLogin: TnscEdit;
    PasswordLabel: TvtLabel;
    edPassword: TnscComboBoxWithPwdChar;
    ConfirmPasswordLabel: TvtLabel;
    edConfirm: TnscComboBoxWithPwdChar;
    UserNameLabel: TvtLabel;
    edUserName: TnscEdit;
    EMailLabel: TvtLabel;
    edEmail: TnscEdit;
    InfoLabel: TvtLabel;
    pnMainData: TvtPanel;
    cbAutoLogin: TeeCheckBox;
    BottomPanel: TvtPanel;
    RegisterButton: TElPopupButton;
    vtAsteriskLabelLogin: TvtLabel;
    vtAsteriskLabelFIO: TvtLabel;
    HelpPanel: TvtPanel;
    HelpPaintBox: TPaintBox;
    HelpLabel: TvtFocusLabel;
    NewUserGroupBox: TvtGroupBox;
    NewUserLabel: TvtLabel;
    NewUserPaintBox: TPaintBox;

    procedure edLoginChange(Sender: TObject);
    procedure edPasswordChange(Sender: TObject);
    procedure edConfirmChange(Sender: TObject);
    procedure edUserNameChange(Sender: TObject);

    procedure RegisterButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure HelpLabelClick(Sender: TObject);
    procedure HelpPaintBoxPaint(Sender: TObject);
    procedure NewUserPaintBoxPaint(Sender: TObject);
  private
    f_RegisterAction      : TnsRegisterAction;
    f_CanRelogin: Boolean;
  private
  // property methods
    function  pm_GetLogin: Il3CString;
    procedure pm_SetLogin(const aString: Il3CString);
      {-}
    function  pm_GetPassword: Il3CString;
    procedure pm_SetPassword(const aString: Il3CString);
      {-}
    function  pm_GetUserName: Il3CString;
      {-}
    function  pm_GetEMail: Il3CString;
      {-}
    function pm_GetIsAutoLogin: Boolean;
      {-}
  private
  // internal methods
    procedure CheckForm;
      {-}
    procedure Save;
      {-}
    procedure CMDialogKey(var Message: TCMDialogKey); message CM_DIALOGKEY;
      {-}
    procedure RepositionControls;
      {-}
  protected
  // protected methods
    procedure CreateParams(var aParams: TCreateParams); override;
      {-}
  public
  // public methods
    constructor Create(aOwner: TComponent; aIsAutoLogin, aCanRelogin: Boolean);
      reintroduce;
      overload;
      {-}
    {$IfDef l3HackedVCL}
    function IsRealInstance: Boolean;
      override;
      {-}
    {$EndIf l3HackedVCL}
    procedure IncreaseLogin;
      {-}
  public
  // public properties
    property  Login: Il3CString
      read pm_GetLogin
      write pm_SetLogin;
      {-}
    property  Password: Il3CString
      read pm_GetPassword
      write pm_SetPassword;
      {-}
    property  UserName: Il3CString
      read pm_GetUserName;
      {-}
    property  EMail: Il3CString
      read pm_GetEMail;
      {-}
    property  RegisterAction: TnsRegisterAction
      read f_RegisterAction
      write f_RegisterAction;
      {-}
    property IsAutoLogin : Boolean
     read pm_GetIsAutoLogin;
     {-}
    property CanRelogin: Boolean
     read f_CanRelogin;
     {-}
  end;

implementation

uses
  StdRes,

  l3Base,
  l3String,
  l3MinMax,

  vcmForm,

  nsTypes,
  nsVerifyValue,
  nsLoginUtils,
  nsUtils,
  nsConst,
  SearchRes
  ;

{$R *.dfm}

const
 cDefaultGarant5xUser = 'Administrator';

procedure TnsRegistrationForm.CheckForm;
var
 l_Result : Boolean;
begin
 l_Result := True;
 // ��������� �������
 edLogin.TextValid := nsLoginVerify.Verify(edLogin.Text);
 edPassword.TextValid := nsPasswordVerify.Verify(edPassword.Text);
 edEmail.TextValid := nsEmailVerify.Verify(edEmail.Text);
 edConfirm.TextValid := nsPasswordVerify.Verify(edConfirm.Text) and
                        l3Same(edConfirm.Text, edPassword.Text);
 // �����
 if l3IsNil(edLogin.Text) then
  l_Result := False
 else
 // ��� ������������
 if l3IsNil(edUserName.Text) then
  l_Result := False;

 RegisterButton.Enabled := l_Result;
 cbAutoLogin.Enabled := l_Result;
end;

function TnsRegistrationForm.pm_GetLogin: Il3CString;
begin
 Result := edLogin.Text;
end;

procedure TnsRegistrationForm.pm_SetLogin(const aString: Il3CString);
begin
 edLogin.Text := aString;
end;

function TnsRegistrationForm.pm_GetPassword: Il3CString;
begin
 Result := edPassword.Text;
end;

procedure TnsRegistrationForm.pm_SetPassword(const aString: Il3CString);
begin
 edPassword.Text := aString;
 edConfirm.Text := aString;
end;

function TnsRegistrationForm.pm_GetUserName: Il3CString;
begin
 Result := edUserName.Text;
end;

function TnsRegistrationForm.pm_GetEMail: Il3CString;
begin
 Result := edEmail.Text;
end;

procedure TnsRegistrationForm.IncreaseLogin;
var
 l_Char   : AnsiChar;
 l_String : Il3CString;
 l_Len    : Integer;
begin
 edLogin.SetFocus;
 l_String := Login;
 if l3IsNil(l_String) then
  exit;
 l_Len := l3Len(l_String);
 l_Char := l3Char(l_String, l_Len - 1);

 if (l_Char in ['0'..'8']) then
 begin
  l3SetLen(l_String, l_Len - 1);
  l_Char := Succ(l_Char)
 end//l_Char in ['0'..'8']
 else
 if (l_Char in ['9']) then
 begin
  l3SetLen(l_String, l_Len - 1);
  l_Char := '0';
 end//l_Char in ['9']
 else
  l_Char := '1';
 l_String := l3Cat(l_String, l_Char);

 Login := l_String;
end;

procedure TnsRegistrationForm.edLoginChange(Sender: TObject);
begin
 CheckForm;
end;

procedure TnsRegistrationForm.edPasswordChange(Sender: TObject);
begin
 CheckForm;
end;

procedure TnsRegistrationForm.edConfirmChange(Sender: TObject);
begin
 CheckForm;
end;

procedure TnsRegistrationForm.edUserNameChange(Sender: TObject);
begin
 CheckForm;
end;

procedure TnsRegistrationForm.Save;

  procedure lpSetFocus(aEdit : TnscComboBox);
  begin
   with aEdit do
   begin
    SelectAll;
    SetFocus;
   end;
  end;

  procedure lpClearPassword;
  begin
   edPassword.Text := nil;
   edConfirm.Text  := nil;
   lpSetFocus(edPassword);
  end;

begin
 edUserName.Text := l3Trim(edUserName.Text);
 // �����
 if not nsLoginVerify.Verify(edLogin.Text) then
 begin
  lpSetFocus(edLogin);
  Say(err_LoginHasNotValidChars);
  Exit;
 end
 else
 // ������, �������������
 if not l3Same(edPassword.Text, edConfirm.Text) then
 begin
  lpClearPassword;
  Say(err_PasswordAndConfirmNotSame);
  Exit;
 end
 else
 if not nsPasswordVerify.Verify(edPassword.Text) then
 begin
  lpClearPassword;
  Say(err_PasswordHasErrorSimbols);
  Exit;
 end
 else
 // ���� ���
 if l3IsNil(edUserName.Text) then
 begin
  lpSetFocus(edUserName);
  Say(err_SurnameNotDefined);
  Exit;
 end
 else
 // Email
 if not l3IsNil(edEmail.Text) and not nsEmailVerify.Verify(edEmail.Text) then
 begin
  lpSetFocus(edEmail);
  Say(err_EmailNotValid);
  Exit;
 end;

 if ((l3IsNil(edPassword.Text)) and
    not Ask(qr_PasswordIsEmpty)) then
 begin
  edPassword.SetFocus;
  Exit;
 end;

 if Assigned(RegisterAction) then
  ModalResult := RegisterAction(self);
end;

procedure TnsRegistrationForm.RegisterButtonClick(Sender: TObject);
begin
 Save;
end;

procedure TnsRegistrationForm.FormCreate(Sender: TObject);
begin
 ActiveControl := edLogin;
 RepositionControls;
end;

procedure TnsRegistrationForm.CreateParams(var aParams: TCreateParams);
begin
 inherited;
 with aParams do
 begin
  ExStyle := ExStyle or WS_EX_APPWINDOW and not(WS_EX_TOOLWINDOW);
  WndParent := GetDesktopWindow;
 end;
end;

{$IfDef l3HackedVCL}
function TnsRegistrationForm.IsRealInstance: Boolean;
begin
 Result := True;
end;
{$EndIf l3HackedVCL}

function TnsRegistrationForm.pm_GetIsAutoLogin: Boolean;
begin
 Result := cbAutoLogin.Checked;
end;

constructor TnsRegistrationForm.Create(aOwner: TComponent;
  aIsAutoLogin, aCanRelogin: Boolean);
begin
 inherited Create(aOwner);
 cbAutoLogin.Checked := aIsAutoLogin;
 f_CanRelogin := aCanRelogin;
end;

procedure TnsRegistrationForm.HelpLabelClick(Sender: TObject);
begin
 Application.HelpSystem.ShowHelp(Name, '');
end;

procedure TnsRegistrationForm.HelpPaintBoxPaint(Sender: TObject);
begin
 with Sender as TPaintBox do
  nsSearchRes.ImageList16x16.Draw(Canvas, width - c_SmallSizeIcon, (Height - c_SmallSizeIcon) div 2, c_srchHelp);
end;

procedure TnsRegistrationForm.CMDialogKey(var Message: TCMDialogKey);
begin
 if (Message.CharCode = vk_Escape) and (fsModal in FormState) then
 begin
  ModalResult := mrCancel;
  Message.Result := 1;
 end
 else
  inherited;
end;

procedure TnsRegistrationForm.RepositionControls;
var
 l_WidthDelta: Integer;
 l_HeightDelta: Integer;

 procedure lp_CorrectLabelWidth(aLabel: TvtLabel);
 begin
  with aLabel do
   SetBounds(Left, Top + l_HeightDelta, Width - l_WidthDelta, Height);
 end;

 procedure lp_CorrectControlWidth(anEdit: TWinControl);
 begin
  with anEdit do
   SetBounds(Left - l_WidthDelta, Top + l_HeightDelta, Width + l_WidthDelta, Height);
 end;

begin
 HelpPanel.Width := HelpLabel.Left + HelpLabel.Width + c_ControlBorder;
 l_HeightDelta := Max(NewUserLabel.Top + NewUserLabel.Height - NewUserGroupBox.Height + 8, 0);
 l_WidthDelta := Max(InfoLabel.Width - edEMail.Width, 0);
 if (l_HeightDelta > 0) or (l_WidthDelta > 0) then
 begin
  SetBounds(Left, Top, Width + l_WidthDelta, Height + l_HeightDelta);
  NewUserGroupBox.Height := NewUserGroupBox.Height + l_HeightDelta;
  lp_CorrectLabelWidth(LoginLabel);
  lp_CorrectLabelWidth(PasswordLabel);
  lp_CorrectLabelWidth(ConfirmPasswordLabel);
  lp_CorrectLabelWidth(UserNameLabel);
  lp_CorrectLabelWidth(EMailLabel);
  lp_CorrectControlWidth(edLogin);
  lp_CorrectControlWidth(edPassword);
  lp_CorrectControlWidth(edConfirm);
  lp_CorrectControlWidth(edUserName);
  lp_CorrectControlWidth(edEmail);
  lp_CorrectControlWidth(cbAutoLogin);
  with RegisterButton do
   SetBounds(pnMainData.Left + edEmail.Left, Top + l_HeightDelta, edEmail.Width, Height);
  InfoLabel.Left := InfoLabel.Left - l_WidthDelta;
 end;
 with vtAsteriskLabelLogin do
  SetBounds(LoginLabel.Left + LoginLabel.Width, LoginLabel.Top, Width, Height);
 with vtAsteriskLabelFIO do
  SetBounds(UserNameLabel.Left + UserNameLabel.Width, UserNameLabel.Top, Width, Height);
end;

procedure TnsRegistrationForm.NewUserPaintBoxPaint(Sender: TObject);
begin
 with Sender as TPaintBox do
  dmStdRes.LargeImageList.Draw(Canvas, width - c_LargeSizeIcon, (Height - c_LargeSizeIcon) div 2, cNewUser);
end;

end.