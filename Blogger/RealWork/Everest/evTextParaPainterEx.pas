unit evTextParaPainterEx;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/evTextParaPainterEx.pas"
// �����: 06.04.2009 20:42
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::LeafPara Painters::TevTextParaPainterEx
//
// ���������� ���������� ���������. ��� ��������� �������� �� ������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  nevBase,
  evTextParaPainter,
  evLinePainter,
  l3Interfaces,
  nevTools,
  l3Units
  ;

type
 TevTextParaPainterEx = class(TevTextParaPainter)
  {* ���������� ���������� ���������. ��� ��������� �������� �� ������ }
 private
 // private fields
   f_FirstIndent : Integer;
   f_TopLine : Integer;
   f_LinePainter : TevLinePainter;
 private
 // private methods
   procedure CheckDrawFocused;
   procedure CheckInvertInLeftAAC;
   procedure DrawArrow(aRectHeight: Integer);
 protected
 // overridden protected methods
   procedure Release; override;
   procedure GetFramePartPrim(const aFrame: InevTag;
    anIndex: Tl3FramePartIndex;
    var thePart: TnevFramePart); override;
   procedure InitBottom(var theBottom: InevBasePoint;
    var theCellBottom: InevBasePoint); override;
   procedure DoDrawFrameText(aTop: Boolean); override;
   function DrawLeaf: Boolean; override;
   procedure FillUnfilled(const aRect: Tl3Rect); override;
     {* �������� ������� ���������, ������� �� ���� ������ }
 protected
 // protected methods
   procedure ValidateSegFont(const aSeg: InevTag); virtual;
   procedure ValidateParaFont; virtual;
 end;//TevTextParaPainterEx

implementation

uses
  l3Const,
  Graphics,
  l3String,
  l3MinMax,
  nevAfterEndPoint,
  l3InternalInterfaces,
  TextPara_Const,
  k2Tags,
  evdTypes,
  l3Chars,
  nevFacade,
  evTextParaTools,
  evTextParaConst,
  l3CustomString,
  evdStyles,
  l3Types,
  nevRealTools,
  l3Base,
  k2InterfacesEx,
  evDef,
  l3LineArray,
  k2Base,
  HyperLink_Const,
  nevActiveHyperlink,
  evdTextStyle_Const,
  nevInterfaces,
  k2Facade,
  evParaTools,
  nevFormatInfoFactory,
  k2Const,
  nevDecorActiveHyperlink,
  l3Region,
  SysUtils,
  Windows,
  Types,
  l3Drawer,
  evAlignBySeparatorUtils,
  l3Math,
  nevSegmentObject,
  BitmapPara_Const,
  evSegLst
  ;

// start class TevTextParaPainterEx

procedure TevTextParaPainterEx.CheckDrawFocused;
//#UC START# *502268560274_49DA30D901B6_var*
//#UC END# *502268560274_49DA30D901B6_var*
begin
//#UC START# *502268560274_49DA30D901B6_impl*
 if (Area.rView.As_InevView.Metrics.AACLike = nev_aacLeft) then
  Area.rCanvas.NotFocused := False;
//#UC END# *502268560274_49DA30D901B6_impl*
end;//TevTextParaPainterEx.CheckDrawFocused

procedure TevTextParaPainterEx.CheckInvertInLeftAAC;
//#UC START# *5052EF710307_49DA30D901B6_var*
//#UC END# *5052EF710307_49DA30D901B6_var*
begin
//#UC START# *5052EF710307_49DA30D901B6_impl*
 if (Area.rView.As_InevView.Metrics.AACLike > nev_aacNone) and Area.rCanvas.Invert then
  Area.rCanvas.Font.ForeColor := clBlack
//#UC END# *5052EF710307_49DA30D901B6_impl*
end;//TevTextParaPainterEx.CheckInvertInLeftAAC

procedure TevTextParaPainterEx.DrawArrow(aRectHeight: Integer);
//#UC START# *50A4D6E90261_49DA30D901B6_var*
var
 l_Delta     : Integer;
 l_ParaH     : Integer;
 l_Width     : Integer;
 l_Height    : Integer;
 l_ImageInfo : PnevControlImageInfo;
//#UC END# *50A4D6E90261_49DA30D901B6_var*
begin
//#UC START# *50A4D6E90261_49DA30D901B6_impl*
 if (Area.rView.As_InevView.Metrics.AACLike = nev_aacLeft) and Area.rCanvas.Invert and ParentPainter.IsSelectedOneWholePara(ParaX) then
  with Area.rCanvas do
  begin
   l_ImageInfo := FormatInfo.ImageInfo;
   if l_ImageInfo <> nil then
   begin
    l_Height := DP2LP(PointX(l_ImageInfo.rImageList.Height)).X;
    l_ParaH := (aRectHeight + Spaces.Top + Spaces.Bottom);
    l_Delta := (l_ParaH - l_Height) div 2;
    l_Delta := l_Delta + l_Height - l_ParaH + Spaces.Bottom;
    l_Width := DP2LP(PointX(l_ImageInfo.rImageList.Width)).X;
    MoveWindowOrg(l3Point(l_Width + (l3Inch div 16), l_Delta));
    FillRect(l3SRect(0, 0, l_ImageInfo.rImageList.Width, l_ImageInfo.rImageList.Height));
    l_ImageInfo.rImageList.Draw(As_Il3Canvas, 0, 0, l_ImageInfo.rFirstIndex);
   end; // if l_ImageInfo <> nil then
  end; // if Area.rView.As_InevView.Metrics.AACLike then
//#UC END# *50A4D6E90261_49DA30D901B6_impl*
end;//TevTextParaPainterEx.DrawArrow

procedure TevTextParaPainterEx.ValidateSegFont(const aSeg: InevTag);
//#UC START# *4D664903006E_49DA30D901B6_var*
//#UC END# *4D664903006E_49DA30D901B6_var*
begin
//#UC START# *4D664903006E_49DA30D901B6_impl*
 if (Area.rView.As_InevView.Metrics.AACLike > nev_aacNone) and Area.rCanvas.Invert then
  if aSeg.InheritsFrom(k2_idHyperlink) then
    Area.rCanvas.Font.ForeColor := clBlack;
//#UC END# *4D664903006E_49DA30D901B6_impl*
end;//TevTextParaPainterEx.ValidateSegFont

procedure TevTextParaPainterEx.ValidateParaFont;
//#UC START# *4D725A550218_49DA30D901B6_var*
//#UC END# *4D725A550218_49DA30D901B6_var*
begin
//#UC START# *4D725A550218_49DA30D901B6_impl*
 // ������ �� ������
//#UC END# *4D725A550218_49DA30D901B6_impl*
end;//TevTextParaPainterEx.ValidateParaFont

procedure TevTextParaPainterEx.Release;
//#UC START# *479F2AFB0397_49DA30D901B6_var*
//#UC END# *479F2AFB0397_49DA30D901B6_var*
begin
//#UC START# *479F2AFB0397_49DA30D901B6_impl*
 FreeAndNil(f_LinePainter);
 inherited;
//#UC END# *479F2AFB0397_49DA30D901B6_impl*
end;//TevTextParaPainterEx.Release

procedure TevTextParaPainterEx.GetFramePartPrim(const aFrame: InevTag;
  anIndex: Tl3FramePartIndex;
  var thePart: TnevFramePart);
//#UC START# *4804B9BB0383_49DA30D901B6_var*
var
 l_Style : InevTag;
 l_N     : InevPara;
//#UC END# *4804B9BB0383_49DA30D901B6_var*
begin
//#UC START# *4804B9BB0383_49DA30D901B6_impl*
 inherited;
 if (anIndex = l3_fpiUp) then
  if (Spaces.Top > 0) AND not ParaX.Attr[k2_tiStyle].BoolA[k2_tiHeaderHasOwnSpace] then
  begin
   thePart.rDrawType := lpdDraw;
   thePart.rColor := clBlack;
   thePart.rWidth := 0;
   thePart.rSpaceBefore := (l3Inch div 8) div 2;
   thePart.rSpaceAfter := (l3Inch div 8) div 2;
  end;//Spaces.Top > 0..
 if (thePart.rDrawType = lpdDraw) AND (anIndex = l3_fpiLeft) then
  thePart.rSpaceBefore := Max(Min(f_FirstIndent, Spaces.Left) - l3Inch div 16, 0);
 if (thePart.rDrawType <> lpdHidden) then
 // - ��� ������ ������ ����� (���� ��� ����� ���������� � ����� ������)
 begin
  l_Style := ParaX.Attr[k2_tiStyle];
  if l_Style.IsValid then
  begin
   Case anIndex of
    l3_fpiUp:
    begin
     l_N := evPrevOverallPara(ParaX);
     if (l_N <> nil) AND l_N.IsValid AND
      (l_Style.IntA[k2_tiHandle] = l_N.IntA[k2_tiStyle]) AND
      l_N.Attr[k2_tiFrame].IsValid then
     thePart.rDrawType := lpdHidden;
    end;//l3_fpiUp
    l3_fpiDown:
    begin
     l_N := evNextOverallPara(ParaX);
     if (l_N <> nil) AND l_N.IsValid AND
      (l_Style.IntA[k2_tiHandle] = l_N.IntA[k2_tiStyle]) AND
      l_N.Attr[k2_tiFrame].IsValid then
     thePart.rDrawType := lpdHidden;
    end;//l3_fpiDown
   end;//Case anIndex
  end;//l_Style.IsValid
 end;//thePart.rDrawType <> lpdHidden
 if (thePart.rDrawType = lpdDraw) then
 begin
  if (anIndex = l3_fpiDown) then
  begin
   thePart.rSpaceBefore := Max(thePart.rSpaceBefore, l3Inch div 16);
   thePart.rSpaceAfter := Max(thePart.rSpaceAfter, l3Inch div 32);
  end;//anIndex = l3_fpiDown
 end;//thePart.rDrawType = lpdDraw
//#UC END# *4804B9BB0383_49DA30D901B6_impl*
end;//TevTextParaPainterEx.GetFramePartPrim

procedure TevTextParaPainterEx.InitBottom(var theBottom: InevBasePoint;
  var theCellBottom: InevBasePoint);
//#UC START# *4804BC800172_49DA30D901B6_var*
var
 l_Pt : TnevPoint;
//#UC END# *4804BC800172_49DA30D901B6_var*
begin
//#UC START# *4804BC800172_49DA30D901B6_impl*
 theCellBottom := nil;
 if (Map <> nil) then
 // - ��� �������� �����, �������� ��� ��������� �������� (������)
  with Map.Bounds do
  begin
   l_Pt := l3Point(Left, Bottom);
   if not DrawCompleted then
   // ^ - http://mdp.garant.ru/pages/viewpage.action?pageId=132220046
    Dec(l_Pt.P.Y, l3Epsilon);
   theBottom.AsLeaf.InitPointByPt(Area.rView.As_InevView, l_Pt, Map);
   if (Bottom > Top + Spaces.Top) then
   // - !!! ������ ���� �������� ��� ��������� ���������� ���� ������������
   //       ����� ������, �.�. �� �� ����� ��������.
    theBottom := TnevAfterEndPoint.Make(Area.rView.As_InevView, theBottom);
  end;//with Map.Bounds
//#UC END# *4804BC800172_49DA30D901B6_impl*
end;//TevTextParaPainterEx.InitBottom

procedure TevTextParaPainterEx.DoDrawFrameText(aTop: Boolean);
//#UC START# *4804C35B00B2_49DA30D901B6_var*
var
 l_Space : Integer;
 l_Style : InevTag;
 l_Text  : Tl3PCharLen;
 l_Decor : InevTag;
 l_DT    : TnevDecorType;
//#UC END# *4804C35B00B2_49DA30D901B6_var*
begin
//#UC START# *4804C35B00B2_49DA30D901B6_impl*
 f_TopLine := Succ(TopAnchor.VertPosition(Area.rView.As_InevView, FormatInfo));
 if aTop then
  l_Space := Spaces.Top
 else
  l_Space := Spaces.Bottom;
 if (l_Space > 0) then
 begin
  if (aTop AND
      (f_TopLine = 1)
     ) OR
     
     (not aTop {AND
      (f_TopLine = FormatInfo.Lines.Count) AND}
     ) then
  begin
   if aTop then
    l_DT := nev_dtHeader
   else
    l_DT := nev_dtFooter;
   l_Decor := FormatInfo.DecorObj(l_DT);
   l_Style := ParaX.Attr[k2_tiStyle];
   if l_Style.IsValid then
   begin
    l_Text := l_Style.PCharLenA[k2_tiShortName];
    if not l3IsNil(l_Text) then
     InternalDrawFrameText(l_Text, aTop, l_Space, l_DT, l_Decor, f_FirstIndent)
    else
    if l_Decor.IsValid then
     InternalDrawFrameText(Tl3PCharLen(cc_EmptyStr), aTop, l_Space, l_DT, l_Decor, f_FirstIndent)
   end;//l_Style.IsValid
  end;//aTop
 end;//l_Space > 0
//#UC END# *4804C35B00B2_49DA30D901B6_impl*
end;//TevTextParaPainterEx.DoDrawFrameText

function TevTextParaPainterEx.DrawLeaf: Boolean;
//#UC START# *4804C81000B9_49DA30D901B6_var*
var
 LH              : Integer; {- ������ i-� ������}
 l_Justification : TevIndentType; {- ��� ������������ ���������}
 l_ParaFont      : Il3Font;
 l_ParaS         : Tl3PCharLen;
 l_IsHyperlink   : Boolean;

 procedure DrawIndent(First     : Boolean;
                      DX        : Integer;
                      LL        : Boolean;
                      AddHyphen : Boolean);
 var
  D              : Integer;
  HardEnterWidth : Integer;
  l_PMStr        : Tl3PCharLenPrim;
 begin//DrawIndent
  with Area.rCanvas do
  begin
   if not First AND AddHyphen then
    ExtTextOut(l3Point0,
                      l3Rect(0, 0, evHyphenWidth, LH),
                      cc_HyphenStr);
   if ((DX > 0) AND (l_Justification <> ev_itWidth)) then
   begin
    if ((First AND (l_Justification in [ev_itRight, ev_itCenter])) OR
       (not First AND
        ((l_Justification in [ev_itLeft, ev_itCenter]) OR DrawSpecial))) then
    begin
     D := 0;
     case l_Justification of
      ev_itLeft:
       if not First then
        D := DX;
      ev_itRight:
       Inc(D, DX);
      ev_itCenter:
       if First then
        Inc(D, DX div 2)
       else
        Inc(D, DX - (DX div 2));
      ev_itWidth: {D ��� ����� X0};
     end;//case l_Justification
     if not First AND DrawSpecial AND LL then
     begin
      if (ParaMarkStyle = ev_pmCell) then
       l_PMStr := cc_CurrencyStr
      else
       l_PMStr := cc_HardEnterStr;
      if l3IsNil(l_ParaS) then
      begin
       Font := l_ParaFont;                                                 
       ValidateParaFont;
      end;//l3IsNil(l_ParaS)
      PushFC;
      try
       with Font do
       begin
        Name := def_ArialFontName;
        Style := [];
       end;//with Font
      finally
       PopFC;
      end;//try..finally
      HardEnterWidth := TextExtent(l_PMStr).X;
      if (HardEnterWidth > D) then
       D := HardEnterWidth;
      if (SelRange <> nil) AND SelRange.ContainsEnd(Area.rView.As_InevView) then
      begin
       BeginInvert;
       try
        ExtTextOut(l3Point0, l3Rect(0, 0, HardEnterWidth, LH), l_PMStr);
       finally
        EndInvert;
       end;//try..finally
      end//(SelRange <> nil) AND SelRange.ContainsEnd
      else
       ExtTextOut(l3Point0, l3Rect(0, 0, HardEnterWidth, LH), l_PMStr);
     end;//not First
     MoveWindowOrg(l3PointX(-D));
     if l_IsHyperlink then DrawArrow(LH);
    end;//First...
   end;//AddHyphen
  end;//with Area.rCanvas
 end;//DrawIndent

var
 WC            : Integer;   {- ���������� ���� � i-� ������}
 DW            : Integer;
 ParaCaretPos  : Integer;
 LineCaretPos  : Integer;
 ParaCaretLine : Integer;
 l_NeedCaret   : Boolean;
 l_Map         : InevLines;
 l_SolidBlock  : Boolean;

 function loc_DrawText(S: Tl3CustomString): Boolean;

  function _TextRect(const S: Tl3PCharLen): Boolean;

   procedure DrawSoftEnter;
   begin//DrawSoftEnter
    with Area.rCanvas do
    begin
     PushFC;
     try
      with Font do
      begin
       Name := def_SymbolFontName;
       Style := [];
      end;//with Font
     finally
      PopFC;
     end;//try..finally
     CaretLineOut(cc_SoftEnterStr, LH, not l_NeedCaret, LineCaretPos);
    end;//with Area.rCanvas
   end;//DrawSoftEnter

  var
   TLen            : Integer;
   l_NeedSoftEnter : Boolean;
   S2Draw          : Tl3PCharLen;
   l_Str           : Tl3PCharLen;
  begin
   with Area.rCanvas do
   begin
    CheckInvertInLeftAAC;
    Result := ((ClipRect.Right > 0) OR (Caret <> nil)) AND HasToDraw;
    if Result then
    begin
     S2Draw := S;
     TLen := l3RTrim(S2Draw).SLen;
     if (TLen > 0) AND (S2Draw.S[Pred(TLen)] = cc_SoftEnter) then
     begin
      l_NeedSoftEnter := DrawSpecial;
      if l_NeedSoftEnter OR (LineCaretPos < 0) OR (LineCaretPos > S2Draw.SLen) then
       Dec(TLen)
      else
      begin
       {-��� ����� ���������� ��� ����������� ���������������� �������
           �� ����� ������ � SoftEnter'�� }
       S2Draw := CheckOutString(S2Draw);
       S2Draw.S[Pred(TLen)] := cc_HardSpace;
       TLen := S2Draw.SLen;
      end;//l_NeedSoftEnter
     end//TLen > 0
     else
     begin
      l_NeedSoftEnter := false;
      TLen := S2Draw.SLen;
     end;//TLen > 0
     l_Str := l3PCharLen(S2Draw.S, TLen, S2Draw.SCodePage);
     if DrawSpecial then
      l_Str := CheckConvertString(l_Str);
     CaretLineOut(l_Str, LH, not l_NeedCaret, LineCaretPos);
     if l_NeedSoftEnter then
      DrawSoftEnter;
    end;//Result
   end;//with Area.rCanvas
  end;//_TextRect

  function DrawAllLine: Boolean;
    {-���������� ��� ������, ��� ���������}
  begin//DrawAllLine
   Result := _TextRect(S.AsPCharLen);
   S.Offset(S.Len);
  end;//DrawAllLine

 var
  D2S : Integer; {-������ ������� �����}

  procedure GetD2S;
  begin//GetD2S
   if (WC > 0) then
   begin
    {if (DW < 0) then begin
     D2S := 0;
     DW := 0;
    end else }begin
     if (WC = 1) then
      D2S := DW
     else
      D2S := DW div WC;
     Dec(WC);
     with Area.rCanvas do
     begin
      D2S := LP2DP(l3PointX(D2S)).X;
      Dec(DW, DP2LP(PointX(D2S)).X);
     end;//with Area.rCanvas
    end;//DW < 0
   end
   else
    D2S := 0;
  end;//GetD2S

 var
  l_InDrawBlock      : Boolean;
  l_NeedCorrectCaret : Boolean;
  l_pxLH             : Integer;
  l_NS               : Tl3CustomString;
 begin//loc_DrawText
  Result := true;
  with Area.rCanvas do
  begin
   if S.Empty then
   begin
    if (LineCaretPos = 0) then
    begin
     SetCaret(l3Point0, l3Point(AverageCharWidth, LH), not l_NeedCaret);
     ParaCaretPos := -1;
     LineCaretPos := -1;
     ShowCursor := false;
    end;//LineCaretPos = 0
   end//S.Empty
   else
   begin
    if (l_Justification <> ev_itWidth) OR
       not l3HasWhiteSpace(S.AsPCharLen) then
    begin
     {-��������� ����� �� �������� � ���� �� � ������ �������}
     if l_SolidBlock then
      Result := DrawAllLine
     else
      f_LinePainter.DrawF(As_Il3Canvas, evL2DLA(@_TextRect), S);
    end//l_Justification <> ev_itWidth
    else
    begin
     {-������ ����������� ������}
     l_pxLH := LP2DP(l3PointY(LH)).Y;
     l_NS := S.Clone;
     try
      while Result AND not S.Empty do
      begin
       S.FindCharEx(cc_HardSpace, l_NS);
       l_NeedCorrectCaret := (LineCaretPos = S.Len);
       if l_SolidBlock then
       begin
        Result := DrawAllLine;
        l_InDrawBlock := false;
       end//l_SolidBlock
       else
        l_InDrawBlock := Boolean(f_LinePainter.DrawF(As_Il3Canvas, evL2DLA(@_TextRect), S));
       if Result AND l3IsWhiteSpaceS(S.AsPCharLen, -1) then
       begin
        if l_InDrawBlock then
        begin
         BeginInvert;
         CheckInvertInLeftAAC;
        end;
        try
         GetD2S;
         FillRect(l3SRect(0, 0, D2S, l_pxLH));
         MoveWindowOrg(PointX(-D2S));{-�������� ������ ��������� �� ������ ������� �����}
         if l_NeedCorrectCaret then
          IncCaret(D2S - 1);
         Result := (ClipRect.Right > 0) AND HasToDraw;
        finally
         if l_InDrawBlock then
          EndInvert;
        end;//try..finally
       end;//Result AND evWhiteSpace
       S.AssignString(l_NS);
      end;//while Result AND not S.Empty
     finally
      l3Free(l_NS);
     end;//try..finally
    end;//l_Justification <> ev_itWidth
   end;//S.Empty
   Result := Result AND (ClipRect.Right > 0) AND HasToDraw;
  end;//with Area.rCanvas
 end;//loc_DrawText

var
 FirstLineWidth : Integer;
 OtherLineWidth : Integer;
 l_LineOffsetX  : Integer;
 l_ExtentX      : Integer;
 l_LineCount    : Integer;
 l_ActiveElement : InevActiveElement;

 procedure DrawPara;

  function DrawLine(ppLI: PPevLineInfo; LID: Integer): Boolean;
  var
   l_SegmentsList : Ik2TagList;

   function DrawSegment(const aSeg: InevTag; Index: Integer): Boolean;

   var
    l_OM : TOutlineTextMetric;
    l_Pnt : IevPainter;
    l_DrawingObject : InevTag;
    
    function DrawObject(const S: Tl3PCharLen): Boolean;
    var
     l_Ex     : Tl3Point;
     l_Obj    : InevObject;
     l_SegInf : TnevShapeInfo;
     l_Points : TnevShapePoints;
     l_Point  : InevPoint;
     l_BL     : Integer;
    begin//DrawObject
     Result := true;
     with Area.rCanvas do
     begin
      l_Ex := TextExtent(S);
      PushWO;
      try
       l_BL := aSeg.IntA[k2_tiBaseLine];
       if not l_DrawingObject.InheritsFrom(k2_idBitmapPara) then
       // http://mdp.garant.ru/pages/viewpage.action?pageId=174295160&focusedCommentId=344137422#comment-344137422
       // - ���� ���
        MoveWindowOrg(l3PointY(-((LH - l_Ex.Y) div 2)))
       else
       begin
 {       if (l_OM.otmDescent <> 0) then
         if (l_OM.otmDescent <> 1) then
          l_BL := l_BL + Area.rCanvas.DP2LP(PointY(l_OM.otmDescent - 1)).Y;}
        if (l_OM.otmDescent <> 0) then
          l_BL := l_BL + Area.rCanvas.DP2LP(PointY(l_OM.otmDescent)).Y;
        MoveWindowOrg(l3PointY(-((LH - l_Ex.Y))));
       end;//not l_DrawingObject.InheritsFrom(k2_idBitmapPara)
       if (l_BL <> 0) then
        MoveWindowOrg(l3PointY(-l_BL));
       l3FillChar(l_Points, SizeOf(l_Points));
       l_Points.rTop := nil;
       l_Points.rCaret := nil;
       l_Points.rSelection := nil;
       l_Points.rPrevHeight := 0;
       l_Points.rRealTop := nil;
       l_Points.rFake := False;
       l_Points.rCheckCaret := nil;
       l_Points.rCheckSelection := nil;
       if (LineCaretPos > 0) then
        Dec(LineCaretPos, S.SLen);
       if (SelRange <> nil) then
       begin
        l_Point := ParaX.MakePoint;
        l_Point.PositionW := aSeg.IntA[k2_tiStart];
        if SelRange.Contains(Area.rView.As_InevView, l_Point) then
         if l_DrawingObject.QT(InevObject, l_Obj) then
          l_Points.rSelection := l_Obj.Range;
       end;//SelRange <> nil
 (*           if (LineCaretPos = 0) AND QT(InevObject, l_Obj) then
        l_Pnt.Draw(nil, Area.rCanvas, nil, l_Obj.Point, nil, l_SegMap, High(Integer))
       else*)
        l_Pnt.Draw(Area^, l_Points, l_SegInf);
      finally
       PopWO;
      end;//try..finally
      MoveWindowOrg(l3PointX(-l_Ex.X));
      MoveWindowOrg(PointX(-1));
     end;//with Area.rCanvas
    end;//DrawObject

   var
    l_SegFont  : Il3Font;
    l_BC       : Tl3Color;
    l_ActiveHyperlinkStyle : InevTag;
    l_AH                   : InevActiveElement;
    l_CheckedS1 : Tl3CustomString; 
    l_CheckedS2 : Tl3CustomString;
    l_CheckedS3 : Tl3CustomString;
   begin//DrawSegment
    l_CheckedS1 := CheckS(1);
    l_CheckedS2 := CheckS(2);
    l_CheckedS3 := CheckS(3);
    evTextParaGetLineSegment(l_Map, l_ParaS, Succ(LID), Index, l_SegmentsList,
                             l_CheckedS1, l_CheckedS2, l_CheckedS3
                             {CheckS(1), CheckS(2), CheckS(3)});
    Result := loc_DrawText(l_CheckedS1{S[1]});
    if Result then
    begin
     with Area.rCanvas do
     begin
      Push;
      try
       l_SegFont := FormatInfo.InfoForChild(TnevSegmentObject.Make(aSeg)).Font[false];
       //l_SegFont := ETAOIN_SHRDLU_GetObjIFont(Area.rView.Metrics, aSeg, true, FormatInfo^, false);
       if l_SegFont.IsAtomic then
       begin
        l3FillChar(l_OM, SizeOf(l_OM));
        if (GetOutlineTextMetrics(Area.rCanvas.DC, SizeOf(l_OM), @l_OM) = 0) then
         Assert(false, '�� ������� �������� ������� �������� ������ �����');
       end;//l_SegFont.IsAtomic
       l_BC := BackColor;
       Font := l_SegFont;
       // - ������������� ����� ��������
       if (l_ActiveElement <> nil) then
       begin
        l_AH := TnevActiveHyperlink.Make(ParaX, aSeg);
        if ParaX.IsDecorationElement then
         l_AH := TnevDecorActiveHyperlink.Make(ParentPainter.Obj, l_AH);
        //if aSeg.InheritsFrom(k2_idHyperlink) then // - ��� ������, ����� ��������� ����������� ������ ��������������
         if l_ActiveElement.IsSame(l_AH) then
         begin
          l_ActiveHyperlinkStyle := k2.TypeTable.ObjToTag(k2.TypeTable[k2_idTextStyle].ValueTable.DRByID[evd_saActiveHyperLink]);
          if l_ActiveHyperlinkStyle.IsValid then
          begin
           if l_ActiveHyperlinkStyle.HasSubAtom(k2_tiFont) then
           begin
            with l_ActiveHyperlinkStyle.Attr[k2_tiFont] do
            begin
             with Font do
             begin
              if HasSubAtom(k2_tiUnderline) then
               Underline := BoolA[k2_tiUnderline];
              if HasSubAtom(k2_tiBold) then
               Bold := BoolA[k2_tiBold];
              if HasSubAtom(k2_tiItalic) then
               Italic := BoolA[k2_tiItalic];
              if HasSubAtom(k2_tiStrikeout) then
               Strikeout := BoolA[k2_tiStrikeout];
              if HasSubAtom(k2_tiForeColor) then
               ForeColor := IntA[k2_tiForeColor];
              if HasSubAtom(k2_tiBackColor) then
               BackColor := IntA[k2_tiBackColor];
             end;//Font
            end;//with l_ActiveHyperlinkStyle.Attr[k2_tiFont]
           end;//l_ActiveHyperlinkStyle.HasSybAtom(k2_iFont)
          end;//l_ActiveHyperlinkStyle.IsValid
         end;//l_ActiveElement.IsSame(TnevActiveHyperlink.Make(ParaX, aSeg))
       end;//l_ActiveElement <> nil
       if (l_SegFont.BackColor = nevDefaultColor) AND
          aSeg.HasSubAtom(k2_tiVisible) then
        if aSeg.BoolA[k2_tiVisible] then
         if not ParaX.BoolA[k2_tiVisible] then
         // - ������������� ���������� ���� ���� ��� ������� ���������
          BackColor := l_BC;
       ValidateSegFont(aSeg);
       if l_SegFont.IsAtomic then
       begin
        l_DrawingObject := aSeg.Child[0];
        if l_DrawingObject.QT(IevPainter, l_Pnt) then
         try
          l_Pnt.ParentPainter := Self;
          f_LinePainter.DrawF(As_Il3Canvas, evL2DLA(@DrawObject), l_CheckedS2{S[2]});
          Result := true;
         finally
          l_Pnt := nil;
         end//try..finally
        else
         Result := loc_DrawText(l_CheckedS2{S[2]});
       end//l_SegFont.IsAtomic
       else
        Result := loc_DrawText(l_CheckedS2{S[2]});
      finally
       Pop;
      end;//try..finally
      if Result then
      begin
       Font := l_ParaFont;
       // - ���������� ����� ���������
       ValidateParaFont;
       Result := loc_DrawText(l_CheckedS3{S[3]});
      end;//Result
     end;//with Area.rCanvas
    end;//Result
   end;//DrawSegment
                                   
   procedure DrawBullet;
   const
    cc_BulletStr : Tl3PCharLenConst = (S         : #$B7;
                                       SLen      : 1;
                                       SCodePage : CP_ANSI);
   var
    l_BulletWidth : Integer;
    l_Bullet      : Integer;
   begin//DrawBullet
    l_Bullet := ParaX.IntA[k2_tiBullet];
    if (l_Bullet > 0) then
    begin
     // - bullet ������������
     with Area.rCanvas do
     begin
      Font.Name := def_SymbolFontName;
      l_BulletWidth := TextExtent(cc_BulletStr).X;
      MoveWindowOrg(l3PointX(2 * l_BulletWidth));
      ExtTextOut(l3Point0, l3Rect(0, 0, l_BulletWidth, LH), cc_BulletStr);
      MoveWindowOrg(l3PointX(-2 * l_BulletWidth));
      Font := l_ParaFont;
      //- ��������������� ����� ���������
      ValidateParaFont;
     end;//with Area.rCanvas
    end;//l_Bullet > 0
   end;//DrawBullet
   
  var
   LeftIndent   : Integer;
   MaxLineWidth : Integer;
   IsLastLine   : Boolean;
   l_LineLength : Integer;
   l_TabInfo    : Il3TabInfo;
   l_SaveOrg    : Tl3Point;
   l_TabIndent  : Integer;
   l_CheckedS1  : Tl3CustomString;
  begin//DrawLine
   Result := true;
   l_TabIndent := 0;
   with Area.rCanvas do
   begin
    StartTabs(l_TabInfo, ParaX.TabStops);
    try
     try
      if (l_LineOffsetX >= 0) then
      begin
       l_SaveOrg := WindowOrg;
       try
        LH := ppLI^^.LE.Y;
        Dec(l_SaveOrg.P.Y, LH);
        {-�������� ������ ��������� �� ������ ������}
        l_LineLength := ppLI^^.B - l_LineOffsetX;
        {-��������� ����� ������}
        if ShowCursor AND (ParaCaretPos >= l_LineOffsetX) AND
           (LID = ParaCaretLine) then
         LineCaretPos := ParaCaretPos - l_LineOffsetX
        else
         LineCaretPos := -1;
        if (ClipRect.Top >= LH) and ((Caret = nil) or not ShowCursor) then
         Exit;
        if not DrawRgnOrBlock AND
           ((LineCaretPos < 0) OR (LineCaretPos > l_LineLength)) then
         Exit;
        f_LinePainter.StartLine(l_LineOffsetX, l_LineLength);
        Font := l_ParaFont;
        if (LID > 0) then
        begin
         MaxLineWidth := OtherLineWidth;
         LeftIndent := Spaces.Left;
        end//LID > 0
        else
        begin
         MaxLineWidth := FirstLineWidth;
         LeftIndent := f_FirstIndent;
         if (ParentPainter <> nil) and
            (ParentPainter.ParentPainter <> nil) and
            (ParentPainter.ParentPainter.TableRowPainter <> nil) then
         begin
          l_TabIndent := evCalcDecimalTabIndent(ParaX, l_ParaS, l_Justification, l_LineCount, As_Il3Canvas);
          Inc(LeftIndent, l_TabIndent);
         end; // if (ParaMarkStyle = ev_pmCell) and (ParaX.TabStops <> nil) then
        end;//(LID > 0)
        IsLastLine := (LID = l_LineCount);
        if IsLastLine AND (l_Justification = ev_itWidth) then
         l_Justification := ev_itLeft;
        FontIndexSet := ppLI^^.FI;
        WC := ppLI^^.WC;
        if Printing then
        begin
         if (ClipRect.Bottom - LH) <= 5 * l3Epsilon then
         // - �� ����� �� ������ ����� ��������
         begin
          Result := false;
          // - �� ����� ���������� ������ ��������
          DrawLeaf := false;
          // -������������...
          Inc(l_SaveOrg.P.Y, LH);
          // - ��������� �������������� �������
          Exit;
          // -�������
         end;//ClipRect.Bottom < LH
        end;//Printing
        DW := MaxLineWidth - ppLI^^.LE.X - l_TabIndent;
        Assert((l_Justification = ev_itPreformatted) OR (DW < High(Integer) div 4), '�������� ������ ������ �� �����');
        l_SegmentsList := evTextParaGetLineSegments(FormatInfo, l_ParaS, ParaX, Succ(LID));
        MoveWindowOrg(l3PointX(-LeftIndent));
        // - �������� ������ ��������� �� ������ �������
        DrawIndent(true, DW, IsLastLine, false);
        // - ������ ����� ������
        //Font := l_ParaFont;
        // - ������������� ����� ���������
        ValidateParaFont;
        if (LID = 0) then
         DrawBullet;
         // - ������ ������ ������
        if l_SegmentsList.Empty then
        begin
         l_CheckedS1 := CheckS(1);
         with l_CheckedS1 do
          if (l_ParaS.S = nil) then
           Clear
          else
           AsPCharLen := l3PCharLenPart(l_ParaS.S,
                                        l_LineOffsetX, l_LineOffsetX + l_LineLength,
                                        l_ParaS.SCodePage);
         loc_DrawText(l_CheckedS1{S[1]});
        end//l_SegmentsList.Empty
        else
        begin
         CheckDrawFocused;
         l_SegmentsList.ForEachF(k2L2TIA(@DrawSegment));
        end;
        DrawIndent(false, DW, IsLastLine, ppLI^^.AddHyphen);
        {-������ ������ ������ � ������ ����� ���������}
       finally
        WindowOrg := l_SaveOrg;
        if (ClipRect.Bottom <= 0) then
         Result := false;
        // -���� �������� ���� ������ �� �����
        Result := Result AND HasToDraw;
        // - ��� �������� ��� ��������
       end;//try..finally
      end;//l_LineOffsetX >= 0
     finally
      l_LineOffsetX := ppLI^^.B;
      // - ���������� ����� ������� ������
     end;//try..finally
    finally
     FinishTabs(l_TabInfo);
    end;//try..finally
   end;//with Area.rCanvas
  end;//DrawLine

 var
  IA : Tl3IteratorAction;
 begin//DrawPara
  l_Justification := TevIndentType(ParaX.IntA[k2_tiJustification]);
  with Area.rCanvas do
  begin
   if not ParaX.TreatCollapsedAsHidden OR not Area.rView.IsObjectCollapsed[ParaX] then
   begin
    if (l_Justification = ev_itWidth) AND IsVirtual then
     l_Justification := ev_itLeft;
    f_FirstIndent := FormatInfo.FirstIndent;
    l_LineCount := Pred(evTextParaLineCount(FormatInfo));
    FirstLineWidth := l_ExtentX - f_FirstIndent;
    OtherLineWidth := l_ExtentX - Spaces.Left;
    Push;
    try
     l_ParaFont := FormatInfo.Font[false];
     //l_ParaFont := ETAOIN_SHRDLU_GetObjIFont(Area.rView.Metrics, ParaX, false, FormatInfo^, false);
     // -��������� ����� ���������
     try
      IA := l3L2IA(@DrawLine);
      try
       if (l_LineOffsetX >= 0) then
        evTextParaIterateLines(FormatInfo, l_ParaS, ParaX, IA, Max(0, Pred(f_TopLine)))
       else
        evTextParaIterateLines(FormatInfo, l_ParaS, ParaX, IA, Max(0, f_TopLine - 2));
      finally
       l3FreeIA(IA);
      end;//try..finally
     finally
      l_ParaFont := nil;
     end;//try..finally
    finally
     Pop;
    end;//try..finally
   end//not ParaX.TreatCollapsedAsHidden OR not Area.rView.IsObjectCollapsed[ParaX]
   else
    Result := true;
   if Result then
    MoveWindowOrg(l3PointY(-Spaces.Bottom));
    // - ��������� ������ ����� ������
  end;//with Area.rCanvas
 end;//DrawPara

//#UC END# *4804C81000B9_49DA30D901B6_var*
begin
//#UC START# *4804C81000B9_49DA30D901B6_impl*
 StartDrawingInitFields;
 f_HeaderHeight := 0;
 l_IsHyperlink := EvIsParaHyperlink(ParaX);
 Result := true;
 l_ActiveElement := Area.rView.ActiveElement;
 l_Map := FormatInfo.Lines;
 l_ExtentX := Max(FormatInfo.rLimitWidth - Spaces.Right, FormatInfo.Width);
 f_TopLine := Succ(TopAnchor.VertPosition(Area.rView.As_InevView, FormatInfo));
 if (Caret <> nil) AND Area.rView.ForceDrawFocusRect then
  f_ForceFocusRect := true;
 with Area.rCanvas do
 begin
  PushWO;
  try
   if Result AND (f_TopLine = 1) then
    MoveWindowOrg(l3PointY(-Spaces.Top));
    // - ��������� ������ ����� �������
   if not Printing OR (ClipRect.Bottom > 0) then
   begin
    l_ParaS := ParaX.Text;
    if ShowCursor AND (Caret <> nil) then
    begin
     l_NeedCaret := Caret.NeedWindowsCaret;
     l_LineOffsetX := evTextParaGetPosByLine(l_Map, l_ParaS, f_TopLine);
     ParaCaretPos := Caret.Position;
     ParaCaretLine := Caret.VertPosition(Area.rView.As_InevView, FormatInfo);
    end//ShowCursor
    else
    begin
     l_NeedCaret := false;
     if (f_TopLine = 1) then
      l_LineOffsetX := 0
     else
      l_LineOffsetX := -1;
     ParaCaretPos := -1;
    end;//ShowCursor
    if (f_LinePainter = nil) then
     f_LinePainter := TevLinePainter.Create;
    f_LinePainter.StartPara(Area.rView.As_InevView, SelRange);
    try
     l_SolidBlock := (SelRange = nil);
     if l_SolidBlock then
      DrawPara
     else
     begin
      l_SolidBlock := SelRange.Solid(Area.rView.As_InevView);
      if l_SolidBlock then
      begin
       if (l_ParaS.S = nil) then
        DrawPara
       else
       begin
        BeginInvert;
        try
         DrawPara;
        finally
         EndInvert;
        end;{try..finally}
       end;//l_ParaS.S = nil
      end//l_SolidBlock
      else
       DrawPara;
     end;//l_SolidBlock
    finally
     f_LinePainter.FinishPara;
    end;//try..finally
   end;//not Printing OR (ClipRect.Bottom >= 0
  finally
   PopWO;
  end;//try..finally
 end;//with Area.rCanvas
//#UC END# *4804C81000B9_49DA30D901B6_impl*
end;//TevTextParaPainterEx.DrawLeaf

procedure TevTextParaPainterEx.FillUnfilled(const aRect: Tl3Rect);
//#UC START# *4E2702FE01EA_49DA30D901B6_var*
const
 cRad = 12;
 cArrow = 10;
 cFW = 1;
var
 l_Rgn  : Tl3Region;
 l_Rgn1 : Tl3Region;
 l_Rgn2 : Il3Region;
 l_R    : Tl3Rect;
 l_SR   : Tl3SRect;
 l_PointArray : array of TPoint;
 l_Med : Integer;
 //l_BC : TColor;
 l_NeedTriangle : Boolean;
//#UC END# *4E2702FE01EA_49DA30D901B6_var*
begin
//#UC START# *4E2702FE01EA_49DA30D901B6_impl*
 if ParaX.Attr[k2_tiStyle].BoolA[k2_tiCollapsable] AND
    (
     (ParaX.BackColor <> nevDefaultColor)
(*     (ParaX.IntA[k2_tiBackColor] <> nevDefaultColor) OR
     (ParaX.Attr[k2_tiStyle].Attr[k2_tiFont].IntA[k2_tiBackColor] <> nevDefaultColor)*)
    ) AND
    not Area.rView.IsObjectCollapsed[ParaX] AND
    Area.rCanvas.DrawEnabled and not Area.rCanvas.IsVirtual then
 begin
(*  l_BC := ParaX.IntA[k2_tiBackColor];
  if (l_BC = nevDefaultColor) then
  begin
   l_BC := ParaX.Attr[k2_tiStyle].Attr[k2_tiFont].IntA[k2_tiBackColor];
   if (l_BC = nevDefaultColor) then
   begin
    inherited;
    Exit;
   end;//l_BC = nevDefaultColor
  end;//l_BC = nevDefaultColor*)
  with Area.rCanvas do
  begin
   l_Rgn := Tl3Region.Create;
   try
    PushClipRect;
    try
     l_R := aRect;
     if (f_TopLine = 1) then
      l_R.Top := l_R.Top + f_HeaderHeight
     else
      l_R.Top := l_R.Top - f_HeaderHeight;
     l_SR := LR2DR(l_R);
     with l_SR do
      l_Rgn.Rgn := CreateRoundRectRgn(Left, Top, Right, Bottom, cRad, cRad);
     ClipRegion := l_Rgn;
     inherited;
    finally
     PopClipRect;
    end;//try..finally
    PushClipRect;
    try
     l_Rgn1 := Tl3Region.Create;
     try
      l_NeedTriangle := (f_TopLine = 1) AND (f_HeaderHeight <> 0);
      if l_NeedTriangle then
      begin
       SetLength(l_PointArray, 3);
       l_Med := l_SR.Left + (l_SR.Right - l_SR.Left) div 2;
       l_PointArray[0] := Point(l_Med - cArrow, l_SR.Top);
       l_PointArray[1] := Point(l_Med + cArrow, l_SR.Top);
       l_PointArray[2] := Point(l_Med, l_SR.Top - cArrow);
       l_Rgn1.Rgn := Windows.CreatePolygonRgn(l_PointArray[0],
                                              Length(l_PointArray),
                                              ALTERNATE{WINDING});
       ClipRegion := l_Rgn1;
       FillRgn(l_Rgn1);
      end;//f_TopLine = 1
      l_Rgn2 := l_Rgn.Clone;
      if l_NeedTriangle then
       l_Rgn2.Combine(l_Rgn1, RGN_OR);
      ClipRegion := l_Rgn2;
      Push;
      try
       Canvas.Brush.Color := clSilver;
       FrameRgn(DC, l_Rgn2.Rgn, Canvas.Brush.Handle, cFW, cFW);
      finally
       Pop;
      end;//try..finally
     finally
      FreeAndNil(l_Rgn1);
     end;//try..finally
    finally
     PopClipRect;
    end;//try..finally
    PushClipRect;
    try
     BackColor := TopBC;
     //BackColor := l_BC;
     l_Rgn1 := Tl3Region.Create;
     try
      l_Rgn1.Rect := LR2DR(l_R);
      l_Rgn1.Combine(l_Rgn, RGN_DIFF);
      ClipRegion := l_Rgn1;
      FillRect(l_R);
     finally
      FreeAndNil(l_Rgn1);
     end;//try..finally
    finally
     PopClipRect;
    end;//try..finally
   finally
    FreeAndNil(l_Rgn);
   end;//try..finally
  end;//with Area.rCanvas
 end//ParaX.Attr[k2_tiStyle].BoolA[k2_tiCollapsable]
 else
  if not SpecialFill(aRect, False) then
   inherited;
//#UC END# *4E2702FE01EA_49DA30D901B6_impl*
end;//TevTextParaPainterEx.FillUnfilled

end.