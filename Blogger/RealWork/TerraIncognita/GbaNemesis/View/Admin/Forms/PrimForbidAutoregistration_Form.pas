unit PrimForbidAutoregistration_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Admin/Forms/PrimForbidAutoregistration_Form.pas"
// �����: 27.01.2009 12:28
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 �������������::Admin::View::Admin::PrimForbidAutoregistration
//
// ������������ ��� ������� ���������������
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
  Classes,
  AdminInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmEntityForm
  {$IfEnd} //not NoVCM
  ,
  vtGroupBox
  {$If defined(Nemesis)}
  ,
  nscComboBox
  {$IfEnd} //Nemesis
  ,
  vtLabel
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoVCM)}
  ,
  vcmControllers
  {$IfEnd} //not NoVCM
  ,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmBase {a}
  ;
{$IfEnd} //Admin

{$If defined(Admin)}
type
 TPrimForbidAutoregistrationForm = {form} class(TvcmEntityForm)
  {* ������������ ��� ������� ��������������� }
 private
 // private fields
   f_lblReference : TvtLabel;
    {* ���� ��� �������� lblReference}
   f_gbInfo : TvtGroupBox;
    {* ���� ��� �������� gbInfo}
   f_lblPhone : TvtLabel;
    {* ���� ��� �������� lblPhone}
   f_lblEmail : TvtLabel;
    {* ���� ��� �������� lblEmail}
   f_lblHint : TvtLabel;
    {* ���� ��� �������� lblHint}
   f_cbPhone : TnscEdit;
    {* ���� ��� �������� cbPhone}
   f_cbEmail : TnscEdit;
    {* ���� ��� �������� cbEmail}
 protected
  procedure SignalDataSourceChanged(const anOld : IvcmViewAreaController;
                                const aDsNew : IvcmViewAreaController); override;
  procedure MakeControls; override;
 private
 // private methods
   procedure CbEmailChange(Sender: TObject);
     {* TNotifyEvent is used for events that do not require parameters. }
 protected
 // overridden protected methods
   {$If not defined(NoVCM)}
   procedure NotifyDataSourceChanged(const anOld: IvcmViewAreaController;
    const aNew: IvcmViewAreaController); override;
     {* ��������� �������� ������. ��� ���������� � �������� }
   {$IfEnd} //not NoVCM
   {$If not defined(NoVCM)}
   procedure InitControls; override;
     {* ��������� ������������� ���������. ��� ���������� � �������� }
   {$IfEnd} //not NoVCM
 protected
 // protected fields
   dsForbidAutoregistration : IdsForbidAutoregistration;
 public
 // public methods
   class function Make(
    const aParams : IvcmMakeParams = nil;
    aZoneType     : TvcmZoneType = vcm_ztAny;
    aUserType     : TvcmEffectiveUserType = 0;
    aDataSource   : IvcmFormDataSource = nil): IvcmEntityForm; reintroduce;
 public
 // public properties
   property lblReference: TvtLabel
     read f_lblReference;
     {* ������� ����������, �� ������� ������������ ����� ��������� � ���� ��� ����������� � ������� ������. }
   property gbInfo: TvtGroupBox
     read f_gbInfo;
     {* ������������� ������� }
   property lblPhone: TvtLabel
     read f_lblPhone;
     {* ������� }
   property lblEmail: TvtLabel
     read f_lblEmail;
     {* E-mail }
   property lblHint: TvtLabel
     read f_lblHint;
     {* (���������� ������ �� ����� �����������) }
   property cbPhone: TnscEdit
     read f_cbPhone;
   property cbEmail: TnscEdit
     read f_cbEmail;
 end;//TPrimForbidAutoregistrationForm
{$IfEnd} //Admin

implementation

{$If defined(Admin)}
uses
  Graphics,
  nsVerifyValue,
  Controls,
  Forms
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  SysUtils {a},
  StdRes {a},
  l3Base {a}
  ;
{$IfEnd} //Admin

{$If defined(Admin)}

type
  Tkw_PrimForbidAutoregistration_Control_lblReference = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� lblReference
----
*������ �������������*:
[code]
�������::lblReference TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimForbidAutoregistration_Control_lblReference

// start class Tkw_PrimForbidAutoregistration_Control_lblReference

{$If not defined(NoScripts)}
function Tkw_PrimForbidAutoregistration_Control_lblReference.GetString: AnsiString;
 {-}
begin
 Result := 'lblReference';
end;//Tkw_PrimForbidAutoregistration_Control_lblReference.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimForbidAutoregistration_Control_lblReference_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� lblReference
----
*������ �������������*:
[code]
�������::lblReference:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimForbidAutoregistration_Control_lblReference_Push

// start class Tkw_PrimForbidAutoregistration_Control_lblReference_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimForbidAutoregistration_Control_lblReference_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('lblReference');
 inherited;
end;//Tkw_PrimForbidAutoregistration_Control_lblReference_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimForbidAutoregistration_Control_gbInfo = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� gbInfo
----
*������ �������������*:
[code]
�������::gbInfo TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimForbidAutoregistration_Control_gbInfo

// start class Tkw_PrimForbidAutoregistration_Control_gbInfo

{$If not defined(NoScripts)}
function Tkw_PrimForbidAutoregistration_Control_gbInfo.GetString: AnsiString;
 {-}
begin
 Result := 'gbInfo';
end;//Tkw_PrimForbidAutoregistration_Control_gbInfo.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimForbidAutoregistration_Control_gbInfo_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� gbInfo
----
*������ �������������*:
[code]
�������::gbInfo:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimForbidAutoregistration_Control_gbInfo_Push

// start class Tkw_PrimForbidAutoregistration_Control_gbInfo_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimForbidAutoregistration_Control_gbInfo_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('gbInfo');
 inherited;
end;//Tkw_PrimForbidAutoregistration_Control_gbInfo_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimForbidAutoregistration_Control_lblPhone = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� lblPhone
----
*������ �������������*:
[code]
�������::lblPhone TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimForbidAutoregistration_Control_lblPhone

// start class Tkw_PrimForbidAutoregistration_Control_lblPhone

{$If not defined(NoScripts)}
function Tkw_PrimForbidAutoregistration_Control_lblPhone.GetString: AnsiString;
 {-}
begin
 Result := 'lblPhone';
end;//Tkw_PrimForbidAutoregistration_Control_lblPhone.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimForbidAutoregistration_Control_lblPhone_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� lblPhone
----
*������ �������������*:
[code]
�������::lblPhone:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimForbidAutoregistration_Control_lblPhone_Push

// start class Tkw_PrimForbidAutoregistration_Control_lblPhone_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimForbidAutoregistration_Control_lblPhone_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('lblPhone');
 inherited;
end;//Tkw_PrimForbidAutoregistration_Control_lblPhone_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimForbidAutoregistration_Control_lblEmail = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� lblEmail
----
*������ �������������*:
[code]
�������::lblEmail TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimForbidAutoregistration_Control_lblEmail

// start class Tkw_PrimForbidAutoregistration_Control_lblEmail

{$If not defined(NoScripts)}
function Tkw_PrimForbidAutoregistration_Control_lblEmail.GetString: AnsiString;
 {-}
begin
 Result := 'lblEmail';
end;//Tkw_PrimForbidAutoregistration_Control_lblEmail.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimForbidAutoregistration_Control_lblEmail_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� lblEmail
----
*������ �������������*:
[code]
�������::lblEmail:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimForbidAutoregistration_Control_lblEmail_Push

// start class Tkw_PrimForbidAutoregistration_Control_lblEmail_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimForbidAutoregistration_Control_lblEmail_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('lblEmail');
 inherited;
end;//Tkw_PrimForbidAutoregistration_Control_lblEmail_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimForbidAutoregistration_Control_lblHint = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� lblHint
----
*������ �������������*:
[code]
�������::lblHint TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimForbidAutoregistration_Control_lblHint

// start class Tkw_PrimForbidAutoregistration_Control_lblHint

{$If not defined(NoScripts)}
function Tkw_PrimForbidAutoregistration_Control_lblHint.GetString: AnsiString;
 {-}
begin
 Result := 'lblHint';
end;//Tkw_PrimForbidAutoregistration_Control_lblHint.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimForbidAutoregistration_Control_lblHint_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� lblHint
----
*������ �������������*:
[code]
�������::lblHint:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimForbidAutoregistration_Control_lblHint_Push

// start class Tkw_PrimForbidAutoregistration_Control_lblHint_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimForbidAutoregistration_Control_lblHint_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('lblHint');
 inherited;
end;//Tkw_PrimForbidAutoregistration_Control_lblHint_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimForbidAutoregistration_Control_cbPhone = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� cbPhone
----
*������ �������������*:
[code]
�������::cbPhone TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimForbidAutoregistration_Control_cbPhone

// start class Tkw_PrimForbidAutoregistration_Control_cbPhone

{$If not defined(NoScripts)}
function Tkw_PrimForbidAutoregistration_Control_cbPhone.GetString: AnsiString;
 {-}
begin
 Result := 'cbPhone';
end;//Tkw_PrimForbidAutoregistration_Control_cbPhone.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimForbidAutoregistration_Control_cbPhone_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� cbPhone
----
*������ �������������*:
[code]
�������::cbPhone:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimForbidAutoregistration_Control_cbPhone_Push

// start class Tkw_PrimForbidAutoregistration_Control_cbPhone_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimForbidAutoregistration_Control_cbPhone_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('cbPhone');
 inherited;
end;//Tkw_PrimForbidAutoregistration_Control_cbPhone_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimForbidAutoregistration_Control_cbEmail = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� cbEmail
----
*������ �������������*:
[code]
�������::cbEmail TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimForbidAutoregistration_Control_cbEmail

// start class Tkw_PrimForbidAutoregistration_Control_cbEmail

{$If not defined(NoScripts)}
function Tkw_PrimForbidAutoregistration_Control_cbEmail.GetString: AnsiString;
 {-}
begin
 Result := 'cbEmail';
end;//Tkw_PrimForbidAutoregistration_Control_cbEmail.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimForbidAutoregistration_Control_cbEmail_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� cbEmail
----
*������ �������������*:
[code]
�������::cbEmail:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimForbidAutoregistration_Control_cbEmail_Push

// start class Tkw_PrimForbidAutoregistration_Control_cbEmail_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimForbidAutoregistration_Control_cbEmail_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('cbEmail');
 inherited;
end;//Tkw_PrimForbidAutoregistration_Control_cbEmail_Push.DoDoIt
{$IfEnd} //not NoScripts

procedure TPrimForbidAutoregistrationForm.CbEmailChange(Sender: TObject);
//#UC START# *51C3165101B7_497ED39B034F_var*
const
 c_FontColor: array [Boolean] of TColor = (clRed, clWindowText);
//#UC END# *51C3165101B7_497ED39B034F_var*
begin
//#UC START# *51C3165101B7_497ED39B034F_impl*
 cbEmail.Font.Color := c_FontColor[nsEmailVerify.Verify(cbEmail.Text)];
//#UC END# *51C3165101B7_497ED39B034F_impl*
end;//TPrimForbidAutoregistrationForm.CbEmailChange

class function TPrimForbidAutoregistrationForm.Make(
  const aParams : IvcmMakeParams = nil;
  aZoneType     : TvcmZoneType = vcm_ztAny;
  aUserType     : TvcmEffectiveUserType = 0;
  aDataSource   : IvcmFormDataSource = nil): IvcmEntityForm;
begin
 Result := inherited Make(aParams, aZoneType, aUserType, nil, aDataSource);
end;

{$If not defined(NoVCM)}
procedure TPrimForbidAutoregistrationForm.NotifyDataSourceChanged(const anOld: IvcmViewAreaController;
  const aNew: IvcmViewAreaController);
//#UC START# *497469C90140_497ED39B034F_var*
//#UC END# *497469C90140_497ED39B034F_var*
begin
//#UC START# *497469C90140_497ED39B034F_impl*
 if Assigned(dsForbidAutoregistration) then
 begin
  cbEmail.Text := dsForbidAutoregistration.Email;
  cbPhone.Text := dsForbidAutoregistration.Phone;
 end; 
//#UC END# *497469C90140_497ED39B034F_impl*
end;//TPrimForbidAutoregistrationForm.NotifyDataSourceChanged
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
procedure TPrimForbidAutoregistrationForm.InitControls;
//#UC START# *4A8E8F2E0195_497ED39B034F_var*
//#UC END# *4A8E8F2E0195_497ED39B034F_var*
begin
//#UC START# *4A8E8F2E0195_497ED39B034F_impl*
 BorderIcons := [biSystemMenu];
 BorderStyle := bsSingle;
 ClientHeight := 169;
 ClientWidth := 355;
 with lblReference do
 begin
  Font.Color := clBlue;
  WordWrap := True;
  Left := 15;
  Top := 7;
  Width := 329;
  Height := 48;
 end;
 with gbInfo do
 begin
  Left := 10;
  Top := 60;
  Width := 340;
  Height := 101;
 end;
 with lblPhone do
 begin
  Left := 16;
  Top := 24;
  Width := 51;
  Height := 16;
 end;
 with lblEmail do
 begin
  Left := 22;
  Top := 56;
  Width := 37;
  Height := 16;
 end;
 with lblHint do
 begin
  WordWrap := True;
  Left := 8;
  Top := 80;
  Width := 261;
  Height := 16;
  Font.Color := clBlue;
 end;
 with cbPhone do
 begin
  Left := 74;
  Top := 20;
  Width := 257;
  Height := 21;
  TabOrder := 0;
  ShowHint := True;
 end;
 with cbEmail do
 begin
  Left := 74;
  Top := 52;
  Width := 257;
  Height := 21;
  OnChange := cbEmailChange;
  TabOrder := 1;
  ParentShowHint := False;
  ShowHint := True;
 end;
//#UC END# *4A8E8F2E0195_497ED39B034F_impl*
end;//TPrimForbidAutoregistrationForm.InitControls
{$IfEnd} //not NoVCM

procedure TPrimForbidAutoregistrationForm.SignalDataSourceChanged(const anOld : IvcmViewAreaController;
 const aDsNew : IvcmViewAreaController);
begin
 inherited;
 if (aDsNew = nil) then
 begin
  dsForbidAutoregistration := nil;
 end//aDsNew = nil
 else
 begin
  Supports(aDsNew, IdsForbidAutoregistration, dsForbidAutoregistration);
 end;//aDsNew = nil
end;

procedure TPrimForbidAutoregistrationForm.MakeControls;
begin
 inherited;
 f_lblReference := TvtLabel.Create(Self);
 f_lblReference.Name := 'lblReference';
 f_lblReference.Parent := Self;
 f_lblReference.Caption := '������� ����������, �� ������� ������������ ����� ��������� � ���� ��� ����������� � ������� ������.';
 f_gbInfo := TvtGroupBox.Create(Self);
 f_gbInfo.Name := 'gbInfo';
 f_gbInfo.Parent := Self;
 f_gbInfo.Caption := '������������� �������';
 f_lblPhone := TvtLabel.Create(Self);
 f_lblPhone.Name := 'lblPhone';
 f_lblPhone.Parent := gbInfo;
 f_lblPhone.Caption := '�������';
 f_lblEmail := TvtLabel.Create(Self);
 f_lblEmail.Name := 'lblEmail';
 f_lblEmail.Parent := gbInfo;
 f_lblEmail.Caption := 'E-mail';
 f_lblHint := TvtLabel.Create(Self);
 f_lblHint.Name := 'lblHint';
 f_lblHint.Parent := gbInfo;
 f_lblHint.Caption := '(���������� ������ �� ����� �����������)';
 f_cbPhone := TnscEdit.Create(Self);
 f_cbPhone.Name := 'cbPhone';
 f_cbPhone.Parent := gbInfo;
 f_cbEmail := TnscEdit.Create(Self);
 f_cbEmail.Name := 'cbEmail';
 f_cbEmail.Parent := gbInfo;
end;

{$IfEnd} //Admin

initialization
{$If defined(Admin)}
// ����������� Tkw_PrimForbidAutoregistration_Control_lblReference
 Tkw_PrimForbidAutoregistration_Control_lblReference.Register('�������::lblReference', TvtLabel);
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_PrimForbidAutoregistration_Control_lblReference_Push
 Tkw_PrimForbidAutoregistration_Control_lblReference_Push.Register('�������::lblReference:push');
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_PrimForbidAutoregistration_Control_gbInfo
 Tkw_PrimForbidAutoregistration_Control_gbInfo.Register('�������::gbInfo', TvtGroupBox);
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_PrimForbidAutoregistration_Control_gbInfo_Push
 Tkw_PrimForbidAutoregistration_Control_gbInfo_Push.Register('�������::gbInfo:push');
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_PrimForbidAutoregistration_Control_lblPhone
 Tkw_PrimForbidAutoregistration_Control_lblPhone.Register('�������::lblPhone', TvtLabel);
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_PrimForbidAutoregistration_Control_lblPhone_Push
 Tkw_PrimForbidAutoregistration_Control_lblPhone_Push.Register('�������::lblPhone:push');
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_PrimForbidAutoregistration_Control_lblEmail
 Tkw_PrimForbidAutoregistration_Control_lblEmail.Register('�������::lblEmail', TvtLabel);
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_PrimForbidAutoregistration_Control_lblEmail_Push
 Tkw_PrimForbidAutoregistration_Control_lblEmail_Push.Register('�������::lblEmail:push');
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_PrimForbidAutoregistration_Control_lblHint
 Tkw_PrimForbidAutoregistration_Control_lblHint.Register('�������::lblHint', TvtLabel);
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_PrimForbidAutoregistration_Control_lblHint_Push
 Tkw_PrimForbidAutoregistration_Control_lblHint_Push.Register('�������::lblHint:push');
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_PrimForbidAutoregistration_Control_cbPhone
 Tkw_PrimForbidAutoregistration_Control_cbPhone.Register('�������::cbPhone', TnscEdit);
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_PrimForbidAutoregistration_Control_cbPhone_Push
 Tkw_PrimForbidAutoregistration_Control_cbPhone_Push.Register('�������::cbPhone:push');
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_PrimForbidAutoregistration_Control_cbEmail
 Tkw_PrimForbidAutoregistration_Control_cbEmail.Register('�������::cbEmail', TnscEdit);
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_PrimForbidAutoregistration_Control_cbEmail_Push
 Tkw_PrimForbidAutoregistration_Control_cbEmail_Push.Register('�������::cbEmail:push');
{$IfEnd} //Admin

end.