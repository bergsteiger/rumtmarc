unit CalPanel;

{ $Id: CalPanel.pas,v 1.24 2013/01/22 15:51:48 kostitsin Exp $ }

// $Log: CalPanel.pas,v $
// Revision 1.24  2013/01/22 15:51:48  kostitsin
// [$424399029]
//
// Revision 1.23  2010/03/11 15:13:44  lulin
// {RequestLink:196969151}.
// - избавляемся от ненужных зависимостей от VCM.
//
// Revision 1.22  2010/03/03 16:52:37  lulin
// {RequestLink:193825692}.
//
// Revision 1.21  2010/03/03 13:24:25  lulin
// {RequestLink:193825692}.
//
// Revision 1.20  2007/04/04 13:05:08  lulin
// - bug fix: не всегда кава была готова к рисованию (CQ OIT5-24881).
//
// Revision 1.19  2007/03/14 13:30:40  lulin
// - наследуемся от родной панели.
//
// Revision 1.18  2007/03/14 13:07:43  lulin
// - bug fix: не рисовались дни недели.
//
// Revision 1.17  2007/01/22 15:19:51  oman
// - new: Локализация библиотек - vt (cq24078)
//
// Revision 1.16  2005/04/12 15:02:18  mmorozov
// bugfix: при работе с датами контролируем граничные условия;
//
// Revision 1.15  2005/04/07 15:36:46  mmorozov
// bugfix: при попытке установить год меньше 1600 возникало исключение (теперь по достижении января 1600 нажатие на предыдущий месяц, год ни к чему ни приводит);
//
// Revision 1.14  2005/01/21 14:53:22  am
// new: OldDay - поле для хранения текущей выбранной даты
//
// Revision 1.13  2004/12/23 11:28:35  lulin
// - rename unit: vtDateSt -> l3DateSt.
//
// Revision 1.12  2004/11/19 13:31:24  fireton
// - cleanup
//
// Revision 1.11  2004/07/06 15:07:19  fireton
// - bug fix: Range Check Error при отпускании мышки вне drop-down кнопки
// - bug fix: закрыте календарика при отпускании мышки на нем
//
// Revision 1.10  2004/01/21 13:09:42  fireton
// - fix: поведение календарика при нажатии Enter и рамочка
//
// Revision 1.9  2004/01/16 12:19:56  fireton
// - ve: слегка поправлена отрисовка календарной панели
//
// Revision 1.8  2003/12/05 13:18:32  fireton
// - bug fix: коррекция прорисовки под манифестом XP
//
// Revision 1.7  2001/04/05 08:52:17  law
// - cleanup: использование модулей WinTypes и WinProcs заменен на Windows.
//
// Revision 1.6  2000/12/15 15:36:28  law
// - вставлены директивы Log.
//

interface

uses
  SysUtils, Windows, Messages,
  Classes, Graphics, Controls,
  Forms, Menus, ExtCtrls,

  l3InternalInterfaces,
  l3Date,

  vtPanel
  ;

type
  TCustomCalendarPanel = class(TvtCustomPanel)
  private
    lForceRedraw : Boolean;
    lMouseDown   : Boolean;
    lMonthIndent : Byte;
    
    CurYear,
    CurMonth,
    CurDay       : Word;

    FStartOfWeek  : TStDayType;
    FWeekends     : TDaysOfWeek;
    FWeekendColor : TColor;

    FOnChange: TNotifyEvent;

  protected
    Function GetDayFromPoint(Pt : TPoint) : Integer;
    Function GetDayRect(aDay : Word) : TRect;

    procedure DrawFocusFrame(aPredDay : Word);
    Procedure InvalidateDayArray;

    procedure Paint(const CN: Il3Canvas);
      override;
    procedure Change;

    {procedure CMFontChanged(var Message: TMessage); message CM_FONTCHANGED;}

    {procedure WMKeyDown(var Message: TWMKeyDown); message WM_KEYDOWN;}
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure WMGetDlgCode(var Msg : TWMGetDlgCode); message WM_GETDLGCODE;
    procedure WMLButtonDown(var Message: TWMLButtonDown); message WM_LBUTTONDOWN;
    procedure WMLButtonUp(var Message: TWMLButtonUp); message WM_LBUTTONUP;
    procedure WMMouseMove(var Message: TWMMouseMove); message WM_MOUSEMOVE;
    procedure WMShowWindow(var Message: TWMShowWindow); message WM_SHOWWINDOW;
  public
    OldDay: Integer;
  public
    constructor Create(AOwner: TComponent);
      override;
      {-}
    Procedure   SetDate(DT : TDateTime);
    Function    GetDate : TDateTime;
    procedure NextDay;
    procedure PrevDay;
    procedure NextWeek;
    procedure PrevWeek;
    procedure NextMonth;
    procedure PrevMonth;
    procedure NextYear;
    procedure PrevYear;
    procedure RelMoveDate(nDays : Integer);

    Property Date : TDateTime Read GetDate Write SetDate;

    Property StartOfWeek  : TStDayType  Read FStartOfWeek  Write FStartOfWeek;
    Property Weekends     : TDaysOfWeek Read FWeekends     Write FWeekends default [Sunday];
    Property WeekendColor : TColor      Read FWeekendColor Write FWeekendColor default clRed;

    property OnChange: TNotifyEvent read FOnChange write FOnChange;
  end;//TCustomCalendarPanel

  TCalendarPanel = class(TCustomCalendarPanel)
    Published
      property Align;
      property BevelInner;
      property BevelOuter;
      property BevelWidth;
      property BorderWidth;
      property BorderStyle;

      property DragCursor;
      property DragMode;
      property Enabled;
      property Color;
      property Ctl3D;
      property Font;
      property ParentColor;
      property ParentCtl3D;
      property ParentFont;
      property ParentShowHint;
      property PopupMenu;
      property ShowHint;
      property TabOrder;
      property TabStop;
      property Visible;

      property OnClick;
      property OnDblClick;
      property OnDragDrop;
      property OnDragOver;
      property OnEndDrag;
      property OnEnter;
      property OnExit;
      property OnMouseDown;
      property OnMouseMove;
      property OnMouseUp;
      {property OnResize;}
      property OnChange;
  end;//TCalendarPanel

implementation

uses
  l3Units,
  l3String,
  
  vtDateEditRes,

  l3StringIDEx
  ;

{CalPop}

 const
   BorderIndent    = 4;
   SplitLineHeight = 8;

 constructor TCustomCalendarPanel.Create(AOwner: TComponent);
  begin
   Inherited Create(AOwner);
   ControlStyle := ControlStyle + [csClickEvents,csOpaque] -
                                  [csAcceptsControls,csCaptureMouse,csSetCaption];
   {Caption:='';}
   Date := Now;
   Change;
   FWeekends:=[Sunday];
   FWeekendColor:=clRed;
  end;

 procedure TCustomCalendarPanel.WMGetDlgCode(var Msg : TWMGetDlgCode);
  begin
   inherited;
   Msg.Result := Msg.Result {or DLGC_WANTCHARS} or DLGC_WANTARROWS;
  end;

 procedure TCustomCalendarPanel.Change;
  begin
   if Assigned(FOnChange) then FOnChange(Self);
 end;

 procedure  TCustomCalendarPanel.SetDate(DT : TDateTime);
  var
   SaveYear,
   SaveMonth,
   SaveDay     : Word;

  begin
   // Проверим что не выходим за границы диапазона
   DecodeDate(DT, SaveYear, SaveMonth, SaveDay);
   if (SaveYear > MaxYear) or (SaveYear < MinYear) then
    Exit;
    
   SaveYear  := CurYear;
   SaveMonth := CurMonth;
   SaveDay   := CurDay;

   DecodeDate(DT,CurYear,CurMonth,CurDay);
   lMonthIndent := SysUtils.DayOfWeek(EncodeDate(CurYear,CurMonth,1)-2) mod 7;

   If HandleAllocated
    then
     begin
      If lForceRedraw or (SaveYear <> CurYear) or ( SaveMonth <> CurMonth) then
       InvalidateDayArray
      else
       DrawFocusFrame(SaveDay);
      lForceRedraw := False;
     end
    else
     lForceRedraw := False;

   Change;
  end;

 function TCustomCalendarPanel.GetDate : TDateTime;
  begin
   Result:=EncodeDate(CurYear,CurMonth,CurDay);
  end;

 Procedure TCustomCalendarPanel.InvalidateDayArray;
  begin
   Invalidate;
  end;

const
  imap_vt_WeekDaysCaptions : array [TStDayType] of Pl3StringIDEx = (
   @str_vtSunday,
   @str_vtMonday,
   @str_vtTuesday,
   @str_vtWednesday,
   @str_vtThursday,
   @str_vtFriday,
   @str_vtSaturday
  );

procedure TCustomCalendarPanel.Paint(const CN: Il3Canvas);
var
 CelH, CelW  : Integer;

 procedure DrawDaysHeader;
 var
  I        : Byte;
  TempRect : Trect;
 begin//DrawDaysHeader
  with CN do
  begin
   BackColor := Color;
   Brush.Color := Color;
   Brush.Style := bsSolid;
   TempRect := ClientRect;
   InflateRect(TempRect, -1, -1);
   FillRect(Tl3SRect(TempRect));
   Brush.Style := bsClear;
  end;//with CN
  CelH :=(ClientRect.Bottom-ClientRect.Top-BorderIndent*2-SplitLineHeight) div 7;
  CelW :=(ClientRect.Right-ClientRect.Left-BorderIndent*2) div 7;

  TempRect.Top    := ClientRect.Top+BorderIndent;
  TempRect.Bottom := TempRect.Top+CelH;
  TempRect.Left   := ClientRect.Left + BorderIndent;
  TempRect.Right  := TempRect.Left+CelW;

  { Cycle through the days }
  for I := 1 to 7 do
  begin
   if TStDayType(I mod 7) in FWeekends then
    CN.Font.ForeColor := FWeekendColor
   else
    CN.Font.ForeColor := Font.Color;

   CN.DrawText(l3PCharLen(imap_vt_WeekDaysCaptions[TStDayType(I mod 7)].AsStr), TempRect,
            ( DT_CENTER or DT_VCENTER or DT_TOP or DT_SINGLELINE) );
   TempRect.Left := TempRect.Right;
   Inc(TempRect.Right,CelW);
  end;//for I

  { Draw line below days }
  with CN do
  begin
   TempRect.Top := TempRect.Bottom + SplitLineHeight div 2 - 1;
   TempRect.Bottom := TempRect.Top + 2;
   TempRect.Left := ClientRect.Left + BorderIndent;
   TempRect.Right := ClientRect.Right - BorderIndent;

   with Canvas do
   begin
    Pen.Color := clGray;
    MoveTo( TempRect.Left , TempRect.Top);
    LineTo( TempRect.Right, TempRect.Top );
    Pen.Color := clWhite;
    MoveTo( TempRect.Left,  TempRect.Top + 1);
    LineTo( TempRect.Right, TempRect.Top + 1);
   end;//with Canvas
  end;
 end;//DrawDaysHeader

 procedure DrawDates;
 var
  nWeek    : Integer;
  nDay     : Integer;
  DtStr    : String;
  DT       : Integer;
  DM       : Byte;
  TempRect : Trect;
 begin//DrawDates
  { Define normal font }
  {Font.Style := [];
  Pen.Color := clBlack;}

  //Inc(TempRect.Left);
  //Inc(TempRect.Right);

  TempRect.Top := ClientRect.Top + BorderIndent + CelH + SplitLineHeight;
  TempRect.Bottom := TempRect.Top+CelH;

  { Cycle through the weeks }
  DM:=DaysInMonth(CurMonth, CurYear);
  for nWeek := 0 to 5 do
  begin
    { Cycle through the days }
   TempRect.Left := ClientRect.Left + BorderIndent+1;
   TempRect.Right := TempRect.Left+CelW;

   for nDay := 1 to 7 do
   begin
    Dt := nWeek*7 + nDay - lMonthIndent;
    if (Dt <= 0) or (Dt > DM) or (Dt  = CurDay) then
     DtStr := #0
    else
    begin
     if TStDayType(nDay mod 7) in FWeekends then
      CN.Font.ForeColor := FWeekendColor
     else
      CN.Font.ForeColor := Font.Color;
     DtStr := IntToStr(Dt);
     CN.DrawText(l3PCharLen(DtStr),
            TempRect, ( DT_CENTER or DT_VCENTER or DT_TOP or DT_SINGLELINE ) );
    end;//Dt <= 0

    TempRect.Left := TempRect.Right;
    Inc(TempRect.Right,CelW);

   end;//for nDay
   TempRect.Top := TempRect.Bottom;
   Inc(TempRect.Bottom,CelH);

  end;//for nWeek
 end;//DrawDates

begin
 inherited;
 CN.Font.AssignFont(Font);
 {CN.Font.Size := 10;}
 DrawDaysHeader;
 DrawDates;
 DrawFocusFrame(0);
end;

Function TCustomCalendarPanel.GetDayRect(aDay : Word) : TRect;
Var
 nWeekCel : Byte;
 nDayCel  : Byte;
 CelH, CelW  : Integer;
begin
 aDay:=aDay + lMonthIndent;
 nWeekCel := (aDay- 1) div 7;
 nDayCel  := (aDay-1) mod 7 + 1;

 CelH :=(ClientRect.Bottom-ClientRect.Top-BorderIndent*2-SplitLineHeight) div 7;
 CelW :=(ClientRect.Right-ClientRect.Left-BorderIndent*2) div 7;

 Result.Top    := ClientRect.Top + BorderIndent + CelH + SplitLineHeight + nWeekCel * CelH;
 Result.Bottom := Result.Top + CelH;
 Result.Left   := ClientRect.Left + BorderIndent + CelW * (nDayCel-1);
 Result.Right  := Result.Left + CelW;
end;

Function TCustomCalendarPanel.GetDayFromPoint(Pt : TPoint) : Integer;
Var
 nWeekCel    : Integer;
 nDayCel     : Integer;
 CelH, CelW  : Integer;
 CelNum      : Integer;
begin
 Result:=0;
 CelH :=(ClientRect.Bottom-ClientRect.Top-BorderIndent*2-SplitLineHeight) div 7;
 CelW :=(ClientRect.Right-ClientRect.Left-BorderIndent*2) div 7;
 With Pt do
  begin
   nWeekCel:=(Y - ClientRect.Top-BorderIndent-SplitLineHeight - CelH) div CelH;
   If (nWeekCel < 0) or (nWeekCel > 6) then Exit;
   nDayCel:=(X - ClientRect.Left-BorderIndent) div CelW + 1;
   If (nDayCel > 7) then Exit;
   CelNum := nWeekCel * 7 + nDayCel;
   Result:=CelNum - lMonthIndent;
   If (Result >  DaysInMonth(CurMonth, CurYear)) or
      (Result < 1) then
    begin
     Result:=0;
     Exit;
    end;
  end;
end;

procedure TCustomCalendarPanel.DrawFocusFrame(aPredDay : Word);
var
 TempRect : TRect;
 DtStr    : String;
 l_CN     : Il3Canvas;
begin
 l_CN := Canvas;
 l_CN.BeginPaint;
 try
  l_CN.DrawEnabled := true;
  {l_CN.Font.Size := 10;}
  if (aPredDay > 0) then
  begin
   TempRect:=GetDayRect(aPredDay);

   DtStr := IntToStr(aPredDay);

   l_CN.BackColor := Color;
   l_CN.Canvas.Brush.Color := Color;

   Inc(TempRect.Right);
   Inc(TempRect.Bottom);
   l_CN.FillRect(Tl3SRect(TempRect));
   Dec(TempRect.Right);
   Dec(TempRect.Bottom);

   Inc(TempRect.Right);
   Inc(TempRect.Left);

   if TStDayType((aPredDay + lMonthIndent) mod 7) in FWeekends then
    l_CN.Font.ForeColor := FWeekendColor
   else
    l_CN.Font.ForeColor := Font.Color;
   l_CN.DrawText(l3PCharLen(DtStr),
                   TempRect, ( DT_CENTER or DT_VCENTER or DT_TOP or DT_SINGLELINE ) );
  end;//aPredDay > 0

  TempRect:=GetDayRect(CurDay);
  DtStr:=IntToStr(CurDay);
  l_CN.BackColor := Color;
  l_CN.Canvas.Brush.Color := Color;
  l_CN.FillRect(Tl3SRect(TempRect));
  Inc(TempRect.Right);
  Inc(TempRect.Left);

  l_CN.Font.Style := [fsBold];
  if TStDayType((CurDay + lMonthIndent) mod 7) in FWeekends then
   l_CN.Font.ForeColor := FWeekendColor
  else
   l_CN.Font.ForeColor := Font.Color;
  l_CN.DrawText(l3PCharLen(DtStr),
                  TempRect, ( DT_CENTER or DT_VCENTER or DT_TOP or DT_SINGLELINE ) );

  { Frame date with Shadow }
  //l_CN.Pen.Color := clGray;
  Dec(TempRect.Right);
  Dec(TempRect.Left);

  with l_CN do
  begin
   Canvas.Pen.Color := clWhite;
   Canvas.MoveTo( TempRect.Left, TempRect.Bottom);
   Canvas.LineTo( TempRect.Left, TempRect.Top );
   Canvas.LineTo( TempRect.Right, TempRect.Top );

   { Frame date with Highlight }
   //Canvas.Pen.Color := clWhite;
   Canvas.Pen.Color := clGray;
   Canvas.LineTo( TempRect.Right, TempRect.Bottom);
   Canvas.LineTo( TempRect.Left, TempRect.Bottom);

   { Restore Canvas settings}
   Canvas.Pen.Color := clBlack;
   Font.Style := [];
  end;//with l_CN
 finally
  l_CN.EndPaint;
 end;//try,,finally
end;

procedure TCustomCalendarPanel.RelMoveDate(nDays : Integer);
 begin
  Date:=Date+nDays;
 end;

procedure TCustomCalendarPanel.PrevDay;
 begin
  Date:=Date-1;
 end;

procedure TCustomCalendarPanel.NextDay;
 begin
  Date:=Date+1;
 end;

procedure TCustomCalendarPanel.PrevWeek;
 begin
  Date:=Date-7;
 end;

procedure TCustomCalendarPanel.NextWeek;
 begin
  Date:=Date+7;
 end;

procedure TCustomCalendarPanel.PrevMonth;
 begin
  lForceRedraw:=True;
  if CurMonth > 1
   then Dec(CurMonth)
   else
    begin
     if CurYear = MinYear then
      Exit;
     CurMonth := 12;
     Dec(CurYear);
    end;
  if DaysInMonth(CurMonth, CurYear) < CurDay then
   CurDay:=DaysInMonth(CurMonth,CurYear);
  Date:=Date; {Activate Refresh etc}
 end;

procedure TCustomCalendarPanel.NextMonth;
 begin
  lForceRedraw:=True;
  if CurMonth < 12
   then Inc(CurMonth)
   else
    begin
     if CurYear = MaxYear then
      Exit;
     CurMonth := 1;
     Inc(CurYear);
    end;
  If DaysInMonth(CurMonth, CurYear) < CurDay
   then CurDay:=DaysInMonth(CurMonth, CurYear);
  Date:=Date; {Activate Refresh etc}
 end;

procedure TCustomCalendarPanel.NextYear;
 begin
  if Succ(CurYear) > MaxYear then
   Exit;
  lForceRedraw:=True;
  Inc(CurYear);
  if DaysInMonth(CurMonth, CurYear) < CurDay then
   CurDay:=DaysInMonth(CurMonth, CurYear);
  Date:=Date; {Activate Refresh etc}
 end;

procedure TCustomCalendarPanel.PrevYear;
 begin
  if Pred(CurYear) < MinYear then
   Exit;
  lForceRedraw := True;
  Dec(CurYear);
  if DaysInMonth(CurMonth, CurYear) < CurDay then
   CurDay:=DaysInMonth(CurMonth, CurYear);
  Date:=Date; {Activate Refresh etc}
 end;

procedure TCustomCalendarPanel.KeyDown(var Key: Word; Shift: TShiftState);
{procedure TCustomCalendarPanel.WMKeyDown(var Message: TWMKeyDown);}
 begin
  {Inherited;}
  {With Message do}

   Case Key {CharCode} of
    VK_Left  : PrevDay;
    VK_Right : NextDay;
    VK_Up    : PrevWeek;
    VK_Down  : NextWeek;
    VK_Prior : PrevMonth;
    Vk_Next  : NextMonth;
    VK_Home  : NextYear;
    VK_End   : PrevYear;
    else
     Exit;
   end;
   Key := 0;
 end;

procedure TCustomCalendarPanel.WMLButtonDown(var Message: TWMLButtonDown);
 var
  NewDay,
  SaveDay : Integer;
 begin
  inherited;
  NewDay := GetDayFromPoint(SmallPointToPoint(Message.Pos));
  lMouseDown :=NewDay > 0;
  If lMouseDown then
   begin
    OldDay := CurDay;
    If NewDay <> CurDay then
     begin
      SaveDay:=CurDay;
      RelMoveDate(NewDay-CurDay);
      DrawFocusFrame(SaveDay);
     end;
   end;
 end;

procedure TCustomCalendarPanel.WMShowWindow(var Message: TWMShowWindow);
 begin
  lMouseDown := False;
 end;

procedure TCustomCalendarPanel.WMMouseMove(var Message: TWMMouseMove);
 var
  NewDay,
  SaveDay : Integer;

 begin
  inherited;

  If lMouseDown then
   begin
    NewDay := GetDayFromPoint(SmallPointToPoint(Message.Pos));
    If (NewDay > 0) and (NewDay <> CurDay) then
     begin
      SaveDay:=CurDay;
      RelMoveDate(NewDay-CurDay);
      DrawFocusFrame(SaveDay);
     end;
   end;

 end;

procedure TCustomCalendarPanel.WMLButtonUp(var Message: TWMLButtonUp);
 begin
  if lMouseDown then
   Inherited;
  lMouseDown := False;
 end;

//procedure Register;
// begin
  {RegisterComponents('Super', [TCalendarPanel]);}
// end;

end.





