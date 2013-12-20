unit nscCustomReminderModelPart;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Nemesis"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Nemesis/nscCustomReminderModelPart.pas"
// Начат: 18.04.2011 20:11
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<GuiControl::Class>> Shared Delphi For F1::Nemesis::Reminders::TnscCustomReminderModelPart
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Nemesis\nscDefine.inc}

interface

{$If defined(Nemesis)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmExternalInterfaces
  {$IfEnd} //not NoVCM
  ,
  l3ProtoObject
  {$If not defined(NoVCM)}
  ,
  vtReminderModelPart
  {$IfEnd} //not NoVCM
  
  ;
{$IfEnd} //Nemesis

{$If defined(Nemesis)}
type
 InscReminderState = interface(IUnknown)
   ['{5E0FFE44-CACA-4C5C-91A2-F6AE6F764F89}']
   function Get_PopupFormVisible: Boolean;
   property PopupFormVisible: Boolean
     read Get_PopupFormVisible;
 end;//InscReminderState

 TnscReminderState = class(Tl3ProtoObject {$If not defined(NoVCM)}, IvcmBase{$IfEnd} //not NoVCM
 , InscReminderState)
 private
 // private fields
   f_PopupFormVisible : Boolean;
 protected
 // realized methods
   function Get_PopupFormVisible: Boolean;
 public
 // public methods
   constructor Create(aPopupFormVisible: Boolean); reintroduce;
   class function Make(aPopupFormVisible: Boolean): InscReminderState; reintroduce;
     {* Сигнатура фабрики TnscReminderState.Make }
 end;//TnscReminderState

 TnscCustomReminderModelPart = class(TvtReminderModelPart {$If not defined(NoVCM)}, IvcmState{$IfEnd} //not NoVCM
 )
 protected
 // realized methods
   {$If not defined(NoVCM)}
   function SaveState(out theState: IUnknown;
    aStateType: TvcmStateType): Boolean;
   {$IfEnd} //not NoVCM
   {$If not defined(NoVCM)}
   function LoadState(const theState: IUnknown;
    aStateType: TvcmStateType): Boolean;
   {$IfEnd} //not NoVCM
 end;//TnscCustomReminderModelPart
{$IfEnd} //Nemesis

implementation

{$If defined(Nemesis)}
uses
  SysUtils
  ;
{$IfEnd} //Nemesis

{$If defined(Nemesis)}

// start class TnscReminderState

constructor TnscReminderState.Create(aPopupFormVisible: Boolean);
//#UC START# *4DAC655A0360_4DAC647800DC_var*
//#UC END# *4DAC655A0360_4DAC647800DC_var*
begin
//#UC START# *4DAC655A0360_4DAC647800DC_impl*
 inherited Create;
 f_PopupFormVisible := aPopupFormVisible;
//#UC END# *4DAC655A0360_4DAC647800DC_impl*
end;//TnscReminderState.Create

class function TnscReminderState.Make(aPopupFormVisible: Boolean): InscReminderState;
var
 l_Inst : TnscReminderState;
begin
 l_Inst := Create(aPopupFormVisible);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function TnscReminderState.Get_PopupFormVisible: Boolean;
//#UC START# *4DAC65280226_4DAC647800DCget_var*
//#UC END# *4DAC65280226_4DAC647800DCget_var*
begin
//#UC START# *4DAC65280226_4DAC647800DCget_impl*
 Result := f_PopupFormVisible;
//#UC END# *4DAC65280226_4DAC647800DCget_impl*
end;//TnscReminderState.Get_PopupFormVisible

{$If not defined(NoVCM)}
function TnscCustomReminderModelPart.SaveState(out theState: IUnknown;
  aStateType: TvcmStateType): Boolean;
//#UC START# *4683E75B01D8_4DAC62900118_var*
//#UC END# *4683E75B01D8_4DAC62900118_var*
begin
//#UC START# *4683E75B01D8_4DAC62900118_impl*
 Result := (aStateType = vcm_stContent) AND (PopupForm <> nil);
 if Result then
 begin
  theState := TnscReminderState.Make(PopupForm.Visible);
  PopupForm.Visible := false;
 end;//Result
//#UC END# *4683E75B01D8_4DAC62900118_impl*
end;//TnscCustomReminderModelPart.SaveState
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
function TnscCustomReminderModelPart.LoadState(const theState: IUnknown;
  aStateType: TvcmStateType): Boolean;
//#UC START# *4683E79D0331_4DAC62900118_var*
var
 l_St : InscReminderState;
//#UC END# *4683E79D0331_4DAC62900118_var*
begin
//#UC START# *4683E79D0331_4DAC62900118_impl*
 Result := (aStateType = vcm_stContent);
 if Result then
 begin
  if Supports(theState, InscReminderState, l_St) then
   try
    if (PopupForm = nil) then
     Self.ShowPopupFormOnDockLocal := l_St.PopupFormVisible
    else
    begin
     Assert(PopupForm <> nil);
     PopupForm.Visible := l_St.PopupFormVisible;
    end;//PopupForm = nil
   finally
    l_St := nil;
   end;//try..finally
 end;//Result
//#UC END# *4683E79D0331_4DAC62900118_impl*
end;//TnscCustomReminderModelPart.LoadState
{$IfEnd} //not NoVCM

{$IfEnd} //Nemesis

end.