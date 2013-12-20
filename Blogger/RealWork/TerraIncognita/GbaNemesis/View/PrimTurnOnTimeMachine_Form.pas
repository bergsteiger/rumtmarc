unit PrimTurnOnTimeMachine_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/PrimTurnOnTimeMachine_Form.pas"
// Начат: 01.10.2009 22:45
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Работа с документом и списком документов::Document::View::TimeMachine::PrimTurnOnTimeMachine
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
 TPrimTurnOnTimeMachineForm = {form} class(TvcmEntityForm)
 private
 // private fields
   f_rb_totmOnDate : TvtRadioButton;
    {* Поле для свойства rb_totmOnDate}
   f_rb_totmOnCurrentRedation : TvtRadioButton;
    {* Поле для свойства rb_totmOnCurrentRedation}
   f_deDate : TvtDblClickDateEdit;
    {* Поле для свойства deDate}
   f_Controller : InsTurnOnTimeMachine;
    {* Поле для свойства Controller}
 protected
  procedure InitEntities; override;
 private
 // private methods
   procedure CheckControls;
 protected
 // property methods
   function pm_GetRbTotmOnDate: TvtRadioButton;
   function pm_GetRbTotmOnCurrentRedation: TvtRadioButton;
   function pm_GetDeDate: TvtDblClickDateEdit;
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
   class function Make(const aData: InsTurnOnTimeMachine;
    const aParams : IvcmMakeParams = nil;
    aZoneType     : TvcmZoneType = vcm_ztAny;
    aUserType     : TvcmEffectiveUserType = 0;
    aDataSource   : IvcmFormDataSource = nil): IvcmEntityForm; reintroduce;
 private
 // private properties
   property Controller: InsTurnOnTimeMachine
     read f_Controller;
 public
 // public properties
   property rb_totmOnDate: TvtRadioButton
     read pm_GetRbTotmOnDate;
   property rb_totmOnCurrentRedation: TvtRadioButton
     read pm_GetRbTotmOnCurrentRedation;
   property deDate: TvtDblClickDateEdit
     read pm_GetDeDate;
 end;//TPrimTurnOnTimeMachineForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  SysUtils,
  Controls
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
  Tkw_PrimTurnOnTimeMachine_Control_rb_totmOnDate = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола rb_totmOnDate
----
*Пример использования*:
[code]
контрол::rb_totmOnDate TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimTurnOnTimeMachine_Control_rb_totmOnDate

// start class Tkw_PrimTurnOnTimeMachine_Control_rb_totmOnDate

{$If not defined(NoScripts)}
function Tkw_PrimTurnOnTimeMachine_Control_rb_totmOnDate.GetString: AnsiString;
 {-}
begin
 Result := 'rb_totmOnDate';
end;//Tkw_PrimTurnOnTimeMachine_Control_rb_totmOnDate.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimTurnOnTimeMachine_Control_rb_totmOnDate_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола rb_totmOnDate
----
*Пример использования*:
[code]
контрол::rb_totmOnDate:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimTurnOnTimeMachine_Control_rb_totmOnDate_Push

// start class Tkw_PrimTurnOnTimeMachine_Control_rb_totmOnDate_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimTurnOnTimeMachine_Control_rb_totmOnDate_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('rb_totmOnDate');
 inherited;
end;//Tkw_PrimTurnOnTimeMachine_Control_rb_totmOnDate_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimTurnOnTimeMachine_Control_rb_totmOnCurrentRedation = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола rb_totmOnCurrentRedation
----
*Пример использования*:
[code]
контрол::rb_totmOnCurrentRedation TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimTurnOnTimeMachine_Control_rb_totmOnCurrentRedation

// start class Tkw_PrimTurnOnTimeMachine_Control_rb_totmOnCurrentRedation

{$If not defined(NoScripts)}
function Tkw_PrimTurnOnTimeMachine_Control_rb_totmOnCurrentRedation.GetString: AnsiString;
 {-}
begin
 Result := 'rb_totmOnCurrentRedation';
end;//Tkw_PrimTurnOnTimeMachine_Control_rb_totmOnCurrentRedation.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimTurnOnTimeMachine_Control_rb_totmOnCurrentRedation_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола rb_totmOnCurrentRedation
----
*Пример использования*:
[code]
контрол::rb_totmOnCurrentRedation:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimTurnOnTimeMachine_Control_rb_totmOnCurrentRedation_Push

// start class Tkw_PrimTurnOnTimeMachine_Control_rb_totmOnCurrentRedation_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimTurnOnTimeMachine_Control_rb_totmOnCurrentRedation_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('rb_totmOnCurrentRedation');
 inherited;
end;//Tkw_PrimTurnOnTimeMachine_Control_rb_totmOnCurrentRedation_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimTurnOnTimeMachine_Control_deDate = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола deDate
----
*Пример использования*:
[code]
контрол::deDate TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimTurnOnTimeMachine_Control_deDate

// start class Tkw_PrimTurnOnTimeMachine_Control_deDate

{$If not defined(NoScripts)}
function Tkw_PrimTurnOnTimeMachine_Control_deDate.GetString: AnsiString;
 {-}
begin
 Result := 'deDate';
end;//Tkw_PrimTurnOnTimeMachine_Control_deDate.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimTurnOnTimeMachine_Control_deDate_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола deDate
----
*Пример использования*:
[code]
контрол::deDate:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimTurnOnTimeMachine_Control_deDate_Push

// start class Tkw_PrimTurnOnTimeMachine_Control_deDate_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimTurnOnTimeMachine_Control_deDate_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('deDate');
 inherited;
end;//Tkw_PrimTurnOnTimeMachine_Control_deDate_Push.DoDoIt
{$IfEnd} //not NoScripts

procedure TPrimTurnOnTimeMachineForm.CheckControls;
//#UC START# *4AC5E0C000D5_4AC4F8BB0265_var*

 procedure lp_DisableOps;
 var
  l_DisableOps: TnsTurnOnTimeMachineOperations;
 begin
  l_DisableOps := Controller.DisableOps;
  rb_totmOnDate.Enabled := not (ns_ontmDateOp in l_DisableOps);
  deDate.Enabled := not (ns_ontmDateOp in l_DisableOps);
  rb_totmOnCurrentRedation.Enabled := not (ns_ontmCurrentRedactionOp in l_DisableOps);
 end;

//#UC END# *4AC5E0C000D5_4AC4F8BB0265_var*
begin
//#UC START# *4AC5E0C000D5_4AC4F8BB0265_impl*
 Assert(f_Controller <> nil);
 lp_DisableOps;
//#UC END# *4AC5E0C000D5_4AC4F8BB0265_impl*
end;//TPrimTurnOnTimeMachineForm.CheckControls

procedure TPrimTurnOnTimeMachineForm.DoOk;
//#UC START# *4AC5E0A802CA_4AC4F8BB0265_var*
//#UC END# *4AC5E0A802CA_4AC4F8BB0265_var*
begin
//#UC START# *4AC5E0A802CA_4AC4F8BB0265_impl*
 if rb_totmOnDate.Checked then
 begin
  if deDate.IsEmpty then
  begin
   Say(inf_tmooDateNotEntered);
   Exit;
  end// deDate.IsEmpty
  else
  if not deDate.IsValid then
  begin
   Say(err_InvalidDate, [DateToStr(deDate.Date)]);
   Exit;
  end//not deDate.IsValid
  else
   Controller.OnDate(deDate.Date);
 end//rb_totmOnDate.Checked
 else
 if rb_totmOnCurrentRedation.Checked then
  Controller.OnCurrentRedaction
 else
 begin
  Say(inf_tmooItemNotSelected);
  Exit;
 end;//rb_totmOnCurrentRedation.Checked
 ModalResult := mrOk;
//#UC END# *4AC5E0A802CA_4AC4F8BB0265_impl*
end;//TPrimTurnOnTimeMachineForm.DoOk

function TPrimTurnOnTimeMachineForm.pm_GetRbTotmOnDate: TvtRadioButton;
begin
 if (f_rb_totmOnDate = nil) then
  f_rb_totmOnDate := FindComponent('rb_totmOnDate') As TvtRadioButton;
 Result := f_rb_totmOnDate;
end;

function TPrimTurnOnTimeMachineForm.pm_GetRbTotmOnCurrentRedation: TvtRadioButton;
begin
 if (f_rb_totmOnCurrentRedation = nil) then
  f_rb_totmOnCurrentRedation := FindComponent('rb_totmOnCurrentRedation') As TvtRadioButton;
 Result := f_rb_totmOnCurrentRedation;
end;

function TPrimTurnOnTimeMachineForm.pm_GetDeDate: TvtDblClickDateEdit;
begin
 if (f_deDate = nil) then
  f_deDate := FindComponent('deDate') As TvtDblClickDateEdit;
 Result := f_deDate;
end;

class function TPrimTurnOnTimeMachineForm.Make(const aData: InsTurnOnTimeMachine;
  const aParams : IvcmMakeParams = nil;
  aZoneType     : TvcmZoneType = vcm_ztAny;
  aUserType     : TvcmEffectiveUserType = 0;
  aDataSource   : IvcmFormDataSource = nil): IvcmEntityForm;

 procedure AfterCreate(aForm : TPrimTurnOnTimeMachineForm);
 begin
  with aForm do
  begin
//#UC START# *4AC4F912037B_4AC4F8BB0265_impl*
   f_Controller := aData;
   CheckControls;
//#UC END# *4AC4F912037B_4AC4F8BB0265_impl*
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

procedure TPrimTurnOnTimeMachineForm.Result_Cancel_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4A8AD46D0226_4AC4F8BB0265test_var*
//#UC END# *4A8AD46D0226_4AC4F8BB0265test_var*
begin
//#UC START# *4A8AD46D0226_4AC4F8BB0265test_impl*
 aParams.Op.Flag[vcm_ofVisible] := False;
//#UC END# *4A8AD46D0226_4AC4F8BB0265test_impl*
end;//TPrimTurnOnTimeMachineForm.Result_Cancel_Test

procedure TPrimTurnOnTimeMachineForm.Result_Cancel_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4A8AD46D0226_4AC4F8BB0265exec_var*
//#UC END# *4A8AD46D0226_4AC4F8BB0265exec_var*
begin
//#UC START# *4A8AD46D0226_4AC4F8BB0265exec_impl*
 ModalResult := mrCancel;
//#UC END# *4A8AD46D0226_4AC4F8BB0265exec_impl*
end;//TPrimTurnOnTimeMachineForm.Result_Cancel_Execute

procedure TPrimTurnOnTimeMachineForm.Result_Ok_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4A97EBE702F8_4AC4F8BB0265test_var*
//#UC END# *4A97EBE702F8_4AC4F8BB0265test_var*
begin
//#UC START# *4A97EBE702F8_4AC4F8BB0265test_impl*
 aParams.Op.Flag[vcm_ofVisible] := False;
//#UC END# *4A97EBE702F8_4AC4F8BB0265test_impl*
end;//TPrimTurnOnTimeMachineForm.Result_Ok_Test

procedure TPrimTurnOnTimeMachineForm.Result_Ok_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4A97EBE702F8_4AC4F8BB0265getstate_var*
//#UC END# *4A97EBE702F8_4AC4F8BB0265getstate_var*
begin
//#UC START# *4A97EBE702F8_4AC4F8BB0265getstate_impl*
 // - ничего не делаем
//#UC END# *4A97EBE702F8_4AC4F8BB0265getstate_impl*
end;//TPrimTurnOnTimeMachineForm.Result_Ok_GetState

procedure TPrimTurnOnTimeMachineForm.Result_Ok_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4A97EBE702F8_4AC4F8BB0265exec_var*
//#UC END# *4A97EBE702F8_4AC4F8BB0265exec_var*
begin
//#UC START# *4A97EBE702F8_4AC4F8BB0265exec_impl*
 DoOk;
//#UC END# *4A97EBE702F8_4AC4F8BB0265exec_impl*
end;//TPrimTurnOnTimeMachineForm.Result_Ok_Execute

procedure TPrimTurnOnTimeMachineForm.Cleanup;
//#UC START# *479731C50290_4AC4F8BB0265_var*
//#UC END# *479731C50290_4AC4F8BB0265_var*
begin
//#UC START# *479731C50290_4AC4F8BB0265_impl*
 f_Controller := nil;
 inherited;
//#UC END# *479731C50290_4AC4F8BB0265_impl*
end;//TPrimTurnOnTimeMachineForm.Cleanup

procedure TPrimTurnOnTimeMachineForm.ClearFields;
 {-}
begin
 f_Controller := nil;
 inherited;
end;//TPrimTurnOnTimeMachineForm.ClearFields

procedure TPrimTurnOnTimeMachineForm.InitEntities;
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
// Регистрация Tkw_PrimTurnOnTimeMachine_Control_rb_totmOnDate
 Tkw_PrimTurnOnTimeMachine_Control_rb_totmOnDate.Register('контрол::rb_totmOnDate', TvtRadioButton);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimTurnOnTimeMachine_Control_rb_totmOnDate_Push
 Tkw_PrimTurnOnTimeMachine_Control_rb_totmOnDate_Push.Register('контрол::rb_totmOnDate:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimTurnOnTimeMachine_Control_rb_totmOnCurrentRedation
 Tkw_PrimTurnOnTimeMachine_Control_rb_totmOnCurrentRedation.Register('контрол::rb_totmOnCurrentRedation', TvtRadioButton);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimTurnOnTimeMachine_Control_rb_totmOnCurrentRedation_Push
 Tkw_PrimTurnOnTimeMachine_Control_rb_totmOnCurrentRedation_Push.Register('контрол::rb_totmOnCurrentRedation:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimTurnOnTimeMachine_Control_deDate
 Tkw_PrimTurnOnTimeMachine_Control_deDate.Register('контрол::deDate', TvtDblClickDateEdit);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimTurnOnTimeMachine_Control_deDate_Push
 Tkw_PrimTurnOnTimeMachine_Control_deDate_Push.Register('контрол::deDate:push');
{$IfEnd} //not Admin AND not Monitorings

end.