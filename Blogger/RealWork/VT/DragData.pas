unit DragData;

{ $Id: DragData.pas,v 1.33 2013/04/24 09:35:37 lulin Exp $ }

// $Log: DragData.pas,v $
// Revision 1.33  2013/04/24 09:35:37  lulin
// - портируем.
//
// Revision 1.32  2012/11/01 09:42:28  lulin
// - забыл точку с запятой.
//
// Revision 1.31  2012/11/01 07:44:16  lulin
// - делаем возможность логирования процесса загрузки модулей.
//
// Revision 1.30  2012/04/04 09:34:34  dinishev
// Правки отъехавшей простановки ссылок.
//
// Revision 1.29  2012/04/02 10:02:25  kostitsin
// - объединяем nsHooks и nsShutdownSupport
// - (+) перегенерация
//
// Revision 1.28  2012/03/30 12:09:19  kostitsin
// DragData
//
// Revision 1.27  2009/04/22 13:57:53  voba
// процесс проставления ссылки на readonly доках запускался и не снимался
//
// Revision 1.26  2008/12/04 07:40:25  dinishev
// Bug fix: на медленных компьютерах была возможность поставить вторично добавить гиперссылку просто передвигая курсор, если пошел процесс форматирования
//
// Revision 1.25  2008/12/03 11:16:38  dinishev
// _CleanUp
//
// Revision 1.24  2005/10/12 11:21:20  voba
// - сделал что бы местные эксепшины в лог не попадали
//
// Revision 1.23  2005/04/19 15:41:39  lulin
// - переходим на "правильный" ProcessMessages.
//
// Revision 1.22  2003/06/19 14:44:49  voba
// - rename IsDropAccept to DoDrop
//
// Revision 1.21  2002/12/24 13:02:02  law
// - change: объединил Int64_Seek c основной веткой.
//
// Revision 1.20  2002/12/23 13:02:13  voba
// no message
//
// Revision 1.19.2.1  2002/12/23 13:05:03  law
// - объединил с основной веткой (то что Вован забыл положить).
//
// Revision 1.20  2002/12/23 13:02:13  voba
// no message
//
// Revision 1.19  2002/09/11 15:13:09  voba
// -code clean
//
// Revision 1.18  2001/07/27 06:57:07  voba
// no message
//
// Revision 1.17  2001/07/16 12:23:04  voba
// no message
//
// Revision 1.16  2001/05/18 06:06:25  voba
// no message
//
// Revision 1.15  2001/04/05 08:52:17  law
// - cleanup: использование модулей WinTypes и WinProcs заменен на Windows.
//
// Revision 1.14  2000/12/15 15:36:28  law
// - вставлены директивы Log.
//

{$I l3Delphi.inc}

interface

uses
 Windows,
 SysUtils,
 Messages,
 Classes,
 Controls,

 l3Base,
 l3Except,
 l3Interfaces;

type
 TDragDataState = (dsPassive, dsActive, dsPaused);

const
 wm_DropAccept   = wm_User + $100;    {ComConst}
 wm_DropAccepted = wm_User + $101;

 cnActiveState = [dsActive, dsPaused];

type
 EDragInProcess = class(El3NoLoggedException)
  constructor Create;
 end;

 TGetCursorByType = function(DDType : Integer) : HCursor;

 TDragDataSupport = class(Tl3Base,
                          Il3WndProcListener,
                          Il3MouseListener,
                          Il3WndProcRetListener)
  private
   fDragState    : TDragDataState;
   fSrcControl   : TControl;
   fDragDataType : Integer;
   fDragData     : Pointer;
   fAnswerData   : Pointer;
   fDragSuccess  : Boolean;
   fOnDragStop   : TNotifyEvent;
   fDCursor      : HCursor;

   fOnGetCursorByType : TGetCursorByType;
   {flags}
   f_PrevMRecurse : Boolean;
   f_PrevWRecurse : Boolean;
   f_NeedStop    : Boolean;

   procedure SetDragData    (Value : Pointer);
   procedure SetDragDataType(Value : Integer);
   procedure SetAnswerData  (Value : Pointer);
  private
   procedure RemoveListeners;
   procedure InitListeners;

   procedure WndProcListenerNotify(Msg: PCWPStruct;
                                   var Result: Tl3HookProcResult);
   procedure WndProcRetListenerNotify(Msg: PCWPRetStruct;
                                      var Result: Tl3HookProcResult);
   procedure MouseListenerNotify(aMouseMessage: WPARAM;
                                 aHookStruct: PMouseHookStruct;
                                 var Result: Tl3HookProcResult);
  public
   function  DoDrop(aDestControl : TControl = nil) : Boolean;
   function  Execute(SrcControl : TControl) : Boolean;
   procedure RunDragData(SrcControl : TControl);
   procedure Stop(aSuccess : Boolean);
   procedure Pause;
   procedure Restore;
   procedure CheckInProgress;

   property DCursor       : HCursor  read fDCursor      write fDCursor;
   property DragDataType  : Integer  read fDragDataType write SetDragDataType;
   property DragData      : Pointer  read fDragData     write SetDragData;
   property AnswerData    : Pointer  read fAnswerData   write SetAnswerData;
   property SourceControl : TControl read fSrcControl;
   property State         : TDragDataState  read fDragState;
   property DragSuccess   : Boolean  read fDragSuccess;
   property OnDragStop    : TNotifyEvent read fOnDragStop write fOnDragStop;
   property OnGetCursorByType : TGetCursorByType read fOnGetCursorByType write fOnGetCursorByType;
 end;

var
 DDSupport : TDragDataSupport;

implementation

uses
 Forms,
 Dialogs,

 afwFacade,

 l3ListenersManager
  ;

{$IfNDef Delphi3}
type
 TCustomForm = TForm;
{$EndIf}

procedure TDragDataSupport.MouseListenerNotify(aMouseMessage: WPARAM;
                                               aHookStruct: PMouseHookStruct;
                                               var Result: Tl3HookProcResult);
var
 DestCtrl : TControl;
begin
 if ((aMouseMessage = WM_LBUTTONDOWN) or (aMouseMessage = WM_NCLBUTTONDOWN) or
     (aMouseMessage = WM_RBUTTONDOWN) or (aMouseMessage = WM_NCRBUTTONDOWN) or
     (aMouseMessage = WM_RBUTTONUP) or (aMouseMessage = WM_NCRBUTTONUP)) and
    f_PrevMRecurse then
  Exit;

 try
  f_PrevMRecurse := True;
  try
   if (aMouseMessage = WM_LBUTTONDOWN) or (aMouseMessage = WM_NCLBUTTONDOWN) then
    if GetKeyState(VK_MENU) < 0 then
    begin
     DestCtrl := FindDragTarget(aHookStruct.Pt, False);
     try
      If (DestCtrl <> nil) then Self.DoDrop(DestCtrl);
     except
      Result.Result := 0;
     end;
     Exit;
    end;

   if (aMouseMessage = WM_RBUTTONDOWN) or (aMouseMessage = WM_NCRBUTTONDOWN) then
    if GetKeyState(VK_MENU) < 0 then
    begin
     f_NeedStop := True;
     Result.Result := 1;
     Result.Handled := True;
     Exit;
    end;

   if (aMouseMessage = WM_RBUTTONUP) or (aMouseMessage = WM_NCRBUTTONUP) then
   begin
    if f_NeedStop then
    begin
     f_NeedStop := False;
     if GetKeyState(VK_MENU) < 0 then
     begin
      Self.Stop(False);
      //PMouseHookStruct(LParam)^.hwnd := 0;
      Result.Result := 1;
      Result.Handled := True;
      Exit;
     end;
    end;
   end;
  finally
   f_PrevMRecurse := False;
  end;
 except
 end;
end;

procedure TDragDataSupport.WndProcRetListenerNotify(Msg: PCWPRetStruct;
                                                    var Result: Tl3HookProcResult);
begin
 if (Msg.message = WM_SETCURSOR) and
    (SmallInt(Msg.lParam) = HTCLIENT) then
  try
   Windows.SetCursor(DCursor);
  except
  end;
end;

procedure TDragDataSupport.WndProcListenerNotify(Msg: PCWPStruct;
                                                 var Result: Tl3HookProcResult);
begin
 if (Msg.message = WM_SETCURSOR) and
    (SmallInt(Msg.lParam) = HTCLIENT) then
  try
   Windows.SetCursor(DCursor);
   Msg.message := WM_NULL;
   Result.Result := 1;
   Result.Handled := True;
  except
  end;
end;

procedure TDragDataSupport.InitListeners;
begin
 if Win32Platform = VER_PLATFORM_WIN32_NT
  then Tl3ListenersManager.AddWndProcRetListener(Self)
  else Tl3ListenersManager.AddWndProcListener(Self);   
 Tl3ListenersManager.AddMouseListener(Self);
end;

procedure TDragDataSupport.RemoveListeners;
begin
 Tl3ListenersManager.RemoveWndProcRetListener(Self);
 Tl3ListenersManager.RemoveWndProcListener(Self);
 Tl3ListenersManager.RemoveMouseListener(Self);
end;

function TDragDataSupport.DoDrop(aDestControl : TControl = nil): Boolean;
var
 lParentForm : TCustomForm;
 lShiftMode  : Boolean;
begin
 Result := False;
 lShiftMode := GetKeyState(VK_SHIFT) < 0;

 if fDragState = dsActive then
  try
   Windows.SetCursor(Screen.Cursors[crHourGlass]);
   if aDestControl <> nil then
   begin
    try
     Result := aDestControl.Perform(wm_DropAccept,
                                    DragDataType, Longint(Self)) <> 0;
    except
     Result := False;
    end;
    if not Result then
    begin
     lParentForm := GetParentForm(aDestControl);

     if lParentForm <> nil then
     try
      Result := lParentForm.Perform(wm_DropAccept, DragDataType,
                                          Longint(aDestControl)) > 0;
     except
      Result := False;
     end;
    end;
   end
   else
    Result := True;
   if Result and (fSrcControl <> nil) then
   begin
    Pause;
    Result := fSrcControl.Perform(wm_DropAccepted, DragDataType, Longint(Self)) >= 0;
   end;

   if Result and not lShiftMode then
    Stop(True);

  finally
   Restore; // if was paused
   Windows.SetCursor(DCursor);
  end;
end;

function TDragDataSupport.Execute(SrcControl : TControl): Boolean;
begin
 RunDragData(SrcControl);
 while fDragState in cnActiveState do
  afw.ProcessMessages;
 Result := FDragSuccess;
end;

procedure TDragDataSupport.CheckInProgress;
begin
 if fDragState in cnActiveState then
  raise EDragInProcess.Create;
end;

procedure TDragDataSupport.RunDragData(SrcControl : TControl);
begin
 f_PrevMRecurse := False;
 f_PrevWRecurse := False;
 f_NeedStop := False;

 CheckInProgress;
 FSrcControl := SrcControl;
 InitListeners;
 Windows.SetCursor(DCursor);
 FDragSuccess := False;
 fDragState := dsActive;
end;

procedure TDragDataSupport.Stop(aSuccess : Boolean);
begin
 if fDragState in cnActiveState then
 begin
  fDragState := dsPassive;
  FDragSuccess := aSuccess;
  RemoveListeners;
  //SetCaptureControl(nil); //fix problem with csCaptureMouse
  SetDragDataType(0);
  //Windows.SetCursor(Screen.Cursors[crDefault]);
  if Assigned(FOnDragStop) then FOnDragStop(Self);
 end;
end;

procedure TDragDataSupport.SetDragData(Value : Pointer);
begin
 CheckInProgress;
 Stop(False);
 FDragData := Value;
end;

procedure TDragDataSupport.SetDragDataType(Value : Integer);
var
 lCursor : HCursor;
begin
 FDragDataType := Value;
 lCursor := 0;
 if Assigned(fOnGetCursorByType) then
 begin
  lCursor := fOnGetCursorByType(FDragDataType);
  if lCursor > 0 then fDCursor := lCursor;
 end;
 if lCursor = 0 then
  fDCursor := Screen.Cursors[crDefault];
end;

procedure TDragDataSupport.SetAnswerData(Value : Pointer);
begin
 FAnswerData := Value;
end;

procedure FinitDragData; far;
begin
 FreeAndNil(DDSupport);
end;

constructor EDragInProcess.Create;
begin
 inherited Create('Предыдущая операция переноса не завершена!');
end;

procedure TDragDataSupport.Pause;
begin
 if fDragState = dsActive then
 begin
  fDragState := dsPaused;
  RemoveListeners;
 end;
end;

procedure TDragDataSupport.Restore;
begin
 if fDragState = dsPaused then
 begin
  fDragState := dsActive;
  InitListeners;
 end;
end;

initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\gui\Garant\VT\DragData.pas initialization enter'); {$EndIf}
 AddExitProc(FinitDragData);
 DDSupport := TDragDataSupport.Create;
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\gui\Garant\VT\DragData.pas initialization leave'); {$EndIf}
end.

