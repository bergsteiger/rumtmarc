unit ForbidAutoregistration_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Admin/Forms/ForbidAutoregistration_Form.pas"
// �����: 07.09.2009 18:00
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 �������������::Admin::View::Admin::Admin::ForbidAutoregistration
//
// ��������� ���������������
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
  l3StringIDEx,
  PrimForbidAutoregistrationOptions_Form
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
  ForbidAutoregistration_ut_ForbidAutoregistration_UserType,
  vtLabel,
  vtGroupBox,
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //Admin

{$If defined(Admin)}
const
    { ForbidAutoregistrationIDs }
   fm_efForbidAutoregistration : TvcmFormDescriptor = (rFormID : (rName : 'efForbidAutoregistration'; rID : 0); rFactory : nil);
    { ������������� ����� TefForbidAutoregistration }

type
 ForbidAutoregistrationFormDef = interface(IUnknown)
  {* ������������� ����� ForbidAutoregistration }
   ['{5D4153F1-D087-4AF8-A4ED-39411EB7A1A3}']
 end;//ForbidAutoregistrationFormDef

  TefForbidAutoregistration = {final form} class(TvcmEntityFormRef, ForbidAutoregistrationFormDef)
   {* ��������� ��������������� }
  Entities : TvcmEntities;
  protected
   procedure MakeControls; override;
  end;//TefForbidAutoregistration

  TForbidAutoregistrationForm = TefForbidAutoregistration;
{$IfEnd} //Admin

implementation

{$R *.DFM}

{$If defined(Admin)}
uses
  SysUtils
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  l3MessageID
  ;
{$IfEnd} //Admin

{$If defined(Admin)}

var
    { ������������ ������ ut_ForbidAutoregistrationLocalConstants }
   str_ut_ForbidAutoregistrationCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_ForbidAutoregistrationCaption'; rValue : '��������� ���������������');
    { ��������� ����������������� ���� "��������� ���������������" }

type
   Tkw_Form_ForbidAutoregistration = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� ForbidAutoregistration
----
*������ �������������*:
[code]
'aControl' �����::ForbidAutoregistration TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_ForbidAutoregistration

// start class Tkw_Form_ForbidAutoregistration

{$If not defined(NoScripts)}
function Tkw_Form_ForbidAutoregistration.GetString: AnsiString;
 {-}
begin
 Result := 'efForbidAutoregistration';
end;//Tkw_Form_ForbidAutoregistration.GetString
{$IfEnd} //not NoScripts

type
   Tkw_ForbidAutoregistration_lblReference_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� lblReference ����� ForbidAutoregistration }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ForbidAutoregistration_lblReference_ControlInstance

// start class Tkw_ForbidAutoregistration_lblReference_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ForbidAutoregistration_lblReference_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefForbidAutoregistration).lblReference);
end;//Tkw_ForbidAutoregistration_lblReference_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_ForbidAutoregistration_gbInfo_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� gbInfo ����� ForbidAutoregistration }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ForbidAutoregistration_gbInfo_ControlInstance

// start class Tkw_ForbidAutoregistration_gbInfo_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ForbidAutoregistration_gbInfo_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefForbidAutoregistration).gbInfo);
end;//Tkw_ForbidAutoregistration_gbInfo_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_ForbidAutoregistration_lblPhone_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� lblPhone ����� ForbidAutoregistration }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ForbidAutoregistration_lblPhone_ControlInstance

// start class Tkw_ForbidAutoregistration_lblPhone_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ForbidAutoregistration_lblPhone_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefForbidAutoregistration).lblPhone);
end;//Tkw_ForbidAutoregistration_lblPhone_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_ForbidAutoregistration_lblEmail_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� lblEmail ����� ForbidAutoregistration }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ForbidAutoregistration_lblEmail_ControlInstance

// start class Tkw_ForbidAutoregistration_lblEmail_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ForbidAutoregistration_lblEmail_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefForbidAutoregistration).lblEmail);
end;//Tkw_ForbidAutoregistration_lblEmail_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_ForbidAutoregistration_lblHint_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� lblHint ����� ForbidAutoregistration }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ForbidAutoregistration_lblHint_ControlInstance

// start class Tkw_ForbidAutoregistration_lblHint_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ForbidAutoregistration_lblHint_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefForbidAutoregistration).lblHint);
end;//Tkw_ForbidAutoregistration_lblHint_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_ForbidAutoregistration_cbPhone_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� cbPhone ����� ForbidAutoregistration }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ForbidAutoregistration_cbPhone_ControlInstance

// start class Tkw_ForbidAutoregistration_cbPhone_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ForbidAutoregistration_cbPhone_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefForbidAutoregistration).cbPhone);
end;//Tkw_ForbidAutoregistration_cbPhone_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_ForbidAutoregistration_cbEmail_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� cbEmail ����� ForbidAutoregistration }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ForbidAutoregistration_cbEmail_ControlInstance

// start class Tkw_ForbidAutoregistration_cbEmail_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ForbidAutoregistration_cbEmail_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefForbidAutoregistration).cbEmail);
end;//Tkw_ForbidAutoregistration_cbEmail_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

procedure TefForbidAutoregistration.MakeControls;
begin
 inherited;
 with AddUsertype(ut_ForbidAutoregistrationName,
  str_ut_ForbidAutoregistrationCaption,
  str_ut_ForbidAutoregistrationCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_ForbidAutoregistrationName
end;

{$IfEnd} //Admin

initialization
{$If defined(Admin)}
// ����������� Tkw_Form_ForbidAutoregistration
 Tkw_Form_ForbidAutoregistration.Register('�����::ForbidAutoregistration', TefForbidAutoregistration);
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_ForbidAutoregistration_lblReference_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefForbidAutoregistration.lblReference', Tkw_ForbidAutoregistration_lblReference_ControlInstance);
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_ForbidAutoregistration_gbInfo_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefForbidAutoregistration.gbInfo', Tkw_ForbidAutoregistration_gbInfo_ControlInstance);
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_ForbidAutoregistration_lblPhone_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefForbidAutoregistration.lblPhone', Tkw_ForbidAutoregistration_lblPhone_ControlInstance);
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_ForbidAutoregistration_lblEmail_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefForbidAutoregistration.lblEmail', Tkw_ForbidAutoregistration_lblEmail_ControlInstance);
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_ForbidAutoregistration_lblHint_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefForbidAutoregistration.lblHint', Tkw_ForbidAutoregistration_lblHint_ControlInstance);
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_ForbidAutoregistration_cbPhone_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefForbidAutoregistration.cbPhone', Tkw_ForbidAutoregistration_cbPhone_ControlInstance);
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_ForbidAutoregistration_cbEmail_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefForbidAutoregistration.cbEmail', Tkw_ForbidAutoregistration_cbEmail_ControlInstance);
{$IfEnd} //Admin
{$If defined(Admin)}
// ������������� str_ut_ForbidAutoregistrationCaption
 str_ut_ForbidAutoregistrationCaption.Init;
{$IfEnd} //Admin

end.