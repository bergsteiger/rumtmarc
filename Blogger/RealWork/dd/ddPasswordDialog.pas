unit ddPasswordDialog;
{ Творческое переосмысление окна запроса пароля от Вована }

// $Id: ddPasswordDialog.pas,v 1.5 2013/04/11 16:46:28 lulin Exp $

// $Log: ddPasswordDialog.pas,v $
// Revision 1.5  2013/04/11 16:46:28  lulin
// - отлаживаем под XE3.
//
// Revision 1.4  2008/09/29 08:09:10  narry
// - рефакторинг механизма подключения к базе
//
// Revision 1.3  2007/10/10 07:04:49  narry
// - путаница с присвоением значений
//
// Revision 1.2  2007/09/28 05:33:54  narry
// - обновление
//


interface

uses WinTypes, WinProcs, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, l3IniFile;

type
  TPasswordDialog = class(TForm)
    Label1: TLabel;
    editPassword: TEdit;
    NameLabel: TLabel;
    Image1: TImage;
    labelPrompt: TLabel;
    checkSavePassword: TCheckBox;
    comboUserName: TComboBox;
    Button1: TButton;
    Button2: TButton;
    procedure comboUserNameChange(Sender: TObject);
  private
    f_Passwords: TStrings;
    f_UserList: TStrings;
    procedure DecodeUsers;
    procedure EncodeUsers;
    function pm_GetUserName: AnsiString;
    function pm_GetPassword: AnsiString;
    function pm_GetSavePassword: Boolean;
    function pm_GetUserList: TStrings;
    procedure pm_SetUserName(const Value: AnsiString);
    procedure pm_SetPassword(const Value: AnsiString);
    procedure pm_SetUserList(const Value: TStrings);
    { Private declarations }
  public
    Function Execute : Boolean;
    property UserName: AnsiString
     read pm_GetUserName
     write pm_SetUserName;
    property Password: AnsiString
     read pm_GetPassword
     write pm_SetPassword;
    property SavePassword: Boolean read pm_GetSavePassword;
    property UserList: TStrings read pm_GetUserList write pm_SetUserList;
  end;

function PromptForPassword(var aLogin, aPassword: AnsiString; var aSavePassword: Boolean; const aTitle: AnsiString = ''; const
    aPrompt: AnsiString = ''; aUserList: TStrings = nil): Boolean;

implementation
Uses
 StrUtils, SysUtils;

{$R *.DFM}

procedure TPasswordDialog.DecodeUsers;
var
 i: Integer;
begin
 comboUserName.Items.Clear;
 for i:= 0 to Pred(f_UserList.Count) do
  comboUserName.Items.Add(f_UserList.Names[i]);
end;

procedure TPasswordDialog.EncodeUsers;
var
 i: Integer;
begin
 f_UserList.Clear;
 f_UserList.Values[comboUserName.Text]:= editPassword.Text;
 for i:= 0 to Pred(comboUserName.Items.Count) do
  if (comboUserName.Items[i] <> '') and (f_UserList.IndexOf(comboUserName.Items[i]) = -1) then
   f_UserList.Add(comboUserName.Items[i]);
end;

function TPasswordDialog.Execute : Boolean;
Begin
 if UserName = '' then
  ActiveControl := comboUserName
 else
  ActiveControl := editPassword;
 Result:= ShowModal = mrOK;
 if Result  and (f_UserList <> nil) then
  EncodeUsers;
end;

function TPasswordDialog.pm_GetUserName: AnsiString;
begin
 Result := comboUserName.Text;
end;

function TPasswordDialog.pm_GetPassword: AnsiString;
begin
 Result := editPassword.Text;
end;

function TPasswordDialog.pm_GetSavePassword: Boolean;
begin
 Result := checkSavePassword.Checked;
end;

function TPasswordDialog.pm_GetUserList: TStrings;
begin
 Result := f_UserList;
end;

procedure TPasswordDialog.pm_SetUserName(const Value: AnsiString);
begin
 comboUserName.Text := Value;
end;

procedure TPasswordDialog.pm_SetPassword(const Value: AnsiString);
begin
 editPassword.Text := Value;
end;

procedure TPasswordDialog.pm_SetUserList(const Value: TStrings);
var
 l_UN: AnsiString;
begin
 if f_UserList <> Value then
 begin
  l_UN:= UserName;
  f_UserList := Value;
  if f_UserList <> nil then
   DecodeUsers;
  UserName:= l_UN;
 end;
end;

function PromptForPassword(var aLogin, aPassword: AnsiString; var aSavePassword: Boolean; const aTitle: AnsiString = ''; const
    aPrompt: AnsiString = ''; aUserList: TStrings = nil): Boolean;
begin
  with TPasswordDialog.Create(nil) do
  begin
   Caption:= IfThen(aTitle = '', Format('Контроль доступа %s', [Application.Title]), aTitle);
   labelPrompt.Caption:= IfThen(aPrompt = '', Format('Введите учетные данные для доступа в %s', [Application.Title]), aPrompt);
   UserList:= aUserList;
   UserName := aLogin;
   Password := aPassword;
   Result:=Execute;
   if Result then
   begin
    aLogin:= UserName;
    aPassword:= Password;
    aSavePassword := SavePassword;
   end;
   Free;
  end;
end;

procedure TPasswordDialog.comboUserNameChange(Sender: TObject);
begin
 if comboUserName.ItemIndex <> -1 then
  editPassword.Text:= f_UserList.Values[comboUserName.Text];
end;

end.

