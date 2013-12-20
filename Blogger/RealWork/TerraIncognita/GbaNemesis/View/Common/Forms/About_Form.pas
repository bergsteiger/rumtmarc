unit About_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/About_Form.pas"
// �����: 24.08.2009 20:35
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Core::Common::View::Common::PrimF1Common::About
//
// � ���������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  ,
  ExtCtrls
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  vtGroupBox,
  vtLabel,
  l3StringIDEx
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  eeButton
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
  About_ut_About_UserType,
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
const
    { AboutIDs }
   fm_efAbout : TvcmFormDescriptor = (rFormID : (rName : 'efAbout'; rID : 0); rFactory : nil);
    { ������������� ����� TefAbout }

type
 AboutFormDef = interface(IUnknown)
  {* ������������� ����� About }
   ['{F678B4F8-60D5-4B4F-AE77-F61D6A29D2F9}']
 end;//AboutFormDef

  TefAbout = {final form} class(TvcmEntityForm, AboutFormDef)
   {* � ��������� }
  Entities : TvcmEntities;
  private
  // private fields
   f_pbLogo : TPaintBox;
    {* ���� ��� �������� pbLogo}
   f_ShellInfoLabel : TvtLabel;
    {* ���� ��� �������� ShellInfoLabel}
   f_AdapterInfoLabel : TvtLabel;
    {* ���� ��� �������� AdapterInfoLabel}
   f_UserCountLabel : TvtLabel;
    {* ���� ��� �������� UserCountLabel}
   f_OwnerLabel : TvtLabel;
    {* ���� ��� �������� OwnerLabel}
   f_ShellCaptionLabel : TvtLabel;
    {* ���� ��� �������� ShellCaptionLabel}
   f_OwnerCaptionLabel : TvtLabel;
    {* ���� ��� �������� OwnerCaptionLabel}
   f_UserInfoGroupBox : TvtGroupBox;
    {* ���� ��� �������� UserInfoGroupBox}
   f_EMailCaptionLabel : TvtLabel;
    {* ���� ��� �������� EMailCaptionLabel}
   f_EMailLabel : TvtLabel;
    {* ���� ��� �������� EMailLabel}
   f_LoginCaptionLabel : TvtLabel;
    {* ���� ��� �������� LoginCaptionLabel}
   f_UserCaptionLabel : TvtLabel;
    {* ���� ��� �������� UserCaptionLabel}
   f_UserNameLabel : TvtLabel;
    {* ���� ��� �������� UserNameLabel}
   f_LoginLabel : TvtLabel;
    {* ���� ��� �������� LoginLabel}
   f_CopyrightCaptionLabel : TvtLabel;
    {* ���� ��� �������� CopyrightCaptionLabel}
   f_OkButton : TeeButton;
    {* ���� ��� �������� OkButton}
   f_UserCountCaptionLabel : TvtLabel;
    {* ���� ��� �������� UserCountCaptionLabel}
   f_AdapterCaptionLabel : TvtLabel;
    {* ���� ��� �������� AdapterCaptionLabel}
  protected
   procedure MakeControls; override;
  private
  // private methods
   procedure UpdateInfoOnForm;
     {* ��������� ������ UpdateInfoOnForm }
   procedure GetCurrentUserInfo;
     {* ��������� ������ GetCurrentUserInfo }
   procedure GetCurrentOwnerInfo;
     {* ��������� ������ GetCurrentOwnerInfo }
   procedure PbLogoPaint(Sender: TObject);
     {* TNotifyEvent is used for events that do not require parameters. }
  protected
  // overridden protected methods
   procedure FinishDataUpdate; override;
   {$If not defined(NoVCM)}
   procedure InitControls; override;
     {* ��������� ������������� ���������. ��� ���������� � �������� }
   {$IfEnd} //not NoVCM
  public
  // public properties
   property pbLogo: TPaintBox
     read f_pbLogo;
   property ShellInfoLabel: TvtLabel
     read f_ShellInfoLabel;
   property AdapterInfoLabel: TvtLabel
     read f_AdapterInfoLabel;
   property UserCountLabel: TvtLabel
     read f_UserCountLabel;
   property OwnerLabel: TvtLabel
     read f_OwnerLabel;
   property ShellCaptionLabel: TvtLabel
     read f_ShellCaptionLabel;
     {* ������ }
   property OwnerCaptionLabel: TvtLabel
     read f_OwnerCaptionLabel;
     {* ������������������ ������������ ����� }
   property UserInfoGroupBox: TvtGroupBox
     read f_UserInfoGroupBox;
     {* ������� ������ }
   property EMailCaptionLabel: TvtLabel
     read f_EMailCaptionLabel;
     {* E-mail: }
   property EMailLabel: TvtLabel
     read f_EMailLabel;
   property LoginCaptionLabel: TvtLabel
     read f_LoginCaptionLabel;
     {* ��������������� ���: }
   property UserCaptionLabel: TvtLabel
     read f_UserCaptionLabel;
     {* ��� ������������: }
   property UserNameLabel: TvtLabel
     read f_UserNameLabel;
   property LoginLabel: TvtLabel
     read f_LoginLabel;
   property CopyrightCaptionLabel: TvtLabel
     read f_CopyrightCaptionLabel;
     {* (C) ��� ��� "������-������-�����������", 1990-2013 }
   property OkButton: TeeButton
     read f_OkButton;
   property UserCountCaptionLabel: TvtLabel
     read f_UserCountCaptionLabel;
   property AdapterCaptionLabel: TvtLabel
     read f_AdapterCaptionLabel;
  end;//TefAbout

  TAboutForm = TefAbout;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  StdRes,
  StartUnit
  {$If not defined(NoVCM)}
  ,
  vcmBase
  {$IfEnd} //not NoVCM
  ,
  l3String,
  vtVerInf,
  DataAdapter,
  ComplectUnit,
  IOUnit,
  nsTypes,
  nsUtils,
  l3MinMax,
  vtDialogsRes,
  Controls,
  Forms,
  SecurityUnit
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  l3MessageID
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
    { ������������ ������ ut_AboutLocalConstants }
   str_ut_AboutCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_AboutCaption'; rValue : '� ���������');
    { ��������� ����������������� ���� "� ���������" }

type
   Tkw_About_Control_pbLogo = class(TtfwControlString)
    {* ����� ������� ��� �������������� �������� pbLogo
----
*������ �������������*:
[code]
�������::pbLogo TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_pbLogo

// start class Tkw_About_Control_pbLogo

{$If not defined(NoScripts)}
function Tkw_About_Control_pbLogo.GetString: AnsiString;
 {-}
begin
 Result := 'pbLogo';
end;//Tkw_About_Control_pbLogo.GetString
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_pbLogo_Push = class(TkwBynameControlPush)
    {* ����� ������� ��� �������� pbLogo
----
*������ �������������*:
[code]
�������::pbLogo:push pop:control:SetFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_pbLogo_Push

// start class Tkw_About_Control_pbLogo_Push

{$If not defined(NoScripts)}
procedure Tkw_About_Control_pbLogo_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('pbLogo');
 inherited;
end;//Tkw_About_Control_pbLogo_Push.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_ShellInfoLabel = class(TtfwControlString)
    {* ����� ������� ��� �������������� �������� ShellInfoLabel
----
*������ �������������*:
[code]
�������::ShellInfoLabel TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_ShellInfoLabel

// start class Tkw_About_Control_ShellInfoLabel

{$If not defined(NoScripts)}
function Tkw_About_Control_ShellInfoLabel.GetString: AnsiString;
 {-}
begin
 Result := 'ShellInfoLabel';
end;//Tkw_About_Control_ShellInfoLabel.GetString
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_ShellInfoLabel_Push = class(TkwBynameControlPush)
    {* ����� ������� ��� �������� ShellInfoLabel
----
*������ �������������*:
[code]
�������::ShellInfoLabel:push pop:control:SetFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_ShellInfoLabel_Push

// start class Tkw_About_Control_ShellInfoLabel_Push

{$If not defined(NoScripts)}
procedure Tkw_About_Control_ShellInfoLabel_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('ShellInfoLabel');
 inherited;
end;//Tkw_About_Control_ShellInfoLabel_Push.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_AdapterInfoLabel = class(TtfwControlString)
    {* ����� ������� ��� �������������� �������� AdapterInfoLabel
----
*������ �������������*:
[code]
�������::AdapterInfoLabel TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_AdapterInfoLabel

// start class Tkw_About_Control_AdapterInfoLabel

{$If not defined(NoScripts)}
function Tkw_About_Control_AdapterInfoLabel.GetString: AnsiString;
 {-}
begin
 Result := 'AdapterInfoLabel';
end;//Tkw_About_Control_AdapterInfoLabel.GetString
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_AdapterInfoLabel_Push = class(TkwBynameControlPush)
    {* ����� ������� ��� �������� AdapterInfoLabel
----
*������ �������������*:
[code]
�������::AdapterInfoLabel:push pop:control:SetFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_AdapterInfoLabel_Push

// start class Tkw_About_Control_AdapterInfoLabel_Push

{$If not defined(NoScripts)}
procedure Tkw_About_Control_AdapterInfoLabel_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('AdapterInfoLabel');
 inherited;
end;//Tkw_About_Control_AdapterInfoLabel_Push.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_UserCountLabel = class(TtfwControlString)
    {* ����� ������� ��� �������������� �������� UserCountLabel
----
*������ �������������*:
[code]
�������::UserCountLabel TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_UserCountLabel

// start class Tkw_About_Control_UserCountLabel

{$If not defined(NoScripts)}
function Tkw_About_Control_UserCountLabel.GetString: AnsiString;
 {-}
begin
 Result := 'UserCountLabel';
end;//Tkw_About_Control_UserCountLabel.GetString
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_UserCountLabel_Push = class(TkwBynameControlPush)
    {* ����� ������� ��� �������� UserCountLabel
----
*������ �������������*:
[code]
�������::UserCountLabel:push pop:control:SetFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_UserCountLabel_Push

// start class Tkw_About_Control_UserCountLabel_Push

{$If not defined(NoScripts)}
procedure Tkw_About_Control_UserCountLabel_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('UserCountLabel');
 inherited;
end;//Tkw_About_Control_UserCountLabel_Push.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_OwnerLabel = class(TtfwControlString)
    {* ����� ������� ��� �������������� �������� OwnerLabel
----
*������ �������������*:
[code]
�������::OwnerLabel TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_OwnerLabel

// start class Tkw_About_Control_OwnerLabel

{$If not defined(NoScripts)}
function Tkw_About_Control_OwnerLabel.GetString: AnsiString;
 {-}
begin
 Result := 'OwnerLabel';
end;//Tkw_About_Control_OwnerLabel.GetString
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_OwnerLabel_Push = class(TkwBynameControlPush)
    {* ����� ������� ��� �������� OwnerLabel
----
*������ �������������*:
[code]
�������::OwnerLabel:push pop:control:SetFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_OwnerLabel_Push

// start class Tkw_About_Control_OwnerLabel_Push

{$If not defined(NoScripts)}
procedure Tkw_About_Control_OwnerLabel_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('OwnerLabel');
 inherited;
end;//Tkw_About_Control_OwnerLabel_Push.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_ShellCaptionLabel = class(TtfwControlString)
    {* ����� ������� ��� �������������� �������� ShellCaptionLabel
----
*������ �������������*:
[code]
�������::ShellCaptionLabel TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_ShellCaptionLabel

// start class Tkw_About_Control_ShellCaptionLabel

{$If not defined(NoScripts)}
function Tkw_About_Control_ShellCaptionLabel.GetString: AnsiString;
 {-}
begin
 Result := 'ShellCaptionLabel';
end;//Tkw_About_Control_ShellCaptionLabel.GetString
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_ShellCaptionLabel_Push = class(TkwBynameControlPush)
    {* ����� ������� ��� �������� ShellCaptionLabel
----
*������ �������������*:
[code]
�������::ShellCaptionLabel:push pop:control:SetFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_ShellCaptionLabel_Push

// start class Tkw_About_Control_ShellCaptionLabel_Push

{$If not defined(NoScripts)}
procedure Tkw_About_Control_ShellCaptionLabel_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('ShellCaptionLabel');
 inherited;
end;//Tkw_About_Control_ShellCaptionLabel_Push.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_OwnerCaptionLabel = class(TtfwControlString)
    {* ����� ������� ��� �������������� �������� OwnerCaptionLabel
----
*������ �������������*:
[code]
�������::OwnerCaptionLabel TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_OwnerCaptionLabel

// start class Tkw_About_Control_OwnerCaptionLabel

{$If not defined(NoScripts)}
function Tkw_About_Control_OwnerCaptionLabel.GetString: AnsiString;
 {-}
begin
 Result := 'OwnerCaptionLabel';
end;//Tkw_About_Control_OwnerCaptionLabel.GetString
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_OwnerCaptionLabel_Push = class(TkwBynameControlPush)
    {* ����� ������� ��� �������� OwnerCaptionLabel
----
*������ �������������*:
[code]
�������::OwnerCaptionLabel:push pop:control:SetFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_OwnerCaptionLabel_Push

// start class Tkw_About_Control_OwnerCaptionLabel_Push

{$If not defined(NoScripts)}
procedure Tkw_About_Control_OwnerCaptionLabel_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('OwnerCaptionLabel');
 inherited;
end;//Tkw_About_Control_OwnerCaptionLabel_Push.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_UserInfoGroupBox = class(TtfwControlString)
    {* ����� ������� ��� �������������� �������� UserInfoGroupBox
----
*������ �������������*:
[code]
�������::UserInfoGroupBox TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_UserInfoGroupBox

// start class Tkw_About_Control_UserInfoGroupBox

{$If not defined(NoScripts)}
function Tkw_About_Control_UserInfoGroupBox.GetString: AnsiString;
 {-}
begin
 Result := 'UserInfoGroupBox';
end;//Tkw_About_Control_UserInfoGroupBox.GetString
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_UserInfoGroupBox_Push = class(TkwBynameControlPush)
    {* ����� ������� ��� �������� UserInfoGroupBox
----
*������ �������������*:
[code]
�������::UserInfoGroupBox:push pop:control:SetFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_UserInfoGroupBox_Push

// start class Tkw_About_Control_UserInfoGroupBox_Push

{$If not defined(NoScripts)}
procedure Tkw_About_Control_UserInfoGroupBox_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('UserInfoGroupBox');
 inherited;
end;//Tkw_About_Control_UserInfoGroupBox_Push.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_EMailCaptionLabel = class(TtfwControlString)
    {* ����� ������� ��� �������������� �������� EMailCaptionLabel
----
*������ �������������*:
[code]
�������::EMailCaptionLabel TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_EMailCaptionLabel

// start class Tkw_About_Control_EMailCaptionLabel

{$If not defined(NoScripts)}
function Tkw_About_Control_EMailCaptionLabel.GetString: AnsiString;
 {-}
begin
 Result := 'EMailCaptionLabel';
end;//Tkw_About_Control_EMailCaptionLabel.GetString
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_EMailCaptionLabel_Push = class(TkwBynameControlPush)
    {* ����� ������� ��� �������� EMailCaptionLabel
----
*������ �������������*:
[code]
�������::EMailCaptionLabel:push pop:control:SetFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_EMailCaptionLabel_Push

// start class Tkw_About_Control_EMailCaptionLabel_Push

{$If not defined(NoScripts)}
procedure Tkw_About_Control_EMailCaptionLabel_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('EMailCaptionLabel');
 inherited;
end;//Tkw_About_Control_EMailCaptionLabel_Push.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_EMailLabel = class(TtfwControlString)
    {* ����� ������� ��� �������������� �������� EMailLabel
----
*������ �������������*:
[code]
�������::EMailLabel TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_EMailLabel

// start class Tkw_About_Control_EMailLabel

{$If not defined(NoScripts)}
function Tkw_About_Control_EMailLabel.GetString: AnsiString;
 {-}
begin
 Result := 'EMailLabel';
end;//Tkw_About_Control_EMailLabel.GetString
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_EMailLabel_Push = class(TkwBynameControlPush)
    {* ����� ������� ��� �������� EMailLabel
----
*������ �������������*:
[code]
�������::EMailLabel:push pop:control:SetFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_EMailLabel_Push

// start class Tkw_About_Control_EMailLabel_Push

{$If not defined(NoScripts)}
procedure Tkw_About_Control_EMailLabel_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('EMailLabel');
 inherited;
end;//Tkw_About_Control_EMailLabel_Push.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_LoginCaptionLabel = class(TtfwControlString)
    {* ����� ������� ��� �������������� �������� LoginCaptionLabel
----
*������ �������������*:
[code]
�������::LoginCaptionLabel TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_LoginCaptionLabel

// start class Tkw_About_Control_LoginCaptionLabel

{$If not defined(NoScripts)}
function Tkw_About_Control_LoginCaptionLabel.GetString: AnsiString;
 {-}
begin
 Result := 'LoginCaptionLabel';
end;//Tkw_About_Control_LoginCaptionLabel.GetString
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_LoginCaptionLabel_Push = class(TkwBynameControlPush)
    {* ����� ������� ��� �������� LoginCaptionLabel
----
*������ �������������*:
[code]
�������::LoginCaptionLabel:push pop:control:SetFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_LoginCaptionLabel_Push

// start class Tkw_About_Control_LoginCaptionLabel_Push

{$If not defined(NoScripts)}
procedure Tkw_About_Control_LoginCaptionLabel_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('LoginCaptionLabel');
 inherited;
end;//Tkw_About_Control_LoginCaptionLabel_Push.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_UserCaptionLabel = class(TtfwControlString)
    {* ����� ������� ��� �������������� �������� UserCaptionLabel
----
*������ �������������*:
[code]
�������::UserCaptionLabel TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_UserCaptionLabel

// start class Tkw_About_Control_UserCaptionLabel

{$If not defined(NoScripts)}
function Tkw_About_Control_UserCaptionLabel.GetString: AnsiString;
 {-}
begin
 Result := 'UserCaptionLabel';
end;//Tkw_About_Control_UserCaptionLabel.GetString
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_UserCaptionLabel_Push = class(TkwBynameControlPush)
    {* ����� ������� ��� �������� UserCaptionLabel
----
*������ �������������*:
[code]
�������::UserCaptionLabel:push pop:control:SetFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_UserCaptionLabel_Push

// start class Tkw_About_Control_UserCaptionLabel_Push

{$If not defined(NoScripts)}
procedure Tkw_About_Control_UserCaptionLabel_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('UserCaptionLabel');
 inherited;
end;//Tkw_About_Control_UserCaptionLabel_Push.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_UserNameLabel = class(TtfwControlString)
    {* ����� ������� ��� �������������� �������� UserNameLabel
----
*������ �������������*:
[code]
�������::UserNameLabel TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_UserNameLabel

// start class Tkw_About_Control_UserNameLabel

{$If not defined(NoScripts)}
function Tkw_About_Control_UserNameLabel.GetString: AnsiString;
 {-}
begin
 Result := 'UserNameLabel';
end;//Tkw_About_Control_UserNameLabel.GetString
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_UserNameLabel_Push = class(TkwBynameControlPush)
    {* ����� ������� ��� �������� UserNameLabel
----
*������ �������������*:
[code]
�������::UserNameLabel:push pop:control:SetFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_UserNameLabel_Push

// start class Tkw_About_Control_UserNameLabel_Push

{$If not defined(NoScripts)}
procedure Tkw_About_Control_UserNameLabel_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('UserNameLabel');
 inherited;
end;//Tkw_About_Control_UserNameLabel_Push.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_LoginLabel = class(TtfwControlString)
    {* ����� ������� ��� �������������� �������� LoginLabel
----
*������ �������������*:
[code]
�������::LoginLabel TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_LoginLabel

// start class Tkw_About_Control_LoginLabel

{$If not defined(NoScripts)}
function Tkw_About_Control_LoginLabel.GetString: AnsiString;
 {-}
begin
 Result := 'LoginLabel';
end;//Tkw_About_Control_LoginLabel.GetString
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_LoginLabel_Push = class(TkwBynameControlPush)
    {* ����� ������� ��� �������� LoginLabel
----
*������ �������������*:
[code]
�������::LoginLabel:push pop:control:SetFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_LoginLabel_Push

// start class Tkw_About_Control_LoginLabel_Push

{$If not defined(NoScripts)}
procedure Tkw_About_Control_LoginLabel_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('LoginLabel');
 inherited;
end;//Tkw_About_Control_LoginLabel_Push.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_CopyrightCaptionLabel = class(TtfwControlString)
    {* ����� ������� ��� �������������� �������� CopyrightCaptionLabel
----
*������ �������������*:
[code]
�������::CopyrightCaptionLabel TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_CopyrightCaptionLabel

// start class Tkw_About_Control_CopyrightCaptionLabel

{$If not defined(NoScripts)}
function Tkw_About_Control_CopyrightCaptionLabel.GetString: AnsiString;
 {-}
begin
 Result := 'CopyrightCaptionLabel';
end;//Tkw_About_Control_CopyrightCaptionLabel.GetString
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_CopyrightCaptionLabel_Push = class(TkwBynameControlPush)
    {* ����� ������� ��� �������� CopyrightCaptionLabel
----
*������ �������������*:
[code]
�������::CopyrightCaptionLabel:push pop:control:SetFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_CopyrightCaptionLabel_Push

// start class Tkw_About_Control_CopyrightCaptionLabel_Push

{$If not defined(NoScripts)}
procedure Tkw_About_Control_CopyrightCaptionLabel_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('CopyrightCaptionLabel');
 inherited;
end;//Tkw_About_Control_CopyrightCaptionLabel_Push.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_OkButton = class(TtfwControlString)
    {* ����� ������� ��� �������������� �������� OkButton
----
*������ �������������*:
[code]
�������::OkButton TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_OkButton

// start class Tkw_About_Control_OkButton

{$If not defined(NoScripts)}
function Tkw_About_Control_OkButton.GetString: AnsiString;
 {-}
begin
 Result := 'OkButton';
end;//Tkw_About_Control_OkButton.GetString
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_OkButton_Push = class(TkwBynameControlPush)
    {* ����� ������� ��� �������� OkButton
----
*������ �������������*:
[code]
�������::OkButton:push pop:control:SetFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_OkButton_Push

// start class Tkw_About_Control_OkButton_Push

{$If not defined(NoScripts)}
procedure Tkw_About_Control_OkButton_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('OkButton');
 inherited;
end;//Tkw_About_Control_OkButton_Push.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_UserCountCaptionLabel = class(TtfwControlString)
    {* ����� ������� ��� �������������� �������� UserCountCaptionLabel
----
*������ �������������*:
[code]
�������::UserCountCaptionLabel TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_UserCountCaptionLabel

// start class Tkw_About_Control_UserCountCaptionLabel

{$If not defined(NoScripts)}
function Tkw_About_Control_UserCountCaptionLabel.GetString: AnsiString;
 {-}
begin
 Result := 'UserCountCaptionLabel';
end;//Tkw_About_Control_UserCountCaptionLabel.GetString
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_UserCountCaptionLabel_Push = class(TkwBynameControlPush)
    {* ����� ������� ��� �������� UserCountCaptionLabel
----
*������ �������������*:
[code]
�������::UserCountCaptionLabel:push pop:control:SetFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_UserCountCaptionLabel_Push

// start class Tkw_About_Control_UserCountCaptionLabel_Push

{$If not defined(NoScripts)}
procedure Tkw_About_Control_UserCountCaptionLabel_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('UserCountCaptionLabel');
 inherited;
end;//Tkw_About_Control_UserCountCaptionLabel_Push.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_AdapterCaptionLabel = class(TtfwControlString)
    {* ����� ������� ��� �������������� �������� AdapterCaptionLabel
----
*������ �������������*:
[code]
�������::AdapterCaptionLabel TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_AdapterCaptionLabel

// start class Tkw_About_Control_AdapterCaptionLabel

{$If not defined(NoScripts)}
function Tkw_About_Control_AdapterCaptionLabel.GetString: AnsiString;
 {-}
begin
 Result := 'AdapterCaptionLabel';
end;//Tkw_About_Control_AdapterCaptionLabel.GetString
{$IfEnd} //not NoScripts

type
   Tkw_About_Control_AdapterCaptionLabel_Push = class(TkwBynameControlPush)
    {* ����� ������� ��� �������� AdapterCaptionLabel
----
*������ �������������*:
[code]
�������::AdapterCaptionLabel:push pop:control:SetFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_Control_AdapterCaptionLabel_Push

// start class Tkw_About_Control_AdapterCaptionLabel_Push

{$If not defined(NoScripts)}
procedure Tkw_About_Control_AdapterCaptionLabel_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('AdapterCaptionLabel');
 inherited;
end;//Tkw_About_Control_AdapterCaptionLabel_Push.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_Form_About = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� About
----
*������ �������������*:
[code]
'aControl' �����::About TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_About

// start class Tkw_Form_About

{$If not defined(NoScripts)}
function Tkw_Form_About.GetString: AnsiString;
 {-}
begin
 Result := 'efAbout';
end;//Tkw_Form_About.GetString
{$IfEnd} //not NoScripts

type
   Tkw_About_pbLogo_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� pbLogo ����� About }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_pbLogo_ControlInstance

// start class Tkw_About_pbLogo_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_About_pbLogo_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefAbout).pbLogo);
end;//Tkw_About_pbLogo_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_ShellInfoLabel_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� ShellInfoLabel ����� About }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_ShellInfoLabel_ControlInstance

// start class Tkw_About_ShellInfoLabel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_About_ShellInfoLabel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefAbout).ShellInfoLabel);
end;//Tkw_About_ShellInfoLabel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_AdapterInfoLabel_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� AdapterInfoLabel ����� About }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_AdapterInfoLabel_ControlInstance

// start class Tkw_About_AdapterInfoLabel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_About_AdapterInfoLabel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefAbout).AdapterInfoLabel);
end;//Tkw_About_AdapterInfoLabel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_UserCountLabel_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� UserCountLabel ����� About }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_UserCountLabel_ControlInstance

// start class Tkw_About_UserCountLabel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_About_UserCountLabel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefAbout).UserCountLabel);
end;//Tkw_About_UserCountLabel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_OwnerLabel_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� OwnerLabel ����� About }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_OwnerLabel_ControlInstance

// start class Tkw_About_OwnerLabel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_About_OwnerLabel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefAbout).OwnerLabel);
end;//Tkw_About_OwnerLabel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_ShellCaptionLabel_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� ShellCaptionLabel ����� About }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_ShellCaptionLabel_ControlInstance

// start class Tkw_About_ShellCaptionLabel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_About_ShellCaptionLabel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefAbout).ShellCaptionLabel);
end;//Tkw_About_ShellCaptionLabel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_OwnerCaptionLabel_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� OwnerCaptionLabel ����� About }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_OwnerCaptionLabel_ControlInstance

// start class Tkw_About_OwnerCaptionLabel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_About_OwnerCaptionLabel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefAbout).OwnerCaptionLabel);
end;//Tkw_About_OwnerCaptionLabel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_UserInfoGroupBox_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� UserInfoGroupBox ����� About }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_UserInfoGroupBox_ControlInstance

// start class Tkw_About_UserInfoGroupBox_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_About_UserInfoGroupBox_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefAbout).UserInfoGroupBox);
end;//Tkw_About_UserInfoGroupBox_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_EMailCaptionLabel_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� EMailCaptionLabel ����� About }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_EMailCaptionLabel_ControlInstance

// start class Tkw_About_EMailCaptionLabel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_About_EMailCaptionLabel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefAbout).EMailCaptionLabel);
end;//Tkw_About_EMailCaptionLabel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_EMailLabel_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� EMailLabel ����� About }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_EMailLabel_ControlInstance

// start class Tkw_About_EMailLabel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_About_EMailLabel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefAbout).EMailLabel);
end;//Tkw_About_EMailLabel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_LoginCaptionLabel_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� LoginCaptionLabel ����� About }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_LoginCaptionLabel_ControlInstance

// start class Tkw_About_LoginCaptionLabel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_About_LoginCaptionLabel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefAbout).LoginCaptionLabel);
end;//Tkw_About_LoginCaptionLabel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_UserCaptionLabel_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� UserCaptionLabel ����� About }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_UserCaptionLabel_ControlInstance

// start class Tkw_About_UserCaptionLabel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_About_UserCaptionLabel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefAbout).UserCaptionLabel);
end;//Tkw_About_UserCaptionLabel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_UserNameLabel_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� UserNameLabel ����� About }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_UserNameLabel_ControlInstance

// start class Tkw_About_UserNameLabel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_About_UserNameLabel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefAbout).UserNameLabel);
end;//Tkw_About_UserNameLabel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_LoginLabel_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� LoginLabel ����� About }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_LoginLabel_ControlInstance

// start class Tkw_About_LoginLabel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_About_LoginLabel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefAbout).LoginLabel);
end;//Tkw_About_LoginLabel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_CopyrightCaptionLabel_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� CopyrightCaptionLabel ����� About }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_CopyrightCaptionLabel_ControlInstance

// start class Tkw_About_CopyrightCaptionLabel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_About_CopyrightCaptionLabel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefAbout).CopyrightCaptionLabel);
end;//Tkw_About_CopyrightCaptionLabel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_OkButton_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� OkButton ����� About }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_OkButton_ControlInstance

// start class Tkw_About_OkButton_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_About_OkButton_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefAbout).OkButton);
end;//Tkw_About_OkButton_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_UserCountCaptionLabel_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� UserCountCaptionLabel ����� About }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_UserCountCaptionLabel_ControlInstance

// start class Tkw_About_UserCountCaptionLabel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_About_UserCountCaptionLabel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefAbout).UserCountCaptionLabel);
end;//Tkw_About_UserCountCaptionLabel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_About_AdapterCaptionLabel_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� AdapterCaptionLabel ����� About }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_About_AdapterCaptionLabel_ControlInstance

// start class Tkw_About_AdapterCaptionLabel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_About_AdapterCaptionLabel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefAbout).AdapterCaptionLabel);
end;//Tkw_About_AdapterCaptionLabel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

procedure TefAbout.UpdateInfoOnForm;
//#UC START# *5006D2A60192_4ABB6F3F001B_var*
const
 cInternalVersionKindTitle: array[Boolean, TProductType] of PvcmStringID = (
   (
  @str_cvkInternalNonDebugUnknown, // PT_UNKNOWN
  @str_cvkInternalNonDebugDVD, // PT_DVD
  @str_cvkInternalNonDebugMobile, // PT_MOBILE
  @str_cvkInternalNonDebugFileServer, // PT_FILESERVER
  @str_cvkInternalNonDebugDesktop, // PT_DESKTOP
  @str_cvkInternalNonDebugClientServer, // PT_CLIENTSERVER
                @str_cvkInternalNonDebugSupermobile // TODO: PT_SUPERMOBILE
   ),
  // DefDataAdapter.AssemblyInfo.GetIsDebug = true
   (
  @str_cvkInternalDebugUnknown, // PT_UNKNOWN
  @str_cvkInternalDebugDVD, // PT_DVD
  @str_cvkInternalDebugMobile, // PT_Mobile
  @str_cvkInternalDebugFileServer, // PT_FILESERVER
  @str_cvkInternalDebugDesktop, // PT_DESKTOP
  @str_cvkInternalDebugClientServer, // PT_CLIENTSERVER
                @str_cvkInternalDebugSuperMobile // PT_SUPERMOBILE
   )
 );

 cVersionKindTitle: array [TBaseType, boolean, TProductType] of PvcmStringID = (
  // DefDataAdapter.AssemblyInfo.GetBaseType = BT_UNKNOWN
  (
  // DefDataAdapter.AssemblyInfo.GetIsDebug = false
   (
  @str_Empty, // PT_UNKNOWN
  @str_Empty, // PT_DVD
  @str_Empty, // PT_MOBILE
  @str_Empty, // PT_FILESERVER
  @str_Empty, // PT_DESKTOP
  @str_Empty, // PT_CLIENTSERVER
  @str_Empty // PT_CLIENTSERVER
   ),
  // DefDataAdapter.AssemblyInfo.GetIsDebug = true
   (
  @str_Empty, // PT_UNKNOWN
  @str_Empty, // PT_DVD
  @str_Empty, // PT_Mobile
  @str_Empty, // PT_FILESERVER
  @str_Empty, // PT_DESKTOP
  @str_Empty, // PT_CLIENTSERVER
  @str_Empty // PT_CLIENTSERVER
   )
  ),
  // DefDataAdapter.AssemblyInfo.GetBaseType = BT_TRIAL
  (
  // DefDataAdapter.AssemblyInfo.GetIsDebug = false
   (
  @str_cvkTrialNonDebugUnknown, // PT_UNKNOWN
  @str_cvkTrialNonDebugDVD, // PT_DVD
  @str_cvkTrialNonDebugMobile, // PT_MOBILE
  @str_cvkTrialNonDebugFileServer, // PT_FILESERVER
  @str_cvkTrialNonDebugDesktop, // PT_DESKTOP
  @str_cvkTrialNonDebugClientServer, // PT_CLIENTSERVER
  @str_cvkTrialNonDebugSuperMobile // PT_SUPERMOBILE
   ),
  // DefDataAdapter.AssemblyInfo.GetIsDebug = true
   (
  @str_cvkTrialDebugUnknown, // PT_UNKNOWN
  @str_cvkTrialDebugDVD, // PT_DVD
  @str_cvkTrialDebugMobile, // PT_MOBILE
  @str_cvkTrialDebugFileServer, // PT_FILESERVER
  @str_cvkTrialDebugDesktop, // PT_DESKTOP
  @str_cvkTrialDebugClientServer, // PT_CLIENTSERVER
  @str_cvkTrialDebugSuperMobile // PT_SUPERMOBILE
   )
  ),
  // DefDataAdapter.AssemblyInfo.GetBaseType = BT_COMMERCIAL
  (
  // DefDataAdapter.AssemblyInfo.GetIsDebug = false
   (
  @str_cvkCommerceNonDebugUnknown, // PT_UNKNOWN
  @str_cvkCommerceNonDebugDVD, // PT_DVD
  @str_cvkCommerceNonDebugMobile, // PT_MOBILE
  @str_cvkCommerceNonDebugFileServer, // PT_FILESERVER
  @str_cvkCommerceNonDebugDesktop, // PT_DESKTOP
  @str_cvkCommerceNonDebugClientServer, // PT_CLIENTSERVER
  @str_cvkCommerceNonDebugSuperMobile // PT_SUPERMOBILE
   ),
  // DefDataAdapter.AssemblyInfo.GetIsDebug = true
   (
  @str_cvkCommerceDebugUnknown, // PT_UNKNOWN
  @str_cvkCommerceDebugDVD, // PT_DVD
  @str_cvkCommerceDebugMobile, // PT_MOBILE
  @str_cvkCommerceDebugFileServer, // PT_FILESERVER
  @str_cvkCommerceDebugDesktop, // PT_DESKTOP
  @str_cvkCommerceDebugClientServer, // PT_CLIENTSERVER
  @str_cvkCommerceDebugSuperMobile // PT_SUPERMOBILE
   )
  ),
  // DefDataAdapter.AssemblyInfo.GetBaseType = BT_NON_COMMERCIAL
  (
  // DefDataAdapter.AssemblyInfo.GetIsDebug = false
   (
  @str_cvkNonCommerceNonDebugUnknown, // PT_UNKNOWN
  @str_cvkNonCommerceNonDebugDVD, // PT_DVD
  @str_cvkNonCommerceNonDebugMobile, // PT_MOBILE
  @str_cvkNonCommerceNonDebugFileServer, // PT_FILESERVER
  @str_cvkNonCommerceNonDebugDesktop, // PT_DESKTOP
  @str_cvkNonCommerceNonDebugClientServer, // PT_CLIENTSERVER
  @str_cvkNonCommerceNonDebugSuperMobile // PT_SUPERMOBILE
   ),
  // DefDataAdapter.AssemblyInfo.GetIsDebug = true
   (
  @str_cvkNonCommerceDebugUnknown, // PT_UNKNOWN
  @str_cvkNonCommerceDebugDVD, // PT_DVD
  @str_cvkNonCommerceDebugMobile, // PT_MOBILE
  @str_cvkNonCommerceDebugFileServer, // PT_FILESERVER
  @str_cvkNonCommerceDebugDesktop, // PT_DESKTOP
  @str_cvkNonCommerceDebugClientServer, // PT_CLIENTSERVER
  @str_cvkNonCommerceDebugSuperMobile // PT_SUPERMOBILE
   )
  ),
  // DefDataAdapter.AssemblyInfo.GetBaseType = BT_DEMO
  (
  // DefDataAdapter.AssemblyInfo.GetIsDebug = false
   (
  @str_cvkDemoNonDebugUnknown, // PT_UNKNOWN
  @str_cvkDemoNonDebugDVD, // PT_DVD
  @str_cvkDemoNonDebugMobile, // PT_MOBILE
  @str_cvkDemoNonDebugFileServer, // PT_FILESERVER
  @str_cvkDemoNonDebugDesktop, // PT_DESKTOP
  @str_cvkDemoNonDebugClientServer, // PT_CLIENTSERVER
  @str_cvkDemoNonDebugSuperMobile // PT_SUPERMOBILE
   ),
  // DefDataAdapter.AssemblyInfo.GetIsDebug = true
   (
  @str_cvkDemoDebugUnknown, // PT_UNKNOWN
  @str_cvkDemoDebugDVD, // PT_DVD
  @str_cvkDemoDebugMobile, // PT_MOBILE
  @str_cvkDemoDebugFileServer, // PT_FILESERVER
  @str_cvkDemoDebugDesktop, // PT_DESKTOP
  @str_cvkDemoDebugClientServer, // PT_CLIENTSERVER
  @str_cvkDemoDebugSuperMobile // PT_SUPERMOBILE
   )
  )
 );

 cServerMap: array [TCapacity] of PvcmStringID = (
  @str_EmptyStr, // C_32
  @str_x64Server // C_64
 );

 {$I nsBuildVersion.inc}
var
 l_UserCount: TLicenseRestrictions;


 function lp_ShowCount(aUserCount: TLicenseRestrictions): Boolean;
 const
  cUsersCountHack = 2000;
  cPermanentUsersCountHack = 0;
 begin
  if (aUserCount.rUsers = cUsersCountHack) and (aUserCount.rPermanentUsers = cPermanentUsersCountHack) then
   Result := False
  else
   Result := aUserCount.rUsers > 1;
 end;
//#UC END# *5006D2A60192_4ABB6F3F001B_var*
begin
//#UC START# *5006D2A60192_4ABB6F3F001B_impl*
 if (c_BuildVersion <> 'X.XX.X.XXX') then
 begin
  ShellInfoLabel.CCaption := vcmFmt(str_Version_Message, [c_BuildVersion]);
 end
 else
  with TVersionInfo.Create, FileLongVersion do
  try
   ShellInfoLabel.CCaption := vcmFmt(str_Version_Message, [vcmFmt('%d.%d.%d.%d', [All[2], All[1], All[4], All[3]])]);
  finally
   Free;
  end;
 //
 ShellInfoLabel.CCaption := l3Cat([ShellInfoLabel.CCaption, vcmCStr(cServerMap[DefDataAdapter.AssemblyInfo.GetServerCapacity]^)]);

 if not DefDataAdapter.AssemblyInfo.GetIsCommerce then
  AdapterInfoLabel.CCaption := vcmCStr(cInternalVersionKindTitle[DefDataAdapter.AssemblyInfo.GetIsDebug,
                                                                 DefDataAdapter.CommonInterfaces.GetProductType]^)
 else
  AdapterInfoLabel.CCaption := vcmCStr(cVersionKindTitle[DefDataAdapter.CommonInterfaces.GetBaseType,
                                                         DefDataAdapter.AssemblyInfo.GetIsDebug,
                                                         DefDataAdapter.CommonInterfaces.GetProductType]^);


 DefDataAdapter.CommonInterfaces.GetLicenseRestrictions(l_UserCount);
 if lp_ShowCount(l_UserCount) then
 begin
  if l_UserCount.rPermanentUsers > 0 then
   UserCountLabel.CCaption := vcmFmt(str_AboutFullUserCountCaption, [l_UserCount.rUsers, l_UserCount.rPermanentUsers])
  else
   UserCountLabel.CCaption := vcmFmt(str_AboutUserCountCaption, [l_UserCount.rUsers]);
  UserCountLabel.Visible := True;
  UserCountCaptionLabel.Visible := True;
 end
 else
 begin
  UserCountLabel.Visible := False;
  UserCountCaptionLabel.Visible := False;
 end;

 GetCurrentOwnerInfo;
 GetCurrentUserInfo;
//#UC END# *5006D2A60192_4ABB6F3F001B_impl*
end;//TefAbout.UpdateInfoOnForm

procedure TefAbout.GetCurrentUserInfo;
//#UC START# *5006D2BC03C1_4ABB6F3F001B_var*
var
 l_UserManager : IUserManager;
 l_Profile     : IUserProfile;
 l_Name        : IString;
//#UC END# *5006D2BC03C1_4ABB6F3F001B_var*
begin
//#UC START# *5006D2BC03C1_4ABB6F3F001B_impl*
 UserNameLabel.CCaption := nil;
 LoginLabel.CCaption := nil;
 EMailLabel.CCaption := nil;

 l_UserManager := defDataAdapter.NativeAdapter.MakeUserManager;
 try
  l_UserManager.GetSelfProfile(l_Profile);
  try
   // ��� ������������
   l_Profile.GetName(l_Name);
   try
    UserNameLabel.CCaption := nsCStr(l_Name);
   finally
    l_Name := nil;
   end;
   // Login
   l_Profile.GetLogin(l_Name);
   try
    LoginLabel.CCaption := nsCStr(l_Name);
   finally
    l_Name := nil;
   end;
   // E-Mail
   l_Profile.GetMail(l_Name);
   try
    EMailLabel.CCaption := nsCStr(l_Name);
   finally
    l_Name := nil;
   end;
  finally
   l_Profile := nil;
  end;
 finally
  l_UserManager := nil;
 end;
//#UC END# *5006D2BC03C1_4ABB6F3F001B_impl*
end;//TefAbout.GetCurrentUserInfo

procedure TefAbout.GetCurrentOwnerInfo;
//#UC START# *5006D2D20048_4ABB6F3F001B_var*
var
 l_ComplectInfo : IComplectInfo;
 l_Name         : IString;
//#UC END# *5006D2D20048_4ABB6F3F001B_var*
begin
//#UC START# *5006D2D20048_4ABB6F3F001B_impl*
 OwnerLabel.CCaption := nil;
 l_ComplectInfo := defDataAdapter.NativeAdapter.MakeComplectInfo;
 try
  l_ComplectInfo.GetOwner(l_Name);
  try
   OwnerLabel.CCaption := nsCStr(l_Name);
  finally
   l_Name := nil;
  end;
 finally
  l_ComplectInfo := nil;
 end;
//#UC END# *5006D2D20048_4ABB6F3F001B_impl*
end;//TefAbout.GetCurrentOwnerInfo

procedure TefAbout.PbLogoPaint(Sender: TObject);
//#UC START# *5006D77F038F_4ABB6F3F001B_var*
//#UC END# *5006D77F038F_4ABB6F3F001B_var*
begin
//#UC START# *5006D77F038F_4ABB6F3F001B_impl*
 nsPaintImage(dmStdRes.ilLogo, pbLogo);
//#UC END# *5006D77F038F_4ABB6F3F001B_impl*
end;//TefAbout.PbLogoPaint

procedure TefAbout.FinishDataUpdate;
//#UC START# *47EA4E9002C6_4ABB6F3F001B_var*
//#UC END# *47EA4E9002C6_4ABB6F3F001B_var*
begin
//#UC START# *47EA4E9002C6_4ABB6F3F001B_impl*
 inherited;
 InitControls;
//#UC END# *47EA4E9002C6_4ABB6F3F001B_impl*
end;//TefAbout.FinishDataUpdate

{$If not defined(NoVCM)}
procedure TefAbout.InitControls;
//#UC START# *4A8E8F2E0195_4ABB6F3F001B_var*
const
 c_Delta = 6;
var
 l_RightInfoBorder: Integer;
 l_LeftInfoBorder: Integer;
 l_LeftLabelBorder: Integer;
 l_RightLabelBorder: Integer;
 l_Tops: Integer;
 l_WhiteHeight: Integer;

 function lp_GetDelta: Integer;
 begin
  Result := (c_Delta * Screen.PixelsPerInch) div 96;
 end;

 function AdjustInfo(aCaptionLabel, aLabel: TvtLabel; aTop: Integer; aGBShift: Integer = 0): Integer;
 begin
  with aCaptionLabel do
  begin
   WordWrap := True;

   AutoSize := True;
   Width := ((178 + aGBShift) * Screen.PixelsPerInch) div 96;
   AutoSize := False;
   Width := ((178 + aGBShift) * Screen.PixelsPerInch) div 96;

   Left := ((10 - aGBShift) * Screen.PixelsPerInch) div 96;
   Top := aTop;
   Transparent := True;
   Alignment := taRightJustify;
  end;
  with aLabel do
  begin
   AutoSize := True;
   WordWrap := True;
   Left := aCaptionLabel.Left + aCaptionLabel.Width + lp_GetDelta;
   Width := Parent.ClientWidth - Left - lp_GetDelta;
   Top := aTop;
   Transparent := True;
   Alignment := taLeftJustify;
   Anchors := [akLeft, akRight, akTop];
  end;      
  Result := Max(aCaptionLabel.Top + aCaptionLabel.Height, aLabel.Top + aLabel.Height) + lp_GetDelta;
 end;                       
//#UC END# *4A8E8F2E0195_4ABB6F3F001B_var*
begin
//#UC START# *4A8E8F2E0195_4ABB6F3F001B_impl*
 UpdateInfoOnForm;

 Width := (550 * Screen.PixelsPerInch) div 96;


 BorderStyle := bsSingle;
 BorderIcons := [biSystemMenu];

 with pbLogo do
 begin
  SetBounds(12, 6, 200, 58);
  OnPaint := PbLogoPaint;
 end;

 l_Tops := pbLogo.Top + pbLogo.Height + lp_GetDelta;
 l_Tops := AdjustInfo(ShellCaptionLabel, ShellInfoLabel, l_Tops);
 l_Tops := AdjustInfo(AdapterCaptionLabel, AdapterInfoLabel, l_Tops);
 l_Tops := AdjustInfo(UserCountCaptionLabel, UserCountLabel, l_Tops);
 l_Tops := AdjustInfo(OwnerCaptionLabel, OwnerLabel, l_Tops);

 with UserInfoGroupBox do
 begin
  Top := l_Tops;
  Left := lp_GetDelta;
  Width := Self.ClientWidth - lp_GetDelta * 2;
  Anchors := [akLeft, akRight, akTop];
 end;

 l_Tops := AdjustInfo(LoginCaptionLabel, LoginLabel, 16, lp_GetDelta);
 l_Tops := AdjustInfo(UserCaptionLabel, UserNameLabel, l_Tops, lp_GetDelta);
 l_Tops := AdjustInfo(EMailCaptionLabel, EMailLabel, l_Tops, lp_GetDelta);

 UserInfoGroupBox.Height := l_Tops + c_Delta;

 with OkButton do
 begin
  Top := UserInfoGroupBox.Top + UserInfoGroupBox.Height + lp_GetDelta * 2;
  Left := Self.ClientWidth - Width - lp_GetDelta;
  Self.ClientHeight := Top + Height + lp_GetDelta;
  Default := True;
  Cancel := True;
  ModalResult := mrOk;

  Caption := str_vtMsgDlgOK.AsStr;
 end;

 with CopyrightCaptionLabel do
 begin
  AutoSize := True;
  Left := 10;
  Top := OkButton.Top + (OkButton.Height - Height) div 2;
  Transparent := True;
  Alignment := taRightJustify;
  WordWrap := False;
 end;

//#UC END# *4A8E8F2E0195_4ABB6F3F001B_impl*
end;//TefAbout.InitControls
{$IfEnd} //not NoVCM

procedure TefAbout.MakeControls;
begin
 inherited;
 f_pbLogo := TPaintBox.Create(Self);
 f_pbLogo.Name := 'pbLogo';
 f_pbLogo.Parent := Self;
 f_ShellInfoLabel := TvtLabel.Create(Self);
 f_ShellInfoLabel.Name := 'ShellInfoLabel';
 f_ShellInfoLabel.Parent := Self;
 f_AdapterInfoLabel := TvtLabel.Create(Self);
 f_AdapterInfoLabel.Name := 'AdapterInfoLabel';
 f_AdapterInfoLabel.Parent := Self;
 f_UserCountLabel := TvtLabel.Create(Self);
 f_UserCountLabel.Name := 'UserCountLabel';
 f_UserCountLabel.Parent := Self;
 f_OwnerLabel := TvtLabel.Create(Self);
 f_OwnerLabel.Name := 'OwnerLabel';
 f_OwnerLabel.Parent := Self;
 f_ShellCaptionLabel := TvtLabel.Create(Self);
 f_ShellCaptionLabel.Name := 'ShellCaptionLabel';
 f_ShellCaptionLabel.Parent := Self;
 f_ShellCaptionLabel.Caption := '������';
 f_OwnerCaptionLabel := TvtLabel.Create(Self);
 f_OwnerCaptionLabel.Name := 'OwnerCaptionLabel';
 f_OwnerCaptionLabel.Parent := Self;
 f_OwnerCaptionLabel.Caption := '������������������ ������������ �����';
 f_UserInfoGroupBox := TvtGroupBox.Create(Self);
 f_UserInfoGroupBox.Name := 'UserInfoGroupBox';
 f_UserInfoGroupBox.Parent := Self;
 f_UserInfoGroupBox.Caption := '������� ������';
 f_EMailCaptionLabel := TvtLabel.Create(Self);
 f_EMailCaptionLabel.Name := 'EMailCaptionLabel';
 f_EMailCaptionLabel.Parent := UserInfoGroupBox;
 f_EMailCaptionLabel.Caption := 'E-mail:';
 f_EMailLabel := TvtLabel.Create(Self);
 f_EMailLabel.Name := 'EMailLabel';
 f_EMailLabel.Parent := UserInfoGroupBox;
 f_LoginCaptionLabel := TvtLabel.Create(Self);
 f_LoginCaptionLabel.Name := 'LoginCaptionLabel';
 f_LoginCaptionLabel.Parent := UserInfoGroupBox;
 f_LoginCaptionLabel.Caption := '��������������� ���:';
 f_UserCaptionLabel := TvtLabel.Create(Self);
 f_UserCaptionLabel.Name := 'UserCaptionLabel';
 f_UserCaptionLabel.Parent := UserInfoGroupBox;
 f_UserCaptionLabel.Caption := '��� ������������:';
 f_UserNameLabel := TvtLabel.Create(Self);
 f_UserNameLabel.Name := 'UserNameLabel';
 f_UserNameLabel.Parent := UserInfoGroupBox;
 f_LoginLabel := TvtLabel.Create(Self);
 f_LoginLabel.Name := 'LoginLabel';
 f_LoginLabel.Parent := UserInfoGroupBox;
 f_CopyrightCaptionLabel := TvtLabel.Create(Self);
 f_CopyrightCaptionLabel.Name := 'CopyrightCaptionLabel';
 f_CopyrightCaptionLabel.Parent := Self;
 f_CopyrightCaptionLabel.Caption := '(C) ��� ��� "������-������-�����������", 1990-2013';
 f_OkButton := TeeButton.Create(Self);
 f_OkButton.Name := 'OkButton';
 f_OkButton.Parent := Self;
 f_UserCountCaptionLabel := TvtLabel.Create(Self);
 f_UserCountCaptionLabel.Name := 'UserCountCaptionLabel';
 f_UserCountCaptionLabel.Parent := Self;
 f_AdapterCaptionLabel := TvtLabel.Create(Self);
 f_AdapterCaptionLabel.Name := 'AdapterCaptionLabel';
 f_AdapterCaptionLabel.Parent := Self;
 with AddUsertype(ut_AboutName,
  str_ut_AboutCaption,
  str_ut_AboutCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_AboutName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_pbLogo
 Tkw_About_Control_pbLogo.Register('�������::pbLogo', TPaintBox);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_pbLogo_Push
 Tkw_About_Control_pbLogo_Push.Register('�������::pbLogo:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_ShellInfoLabel
 Tkw_About_Control_ShellInfoLabel.Register('�������::ShellInfoLabel', TvtLabel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_ShellInfoLabel_Push
 Tkw_About_Control_ShellInfoLabel_Push.Register('�������::ShellInfoLabel:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_AdapterInfoLabel
 Tkw_About_Control_AdapterInfoLabel.Register('�������::AdapterInfoLabel', TvtLabel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_AdapterInfoLabel_Push
 Tkw_About_Control_AdapterInfoLabel_Push.Register('�������::AdapterInfoLabel:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_UserCountLabel
 Tkw_About_Control_UserCountLabel.Register('�������::UserCountLabel', TvtLabel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_UserCountLabel_Push
 Tkw_About_Control_UserCountLabel_Push.Register('�������::UserCountLabel:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_OwnerLabel
 Tkw_About_Control_OwnerLabel.Register('�������::OwnerLabel', TvtLabel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_OwnerLabel_Push
 Tkw_About_Control_OwnerLabel_Push.Register('�������::OwnerLabel:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_ShellCaptionLabel
 Tkw_About_Control_ShellCaptionLabel.Register('�������::ShellCaptionLabel', TvtLabel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_ShellCaptionLabel_Push
 Tkw_About_Control_ShellCaptionLabel_Push.Register('�������::ShellCaptionLabel:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_OwnerCaptionLabel
 Tkw_About_Control_OwnerCaptionLabel.Register('�������::OwnerCaptionLabel', TvtLabel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_OwnerCaptionLabel_Push
 Tkw_About_Control_OwnerCaptionLabel_Push.Register('�������::OwnerCaptionLabel:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_UserInfoGroupBox
 Tkw_About_Control_UserInfoGroupBox.Register('�������::UserInfoGroupBox', TvtGroupBox);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_UserInfoGroupBox_Push
 Tkw_About_Control_UserInfoGroupBox_Push.Register('�������::UserInfoGroupBox:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_EMailCaptionLabel
 Tkw_About_Control_EMailCaptionLabel.Register('�������::EMailCaptionLabel', TvtLabel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_EMailCaptionLabel_Push
 Tkw_About_Control_EMailCaptionLabel_Push.Register('�������::EMailCaptionLabel:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_EMailLabel
 Tkw_About_Control_EMailLabel.Register('�������::EMailLabel', TvtLabel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_EMailLabel_Push
 Tkw_About_Control_EMailLabel_Push.Register('�������::EMailLabel:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_LoginCaptionLabel
 Tkw_About_Control_LoginCaptionLabel.Register('�������::LoginCaptionLabel', TvtLabel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_LoginCaptionLabel_Push
 Tkw_About_Control_LoginCaptionLabel_Push.Register('�������::LoginCaptionLabel:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_UserCaptionLabel
 Tkw_About_Control_UserCaptionLabel.Register('�������::UserCaptionLabel', TvtLabel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_UserCaptionLabel_Push
 Tkw_About_Control_UserCaptionLabel_Push.Register('�������::UserCaptionLabel:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_UserNameLabel
 Tkw_About_Control_UserNameLabel.Register('�������::UserNameLabel', TvtLabel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_UserNameLabel_Push
 Tkw_About_Control_UserNameLabel_Push.Register('�������::UserNameLabel:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_LoginLabel
 Tkw_About_Control_LoginLabel.Register('�������::LoginLabel', TvtLabel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_LoginLabel_Push
 Tkw_About_Control_LoginLabel_Push.Register('�������::LoginLabel:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_CopyrightCaptionLabel
 Tkw_About_Control_CopyrightCaptionLabel.Register('�������::CopyrightCaptionLabel', TvtLabel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_CopyrightCaptionLabel_Push
 Tkw_About_Control_CopyrightCaptionLabel_Push.Register('�������::CopyrightCaptionLabel:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_OkButton
 Tkw_About_Control_OkButton.Register('�������::OkButton', TeeButton);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_OkButton_Push
 Tkw_About_Control_OkButton_Push.Register('�������::OkButton:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_UserCountCaptionLabel
 Tkw_About_Control_UserCountCaptionLabel.Register('�������::UserCountCaptionLabel', TvtLabel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_UserCountCaptionLabel_Push
 Tkw_About_Control_UserCountCaptionLabel_Push.Register('�������::UserCountCaptionLabel:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_AdapterCaptionLabel
 Tkw_About_Control_AdapterCaptionLabel.Register('�������::AdapterCaptionLabel', TvtLabel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_Control_AdapterCaptionLabel_Push
 Tkw_About_Control_AdapterCaptionLabel_Push.Register('�������::AdapterCaptionLabel:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� ������� ����� About
 fm_efAbout.SetFactory(TefAbout.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_About
 Tkw_Form_About.Register('�����::About', TefAbout);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_pbLogo_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefAbout.pbLogo', Tkw_About_pbLogo_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_ShellInfoLabel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefAbout.ShellInfoLabel', Tkw_About_ShellInfoLabel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_AdapterInfoLabel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefAbout.AdapterInfoLabel', Tkw_About_AdapterInfoLabel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_UserCountLabel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefAbout.UserCountLabel', Tkw_About_UserCountLabel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_OwnerLabel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefAbout.OwnerLabel', Tkw_About_OwnerLabel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_ShellCaptionLabel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefAbout.ShellCaptionLabel', Tkw_About_ShellCaptionLabel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_OwnerCaptionLabel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefAbout.OwnerCaptionLabel', Tkw_About_OwnerCaptionLabel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_UserInfoGroupBox_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefAbout.UserInfoGroupBox', Tkw_About_UserInfoGroupBox_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_EMailCaptionLabel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefAbout.EMailCaptionLabel', Tkw_About_EMailCaptionLabel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_EMailLabel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefAbout.EMailLabel', Tkw_About_EMailLabel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_LoginCaptionLabel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefAbout.LoginCaptionLabel', Tkw_About_LoginCaptionLabel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_UserCaptionLabel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefAbout.UserCaptionLabel', Tkw_About_UserCaptionLabel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_UserNameLabel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefAbout.UserNameLabel', Tkw_About_UserNameLabel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_LoginLabel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefAbout.LoginLabel', Tkw_About_LoginLabel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_CopyrightCaptionLabel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefAbout.CopyrightCaptionLabel', Tkw_About_CopyrightCaptionLabel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_OkButton_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefAbout.OkButton', Tkw_About_OkButton_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_UserCountCaptionLabel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefAbout.UserCountCaptionLabel', Tkw_About_UserCountCaptionLabel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_About_AdapterCaptionLabel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefAbout.AdapterCaptionLabel', Tkw_About_AdapterCaptionLabel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ������������� str_ut_AboutCaption
 str_ut_AboutCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.