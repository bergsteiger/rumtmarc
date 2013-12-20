unit vtRemindersLine;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "VT$Rem"
// Модуль: "w:/common/components/gui/Garant/VT/vtRemindersLine.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::VT$Rem::Reminders::TvtRemindersLine
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\VT\vtDefine.inc}

interface

uses
  l3Interfaces,
  l3InterfacedComponent,
  Messages,
  Forms,
  Windows,
  vtCustomReminder,
  vtReminderUtils,
  vtRemindersList,
  Classes,
  Types
  ;

const
  {  }
 rl_wmUpdatePositions = WM_USER + 1;
 rl_wmCloseBaloons = WM_USER + 2;

type
 TvtRemindersLine = class(Tl3InterfacedComponent, Il3WndProcListener, Il3CBTListener, IvtRemindersLine)
 private
 // private fields
   f_Handle : HWND;
   f_IsMoving : Boolean;
   f_WasMinimized : Boolean;
   f_Form : TCustomForm;
   f_PosX : integer;
   f_PosY : integer;
   f_LeftDelta : integer;
   f_TopDelta : integer;
   f_BottomDelta : integer;
   f_RightDelta : integer;
   f_Reminders : TvtRemindersList;
    {* Поле для свойства Reminders}
 private
 // private methods
   procedure MainWndProc(var Message: TMessage);
 protected
 // property methods
   procedure pm_SetReminders(aValue: TvtRemindersList);
   function pm_GetFirstReminder: TvtCustomReminder;
   function pm_GetPosX: integer;
   procedure pm_SetPosX(aValue: integer);
   function pm_GetPosY: integer;
   procedure pm_SetPosY(aValue: integer);
 protected
 // realized methods
   procedure WndProcListenerNotify(Msg: PCWPStruct;
     var theResult: Tl3HookProcResult);
   procedure CBTListenerNotify(Code: Integer;
     WParam: WPARAM;
     LParam: LPARAM;
     var theResult: Tl3HookProcResult);
   function Get_PosX: integer;
   procedure Set_PosX(aValue: integer);
   function Get_PosY: integer;
   procedure Set_PosY(aValue: integer);
   function Get_Bounds: TRect;
   function Get_IsMoving: Boolean;
   function Get_PopupFormRect: TRect;
   procedure CloseBaloons;
   procedure UpdatePositions;
     {* при появлении очередного напоминания корректирует позиции }
   procedure MoveLine(dX: Integer;
    dY: Integer;
    RememberRatio: Boolean);
   procedure PlaceReminders;
   procedure RestoreRatio;
   procedure CheckBounds(var aBounds: TRect);
   procedure CloseBaloonsPrim;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure Loaded; override;
 public
 // overridden public methods
   constructor Create(AOwner: TComponent); override;
 protected
 // protected methods
   function MainFormHandle: HWND;
   procedure SetPos(aPosX: Integer;
     aPosY: Integer);
   procedure ReadPosition(var aLeft: Integer;
     var aRight: Integer;
     var aTop: Integer;
     var aBottom: Integer);
   procedure WritePosition(aLeft: Integer;
     aRight: Integer;
     aTop: Integer;
     aBottom: Integer);
 public
 // public methods
   function IsReminders: Boolean;
   procedure SendCloseBaloons;
   procedure AddReminder(aReminder: TvtCustomReminder);
 public
 // public properties
   property Reminders: TvtRemindersList
     read f_Reminders
     write pm_SetReminders;
   property FirstReminder: TvtCustomReminder
     read pm_GetFirstReminder;
   property PosX: integer
     read pm_GetPosX
     write pm_SetPosX;
   property PosY: integer
     read pm_GetPosY
     write pm_SetPosY;
 end;//TvtRemindersLine

implementation

uses
  l3ListenersManager,
  Controls
  {$If not defined(NoVCM)}
  ,
  vcmMainForm
  {$IfEnd} //not NoVCM
  ,
  abssubtree,
  vtDateEdit,
  l3MinMax,
  afwFacade,
  l3Base
  ;

const
   { private }
  cRemindersGap = 2;

// start class TvtRemindersLine

procedure TvtRemindersLine.MainWndProc(var Message: TMessage);
//#UC START# *4F8D2A1B02BA_4DA833FF0099_var*
var
 l_Rem: TvtCustomReminder;
//#UC END# *4F8D2A1B02BA_4DA833FF0099_var*
begin
//#UC START# *4F8D2A1B02BA_4DA833FF0099_impl*
 try
  case Message.Msg of
   rl_wmUpdatePositions:
    RestoreRatio;
   rl_wmCloseBaloons:
    CloseBaloons;
   else
    with Message do
     Result := DefWindowProc(f_Handle, Msg, WParam, LParam);
  end;//case Message.Msg of
 except
  Application.HandleException(Self);
 end;//try..except
//#UC END# *4F8D2A1B02BA_4DA833FF0099_impl*
end;//TvtRemindersLine.MainWndProc

function TvtRemindersLine.MainFormHandle: HWND;
//#UC START# *4F8D2A81033A_4DA833FF0099_var*
//#UC END# *4F8D2A81033A_4DA833FF0099_var*
begin
//#UC START# *4F8D2A81033A_4DA833FF0099_impl*
 Result := 0;
 if not Assigned(f_Form) then
  f_Form := GetParentForm(TWinControl(Owner));
 if Assigned(f_Form) and f_Form.HandleAllocated then
  Result := f_Form.Handle;
//#UC END# *4F8D2A81033A_4DA833FF0099_impl*
end;//TvtRemindersLine.MainFormHandle

function TvtRemindersLine.IsReminders: Boolean;
//#UC START# *4F8D2B8C035D_4DA833FF0099_var*
//#UC END# *4F8D2B8C035D_4DA833FF0099_var*
begin
//#UC START# *4F8D2B8C035D_4DA833FF0099_impl*
 Result := Reminders.Count > 0;
//#UC END# *4F8D2B8C035D_4DA833FF0099_impl*
end;//TvtRemindersLine.IsReminders

procedure TvtRemindersLine.SendCloseBaloons;
//#UC START# *4F8D2BC20012_4DA833FF0099_var*
//#UC END# *4F8D2BC20012_4DA833FF0099_var*
begin
//#UC START# *4F8D2BC20012_4DA833FF0099_impl*
 PostMessage(f_Handle, rl_wmCloseBaloons, 0, 0);
//#UC END# *4F8D2BC20012_4DA833FF0099_impl*
end;//TvtRemindersLine.SendCloseBaloons

procedure TvtRemindersLine.AddReminder(aReminder: TvtCustomReminder);
//#UC START# *4F8D2C3C0096_4DA833FF0099_var*
//#UC END# *4F8D2C3C0096_4DA833FF0099_var*
begin
//#UC START# *4F8D2C3C0096_4DA833FF0099_impl*
 Reminders.Add(aReminder);
 RestoreRatio;
 UpdatePositions;
//#UC END# *4F8D2C3C0096_4DA833FF0099_impl*
end;//TvtRemindersLine.AddReminder

procedure TvtRemindersLine.SetPos(aPosX: Integer;
  aPosY: Integer);
//#UC START# *4F8D2CF102A0_4DA833FF0099_var*
var
 l_Bounds: TRect;
//#UC END# *4F8D2CF102A0_4DA833FF0099_var*
begin
//#UC START# *4F8D2CF102A0_4DA833FF0099_impl*
 f_PosX := aPosX;
 f_PosY := aPosY;

 l_Bounds := IvtRemindersLine(Self).Bounds;
 CheckBounds(l_Bounds);

 f_PosX := l_Bounds.Left;
 f_PosY := l_Bounds.Top;

 PlaceReminders;
//#UC END# *4F8D2CF102A0_4DA833FF0099_impl*
end;//TvtRemindersLine.SetPos

procedure TvtRemindersLine.ReadPosition(var aLeft: Integer;
  var aRight: Integer;
  var aTop: Integer;
  var aBottom: Integer);
//#UC START# *4F8D2D3500F6_4DA833FF0099_var*
//#UC END# *4F8D2D3500F6_4DA833FF0099_var*
begin
//#UC START# *4F8D2D3500F6_4DA833FF0099_impl*
 aLeft := f_LeftDelta;
 aRight := f_RightDelta;
 aTop := f_TopDelta;
 aBottom := f_BottomDelta;
//#UC END# *4F8D2D3500F6_4DA833FF0099_impl*
end;//TvtRemindersLine.ReadPosition

procedure TvtRemindersLine.WritePosition(aLeft: Integer;
  aRight: Integer;
  aTop: Integer;
  aBottom: Integer);
//#UC START# *4F8D2D7901D0_4DA833FF0099_var*
//#UC END# *4F8D2D7901D0_4DA833FF0099_var*
begin
//#UC START# *4F8D2D7901D0_4DA833FF0099_impl*
 f_LeftDelta := aLeft;
 f_RightDelta := aRight;
 f_TopDelta := aTop;
 f_BottomDelta := aBottom;
//#UC END# *4F8D2D7901D0_4DA833FF0099_impl*
end;//TvtRemindersLine.WritePosition

procedure TvtRemindersLine.pm_SetReminders(aValue: TvtRemindersList);
//#UC START# *4F8D27C30213_4DA833FF0099set_var*
//#UC END# *4F8D27C30213_4DA833FF0099set_var*
begin
//#UC START# *4F8D27C30213_4DA833FF0099set_impl*
 f_Reminders.Assign(aValue);
//#UC END# *4F8D27C30213_4DA833FF0099set_impl*
end;//TvtRemindersLine.pm_SetReminders

function TvtRemindersLine.pm_GetFirstReminder: TvtCustomReminder;
//#UC START# *4F8D287E0368_4DA833FF0099get_var*
//#UC END# *4F8D287E0368_4DA833FF0099get_var*
begin
//#UC START# *4F8D287E0368_4DA833FF0099get_impl*
 if IsReminders
  then Result := Reminders[0]
  else Result := nil;
//#UC END# *4F8D287E0368_4DA833FF0099get_impl*
end;//TvtRemindersLine.pm_GetFirstReminder

function TvtRemindersLine.pm_GetPosX: integer;
//#UC START# *4F8D6F500279_4DA833FF0099get_var*
//#UC END# *4F8D6F500279_4DA833FF0099get_var*
begin
//#UC START# *4F8D6F500279_4DA833FF0099get_impl*
 Result := f_PosX;
//#UC END# *4F8D6F500279_4DA833FF0099get_impl*
end;//TvtRemindersLine.pm_GetPosX

procedure TvtRemindersLine.pm_SetPosX(aValue: integer);
//#UC START# *4F8D6F500279_4DA833FF0099set_var*
//#UC END# *4F8D6F500279_4DA833FF0099set_var*
begin
//#UC START# *4F8D6F500279_4DA833FF0099set_impl*
 SetPos(aValue, f_PosY);
//#UC END# *4F8D6F500279_4DA833FF0099set_impl*
end;//TvtRemindersLine.pm_SetPosX

function TvtRemindersLine.pm_GetPosY: integer;
//#UC START# *4F8D6FAA03D9_4DA833FF0099get_var*
//#UC END# *4F8D6FAA03D9_4DA833FF0099get_var*
begin
//#UC START# *4F8D6FAA03D9_4DA833FF0099get_impl*
 Result := f_PosY;
//#UC END# *4F8D6FAA03D9_4DA833FF0099get_impl*
end;//TvtRemindersLine.pm_GetPosY

procedure TvtRemindersLine.pm_SetPosY(aValue: integer);
//#UC START# *4F8D6FAA03D9_4DA833FF0099set_var*
//#UC END# *4F8D6FAA03D9_4DA833FF0099set_var*
begin
//#UC START# *4F8D6FAA03D9_4DA833FF0099set_impl*
 SetPos(f_PosX, aValue);
//#UC END# *4F8D6FAA03D9_4DA833FF0099set_impl*
end;//TvtRemindersLine.pm_SetPosY

procedure TvtRemindersLine.WndProcListenerNotify(Msg: PCWPStruct;
  var theResult: Tl3HookProcResult);
//#UC START# *4F79CF3400BB_4DA833FF0099_var*
  procedure DoWMSize(const aMsg: PCWPStruct);
  begin
   if (Owner is TWinControl) then
    if TWinControl(Owner).HandleAllocated and
      (TWinControl(Owner).Handle = THandle(aMsg.hwnd)) and
      not f_WasMinimized then
    begin
     // Откорректировали размеры, установим новые позиции
     //if CheckBounds then
      // Мы не можем сразу отреагировать, т.к. окно ещё не модифицировало свои
      // размеры (MSDN: CallWndProc Function - The system calls this function
      // before calling the window procedure to process a message sent to the
      // thread:
      PostMessage(f_Handle, rl_wmUpdatePositions, 0, 0);
    end;//if HandleAllocated and (
  end;

  procedure DoWMActivateApp(const aMsg: PCWPStruct);
  begin
   if (Owner is TWinControl) then
    with TWinControl(Owner) do
     if HandleAllocated and (Handle = THandle(aMsg.hwnd)) then
      if aMsg.WParam = 0 then
       SendCloseBaloons;
  end;

  procedure DoWMActivate(const aMsg: PCWPStruct);

   function WinParentWindow(aWindow: THandle): THandle;
   begin
    Result := aWindow;
    while (aWindow > 0) do
    begin
     Result := aWindow;
     aWindow := GetParent(aWindow);
    end;//aWindow > 0
   end; //WinParentWindow

  var
   l_Index: Integer;
   l_HandleMy, l_HandleTheir: THandle;
   l_Rem: TvtCustomReminder;
   l_WinCtrl: TWinControl;
  begin //DoWMActivate
   if IsReminders then
   begin
    l_HandleMy := THandle(aMsg.hwnd);
    l_HandleTheir := THandle(aMsg.lParam);

    if (aMsg.WParam = WA_INACTIVE) and
       (l_HandleTheir <> MainFormHandle) and
       (l_HandleTheir <> WinParentWindow(MainFormHandle)) then
     for l_Index := 0 to Pred(f_Reminders.Count) do
     begin
      l_Rem := f_Reminders[l_Index];
      if Assigned(l_Rem) and l_Rem.IsBaloonVisible then
       if l_HandleMy = l_Rem.GetBaloonHandle then
       begin  // сообщение пришло нашему баллону
        SendCloseBaloons;
        Exit;
       end;//l_HandleMy = l_Rem.GetBaloonHandle
     end;//for l_Index

    if (l_HandleMy <> MainFormHandle) and (WinParentWindow(l_HandleMy) <> MainFormHandle) then
     Exit; // сообщение отправлено чужому окну - не интересует

    if l_HandleTheir = 0 then
     Exit; // ушли в другое приложение - обработается в WM_ACTIVATEAPP

    for l_Index := 0 to Pred(f_Reminders.Count) do
    begin
     l_Rem := f_Reminders[l_Index];
     if Assigned(l_Rem) and l_Rem.IsBaloonVisible then
      if l_HandleTheir = l_Rem.GetBaloonHandle then
       Exit; // переключились на баллон - скрывать не нужно
    end;

    if aMsg.WParam = WA_INACTIVE then
     if (GetParent(l_HandleTheir) = 0) then // главное окно (или баллон в консольной версии)
     begin
      l_WinCtrl := FindControl(l_HandleTheir);
      if Assigned(l_WinCtrl) and (l_WinCtrl is TvcmMainForm) then // все-таки главное окно
       SendCloseBaloons;
     end;
   end;
  end; //DoWMActivate

  procedure DoWMWindowPosChanged(const aMsg: PCWPStruct);
  //mdp.garant.ru/pages/viewpage.action?pageId=318377771
  var
   l_WndCtrl: TWinControl;
   l_WndPos: PWindowPos;
  begin
   l_WndPos := Pointer(aMsg.LParam);
   if l_WndPos.Flags and SWP_SHOWWINDOW = 0 then
    Exit;

   l_WndCtrl := FindControl(aMsg.hwnd);
   if Assigned(l_WndCtrl) and ((l_WndCtrl is TAbsSubTree) or (l_WndCtrl is TPopupCalendar)) then
    SendCloseBaloons;
  end; //DoWMWindowPosChanged
//#UC END# *4F79CF3400BB_4DA833FF0099_var*
begin
//#UC START# *4F79CF3400BB_4DA833FF0099_impl*
 case Msg.Message of
  WM_SIZE:
   DoWMSize(Msg);
  WM_ACTIVATEAPP:
   DoWMActivateApp(Msg);
  WM_ACTIVATE:
   DoWMActivate(Msg);
  WM_WINDOWPOSCHANGED:
   DoWMWindowPosChanged(Msg); //mdp.garant.ru/pages/viewpage.action?pageId=318377771
  else
   //
 end;//case aMsg.Message
//#UC END# *4F79CF3400BB_4DA833FF0099_impl*
end;//TvtRemindersLine.WndProcListenerNotify

procedure TvtRemindersLine.CBTListenerNotify(Code: Integer;
  WParam: WPARAM;
  LParam: LPARAM;
  var theResult: Tl3HookProcResult);
//#UC START# *4F79CF5C01BB_4DA833FF0099_var*
//#UC END# *4F79CF5C01BB_4DA833FF0099_var*
begin
//#UC START# *4F79CF5C01BB_4DA833FF0099_impl*
 case Code of
  HCBT_MINMAX:
   if (THandle(WParam) = MainFormHandle) then
    if (LoWord(LParam) and SW_MINIMIZE = SW_MINIMIZE) then
    begin
     f_WasMinimized := True;
     CloseBaloons; // http://mdp.garant.ru/pages/viewpage.action?pageId=294592065
    end//LoWord(LParam) and SW_MINIMIZE = SW_MINIMIZE
    else
     if LoWord(LParam) and SW_RESTORE = SW_RESTORE then
      f_WasMinimized := False;
 end;//case Code of
//#UC END# *4F79CF5C01BB_4DA833FF0099_impl*
end;//TvtRemindersLine.CBTListenerNotify

function TvtRemindersLine.Get_PosX: integer;
//#UC START# *4F8BDEAE03BF_4DA833FF0099get_var*
//#UC END# *4F8BDEAE03BF_4DA833FF0099get_var*
begin
//#UC START# *4F8BDEAE03BF_4DA833FF0099get_impl*
 Result := pm_GetPosX;
//#UC END# *4F8BDEAE03BF_4DA833FF0099get_impl*
end;//TvtRemindersLine.Get_PosX

procedure TvtRemindersLine.Set_PosX(aValue: integer);
//#UC START# *4F8BDEAE03BF_4DA833FF0099set_var*
//#UC END# *4F8BDEAE03BF_4DA833FF0099set_var*
begin
//#UC START# *4F8BDEAE03BF_4DA833FF0099set_impl*
 pm_SetPosX(aValue);
//#UC END# *4F8BDEAE03BF_4DA833FF0099set_impl*
end;//TvtRemindersLine.Set_PosX

function TvtRemindersLine.Get_PosY: integer;
//#UC START# *4F8BDEC803B6_4DA833FF0099get_var*
//#UC END# *4F8BDEC803B6_4DA833FF0099get_var*
begin
//#UC START# *4F8BDEC803B6_4DA833FF0099get_impl*
 Result := pm_GetPosY;
//#UC END# *4F8BDEC803B6_4DA833FF0099get_impl*
end;//TvtRemindersLine.Get_PosY

procedure TvtRemindersLine.Set_PosY(aValue: integer);
//#UC START# *4F8BDEC803B6_4DA833FF0099set_var*
//#UC END# *4F8BDEC803B6_4DA833FF0099set_var*
begin
//#UC START# *4F8BDEC803B6_4DA833FF0099set_impl*
 pm_SetPosY(aValue);
//#UC END# *4F8BDEC803B6_4DA833FF0099set_impl*
end;//TvtRemindersLine.Set_PosY

function TvtRemindersLine.Get_Bounds: TRect;
//#UC START# *4F8BDEEF0269_4DA833FF0099get_var*
var
 l_Index: Integer;
//#UC END# *4F8BDEEF0269_4DA833FF0099get_var*
begin
//#UC START# *4F8BDEEF0269_4DA833FF0099get_impl*
 Result := Rect(f_PosX, f_PosY, f_PosX, f_PosY);
 for l_Index := 0 to Pred(f_Reminders.Count) do
  with f_Reminders[l_Index] do
   if Visible then
   begin
    if l_Index < Pred(f_Reminders.Count) then
     Inc(Result.Right, cRemindersGap + Width)
    else
     Inc(Result.Right, Width);
    Result.Bottom := Max(Result.Bottom, Result.Top + Height);
   end;//if Visible then
//#UC END# *4F8BDEEF0269_4DA833FF0099get_impl*
end;//TvtRemindersLine.Get_Bounds

function TvtRemindersLine.Get_IsMoving: Boolean;
//#UC START# *4F8BDF1E017F_4DA833FF0099get_var*
//#UC END# *4F8BDF1E017F_4DA833FF0099get_var*
begin
//#UC START# *4F8BDF1E017F_4DA833FF0099get_impl*
 Result := f_IsMoving;
//#UC END# *4F8BDF1E017F_4DA833FF0099get_impl*
end;//TvtRemindersLine.Get_IsMoving

function TvtRemindersLine.Get_PopupFormRect: TRect;
//#UC START# *4F8BDF470396_4DA833FF0099get_var*
var
 l_Index : Integer;
//#UC END# *4F8BDF470396_4DA833FF0099get_var*
begin
//#UC START# *4F8BDF470396_4DA833FF0099get_impl*
 Result := Rect(0, 0, 0, 0);
 for l_Index := 0 to Pred(f_Reminders.Count) do
 begin
  Result := f_Reminders[l_Index].PopupFormRect;
  if not IsRectEmpty(Result) then Break;
 end;//for l_Index
//#UC END# *4F8BDF470396_4DA833FF0099get_impl*
end;//TvtRemindersLine.Get_PopupFormRect

procedure TvtRemindersLine.CloseBaloons;
//#UC START# *4F8BDF8701EC_4DA833FF0099_var*
//#UC END# *4F8BDF8701EC_4DA833FF0099_var*
begin
//#UC START# *4F8BDF8701EC_4DA833FF0099_impl*
 CloseBaloonsPrim;
 CloseAllReminderBaloons(Self);
//#UC END# *4F8BDF8701EC_4DA833FF0099_impl*
end;//TvtRemindersLine.CloseBaloons

procedure TvtRemindersLine.UpdatePositions;
//#UC START# *4F8BDFB800D3_4DA833FF0099_var*
//#UC END# *4F8BDFB800D3_4DA833FF0099_var*
begin
//#UC START# *4F8BDFB800D3_4DA833FF0099_impl*
 if (csLoading in ComponentState) or f_IsMoving then
  Exit;
 f_IsMoving := True;
 try
  PlaceReminders;
 finally
  f_IsMoving := False;
 end;
//#UC END# *4F8BDFB800D3_4DA833FF0099_impl*
end;//TvtRemindersLine.UpdatePositions

procedure TvtRemindersLine.MoveLine(dX: Integer;
  dY: Integer;
  RememberRatio: Boolean);
//#UC START# *4F8BE02B0106_4DA833FF0099_var*
var
 l_Bounds: TRect;
//#UC END# *4F8BE02B0106_4DA833FF0099_var*
begin
//#UC START# *4F8BE02B0106_4DA833FF0099_impl*
 SetPos(f_PosX + dX, f_PosY + dY);
 if RememberRatio then
 begin
  f_LeftDelta := f_PosX;
  f_TopDelta := f_PosY;
  l_Bounds := IvtRemindersLine(Self).Bounds;
  with TWinControl(Owner) do
  begin
   f_RightDelta := ClientWidth - l_Bounds.Right;
   f_BottomDelta := ClientHeight - l_Bounds.Bottom;
  end;
 end;
//#UC END# *4F8BE02B0106_4DA833FF0099_impl*
end;//TvtRemindersLine.MoveLine

procedure TvtRemindersLine.PlaceReminders;
//#UC START# *4F8BE06103DC_4DA833FF0099_var*
var
 l_Loop,
 l_X, l_Y: Integer;
 l_NeedPM: Boolean;
 l_Rem: TvtCustomReminder;
//#UC END# *4F8BE06103DC_4DA833FF0099_var*
begin
//#UC START# *4F8BE06103DC_4DA833FF0099_impl*
 l_X := f_PosX;
 l_Y := f_PosY;
 l_NeedPM := False;
 for l_Loop := 0 to f_Reminders.Count - 1 do
 begin
  l_Rem := f_Reminders[l_Loop];
  if l_Rem.Visible then
   begin
//    l_Rem.SetPos(l_X - l_Rem.ImageHorOffset, l_Y);
//    Inc(l_X, cRemindersGap + l_Rem.ImageWidth);
    l_Rem.SetPos(l_X, l_Y);
    Inc(l_X, cRemindersGap + l_Rem.Width);
    if l_Rem.Capturing then
     l_NeedPM := True;
   end;
 end;

 if l_NeedPM then
  afw.ProcessMessages;
//#UC END# *4F8BE06103DC_4DA833FF0099_impl*
end;//TvtRemindersLine.PlaceReminders

procedure TvtRemindersLine.RestoreRatio;
//#UC START# *4F8BE0A10340_4DA833FF0099_var*
var
 l_Bounds: TRect;
 l_NewX, l_NewY, l_RightDelta, l_BottomDelta: Integer;
 l_HRatio, l_VRatio: Single;
//#UC END# *4F8BE0A10340_4DA833FF0099_var*
begin
//#UC START# *4F8BE0A10340_4DA833FF0099_impl*
 l_Bounds := IvtRemindersLine(Self).Bounds;
 with TWinControl(Owner) do
 begin
  l_RightDelta := ClientWidth - l_Bounds.Right;
  l_BottomDelta := ClientHeight - l_Bounds.Bottom;
 end;

 l_NewX := MulDiv(f_LeftDelta, f_PosX + l_RightDelta, f_LeftDelta + f_RightDelta);
 l_NewY := MulDiv(f_TopDelta, f_PosY + l_BottomDelta, f_TopDelta + f_BottomDelta);

 SetPos(l_NewX, l_NewY);
//#UC END# *4F8BE0A10340_4DA833FF0099_impl*
end;//TvtRemindersLine.RestoreRatio

procedure TvtRemindersLine.CheckBounds(var aBounds: TRect);
//#UC START# *4F8BE0B103DC_4DA833FF0099_var*
var
 l_ParentRect: TRect;
 l_First: TvtCustomReminder;
//#UC END# *4F8BE0B103DC_4DA833FF0099_var*
begin
//#UC START# *4F8BE0B103DC_4DA833FF0099_impl*
 if not IsReminders then
  Exit;

 l_ParentRect := f_Reminders[0].Parent.ClientRect;

 vtCorrectBounds(l_ParentRect, aBounds);
//#UC END# *4F8BE0B103DC_4DA833FF0099_impl*
end;//TvtRemindersLine.CheckBounds

procedure TvtRemindersLine.CloseBaloonsPrim;
//#UC START# *4F8E9AFF013E_4DA833FF0099_var*
var
 l_Index : Integer;
//#UC END# *4F8E9AFF013E_4DA833FF0099_var*
begin
//#UC START# *4F8E9AFF013E_4DA833FF0099_impl*
 if (f_Reminders <> nil) then
  for l_Index := 0 to Pred(f_Reminders.Count) do
   f_Reminders[l_Index].CloseBaloon;
//#UC END# *4F8E9AFF013E_4DA833FF0099_impl*
end;//TvtRemindersLine.CloseBaloonsPrim

procedure TvtRemindersLine.Cleanup;
//#UC START# *479731C50290_4DA833FF0099_var*
//#UC END# *479731C50290_4DA833FF0099_var*
begin
//#UC START# *479731C50290_4DA833FF0099_impl*
 DeallocateHWnd(f_Handle);
 Tl3ListenersManager.RemoveWndProcListener(Self);
 Tl3ListenersManager.RemoveCBTListener(Self);
 f_Reminders.RemindersLine := nil;
 l3Free(f_Reminders);
 inherited;
//#UC END# *479731C50290_4DA833FF0099_impl*
end;//TvtRemindersLine.Cleanup

constructor TvtRemindersLine.Create(AOwner: TComponent);
//#UC START# *47D1602000C6_4DA833FF0099_var*
//#UC END# *47D1602000C6_4DA833FF0099_var*
begin
//#UC START# *47D1602000C6_4DA833FF0099_impl*
 inherited Create(AOwner);
 f_Reminders := TvtRemindersList.Create(Self);
 f_WasMinimized := False;
 Tl3ListenersManager.AddWndProcListener(Self);
 Tl3ListenersManager.AddCBTListener(Self);
 f_Handle := AllocateHWnd(MainWndProc);
//#UC END# *47D1602000C6_4DA833FF0099_impl*
end;//TvtRemindersLine.Create

procedure TvtRemindersLine.Loaded;
//#UC START# *484516C00214_4DA833FF0099_var*
//#UC END# *484516C00214_4DA833FF0099_var*
begin
//#UC START# *484516C00214_4DA833FF0099_impl*
 inherited;
 UpdatePositions;
//#UC END# *484516C00214_4DA833FF0099_impl*
end;//TvtRemindersLine.Loaded

end.