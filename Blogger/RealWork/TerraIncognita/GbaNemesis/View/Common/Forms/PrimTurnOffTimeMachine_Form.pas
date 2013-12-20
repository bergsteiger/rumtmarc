unit PrimTurnOffTimeMachine_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/PrimTurnOffTimeMachine_Form.pas"
// Начат: 01.10.2009 22:43
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Core::Common::View::Common::PrimTurnOffTimeMachine
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmEntityForm
  {$IfEnd} //not NoVCM
  ,
  PresentationInterfaces,
  OfficeLike_Result_Controls,
  vtDblClickDateEdit
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  vtRadioButton,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmBase {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TPrimTurnOffTimeMachineForm = {form} class(TvcmEntityForm)
 private
 // private fields
   f_rb_totmChangeDate : TvtRadioButton;
    {* Поле для свойства rb_totmChangeDate}
   f_rb_totmStayInCurrentRedaction : TvtRadioButton;
    {* Поле для свойства rb_totmStayInCurrentRedaction}
   f_rb_totmGotoActualRedaction : TvtRadioButton;
    {* Поле для свойства rb_totmGotoActualRedaction}
   f_deChangeDate : TvtDblClickDateEdit;
    {* Поле для свойства deChangeDate}
   f_Controller : InsTurnOffTimeMachine;
    {* Поле для свойства Controller}
 protected
  procedure InitEntities; override;
 private
 // private methods
   procedure CheckControls;
 protected
 // property methods
   function pm_GetRbTotmChangeDate: TvtRadioButton;
   function pm_GetRbTotmStayInCurrentRedaction: TvtRadioButton;
   function pm_GetRbTotmGotoActualRedaction: TvtRadioButton;
   function pm_GetDeChangeDate: TvtDblClickDateEdit;
 protected
 // realized methods
   procedure Result_Cancel_Test(const aParams: IvcmTestParamsPrim);
     {* Отмена }
   procedure Result_Cancel_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Отмена }
   procedure Result_Ok_Test(const aParams: IvcmTestParamsPrim);
     {* OK }
   procedure Result_Ok_GetState(var State: TvcmOperationStateIndex);
     {* OK }
   procedure Result_Ok_Execute(const aParams: IvcmExecuteParamsPrim);
     {* OK }
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure ClearFields; override;
 protected
 // protected methods
   procedure DoOk;
 public
 // public methods
   class function Make(const aData: InsTurnOffTimeMachine;
    const aParams : IvcmMakeParams = nil;
    aZoneType     : TvcmZoneType = vcm_ztAny;
    aUserType     : TvcmEffectiveUserType = 0;
    aDataSource   : IvcmFormDataSource = nil): IvcmEntityForm; reintroduce;
 protected
 // protected properties
   property Controller: InsTurnOffTimeMachine
     read f_Controller;
 public
 // public properties
   property rb_totmChangeDate: TvtRadioButton
     read pm_GetRbTotmChangeDate;
   property rb_totmStayInCurrentRedaction: TvtRadioButton
     read pm_GetRbTotmStayInCurrentRedaction;
   property rb_totmGotoActualRedaction: TvtRadioButton
     read pm_GetRbTotmGotoActualRedaction;
   property deChangeDate: TvtDblClickDateEdit
     read pm_GetDeChangeDate;
 end;//TPrimTurnOffTimeMachineForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  DataAdapter,
  bsConvert,
  Controls,
  SysUtils
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  StdRes {a},
  l3Base {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type
  Tkw_PrimTurnOffTimeMachine_Control_rb_totmChangeDate = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола rb_totmChangeDate
----
*Пример использования*:
[code]
контрол::rb_totmChangeDate TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimTurnOffTimeMachine_Control_rb_totmChangeDate

// start class Tkw_PrimTurnOffTimeMachine_Control_rb_totmChangeDate

{$If not defined(NoScripts)}
function Tkw_PrimTurnOffTimeMachine_Control_rb_totmChangeDate.GetString: AnsiString;
 {-}
begin
 Result := 'rb_totmChangeDate';
end;//Tkw_PrimTurnOffTimeMachine_Control_rb_totmChangeDate.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimTurnOffTimeMachine_Control_rb_totmChangeDate_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола rb_totmChangeDate
----
*Пример использования*:
[code]
контрол::rb_totmChangeDate:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimTurnOffTimeMachine_Control_rb_totmChangeDate_Push

// start class Tkw_PrimTurnOffTimeMachine_Control_rb_totmChangeDate_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimTurnOffTimeMachine_Control_rb_totmChangeDate_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('rb_totmChangeDate');
 inherited;
end;//Tkw_PrimTurnOffTimeMachine_Control_rb_totmChangeDate_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimTurnOffTimeMachine_Control_rb_totmStayInCurrentRedaction = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола rb_totmStayInCurrentRedaction
----
*Пример использования*:
[code]
контрол::rb_totmStayInCurrentRedaction TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimTurnOffTimeMachine_Control_rb_totmStayInCurrentRedaction

// start class Tkw_PrimTurnOffTimeMachine_Control_rb_totmStayInCurrentRedaction

{$If not defined(NoScripts)}
function Tkw_PrimTurnOffTimeMachine_Control_rb_totmStayInCurrentRedaction.GetString: AnsiString;
 {-}
begin
 Result := 'rb_totmStayInCurrentRedaction';
end;//Tkw_PrimTurnOffTimeMachine_Control_rb_totmStayInCurrentRedaction.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimTurnOffTimeMachine_Control_rb_totmStayInCurrentRedaction_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола rb_totmStayInCurrentRedaction
----
*Пример использования*:
[code]
контрол::rb_totmStayInCurrentRedaction:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimTurnOffTimeMachine_Control_rb_totmStayInCurrentRedaction_Push

// start class Tkw_PrimTurnOffTimeMachine_Control_rb_totmStayInCurrentRedaction_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimTurnOffTimeMachine_Control_rb_totmStayInCurrentRedaction_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('rb_totmStayInCurrentRedaction');
 inherited;
end;//Tkw_PrimTurnOffTimeMachine_Control_rb_totmStayInCurrentRedaction_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimTurnOffTimeMachine_Control_rb_totmGotoActualRedaction = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола rb_totmGotoActualRedaction
----
*Пример использования*:
[code]
контрол::rb_totmGotoActualRedaction TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimTurnOffTimeMachine_Control_rb_totmGotoActualRedaction

// start class Tkw_PrimTurnOffTimeMachine_Control_rb_totmGotoActualRedaction

{$If not defined(NoScripts)}
function Tkw_PrimTurnOffTimeMachine_Control_rb_totmGotoActualRedaction.GetString: AnsiString;
 {-}
begin
 Result := 'rb_totmGotoActualRedaction';
end;//Tkw_PrimTurnOffTimeMachine_Control_rb_totmGotoActualRedaction.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimTurnOffTimeMachine_Control_rb_totmGotoActualRedaction_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола rb_totmGotoActualRedaction
----
*Пример использования*:
[code]
контрол::rb_totmGotoActualRedaction:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimTurnOffTimeMachine_Control_rb_totmGotoActualRedaction_Push

// start class Tkw_PrimTurnOffTimeMachine_Control_rb_totmGotoActualRedaction_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimTurnOffTimeMachine_Control_rb_totmGotoActualRedaction_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('rb_totmGotoActualRedaction');
 inherited;
end;//Tkw_PrimTurnOffTimeMachine_Control_rb_totmGotoActualRedaction_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimTurnOffTimeMachine_Control_deChangeDate = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола deChangeDate
----
*Пример использования*:
[code]
контрол::deChangeDate TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimTurnOffTimeMachine_Control_deChangeDate

// start class Tkw_PrimTurnOffTimeMachine_Control_deChangeDate

{$If not defined(NoScripts)}
function Tkw_PrimTurnOffTimeMachine_Control_deChangeDate.GetString: AnsiString;
 {-}
begin
 Result := 'deChangeDate';
end;//Tkw_PrimTurnOffTimeMachine_Control_deChangeDate.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimTurnOffTimeMachine_Control_deChangeDate_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола deChangeDate
----
*Пример использования*:
[code]
контрол::deChangeDate:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimTurnOffTimeMachine_Control_deChangeDate_Push

// start class Tkw_PrimTurnOffTimeMachine_Control_deChangeDate_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimTurnOffTimeMachine_Control_deChangeDate_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('deChangeDate');
 inherited;
end;//Tkw_PrimTurnOffTimeMachine_Control_deChangeDate_Push.DoDoIt
{$IfEnd} //not NoScripts

procedure TPrimTurnOffTimeMachineForm.CheckControls;
//#UC START# *4AC5DC1900CE_4AC4F82F0234_var*

 procedure lp_DisableOps;
 var
  l_DisableOps: TnsTurnOffTimeMachineOperations;
 begin
  l_DisableOps := Controller.DisableOps;
  rb_totmChangeDate.Enabled := not (ns_offtmChangeDate in l_DisableOps);
  deChangeDate.Enabled := not (ns_offtmChangeDate in l_DisableOps);
  rb_totmStayInCurrentRedaction.Enabled := not (ns_offtmStayInCurrentRedaction in l_DisableOps);
  rb_totmGotoActualRedaction.Checked := not (ns_offtmGotoActualRedaction in l_DisableOps);
 end;

//#UC END# *4AC5DC1900CE_4AC4F82F0234_var*
begin
//#UC START# *4AC5DC1900CE_4AC4F82F0234_impl*
 Assert(f_Controller <> nil);
 deChangeDate.Date := bsAdapterToBusiness(DefDataAdapter.TimeMachine.Date);
 rb_totmChangeDate.Checked := False;
 lp_DisableOps;
//#UC END# *4AC5DC1900CE_4AC4F82F0234_impl*
end;//TPrimTurnOffTimeMachineForm.CheckControls

function TPrimTurnOffTimeMachineForm.pm_GetRbTotmChangeDate: TvtRadioButton;
begin
 if (f_rb_totmChangeDate = nil) then
  f_rb_totmChangeDate := FindComponent('rb_totmChangeDate') As TvtRadioButton;
 Result := f_rb_totmChangeDate;
end;

function TPrimTurnOffTimeMachineForm.pm_GetRbTotmStayInCurrentRedaction: TvtRadioButton;
begin
 if (f_rb_totmStayInCurrentRedaction = nil) then
  f_rb_totmStayInCurrentRedaction := FindComponent('rb_totmStayInCurrentRedaction') As TvtRadioButton;
 Result := f_rb_totmStayInCurrentRedaction;
end;

function TPrimTurnOffTimeMachineForm.pm_GetRbTotmGotoActualRedaction: TvtRadioButton;
begin
 if (f_rb_totmGotoActualRedaction = nil) then
  f_rb_totmGotoActualRedaction := FindComponent('rb_totmGotoActualRedaction') As TvtRadioButton;
 Result := f_rb_totmGotoActualRedaction;
end;

function TPrimTurnOffTimeMachineForm.pm_GetDeChangeDate: TvtDblClickDateEdit;
begin
 if (f_deChangeDate = nil) then
  f_deChangeDate := FindComponent('deChangeDate') As TvtDblClickDateEdit;
 Result := f_deChangeDate;
end;

procedure TPrimTurnOffTimeMachineForm.DoOk;
//#UC START# *4AC5DDF603C3_4AC4F82F0234_var*
//#UC END# *4AC5DDF603C3_4AC4F82F0234_var*
begin
//#UC START# *4AC5DDF603C3_4AC4F82F0234_impl*
 if rb_totmChangeDate.Checked then
 begin
  if deChangeDate.IsEmpty then
  begin
   Say(inf_tmooDateNotEntered);
   Exit;
  end//deChangeDate.IsEmpty
  else
  if not deChangeDate.IsValid then
  begin
   Say(err_InvalidDate, [DateToStr(deChangeDate.Date)]);
   Exit;
  end;//not deChangeDate.IsValid
  Controller.ChangeDate(deChangeDate.Date);
 end//rb_totmChangeDate.Checked
 else
 if rb_totmStayInCurrentRedaction.Checked then
  Controller.StayInCurrentRedaction
 else
 if rb_totmGotoActualRedaction.Checked then
  Controller.GotoActualRedaction
 else
 begin
  Say(inf_tmooItemNotSelected);
  Exit;
 end;//rb_totmGotoActualRedaction.Checked
 ModalResult := mrOk;
//#UC END# *4AC5DDF603C3_4AC4F82F0234_impl*
end;//TPrimTurnOffTimeMachineForm.DoOk

class function TPrimTurnOffTimeMachineForm.Make(const aData: InsTurnOffTimeMachine;
  const aParams : IvcmMakeParams = nil;
  aZoneType     : TvcmZoneType = vcm_ztAny;
  aUserType     : TvcmEffectiveUserType = 0;
  aDataSource   : IvcmFormDataSource = nil): IvcmEntityForm;

 procedure AfterCreate(aForm : TPrimTurnOffTimeMachineForm);
 begin
  with aForm do
  begin
//#UC START# *4AC4F87001FB_4AC4F82F0234_impl*
   f_Controller := aData;
   CheckControls;
//#UC END# *4AC4F87001FB_4AC4F82F0234_impl*
  end;//with aForm
 end;

var
 l_AC : TvcmInitProc;
 l_ACHack : Pointer absolute l_AC;
begin
 l_AC := l3LocalStub(@AfterCreate);
 try
  Result := inherited Make(aParams, aZoneType, aUserType, nil, aDataSource, vcm_utAny, l_AC);
 finally
  l3FreeLocalStub(l_ACHack);
 end;//try..finally
end;

procedure TPrimTurnOffTimeMachineForm.Result_Cancel_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4A8AD46D0226_4AC4F82F0234test_var*
//#UC END# *4A8AD46D0226_4AC4F82F0234test_var*
begin
//#UC START# *4A8AD46D0226_4AC4F82F0234test_impl*
 aParams.Op.Flag[vcm_ofVisible] := False;
//#UC END# *4A8AD46D0226_4AC4F82F0234test_impl*
end;//TPrimTurnOffTimeMachineForm.Result_Cancel_Test

procedure TPrimTurnOffTimeMachineForm.Result_Cancel_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4A8AD46D0226_4AC4F82F0234exec_var*
//#UC END# *4A8AD46D0226_4AC4F82F0234exec_var*
begin
//#UC START# *4A8AD46D0226_4AC4F82F0234exec_impl*
 ModalResult := mrCancel;
//#UC END# *4A8AD46D0226_4AC4F82F0234exec_impl*
end;//TPrimTurnOffTimeMachineForm.Result_Cancel_Execute

procedure TPrimTurnOffTimeMachineForm.Result_Ok_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4A97EBE702F8_4AC4F82F0234test_var*
//#UC END# *4A97EBE702F8_4AC4F82F0234test_var*
begin
//#UC START# *4A97EBE702F8_4AC4F82F0234test_impl*
 aParams.Op.Flag[vcm_ofVisible] := False;
//#UC END# *4A97EBE702F8_4AC4F82F0234test_impl*
end;//TPrimTurnOffTimeMachineForm.Result_Ok_Test

procedure TPrimTurnOffTimeMachineForm.Result_Ok_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4A97EBE702F8_4AC4F82F0234getstate_var*
//#UC END# *4A97EBE702F8_4AC4F82F0234getstate_var*
begin
//#UC START# *4A97EBE702F8_4AC4F82F0234getstate_impl*
 // - ничего не делаем
//#UC END# *4A97EBE702F8_4AC4F82F0234getstate_impl*
end;//TPrimTurnOffTimeMachineForm.Result_Ok_GetState

procedure TPrimTurnOffTimeMachineForm.Result_Ok_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4A97EBE702F8_4AC4F82F0234exec_var*
//#UC END# *4A97EBE702F8_4AC4F82F0234exec_var*
begin
//#UC START# *4A97EBE702F8_4AC4F82F0234exec_impl*
 DoOk;
//#UC END# *4A97EBE702F8_4AC4F82F0234exec_impl*
end;//TPrimTurnOffTimeMachineForm.Result_Ok_Execute

procedure TPrimTurnOffTimeMachineForm.Cleanup;
//#UC START# *479731C50290_4AC4F82F0234_var*
//#UC END# *479731C50290_4AC4F82F0234_var*
begin
//#UC START# *479731C50290_4AC4F82F0234_impl*
 f_Controller := nil;
 inherited;
//#UC END# *479731C50290_4AC4F82F0234_impl*
end;//TPrimTurnOffTimeMachineForm.Cleanup

procedure TPrimTurnOffTimeMachineForm.ClearFields;
 {-}
begin
 f_Controller := nil;
 inherited;
end;//TPrimTurnOffTimeMachineForm.ClearFields

procedure TPrimTurnOffTimeMachineForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_Result, nil);
  PublishOp(en_Result, op_Cancel, Result_Cancel_Execute, Result_Cancel_Test, nil);
  PublishOp(en_Result, op_Ok, Result_Ok_Execute, Result_Ok_Test, Result_Ok_GetState);
 end;//with Entities.Entities
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimTurnOffTimeMachine_Control_rb_totmChangeDate
 Tkw_PrimTurnOffTimeMachine_Control_rb_totmChangeDate.Register('контрол::rb_totmChangeDate', TvtRadioButton);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimTurnOffTimeMachine_Control_rb_totmChangeDate_Push
 Tkw_PrimTurnOffTimeMachine_Control_rb_totmChangeDate_Push.Register('контрол::rb_totmChangeDate:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimTurnOffTimeMachine_Control_rb_totmStayInCurrentRedaction
 Tkw_PrimTurnOffTimeMachine_Control_rb_totmStayInCurrentRedaction.Register('контрол::rb_totmStayInCurrentRedaction', TvtRadioButton);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimTurnOffTimeMachine_Control_rb_totmStayInCurrentRedaction_Push
 Tkw_PrimTurnOffTimeMachine_Control_rb_totmStayInCurrentRedaction_Push.Register('контрол::rb_totmStayInCurrentRedaction:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimTurnOffTimeMachine_Control_rb_totmGotoActualRedaction
 Tkw_PrimTurnOffTimeMachine_Control_rb_totmGotoActualRedaction.Register('контрол::rb_totmGotoActualRedaction', TvtRadioButton);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimTurnOffTimeMachine_Control_rb_totmGotoActualRedaction_Push
 Tkw_PrimTurnOffTimeMachine_Control_rb_totmGotoActualRedaction_Push.Register('контрол::rb_totmGotoActualRedaction:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimTurnOffTimeMachine_Control_deChangeDate
 Tkw_PrimTurnOffTimeMachine_Control_deChangeDate.Register('контрол::deChangeDate', TvtDblClickDateEdit);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimTurnOffTimeMachine_Control_deChangeDate_Push
 Tkw_PrimTurnOffTimeMachine_Control_deChangeDate_Push.Register('контрол::deChangeDate:push');
{$IfEnd} //not Admin AND not Monitorings

end.