unit absdrop;

// $Id: absdrop.pas,v 1.37 2013/02/13 10:14:49 lulin Exp $

// $Log: absdrop.pas,v $
// Revision 1.37  2013/02/13 10:14:49  lulin
// - ������� ������ �����������.
//
// Revision 1.36  2012/10/29 16:57:28  lulin
// - �������� ��������� ����� ���������.
//
// Revision 1.35  2012/10/26 14:55:12  lulin
// {RequestLink:406489593}
//
// Revision 1.34  2012/10/26 14:16:55  lulin
// {RequestLink:406489593}
//
// Revision 1.33  2012/04/02 10:03:35  kostitsin
// - ���������� nsHooks � nsShutdownSupport
// - (+) �������������
//
// Revision 1.32  2012/03/30 12:08:55  kostitsin
// absdrop
//
// Revision 1.31  2011/12/20 09:42:09  kostitsin
// http://mdp.garant.ru/pages/viewpage.action?pageId=318377771
//
// fix: ���������� ������� ����������� ��������, �����������...
//
// Revision 1.30  2010/12/08 16:03:42  lulin
// {RequestLink:228688602}.
// - ������ ������.
//
// Revision 1.29  2010/12/08 11:11:41  lulin
// {RequestLink:228688602}.
// - �������� ������ � ������� �������.
// - �������� ������� ����� ����� ��.
//
// Revision 1.28  2010/02/02 16:55:44  lulin
// {RequestLink:185828256}. ������� ������� ��������.
//
// Revision 1.27  2010/02/02 16:09:47  lulin
// {RequestLink:185828256}. ������� ������� ��������.
//
// Revision 1.26  2009/08/20 10:58:39  lulin
// - �� ��������������� �����.
//
// Revision 1.25  2009/08/14 15:55:12  lulin
// - �� ��������� ����� � �������, �.�. �� ����� ������ �������� �� ���������� - �� ���������, �� � ������ �� ����������� � Current.
//
// Revision 1.24  2009/07/13 12:31:56  lulin
// {RequestLink:141264340}. �23ac.
//
// Revision 1.23  2009/07/11 15:55:24  lulin
// {RequestLink:141264340}. �22.
//
// Revision 1.22  2008/10/01 10:49:55  lulin
// - <K>: 120718563.
//
// Revision 1.21  2008/08/01 11:28:16  oman
// - fix: ��������� Home/End ��� ������������� ����������� (K-105578687)
//
// Revision 1.20  2008/06/24 12:28:47  oman
// - fix: �������� � ������� ���������� ������� (cq29374)
//
// Revision 1.19  2008/05/21 13:28:25  lulin
// - cleanup.
//
// Revision 1.18  2008/05/20 10:55:34  lulin
// - bug fix: �� �������������� ����������.
// - <K>: 90443881.
//
// Revision 1.17  2008/05/15 20:15:29  lulin
// - ��������� ������.
//
// Revision 1.16  2008/05/15 18:53:47  lulin
// - ���������������� � �������� �� ������.
//
// Revision 1.15  2008/05/15 17:31:45  lulin
// - ������ ������������� �������.
// - ������� ����������� ������ ��������������.
//
// Revision 1.14  2008/05/15 16:19:54  lulin
// - �������� � ������� ��������� �� ������.
//
// Revision 1.13  2008/05/15 11:28:30  lulin
// - <K>: 90446071.
//
// Revision 1.12  2008/05/14 19:05:10  lulin
// - <K>: 90446006.
//
// Revision 1.11  2008/05/14 14:00:01  lulin
// - cleanup.
//
// Revision 1.9  2008/05/14 13:56:38  lulin
// - ������ ��� <K>: 90441490.
//
// Revision 1.8  2008/05/14 11:54:00  lulin
// - cleanup.
//
// Revision 1.7  2008/05/14 11:47:39  lulin
// - ��������� ����� ��������, <K>: 90441490.
//
// Revision 1.6  2008/05/13 19:13:47  lulin
// - ������ � ������ <K>: 90441490.
//
// Revision 1.5  2008/05/13 16:24:15  lulin
// - ��������� � ������ <K>: 90441490.
//
// Revision 1.4  2008/05/13 15:24:56  lulin
// - ������ � ������ <K>: 90441490.
//
// Revision 1.3  2008/04/07 09:05:49  lulin
// - <K>: 89096688.
//
// Revision 1.2  2008/02/07 08:37:50  lulin
// - ������� �������� ������� �� ������������ ������.
//
// Revision 1.1  2007/12/07 16:59:52  lulin
// - �������.
//
// Revision 1.73  2007/12/07 16:22:40  lulin
// - ��������������� ����, ����� �� ������ � ������ �����������.
//
// Revision 1.72  2007/05/16 10:26:28  lulin
// - ���������� ����� ����� ����������� ������.
//
// Revision 1.71  2007/05/16 10:20:24  lulin
// - ��������� ������� ������������ ������ �������.
//
// Revision 1.70  2007/04/17 07:49:41  lulin
// - ������� �������� ������ �� ����� ���������.
//
// Revision 1.69  2007/04/16 14:38:00  lulin
// - bug fix: ����������� ��������� ���������� ����� (CQ OIT5-25058).
//
// Revision 1.68  2007/03/29 15:54:30  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.67  2007/03/28 19:42:52  lulin
// - ����������� �������� ��������� �� ������ � ����������.
//
// Revision 1.66  2007/03/22 14:34:44  lulin
// - cleanup.
//
// Revision 1.65  2007/03/21 16:00:39  lulin
// - cleanup.
//
// Revision 1.64  2007/03/21 14:15:14  lulin
// - ���������� �������������� ��������� ���������.
//
// Revision 1.63  2007/03/21 11:27:50  lulin
// - ��� ����������� �������� ��������� �� ��������� ������.
//
// Revision 1.62  2007/03/21 07:29:07  lulin
// - �������� �� ������, ������ ��, ��� �� ������� ����������.
//
// Revision 1.61  2007/03/20 15:01:42  lulin
// - ����������� ������������ ������, � ����� ������������ ���������� ������.
//
// Revision 1.60  2007/03/14 19:03:43  lulin
// - cleanup.
//
// Revision 1.59  2007/03/14 11:45:14  lulin
// - cleanup.
//
// Revision 1.58  2007/03/13 13:38:16  lulin
// - ����������� �� ������, ���������� �� ������� ������ ������������.
//
// Revision 1.57  2007/03/07 13:53:10  lulin
// - cleanup.
//
// Revision 1.56  2007/02/20 12:55:31  lulin
// - ����������� ��� ������ �������.
//
// Revision 1.55  2007/02/14 14:24:08  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.54  2007/01/05 18:17:30  lulin
// - ���������� ������� ���� ��� ���������� �������.
//
// Revision 1.53  2006/12/15 11:30:39  lulin
// - ��������� �������� �� ��������� ������.
//
// Revision 1.52  2006/12/06 10:16:35  lulin
// - ������� ��������� �����.
//
// Revision 1.51  2006/12/06 09:09:43  lulin
// - bug fix: ������ � AV.
//
// Revision 1.50  2006/12/06 08:49:52  lulin
// - ������� ����, "����� �����" �����.
//
// Revision 1.49  2006/11/15 10:42:42  oman
// Merge from B_NEMESIS_6_4
//
// Revision 1.48.12.1  2006/11/15 10:41:06  oman
// - fix: ��� ����������� ��� ����� �������� �� ���������,
//  ��������� ��� ������������� (cq23642)
//
// Revision 1.48  2006/03/07 10:42:24  mmorozov
// - warning fix;
//
// Revision 1.47  2005/05/27 14:42:18  lulin
// - ������� ������� �������� � ���������� L3.
//
// Revision 1.46  2005/03/31 12:03:41  am
// change: ���������� IvcmPopupIgnoresAction
//
// Revision 1.45  2005/03/22 12:02:33  mmorozov
// - �������������� ����;
//
// Revision 1.44  2005/02/01 10:14:22  am
// change: ��������� �� �������� IvcmPopupIgnoresAction
//
// Revision 1.43  2005/01/20 16:15:02  am
// change: ����� WndProc � private, ������ ����� ������������ � �������� ����������� DoWndProc, ���� �����.
// change: � WndProc �������� ������� � ������� afw.BeginOp\EndOp
//
// Revision 1.42  2004/12/29 14:53:33  am
// new: ������� ��������� �������� � ����������
//
// Revision 1.41  2004/10/22 11:25:35  mmorozov
// new: UseDisabledColors := True;
//
// Revision 1.40  2004/10/18 13:54:36  mmorozov
// bugfix: ��� ������������ � ������ ���������� ����� ������ taskbar, ������ ���������� ���������� ���� combobox-�;
//
// Revision 1.39  2004/09/08 10:19:23  fireton
// - bug fix: TAbstractDropDown.DoSelect - ���� ���������������� ����� ��������� ���������� ���������
//
// Revision 1.38  2004/08/04 16:19:42  demon
// - cleanup: remove warnings and hints
//
// Revision 1.36  2004/07/23 07:19:18  nikitin75
// ������ ���������� ������ �� ��������� �������
//
// Revision 1.35  2004/07/22 08:29:33  am
// bugfix: WMKeyDown
//
// Revision 1.34  2004/07/22 08:16:07  am
// change: ����������� � ������ PgUp\PgDown
//
// Revision 1.33  2004/07/22 08:07:16  am
// change: ����� �������� � ��������� WM_KEYDOWN �� CN_KEYDOWN � ������, ������� � ������ CN_KEYDOWN �� ������� � ��������� _VK_UP/_VK_DOWN
//
// Revision 1.32  2004/07/22 07:49:43  nikitin75
// �������� ���������� ������ �� ��������� �������
//
// Revision 1.31  2004/07/20 13:04:26  nikitin75
// ���������� ��������� ������� �������
//
// Revision 1.30  2004/07/02 10:49:00  am
// change: ����� _DoMoveCursor, DoSelect, DoUnselect �� fakecombo
//
// Revision 1.29  2004/06/15 10:02:05  am
// change: ������
//
// Revision 1.28  2004/06/01 08:23:10  demon
// - new behavior: ������� ComboBox'�� � Iee �� Il3
//
// Revision 1.27  2004/05/31 09:22:16  demon
// - new behavior: ���������� �� ����������� �� nsNodes � GblAdapter.
//
// Revision 1.26  2004/05/28 12:16:05  am
// change: WM_MOUSEWHEEL - ������ inherited, ���� �� ������ � �����
//
// Revision 1.25  2004/03/17 15:46:34  am
// delete: FServerSearch
//
// Revision 1.24  2004/03/17 15:22:34  am
// change: ������� �������� �� GBLAdapter
//
// Revision 1.23  2004/03/04 16:35:25  law
// - rename unit: VLister -> vtLister.
//
// Revision 1.22  2004/03/04 15:36:33  law
// - rename unit: VOtliner -> vtOutliner.
//
// Revision 1.21  2004/03/03 13:06:11  nikitin75
// + ������� �������� �� shortcut;
//
// Revision 1.19  2004/02/25 07:00:51  am
// *** empty log message ***
//
// Revision 1.18  2004/01/15 14:54:32  am
// bugfix: ����� ��������� �������� ����� � ������� �� Return, ����� �����������������, ���, � ���� �������,
// ��������� � ����� �������� (��� -> �����\���)
//
// Revision 1.17  2004/01/15 12:54:24  am
// bugfix: ������������ disabled ���������� � ������� ��� �������� ��, � ������������� XP-������.
//
// Revision 1.16  2003/12/29 10:31:56  am
// new: ��������� ������������� ��������� �-�� Garant5.x
//
// Revision 1.15  2003/12/18 07:52:40  am
// bugfix: ������� �������� ��������� �����������
//
// Revision 1.14  2003/12/11 18:30:03  migel
// - fix: ������ ����������� ���� ���������� ��� �����������.
//
// Revision 1.13  2003/12/09 13:59:01  am
// bugfix: ���������� ��������
//
// Revision 1.12  2003/12/08 13:11:34  am
// - new: ����� ���������� ������� (� ����� �������)
//
// Revision 1.11.4.1  2003/12/04 11:00:01  am
// *** empty log message ***
//
// Revision 1.11.2.1  2003/12/02 14:58:18  am
// - ����� ��� ������
//
// Revision 1.11  2003/12/01 11:29:13  am
// - new: QueryInteface � _TDropDownTree. ���������� CurrentNode ��� ��������� _Il3Node,
//   � RootNode ��� ��������� Il3RootNode
// - bugfixes �� ���������� � vcm
//

{$Include vtDefine.inc}

interface

uses
  Windows,
  Messages,

  Classes,
  Graphics,
  Controls,
  StdCtrls,
  Forms,

  ElUxTheme,

  {$IfNDef NoVCM}
  vcmExternalInterfaces,
  {$EndIf  NoVCM}

  l3Interfaces,

  ctTypes,
  ctAbstractEdit

  {$If Defined(Nemesis) AND Defined(Shell)}
  {$IfNDef NoVGScene}
  ,
  vg_scene
  {$EndIf  NoVGScene}
  {$IfEnd}
  ;

type
  TAbstractDropDown = class(TctAbstractEdit,
                            {$IfNDef NoVCM}
                            IvcmPopupIgnoresAction,
                            {$EndIf  NoVCM}
                            Il3WndProcListener)
  private
  // internal fields
    FComboStyle  : TComboStyle;
    {$If Defined(Nemesis) AND Defined(Shell)}
    {$IfNDef NoVGScene}
    f_ExtButton : TvgVisualObject;
    {$EndIf NoVGScene}
    {$IfEnd}
    procedure WndProcListenerNotify(Msg: PCWPStruct;
              var theResult: Tl3HookProcResult);
  protected
  // internal fields
    FCurrentMode : TCurrentMode;
    FDropped     : boolean;

    FIgnoreFocus : boolean;
    FIgnoreDrop  : boolean;

    FOnDropDown:TNotifyEvent;
    FOnCloseUp: TNotifyEvent;

   function pm_getPopupIgnoresAction: Boolean;

    procedure SetDropped(const Value: boolean); virtual;
    procedure SetComboStyle(const Value: TComboStyle); virtual;
    procedure SetStyle(const Value: TComboBoxStyle); virtual;
    function GetStyle: TComboBoxStyle; virtual;

    procedure ButtonClick(Sender:TObject); virtual;

    procedure TriggerDropCloseEvent(aDropped:boolean); virtual;

    procedure WMSetFocus(var Message : TWMSetFocus);
      message WM_SETFOCUS;
    procedure WMKeyDown(Var Message:TWMKeyDown);
      message {$IfDef ctEverestEdit}CN_KEYDOWN{$Else ctEverestEdit}WM_KEYDOWN{$EndIf ctEverestEdit};
    procedure WMKillFocus(Var Message: TWMKillFocus);
      message WM_KILLFOCUS;
    procedure WMActivateApp(Var Message:TWMActivateApp);
      message WM_ACTIVATEAPP;
    procedure WMMouseWheel(var Msg: TWMMouseWheel);
      message WM_MOUSEWHEEL;
    procedure CMEnabledChanged(var Msg: TMessage);
      message CM_ENABLEDCHANGED;
    procedure ELThemeChanged(var Message: TMessage);
      message EL_THEMECHANGED;
      {-}
    procedure DestroyWnd;
      override;
      {-}
    procedure EscapePressed;
      virtual;
    procedure DropDown;
      virtual;
    procedure CloseUp;
      virtual;
    function  GetActiveSub: TWinControl;
      virtual;
      abstract;
    procedure HideDropDown;
      virtual;
      {-}
      {$IfNDef NoVCM}
      function  IvcmState_SaveState(out aState : IUnknown;
                                    aStateType : TvcmStateType): Boolean;
        override;
        {-}
      {$EndIf  NoVCM}
  protected
    procedure WndProc(var Message: TMessage);
      override;
    procedure DoWndProc(var Message: TMessage);
      virtual;
      {-}
    procedure Cleanup;
      override;
      {-}
    function TranslateHomeEndToDropDown: Boolean;
      virtual;
      {-}
  public
    procedure DoSelect(aStart, aEnd:integer);
      {-}
    procedure DoMoveCursor(anIndex:integer);
      {-}
    procedure DoUnselect;
      {-}
    constructor Create(AOwner:TComponent);
      override;
      {-}
    property CurrentMode: TCurrentMode
      read FCurrentMode
      write FCurrentMode;
      {-}
  public
    property Style:TComboBoxStyle
      read GetStyle
      write SetStyle;
      {-}
  protected
    property ComboStyle: TComboStyle
      read FComboStyle
      write SetComboStyle
      default ct_cbDropDown;
      {-}
  public
    {$If Defined(Nemesis) AND Defined(Shell)}
    {$IfNDef NoVGScene}
    property ExtButton: TvgVisualObject
      read f_ExtButton
      write f_ExtButton;
      {-}
    {$EndIf NoVGScene}  
    {$IfEnd}
    /// �����
    property EmptyHint;
      {-}
    property EmptyHintColor
      default clBackground;
      {-}
    property BevelEdges;
    property BevelInner;
    property BevelKind
      default bkNone;
      {-}
    property BevelOuter;
    property Anchors;
    property BiDiMode;
    property Color;
    property Constraints;
    property Ctl3D;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property Font;
    property ImeMode;
    property ImeName;
    property MaxLength;
    property ParentBiDiMode;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Visible;
      {-}
    property OnDblClick;
      {-}
    property Dropped: boolean
      read FDropped
      write SetDropped
      default false;
      {-}
    property OnDropDown: TNotifyEvent
      read FOnDropDown
      write FOnDropDown;
      {-}
    property OnCloseUp: TNotifyEvent
      read FOnCloseUp
      write FOnCloseUp;
      {-}
  end;//TAbstractDropDown

implementation

uses
  SysUtils,
  
  Clipbrd,

  ElPopBtn,
  ElVclUtils,

  l3Base,
  l3Bitmap,
  l3String,
  l3MinMax,
  l3ListenersManager,

  afwFacade

  {$IfDef ctEverestEdit}
  ,
  nevTools
  {$EndIf ctEverestEdit}
  ;

{ TAbstractDropDown }

procedure TAbstractDropDown.ButtonClick(Sender: TObject);
begin
 if not (csDesigning in ComponentState) then
 begin
  FCurrentMode:=FCurrentMode + [cmButtonClick];
  try
   Dropped := not Dropped;
  finally
   FCurrentMode := FCurrentMode - [cmButtonClick];
  end;//try..finally 
 end;//not (csDesigning in ComponentState)
end;

procedure TAbstractDropDown.CloseUp;
begin
 if Assigned(FOnCloseUp) then
  FOnCloseUp(self);
end;

procedure TAbstractDropDown.CMEnabledChanged(var Msg: TMessage);
begin
 inherited;
 Button.Enabled := Enabled;
end;

procedure TAbstractDropDown.Cleanup;
  //override;
  {-}
begin
 Tl3ListenersManager.RemoveWndProcListener(Self);
 inherited;
end;

constructor TAbstractDropDown.Create(AOwner: TComponent);
var
 lGlyph : TBitmap;
begin
 FComboStyle := ct_cbDropDown;
 inherited Create(AOwner);
 {$IfNDef ctEverestEdit}
 UseDisabledColors := True;
 {$EndIf  ctEverestEdit}
 //DoubleBuffered := true;
 OnButtonClick := ButtonClick;

 TElGraphicButton(Button).ShowText := false;
 TElGraphicButton(Button).Cursor := crArrow;
 TElGraphicButton(Button).IsSwitch := true;
// TElGraphicButton(Button).OldStyled := true;
 TElGraphicButton(Button).Flat := false;

 lGlyph := Tl3Bitmap.Create;
 try
  lGlyph.Width := 9;
  lGlyph.Height := 5;
  lGlyph.PixelFormat := pf32bit;
  lGlyph.TransparentMode := tmFixed;
  lGlyph.TransparentColor := clWhite;
  lGlyph.Canvas.Brush.Color := clWhite;
  lGlyph.Canvas.FillRect(Rect(0, 0, 9, 5));
  DrawArrow(lGlyph.Canvas, eadDown, Rect(0, 1, 9, 5), clBlack, Enabled);
  TElGraphicButton(Button).Glyph := lGlyph;
 finally
  l3Free(lGlyph);
 end;//try..finally

// TElGraphicButton(Button).UseArrow := true;

 FCurrentMode := [];
 ControlStyle := ControlStyle - [csClickEvents, csCaptureMouse, csFixedHeight];
 EmptyHintColor := clBackground;
end;

procedure TAbstractDropDown.DestroyWnd;
begin
 if FDropped then
  Dropped := false;
 inherited;
end;

procedure TAbstractDropDown.DropDown;
begin
 if Assigned(OnDropDown) then
  OnDropDown(self);
end;

procedure TAbstractDropDown.ELThemeChanged(var Message: TMessage);
begin
 RecreateWnd;
 Message.Result := 1;
end;

procedure TAbstractDropDown.EscapePressed;
begin
end;

function TAbstractDropDown.GetStyle: TComboBoxStyle;
begin
 Result := csSimple;
end;

procedure TAbstractDropDown.SetComboStyle(const Value: TComboStyle);
begin
 if (Value <> FComboStyle) then
 begin
  FComboStyle := Value;
  Dropped := false;
 end;//Value <> FComboStyle
end;

procedure TAbstractDropDown.SetDropped(const Value: boolean);
begin
 if (Value <> FDropped) then
 begin
  FDropped := Value;
  TElGraphicButton(Button).Down := Value;
  TriggerDropCloseEvent(Value);
 end;//Value <> FDropped
end;

procedure TAbstractDropDown.SetStyle(const Value: TComboBoxStyle);
begin
end;

procedure TAbstractDropDown.TriggerDropCloseEvent(aDropped: boolean);
begin
 if aDropped then
  DropDown
 else
  CloseUp;
end;

procedure TAbstractDropDown.WMActivateApp(var Message: TWMActivateApp);
begin
 if (Message.Active = false) then
 begin
  Dropped := false;
  CurrentMode := CurrentMode + [cmAppNotActive];
 end//Message.Active = false
 else
  CurrentMode:=CurrentMode - [cmAppNotActive];
 inherited;
end;

procedure TAbstractDropDown.WMSetFocus(var Message : TWMSetFocus);
//message WM_SETFOCUS;
begin
 inherited;
 Tl3ListenersManager.AddWndProcListener(Self);
end;

procedure TAbstractDropDown.WMKeyDown(var Message: TWMKeyDown);
begin
 with Message do
 begin
  if FDropped and (CharCode = VK_ESCAPE) then
  begin
   FCurrentMode := FCurrentMode + [cmEscapePressed];
   try
    EscapePressed;
    if FDropped then
    begin
     FCurrentMode := FCurrentMode + [cmButtonClick];
     try
      Dropped := false;
     finally
      FCurrentMode := FCurrentMode - [cmButtonClick];
     end;//try..finally 
    end;//FDropped
   finally
    FCurrentMode:=FCurrentMode - [cmEscapePressed];
   end;//try..finally
   Message.CharCode := 0;
   Message.Result := 1;
   exit;
  end;//FDropped..
  if (not FDropped) and (CharCode = VK_DOWN) then
  begin
   FCurrentMode := FCurrentMode + [cmButtonClick];
   try
    Dropped := true;
   finally
    FCurrentMode := FCurrentMode - [cmButtonClick];
   end;//try..finally
   Message.CharCode := 0;
   Message.Result := 1;
   exit;
  end;//not FDropped..
  if FDropped AND
     ((CharCode = VK_UP) or (CharCode = VK_DOWN) or
     (CharCode = VK_PRIOR) or (CharCode = VK_NEXT) or
     (((CharCode = VK_HOME) or (CharCode = VK_END)) and TranslateHomeEndToDropDown)) then
  begin
   // � ������ ������� � ��������� WM_KEYDOWN �� ��������� CN_KEYDOWN.
   // ��������� ��������� ���������
   Message.Msg := CN_KEYDOWN;
   GetActiveSub.WindowProc(TMessage(Message));
   exit;
  end;//CharCode = VK_UP..
 end;//with Message
 inherited;
end;

procedure TAbstractDropDown.WMKillFocus(var Message: TWMKillFocus);
var
 l_NeedUndrop : Boolean;
 {$If Defined(Nemesis) AND Defined(Shell)}
 {$IfNDef NoVGScene}
 l_Control : TControl;
 {$EndIf  NoVGScene}
 {$IfEnd}
begin
 Tl3ListenersManager.RemoveWndProcListener(Self);

 l_NeedUndrop := true;
 {$If Defined(Nemesis) AND Defined(Shell)}
 {$IfNDef NoVGScene}
 if (ExtButton <> nil) then
 begin
  if (Message.FocusedWnd <> 0) then
   l_Control := FindControl(Message.FocusedWnd)
  else
   l_Control := nil;
  if (l_Control Is TvgCustomScene) then
  begin
   if (TvgCustomScene(l_Control).Captured = ExtButton) then
    l_NeedUndrop := false
   else
   with TvgCustomScene(l_Control) do
    if (ObjectByPoint(MousePos.X, MousePos.Y) = ExtButton) then
     l_NeedUndrop := false;
  end;//l_Control Is TvgCustomScene
 end;//ExtButton <> nil
 {$EndIf  NoVGScene}
 {$IfEnd}
 if l_NeedUndrop then
  if (not FIgnoreDrop) and (not FIgnoreFocus) then
   Dropped := false;
 inherited;
end;

procedure TAbstractDropDown.WMMouseWheel(var Msg: TWMMouseWheel);
begin
 if FDropped then
  GetActiveSub.WindowProc(TMessage(Msg))
 else
  inherited;
end;

procedure TAbstractDropDown.DoMoveCursor(anIndex: integer);
begin
 {$IfNDef ctEverestEdit}
 FCaretX := Min(anIndex, l3Len(Text));
 CorrectLeftChar;
 SetCaretPosition(FCaretX, FCaretY);
 {$Else  ctEverestEdit}
 CheckDoc;
 Selection.Cursor.MostInner.PositionW := anIndex;
 {$EndIf ctEverestEdit}
end;

procedure TAbstractDropDown.DoSelect(aStart, aEnd: integer);
begin
 {$IfNDef ctEverestEdit}
 aStart := Max(0, aStart);
 aEnd := Min(aEnd, l3Len(Text));
 FSelStartX := aStart;
 FSelFirstX := aStart;
 FSelLastX := aEnd;
 if (FSelStartX = FSelLastX) then
  FSelected := false
 else
  FSelected := true;
 TriggerSelectionChangeEvent;
 RepaintText(EditRect);
 {$Else  ctEverestEdit}
 CheckDoc;
 Selection.Start.MostInner.PositionW := aStart;
 Selection.Finish.MostInner.PositionW := aEnd;
 {$EndIf ctEverestEdit}
end;

procedure TAbstractDropDown.DoUnselect;
begin
 {$IfNDef ctEverestEdit}
 if not FDropSelection then
 begin
  FDropSelection := true;
  Unselect;
  FDropSelection := false;
 end//not FDropSelection
 else
  Unselect;
 {$Else  ctEverestEdit}
 InevSelection(Selection).Unselect;
 {$EndIf ctEverestEdit}
end;

procedure TAbstractDropDown.WndProcListenerNotify(Msg: PCWPStruct; var theResult: Tl3HookProcResult);
begin
 if Msg.message = WM_ACTIVATEAPP then
  if not Boolean(Msg.WParam) then
   HideDropDown;
end;

procedure TAbstractDropDown.HideDropDown;
begin
end;

{$IfNDef NoVCM}
function TAbstractDropDown.IvcmState_SaveState(out aState : IUnknown;
                              aStateType : TvcmStateType): Boolean;
  //override;
  {-}
begin
(* if (aStateType = vcm_stContent) then
  // - �� ����� ��� ���������� � ������� ������ �������� �� ����������
  //   ��. �������� ��������� �������� http://mdp.garant.ru/pages/viewpage.action?pageId=129240934
  //   � ���� �� ���������, �� � Current ����
  //   !! ���� ���� ����������� ���������� �� TeeTreeViewExport.SaveState,
  //   �� ������, ��� Current ��� �����������.
  Result := false
 else*)
  Result := inherited IvcmState_SaveState(aState, aStateType);
end;
{$EndIf  NoVCM}

procedure TAbstractDropDown.DoWndProc(var Message: TMessage);
begin
end;

procedure TAbstractDropDown.WndProc(var Message: TMessage);
begin
 afw.BeginOp;
 try
  inherited;
  DoWndProc(Message);
 finally
  afw.EndOp;
 end;//try..finally
end;

function TAbstractDropDown.pm_getPopupIgnoresAction: Boolean;
begin
 Result := FComboStyle = ct_cbEdit;
end;

function TAbstractDropDown.TranslateHomeEndToDropDown: Boolean;
begin
 Result := True;
end;

end.
