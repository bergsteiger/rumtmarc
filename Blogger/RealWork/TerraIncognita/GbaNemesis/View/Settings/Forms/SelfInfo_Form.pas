unit SelfInfo_Form;

// $Id: SelfInfo_Form.pas,v 1.7 2013/01/22 15:59:52 kostitsin Exp $
// $Log: SelfInfo_Form.pas,v $
// Revision 1.7  2013/01/22 15:59:52  kostitsin
// [$424399029]
//
// Revision 1.6  2011/06/23 15:31:37  lulin
// {RequestLink:254944102}.
//
// Revision 1.5  2010/01/18 14:01:12  oman
// - new: Учет автологина {RequestLink:177538395}
//
// Revision 1.4  2010/01/18 13:40:25  oman
// - new: Открываемся {RequestLink:177538395}
//
// Revision 1.3  2010/01/18 12:47:04  oman
// - new: Открываемся {RequestLink:177538395}
//
// Revision 1.2  2010/01/18 12:27:42  oman
// - new: Открываемся {RequestLink:177538395}
//
// Revision 1.1  2010/01/18 12:14:07  oman
// - new: Заготовка форм {RequestLink:177538395}
//
//

interface

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

  nscCombobox,

  vtFocusLabel, vtGroupBox, evEditorWindow,
  evMultiSelectEditorWindow, evCustomEditor, evEditorWithOperations,
  evMemo, evCustomEdit, elCustomEdit, elCustomButtonEdit, ctButtonEdit,
  ctAbstractEdit, evCustomMemo, EditableBox, FakeBox,
  afwCustomCommonControlPrim, afwControlPrim, afwTextControlPrim,
  afwTextControl, afwBaseControl, nevControl, evCustomEditorWindowPrim,
  evCustomEditorWindowModelPart, PrimSelfInfo_Form, l3InterfacedComponent,
  vcmComponent, vcmBaseEntities, vcmEntities, evCustomEditorModelPart
  ;

type

  TSelfInfoForm = class(TvcmEntityFormRef)
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
    BottomPanel: TvtPanel;
    RegisterButton: TElPopupButton;
    vtAsteriskLabelLogin: TvtLabel;
    vtAsteriskLabelFIO: TvtLabel;
    HelpPanel: TvtPanel;
    HelpPaintBox: TPaintBox;
    HelpLabel: TvtFocusLabel;
    Entities: TvcmEntities;
    procedure edPasswordChange(Sender: TObject);
    procedure edConfirmChange(Sender: TObject);
    procedure edUserNameChange(Sender: TObject);

    procedure RegisterButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure HelpLabelClick(Sender: TObject);
    procedure HelpPaintBoxPaint(Sender: TObject);
  private
    f_PasswordChanged: Boolean;
  // internal methods
    procedure CheckFields;
      {-}
    procedure InitUserFields;
      {-}
    procedure Save;
      {-}
    procedure CMDialogKey(var Message: TCMDialogKey); message CM_DIALOGKEY;
      {-}
  end;

implementation

uses
  StdRes,

  l3Base,
  l3String,
  l3Chars,
  l3MinMax,

  vcmForm,

  SecurityUnit,

  DataAdapter,

  nsTypes,
  nsVerifyValue,
  nsLoginUtils,
  nsUtils,
  nsConst,
  SearchRes,

  vcmMessagesSupport
  ;

{$R *.dfm}

const
 cDefaultGarant5xUser = 'Administrator';

procedure TSelfInfoForm.CheckFields;
var
 l_Result : Boolean;
begin
 Info.IsChanged := True;

 l_Result := True;
 // Подсветим красным
 edLogin.TextValid := nsLoginVerify.Verify(edLogin.Text);
 edPassword.TextValid := nsPasswordVerify.Verify(edPassword.Text);
 edEmail.TextValid := nsEmailVerify.Verify(edEmail.Text);
 edConfirm.TextValid := nsPasswordVerify.Verify(edConfirm.Text) and
                        l3Same(edConfirm.Text, edPassword.Text);
 // Логин
 if l3IsNil(edLogin.Text) then
  l_Result := False
 else
 // ФИО пользователя
 if l3IsNil(edUserName.Text) then
  l_Result := False;

 RegisterButton.Enabled := l_Result;
end;

procedure TSelfInfoForm.edPasswordChange(Sender: TObject);
begin
 f_PasswordChanged := True;
 CheckFields;
end;

procedure TSelfInfoForm.edConfirmChange(Sender: TObject);
begin
 CheckFields;
end;

procedure TSelfInfoForm.edUserNameChange(Sender: TObject);
begin
 CheckFields;
end;

procedure TSelfInfoForm.Save;

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
 if not l3Same(edPassword.Text, edConfirm.Text) then
 begin
  lpClearPassword;
  vcmAsk(err_PasswordAndConfirmNotSame);
  Exit;
 end
 else
 if not nsPasswordVerify.Verify(edPassword.Text) then
 begin
  lpClearPassword;
  vcmAsk(err_PasswordHasErrorSimbols);
  Exit;
 end
 else
 // Поле ФИО
 if l3IsNil(edUserName.Text) then
 begin
  lpSetFocus(edUserName);
  vcmAsk(err_SurnameNotDefined);
  Exit;
 end
 else
 // Email
 if not l3IsNil(edEmail.Text) and not nsEmailVerify.Verify(edEmail.Text) then
 begin
  lpSetFocus(edEmail);
  vcmAsk(err_EmailNotValid);
  Exit;
 end;

 if l3Same(edPassword.Text, cHasPassword) then
 try
  Info.SaveUserInfo(l3PCharLen(edUserName.Text),
                    l3PCharLen(edEmail.Text),
                    cc_EmptyStr)
 except
  on ENoMoreProfiles do
   Say(err_UsersLicenceViolation);
  on ENoMorePrivilegedProfiles do
   Say(err_PrivilegedUsersLicenceViolation);
 end
 else
 try
  Info.SaveUserInfo(l3PCharLen(edUserName.Text),
                    l3PCharLen(edEmail.Text),
                    l3PCharLen(edPassword.Text),
                    f_PasswordChanged);
  if f_PasswordChanged then
   defDataAdapter.RegistryPassword := l3Str(edPassword.Text);
 except
  on ENoMoreProfiles do
   Say(err_UsersLicenceViolation);
  on ENoMorePrivilegedProfiles do
   Say(err_PrivilegedUsersLicenceViolation);
 end;

 ModalResult := mrOk;
end;

procedure TSelfInfoForm.RegisterButtonClick(Sender: TObject);
begin
 Save;
end;

procedure TSelfInfoForm.FormCreate(Sender: TObject);
begin
 ActiveControl := edPassword;
 InitUserFields;
end;

procedure TSelfInfoForm.HelpLabelClick(Sender: TObject);
begin
 Application.HelpSystem.ShowHelp(Name, '');
end;

procedure TSelfInfoForm.HelpPaintBoxPaint(Sender: TObject);
begin
 with Sender as TPaintBox do
  nsSearchRes.ImageList16x16.Draw(Canvas, width - c_SmallSizeIcon, (Height - c_SmallSizeIcon) div 2, c_srchHelp);
end;

procedure TSelfInfoForm.CMDialogKey(var Message: TCMDialogKey);
begin
 if (Message.CharCode = vk_Escape) and (fsModal in FormState) then
 begin
  ModalResult := mrCancel;
  Message.Result := 1;
 end
 else
  inherited;
end;

procedure TSelfInfoForm.InitUserFields;
begin
 f_PasswordChanged := False;

 if Info = nil then
  Exit;
  
 edLogin.TextValid := True;
 edPassword.TextValid := True;
 edEmail.TextValid := True;
 edConfirm.TextValid := True;
 if Info.HasPassword then
 begin
  edPassword.Text := nsCStr(cHasPassword);
  edConfirm.Text := nsCStr(cHasPassword);
 end
 else
 begin
  edPassword.Text := nil;
  edConfirm.Text := nil;
 end;

 edLogin.Text := Info.Login;
 edLogin.Enabled := False;
 edUserName.Text := Info.Name;
 edEmail.Text := Info.Mail;
end;

end.