unit enRememberPassword;

(*-----------------------------------------------------------------------------
 Название:   enRememberPassword
 Автор:      mmorozov
 Назначение: Форма для отсылки пользователю забытого пароля.
 Версия:     $Id: enRememberPassword.pas,v 1.24 2013/08/14 14:10:32 kostitsin Exp $
 История:

 $Log: enRememberPassword.pas,v $
 Revision 1.24  2013/08/14 14:10:32  kostitsin
 [$377169452] - LoginForm

 Revision 1.23  2013/04/24 09:35:55  lulin
 - портируем.

 Revision 1.22  2009/08/25 14:54:50  lulin
 {RequestLink:159367405}.

 Revision 1.21  2009/08/25 14:13:02  lulin
 {RequestLink:159367405}.

 Revision 1.20  2008/07/07 14:26:52  lulin
 - подготавливаемся к переименованию.

 Revision 1.19  2008/05/15 20:15:13  lulin
 - тотальная чистка.

 Revision 1.18  2008/05/15 18:16:17  lulin
 - вычищаем ненужное.

 Revision 1.17  2008/05/13 16:24:13  lulin
 - изменения в рамках <K>: 90441490.

 Revision 1.16  2007/06/26 14:53:03  mmorozov
 - hint fix;

 Revision 1.15  2007/04/05 13:42:42  lulin
 - избавляемся от лишних преобразований строк.

 Revision 1.14  2007/03/28 19:42:53  lulin
 - ЭлПаковский редактор переводим на строки с кодировкой.

 Revision 1.13  2007/03/13 14:51:24  lulin
 - избавляемся от чужой строчки ввода.

 Revision 1.12  2007/02/07 12:45:01  lulin
 - переводим на строки с кодировкой.

 Revision 1.11  2006/12/06 08:00:29  lulin
 - везде используем одни и те же метки.

 Revision 1.10  2005/03/24 13:39:25  mmorozov
 new: использование функций модуля nsVerifyValue;

 Revision 1.9  2005/03/21 16:48:10  dinishev
 Новый модуль nsLoginUtils

 Revision 1.8  2004/11/24 11:06:03  am
 change: override функции IsRealInstance для нормальной работы с большими шрифтами

 Revision 1.7  2004/11/17 13:45:02  am
 change: перевёл форму на vcm'ные рельсы

 Revision 1.6  2004/10/25 09:43:54  mmorozov
 no message

 Revision 1.5  2004/10/25 08:40:06  mmorozov
 new: add cvs log;

-----------------------------------------------------------------------------*)

interface

{$Include nsDefine.inc}

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, {enLogin}Login_Form, StdCtrls, ElXPThemedControl, ElBtnCtl, ElPopBtn,
  vcmEntityForm, vtLabel, absdrop, treedrop, 
  nscCombobox, OvcBase, afwControl, afwCustomCommonControl, l3Interfaces,
  evEditorWindow, evMultiSelectEditorWindow, evCustomEditor,
  evEditorWithOperations, evMemo, evCustomEdit, elCustomEdit,
  elCustomButtonEdit, ctButtonEdit, ctAbstractEdit,

  PrimRememberPassword_Form, nevControl, evCustomEditorWindowModelPart,
  evCustomMemo, EditableBox, FakeBox, afwControlPrim, afwBaseControl,
  afwCustomCommonControlPrim
  ;

type

  TnsRememberPasswordForm = class;
  TnsSendAction = function(aSender: TnsRememberPasswordForm): TModalResult of object;

  TnsRememberPasswordForm = class(TvcmEntityFormRef)
    EMailLabel: TvtLabel;
    HintLabel: TvtLabel;
    btnCancel: TElPopupButton;
    btnSend: TElPopupButton;
    edEmail: TnscEdit;
    procedure EMailEditChange(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    f_SendAction: TnsSendAction;
    function  GetEMail: Il3CString;
    procedure DoSend;
  protected
    procedure CreateParams(var aParams: TCreateParams);
      override;
      {-}
  public
    {$IfDef l3HackedVCL}
    function IsRealInstance: Boolean;
      override;
      {-}
    {$EndIf  l3HackedVCL}
  public
    property EMail: Il3CString
      read GetEMail;
      {-}
    property  SendAction: TnsSendAction
      read f_SendAction
      write f_SendAction;
      {-}
  end;//TnsRememberPasswordForm

var
  nsRememberPasswordForm: TnsRememberPasswordForm;

implementation

uses
  l3String,
  
  nsVerifyValue
  ;

{$R *.dfm}

function TnsRememberPasswordForm.GetEMail: Il3CString;
begin
 result := edEmail.Text;
end;

procedure TnsRememberPasswordForm.EMailEditChange(Sender: TObject);
begin
 btnSend.Enabled := nsEmailVerify.Verify(edEmail.Text);
 if btnSend.Enabled then
  edEmail.Font.Color := clWindowText
 else
  edEmail.Font.Color := clRed;
end;

procedure TnsRememberPasswordForm.DoSend;
begin
 if Assigned(SendAction) then
  ModalResult := SendAction(self);
end;

procedure TnsRememberPasswordForm.btnSendClick(Sender: TObject);
begin
 DoSend;
end;

procedure TnsRememberPasswordForm.FormCreate(Sender: TObject);
begin
 ActiveControl := edEmail;
end;

procedure TnsRememberPasswordForm.CreateParams(var aParams: TCreateParams);
begin
 inherited;
 with aParams do
 begin
  ExStyle := ExStyle or WS_EX_APPWINDOW and not(WS_EX_TOOLWINDOW);
  WndParent := GetDesktopWindow;
 end;
end;

{$IfDef l3HackedVCL}
function TnsRememberPasswordForm.IsRealInstance: Boolean;
begin
 Result := True;
end;
{$EndIf  l3HackedVCL}

end.
