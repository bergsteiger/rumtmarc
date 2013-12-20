unit abssubtree;

// $Id: abssubtree.pas,v 1.11 2011/12/02 14:43:23 gensnet Exp $

// $Log: abssubtree.pas,v $
// Revision 1.11  2011/12/02 14:43:23  gensnet
// http://mdp.garant.ru/pages/viewpage.action?pageId=268347283
//
// Revision 1.10  2011/11/30 11:18:58  gensnet
// http://mdp.garant.ru/pages/viewpage.action?pageId=263291236
//
// Revision 1.9  2011/08/29 15:58:42  vkuprovich
// {RequestLink:273598933}
// «апоминаем ширину выпадающего списка
//
// Revision 1.8  2011/06/16 17:08:20  lulin
// {RequestLink:253657597}.
//
// Revision 1.7  2011/01/31 17:10:33  lulin
// {RequestLink:252512754}.
// - переносим-таки кнопку закрыти€ дерева в клиентскую область.
//
// Revision 1.6  2009/12/16 07:42:01  oman
// - new: {RequestLink:173933662}
//
// Revision 1.5  2009/04/13 11:16:15  oman
// - new: √отовим потроха - [$143392959]
//
// Revision 1.4  2008/10/06 13:31:09  lulin
// - чистка кода.
//
// Revision 1.3  2008/04/07 06:28:06  lulin
// - cleanup.
//
// Revision 1.2  2008/04/07 06:01:57  lulin
// - <K>: 88641266.
//
// Revision 1.1  2007/12/07 16:59:52  lulin
// - переезд.
//
// Revision 1.12  2007/12/07 16:22:40  lulin
// - переименовываем файл, чтобы не путать с другой библиотекой.
//
// Revision 1.11  2007/03/22 14:34:44  lulin
// - cleanup.
//
// Revision 1.10  2007/01/05 18:39:10  lulin
// - cleanup.
//
// Revision 1.9  2006/12/20 13:33:55  lulin
// - удален ненужный модуль.
//
// Revision 1.8  2005/11/18 14:10:40  oman
// - new behavior: реализован TAbsSubTree._SetSimpleTree
//
// Revision 1.7  2005/05/27 14:42:18  lulin
// - базовый контрол переехал в быблиотеку L3.
//
// Revision 1.6  2005/02/15 12:59:32  mmorozov
// new: поддержка интерфейса IafwDropDownWindow компонентом TAbsSubTree;
//
// Revision 1.5  2004/12/28 16:25:50  lulin
// - добавлены директивы CVS.
//

interface

uses
  Messages,
  Controls,
  Classes,
  Windows,

  afwInterfaces,

  l3TreeInterfaces,

  vtOutlinerWithQuickSearch
  ;

type
  TAbsSubTree = class(TvtOutlinerWithQuickSearch, IafwDropDownWindow)
  private
    f_CustomMinSizeX: Integer;
      {-}
  protected
  // internal methods
    function IsSizeableTree: Boolean;
      virtual;
      abstract;
      {-}
    function IsShowGripper: Boolean;
      virtual;
      abstract;
      {-}
    function IsList: Boolean;
      virtual;
      abstract;
      {-}
    function IsInvert: Boolean;
      virtual;
      abstract;
      {-}
    function IsOwnerAssigned: Boolean;
      virtual;
      abstract;
      {-}
    function GetWidth: Integer;
      virtual;
      abstract;
      {-}
    procedure NCDraw(aDC: HDC);
      virtual;
      {-}
    procedure InitFields;
      override;
      {-}
    procedure CreateParams(var Params: TCreateParams);
      override;
      {-}
    function GetMinVisibleDropCount: integer;
      virtual;
      {-}
    function GetMaxVisibleDropCount: integer;
      virtual;
      {-}
  protected
  // protected messages
    procedure WMNCPaint(var Message:TMessage);
      message WM_NCPAINT;
      {-}
    procedure WMMouseActivate(var Msg: TMessage);
      message WM_MOUSEACTIVATE;
      {-}
    procedure WMNChitTest(var Msg : TWMNCHitTest);
      message WM_NCHITTEST;
      {-}
    procedure WMNCCalcSize(var Message : TWMNCCalcSize);
      message WM_NCCALCSIZE;
      {-}
    procedure WMSize(var Message: TWMSize);
      message WM_SIZE;
      {-}
    procedure WMGetMinMaxInfo(var Message: TMessage);
      message WM_GETMINMAXINFO;
      {-}
  public
  // public methods
    procedure RecreateTree;
      {-}
    {procedure KeyHandler(CharCode: Word; var aProcess: boolean);
      {-}
    function GetMinSizeY: integer;
      {-}
    function GetMaxSizeY: integer;
      {-}
    function GetMinSizeX: integer;
      {-}
    function getBorderSize: integer;
      {-}
    function getTreeY: integer;
      {-}
    function CanFocus:Boolean;
      override;
      {-}
    procedure SetTreeRoot(const aRoot : Il3SimpleNode);
      {-}
    procedure SetSimpleTree(const aTree : Il3SimpleTree);
      {-}
  public
  // public properties
    property CustomMinSizeX: Integer
      read f_CustomMinSizeX
      write f_CustomMinSizeX;
      {ћинимально возможна€ ширина выпадающего списка. «адаетс€ вручную.}
    property IsShowLines;
      {-}
    property Font;
      {-}
  end;//TAbsSubTree

implementation

uses
  Math,
  Types,
  SysUtils,

  Graphics,

  l3Tree_TLB,
  l3ControlsTypes,
  l3Defaults,
  
  ctTypes,

  ElVclUtils
  ;

// start class TAbsSubTree

procedure TAbsSubTree.InitFields;
  //override;
  {-}
begin
 inherited;
 SelectColor.TextColor := clWhite;
 SelectColor.BackColor := cGarant2011SelectionColor;
 SelectNonFocusColor.TextColor := clWhite;
 SelectNonFocusColor.BackColor := cGarant2011SelectionColor;
 Options := Options + [vlMouseTrack];
end;

procedure TAbsSubTree.CreateParams(var Params: TCreateParams);
begin
 inherited;
 Self.DoubleBuffered := true;
 Params.Style := (Params.Style and not WS_CHILD) or WS_POPUP or WS_BORDER;
 Params.ExStyle := WS_EX_TOOLWINDOW;
 Params.WndParent := GetDesktopWindow;
end;

(*
procedure TAbsSubTree.KeyHandler(CharCode: Word; var aProcess: boolean);
begin
 aProcess := true;
end;
*)

procedure TAbsSubTree.RecreateTree;
begin
 RecreateWnd;
end;

procedure TAbsSubTree.WMMouseActivate(var Msg: TMessage);
begin
 Msg.Result := MA_NOACTIVATE;
end;

procedure TAbsSubTree.WMNCCalcSize(var Message: TWMNCCalcSize);
begin
 inherited;
 if IsSizeableTree and IsShowGripper then
 begin
  if not IsInvert then
   Dec(Message.CalcSize_Params.rgrc[0].Bottom, GetSystemMetrics(SM_CYHSCROLL))
  else
   Inc(Message.CalcSize_Params.rgrc[0].Top, GetSystemMetrics(SM_CYHSCROLL));
 end;//IsSizeableTree..
end;

procedure TAbsSubTree.WMNChitTest(var Msg: TWMNCHitTest);
var
 R : TRect;
begin
 R := BoundsRect;
 OffsetRect(R, -Left, -Top);
 if IsSizeableTree then
 begin
  Msg.Result := ElVclUtils.HitTest(R, ScreenToClient(SmallPointToPoint(Msg.Pos)), (R.Bottom - R.Top) div 4, GetSystemMetrics(SM_CYEDGE));
  if ((Msg.Result = HTBOTTOMLEFT) or
     (Msg.Result = HTLEFT) or
     (Msg.Result = HTTOPLEFT)) then
   Msg.Result := Windows.HTNOWHERE
  else
  //if IsShowGripper then
  // лучше всегда вызывать обработчик, а то скроллбар может не нажиматьс€
  // http://mdp.garant.ru/pages/viewpage.action?pageId=268347283
   inherited;
  
//    InflateRect(R, -GetSystemMetrics(SM_CXEDGE), 0);
  InflateRect(R, -1, 0);
  if not IsInvert then
  begin
   R.Top := R.Bottom - (GetSystemMetrics(SM_CYHSCROLL) div 2);
   R.Left := R.Right - (GetSystemMetrics(SM_CXVSCROLL) div 2);
   Dec(R.Bottom, GetSystemMetrics(SM_CYEDGE));
   if PtInRect(R, ScreenToClient(SmallPointToPoint(Msg.Pos))) then
    Msg.Result := HTBOTTOMRIGHT;
  end//not IsInvert
  else
  begin
   R.Bottom:=0;
   R.Top:=-(GetSystemMetrics(SM_CYHSCROLL) div 2);
   R.Left := R.Right - (GetSystemMetrics(SM_CXVSCROLL) div 2);
   Inc(R.Top, GetSystemMetrics(SM_CYEDGE));
   if PtInRect(R, ScreenToClient(SmallPointToPoint(Msg.Pos))) then
    Msg.Result := HTTOPRIGHT;
  end;//not IsInvert
 end//IsSizeableTree
 else
  inherited;
end;

procedure TAbsSubTree.WMNCPaint(var Message: TMessage);
var
 R: TRect;
 DC: HDC;
 l_Bitmap: HBITMAP;
 l_CacheDC: HDC;
 l_Width, l_Height: integer;
begin
 DC := GetWindowDC(Handle);
 try
  if IsSizeableTree and IsShowGripper then
  begin
   GetWindowRect(Handle, R);
   OffsetRect(R, -R.Left, -R.Top);
   if not IsInvert then
   begin
    InflateRect(R, -1, 0);
    Dec(R.Bottom, 1);
    R.Top := R.Bottom - GetSystemMetrics(SM_CYHSCROLL);
   end//not IsInvert
   else
   begin
    InflateRect(R, -1, 0);
    Inc(R.Top, 1);
    R.Bottom := R.Top + GetSystemMetrics(SM_CYHSCROLL);
   end;//not IsInvert

   l_Width := R.Right - R.Left;
   l_Height := R.Bottom - R.Top;
   l_CacheDC := CreateCompatibleDC(DC);

   l_Bitmap := CreateCompatibleBitmap(DC, l_Width, l_Height);
   SelectObject(l_CacheDC, l_Bitmap);

   DrawFrameControl(l_CacheDC, Rect(0, 0, l_Width, l_Height), DFC_SCROLL, DFCS_SCROLLSIZEGRIP);
   if IsInvert then
    StretchBlt(DC, R.Left, R.Top + l_Height - 1, l_Width, -l_Height, l_CacheDC, 0, 0, l_Width, l_Height, SRCCOPY)
   else
    StretchBlt(DC, R.Left, R.Top, l_Width, l_Height, l_CacheDC, 0, 0, l_Width, l_Height, SRCCOPY);

   DeleteObject(l_Bitmap);

   DeleteDC(l_CacheDC);

  end;//IsSizeableTree
  NCDraw(DC);
 finally
  ReleaseDC(Handle, DC);
 end;//try..finally
 inherited; // перенесли в конец - http://mdp.garant.ru/pages/viewpage.action?pageId=263291236 
end;

procedure TAbsSubTree.WMSize(var Message: TWMSize);
begin
 inherited;
 if (Message.Width > Width) then
 begin
  Width := Message.Width;
  Message.Result := 1;
 end;//Message.Width > Width
end;

function TAbsSubTree.GetMinSizeY: integer;
begin
 // почему-то в дереве RowHeight стал выставл€тьс€ поздно
 if (RowHeight > 0) then
  if GetMinVisibleDropCount > 0 then
   Result := RowHeight * GetMinVisibleDropCount
  else
   Result := RowHeight * (COMBO_MIN_SIZE_Y div RowHeight)
 else
  Result := COMBO_MIN_SIZE_Y;
end;

function TAbsSubTree.GetMinSizeX: integer;
begin
 Result := Max(COMBO_MIN_SIZE_X, f_CustomMinSizeX);
end;

function TAbsSubTree.GetMaxSizeY: integer;
begin
 // почему-то в дереве RowHeight стал выставл€тьс€ поздно
 if (RowHeight > 0) then
  if GetMaxVisibleDropCount > 0 then
   Result := RowHeight * GetMaxVisibleDropCount
  else
   Result := RowHeight * (COMBO_MAX_SIZE_Y div RowHeight)
 else
  Result := COMBO_MAX_SIZE_Y;
end;

function TAbsSubTree.getBorderSize: integer;
begin
 Result := 0;
 if IsShowGripper then
  inc(Result, GetSystemMetrics(SM_CYHSCROLL));
 inc(Result, GetSystemMetrics(SM_CYBORDER) * 2);
end;

function TAbsSubTree.CanFocus: Boolean;
begin
 Result:=false;
end;

procedure TAbsSubTree.SetSimpleTree(const aTree: Il3SimpleTree);
begin
 TreeStruct := aTree;
end;

procedure TAbsSubTree.SetTreeRoot(const aRoot: Il3SimpleNode);
var
 l_Tree : Il3Tree;
 l_Root : Il3RootNode;
begin
 if Supports(TreeStruct, Il3Tree, l_Tree) then
 begin
  if Supports(aRoot, Il3RootNode, l_Root) then
  begin
   l_Tree.SetRootAndCountView(l_Root, l3_DelayedCountView);
   Exit;
  end;//Supports(aRoot, Il3RootNode, l_Root)
 end;//Supports(TreeStruct, Il3Tree, l_Tree)
 TreeStruct.RootNode := aRoot as Il3SimpleRootNode;
end;

function TAbsSubTree.getTreeY: integer;
var
 l_Count: integer;
begin
 l_Count := TreeStruct.CountView;
 if (voShowRoot in ViewOptions) then
  inc(l_Count);
 Result := l_Count * RowHeight;
 if (Result < getMinSizeY) then
  Result := getMinSizeY;
end;

procedure TAbsSubTree.WMGetMinMaxInfo(var Message: TMessage);
var
  tp : PMinMaxInfo;
begin
 inherited;
 tp := PMinMaxInfo(Message.LParam);
 if GetWidth < GetMinSizeX then
  tp.ptMinTrackSize.x := GetMinSizeX
 else
  tp.ptMinTrackSize.x := GetWidth;
 tp.ptMinTrackSize.y := getMinSizeY;
 if IsList then
  tp.ptMaxTrackSize.Y := getTreeY;

 inc(tp.ptMinTrackSize.y, getBorderSize);
 inc(tp.ptMaxTrackSize.y, getBorderSize);
 inc(tp.ptMaxTrackSize.Y, 4);
 Message.Result := 1;
end;

procedure TAbsSubTree.NCDraw(aDC: HDC);
begin
// Do nothing;
end;

function TAbsSubTree.GetMaxVisibleDropCount: integer;
begin
 Result := 0;
end;

function TAbsSubTree.GetMinVisibleDropCount: integer;
begin
 Result := 0;
end;

end.
