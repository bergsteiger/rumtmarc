unit Login_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/PrimCommon/Forms/Login_Form.pas"
// Начат: 21.08.2009 20:15
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Базовые определения предметной области::F1 Application Template::View::PrimCommon::PrimCommon::Login
//
// Вход в систему ГАРАНТ
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

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
    { Идентификатор формы TLoginForm }

type
 LoginFormDef = interface(IUnknown)
  {* Идентификатор формы Login }
   ['{96B4FBEB-A42A-4990-BCED-2F439F4E152A}']
 end;//LoginFormDef

  TLoginForm = {final form} class(TvcmEntityFormRef, LoginFormDef)
   {* Вход в систему ГАРАНТ }
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
    { Локализуемые строки ut_LoginLocalConstants }
   str_ut_LoginCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_LoginCaption'; rValue : 'Вход в систему ГАРАНТ');
    { Заголовок пользовательского типа "Вход в систему ГАРАНТ" }

type
   Tkw_Form_Login = class(TtfwControlString)
    {* Слово словаря для идентификатора формы Login
----
*Пример использования*:
[code]
'aControl' форма::Login TryFocus ASSERT
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
    {* Слово словаря для доступа к экземпляру контрола RegisteredGroupBox формы Login }
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
    {* Слово словаря для доступа к экземпляру контрола lblLogin формы Login }
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
    {* Слово словаря для доступа к экземпляру контрола lblPassword формы Login }
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
    {* Слово словаря для доступа к экземпляру контрола EnterPaintBox формы Login }
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
    {* Слово словаря для доступа к экземпляру контрола edUserName формы Login }
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
    {* Слово словаря для доступа к экземпляру контрола edPassword формы Login }
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
    {* Слово словаря для доступа к экземпляру контрола lblForgetPassword формы Login }
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
    {* Слово словаря для доступа к экземпляру контрола cbAutoLogin формы Login }
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
    {* Слово словаря для доступа к экземпляру контрола btnOk формы Login }
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
    {* Слово словаря для доступа к экземпляру контрола NewUserGroupBox формы Login }
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
    {* Слово словаря для доступа к экземпляру контрола NewUserLabel формы Login }
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
    {* Слово словаря для доступа к экземпляру контрола NewUserPaintBox формы Login }
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
    {* Слово словаря для доступа к экземпляру контрола lblNewUser формы Login }
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
    {* Слово словаря для доступа к экземпляру контрола HelpPanel формы Login }
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
    {* Слово словаря для доступа к экземпляру контрола HelpPaintBox формы Login }
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
    {* Слово словаря для доступа к экземпляру контрола HelpLabel формы Login }
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
// Регистрация фабрики формы Login
 fm_LoginForm.SetFactory(TLoginForm.Make);
// Регистрация Tkw_Form_Login
 Tkw_Form_Login.Register('форма::Login', TLoginForm);
// Регистрация Tkw_Login_RegisteredGroupBox_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.RegisteredGroupBox', Tkw_Login_RegisteredGroupBox_ControlInstance);
// Регистрация Tkw_Login_lblLogin_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.lblLogin', Tkw_Login_lblLogin_ControlInstance);
// Регистрация Tkw_Login_lblPassword_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.lblPassword', Tkw_Login_lblPassword_ControlInstance);
// Регистрация Tkw_Login_EnterPaintBox_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.EnterPaintBox', Tkw_Login_EnterPaintBox_ControlInstance);
// Регистрация Tkw_Login_edUserName_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.edUserName', Tkw_Login_edUserName_ControlInstance);
// Регистрация Tkw_Login_edPassword_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.edPassword', Tkw_Login_edPassword_ControlInstance);
// Регистрация Tkw_Login_lblForgetPassword_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.lblForgetPassword', Tkw_Login_lblForgetPassword_ControlInstance);
// Регистрация Tkw_Login_cbAutoLogin_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.cbAutoLogin', Tkw_Login_cbAutoLogin_ControlInstance);
// Регистрация Tkw_Login_btnOk_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.btnOk', Tkw_Login_btnOk_ControlInstance);
// Регистрация Tkw_Login_NewUserGroupBox_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.NewUserGroupBox', Tkw_Login_NewUserGroupBox_ControlInstance);
// Регистрация Tkw_Login_NewUserLabel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.NewUserLabel', Tkw_Login_NewUserLabel_ControlInstance);
// Регистрация Tkw_Login_NewUserPaintBox_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.NewUserPaintBox', Tkw_Login_NewUserPaintBox_ControlInstance);
// Регистрация Tkw_Login_lblNewUser_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.lblNewUser', Tkw_Login_lblNewUser_ControlInstance);
// Регистрация Tkw_Login_HelpPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.HelpPanel', Tkw_Login_HelpPanel_ControlInstance);
// Регистрация Tkw_Login_HelpPaintBox_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.HelpPaintBox', Tkw_Login_HelpPaintBox_ControlInstance);
// Регистрация Tkw_Login_HelpLabel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLoginForm.HelpLabel', Tkw_Login_HelpLabel_ControlInstance);
// Инициализация str_ut_LoginCaption
 str_ut_LoginCaption.Init;

end.