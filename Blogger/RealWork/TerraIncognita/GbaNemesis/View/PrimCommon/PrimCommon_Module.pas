unit PrimCommon_Module;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/PrimCommon/PrimCommon_Module.pas"
// �����: 21.08.2009 20:15
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFormsPack::Class>> F1 ������� ����������� ���������� �������::F1 Application Template::View::PrimCommon::PrimCommon
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
  PrimShutDown_Form,
  PrimLogin_Form,
  Login_Form,
  PrimLongProcess_Form,
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
  ShutDown_Form,
  LongProcess_Form,
  vcmExternalInterfaces {a},
  vcmModule {a},
  vcmBase {a}
  ;

type
 TShutdownWarningKind = (
  {* [$159367978] }
   wkShutDown
 , wkLogout
 );//TShutdownWarningKind

 TPrimCommonModule = {abstract formspack} class(TvcmModule)
 protected
  class procedure GetEntityForms(aList : TvcmClassList); override;
 public
 // public methods
   class function MakeUpdateMessage: IvcmEntityForm;
     {* ������ ���� � ���������� �� ���������� ���� }
   class function MakeShutdownWindow(aCloseInterval: LongWord;
     aKind: TShutdownWarningKind): IvcmEntityForm;
     {* ������ ���� ���������� � �������� ���������� }
 end;//TPrimCommonModule

implementation

uses
  SysUtils
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  l3MessageID,
  nsTypes,
  afwFacade,
  Forms,
  F1_Application_Template_InternalOperations_Controls,
  vcmFormSetFactory {a},
  StdRes {a}
  ;

type
  Tkw_Form_ShutDown = class(TtfwControlString)
   {* ����� ������� ��� �������������� ����� ShutDown
----
*������ �������������*:
[code]
'aControl' �����::ShutDown TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_ShutDown

// start class Tkw_Form_ShutDown

{$If not defined(NoScripts)}
function Tkw_Form_ShutDown.GetString: AnsiString;
 {-}
begin
 Result := 'ShutDownForm';
end;//Tkw_Form_ShutDown.GetString
{$IfEnd} //not NoScripts

type
  Tkw_ShutDown_WarningText_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� WarningText ����� ShutDown }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_ShutDown_WarningText_ControlInstance

// start class Tkw_ShutDown_WarningText_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ShutDown_WarningText_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TShutDownForm).WarningText);
end;//Tkw_ShutDown_WarningText_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_ShutDown_ShutdownTimer_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� ShutdownTimer ����� ShutDown }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_ShutDown_ShutdownTimer_ControlInstance

// start class Tkw_ShutDown_ShutdownTimer_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ShutDown_ShutdownTimer_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TShutDownForm).ShutdownTimer);
end;//Tkw_ShutDown_ShutdownTimer_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Form_LongProcess = class(TtfwControlString)
   {* ����� ������� ��� �������������� ����� LongProcess
----
*������ �������������*:
[code]
'aControl' �����::LongProcess TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_LongProcess

// start class Tkw_Form_LongProcess

{$If not defined(NoScripts)}
function Tkw_Form_LongProcess.GetString: AnsiString;
 {-}
begin
 Result := 'LongProcessForm';
end;//Tkw_Form_LongProcess.GetString
{$IfEnd} //not NoScripts

class function TPrimCommonModule.MakeUpdateMessage: IvcmEntityForm;
var
 __WasEnter : Boolean;
//#UC START# *4A93DE1B0371_4A8EC78503BB_var*
//#UC END# *4A93DE1B0371_4A8EC78503BB_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4A93DE1B0371_4A8EC78503BB_impl*
 Result := TLongProcessForm.Make(TnsLongProcessData_C(nil, lptUpdate, nil));
//#UC END# *4A93DE1B0371_4A8EC78503BB_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TPrimCommonModule.MakeUpdateMessage

class function TPrimCommonModule.MakeShutdownWindow(aCloseInterval: LongWord;
  aKind: TShutdownWarningKind): IvcmEntityForm;
var
 __WasEnter : Boolean;
//#UC START# *4A93A8AB0239_4A8EC78503BB_var*
//#UC END# *4A93A8AB0239_4A8EC78503BB_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4A93A8AB0239_4A8EC78503BB_impl*
 Result := TShutDownForm.Make(vcmMakeParams(nil, nil, Application));
 afw.ProcessMessages;
 Op_System_InitShutdown.Call(Result.Entity, aKind = wkShutDown, aCloseInterval);
//#UC END# *4A93A8AB0239_4A8EC78503BB_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TPrimCommonModule.MakeShutdownWindow

class procedure TPrimCommonModule.GetEntityForms(aList : TvcmClassList);
begin
 inherited;
 aList.Add(TShutDownForm);
 aList.Add(TLoginForm);
 aList.Add(TLongProcessForm);
end;

initialization
// ����������� Tkw_Form_ShutDown
 Tkw_Form_ShutDown.Register('�����::ShutDown', TShutDownForm);
// ����������� Tkw_ShutDown_WarningText_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TShutDownForm.WarningText', Tkw_ShutDown_WarningText_ControlInstance);
// ����������� Tkw_ShutDown_ShutdownTimer_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TShutDownForm.ShutdownTimer', Tkw_ShutDown_ShutdownTimer_ControlInstance);
// ����������� Tkw_Form_LongProcess
 Tkw_Form_LongProcess.Register('�����::LongProcess', TLongProcessForm);

end.