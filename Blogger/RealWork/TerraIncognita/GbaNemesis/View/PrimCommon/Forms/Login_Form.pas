unit Login_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/PrimCommon/Forms/Login_Form.pas"
// �����: 21.08.2009 20:15
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 ������� ����������� ���������� �������::F1 Application Template::View::PrimCommon::PrimCommon::Login
//
// ���� � ������� ������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

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
  PrimLogin_Form,
  l3StringIDEx
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  Login_ut_Login_UserType,
  vtGroupBox,
  vtLabel,
  ExtCtrls
  {$If defined(Nemesis)}
  ,
  nscComboBoxWithReadOnly
  {$IfEnd} //Nemesis
  ,
  vtFocusLabel,
  eeCheckBox,
  ElPopBtn,
  vtPanel,
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmEntityForm {a}
  ;

const
    { LoginIDs }
   fm_LoginForm : TvcmFormDescriptor = (rFormID : (rName : 'LoginForm'; rID : 0); rFactory : nil);
    { ������������� ����� TLoginForm }

type
 LoginFormDef = interface(IUnknown)
  {* ������������� ����� Login }
   ['{96B4FBEB-A42A-4990-BCED-2F439F4E152A}']
 end;//LoginFormDef

  TLoginForm = {final form} class(TvcmEntityFormRef, LoginFormDef)
   {* ���� � ������� ������ }
  Entities : TvcmEntities;
  protected
   procedure MakeControls; override;
  end;//TLoginForm

implementation

{$R *.DFM}

uses
  SysUtils
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  l3MessageID
  ;

var
    { ������������ ������ ut_LoginLocalConstants }
   str_ut_LoginCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_LoginCaption'; rValue : '���� � ������� ������');
    { ��������� ����������������� ���� "���� � ������� ������" }

type
   Tkw_Form_Login = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� Login
----
*������ �������������*:
[code]
'aControl' �����::Login TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_Login

// start class Tkw_Form_Login

{$If not defined(NoScripts)}
function Tkw_Form_Login.GetString: AnsiString;
 {-}
begin
 Result := 'LoginForm';
end;//Tkw_Form_Login.GetString
{$IfEnd} //not NoScripts

type
   Tkw_Login_RegisteredGroupBox_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� RegisteredGroupBox ����� Login }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Login_RegisteredGroupBox_ControlInstance

// start class Tkw_Login_RegisteredGroupBox_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Login_RegisteredGroupBox_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TLoginForm).RegisteredGroupBox);
end;//Tkw_Login_RegisteredGroupBox_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_Login_lblLogin_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� lblLogin ����� Login }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Login_lblLogin_ControlInstance

// start class Tkw_Login_lblLogin_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Login_lblLogin_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TLoginForm).lblLogin);
end;//Tkw_Login_lblLogin_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_Login_lblPassword_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� lblPassword ����� Login }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Login_lblPassword_ControlInstance

// start class Tkw_Login_lblPassword_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Login_lblPassword_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TLoginForm).lblPassword);
end;//Tkw_Login_lblPassword_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_Login_EnterPaintBox_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� EnterPaintBox ����� Login }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Login_EnterPaintBox_ControlInstance

// start class Tkw_Login_EnterPaintBox_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Login_EnterPaintBox_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TLoginForm).EnterPaintBox);
end;//Tkw_Login_EnterPaintBox_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_Login_edUserName_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� edUserName ����� Login }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Login_edUserName_ControlInstance

// start class Tkw_Login_edUserName_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Login_edUserName_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TLoginForm).edUserName);
end;//Tkw_Login_edUserName_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_Login_edPassword_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� edPassword ����� Login }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Login_edPassword_ControlInstance

// start class Tkw_Login_edPassword_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Login_edPassword_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TLoginForm).edPassword);
end;//Tkw_Login_edPassword_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_Login_lblForgetPassword_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� lblForgetPassword ����� Login }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Login_lblForgetPassword_ControlInstance

// start class Tkw_Login_lblForgetPassword_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Login_lblForgetPassword_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TLoginForm).lblForgetPassword);
end;//Tkw_Login_lblForgetPassword_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_Login_cbAutoLogin_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� cbAutoLogin ����� Login }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Login_cbAutoLogin_ControlInstance

// start class Tkw_Login_cbAutoLogin_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Login_cbAutoLogin_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TLoginForm).cbAutoLogin);
end;//Tkw_Login_cbAutoLogin_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_Login_btnOk_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� btnOk ����� Login }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Login_btnOk_ControlInstance

// start class Tkw_Login_btnOk_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Login_btnOk_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TLoginForm).btnOk);
end;//Tkw_Login_btnOk_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_Login_NewUserGroupBox_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� NewUserGroupBox ����� Login }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Login_NewUserGroupBox_ControlInstance

// start class Tkw_Login_NewUserGroupBox_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Login_NewUserGroupBox_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TLoginForm).NewUserGroupBox);
end;//Tkw_Login_NewUserGroupBox_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_Login_NewUserLabel_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� NewUserLabel ����� Login }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Login_NewUserLabel_ControlInstance

// start class Tkw_Login_NewUserLabel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Login_NewUserLabel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TLoginForm).NewUserLabel);
end;//Tkw_Login_NewUserLabel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_Login_NewUserPaintBox_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� NewUserPaintBox ����� Login }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Login_NewUserPaintBox_ControlInstance

// start class Tkw_Login_NewUserPaintBox_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Login_NewUserPaintBox_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TLoginForm).NewUserPaintBox);
end;//Tkw_Login_NewUserPaintBox_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_Login_lblNewUser_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� lblNewUser ����� Login }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Login_lblNewUser_ControlInstance

// start class Tkw_Login_lblNewUser_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Login_lblNewUser_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TLoginForm).lblNewUser);
end;//Tkw_Login_lblNewUser_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_Login_HelpPanel_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� HelpPanel ����� Login }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Login_HelpPanel_ControlInstance

// start class Tkw_Login_HelpPanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Login_HelpPanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TLoginForm).HelpPanel);
end;//Tkw_Login_HelpPanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_Login_HelpPaintBox_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� HelpPaintBox ����� Login }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Login_HelpPaintBox_ControlInstance

// start class Tkw_Login_HelpPaintBox_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Login_HelpPaintBox_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TLoginForm).HelpPaintBox);
end;//Tkw_Login_HelpPaintBox_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_Login_HelpLabel_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� HelpLabel ����� Login }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Login_HelpLabel_ControlInstance

// start class Tkw_Login_HelpLabel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Login_HelpLabel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TLoginForm).HelpLabel);
end;//Tkw_Login_HelpLabel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

procedure TLoginForm.MakeControls;
begin
 inherited;
 with AddUsertype(ut_LoginName,
  str_ut_LoginCaption,
  str_ut_LoginCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_LoginName
end;

initialization
// ����������� ������� ����� Login
 fm_LoginForm.SetFactory(TLoginForm.Make);
// ����������� Tkw_Form_Login
 Tkw_Form_Login.Register('�����::Login', TLoginForm);
// ����������� Tkw_Login_RegisteredGroupBox_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.RegisteredGroupBox', Tkw_Login_RegisteredGroupBox_ControlInstance);
// ����������� Tkw_Login_lblLogin_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.lblLogin', Tkw_Login_lblLogin_ControlInstance);
// ����������� Tkw_Login_lblPassword_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.lblPassword', Tkw_Login_lblPassword_ControlInstance);
// ����������� Tkw_Login_EnterPaintBox_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.EnterPaintBox', Tkw_Login_EnterPaintBox_ControlInstance);
// ����������� Tkw_Login_edUserName_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.edUserName', Tkw_Login_edUserName_ControlInstance);
// ����������� Tkw_Login_edPassword_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.edPassword', Tkw_Login_edPassword_ControlInstance);
// ����������� Tkw_Login_lblForgetPassword_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.lblForgetPassword', Tkw_Login_lblForgetPassword_ControlInstance);
// ����������� Tkw_Login_cbAutoLogin_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.cbAutoLogin', Tkw_Login_cbAutoLogin_ControlInstance);
// ����������� Tkw_Login_btnOk_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.btnOk', Tkw_Login_btnOk_ControlInstance);
// ����������� Tkw_Login_NewUserGroupBox_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.NewUserGroupBox', Tkw_Login_NewUserGroupBox_ControlInstance);
// ����������� Tkw_Login_NewUserLabel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.NewUserLabel', Tkw_Login_NewUserLabel_ControlInstance);
// ����������� Tkw_Login_NewUserPaintBox_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.NewUserPaintBox', Tkw_Login_NewUserPaintBox_ControlInstance);
// ����������� Tkw_Login_lblNewUser_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.lblNewUser', Tkw_Login_lblNewUser_ControlInstance);
// ����������� Tkw_Login_HelpPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.HelpPanel', Tkw_Login_HelpPanel_ControlInstance);
// ����������� Tkw_Login_HelpPaintBox_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.HelpPaintBox', Tkw_Login_HelpPaintBox_ControlInstance);
// ����������� Tkw_Login_HelpLabel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.HelpLabel', Tkw_Login_HelpLabel_ControlInstance);
// ������������� str_ut_LoginCaption
 str_ut_LoginCaption.Init;

end.