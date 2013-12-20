unit PrimShutDown_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/PrimCommon/Forms/PrimShutDown_Form.pas"
// Начат: 21.08.2009 21:18
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Базовые определения предметной области::F1 Application Template::View::PrimCommon::PrimShutDown
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  ExtCtrls
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  F1_Application_Template_InternalOperations_Controls,
  vtLabel,
  l3StringIDEx
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
  PrimShutDown_sftNone_UserType,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;

type
 TPrimShutDownForm = {form} class(TvcmEntityForm)
 private
 // private fields
   f_WarningText : TvtLabel;
    {* Поле для свойства WarningText}
   f_ShutdownTimer : TTimer;
    {* Поле для свойства ShutdownTimer}
 protected
  procedure InitEntities; override;
  procedure MakeControls; override;
 protected
 // property methods
   function pm_GetWarningText: TvtLabel;
   function pm_GetShutdownTimer: TTimer;
 protected
 // realized methods
   procedure System_InitShutdown_Execute(aShotdown: Boolean;
    aCloseInterval: Integer);
     {* Начать процесс завершения работы }
   procedure System_InitShutdown(const aParams: IvcmExecuteParams);
     {* Начать процесс завершения работы }
 protected
 // protected fields
   f_InShutdown : Boolean;
   f_CloseInterval : Integer;
   f_CloseCaption : AnsiString;
 protected
 // protected methods
   procedure UpdateCloseButton; virtual; abstract;
   procedure UpdateSize; virtual; abstract;
 public
 // public properties
   property WarningText: TvtLabel
     read pm_GetWarningText;
   property ShutdownTimer: TTimer
     read pm_GetShutdownTimer;
 end;//TPrimShutDownForm

 TvcmEntityFormRef = TPrimShutDownForm;

implementation

uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmBase
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  l3MessageID,
  StdRes {a}
  ;

var
   { Локализуемые строки sftNoneLocalConstants }
  str_sftNoneCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'sftNoneCaption'; rValue : 'Предупреждение о закрытии приложения');
   { Заголовок пользовательского типа "Предупреждение о закрытии приложения" }

type
  Tkw_PrimShutDown_Control_WarningText = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола WarningText
----
*Пример использования*:
[code]
контрол::WarningText TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimShutDown_Control_WarningText

// start class Tkw_PrimShutDown_Control_WarningText

{$If not defined(NoScripts)}
function Tkw_PrimShutDown_Control_WarningText.GetString: AnsiString;
 {-}
begin
 Result := 'WarningText';
end;//Tkw_PrimShutDown_Control_WarningText.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimShutDown_Control_WarningText_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола WarningText
----
*Пример использования*:
[code]
контрол::WarningText:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimShutDown_Control_WarningText_Push

// start class Tkw_PrimShutDown_Control_WarningText_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimShutDown_Control_WarningText_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('WarningText');
 inherited;
end;//Tkw_PrimShutDown_Control_WarningText_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimShutDown_Component_ShutdownTimer = class(TtfwControlString)
   {* Слово словаря для идентификатора компонента ShutdownTimer
----
*Пример использования*:
[code]
компонент::ShutdownTimer TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimShutDown_Component_ShutdownTimer

// start class Tkw_PrimShutDown_Component_ShutdownTimer

{$If not defined(NoScripts)}
function Tkw_PrimShutDown_Component_ShutdownTimer.GetString: AnsiString;
 {-}
begin
 Result := 'ShutdownTimer';
end;//Tkw_PrimShutDown_Component_ShutdownTimer.GetString
{$IfEnd} //not NoScripts

function TPrimShutDownForm.pm_GetWarningText: TvtLabel;
begin
 if (f_WarningText = nil) then
  f_WarningText := FindComponent('WarningText') As TvtLabel;
 Result := f_WarningText;
end;

function TPrimShutDownForm.pm_GetShutdownTimer: TTimer;
begin
 if (f_ShutdownTimer = nil) then
  f_ShutdownTimer := FindComponent('ShutdownTimer') As TTimer;
 Result := f_ShutdownTimer;
end;

procedure TPrimShutDownForm.System_InitShutdown_Execute(aShotdown: Boolean;
  aCloseInterval: Integer);
//#UC START# *4A8EC9E902CD_4A8EC8AC02EEexec_var*
//#UC END# *4A8EC9E902CD_4A8EC8AC02EEexec_var*
begin
//#UC START# *4A8EC9E902CD_4A8EC8AC02EEexec_impl*
  f_InShutdown := True;
  f_CloseInterval := aCloseInterval;
  if aShotdown then
   WarningText.CCaption := vcmFmt(str_ShotdownWarning, [f_CloseInterval])
  else
   WarningText.CCaption := vcmFmt(str_LogoutWarning, [f_CloseInterval]);
  UpdateSize;
  UpdateCloseButton;
  ShutDownTimer.Enabled := True;
//#UC END# *4A8EC9E902CD_4A8EC8AC02EEexec_impl*
end;//TPrimShutDownForm.System_InitShutdown_Execute

procedure TPrimShutDownForm.System_InitShutdown(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As ISystem_InitShutdown_Params) do
  System_InitShutdown_Execute(Shotdown, CloseInterval);
end;

procedure TPrimShutDownForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_System, nil);
  PublishOpWithResult(en_System, op_InitShutdown, System_InitShutdown, nil, nil);
 end;//with Entities.Entities
end;

procedure TPrimShutDownForm.MakeControls;
begin
 inherited;
 with AddUsertype(sftNoneName,
  str_sftNoneCaption,
  str_sftNoneCaption,
  true,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(sftNoneName
end;

initialization
// Регистрация Tkw_PrimShutDown_Control_WarningText
 Tkw_PrimShutDown_Control_WarningText.Register('контрол::WarningText', TvtLabel);
// Регистрация Tkw_PrimShutDown_Control_WarningText_Push
 Tkw_PrimShutDown_Control_WarningText_Push.Register('контрол::WarningText:push');
// Регистрация Tkw_PrimShutDown_Component_ShutdownTimer
 Tkw_PrimShutDown_Component_ShutdownTimer.Register('компонент::ShutdownTimer', TTimer);
// Инициализация str_sftNoneCaption
 str_sftNoneCaption.Init;

end.