unit vtCustomReminder;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "VT$Rem"
// Модуль: "w:/common/components/gui/Garant/VT/vtCustomReminder.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<GuiControl::Class>> Shared Delphi::VT$Rem::Reminders::TvtCustomReminder
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
  afwInterfaces,
  Types,
  Messages,
  Classes,
  Graphics,
  Controls,
  Windows,
  afwTextControl,
  ExtCtrls,
  ImgList
  {$If not defined(NoVGScene)}
  ,
  vtPopupForm
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVCM) AND not defined(NoVGScene)}
  ,
  vtPopupFormModelPart
  {$IfEnd} //not NoVCM AND not NoVGScene
  ,
  vtReminderUtils,
  l3InternalInterfaces
  ;

const
  {  }
 WM_REMINDER_BringToFront = WM_USER + 1;
 c_rmEmptyWidth = 32;
 c_rmEmptyHeight = 32;
 cDrawOffsetX = 3;
 cDrawOffsetY = 2;

type
 TvtReminderActionLink = class(TControlActionLink)
 end;//TvtReminderActionLink

 TvtCustomReminder = class(TafwTextControl, Il3WndProcListener, IafwTabSheetControl, IvtReminder)
 private
 // private fields
   f_IsDrawing : Boolean;
   f_IsShowingOrClosingBaloon : Boolean;
   f_DblClicked : Boolean;
   f_MouseDownSpot : TPoint;
   f_ImgChangeLink : TChangeLink;
   f_ClickTimer : TTimer;
   f_AllowClick : Boolean;
   f_FlashTimer : TTimer;
   f_HalfTransparent : Boolean;
   f_NeedEraseBackGround : Boolean;
   f_MouseMoved : Boolean;
   f_ImageRgn : hRgn;
   f_RgnForFree : hRgn;
   f_DrawImageLeft : integer;
   f_DrawTextRect : TRect;
  {$If not defined(NoVCM) AND not defined(NoVGScene)}
   f_PopupFormBoundsRects : TPopupFormBoundsRects;
  {$IfEnd} //not NoVCM AND not NoVGScene
   f_ControlToRecalc : TControl;
   f_SkipMouseMove : Boolean;
   f_LeftDelta : integer;
   f_RightDelta : integer;
   f_TopDelta : integer;
   f_BottomDelta : integer;
  {$If not defined(NoVGScene)}
   f_PopupForm : TvtPopupForm;
    {* Поле для свойства PopupForm}
  {$IfEnd} //not NoVGScene
   f_Picture : TPicture;
    {* Поле для свойства Picture}
   f_ImageIndex : TImageIndex;
    {* Поле для свойства ImageIndex}
   f_Images : TCustomImageList;
    {* Поле для свойства Images}
   f_RemindersLine : IvtRemindersLine;
    {* Поле для свойства RemindersLine}
   f_Flashing : Boolean;
    {* Поле для свойства Flashing}
   f_FlashInterval : Cardinal;
    {* Поле для свойства FlashInterval}
   f_DrawCaption : Boolean;
    {* Поле для свойства DrawCaption}
   f_ShowPopupFormOnDock : Boolean;
    {* Поле для свойства ShowPopupFormOnDock}
   f_AfterBaloonShowed : TNotifyEvent;
    {* Поле для свойства AfterBaloonShowed}
   f_AfterBaloonHidden : TNotifyEvent;
    {* Поле для свойства AfterBaloonHidden}
   f_ImageHeight : integer;
    {* Поле для свойства ImageHeight}
   f_ShowPopupFormOnDockLocal : Boolean;
    {* Поле для свойства ShowPopupFormOnDockLocal}
   f_Capturing : Boolean;
    {* Поле для свойства Capturing}
 private
 // private methods
   procedure PictureChanged(Sender: TObject);
   function UpdateSize: Boolean;
   procedure CheckFlashing;
   procedure FlashTimer(Sender: TObject);
   procedure ClickTimer(Sender: TObject);
   procedure DelayedClick;
   procedure ClearImageRGN;
   function GetImageRGN: hRgn;
   function GetImageRect: TRect;
   function GetTextRect: TRect;
   function CanDrawCaption: Boolean;
   procedure AdjustRects(var anImageRect: TRect;
     var aTextRect: TRect);
   procedure ClearRegion;
   procedure UpdateWindowRegion;
   procedure CheckBounds(var aBounds: TRect);
   procedure RestoreRatio;
   procedure CMVisibleChanged(var Message: TMessage); message CM_VISIBLECHANGED;
   procedure WMEraseBkgnd(var Message: TWMEraseBkgnd); message WM_ERASEBKGND;
   procedure CMShowingChanged(var Message: TMessage); message CM_SHOWINGCHANGED;
     {* используем сообщение для устновки позиций предупреждениям, если
делать это раньше, например в CMVisibleChanged, то в процессе
построения компонентов координаты предупреждению могут корректировать,
см. TWinControl.UpdateBounds о чём мы даже не узнаем. Поэтому
выбираем момент когда построение компонентов закончено. }
   procedure CMTextChanged(var Message: TMessage); message CM_TEXTCHANGED;
   procedure WMBringToFront(var Message: TMessage); message WM_REMINDER_BringToFront;
 protected
 // property methods
   {$If not defined(NoVGScene)}

   {$IfEnd} //not NoVGScene
   procedure pm_SetPicture(aValue: TPicture);
   procedure pm_SetImageIndex(aValue: TImageIndex);
   procedure pm_SetImages(aValue: TCustomImageList);
   procedure pm_SetRemindersLine(const aValue: IvtRemindersLine);
   procedure pm_SetFlashing(aValue: Boolean);
   procedure pm_SetFlashInterval(aValue: Cardinal);
   procedure pm_SetDrawCaption(aValue: Boolean);
   function pm_GetIsBaloonVisible: Boolean;
 protected
 // realized methods
   procedure PageInactive;
     {* активная закладка стала не активной. }
   procedure PageActive;
     {* закладка стала активной. }
   function pm_GetWeight: Integer;
   procedure WndProcListenerNotify(Msg: PCWPStruct;
     var theResult: Tl3HookProcResult);
   procedure BringReminderToFront;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure Loaded; override;
   procedure Paint(const CN: Il3Canvas); override;
     {* процедура рисования внешнего вида управляющего элемента }
   procedure MouseMove(Shift: TShiftState;
    X: Integer;
    Y: Integer); override;
   procedure CreateWnd; override;
   procedure DestroyWnd; override;
   procedure MouseUp(Button: TMouseButton;
     Shift: TShiftState;
     X: Integer;
     Y: Integer); override;
   procedure SetBounds(ALeft: Integer;
     ATop: Integer;
     AWidth: Integer;
     AHeight: Integer); override;
   procedure Notification(AComponent: TComponent;
     Operation: TOperation); override;
   function GetActionLinkClass: TControlActionLinkClass; override;
   procedure Click; override;
     {* Сигнатура метода Click }
   procedure DblClick; override;
     {* Сигнатура метода DblClick }
   procedure MouseDown(Button: TMouseButton;
     Shift: TShiftState;
     X: Integer;
     Y: Integer); override;
   procedure ClearFields; override;
 public
 // overridden public methods
   constructor Create(AOwner: TComponent); override;
   procedure InitiateAction; override;
     {* Сигнатура метода InitiateAction }
   procedure DockDrop(Source: TDragDockObject;
     X: Integer;
     Y: Integer); override;
 protected
 // protected methods
   procedure MoveReminder(dX: Integer;
     dY: Integer;
     RememberRatio: Boolean);
   procedure ReadPosition(var aLeft: Integer;
     var aRight: Integer;
     var aTop: Integer;
     var aBottom: Integer);
   procedure WritePosition(aLeft: Integer;
     aRight: Integer;
     aTop: Integer;
     aBottom: Integer);
    {$If not defined(NoVGScene)}
   function GetPopupFormBoundsRect(aControl: TControl;
     aForce: Boolean): TRect;
     {* координаты всплывающего окна зависят от местоположения самого vtReminder }
    {$IfEnd} //not NoVGScene
    {$If not defined(NoVGScene)}
   function PopupFormBoundsRect: TRect;
    {$IfEnd} //not NoVGScene
    {$If not defined(NoVGScene)}
   procedure CheckBaloonFitsMonitors;
     {* проверяет, что баллон полностью
попадает на экран  с учетом нескольких мониторов. 
Если не попадает, то сдвигается RemindersLine }
    {$IfEnd} //not NoVGScene
 public
 // public methods
   procedure SetPos(X: Integer;
     Y: Integer);
    {$If not defined(NoVGScene)}
   procedure ShowDockingControl(aDockControl: TControl;
     const aFormBoundsRect: TRect);
    {$IfEnd} //not NoVGScene
    {$If not defined(NoVGScene)}
   procedure OpenBaloon;
    {$IfEnd} //not NoVGScene
    {$If not defined(NoVGScene)}
   procedure CloseBaloon;
    {$IfEnd} //not NoVGScene
    {$If not defined(NoVGScene)}
   function GetBaloonHandle: THandle;
    {$IfEnd} //not NoVGScene
    {$If not defined(NoVGScene)}
   function PopupFormRect: TRect;
    {$IfEnd} //not NoVGScene
 protected
 // protected properties
   {$If not defined(NoVGScene)}
   property PopupForm: TvtPopupForm
     read f_PopupForm;
   {$IfEnd} //not NoVGScene
   property ImageHeight: integer
     read f_ImageHeight;
   property ShowPopupFormOnDockLocal: Boolean
     read f_ShowPopupFormOnDockLocal
     write f_ShowPopupFormOnDockLocal;
 public
 // public properties
   property Picture: TPicture
     read f_Picture
     write pm_SetPicture;
   property ImageIndex: TImageIndex
     read f_ImageIndex
     write pm_SetImageIndex;
   property Images: TCustomImageList
     read f_Images
     write pm_SetImages;
   property RemindersLine: IvtRemindersLine
     read f_RemindersLine
     write pm_SetRemindersLine;
   property Flashing: Boolean
     read f_Flashing
     write pm_SetFlashing;
     {* default False }
   property FlashInterval: Cardinal
     read f_FlashInterval
     write pm_SetFlashInterval;
     {* default 300 }
   property DrawCaption: Boolean
     read f_DrawCaption
     write pm_SetDrawCaption;
     {* default False }
   property ShowPopupFormOnDock: Boolean
     read f_ShowPopupFormOnDock
     write f_ShowPopupFormOnDock;
     {* default False }
   property AfterBaloonShowed: TNotifyEvent
     read f_AfterBaloonShowed
     write f_AfterBaloonShowed;
   property AfterBaloonHidden: TNotifyEvent
     read f_AfterBaloonHidden
     write f_AfterBaloonHidden;
   property IsBaloonVisible: Boolean
     read pm_GetIsBaloonVisible;
   property Capturing: Boolean
     read f_Capturing;
 end;//TvtCustomReminder

implementation

uses
  l3ListenersManager,
  l3MinMax,
  SysUtils,
  l3Base,
  l3Bitmap,
  l3ScreenIC,
  Forms,
  l3String,
  l3Units,
  afwFacade,
  Themes,
  vtInterfaces,
  l3Defaults
  ;

// start class TvtCustomReminder

procedure TvtCustomReminder.PictureChanged(Sender: TObject);
//#UC START# *4F86E8480108_4D9051C90295_var*
//#UC END# *4F86E8480108_4D9051C90295_var*
begin
//#UC START# *4F86E8480108_4D9051C90295_impl*
 ClearImageRgn;
 if not UpdateSize then
  UpdateWindowRegion;
 if f_Picture.Graphic <> nil then
 begin
  if f_IsDrawing then
   Update;
 end;
 if not f_IsDrawing then
  Invalidate;
//#UC END# *4F86E8480108_4D9051C90295_impl*
end;//TvtCustomReminder.PictureChanged

function TvtCustomReminder.UpdateSize: Boolean;
//#UC START# *4F86E89F0257_4D9051C90295_var*
var
 l_ImageRect: TRect;
 l_TextRect: TRect;
 l_Width: Integer;
 l_Height: Integer;
//#UC END# *4F86E89F0257_4D9051C90295_var*
begin
//#UC START# *4F86E89F0257_4D9051C90295_impl*
 Result := False;
 l_ImageRect := GetImageRect;
 l_TextRect := GetTextRect;
 AdjustRects(l_ImageRect, l_TextRect);
 l_Width := Max(l_ImageRect.Right, l_TextRect.Right);
 l_Height := Max(l_ImageRect.Bottom, l_TextRect.Bottom);
 f_ImageHeight := l_ImageRect.Bottom - l_ImageRect.Top;
// f_ImageWidth := l_ImageRect.Right;
// f_ImageHorOffset := (l_Width - l_ImageRect.Right) div 2;
 if (l_Width <> Width) or (l_Height <> Height) then
 begin
  SetBounds(Left, Top, l_Width, l_Height);
  UpdateWindowRegion;
  if Assigned(f_RemindersLine) and not f_RemindersLine.IsMoving then
  begin
   f_RemindersLine.RestoreRatio;
   f_RemindersLine.UpdatePositions;
  end;
  Result := True;
 end;
//#UC END# *4F86E89F0257_4D9051C90295_impl*
end;//TvtCustomReminder.UpdateSize

procedure TvtCustomReminder.CheckFlashing;
//#UC START# *4F86E8D9014D_4D9051C90295_var*
//#UC END# *4F86E8D9014D_4D9051C90295_var*
begin
//#UC START# *4F86E8D9014D_4D9051C90295_impl*
 f_HalfTransparent := False;
 if not (csDesigning in ComponentState) and Flashing and Visible then
 begin
  if Supports(Images, IvtFlashImageList) then
  begin
   if not Assigned(f_FlashTimer) then
   begin
    f_FlashTimer := TTimer.Create(Self);
    f_FlashTimer.Interval := FlashInterval;
    f_FlashTimer.Enabled := True;
    f_FlashTimer.OnTimer := FlashTimer;
   end;
  end;
 end
 else
  l3Free(f_FlashTimer);
 f_NeedEraseBackGround := True;
 Invalidate;
//#UC END# *4F86E8D9014D_4D9051C90295_impl*
end;//TvtCustomReminder.CheckFlashing

procedure TvtCustomReminder.FlashTimer(Sender: TObject);
//#UC START# *4F86E8F60069_4D9051C90295_var*
//#UC END# *4F86E8F60069_4D9051C90295_var*
begin
//#UC START# *4F86E8F60069_4D9051C90295_impl*
 f_HalfTransparent := not f_HalfTransparent;
 f_NeedEraseBackGround := True;
 Invalidate;
//#UC END# *4F86E8F60069_4D9051C90295_impl*
end;//TvtCustomReminder.FlashTimer

procedure TvtCustomReminder.ClickTimer(Sender: TObject);
//#UC START# *4F86E91902CE_4D9051C90295_var*
//#UC END# *4F86E91902CE_4D9051C90295_var*
begin
//#UC START# *4F86E91902CE_4D9051C90295_impl*
 if f_ClickTimer.Enabled then
  DelayedClick; 
//#UC END# *4F86E91902CE_4D9051C90295_impl*
end;//TvtCustomReminder.ClickTimer

procedure TvtCustomReminder.DelayedClick;
//#UC START# *4F86E9480105_4D9051C90295_var*
//#UC END# *4F86E9480105_4D9051C90295_var*
begin
//#UC START# *4F86E9480105_4D9051C90295_impl*
 f_AllowClick := f_ClickTimer.Enabled;
 f_ClickTimer.Enabled := False;
 Click;
//#UC END# *4F86E9480105_4D9051C90295_impl*
end;//TvtCustomReminder.DelayedClick

procedure TvtCustomReminder.ClearImageRGN;
//#UC START# *4F86E9760228_4D9051C90295_var*
//#UC END# *4F86E9760228_4D9051C90295_var*
begin
//#UC START# *4F86E9760228_4D9051C90295_impl*
 if (f_ImageRGN <> 0) then
 begin
  DeleteObject(f_ImageRGN);
  f_ImageRGN := 0;
 end;//f_ImageRGN <> 0
//#UC END# *4F86E9760228_4D9051C90295_impl*
end;//TvtCustomReminder.ClearImageRGN

function TvtCustomReminder.GetImageRGN: hRgn;
//#UC START# *4F86E99D0219_4D9051C90295_var*
var
 l_Bmp: Graphics.TBitmap;
//#UC END# *4F86E99D0219_4D9051C90295_var*
begin
//#UC START# *4F86E99D0219_4D9051C90295_impl*
 if (f_ImageRGN = 0) then
 begin
  if Assigned(f_Picture) and Assigned(f_Picture.Graphic) then
   f_ImageRGN := vtBitmapToRgn(f_Picture.Bitmap)
  else
  if Assigned(f_Images) then
  begin
   l_Bmp := Tl3Bitmap.Create;
   try
    l_Bmp.Width := f_Images.Width;
    l_Bmp.Height := f_Images.Height;
    l_Bmp.Canvas.Brush.Color := clBlue;
    l_Bmp.Canvas.Brush.Style := bsSolid;
    l_Bmp.Canvas.FillRect(Rect(0,0,l_Bmp.Width, l_Bmp.Height));
    f_Images.Draw(l_Bmp.Canvas, 0, 0, f_ImageIndex);
    f_ImageRgn := vtBitmapToRgn(l_Bmp);
   finally
    FreeAndNil(l_Bmp);
   end; {try..finally}
  end;//Assigned(f_Images)
 end;//f_ImageRGN = 0
 Result := f_ImageRGN;
//#UC END# *4F86E99D0219_4D9051C90295_impl*
end;//TvtCustomReminder.GetImageRGN

function TvtCustomReminder.GetImageRect: TRect;
//#UC START# *4F86E9C20058_4D9051C90295_var*
//#UC END# *4F86E9C20058_4D9051C90295_var*
begin
//#UC START# *4F86E9C20058_4D9051C90295_impl*
 Result := Rect(0, 0, 0, 0);
 if Assigned(f_Images) then
 begin
  Result.Right := f_Images.Width;
  Result.Bottom := f_Images.Height;
 end//Assigned(f_Images)
 else
 if (f_Picture.Graphic = nil) then
 begin
  Result.Right := c_rmEmptyWidth;
  Result.Bottom := c_rmEmptyHeight;
 end//f_Picture.Graphic = nil
 else
 begin
  Result.Right := f_Picture.Width;
  Result.Bottom := f_Picture.Height;
 end;//f_Picture.Graphic = nil
//#UC END# *4F86E9C20058_4D9051C90295_impl*
end;//TvtCustomReminder.GetImageRect

function TvtCustomReminder.GetTextRect: TRect;
//#UC START# *4F86EA97031B_4D9051C90295_var*
var
 l_Canvas: Il3InfoCanvas;
//#UC END# *4F86EA97031B_4D9051C90295_var*
begin
//#UC START# *4F86EA97031B_4D9051C90295_impl*
 Result := Rect(0, 0, 0, 0);
 if CanDrawCaption then
 begin
  l_Canvas := l3CrtIC;
  try
   l_Canvas.Font.AssignFont(Screen.HintFont);
   l_Canvas.DrawText(l3PCharLen(CCaption), Result, DT_CALCRECT);
   Inc(Result.Right, 2 * cDrawOffsetX);
   Inc(Result.Bottom, 2 * cDrawOffsetY);
  finally
   l_Canvas := nil;
  end;//try..finally
 end;//CanDrawCaption
//#UC END# *4F86EA97031B_4D9051C90295_impl*
end;//TvtCustomReminder.GetTextRect

function TvtCustomReminder.CanDrawCaption: Boolean;
//#UC START# *4F86EAD30170_4D9051C90295_var*
//#UC END# *4F86EAD30170_4D9051C90295_var*
begin
//#UC START# *4F86EAD30170_4D9051C90295_impl*
 Result := DrawCaption and not l3IsNil(CCaption);
//#UC END# *4F86EAD30170_4D9051C90295_impl*
end;//TvtCustomReminder.CanDrawCaption

procedure TvtCustomReminder.AdjustRects(var anImageRect: TRect;
  var aTextRect: TRect);
//#UC START# *4F86EB0B0388_4D9051C90295_var*
var
 l_ImageWidth: Integer;
 l_TextWidth: Integer;
//#UC END# *4F86EB0B0388_4D9051C90295_var*
begin
//#UC START# *4F86EB0B0388_4D9051C90295_impl*
 l_ImageWidth := anImageRect.Right - anImageRect.Left;
 l_TextWidth := aTextRect.Right - aTextRect.Left;
 if l_ImageWidth > l_TextWidth then
  aTextRect.Left := aTextRect.Left + (l_ImageWidth - l_TextWidth) div 2
 else
  if l_ImageWidth < l_TextWidth then
   anImageRect.Left := anImageRect.Left + (l_TextWidth - l_ImageWidth) div 2;

 aTextRect.Top := aTextRect.Top + anImageRect.Top + anImageRect.Bottom;
 aTextRect.Bottom := aTextRect.Bottom + anImageRect.Top + anImageRect.Bottom;
//#UC END# *4F86EB0B0388_4D9051C90295_impl*
end;//TvtCustomReminder.AdjustRects

procedure TvtCustomReminder.ClearRegion;
//#UC START# *4F86EB310186_4D9051C90295_var*
//#UC END# *4F86EB310186_4D9051C90295_var*
begin
//#UC START# *4F86EB310186_4D9051C90295_impl*
 if HandleAllocated then
  SetWindowRgn(Handle, 0, false);
 if (f_RgnForFree <> 0) then
 begin
  DeleteObject(f_RgnForFree);
  f_RgnForFree := 0;
 end;//f_RgnForFree <> 0
//#UC END# *4F86EB310186_4D9051C90295_impl*
end;//TvtCustomReminder.ClearRegion

procedure TvtCustomReminder.UpdateWindowRegion;
//#UC START# *4F86EB530361_4D9051C90295_var*
var
 l_ImageRgn: HRGN;
 l_TmpRgn: HRGN;
 l_TextRgn: HRGN;
 l_ImageRect: TRect;
 l_TextRect: TRect;
 l_ResultRgn: HRGN;
//#UC END# *4F86EB530361_4D9051C90295_var*
begin
//#UC START# *4F86EB530361_4D9051C90295_impl*
 ClearRegion;
 if not HandleAllocated then
  Exit;
 if not Visible then
  Exit;
 if (Width <= 0) OR (Height <= 0) then
  Exit;
 l_ImageRgn := GetImageRgn;
 l_ImageRect := GetImageRect;
 l_TextRect := GetTextRect;
 AdjustRects(l_ImageRect, l_TextRect);
 f_DrawImageLeft := l_ImageRect.Left;
 f_DrawTextRect := l_TextRect;

 if (l_ImageRgn <> 0) and CanDrawCaption then
 begin
  l_ResultRgn := CreateRectRgn(0, 0, 0, 0);
  l_TextRgn := CreateRectRgnIndirect(l_TextRect);
  try
   l_TmpRgn := CreateRectRgn(0, 0, 0, 0);
   try
    CombineRgn(l_TmpRgn, l_ImageRgn, 0, RGN_COPY);
    if (l_ImageRect.Left <> 0) then
     OffsetRgn(l_TmpRgn, l_ImageRect.Left, 0);
    CombineRgn(l_ResultRgn, l_TmpRgn, l_TextRgn, RGN_OR);
   finally
    DeleteObject(l_TmpRgn);
   end;//try..finally
  finally
   DeleteObject(l_TextRgn);
  end;//try..finally
 end//l_ImageRgn <> 0
 else
 if (l_ImageRgn <> 0) then
 begin
  l_ResultRgn := CreateRectRgn(0, 0, 0, 0);
  CombineRgn(l_ResultRgn, l_ImageRgn, 0, RGN_COPY);
 end//l_ImageRgn <> 0
 else
 if CanDrawCaption then
  l_ResultRgn := CreateRectRgnIndirect(l_TextRect)
 else
  l_ResultRgn := CreateRectRgn(0, 0, Width, Height);
 Assert(f_RgnForFree = 0); 
 if (l_ResultRgn <> l_ImageRgn) then
  f_RgnForFree := l_ResultRgn;
 SetWindowRgn(Handle, l_ResultRgn, True);
//#UC END# *4F86EB530361_4D9051C90295_impl*
end;//TvtCustomReminder.UpdateWindowRegion

procedure TvtCustomReminder.CheckBounds(var aBounds: TRect);
//#UC START# *4F86EB700098_4D9051C90295_var*
var
 lRect : TRect;
//#UC END# *4F86EB700098_4D9051C90295_var*
begin
//#UC START# *4F86EB700098_4D9051C90295_impl*
 Assert(not Assigned(f_RemindersLine));

 if Assigned(Parent) then
  vtCorrectBounds(Parent.ClientRect, aBounds);
//#UC END# *4F86EB700098_4D9051C90295_impl*
end;//TvtCustomReminder.CheckBounds

procedure TvtCustomReminder.RestoreRatio;
//#UC START# *4F86EDC90005_4D9051C90295_var*
var
 l_NewX, l_NewY, l_RightDelta, l_BottomDelta: Integer;
 l_HRatio, l_VRatio: Single;
//#UC END# *4F86EDC90005_4D9051C90295_var*
begin
//#UC START# *4F86EDC90005_4D9051C90295_impl*
 if Assigned(f_RemindersLine)
  then f_RemindersLine.RestoreRatio
  else
 begin
  with TWinControl(Parent) do
  begin
   l_RightDelta := ClientWidth - Left - Width;
   l_BottomDelta := ClientHeight - Top - Height;
  end;

  l_NewX := MulDiv(f_LeftDelta, Left + l_RightDelta, f_LeftDelta + f_RightDelta);
  l_NewY := MulDiv(f_TopDelta, Top + l_BottomDelta, f_TopDelta + f_BottomDelta);

  SetPos(l_NewX, l_NewY);
 end;
//#UC END# *4F86EDC90005_4D9051C90295_impl*
end;//TvtCustomReminder.RestoreRatio

procedure TvtCustomReminder.MoveReminder(dX: Integer;
  dY: Integer;
  RememberRatio: Boolean);
//#UC START# *4F86EE0A01DF_4D9051C90295_var*
//#UC END# *4F86EE0A01DF_4D9051C90295_var*
begin
//#UC START# *4F86EE0A01DF_4D9051C90295_impl*
 if Assigned(f_RemindersLine)
  then f_RemindersLine.MoveLine(dX, dY, RememberRatio)
  else
 begin
  SetPos(Left + dX, Top + dY);

  if RememberRatio then
  begin
   f_LeftDelta := Left;
   f_TopDelta := Top;
   with TWinControl(Parent) do
   begin
    f_RightDelta := ClientWidth - Left - Width;
    f_BottomDelta := ClientHeight - Top - Height;
   end;
  end;
 end;
//#UC END# *4F86EE0A01DF_4D9051C90295_impl*
end;//TvtCustomReminder.MoveReminder

procedure TvtCustomReminder.ReadPosition(var aLeft: Integer;
  var aRight: Integer;
  var aTop: Integer;
  var aBottom: Integer);
//#UC START# *4F86EE63028A_4D9051C90295_var*
//#UC END# *4F86EE63028A_4D9051C90295_var*
begin
//#UC START# *4F86EE63028A_4D9051C90295_impl*
 aLeft := f_LeftDelta;
 aRight := f_RightDelta;
 aTop := f_TopDelta;
 aBottom := f_BottomDelta;
//#UC END# *4F86EE63028A_4D9051C90295_impl*
end;//TvtCustomReminder.ReadPosition

procedure TvtCustomReminder.WritePosition(aLeft: Integer;
  aRight: Integer;
  aTop: Integer;
  aBottom: Integer);
//#UC START# *4F86EEA70045_4D9051C90295_var*
//#UC END# *4F86EEA70045_4D9051C90295_var*
begin
//#UC START# *4F86EEA70045_4D9051C90295_impl*
 f_LeftDelta := aLeft;
 f_RightDelta := aRight;
 f_TopDelta := aTop;
 f_BottomDelta := aBottom;
//#UC END# *4F86EEA70045_4D9051C90295_impl*
end;//TvtCustomReminder.WritePosition

procedure TvtCustomReminder.SetPos(X: Integer;
  Y: Integer);
//#UC START# *4F86EF2503A5_4D9051C90295_var*
//#UC END# *4F86EF2503A5_4D9051C90295_var*
begin
//#UC START# *4F86EF2503A5_4D9051C90295_impl*
 SetBounds(X, Y, Width, Height);
//#UC END# *4F86EF2503A5_4D9051C90295_impl*
end;//TvtCustomReminder.SetPos

{$If not defined(NoVGScene)}
function TvtCustomReminder.GetPopupFormBoundsRect(aControl: TControl;
  aForce: Boolean): TRect;
//#UC START# *4F86EF6602CD_4D9051C90295_var*

{$If not defined(NoVCM)}
 procedure FillResults;
 const
  cDummySize = 2;
 var
  l_TP : TvtTailPosition;
 begin//FillResults
  // begin - чтобы всякие Assert не расстраивались, например в TvgCustomScene.UpdateLayer
  Result.Right := cDummySize;
  Result.Bottom := cDummySize;
  // end - чтобы всякие Assert не расстраивались, например в TvgCustomScene.UpdateLayer
  for l_TP := Low(l_TP) to High(l_TP) do
  begin
   f_PopupFormBoundsRects.rV[l_TP].Right := cDummySize;
   f_PopupFormBoundsRects.rV[l_TP].Bottom := cDummySize;
  end;//for l_TP
  f_ControlToRecalc := aControl;
  // - запомним контрол и посчитаем потом
 end;//FillResults

var
 l_Width     : Integer;
 l_Height    : Integer;
 l_WidthNew  : Integer;
 l_HeightNew : Integer;
 l_V         : IafwFormView;
{$IfEnd} 
//#UC END# *4F86EF6602CD_4D9051C90295_var*
begin
//#UC START# *4F86EF6602CD_4D9051C90295_impl*
 l3FillChar(Result, SizeOf(Result));
 {$If defined(NoVCM)}
 Assert(false);
 {$Else}
 l3FillChar(f_PopupFormBoundsRects, SizeOf(f_PopupFormBoundsRects));
 l_Width := 450;
 l_Height := Max(Height, 100);
 f_PopupFormBoundsRects.rInited := false;
 if Supports(aControl, IafwFormView, l_V) then
  try
   f_PopupFormBoundsRects.rInited := true;
   // http://mdp.garant.ru/pages/viewpage.action?pageId=327822612
   // - будем оптимистами иначе можем получить Assert и/или бесконечный цикл
   //   т.к. TPrimWarningForm.CalculateHeightByWidth может зваться Viewer.Width := theWidth;
   //   а там может прилететь TvtReminder.Notify_WndProcListener, а там опять зовётся PopupFormBoundsRect
   //   а там зовётся GetPopupFormBoundsRect
   l_Height := l_V.CalculateHeightByWidth(l_Width, aForce);
   if (l_Height = 0) then
   // - данные видимо ещё не доехали
   begin
    f_PopupFormBoundsRects.rInited := false;
    // - оптимизм оказался беспочвенным
    FillResults;
    f_ControlToRecalc := aControl;
    // - запомним контрол и посчитаем потом
    Exit;
   end;//l_Height = 0
   Inc(l_Height, 2);
   l_V.SetBackColor(cWarningMessageColor);
  finally
   l_V := nil;
  end//try..finally
 else
 begin
  FillResults;
  f_ControlToRecalc := nil;
  Exit;
 end;//Supports(aControl, IafwFormView, l_V)

 f_ControlToRecalc := nil;
 // - сбросим запомненный ранее контрол
 TvtPopupForm.AdjustBalloonSize(vtTailLeft, Abs(Self.Font.Size), l_Width, l_Height, l_WidthNew, l_HeightNew);
 f_PopupFormBoundsRects.rV[vtTailLeft] := Rect(Width,              -((l_HeightNew - ImageHeight) div 2),
                                            Width + l_WidthNew, -((l_HeightNew - ImageHeight) div 2) + l_HeightNew);

 TvtPopupForm.AdjustBalloonSize(vtTailRight, Abs(Self.Font.Size), l_Width, l_Height, l_WidthNew, l_HeightNew);
 f_PopupFormBoundsRects.rV[vtTailRight] := Rect(-l_WidthNew, -((l_HeightNew - ImageHeight) div 2),
                                              0,          -((l_HeightNew - ImageHeight) div 2) + l_HeightNew);

 TvtPopupForm.AdjustBalloonSize(vtTailTop, Abs(Self.Font.Size), l_Width, l_Height, l_WidthNew, l_HeightNew);
 f_PopupFormBoundsRects.rV[vtTailTop] := Rect(-((l_WidthNew - Width) div 2),              Height,
                                           -((l_WidthNew - Width) div 2) + l_WidthNew, Height + l_HeightNew);

 TvtPopupForm.AdjustBalloonSize(vtTailBottom, Abs(Self.Font.Size), l_Width, l_Height, l_WidthNew, l_HeightNew);
 f_PopupFormBoundsRects.rV[vtTailBottom] := Rect(-((l_WidthNew - Width) div 2),              -l_HeightNew,
                                              -((l_WidthNew - Width) div 2) + l_WidthNew,  0);
 f_PopupFormBoundsRects.rInited := true;
 Result := PopupFormBoundsRect;
 {$IfEnd}
//#UC END# *4F86EF6602CD_4D9051C90295_impl*
end;//TvtCustomReminder.GetPopupFormBoundsRect
{$IfEnd} //not NoVGScene

{$If not defined(NoVGScene)}
function TvtCustomReminder.PopupFormBoundsRect: TRect;
//#UC START# *4F86EFE6028A_4D9051C90295_var*
{$IfNDef NoVCM}
  function BalloonShift(a_BalloonRect, a_DesktopRect : TRect; a_Origin : TPoint): Integer;
  var
   l_ShiftX : Integer;
   l_ShiftY : Integer;
  begin
   {$IfDef vtLayeredFormIsForm}
   OffsetRect(a_BalloonRect, a_Origin.X, a_Origin.Y);
   {$EndIf vtLayeredFormIsForm}
   l_ShiftX := Max(0, a_BalloonRect.Right  - a_DesktopRect.Right);
   if (l_ShiftX = 0) then
    l_ShiftX := Max(0, a_DesktopRect.Left - a_BalloonRect.Left);
   l_ShiftY := Max(0, a_BalloonRect.Bottom - a_DesktopRect.Bottom);
   if (l_ShiftY = 0) then
    l_ShiftY := Max(0, a_DesktopRect.Top - a_BalloonRect.Top);
   Result := l_ShiftX + l_ShiftY;
  end;
var
 l_Origin          : TPoint;
 l_DesktopRect     : TRect;
 l_TP              : TvtTailPosition;
 l_ShortestShift   : Integer;
 l_ShortestShiftTP : TvtTailPosition;
 l_Shift           : Integer;
{$EndIf NoVCM} 
//#UC END# *4F86EFE6028A_4D9051C90295_var*
begin
//#UC START# *4F86EFE6028A_4D9051C90295_impl*
 {$IfDef NoVCM}
 l3FillChar(Result, SizeOf(Result));
 Assert(false);
 {$Else  NoVCM}
 l_Origin := Self.ClientOrigin;
 if not f_PopupFormBoundsRects.rInited then
  GetPopupFormBoundsRect(f_ControlToRecalc, true);
 if not f_PopupFormBoundsRects.rInited then
 // http://mdp.garant.ru/pages/viewpage.action?pageId=327822612
 // Assert тут нельзя
  Result := f_PopupFormBoundsRects.rV[vtTailLeft]
 else 
 if (f_PopupForm = nil) then
  Result := f_PopupFormBoundsRects.rV[vtTailLeft]
 else
 begin
  if not f_PopupForm.Visible then
  begin
   //l_DesktopRect := Screen.DesktopRect;
   l_DesktopRect := Screen.MonitorFromWindow(Handle).WorkareaRect;
   l_ShortestShift := BalloonShift(f_PopupFormBoundsRects.rV[vtTailLeft], l_DesktopRect, l_Origin);
   l_ShortestShiftTP := vtTailLeft;
   for l_TP := Low(TvtTailPosition) to High(TvtTailPosition) do
   begin
    l_Shift := BalloonShift(f_PopupFormBoundsRects.rV[l_TP], l_DesktopRect, l_Origin);
    if (l_ShortestShift > l_Shift) then
    begin
     l_ShortestShift := l_Shift;
     l_ShortestShiftTP := l_TP;
    end;//l_ShortestShift > l_Shift
   end;//for l_TP
   f_PopupForm.TailPosition := l_ShortestShiftTP;
  end;//not f_PopupForm.Visible
  Result := f_PopupFormBoundsRects.rV[f_PopupForm.TailPosition];
 end;//f_PopupForm = nil
 {$IfDef vtLayeredFormIsForm}
 OffsetRect(Result, l_Origin.X, l_Origin.Y);
 {$EndIf vtLayeredFormIsForm}
 {$EndIf NoVCM}
//#UC END# *4F86EFE6028A_4D9051C90295_impl*
end;//TvtCustomReminder.PopupFormBoundsRect
{$IfEnd} //not NoVGScene

{$If not defined(NoVGScene)}
procedure TvtCustomReminder.CheckBaloonFitsMonitors;
//#UC START# *4F86F01D0183_4D9051C90295_var*
{$IfNDef DesignTimeLibrary}
type
 TRectCorner = (rcTopLeft, rcTopRight, rcRightBottom, rcLeftBottom);

var
 l_Shift: array[TRectCorner] of TPoint;
 l_IsInit: Boolean;

 procedure CheckMonitor(aMonitorIndex: Integer; aFormRect: TRect);
 var
  l_MontorRect: TRect;
  l_Corner: TPoint;
  l_Vector: TPoint;

  function GetShiftVector(const aRect: TRect; const aPoint: TPoint): TPoint;
  { вектор, на который необходимо сдвинуть точку,
    чтоб она попала внутрь прямоугольника }
  begin
   with aRect, aPoint do
   begin
    if X < Left then
     Result.X := Left - X
    else
    if X > Right then
     Result.X := Right - X
    else
     Result.X := 0;

    if Y < Top then
     Result.Y := Top - Y
    else
    if Y > Bottom then
     Result.Y := Bottom - Y
    else
     Result.Y := 0;
   end;
  end;

  function MinVector(A, B: TPoint): TPoint;
  begin
   if A.X * A.X + A.Y * A.Y > B.X * B.X + B.Y * B.Y then
    Result := B
   else
    Result := A;
  end;

 begin
  l_MontorRect := Screen.Monitors[aMonitorIndex].BoundsRect;
  if l_IsInit then
  begin
   // top,left
   l_Corner := Point(aFormRect.Left, aFormRect.Top);
   l_Vector := GetShiftVector(l_MontorRect, l_Corner);
   l_Shift[rcTopLeft] := MinVector(l_Shift[rcTopLeft], l_Vector);

   // top,right
   l_Corner := Point(aFormRect.Right, aFormRect.Top);
   l_Vector := GetShiftVector(l_MontorRect, l_Corner);
   l_Shift[rcTopRight] := MinVector(l_Shift[rcTopRight], l_Vector);

   // right,bottom
   l_Corner := Point(aFormRect.Right, aFormRect.Bottom);
   l_Vector := GetShiftVector(l_MontorRect, l_Corner);
   l_Shift[rcRightBottom] := MinVector(l_Shift[rcRightBottom], l_Vector);

   // left,bottom
   l_Corner := Point(aFormRect.Left, aFormRect.Bottom);
   l_Vector := GetShiftVector(l_MontorRect, l_Corner);
   l_Shift[rcLeftBottom] := MinVector(l_Shift[rcLeftBottom], l_Vector);
  end else
  begin
   l_IsInit := True;
   // top,left
   l_Corner := Point(aFormRect.Left, aFormRect.Top);
   l_Vector := GetShiftVector(l_MontorRect, l_Corner);
   l_Shift[rcTopLeft] := l_Vector;

   // top,right
   l_Corner := Point(aFormRect.Right, aFormRect.Top);
   l_Vector := GetShiftVector(l_MontorRect, l_Corner);
   l_Shift[rcTopRight] := l_Vector;

   // right,bottom
   l_Corner := Point(aFormRect.Right, aFormRect.Bottom);
   l_Vector := GetShiftVector(l_MontorRect, l_Corner);
   l_Shift[rcRightBottom] := l_Vector;

   // left,bottom
   l_Corner := Point(aFormRect.Left, aFormRect.Bottom);
   l_Vector := GetShiftVector(l_MontorRect, l_Corner);
   l_Shift[rcLeftBottom] := l_Vector;
  end;
 end;

 function MaxVector(A, B: TPoint): TPoint;
 begin
  if A.X * A.X + A.Y * A.Y > B.X * B.X + B.Y * B.Y then
   Result := A
  else
   Result := B;
 end;

var
 l_I: Integer;
 l_Corner: TRectCorner;
 l_FormRect: TRect;
 l_MaxShift: TPoint;
{$EndIf DesignTimeLibrary} 
//#UC END# *4F86F01D0183_4D9051C90295_var*
begin
//#UC START# *4F86F01D0183_4D9051C90295_impl*
 {$IfNDef DesignTimeLibrary}
 {$IfDef l3HackedVCL}
 Screen.GetMonitors;
 {$Else l3HackedVCL}
 Screen.MonitorCount;
 {$EndIf l3HackedVCL}
 l_IsInit := False;
 l_FormRect := f_PopupForm.BoundsRect;
 l3FillChar(l_MaxShift, SizeOf(l_MaxShift));
 for l_I := 0 to Screen.MonitorCount - 1 do
  CheckMonitor(l_I, l_FormRect);
 for l_Corner := Low(TRectCorner) to High(TRectCorner) do
  l_MaxShift := MaxVector(l_MaxShift, l_Shift[l_Corner]);
 if (l_MaxShift.X <> 0) or (l_MaxShift.Y <> 0) then
  f_RemindersLine.MoveLine(l_MaxShift.X, l_MaxShift.Y, False);
 {$EndIf DesignTimeLibrary} 
//#UC END# *4F86F01D0183_4D9051C90295_impl*
end;//TvtCustomReminder.CheckBaloonFitsMonitors
{$IfEnd} //not NoVGScene

{$If not defined(NoVGScene)}
procedure TvtCustomReminder.ShowDockingControl(aDockControl: TControl;
  const aFormBoundsRect: TRect);
//#UC START# *4F86F0500303_4D9051C90295_var*
//#UC END# *4F86F0500303_4D9051C90295_var*
begin
//#UC START# *4F86F0500303_4D9051C90295_impl*
 if (f_PopupForm = nil) then
 begin
  {$IfDef NoVCM}
  Assert(false);
  {$Else  NoVCM}
  f_PopupForm := TvtPopupFormModelPart.CreateNew(Self);
  {$EndIf NoVCM}
  f_PopupForm.AfterBaloonHidden := Self.f_AfterBaloonHidden;
  Tl3ListenersManager.AddWndProcListener(Self);
 end;//f_PopupForm = nil
 //TForm(f_PopupForm).FormStyle := fsStayOnTop;
 {$IfNDef vtLayeredFormIsForm}
 f_PopupForm.Parent := Self.Parent;
 {$EndIF  vtLayeredFormIsForm}
 f_PopupForm.BoundsRect := aFormBoundsRect;
 if (aDockControl <> nil) then
 begin
(*  if (f_PopupForm.Panel.ControlCount = 0) OR
     (f_PopupForm.Panel.Controls[0] <> aDockControl) then*)
  begin
   aDockControl.ManualDock(f_PopupForm.Panel);
   aDockControl.Align := alClient; // http://mdp.garant.ru/pages/viewpage.action?pageId=342333986 
   if (aDockControl is TCustomForm) then
    if not TCustomForm(aDockControl).Visible then
     TCustomForm(aDockControl).Show;
  end;//f_PopupForm.Panel.ControlCount = 0
 end;//aDockControl <> nil
 if f_ShowPopupFormOnDock OR f_ShowPopupFormOnDockLocal then
 begin
  if Self.Visible then
  begin
   f_ShowPopupFormOnDockLocal := false;
   if not f_PopupForm.Visible then
    f_PopupForm.Show;
  end;//Self.Visible
 end{//f_ShowPopupFormOnDock
 else
  f_PopupForm.Visible := false};
 // - нельзя так, иначе форма прячется при измененнии размеров
//#UC END# *4F86F0500303_4D9051C90295_impl*
end;//TvtCustomReminder.ShowDockingControl
{$IfEnd} //not NoVGScene

{$If not defined(NoVGScene)}
procedure TvtCustomReminder.OpenBaloon;
//#UC START# *4F86F071030F_4D9051C90295_var*
//#UC END# *4F86F071030F_4D9051C90295_var*
begin
//#UC START# *4F86F071030F_4D9051C90295_impl*
 if f_IsShowingOrClosingBaloon then Exit;
 f_IsShowingOrClosingBaloon := True;
 try
  if (f_RemindersLine <> nil) then
   f_RemindersLine.CloseBaloons;
  f_PopupForm.BoundsRect := PopupFormBoundsRect;
  CheckBaloonFitsMonitors;
  f_PopupForm.Visible := true;
  f_PopupForm.BringToFront;
  if Assigned(f_AfterBaloonShowed) then
   f_AfterBaloonShowed(Self);
 finally
  f_IsShowingOrClosingBaloon := False;
 end;//try..finally
//#UC END# *4F86F071030F_4D9051C90295_impl*
end;//TvtCustomReminder.OpenBaloon
{$IfEnd} //not NoVGScene

{$If not defined(NoVGScene)}
procedure TvtCustomReminder.CloseBaloon;
//#UC START# *4F86F0800231_4D9051C90295_var*
//#UC END# *4F86F0800231_4D9051C90295_var*
begin
//#UC START# *4F86F0800231_4D9051C90295_impl*
 if not (Assigned(f_PopupForm) and f_PopupForm.Visible) then Exit;
 if f_IsShowingOrClosingBaloon then Exit;
 f_IsShowingOrClosingBaloon := True;
 try
  f_PopupForm.Visible := false;
 finally
  f_IsShowingOrClosingBaloon := False;
 end;
//#UC END# *4F86F0800231_4D9051C90295_impl*
end;//TvtCustomReminder.CloseBaloon
{$IfEnd} //not NoVGScene

{$If not defined(NoVGScene)}
function TvtCustomReminder.GetBaloonHandle: THandle;
//#UC START# *4F86F0B20164_4D9051C90295_var*
//#UC END# *4F86F0B20164_4D9051C90295_var*
begin
//#UC START# *4F86F0B20164_4D9051C90295_impl*
 if Assigned(PopupForm) and PopupForm.HandleAllocated 
  then Result := PopupForm.Handle
  else Result := 0;
//#UC END# *4F86F0B20164_4D9051C90295_impl*
end;//TvtCustomReminder.GetBaloonHandle
{$IfEnd} //not NoVGScene

{$If not defined(NoVGScene)}
function TvtCustomReminder.PopupFormRect: TRect;
//#UC START# *4F86F0DE019E_4D9051C90295_var*
//#UC END# *4F86F0DE019E_4D9051C90295_var*
begin
//#UC START# *4F86F0DE019E_4D9051C90295_impl*
 if (PopupForm = nil) or not PopupForm.Visible 
  then Result := Rect(0, 0, 0, 0)
  else Result := PopupForm.BoundsRect;
//#UC END# *4F86F0DE019E_4D9051C90295_impl*
end;//TvtCustomReminder.PopupFormRect
{$IfEnd} //not NoVGScene
// start class TvtCustomReminder

procedure TvtCustomReminder.pm_SetPicture(aValue: TPicture);
//#UC START# *4F86CA03029E_4D9051C90295set_var*
//#UC END# *4F86CA03029E_4D9051C90295set_var*
begin
//#UC START# *4F86CA03029E_4D9051C90295set_impl*
 f_Picture.Assign(aValue);
 PictureChanged(Self);
//#UC END# *4F86CA03029E_4D9051C90295set_impl*
end;//TvtCustomReminder.pm_SetPicture

procedure TvtCustomReminder.pm_SetImageIndex(aValue: TImageIndex);
//#UC START# *4F86CF560016_4D9051C90295set_var*
//#UC END# *4F86CF560016_4D9051C90295set_var*
begin
//#UC START# *4F86CF560016_4D9051C90295set_impl*
 if f_ImageIndex <> aValue then
 begin
  if (not Assigned(f_Images) or ((f_Images.Count < aValue + 1) and 
     not (csDesigning in ComponentState))) and
     not (csLoading in ComponentState) 
   then f_ImageIndex := -1
   else f_ImageIndex := aValue;
  PictureChanged(Self);
 end;
//#UC END# *4F86CF560016_4D9051C90295set_impl*
end;//TvtCustomReminder.pm_SetImageIndex

procedure TvtCustomReminder.pm_SetImages(aValue: TCustomImageList);
//#UC START# *4F86CFA003C3_4D9051C90295set_var*
//#UC END# *4F86CFA003C3_4D9051C90295set_var*
begin
//#UC START# *4F86CFA003C3_4D9051C90295set_impl*
 if (f_Images <> aValue) then
 begin
  if (f_ImgChangeLink <> nil) AND (f_ImgChangeLink.Sender = nil) then
   // - список картинок уже убит - надо его зачистить
   f_Images := nil;
  if f_Images <> nil then
   f_Images.UnRegisterChanges(f_ImgChangeLink);
  f_Images := aValue;
  CheckFlashing;
  if f_Images <> nil then
  begin
   if f_ImgChangeLink = nil then
   begin
    f_ImgChangeLink := TChangeLink.Create;
    f_ImgChangeLink.OnChange := PictureChanged;
   end;
   f_Images.RegisterChanges(f_ImgChangeLink);
   SetBounds(Left, Top, f_Images.Width, f_Images.Height);
  end
  else
   f_ImageIndex := -1;
  PictureChanged(Self);
 end;//f_Images <> aValue
//#UC END# *4F86CFA003C3_4D9051C90295set_impl*
end;//TvtCustomReminder.pm_SetImages

procedure TvtCustomReminder.pm_SetRemindersLine(const aValue: IvtRemindersLine);
//#UC START# *4F86D0A2004B_4D9051C90295set_var*
//#UC END# *4F86D0A2004B_4D9051C90295set_var*
begin
//#UC START# *4F86D0A2004B_4D9051C90295set_impl*
 f_RemindersLine := aValue;
 if Assigned(aValue) then
 // Отпишемся от нотификации если reminder входит в состав коллекции,
 // коллекция сама будет управлять размещением reminders.
 begin
  {$If not defined(NoVGScene)}
  if (f_PopupForm = nil) then
  {$IfEnd}
   Tl3ListenersManager.RemoveWndProcListener(Self);
 end//Assigned(aValue)
 else
  Tl3ListenersManager.AddWndProcListener(Self);
//#UC END# *4F86D0A2004B_4D9051C90295set_impl*
end;//TvtCustomReminder.pm_SetRemindersLine

procedure TvtCustomReminder.pm_SetFlashing(aValue: Boolean);
//#UC START# *4F86D1DA0334_4D9051C90295set_var*
//#UC END# *4F86D1DA0334_4D9051C90295set_var*
begin
//#UC START# *4F86D1DA0334_4D9051C90295set_impl*
 if f_Flashing <> aValue then
 begin
  f_Flashing := aValue;
  if not (csLoading in ComponentState) then
   CheckFlashing;
 end;
//#UC END# *4F86D1DA0334_4D9051C90295set_impl*
end;//TvtCustomReminder.pm_SetFlashing

procedure TvtCustomReminder.pm_SetFlashInterval(aValue: Cardinal);
//#UC START# *4F86D4C303E4_4D9051C90295set_var*
//#UC END# *4F86D4C303E4_4D9051C90295set_var*
begin
//#UC START# *4F86D4C303E4_4D9051C90295set_impl*
 if f_FlashInterval <> aValue then
 begin
  f_FlashInterval := aValue;
  if Assigned(f_FlashTimer) then
   f_FlashTimer.Interval := aValue;
 end;
//#UC END# *4F86D4C303E4_4D9051C90295set_impl*
end;//TvtCustomReminder.pm_SetFlashInterval

procedure TvtCustomReminder.pm_SetDrawCaption(aValue: Boolean);
//#UC START# *4F86D5BD0110_4D9051C90295set_var*
//#UC END# *4F86D5BD0110_4D9051C90295set_var*
begin
//#UC START# *4F86D5BD0110_4D9051C90295set_impl*
 if (f_DrawCaption <> aValue) then
 begin
  f_DrawCaption := aValue;
  if not UpdateSize then
   UpdateWindowRegion;
  Invalidate;
 end;//f_DrawCaption <> aValue
//#UC END# *4F86D5BD0110_4D9051C90295set_impl*
end;//TvtCustomReminder.pm_SetDrawCaption

function TvtCustomReminder.pm_GetIsBaloonVisible: Boolean;
//#UC START# *4F8C3AFE0198_4D9051C90295get_var*
//#UC END# *4F8C3AFE0198_4D9051C90295get_var*
begin
//#UC START# *4F8C3AFE0198_4D9051C90295get_impl*
 {$If not defined(NoVGScene)}
 Result := Assigned(PopupForm) and PopupForm.Visible;
 {$Else}
 Result := false;
 {$IfEnd}
//#UC END# *4F8C3AFE0198_4D9051C90295get_impl*
end;//TvtCustomReminder.pm_GetIsBaloonVisible

procedure TvtCustomReminder.CMVisibleChanged(var Message: TMessage);
//#UC START# *4F86E71103AE_4D9051C90295_var*
//#UC END# *4F86E71103AE_4D9051C90295_var*
begin
//#UC START# *4F86E71103AE_4D9051C90295_impl*
 inherited;
 if Visible then
 begin
  BringToFront;
  BringRemindersToFront;
 end;//Visible
 {$If not defined(NoVGScene)}
 if (f_PopupForm <> nil) then
  if f_ShowPopupFormOnDockLocal then
  begin
   if Visible then
   begin
    f_ShowPopupFormOnDockLocal := false;
    f_PopupForm.Show;
   end;//Visible
  end//f_ShowPopupFormOnDockLocal
  else
  if f_ShowPopupFormOnDock OR not Visible then
   f_PopupForm.Visible := Visible;
 {$IfEnd}
 CheckFlashing;
 UpdateWindowRegion;
 if Assigned(f_RemindersLine) then
  f_RemindersLine.RestoreRatio;
//#UC END# *4F86E71103AE_4D9051C90295_impl*
end;//TvtCustomReminder.CMVisibleChanged

procedure TvtCustomReminder.WMEraseBkgnd(var Message: TWMEraseBkgnd);
//#UC START# *4F86E75B0015_4D9051C90295_var*
//#UC END# *4F86E75B0015_4D9051C90295_var*
begin
//#UC START# *4F86E75B0015_4D9051C90295_impl*
 {$IfNDef DesignTimeLibrary}
 if f_NeedEraseBackGround then
  inherited
 else
  Message.Result := 1;
 f_NeedEraseBackGround := False;
 {$Else DesignTimeLibrary}
 inherited;
 {$EndIf DesignTimeLibrary}
//#UC END# *4F86E75B0015_4D9051C90295_impl*
end;//TvtCustomReminder.WMEraseBkgnd

procedure TvtCustomReminder.CMShowingChanged(var Message: TMessage);
//#UC START# *4F86E781015E_4D9051C90295_var*
const
 c_Flags = SWP_NOSIZE + SWP_NOMOVE + SWP_NOACTIVATE + SWP_SHOWWINDOW;
//#UC END# *4F86E781015E_4D9051C90295_var*
begin
//#UC START# *4F86E781015E_4D9051C90295_impl*
 inherited;
 // Выстроим медали в ряд:
 if not (csDesigning in ComponentState) and Assigned(f_RemindersLine) then
 begin
  // Поднимем наверх, в родительском inherited этого не делается:
  if Showing then
   SetWindowPos(Handle, HWND_TOP, 0, 0, 0, 0, c_Flags);
  f_RemindersLine.UpdatePositions;
 end;//if not (csDesigning in ComponentState)...
//#UC END# *4F86E781015E_4D9051C90295_impl*
end;//TvtCustomReminder.CMShowingChanged

procedure TvtCustomReminder.CMTextChanged(var Message: TMessage);
//#UC START# *4F86E7D90190_4D9051C90295_var*
//#UC END# *4F86E7D90190_4D9051C90295_var*
begin
//#UC START# *4F86E7D90190_4D9051C90295_impl*
 inherited;
 if DrawCaption then
 begin
  if not UpdateSize then
   UpdateWindowRegion;
  Invalidate;
 end;//DrawCaption
//#UC END# *4F86E7D90190_4D9051C90295_impl*
end;//TvtCustomReminder.CMTextChanged

procedure TvtCustomReminder.WMBringToFront(var Message: TMessage);
//#UC START# *4F86E7F2013B_4D9051C90295_var*
//#UC END# *4F86E7F2013B_4D9051C90295_var*
begin
//#UC START# *4F86E7F2013B_4D9051C90295_impl*
 BringToFront;
//#UC END# *4F86E7F2013B_4D9051C90295_impl*
end;//TvtCustomReminder.WMBringToFront

procedure TvtCustomReminder.PageInactive;
//#UC START# *473DB05D033A_4D9051C90295_var*
//#UC END# *473DB05D033A_4D9051C90295_var*
begin
//#UC START# *473DB05D033A_4D9051C90295_impl*
 {$If not defined(NoVGScene)}
 CloseBaloon;
 {$IfEnd}
//#UC END# *473DB05D033A_4D9051C90295_impl*
end;//TvtCustomReminder.PageInactive

procedure TvtCustomReminder.PageActive;
//#UC START# *473DB06A01A8_4D9051C90295_var*
//#UC END# *473DB06A01A8_4D9051C90295_var*
begin
//#UC START# *473DB06A01A8_4D9051C90295_impl*
 // nop
//#UC END# *473DB06A01A8_4D9051C90295_impl*
end;//TvtCustomReminder.PageActive

function TvtCustomReminder.pm_GetWeight: Integer;
//#UC START# *473DB083030D_4D9051C90295get_var*
//#UC END# *473DB083030D_4D9051C90295get_var*
begin
//#UC START# *473DB083030D_4D9051C90295get_impl*
 Result := 0;
//#UC END# *473DB083030D_4D9051C90295get_impl*
end;//TvtCustomReminder.pm_GetWeight

procedure TvtCustomReminder.WndProcListenerNotify(Msg: PCWPStruct;
  var theResult: Tl3HookProcResult);
//#UC START# *4F79CF3400BB_4D9051C90295_var*
//#UC END# *4F79CF3400BB_4D9051C90295_var*
begin
//#UC START# *4F79CF3400BB_4D9051C90295_impl*
 if not Assigned(Parent) then
  Exit;
 if not Parent.HandleAllocated then
  Exit;
 if (Msg.message = WM_SIZE) OR (Msg.message = WM_WINDOWPOSCHANGED) then
 begin
  {$If not defined(NoVGScene)}
  if (f_PopupForm <> nil) AND Self.Visible AND f_PopupForm.Visible then
   if f_PopupForm.HandleAllocated AND (f_PopupForm.Handle <> Msg.hwnd) then
    f_PopupForm.BoundsRect := PopupFormBoundsRect;
  {$IfEnd}  
  if (Msg.message = WM_SIZE) then
   if not Assigned(f_RemindersLine) then
    if (Parent.Handle = Msg.hwnd) then
     RestoreRatio;
 end;//Msg.message = WM_SIZE
 if (Msg.message = CM_VISIBLECHANGED) then
 begin
  if Visible and (Msg.Wparam <> 0) then
   PostMessage(Handle, WM_REMINDER_BringToFront, 0, 0);
 end;
//#UC END# *4F79CF3400BB_4D9051C90295_impl*
end;//TvtCustomReminder.WndProcListenerNotify

procedure TvtCustomReminder.BringReminderToFront;
//#UC START# *4F8C33150270_4D9051C90295_var*
//#UC END# *4F8C33150270_4D9051C90295_var*
begin
//#UC START# *4F8C33150270_4D9051C90295_impl*
 PostMessage(Self.Handle, WM_REMINDER_BringToFront, 0, 0);
//#UC END# *4F8C33150270_4D9051C90295_impl*
end;//TvtCustomReminder.BringReminderToFront

procedure TvtCustomReminder.Cleanup;
//#UC START# *479731C50290_4D9051C90295_var*
//#UC END# *479731C50290_4D9051C90295_var*
begin
//#UC START# *479731C50290_4D9051C90295_impl*
 f_ControlToRecalc := nil;
 ClearRegion;
 Tl3ListenersManager.RemoveWndProcListener(Self);
 f_RemindersLine := nil;
 l3Free(f_Picture);
 if Assigned(f_ImgChangeLink) then
  l3Free(f_ImgChangeLink);
 l3Free(f_FlashTimer);
 l3Free(f_ClickTimer);
 {$If not defined(NoVGScene)}
 l3Free(f_PopupForm);
 {$IfEnd}
 ClearImageRGN;
 f_Capturing := False;
 inherited;
//#UC END# *479731C50290_4D9051C90295_impl*
end;//TvtCustomReminder.Cleanup

constructor TvtCustomReminder.Create(AOwner: TComponent);
//#UC START# *47D1602000C6_4D9051C90295_var*
//#UC END# *47D1602000C6_4D9051C90295_var*
begin
//#UC START# *47D1602000C6_4D9051C90295_impl*
 inherited;
 f_Picture := TPicture.Create;
 f_Picture.OnChange := PictureChanged;
 PictureChanged(Self);
 Tl3ListenersManager.AddWndProcListener(Self);
 f_FlashInterval := 300;
 f_ClickTimer := TTimer.Create(Self);
 f_ClickTimer.Enabled := False;
 f_ClickTimer.OnTimer := ClickTimer;
 DoubleBuffered := True;
 f_IsShowingOrClosingBaloon := False;
//#UC END# *47D1602000C6_4D9051C90295_impl*
end;//TvtCustomReminder.Create

procedure TvtCustomReminder.Loaded;
//#UC START# *484516C00214_4D9051C90295_var*
//#UC END# *484516C00214_4D9051C90295_var*
begin
//#UC START# *484516C00214_4D9051C90295_impl*
 inherited;
 UpdateSize;
 BringToFront;
 CheckFlashing;
//#UC END# *484516C00214_4D9051C90295_impl*
end;//TvtCustomReminder.Loaded

procedure TvtCustomReminder.Paint(const CN: Il3Canvas);
//#UC START# *48C6C044025E_4D9051C90295_var*
var
 lWasDrawing : Boolean;
 l_Painter: IvtFlashImageList;
 l_TextRect: TRect;
 l_Details: TThemedElementDetails;
//#UC END# *48C6C044025E_4D9051C90295_var*
begin
//#UC START# *48C6C044025E_4D9051C90295_impl*
 if (csDesigning in ComponentState) then
 begin
  if (f_Picture.Graphic = nil) then
   with CN.Canvas do
   begin
    Pen.Style := psDash;
    Brush.Style := bsClear;
    Rectangle(0, 0, Width, Height);
   end;
 end;
 lWasDrawing := f_IsDrawing;
 f_IsDrawing := True;
 try

  FillRect(CN.Canvas.Handle, ClientRect, Brush.Handle);

  if Assigned(f_Images) then
  begin
   if Supports(f_Images, IvtFlashImageList, l_Painter) then
    l_Painter.Draw(CN.Canvas, f_DrawImageLeft, 0, f_ImageIndex, True, f_HalfTransparent)
   else
    f_Images.Draw(CN.Canvas, f_DrawImageLeft, 0, f_ImageIndex)
  end
  else
   CN.Canvas.Draw(f_DrawImageLeft, 0, f_Picture.Graphic);
 finally
  f_IsDrawing := lWasDrawing;
 end;
 if CanDrawCaption then
 begin
  l_TextRect := f_DrawTextRect;
  CN.PushBC;
  CN.BackColor := Application.HintColor;
  CN.FillRect(Tl3SRect(l_TextRect));

  if not ThemeServices.ThemesEnabled then
    Windows.DrawEdge(CN.Canvas.Handle, l_TextRect, BDR_RAISEDOUTER, BF_RECT)
  else
  begin
    l_Details := ThemeServices.GetElementDetails(twWindowRoot);
    ThemeServices.DrawEdge(CN.Canvas.Handle, l_Details, l_TextRect, BDR_RAISEDOUTER, BF_RECT);
  end;

  CN.Font.AssignFont(Screen.HintFont);
  InflateRect(l_TextRect, -cDrawOffsetX, -cDrawOffsetY);
  CN.DrawText(l3PCharLen(CCaption), l_TextRect, 0);
  CN.PopBC;
 end;
//#UC END# *48C6C044025E_4D9051C90295_impl*
end;//TvtCustomReminder.Paint

procedure TvtCustomReminder.MouseMove(Shift: TShiftState;
  X: Integer;
  Y: Integer);
//#UC START# *48E22B250241_4D9051C90295_var*
//#UC END# *48E22B250241_4D9051C90295_var*
begin
//#UC START# *48E22B250241_4D9051C90295_impl*
 f_SkipMouseMove := not f_SkipMouseMove; // вот такой костыль, чтоб успел отрисоваться фон

 if f_Capturing and not f_SkipMOuseMove then
 begin
  if (f_MouseDownSpot.X <> X) or (f_MouseDownSpot.Y <> Y) then
  begin
   MoveReminder(X - f_MouseDownSpot.X, Y - f_MouseDownSpot.Y, False);
   ControlState := ControlState - [csClicked];
   f_MouseMoved := True;
  end;//f_MouseDownSpot.X <> X..
 end;//f_Capturing
 inherited;
//#UC END# *48E22B250241_4D9051C90295_impl*
end;//TvtCustomReminder.MouseMove

procedure TvtCustomReminder.CreateWnd;
//#UC START# *4CC8414403B8_4D9051C90295_var*
//#UC END# *4CC8414403B8_4D9051C90295_var*
begin
//#UC START# *4CC8414403B8_4D9051C90295_impl*
 inherited;
 UpdateWindowRegion;
//#UC END# *4CC8414403B8_4D9051C90295_impl*
end;//TvtCustomReminder.CreateWnd

procedure TvtCustomReminder.DestroyWnd;
//#UC START# *4CC841540158_4D9051C90295_var*
//#UC END# *4CC841540158_4D9051C90295_var*
begin
//#UC START# *4CC841540158_4D9051C90295_impl*
 ClearRegion;
 inherited;
//#UC END# *4CC841540158_4D9051C90295_impl*
end;//TvtCustomReminder.DestroyWnd

procedure TvtCustomReminder.MouseUp(Button: TMouseButton;
  Shift: TShiftState;
  X: Integer;
  Y: Integer);
//#UC START# *4E7896270076_4D9051C90295_var*
//#UC END# *4E7896270076_4D9051C90295_var*
begin
//#UC START# *4E7896270076_4D9051C90295_impl*
 if (Button = mbLeft) and f_Capturing then
 begin
  ReleaseCapture;
  f_Capturing := False;
  MoveReminder(X - f_MouseDownSpot.X, Y - f_MouseDownSpot.Y, True);
  if not f_MouseMoved then
   {$If not defined(NoVGScene)}
   if (f_PopupForm = nil) then
   {$IfEnd}
   // http://mdp.garant.ru/pages/viewpage.action?pageId=284886507
   begin
    f_ClickTimer.Interval := GetDoubleClickTime;
    f_ClickTimer.Enabled := True;
   end;//f_PopupForm = nil
  f_MouseMoved := False;
 end;//Button = mbLeft
 inherited;
//#UC END# *4E7896270076_4D9051C90295_impl*
end;//TvtCustomReminder.MouseUp

procedure TvtCustomReminder.SetBounds(ALeft: Integer;
  ATop: Integer;
  AWidth: Integer;
  AHeight: Integer);
//#UC START# *4F2A599E0283_4D9051C90295_var*
{$IfDef DesignTimeLibrary}
var
 lChangeSize : Boolean;
{$Else  DesignTimeLibrary}
var
{$EndIf DesignTimeLibrary}
 l_H : THandle;
//#UC END# *4F2A599E0283_4D9051C90295_var*
begin
//#UC START# *4F2A599E0283_4D9051C90295_impl*
 {$IfDef DesignTimeLibrary}
 lChangeSize := False;
 if Assigned(f_RemindersLine) and not f_RemindersLine.IsMoving then
 begin
  if (Width <> AWidth) or (Height <> AHeight) then
   lChangeSize := True
  else
  if (ALeft <> Left) or (ATop <> Top) then
   f_RemindersLine.MoveLine(aLeft - Left, ATop - Top, False);
 end;
 inherited;
 // Изменился размер переставим
 if lChangeSize then
  f_RemindersLine.UpdatePositions
 {$Else DesignTimeLibrary}
 if (f_Images <> nil) then
 begin
  aWidth := Max(aWidth, f_Images.Width);
  aHeight := Max(aHeight, f_Images.Height);
 end;//f_Images <> nil
 inherited;
 {$If not defined(NoVGScene)}
 if (f_PopupForm <> nil) AND f_PopupForm.Visible then
 begin
  l_H := GetFocus;
  try
   f_PopupForm.BoundsRect := PopupFormBoundsRect;
  finally
   if (l_H <> 0) then
    if (Windows.SetFocus(l_H) = 0) then
     Assert(false);
  end;//try..finally
 end;//f_PopupForm <> nil
 {$IfEnd}
 {$EndIf DesignTimeLibrary}
//#UC END# *4F2A599E0283_4D9051C90295_impl*
end;//TvtCustomReminder.SetBounds

procedure TvtCustomReminder.Notification(AComponent: TComponent;
  Operation: TOperation);
//#UC START# *4F884378016A_4D9051C90295_var*
//#UC END# *4F884378016A_4D9051C90295_var*
begin
//#UC START# *4F884378016A_4D9051C90295_impl*
 inherited;
 if (Operation = opRemove) and (AComponent = Images) then
  Images := nil;
//#UC END# *4F884378016A_4D9051C90295_impl*
end;//TvtCustomReminder.Notification

function TvtCustomReminder.GetActionLinkClass: TControlActionLinkClass;
//#UC START# *4F8845840032_4D9051C90295_var*
//#UC END# *4F8845840032_4D9051C90295_var*
begin
//#UC START# *4F8845840032_4D9051C90295_impl*
 Result := TvtReminderActionLink;
//#UC END# *4F8845840032_4D9051C90295_impl*
end;//TvtCustomReminder.GetActionLinkClass

procedure TvtCustomReminder.Click;
//#UC START# *4F88469E0021_4D9051C90295_var*
var
 l_H : THandle;
 l_C : TWinControl;
//#UC END# *4F88469E0021_4D9051C90295_var*
begin
//#UC START# *4F88469E0021_4D9051C90295_impl*
 //if f_AllowClick then
 // - так нельзя, ибо тесты не работают
 //  если с этим будут проблемы, то надо будет пилить слово control:Click
  {$If not defined(NoVGScene)}
  if (f_PopupForm <> nil) then
  begin
   l_H := GetFocus;
   try
    f_ClickTimer.Enabled := false;
    OpenBaloon;
   finally
    if (l_H <> 0) then
    begin
     l_C := FindControl(l_H);
     if (l_C = nil) OR (afw.GetParentForm(l_C) <> f_PopupForm) then
     begin
      if (Windows.SetFocus(l_H) = 0) then
       Assert(false);
     end;//l_C = nil..
    end;//l_H <> 0
   end;//try..finally
   Exit;
  end;//f_PopupForm <> nil
  {$IfEnd}
 if f_AllowClick then
  inherited;
 f_AllowClick := False;
//#UC END# *4F88469E0021_4D9051C90295_impl*
end;//TvtCustomReminder.Click

procedure TvtCustomReminder.DblClick;
//#UC START# *4F8846EE022A_4D9051C90295_var*
//#UC END# *4F8846EE022A_4D9051C90295_var*
begin
//#UC START# *4F8846EE022A_4D9051C90295_impl*
 f_DblClicked := True;
 DelayedClick;
 inherited;
//#UC END# *4F8846EE022A_4D9051C90295_impl*
end;//TvtCustomReminder.DblClick

procedure TvtCustomReminder.MouseDown(Button: TMouseButton;
  Shift: TShiftState;
  X: Integer;
  Y: Integer);
//#UC START# *4F88473B03CD_4D9051C90295_var*
//#UC END# *4F88473B03CD_4D9051C90295_var*
begin
//#UC START# *4F88473B03CD_4D9051C90295_impl*
 if f_DblClicked then
  f_DblClicked := False
 else
 if (Button = mbLeft) then
 begin
  BringToFront;
  SetCapture(Handle);
  f_Capturing := True;
  f_MouseDownSpot.X := X;
  f_MouseDownSpot.Y := Y;
  f_MouseMoved := False;
 end;//Button = mbLeft
 inherited;
//#UC END# *4F88473B03CD_4D9051C90295_impl*
end;//TvtCustomReminder.MouseDown

procedure TvtCustomReminder.InitiateAction;
//#UC START# *4F884F39020F_4D9051C90295_var*
//#UC END# *4F884F39020F_4D9051C90295_var*
begin
//#UC START# *4F884F39020F_4D9051C90295_impl*
 inherited;
 if Visible and not Showing then
  UpdateControlState;
//#UC END# *4F884F39020F_4D9051C90295_impl*
end;//TvtCustomReminder.InitiateAction

procedure TvtCustomReminder.DockDrop(Source: TDragDockObject;
  X: Integer;
  Y: Integer);
//#UC START# *4F8851380274_4D9051C90295_var*
//#UC END# *4F8851380274_4D9051C90295_var*
begin
//#UC START# *4F8851380274_4D9051C90295_impl*
 {$If not defined(NoVGScene)}
 ShowDockingControl(Source.Control, GetPopupFormBoundsRect(Source.Control, false));
 {$IfEnd}
//#UC END# *4F8851380274_4D9051C90295_impl*
end;//TvtCustomReminder.DockDrop

procedure TvtCustomReminder.ClearFields;
 {-}
begin
 RemindersLine := nil;
 inherited;
end;//TvtCustomReminder.ClearFields

end.