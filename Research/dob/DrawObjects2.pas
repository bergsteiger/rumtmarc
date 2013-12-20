unit DrawObjects2;

{$mode delphi}{$H+}

(* *****************************************************************************
Module:          DrawObjects2
Description:     DrawObject Classes derived from base classes which were
                 defined in the DrawObjects1 unit.
Version:         3.1.1
Date:            31-MAY-2008
Compiler:        Delphi 7
Author:          Angus Johnson,   angusj-AT-myrealbox-DOT-com
Copyright:       © 2006-2008 Angus Johnson
********************************************************************************
The contents of this file are subject to the Mozilla Public License Version 1.1
(the "License"); you may not use this file except in compliance with the
License. You may obtain a copy of the License at http://www.mozilla.org/MPL/
***************************************************************************** *)

interface

uses
  Windows, SysUtils, Classes, Messages, Controls, Graphics, Math,
  Forms, TypInfo, Dialogs, DrawObjects1,
  lmessages
  ;

type
  TFontOutline = (foNone, foClear, foColored);

  TLine = class(TConnector)
  protected
    procedure DrawObject(Canvas: TCanvas; IsShadow: boolean); override;
    procedure SetButtonCount(count: integer); override;
  public
    constructor Create(AOwner: TComponent); override;
    function Grow(TopEnd: boolean = false): boolean; override;
    function Shrink(TopEnd: boolean = false): boolean; override;
  end;

  TZLine = class(TConnector)
  private
    fAutoCenter: boolean;
    procedure SetAutoCenter(AutoCenter: boolean);
  protected
    procedure DrawObject(Canvas: TCanvas; IsShadow: boolean); override;
    procedure InternalBtnMove(BtnIdx: integer; NewPt: TPoint); override;
    procedure UpdateNonEndButtonsAfterBtnMove; override;
    procedure DoQuadPtConnection; override;
    procedure DrawBtn(BtnPt: TPoint; index: integer; Pressed, LastBtn: boolean); override;
    procedure SaveToPropStrings;  override;
  public
    constructor Create(AOwner: TComponent); override;
    function IsValidBtnDown(BtnIdx: integer): boolean; override;
    procedure Rotate(degrees: integer); override;
  published
    property AutoCenter: boolean read fAutoCenter write SetAutoCenter;
    property AutoOrientation;
    property Orientation;
  end;

  TLLine = class(TConnector)
  protected
    procedure DrawObject(Canvas: TCanvas; IsShadow: boolean); override;
    procedure SaveToPropStrings;  override;
    procedure DoQuadPtConnection; override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure Rotate(degrees: integer); override;
  published
    property Orientation;
  end;

  TBezier = class(TConnector)
  private
    fSmooth: boolean;
    fFilled: boolean;
    procedure DrawDottedPolyBezier(Canvas: TCanvas);
  protected
    procedure SetFilled(isFilled: boolean); virtual;
    procedure SetArrow1(Arrow: boolean); override;
    procedure SetArrow2(Arrow: boolean); override;
    procedure SetButtonCount(count: integer); override;
    procedure DrawControlLines; override;
    procedure DrawObject(Canvas: TCanvas; IsShadow: boolean); override;
    procedure InternalBtnMove(BtnIdx: integer; NewPt: TPoint); override;
    procedure UpdateConnectionPoints(MovingConnection: TSolid); override;
    procedure SaveToPropStrings;  override;
  public
    constructor Create(AOwner: TComponent); override;
    function Grow(TopEnd: boolean = false): boolean; override;
    function Shrink(TopEnd: boolean = false): boolean; override;
  published
    property Filled: boolean read fFilled write SetFilled;
    //:Smooth: ie lock joined splines to prevent sharp points...
    property Smooth: boolean read fSmooth write fSmooth default true;
  end;

  TSolidBezier = class(TBezier)
  private
    fBorder: integer;
    procedure SetNoConnection(Connection: TSolid);
    function GetNoConnection: TSolid;
    procedure SetBorder(border: integer);
  protected
    procedure SetFilled(isFilled: boolean); override;
    procedure SetArrow1(Arrow: boolean); override;
    procedure SetArrow2(Arrow: boolean); override;
    procedure SetUseHitTest(value: boolean); override;
    procedure DrawObject(Canvas: TCanvas; IsShadow: boolean); override;
    procedure SaveToPropStrings;  override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure Mirror;
    procedure Flip;
  published
    property Connection1: TSolid read GetNoConnection write SetNoConnection;
    property Connection2: TSolid read GetNoConnection write SetNoConnection;
    {:nb: Pen.Width is the width of the solid bezier as opposed to
    BorderWidth which is the size of the solid bezier's border}
    property BorderWidth: integer read fBorder write SetBorder;
  end;

  TTextBezier = class(TBezier)
  private
    fText: string;
    fOutline: TFontOutline;
    procedure SetNoConnection(Connection: TSolid);
    function GetNoConnection: TSolid;
    procedure SetText(const text: string);
    procedure SetOutline(Outline: TFontOutline);
    procedure CMFontChanged(var Message: TMessage); message CM_FONTCHANGED;
  protected
    procedure CalcMargin; override;
    procedure SetFilled(isFilled: boolean); override;
    procedure SetArrow1(Arrow: boolean); override;
    procedure SetArrow2(Arrow: boolean); override;
    procedure SetUseHitTest(value: boolean); override;
    procedure DrawObject(Canvas: TCanvas; IsShadow: boolean); override;
    procedure SaveToPropStrings;  override;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property Connection1: TSolid read GetNoConnection write SetNoConnection;
    property Connection2: TSolid read GetNoConnection write SetNoConnection;
    property Text: string read fText write SetText;
    property Font;
    property Outline: TFontOutline read fOutline write SetOutline;
    property ParentFont;
  end;

  TArc = class(TSolid)
  private
    fAngle1: integer;
    fAngle2: integer;
    fRegular: boolean;
    fCurrRotAngle: integer;
    procedure SetAngle1(ang1: integer);
    procedure SetAngle2(ang2: integer);
    procedure SetRegular(value: boolean);
  protected
    procedure DrawObject(Canvas: TCanvas; IsShadow: boolean); override;
    procedure InternalBtnMove(BtnIdx: integer; NewPt: TPoint); override;
    procedure SaveToPropStrings;  override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure BeginTransform; override;
    procedure Rotate(degrees: integer); override;
  published
    property Angle1: integer read fAngle1 write SetAngle1;
    property Angle2: integer read fAngle2 write SetAngle2;
    property Regular: boolean read fRegular write SetRegular;
  end;

  TPic = class(TSolid)
  private
    fPic: TBitmap;
    fStretch: boolean;
    fTransparent: boolean;
    fTightConnections: boolean;
    procedure SetStretch(Stretch: boolean);
    procedure SetTransparent(Transparent: boolean);
    procedure SetTightConnections(value: boolean);
    procedure LoadPicFromDataStream;
    function GetAngle: integer;
    procedure SetAngle(angle: integer);
  protected
    procedure DrawObject(Canvas: TCanvas; IsShadow: boolean); override;
    procedure SaveToPropStrings;  override;
    procedure BinaryDataLoaded; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function IsValidBtnDown(BtnIdx: integer): boolean; override;
    function ClosestScreenPt(FromScreenPt: TPoint): TPoint; override;
    procedure LoadPicFromFile(const filename: string);
    procedure SavePicToFile(const filename: string);
    function MergeDrawObjImage(DrawObj: TDrawObject; TransparentClr: TColor): boolean;
    procedure Rotate(degrees: integer); override;
  published
    //:Angle: rotation angle. See also the Rotation() method.
    property Angle: integer read GetAngle write SetAngle;
    property Stretch: boolean read fStretch write SetStretch;
    property Transparent: boolean read fTransparent write SetTransparent;
    property TightConnections: boolean read fTightConnections write SetTightConnections;
  end;

  TSolidPoint =class(TSolid)
  protected
    procedure CalcMargin; override;
    procedure AddConnector(Connector: TConnector); override;
    procedure DrawObject(Canvas: TCanvas; IsShadow: boolean); override;
  public
    constructor Create(AOwner: TComponent); override;
  end;

  TDiamond = class(TSolidWithText)
  private
    procedure SetDiamondPts;
  protected
    procedure DrawStringsInDiamond(Canvas: TCanvas; Strings: TStrings);
    procedure InternalBtnMove(BtnIdx: integer; NewPt: TPoint); override;
    procedure DrawObject(Canvas: TCanvas; IsShadow: boolean); override;
  public
    constructor Create(AOwner: TComponent); override;
    function ClosestScreenPt(FromScreenPt: TPoint): TPoint; override;
    function ResizeObjectToFitText: boolean; override;
    procedure Rotate(degrees: integer); override;
  end;

  TRectangle = class(TSolidWithText)
  private
    fCentered: boolean;
    fRounded: boolean;
    procedure SetCentered(Centered: boolean);
    procedure SetRounded(Rounded: boolean);
    procedure SetRectanglePts;
  protected
    procedure DrawStringsInRect(Canvas: TCanvas; Strings: TStrings);
    procedure InternalBtnMove(BtnIdx: integer; NewPt: TPoint); override;
    procedure DrawObject(Canvas: TCanvas; IsShadow: boolean); override;
    procedure SaveToPropStrings;  override;
  public
    constructor Create(AOwner: TComponent); override;
    function ClosestScreenPt(FromScreenPt: TPoint): TPoint; override;
    function ResizeObjectToFitText: boolean; override;
    procedure Rotate(degrees: integer); override;
  published
    property Centered: boolean read fCentered write SetCentered default true;
    //:Rounded: will only display rounded rectangles when not also rotated
    property Rounded: boolean read fRounded write SetRounded default false;
  end;

  TText = class(TRectangle)
  private
    function GetStrings: TStrings;
    procedure SetStrings(strings: TStrings);
  protected
    procedure DrawObject(Canvas: TCanvas; IsShadow: boolean); override;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property Strings: TStrings read GetStrings write SetStrings;
  end;

  TEllipse = class(TSolidWithText)
  private
    fBalloonPoint: TBalloonPoint;
    fRegular: boolean;
    procedure SetBalloonPoint(BalloonPoint: TBalloonPoint);
    procedure SetRegular(value: boolean);
  protected
    procedure SetAngle(angle: integer); override;
    procedure DrawStringsInEllipse(canvas: TCanvas; Strings: TStrings);
    procedure SetBezierButtons;
    procedure DrawObject(Canvas: TCanvas; IsShadow: boolean); override;
    procedure SaveToPropStrings;  override;
    procedure InternalBtnMove(BtnIdx: integer; NewPt: TPoint); override;
  public
    constructor Create(AOwner: TComponent); override;
    function ClosestScreenPt(FromScreenPt: TPoint): TPoint; override;
    function ResizeObjectToFitText: boolean; override;
    procedure Rotate(degrees: integer); override;
  published
    property BalloonPoint: TBalloonPoint read fBalloonPoint write SetBalloonPoint;
    property Regular: boolean read fRegular write SetRegular;
  end;

  TPolygon = class(TSolid)
  private
    fPlainPoly: boolean;
    procedure SetPlainPoly(isPlainPoly: boolean);
  protected
    procedure InitializePoints; virtual;
    function GetButtonCount: integer;
    procedure SetButtonCount(count: integer); virtual;
    procedure SaveToPropStrings;  override;
    procedure InternalBtnMove(BtnIdx: integer; NewPt: TPoint); override;
    function IsValidBtnDown(BtnIdx: integer): boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
    function ClosestScreenPt(FromScreenPt: TPoint): TPoint; override;
    procedure DuplicateButton(btnIdx: integer); virtual;
    procedure RemoveButton(btnIdx: integer); virtual;
    procedure Mirror;
    procedure Flip;
  published
    property ButtonCount: integer read GetButtonCount write SetButtonCount;
    property Regular: boolean read fPlainPoly write SetPlainPoly;
  end;

  TSolidArrow = class(TSolid)
  private
    fWasRotated: boolean;
  protected
    procedure InternalBtnMove(BtnIdx: integer; NewPt: TPoint); override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure Rotate(degrees: integer); override;
  end;

  TRandomPoly = class(TPolygon)
  protected
    procedure InitializePoints; override;
    procedure SetButtonCount(count: integer); override;
  public
    procedure Randomize;
  end;

  TStar = class(TPolygon)
  private
    fMidPtInScreenCoords: TPoint;
    fBoringStar: boolean;
    procedure SetBoringStar(BoringStar: boolean);
    procedure SetPointsAroundCirc(StartPtIdx: integer; NewPt: TPoint);
  protected
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
    procedure InternalBtnMove(BtnIdx: integer; NewPt: TPoint); override;
    procedure InitializePoints; override;
    procedure SetButtonCount(count: integer); override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure DuplicateButton(btnIdx: integer); override;
    procedure RemoveButton(btnIdx: integer); override;
  published
    property Regular: boolean read fBoringStar write SetBoringStar;
  end;

procedure Register;

implementation

uses Types;

{$R DrawObjects.dcr}

var fDummyStrings: TStrings;

function dummyStrings: TStrings;
begin
  if not assigned(fDummyStrings) then
  begin
    fDummyStrings := TStringList.create;
    fDummyStrings.Add('Text Object'); //otherwise TText object becomes invisible
  end;
  result := fDummyStrings;
end;

//------------------------------------------------------------------------------
// Miscellaneous functions
//------------------------------------------------------------------------------

procedure Register;
begin
  RegisterComponents('DrawObjects',
    [TLine, TLLine, TZLine, TBezier, TText, TSolidPoint, TPic, TRectangle,
    TDiamond, TEllipse, TArc, TPolygon, TStar, TSolidArrow, TSolidBezier,
    TTextBezier, TRandomPoly]);
end;
//------------------------------------------------------------------------------

procedure RegisterDrawObjClasses;
begin
  RegisterClasses([TLine, TLLine, TZLine, TBezier, TSolidBezier, TTextBezier,
    TRectangle, TPic, TDiamond, TEllipse, TArc, TPolygon, TSolidArrow,
    TRandomPoly, TStar, TSolidPoint, TText]);
end;
//------------------------------------------------------------------------------

function ClosestPointIdx(pts: array of TPoint; toPoint: TPoint): integer;
var
  i: integer;
  resDist, dist: single;
begin
  result := 0;
  resDist := SquaredDistBetweenPoints(pts[0], toPoint);
  for i := 1 to high(pts) do
  begin
    dist := SquaredDistBetweenPoints(pts[i], toPoint);
    if dist >= resDist then continue;
    resDist := dist;
    result := i;
  end;
end;
//------------------------------------------------------------------------------

function APointIsBetweenPts(aPoint, Pt1, Pt2: TPoint): boolean;
begin
  result := false;
  if (Pt1.X < Pt2.X) and ((aPoint.X < Pt1.X) or (aPoint.X > Pt2.X)) then exit;
  if (Pt1.X > Pt2.X) and ((aPoint.X > Pt1.X) or (aPoint.X < Pt2.X)) then exit;
  if (Pt1.Y < Pt2.Y) and ((aPoint.Y < Pt1.Y) or (aPoint.Y > Pt2.Y)) then exit;
  if (Pt1.Y > Pt2.Y) and ((aPoint.Y > Pt1.Y) or (aPoint.Y < Pt2.Y)) then exit;
  result := true;
end;
//------------------------------------------------------------------------------

// GetBezierPt: get a point on curve at relative distance between start and end.
// 'u' must be between 0 & 1. ie: If u = .5 then result = mathematical midpoint.
function GetBezierPt(const u: single; pts: array of TPoint): TPoint;
var
  i: integer;
  sx, sy: single;
begin
  if high(pts) < 0 then result := Point(0,0)
  else if u <= 0 then result := pts[0]
  else if u >= 1 then result := pts[high(pts)]
  else
  begin
    sx := pts[0].X * power(1-u, high(pts)) + pts[high(pts)].X*power(u,high(pts));

    for i := 1 to high(pts)-1 do
      sx := sx + pts[i].X *power(u,i)* power(1-u, high(pts)-i)* high(pts);

    sy := pts[0].Y * power(1-u, high(pts)) + pts[high(pts)].Y*power(u,high(pts));
    for i := 1 to high(pts)-1 do
      sy := sy + pts[i].Y*power(u,i)*power(1-u,high(pts)-i)* high(pts);

    result := Point(round(sx), round(sy));
  end;
end;
//------------------------------------------------------------------------------

// GetEllipseXValFromYVal: given that the y_offset is on the ellipse,
// return a single x_offset which is the horizontal distance to the curve from
// the vertical axis (ie both left and right).
function GetEllipseXValFromYVal(radius_horz,
  radius_vert, y_offset_in: integer; out x_offset_out: integer): boolean;
begin
  //(x/radius_horz)^2 + (y/radius_vert)^2 = 1
  //====> x = +/- radius_horz * SQRT(1 - SQR(y/radius_vert))
  result :=
    (y_offset_in < radius_vert) and (radius_horz <> 0) and (radius_vert <> 0);
  if not result then exit;
  x_offset_out := round( radius_horz * SQRT(1 - SQR(y_offset_in/radius_vert)) );
end;
//------------------------------------------------------------------------------

// GetPtOnEllipseFromAngle: given the angle from the center of ellipse,
// return the corresponding point on the surface of the ellipse.
function GetPtOnEllipseFromAngle(radius_horz,
  radius_vert: integer; radians_in: single; out point_out: TPoint): boolean;
var
  quadrant: integer;
  q: single;
begin
  //given ellipse x = radius_horz*cos(q) and y = radius_vert*sin(q),
  //then q = arctan(radius_horz*tan(angle_in)/radius_vert)
  result := (radius_vert <> 0) and (radians_in >= 0) and (radians_in <= PI_Mul2);
  if not result then exit;

  if radians_in > PI_Mul3_Div2 then quadrant := 4
  else if radians_in > pi then quadrant := 3
  else if radians_in > PI_Div2 then quadrant := 2
  else quadrant := 1;
  q := arctan(radius_horz*tan(radians_in)/radius_vert);
  if (quadrant = 1) or (quadrant = 4) then
    point_out.X := abs(round(radius_horz*cos(q))) else
    point_out.X := - abs(round(radius_horz*cos(q)));
  if (quadrant < 3) then
    point_out.Y := - abs(round(radius_vert*sin(q))) else
    point_out.Y := abs(round(radius_vert*sin(q)));
end;
//------------------------------------------------------------------------------

// GetPtOnCircleFromAngle: given the angle (radians) from the center of circle,
// returns the corresponding point on the circumference of the circle.
function GetPtOnCircleFromAngle(radius: integer; angle: single): TPoint;
begin
  result.X := round(radius * cos(angle));
  result.Y := -round(radius * sin(angle)); //nb: Y axis is +ve down
end;
//------------------------------------------------------------------------------

function SetPointsAroundCircle(origin: TPoint;
  radius, count: integer; out pts: array of TPoint): boolean;
var
  i: integer;
  angle: single;
begin
  result := count <= high(pts)+1;
  if not result or (count = 0) then exit;
  angle := PI_Mul2 / count;
  for i := 0 to count -1 do pts[i] := GetPtOnCircleFromAngle(radius, i*angle);

  //now, offset the points around the origin...
  for i := 0 to Count -1 do
    OffsetPt(pts[i], origin.X, origin.Y);
end;
//------------------------------------------------------------------------------

// SquaredDistBetweenPoints: use to find minimum distances
function GetDiagonalOppositePoint(Pt,PtOfRotation: TPoint): TPoint;
begin
  result.X := 2*PtOfRotation.X - Pt.X;
  result.Y := 2*PtOfRotation.Y - Pt.Y;
end;
//------------------------------------------------------------------------------

//MovePtDiagonalOppositeAnotherPt: (ie maintains *smooth* joining of beziers splines)
procedure MovePtDiagonalOppositeAnotherPt(var PtToMove: TPoint; Pt, PtOfRotation: TPoint);
var
  dist, tmpDist, ratio: single;
begin
  //Given Pt, move PtToMove to its diagonally opposite point (about PtOfRotation)
  //while maintaining PtToMove the same dist it currently is from PtOfRotation.
  dist := sqrt(SquaredDistBetweenPoints(PtToMove,PtOfRotation));
  tmpDist := sqrt(SquaredDistBetweenPoints(Pt,PtOfRotation));
  if tmpDist = 0 then exit; //ie: don't move it
  PtToMove := GetDiagonalOppositePoint(Pt,PtOfRotation);
  //now, move result to previous distance ...
  ratio := dist/tmpDist;
  with PtOfRotation do OffsetPt(PtToMove,-X,-Y);
  PtToMove.X := round(PtToMove.X * ratio);
  PtToMove.Y := round(PtToMove.Y * ratio);
  with PtOfRotation do OffsetPt(PtToMove,X,Y);

end;
//------------------------------------------------------------------------------

//DistanceBetween2Pts used by TextAlongBezier() ...
function DistanceBetween2Pts(pt1,pt2: TPoint): single;
begin
  result := sqrt((pt1.X - pt2.X)*(pt1.X - pt2.X) +
    (pt1.Y - pt2.Y)*(pt1.Y - pt2.Y));
end;
//------------------------------------------------------------------------------

//GetPtAtDistAndAngleFromPt used by TextAlongBezier() ...
function GetPtAtDistAndAngleFromPt(pt: TPoint; dist: integer; angle: single): TPoint;
begin
  result.X := round(dist * cos(angle));
  result.Y := -round(dist * sin(angle)); //nb: Y axis is +ve down
  OffsetPt(result, pt.X, pt.Y);
end;
//------------------------------------------------------------------------------

//PtBetween2Pts used by TextAlongBezier() ...
function PtBetween2Pts(pt1, pt2: TPoint; relativeDistFRomPt1: single): TPoint;
begin
  if pt2.X = pt1.X then
    result.X := pt2.X else
    result.X := pt1.X + round((pt2.X - pt1.X)*relativeDistFRomPt1);
  if pt2.Y = pt1.Y then
    result.Y := pt2.Y else
    result.Y := pt1.Y + round((pt2.Y - pt1.Y)*relativeDistFRomPt1);
end;
//------------------------------------------------------------------------------

//AngledCharOut used by TextAlongBezier() ...
procedure AngledCharOut(Canvas: TCanvas; pt: TPoint;
  c: char; radians: single; offsetX, offsetY: integer; outline: TFontOutline);
var
  lf: TLogFont;
  OldFontHdl,NewFontHdl: HFont;
  angle: integer;
begin
  angle := round(radians * 180/PI);
  if angle > 180 then angle := angle - 360;

  //workaround -
  //since textout() without rotation is malaligned relative to rotated text ...
  if angle = 0 then angle := 1;

  with Canvas do
  begin
    if GetObject(Font.Handle, SizeOf(lf), @lf) = 0 then exit;
    lf.lfEscapement := Angle * 10;
    lf.lfOrientation := Angle * 10;
    lf.lfOutPrecision := OUT_TT_ONLY_PRECIS;
    NewFontHdl := CreateFontIndirect(lf);
    OldFontHdl := selectObject(handle,NewFontHdl);
    if offsetX < 0 then
      pt := GetPtAtDistAndAngleFromPt(pt, -offsetX, radians + Pi)
    else if offsetX > 0 then
      pt := GetPtAtDistAndAngleFromPt(pt, offsetX, radians);
    if offsetY < 0 then
      pt := GetPtAtDistAndAngleFromPt(pt, -offsetY, radians + PI_Div2)
    else if offsetY > 0 then
      pt := GetPtAtDistAndAngleFromPt(pt, offsetY, radians - PI_Div2);

    case outline of
      foNone : TextOut(pt.x, pt.y, c);
      foClear:
        begin
          beginPath(handle);
          TextOut(pt.x, pt.y, c);
          endPath(handle);
          StrokePath(handle);
        end;
      else
        begin
          TextOut(pt.x, pt.y, c);
          beginPath(handle);
          TextOut(pt.x, pt.y, c);
          endPath(handle);
          StrokePath(handle);
        end;
    end;

    selectObject(handle,OldFontHdl);
    DeleteObject(NewFontHdl);
  end;
end;
//------------------------------------------------------------------------------

type
  TPoints = array[0.. (maxInt div sizeof(TPoint)) -1] of TPoint;
  PPoints = ^TPoints;
  Integers = array[0.. (maxInt div sizeof(integer)) -1] of integer;
  PIntegers = ^Integers;

procedure TextAlongBezier(canvas: TCanvas; bezierPts: array of TPoint;
  s: string; curveOffset: integer; outline: TFontOutline);
var
  i, j, ptCnt, sLenPxls, sLen: integer;
  currentInsertionDist, charWidthDiv2: integer;
  pt: TPoint;
  flatPts: PPoints;
  types: PByte;
  distances: PIntegers;
  angle, spcPxls, bezierLen, relativeDistFRomPt1: single;
  charWidths: array[#32..#255] of integer;
begin
  sLen := length(s);
  //make sure there's text and a valid number of bezier points ...
  if (sLen = 0) or (high(bezierPts) mod 3 <> 0) then exit;

  with canvas do
  begin
    BeginPath(handle);
    PolyBezier(bezierPts);
    EndPath(handle);
    FlattenPath(handle);

    if not GetCharWidth32(handle,32,255, charWidths[#32]) then exit;
    //get the number of points needed to define the flattened path ...
    ptCnt := GetPath(handle, flatPts, types, 0);
    if ptCnt < 1 then exit;

    GetMem(flatPts, ptCnt* sizeof(TPoint));
    GetMem(types, ptCnt* sizeof(byte));
    GetMem(distances, ptCnt* sizeof(integer));
    try
      //get the 'flattened' array of points along the bezier path ...
      GetPath(handle, flatPts^, types^, ptCnt);

      //calculate and fill the distances array ...
      distances[0] := 0;
      bezierLen := 0;
      for i := 1 to ptCnt -1 do
      begin
        bezierLen := bezierLen +
          DistanceBetween2Pts(flatPts[i], flatPts[i-1]);
        distances[i] := trunc(bezierLen);
      end;

      //calc length of text in pixels ...
      sLenPxls := 0;
      for i := 1 to sLen do inc(sLenPxls, charWidths[s[i]]);

      //calc extra space between chars to spread string along entire curve ...
      if sLen = 1 then
        spcPxls := 0 else
        spcPxls := (bezierLen - sLenPxls)/(sLen -1);

      //nb: the canvas font color must be assign *before* calling AngledCharOut
      //otherwise the first char will be malaligned ...
      if outline = foColored then font.Color := Brush.Color
      else if outline = foClear then brush.Style := bsClear;
      SetBkMode (handle, TRANSPARENT);

      j := 1;
      currentInsertionDist := 0;
      for i := 1 to sLen do
      begin
        //increment currentInsertionDist (half) the width of char to get the
        //slope of the curve at the midpoint of that character ...
        charWidthDiv2 := charWidths[s[i]] div 2;
        inc(currentInsertionDist, charWidthDiv2);
        while (j < ptCnt -1) and (distances[j] < currentInsertionDist) do inc(j);
        if distances[j] = currentInsertionDist then
          pt := flatPts[j]
        else
        begin
          relativeDistFRomPt1 := (currentInsertionDist - distances[j-1]) /
            (distances[j] - distances[j-1]);
          pt := PtBetween2Pts(flatPts[j-1], flatPts[j], relativeDistFRomPt1);
        end;
        angle := GetAnglePt2FromPt1(flatPts[j-1], flatPts[j]);

        AngledCharOut(canvas, pt,
          s[i], angle, -charWidthDiv2, curveOffset, outline);
        inc(currentInsertionDist,
          charWidthDiv2 + trunc(spcPxls) + round(frac(spcPxls*i)));
      end;

      //debug only - draw just the points ...
      //for i := 0 to ptCnt -1 do with flatPts[i] do
      //begin canvas.moveto(X,Y); canvas.lineto(X+1,Y+1); end;

      //debug only - draw the path from the points ...
      //with flatPts[0] do canvas.moveto(X,Y);
      //for i := 1 to ptCnt -1 do with flatPts[i] do canvas.lineto(X,Y);

    finally
      FreeMem(flatPts);
      FreeMem(types);
      FreeMem(distances);
    end;
  end;
end;
//------------------------------------------------------------------------------

//This DrawArrowHead() function is loosely based on code downloaded from
//http://www.efg2.com/Lab/Library/Delphi/Graphics/Algorithms.htm
procedure DrawArrowHead(Canvas: TCanvas;
  FromPoint, ToPoint: TPoint; HeadSize: cardinal; SolidArrowHead: boolean);
var
  xbase           :  integer;
  xLineDelta      :  Double;
  xLineUnitDelta  :  Double;
  xNormalDelta    :  Double;
  xNormalUnitDelta:  Double;
  ybase           :  integer;
  yLineDelta      :  Double;
  yLineUnitDelta  :  Double;
  yNormalDelta    :  Double;
  yNormalUnitDelta:  Double;
  SavedBrushColor :  TColor;
  ArrowDelta      :  Double;
  base            :  TPoint;
  savedPenWidth   : integer;
begin
  //avoid drawing arrows with pen widths > 2 otherwise arrowheads look ugly...
  savedPenWidth := canvas.Pen.Width;
  inc(HeadSize, 2* savedPenWidth div 3);
  if canvas.Pen.Width > 2 then canvas.Pen.Width := 2;

  xLineDelta := ToPoint.X - FromPoint.X;
  yLineDelta := ToPoint.Y - FromPoint.Y;

  if (xLineDelta = 0) and (yLineDelta = 0) then
  begin
    xLineUnitDelta := 0;
    yLineUnitDelta := 0;
    xNormalUnitDelta := 0;
    yNormalUnitDelta := 0;
  end else
  begin
    xLineUnitDelta := xLineDelta / hypot(xLineDelta, yLineDelta);
    yLineUnitDelta := yLineDelta / hypot(xLineDelta, yLineDelta);
    xNormalDelta :=  yLineDelta;
    yNormalDelta :=  -xLineDelta;
    xNormalUnitDelta := xNormalDelta / hypot(xNormalDelta, yNormalDelta);
    yNormalUnitDelta := yNormalDelta / hypot(xNormalDelta, yNormalDelta);
  end;
  ArrowDelta := 7/4; // ArrowDelta == 1 result in an ugly boxed arrow

  //(xBase, yBase) is where arrow line is perpendicular to base of triangle.
  xBase := ToPoint.X - ROUND(HeadSize * xLineUnitDelta * ArrowDelta);
  yBase := ToPoint.Y - ROUND(HeadSize * yLineUnitDelta * ArrowDelta);

  base := Point(ToPoint.X - ROUND(HeadSize * xLineUnitDelta),
    ToPoint.Y - ROUND(HeadSize * yLineUnitDelta));

  if SolidArrowHead then
  begin
    SavedBrushColor := Canvas.Brush.Color;
    Canvas.Brush.Color := Canvas.Pen.Color;
    Canvas.Polygon([ToPoint,
      Point(xBase + ROUND(HeadSize*xNormalUnitDelta),
        yBase + ROUND(HeadSize*yNormalUnitDelta)), base,
      Point(xBase - ROUND(HeadSize*xNormalUnitDelta),
        yBase - ROUND(HeadSize*yNormalUnitDelta)) ]);
    Canvas.Brush.Color := SavedBrushColor;
  end else
    Canvas.PolyLine([
      Point(xBase + ROUND(HeadSize*xNormalUnitDelta),
        yBase + ROUND(HeadSize*yNormalUnitDelta)), ToPoint,
      Point(xBase - ROUND(HeadSize*xNormalUnitDelta),
        yBase - ROUND(HeadSize*yNormalUnitDelta)) ]);
  canvas.Pen.Width := savedPenWidth;
end;
//------------------------------------------------------------------------------

function ArrowBase(FromPoint, ToPoint: TPoint; HeadSize: cardinal): TPoint;
var
  xLen            :  integer;
  xLenPxRatio     :  Double;
  yLen            :  integer;
  yLenPxRatio     :  Double;
  hypotenuse      :  Double;
begin
  xLen := ToPoint.X - FromPoint.X;
  yLen := ToPoint.Y - FromPoint.Y;
  if (xLen = 0) and (yLen = 0) then
  begin
    xLenPxRatio := 0;
    yLenPxRatio := 0;
  end else
  begin
    hypotenuse := hypot(xLen, yLen);
    //for every virtual pixel moved along the hypotenuse,
    //how much does the x & y coords change ...
    xLenPxRatio := xLen / hypotenuse;
    yLenPxRatio := yLen / hypotenuse;
  end;
  //'Base' is where the line intersects the base of the arrow triangle.
  Result.X := ToPoint.X - ROUND(HeadSize * xLenPxRatio);
  Result.Y := ToPoint.Y - ROUND(HeadSize * yLenPxRatio);
end;
//------------------------------------------------------------------------------

//This declaration modifies Delphi's declaration of GetTextExtentExPoint
//so that the variable to receive partial string extents (p6) is ignored ...
function GetTextExtentExPointNoPartials(DC: HDC; p2: PAnsiChar; p3, p4: Integer;
  var p5: Integer; const p6: integer; var p7: TSize): BOOL; stdcall;
    external gdi32 name 'GetTextExtentExPointA';

//TrimLine: Splits off from LS any characters beyond the allowed width
//breaking at the end of a word if possible. Leftover chars -> RS.
procedure TrimLine(canvas: TCanvas; var ls: string; out rs: string;
                           LineWidthInPxls: integer);
var
  i,len,NumCharWhichFit: integer;
  dummy: TSize;
begin
  if ls = '' then exit;
  len := length(ls);

  //get the number of characters which will fit within LineWidth...
  if not GetTextExtentExPointNoPartials(canvas.handle,
    pchar(ls),len,LineWidthInPxls,NumCharWhichFit,0,dummy) then
    begin
      ls := '';
      rs := '';
      exit; //oops!!
    end;

  if NumCharWhichFit = len then
    exit //if everything fits then stop here
  else if NumCharWhichFit = 0 then
  begin
    rs := ls;
    ls := '';
  end else
  begin
    i := NumCharWhichFit;
    //find the end of the last whole word which will fit...
    while (NumCharWhichFit > 0) and (ls[NumCharWhichFit] > ' ') do
      dec(NumCharWhichFit);
    if (NumCharWhichFit = 0) then NumCharWhichFit := i;

    i := NumCharWhichFit+1;
    //ignore trailing blanks in LS...
    while (ls[NumCharWhichFit] = ' ') do dec(NumCharWhichFit);
    //ignore beginning blanks in RS...
    while (i < len) and (ls[i] = ' ') do inc(i);
    rs := copy(ls,i,len);
    ls := copy(ls,1,NumCharWhichFit);        //nb: assign ls AFTER rs here
  end;
end;

//------------------------------------------------------------------------------
(* RotateBitmap() function - (c) har*GIS L.L.C., 1999
   You are free to use this in any way, but please retain this comment block.
   Please email questions to jim@har-gis.com .
   Doc & Updates: http://www.efg2.com/Lab/ImageProcessing/RotateScanline.htm and
   http://www.efg2.com/Lab/Library/Delphi/Graphics/JimHargis_RotateBitMap.zip *)
//------------------------------------------------------------------------------

type
  SiCoDiType = record
	 si, co, di: single; {sine, cosine, distance}
  end;

{	Calculate sine/cosine/distance from INTEGER coordinates}
function SiCoDiPoint ( const p1, p2: TPoint): SiCoDiType;
var
  dx, dy: integer;
begin
  dx := ( p2.x - p1.x ); 	dy := ( p2.y - p1.y );
  with RESULT do
    begin
      di := HYPOT( dx, dy ); //di := Sqrt( dx * dx + dy * dy );
      if abs( di )<1
        then begin si := 0.0; co := 1.0 end //Zero length line
        else begin si := dy/di; co := dx/di end;
    end;
end;

//Rotate  a bitmap about an arbritray center point;
(*procedure RotateBitmap(
		const BitmapOriginal: TBitMap;//input bitmap (possibly converted)
		out   BitMapRotated: TBitMap; //output bitmap
		const theta: single;  // rotn angle in radians counterclockwise in windows
		const oldAxis: TPOINT; 	// center of rotation in pixels, rel to bmp origin
		var   newAxis: TPOINT);  // center of rotated bitmap, relative to bmp origin
var
  cosTheta       :  Single;   {in windows}
  sinTheta       :  Single;
  i              :  INTEGER;
  iOriginal      :  INTEGER;
  iPrime         :  INTEGER;
//		iPrimeRotated  :  INTEGER; use width if doubled
  j              :  INTEGER;
  jOriginal      :  INTEGER;
  jPrime         :  INTEGER;
//		jPrimeRotated  :  INTEGER; use height if doubled
  NewWidth,NewHeight:INTEGER;
  nBytes, nBits: Integer;//no. bytes per pixelformat
  Oht,Owi,Rht,Rwi: Integer;//Original and Rotated subscripts to bottom/right
//The variant pixel formats for subscripting       1/6/00
type // from Delphi
  TRGBTripleArray = array [0..32767] of TRGBTriple; //allow integer subscript
  pRGBTripleArray = ^TRGBTripleArray;
  TRGBQuadArray = array [0..32767]  of TRGBQuad;//allow integer subscript
  pRGBQuadArray = ^TRGBQuadArray;
var //each of the following points to the same scanlines
  RowRotatedB: pByteArray; 			//1 byte
  RowRotatedW: pWordArray;  		//2 bytes
  RowRotatedT: pRGBtripleArray;	//3 bytes
  RowRotatedQ: pRGBquadArray;  	//4 bytes
var //a single pixel for each format 	1/8/00
  TransparentB: Byte;
  TransparentW: Word;
  TransparentT: TRGBTriple;
  TransparentQ: TRGBQuad;
var
  DIB: TDIBSection;     //10/31/00
  SiCoPhi: SiCoDiType;  //sine,cosine, distance
{=======================================}
begin

with BitMapOriginal do
begin

  TransparentB := 0; TransparentW := 0; //added by AWJ to avoid warning messages

//Decipher the appropriate pixelformat to use Delphi byte subscripting 1/6/00
//pfDevice, pf1bit, pf4bit, pf8bit, pf15bit, pf16bit, pf24bit, pf32bit,pfCustom;
  case pixelformat of
    pfDevice: begin //handle only pixelbits= 1..8,16,24,32 //10/31/00
      nbits :=  GetDeviceCaps( Canvas.Handle,BITSPIXEL )+1 ;
      nbytes := nbits div 8; //no. bytes for bits per pixel
      if (nbytes>0)and(nbits mod 8 <> 0) then exit;//ignore if invalid
      end;
    pf1bit:  nBytes:=0;// 1bit, TByteArray      //2 color pallete , re-assign byte value to 8 pixels, for entire scan line
    pf4bit:	 nBytes:=0;// 4bit, PByteArray     // 16 color pallette; build nibble for pixel pallette index; convert to 8 pixels
    pf8bit:  nBytes:=1;// 8bit, PByteArray     // byte pallette, 253 out of 256 colors; depends on display mode, needs truecolor ;
    pf15bit: nBytes:=2;// 15bit,PWordArrayType // 0rrrrr ggggg bbbbb  0+5+5+5
    pf16bit: nBytes:=2;// 16bit,PWordArrayType // rrrrr gggggg bbbbb  5+6+5
    pf24bit: nBytes:=3;// 24bit,pRGBtripleArray// bbbbbbbb gggggggg rrrrrrrr  8+8+8
    pf32bit: nBytes:=4;// 32bit,pRGBquadArray  // bbbbbbbb gggggggg rrrrrrrr aaaaaaaa 8+8+8+alpha
                       // can assign 'Single' reals to this for generating displays/plasma!
    pfCustom: begin  //handle only pixelbits= 1..8,16,24,32  //10/31/00
        GetObject( Handle, SizeOf(DIB), @DIB );
        nbits := DIB.dsBmih.biSizeImage;
        nbytes := nbits div 8;
        if (nbytes>0)and(nbits mod 8 <> 0) then exit;//ignore if invalid
      end;// pfcustom

    else exit;// 10/31/00 ignore invalid formats
  end;// case

// BitmapRotated.PixelFormat is the same as BitmapOriginal.PixelFormat;
// IF PixelFormat is less than 8 bit, then BitMapOriginal.PixelFormat = pf8Bit,
//  because Delphi can't index to bits, just bytes;
// The next time BitMapOriginal is used it will already be converted.
//( bmp storage may increase by factor of n*n, where n=8/(no. bits per pixel)  )
	if nBytes=0 then PixelFormat := pf8bit; //note that input bmp is changed

//assign copies all properties, including pallette and transparency   11/7/00
//fix bug 1/30/00 where BitMapOriginal was overwritten bec. pointer was copied
  BitmapRotated.Assign( BitMapOriginal);

//COUNTERCLOCKWISE rotation angle in radians. 12/10/99
	 sinTheta := SIN( theta ); cosTheta := COS( theta );
//SINCOS( theta, sinTheta, cosTheta ) ; math.pas requires extended reals.

//calculate the enclosing rectangle  12/15/00
	NewWidth  := ABS( ROUND( Height*sinTheta) ) + ABS( ROUND( Width*cosTheta ) );
	NewHeight := ABS( ROUND( Width*sinTheta ) ) + ABS( ROUND( Height*cosTheta) );

//diff size bitmaps have diff resolution of angle, ie r*sin(theta)<1 pixel
//use the small angle approx: sin(theta) ~~ theta   //11/7/00
  if ( ABS(theta)*MAX( width,height ) ) > 1 then
  begin//non-zero rotation

  //set output bitmap formats; we do not assume a fixed format or size 1/6/00
    BitmapRotated.Width  := NewWidth;   //resize it for rotation
    BitmapRotated.Height := NewHeight;

  //local constants for loop, each was hit at least width*height times   1/8/00
    Rwi := NewWidth - 1; //right column index
    Rht := NewHeight - 1;//bottom row index
    Owi := Width - 1;    //transp color column index
    Oht := Height - 1;   //transp color row  index

  //Transparent pixel color used for out of range pixels 1/8/00
  //how to translate a Bitmap.TransparentColor=Canvas.Pixels[0, Height - 1];
  // from Tcolor into pixelformat..
    case nBytes of
      0,1: TransparentB := PByteArray     ( Scanline[ Oht ] )[0];
      2:	 TransparentW := PWordArray     ( Scanline[ Oht ] )[0];
      3:	 TransparentT := pRGBtripleArray( Scanline[ Oht ] )[0];
      4:	 TransparentQ := pRGBquadArray  ( Scanline[ Oht ] )[0];
    end;//case

  // Step through each row of rotated image.
    FOR j := Rht DOWNTO 0 DO   //1/8/00
    BEGIN //for j

      case nBytes of  //1/6/00
      0,1: RowRotatedB := BitmapRotated.Scanline[ j ] ;
      2:	 RowRotatedW := BitmapRotated.Scanline[ j ] ;
      3:	 RowRotatedT := BitmapRotated.Scanline[ j ] ;
      4:	 RowRotatedQ := BitmapRotated.Scanline[ j ] ;
      end;//case

    // offset origin by the growth factor     //12/25/99
    //	jPrime := 2*(j - (NewHeight - Height) div 2 - jRotationAxis) + 1 ;
      jPrime := 2*j - NewHeight + 1 ;

    // Step through each column of rotated image
      FOR i := Rwi DOWNTO 0 DO   //1/8/00
      BEGIN //for i

        // offset origin by the growth factor  //12/25/99
        //iPrime := 2*(i - (NewWidth - Width) div 2 - iRotationAxis ) + 1;
        iPrime := 2*i - NewWidth   + 1;

        // Rotate (iPrime, jPrime) to location of desired pixel	(iPrimeRotated,jPrimeRotated)
        // Transform back to pixel coordinates of image, including translation
        // of origin from axis of rotation to origin of image.
  //iOriginal := ( ROUND( iPrime*CosTheta - jPrime*sinTheta ) - 1) DIV 2 + iRotationAxis;
  //jOriginal := ( ROUND( iPrime*sinTheta + jPrime*cosTheta ) - 1) DIV 2 + jRotationAxis;
        iOriginal := ( ROUND( iPrime*CosTheta - jPrime*sinTheta ) -1 + width ) DIV 2;
        jOriginal := ( ROUND( iPrime*sinTheta + jPrime*cosTheta ) -1 + height) DIV 2 ;

        // Make sure (iOriginal, jOriginal) is in BitmapOriginal.  If not,
        // assign background color to corner points.
        IF   ( iOriginal >= 0 ) AND ( iOriginal <= Owi ) AND
             ( jOriginal >= 0 ) AND ( jOriginal <= Oht )    //1/8/00
        THEN BEGIN //inside
          // Assign pixel from rotated space to current pixel in BitmapRotated
          //( nearest neighbor interpolation)
          case nBytes of  //get pixel bytes according to pixel format   1/6/00
          0,1:RowRotatedB[i] := pByteArray(      scanline[joriginal] )[iOriginal];
          2:	RowRotatedW[i] := pWordArray(      Scanline[jOriginal] )[iOriginal];
          3:	RowRotatedT[i] := pRGBtripleArray( Scanline[jOriginal] )[iOriginal];
          4:	RowRotatedQ[i] := pRGBquadArray(   Scanline[jOriginal] )[iOriginal];
          end;//case
        END //inside
        ELSE
        BEGIN //outside

  //12/10/99 set background corner color to transparent (lower left corner)
  //	RowRotated[i]:=tpixelformat(BitMapOriginal.TRANSPARENTCOLOR) ; wont work
          case nBytes of
            0,1:RowRotatedB[i] := TransparentB;
            2:	RowRotatedW[i] := TransparentW;
            3:	RowRotatedT[i] := TransparentT;
            4:	RowRotatedQ[i] := TransparentQ;
          end;//case
        END //if inside

      END //for i
    END;//for j
  end;//non-zero rotation

//offset to the apparent center of rotation   11/12/00 12/25/99
//rotate/translate the old bitmap origin to the new bitmap origin,FIXED 11/12/00
  sicoPhi := sicodiPoint(  POINT( width div 2, height div 2 ),oldaxis );
  //sine/cosine/dist of axis point from center point
  with sicoPhi do begin
//NewAxis := NewCenter + dist* <sin( theta+phi ),cos( theta+phi )>
    NewAxis.x := newWidth div 2 + ROUND( di*(CosTheta*co - SinTheta*si) );
    NewAxis.y := newHeight div 2- ROUND( di*(SinTheta*co + CosTheta*si) );//flip yaxis
  end;

end;

end; {RotateBitmap}*)


//------------------------------------------------------------------------------
// TSolidPoint methods
//------------------------------------------------------------------------------

constructor TSolidPoint.Create(AOwner: TComponent);
var
  margX2: integer;
begin
  inherited;
  InternalSetCount(1);
  Pen.Width := 3;
  margX2 := Margin *2;
  Bitmap.Width := margX2;
  Bitmap.Height := margX2;
  SetBounds(0,0,margX2,margX2);
  DoSaveInfo;
end;
//------------------------------------------------------------------------------

procedure TSolidPoint.AddConnector(Connector: TConnector);
begin
  inherited;
  //to control this connection point it's important it's on top
  //if assigned(Connector) then Connector.SendToBack;
  //BringToFront;
  with Connector do
  begin
    if (Connection1 is TSolidPoint) then Connection1.BringToFront;
    if (Connection2 is TSolidPoint) then Connection2.BringToFront;
  end;
end;
//------------------------------------------------------------------------------

procedure TSolidPoint.CalcMargin;
begin
  //the following formula is empirical ...
  Margin := max(ButtonSize + 2, (pen.Width*3) div 2 + max(2, abs(ShadowSize)));
  //the following is also needed (see ancestor method) ...
  ResizeNeeded;
end;
//------------------------------------------------------------------------------

procedure TSolidPoint.DrawObject(Canvas: TCanvas; IsShadow: boolean);
var
  pw: integer;
begin
  with canvas do
  begin
    pw := Pen.Width -1;
    if pw < 2 then exit;
    brush.Color := Pen.Color;
    with BtnPoints[0] do Ellipse(X-pw,Y-pw,X+pw,Y+pw);
  end;
end;

//------------------------------------------------------------------------------
// TLine methods
//------------------------------------------------------------------------------

constructor TLine.Create(AOwner: TComponent);
begin
  inherited;
  DoSaveInfo;
end;
//------------------------------------------------------------------------------

procedure TLine.SetButtonCount(count: integer);
begin
  if count < 2 then count := 2;
  if (ButtonCount = count) or IsConnected then exit;
  if count > ButtonCount then
    while count > ButtonCount do Grow
  else
    while count < ButtonCount do Shrink;
end;
//------------------------------------------------------------------------------

function TLine.Grow(TopEnd: boolean): boolean;
var
  i: integer;
begin
  result := not IsConnected;
  if not result then exit;
  InternalSetCount(buttonCount + 1);
  if TopEnd then
  begin
    //first, move all the buttons in the array down a place ...
    for i := buttonCount-1 downto 1 do BtnPoints[i] := BtnPoints[i-1];
    //update new button ...
    BtnPoints[0] := Point(2*BtnPoints[1].X - BtnPoints[2].X,
      2*BtnPoints[1].Y - BtnPoints[2].Y);
  end else
  begin
    //update new button ...
    BtnPoints[buttonCount-1] :=
      Point(2*BtnPoints[buttonCount-2].X - BtnPoints[buttonCount-3].X,
      2*BtnPoints[buttonCount-2].Y - BtnPoints[buttonCount-3].Y);
  end;
  ResizeNeeded;
end;
//------------------------------------------------------------------------------

function TLine.Shrink(TopEnd: boolean): boolean;
var
  i: integer;
begin
  result := not IsConnected and (ButtonCount > 2);
  if not result then exit;
  if TopEnd then //first, move all the buttons in the array up a place ...
    for i := 1 to buttonCount-1 do BtnPoints[i-1] := BtnPoints[i];
  InternalSetCount(buttonCount - 1);
  ResizeNeeded;
end;
//------------------------------------------------------------------------------

procedure TLine.DrawObject(Canvas: TCanvas; IsShadow: boolean);
var
  startPt, endPt: TPoint;
begin
  with canvas do
  begin
    endPt := BtnPoints[ButtonCount-1];
    startPt := BtnPoints[0];
    //if arrows are used then inset the lines to avoid spoiling them ...
    if Arrow2 then
      BtnPoints[ButtonCount-1] := ArrowBase(BtnPoints[ButtonCount-2],
        BtnPoints[ButtonCount-1], (2*pen.Width div 3) +5);
    if Arrow1 then
      BtnPoints[0] := ArrowBase(BtnPoints[1],
        BtnPoints[0], (2*pen.Width div 3) +5);

    //draw the lines ...
    if (canvas.pen.Style <> psSolid) then Brush.Style := bsClear;
    DrawDottedPolyline(Canvas, BtnPoints);

    //restore first and last BtnPoints ...
    BtnPoints[0] := startPt;
    BtnPoints[ButtonCount-1] := endPt;

    if Arrow2 then
      DrawArrowHead(canvas,
        BtnPoints[buttonCount-2], BtnPoints[buttonCount-1], 5, true);
    if Arrow1 then
      DrawArrowHead(canvas, BtnPoints[1], BtnPoints[0], 5, true);
  end;
end;

//------------------------------------------------------------------------------
// TZLine methods
//------------------------------------------------------------------------------

constructor TZLine.Create(AOwner: TComponent);
var
  mp: TPoint;
begin
  inherited;
  InternalSetCount(4);
  QuadPtConnect := true;
  AutoOrientation := true;
  mp := ObjectMidPoint;
  BtnPoints[0] := Point(Margin, Margin);
  BtnPoints[3] := Point(width-Margin, height-Margin);
  BtnPoints[1] := Point(mp.X, BtnPoints[0].Y);
  BtnPoints[2] := Point(mp.X, BtnPoints[3].Y);
  AutoCenter := true;
  DoSaveInfo;
end;
//------------------------------------------------------------------------------

function TZLine.IsValidBtnDown(BtnIdx: integer): boolean;
begin
  //don't allow clicking of auto-centering buttons ...
  result := inherited IsValidBtnDown(BtnIdx) and
    not (fAutoCenter and (BtnIdx in [1,2]));
end;
//------------------------------------------------------------------------------

procedure TZLine.UpdateNonEndButtonsAfterBtnMove;
const
  MIN_Z = 20; //avoids (if possible) Z line being too close to either end pt


  procedure CheckHorz;
  var
    vectorUp: boolean;
    midX: integer;
  begin
    midX := (BtnPoints[3].X + BtnPoints[0].X) div 2;
    if fAutoCenter then
    begin
      BtnPoints[1].X := midX;
      BtnPoints[1].Y := BtnPoints[0].Y;
      BtnPoints[2].X := midX;
      BtnPoints[2].Y := BtnPoints[3].Y;
    end else
    begin
      BtnPoints[1].Y := BtnPoints[0].Y;
      BtnPoints[2].Y := BtnPoints[3].Y;
      vectorUp := BtnPoints[3].X >= BtnPoints[0].X;
      if vectorUp then
      begin
        BtnPoints[1].X := min(max(BtnPoints[0].X,BtnPoints[1].X),BtnPoints[3].X);
        //try and stop Z's becoming L's if possible ...
        if BtnPoints[1].X - BtnPoints[0].X < MIN_Z then
          BtnPoints[1].X := min(BtnPoints[0].X + MIN_Z,midX)
        else if BtnPoints[3].X - BtnPoints[1].X < MIN_Z then
          BtnPoints[1].X := max(BtnPoints[3].X - MIN_Z, midX);
        BtnPoints[2].X := BtnPoints[1].X;
      end else
      begin
        BtnPoints[1].X := max(min(BtnPoints[0].X,BtnPoints[1].X),BtnPoints[3].X);
        //try and stop Z's becoming L's if possible ...
        if BtnPoints[0].X - BtnPoints[1].X < MIN_Z then
          BtnPoints[1].X := max(BtnPoints[0].X - MIN_Z,midX)
        else if BtnPoints[1].X - BtnPoints[3].X < MIN_Z then
          BtnPoints[1].X := min(BtnPoints[3].X + MIN_Z, midX);
        BtnPoints[2].X := BtnPoints[1].X;
      end;
    end;
  end;

  procedure CheckVert;
  var
    vectorLeft: boolean;
    midY: integer;
  begin
    midY := (BtnPoints[3].Y + BtnPoints[0].Y) div 2;
    if fAutoCenter then
    begin
      BtnPoints[1].y := midY;
      BtnPoints[1].X := BtnPoints[0].X;
      BtnPoints[2].Y := midY;
      BtnPoints[2].X := BtnPoints[3].X;
    end else
    begin
      BtnPoints[1].X := BtnPoints[0].X;
      BtnPoints[2].X := BtnPoints[3].X;
      vectorLeft := BtnPoints[3].Y >= BtnPoints[0].Y;
      if vectorLeft then
      begin
        BtnPoints[1].Y := min(max(BtnPoints[0].Y,BtnPoints[1].Y),BtnPoints[3].Y);
        //try and stop Z's becoming L's if possible ...
        if BtnPoints[1].Y - BtnPoints[0].Y < MIN_Z then
          BtnPoints[1].Y := min(BtnPoints[0].Y + MIN_Z,midY)
        else if BtnPoints[3].Y - BtnPoints[1].Y < MIN_Z then
          BtnPoints[1].Y := max(BtnPoints[3].Y - MIN_Z, midY);
        BtnPoints[2].Y := BtnPoints[1].Y;
      end else
      begin
        BtnPoints[1].Y := max(min(BtnPoints[0].Y,BtnPoints[1].Y),BtnPoints[3].Y);
        //try and stop Z's becoming L's if possible ...
        if BtnPoints[0].Y - BtnPoints[1].Y < MIN_Z then
          BtnPoints[1].Y := max(BtnPoints[0].Y - MIN_Z,midY)
        else if BtnPoints[1].Y - BtnPoints[3].Y < MIN_Z then
          BtnPoints[1].Y := min(BtnPoints[3].Y + MIN_Z, midY);
        BtnPoints[2].Y := BtnPoints[1].Y;
      end;
    end;
  end;

begin
  if Orientation = oHorizontal then
    CheckHorz else
    CheckVert;
end;
//------------------------------------------------------------------------------

procedure TZLine.DoQuadPtConnection;
var
  ScreenMp1, ScreenMp2: TPoint;
  Rec1, Rec2: TRect;

  function RecsOverlapVertically: boolean;
  begin
    result := ((Rec2.Left <= Rec1.Right) and (Rec2.Right >= Rec1.Left)) or
      ((Rec1.Left <= Rec2.Right) and (Rec1.Right >= Rec2.Left));
  end;

  function RecsOverlapHorizontally: boolean;
  begin
    result := ((Rec2.Top <= Rec1.Bottom) and (Rec2.Bottom >= Rec1.Top)) or
      ((Rec1.Top <= Rec2.Bottom) and (Rec1.Bottom >= Rec2.Top));
  end;

begin
  //get orientation points ...
  if assigned(Connection1) then
  begin
    ScreenMp1 := Connection1.ClientToScreen(Connection1.ObjectMidPoint);
    with Connection1.BoundsRect do Rec1 := Rect(Left,Top,Right,Bottom);
  end else
  begin
    ScreenMp1 := ClientToScreen(BtnPoints[0]);
    with BtnPoints[0] do Rec1 := Rect(x,y,x,y);
  end;

  if assigned(Connection2) then
  begin
    ScreenMp2 := Connection2.ClientToScreen(Connection2.ObjectMidPoint);
    with Connection2.BoundsRect do Rec2 := Rect(Left,Top,Right,Bottom);
  end else
  begin
    ScreenMp2 := ClientToScreen(BtnPoints[ButtonCount-1]);
    with BtnPoints[ButtonCount-1] do Rec1 := Rect(x,y,x,y);
  end;

  //check and possibly adjust orientation ...
  if not AutoOrientation then
    //do nothing
  else if (Orientation = oVertical) then
  begin
    if RecsOverlapHorizontally and not RecsOverlapVertically then
      Orientation := oHorizontal;
  end else if (Orientation = oHorizontal) then
  begin
    if RecsOverlapVertically and not RecsOverlapHorizontally then
      Orientation := oVertical;
  end;

  //finally move ends to appropriate connection points ...
  if Orientation = oHorizontal then
  begin
    if ScreenMp1.X < ScreenMp2.X then
    begin
      if assigned(Connection1) then BtnPoints[0] :=
        ScreenToClient(Connection1.QuadScreenPt(qcRight));
      if assigned(Connection2) then BtnPoints[ButtonCount-1] :=
        ScreenToClient(Connection2.QuadScreenPt(qcLeft));
    end else
    begin
      if assigned(Connection1) then BtnPoints[0] :=
        ScreenToClient(Connection1.QuadScreenPt(qcLeft));
      if assigned(Connection2) then BtnPoints[ButtonCount-1] :=
        ScreenToClient(Connection2.QuadScreenPt(qcRight));
    end;
  end else
  begin
    if ScreenMp1.Y < ScreenMp2.Y then
    begin
      if assigned(Connection1) then BtnPoints[0] :=
        ScreenToClient(Connection1.QuadScreenPt(qcBottom));
      if assigned(Connection2) then BtnPoints[ButtonCount-1] :=
        ScreenToClient(Connection2.QuadScreenPt(qcTop));
    end else
    begin
      if assigned(Connection1) then BtnPoints[0] :=
        ScreenToClient(Connection1.QuadScreenPt(qcTop));
      if assigned(Connection2) then BtnPoints[ButtonCount-1] :=
        ScreenToClient(Connection2.QuadScreenPt(qcBottom));
    end;
  end;
end;
//------------------------------------------------------------------------------

procedure TZLine.DrawBtn(BtnPt: TPoint; index: integer; Pressed, LastBtn: boolean);
begin
  if not Self.fAutoCenter or (index = 0) or (index = 3) then inherited;
end;
//------------------------------------------------------------------------------

procedure TZLine.InternalBtnMove(BtnIdx: integer; NewPt: TPoint);
begin
  BtnPoints[BtnIdx] := NewPt;
  if (BtnIdx = 1) then
  begin
    if Orientation = oHorizontal then
      BtnPoints[2].X := BtnPoints[1].X else
      BtnPoints[2].Y := BtnPoints[1].Y;
      UpdateNeeded;
  end else if (BtnIdx = 2) then
  begin
    if Orientation = oHorizontal then
      BtnPoints[1].X := BtnPoints[2].X else
      BtnPoints[1].Y := BtnPoints[2].Y;
    UpdateNeeded;
  end
  else
     ResizeNeeded; //an end button, so it's evidently not attached

  UpdateNonEndButtonsAfterBtnMove;
end;
//------------------------------------------------------------------------------

procedure TZLine.SetAutoCenter(AutoCenter: boolean);
begin
  if fAutoCenter = AutoCenter then exit;
  fAutoCenter := AutoCenter;
  if AutoCenter then UpdateNonEndButtonsAfterBtnMove;
  UpdateNeeded;
end;
//------------------------------------------------------------------------------

procedure TZLine.DrawObject(Canvas: TCanvas; IsShadow: boolean);
var
  startPt, endPt: TPoint;
begin
  with canvas do
  begin
    endPt := BtnPoints[ButtonCount-1];
    startPt := BtnPoints[0];
    //if arrows are used then inset the lines to avoid spoiling them ...
    if Arrow2 then
      BtnPoints[ButtonCount-1] := ArrowBase(BtnPoints[ButtonCount-2],
        BtnPoints[ButtonCount-1], (2*pen.Width div 3) +5);
    if Arrow1 then
      BtnPoints[0] := ArrowBase(BtnPoints[1],
        BtnPoints[0], (2*pen.Width div 3) +5);

    //draw the lines ...
    if (canvas.pen.Style <> psSolid) then Brush.Style := bsClear;
    DrawDottedPolyline(Canvas, BtnPoints);

    //restore first and last BtnPoints ...
    BtnPoints[0] := startPt;
    BtnPoints[ButtonCount-1] := endPt;

    if Arrow2 then
      DrawArrowHead(canvas,
        BtnPoints[buttonCount-2], BtnPoints[buttonCount-1], 5, true);
    if Arrow1 then
      DrawArrowHead(canvas, BtnPoints[1], BtnPoints[0], 5, true);
  end;
end;
//------------------------------------------------------------------------------

procedure TZLine.Rotate(degrees: integer);
begin
  //disable rotate() for TZLine
end;
//------------------------------------------------------------------------------

procedure TZLine.SaveToPropStrings;
begin
  inherited;
  AddToPropStrings('Orientation', GetEnumProp(self, 'Orientation'));
  AddToPropStrings('AutoCenter', GetEnumProp(self, 'AutoCenter'));
  AddToPropStrings('AutoOrientation', GetEnumProp(self, 'AutoOrientation'));
end;


//------------------------------------------------------------------------------
// TLLine methods
//------------------------------------------------------------------------------

constructor TLLine.Create(AOwner: TComponent);
begin
  inherited;
  QuadPtConnect := true;
  //AutoOrientation := false;
  DoSaveInfo;
end;
//------------------------------------------------------------------------------

procedure TLLine.Rotate(degrees: integer);
begin
  //disable rotate() for TLLine
end;
//------------------------------------------------------------------------------

procedure TLLine.DrawObject(Canvas: TCanvas; IsShadow: boolean);
var
  startPt, endPt, midPt: TPoint;
begin
  with canvas do
  begin
    endPt := BtnPoints[1];
    startPt := BtnPoints[0];
    if ((Orientation = oHorizontal) and (startPt.X < endPt.X)) or
        ((Orientation = oVertical) and (startPt.X > endPt.X)) then
      midPt := Point(endPt.X, startPt.Y) else
      midPt := Point(startPt.X, endPt.Y);

    //if arrows are used then inset the lines to avoid spoiling them ...
    if Arrow2 then
      endPt := ArrowBase(midPt, endPt, (2*pen.Width div 3) +5);
    if Arrow1 then
      startPt := ArrowBase(midPt, startPt, (2*pen.Width div 3) +5);

    //draw the lines ...
    if (canvas.pen.Style <> psSolid) then Brush.Style := bsClear;
    DrawDottedPolyline(Canvas, [startPt, midPt, endPt]);

    if Arrow2 then
      DrawArrowHead(canvas, midPt, BtnPoints[1], 5, true);
    if Arrow1 then
      DrawArrowHead(canvas, midPt, BtnPoints[0], 5, true);
  end;
end;
//------------------------------------------------------------------------------

procedure TLLine.SaveToPropStrings;
begin
  inherited;
  AddToPropStrings('Orientation', GetEnumProp(self, 'Orientation'));
end;
//------------------------------------------------------------------------------

procedure TLLine.DoQuadPtConnection;
var
  ScreenMp1, ScreenMp2: TPoint;
begin
  //get orientation points ...
  if assigned(Connection1) then
    ScreenMp1 := Connection1.ClientToScreen(Connection1.ObjectMidPoint) else
    ScreenMp1 := ClientToScreen(BtnPoints[0]);
  if assigned(Connection2) then
    ScreenMp2 := Connection2.ClientToScreen(Connection2.ObjectMidPoint) else
    ScreenMp2 := ClientToScreen(BtnPoints[ButtonCount-1]);

  if assigned(Connection1) then
  begin
    if ((Orientation = oHorizontal) and (ScreenMp1.X < ScreenMp2.X)) or
      ((Orientation = oVertical) and (ScreenMp1.X >= ScreenMp2.X)) then
    begin
      if ScreenMp1.X < ScreenMp2.X then
        BtnPoints[0] := ScreenToClient(Connection1.QuadScreenPt(qcRight)) else
        BtnPoints[0] := ScreenToClient(Connection1.QuadScreenPt(qcLeft));
    end else
    begin
      if ScreenMp1.Y < ScreenMp2.Y then
        BtnPoints[0] := ScreenToClient(Connection1.QuadScreenPt(qcBottom)) else
        BtnPoints[0] := ScreenToClient(Connection1.QuadScreenPt(qcTop));
    end;
  end;
  if assigned(Connection2) then
  begin
    if ((Orientation = oHorizontal) and (ScreenMp1.X < ScreenMp2.X)) or
      ((Orientation = oVertical) and (ScreenMp1.X >= ScreenMp2.X)) then
    begin
      if ScreenMp1.Y < ScreenMp2.Y then
        BtnPoints[1] := ScreenToClient(Connection2.QuadScreenPt(qcTop)) else
        BtnPoints[1] := ScreenToClient(Connection2.QuadScreenPt(qcBottom));
    end else
    begin
      if ScreenMp1.X < ScreenMp2.X then
        BtnPoints[1] := ScreenToClient(Connection2.QuadScreenPt(qcLeft)) else
        BtnPoints[1] := ScreenToClient(Connection2.QuadScreenPt(qcRight));
    end;
  end;
end;

//------------------------------------------------------------------------------
// TBezier methods
//------------------------------------------------------------------------------

constructor TBezier.Create(AOwner: TComponent);
var
  i,w,h: integer;
begin
  inherited Create(AOwner);
  InternalSetCount(4);
  fSmooth := true;
  w := width - Margin*2;
  h := height - Margin*2;
  for i := 0 to ButtonCount -1 do
    BtnPoints[i] :=
      Point(Margin + i*w div (ButtonCount-1), Margin + i*h div (ButtonCount-1));
  DoSaveInfo;
end;
//------------------------------------------------------------------------------

procedure TBezier.SetArrow1(Arrow: boolean);
begin
  inherited;
  if Arrow then Filled := false;
end;
//------------------------------------------------------------------------------

procedure TBezier.SetArrow2(Arrow: boolean);
begin
  inherited;
  if Arrow then Filled := false;
end;
//------------------------------------------------------------------------------

procedure TBezier.SetFilled(isFilled: boolean);
begin
  if fFilled = isFilled then exit;
  fFilled := isFilled;
  if fFilled then
  begin
    Arrow1 := false;
    Arrow2 := false;
  end;
  UpdateNeeded;
end;
//------------------------------------------------------------------------------

procedure TBezier.SetButtonCount(count: integer);
begin
  if count < 4 then count := 4;
  if (ButtonCount = count) or IsConnected then exit;
  count := 3* (count div 3) +1;
  if count > ButtonCount then
    while count > ButtonCount do Grow
  else
    while count < ButtonCount do Shrink;
end;
//------------------------------------------------------------------------------

function TBezier.Grow(TopEnd: boolean): boolean;
var
  i: integer;
begin
  result := not IsConnected;
  if not result then exit;
  InternalSetCount(buttonCount + 3);
  if TopEnd then
  begin
    //first, move all the buttons in the array down three places ...
    for i := buttonCount-1 downto 3 do BtnPoints[i] := BtnPoints[i-3];
    //update new buttons ...
    BtnPoints[0] := Point(3*BtnPoints[3].X - 2*BtnPoints[4].X,
      3*BtnPoints[3].Y - 2*BtnPoints[4].Y);
    BtnPoints[2] := MidPoint(BtnPoints[0], BtnPoints[3]);
    BtnPoints[1] := MidPoint(BtnPoints[0], BtnPoints[2]);
  end else
  begin
    //update new buttons ...
    BtnPoints[buttonCount-1] :=
      Point(3*BtnPoints[buttonCount-4].X - 2*BtnPoints[buttonCount-5].X,
      3*BtnPoints[buttonCount-4].Y - 2*BtnPoints[buttonCount-5].Y);
    BtnPoints[buttonCount-3] :=
      MidPoint(BtnPoints[buttonCount-1], BtnPoints[buttonCount-4]);
    BtnPoints[buttonCount-2] := MidPoint(BtnPoints[buttonCount-3],
      BtnPoints[buttonCount-1]);
  end;
  ResizeNeeded;
end;
//------------------------------------------------------------------------------

function TBezier.Shrink(TopEnd: boolean): boolean;
var
  i: integer;
begin
  result := not IsConnected and (ButtonCount > 4);
  if not result then exit;
  if TopEnd then //first, move all the buttons in the array up three places ...
    for i := 3 to buttonCount-1 do BtnPoints[i-3] := BtnPoints[i];
  InternalSetCount(buttonCount - 3);
  ResizeNeeded;
end;
//------------------------------------------------------------------------------

procedure TBezier.DrawControlLines;
var
  i: integer;
begin
  inherited;
  with canvas do
  begin
    with BtnPoints[0] do Moveto(X,Y);
    for i := 0 to (ButtonCount div 3) -1 do
    begin
      with BtnPoints[i*3 +1] do Lineto(X,Y);
      with BtnPoints[i*3 +2] do Moveto(X,Y);
      with BtnPoints[i*3 +3] do Lineto(X,Y);
    end;
  end;
end;
//------------------------------------------------------------------------------

procedure TBezier.DrawDottedPolyBezier(Canvas: TCanvas);
var
  PenHdl, OldPenHdl: HPen;
begin
  if (Canvas.Pen.Width = 1) or (Canvas.Pen.Style = psSolid) then
    Canvas.PolyBezier(BtnPoints)
  else
  begin
    PenHdl := CreatePenHandle(canvas.Pen);
    OldPenHdl := SelectObject(canvas.Handle, PenHdl);
    PolyBezier(canvas.Handle, PPoints(BtnPoints)^, ButtonCount);
    DeleteObject(SelectObject(canvas.Handle, OldPenHdl));
  end;
end;
//------------------------------------------------------------------------------

procedure TBezier.DrawObject(Canvas: TCanvas; IsShadow: boolean);
var
  startPt, endPt: TPoint;
begin
  with canvas do
  begin
    endPt := BtnPoints[ButtonCount-1];
    startPt := BtnPoints[0];
    //if arrows are used then inset the lines to avoid spoiling them ...
    if Arrow2 then
      BtnPoints[ButtonCount-1] := ArrowBase(BtnPoints[ButtonCount-2],
        BtnPoints[ButtonCount-1], (2*pen.Width div 3) +5);
    if Arrow1 then
      BtnPoints[0] := ArrowBase(BtnPoints[1],
        BtnPoints[0], (2*pen.Width div 3) +5);

    //draw the curve ...
    if (canvas.pen.Style <> psSolid) then Brush.Style := bsClear;
    if Filled then
    begin
      //canvas.Brush.Color := color;
      beginpath(handle);
      PolyBezier(BtnPoints);
      endpath(handle);
      StrokeAndFillPath(handle);
    end
    else
      DrawDottedPolyBezier(Canvas);

    //restore first and last BtnPoints ...
    BtnPoints[0] := startPt;
    BtnPoints[ButtonCount-1] := endPt;

    //finally draw the arrows ...
    if Arrow2 then
      DrawArrowHead(canvas,
        BtnPoints[ButtonCount-2], BtnPoints[ButtonCount-1], 5, true);
    if Arrow1 then
      DrawArrowHead(canvas,BtnPoints[1], BtnPoints[0], 5, true);
  end;
end;
//------------------------------------------------------------------------------

procedure TBezier.InternalBtnMove(BtnIdx: integer; NewPt: TPoint);
var
  dx,dy: integer;
begin
  //? keep polybezier control buttons aligned flat to maintain smooth joins ...
  if Smooth then
  begin
    //if a center (non-control) button ...
    if (BtnIdx mod 3 = 0) or (BtnIdx = 0) or (BtnIdx = ButtonCount -1)  then
    begin
      dx := NewPt.X - BtnPoints[BtnIdx].X;
      dy := NewPt.Y - BtnPoints[BtnIdx].Y;
      if (BtnIdx > 0) then offsetPt(BtnPoints[BtnIdx-1],dx,dy);
      if (BtnIdx < ButtonCount -1) then offsetPt(BtnPoints[BtnIdx+1],dx,dy);
    end
    else if (BtnIdx = 1) or (BtnIdx = ButtonCount -2) then //do nothing
    else if (BtnIdx mod 3 = 2) then
      MovePtDiagonalOppositeAnotherPt(
        BtnPoints[BtnIdx+2],BtnPoints[BtnIdx],BtnPoints[BtnIdx+1])
    else 
      MovePtDiagonalOppositeAnotherPt(
        BtnPoints[BtnIdx-2],BtnPoints[BtnIdx],BtnPoints[BtnIdx-1]);
  end;
  if (BtnIdx = 1) and assigned(Connection1) then
    UpdateConnectionPoints(Connection1)
  else if (BtnIdx = ButtonCount -2) and assigned(Connection2) then
    UpdateConnectionPoints(Connection2);
  inherited;
end;
//------------------------------------------------------------------------------

procedure TBezier.UpdateConnectionPoints(MovingConnection: TSolid);
var
  pt: TPoint;
begin
  if not assigned(Parent) then exit;

  //make sure connection parents are assigned otherwise quit ...
  if (assigned(Connection1) and not assigned(Connection1.Parent)) or
     (assigned(Connection2) and not assigned(Connection2.Parent)) then exit;

  if assigned(Connection1) then
  begin
    pt := Connection1.ClosestScreenPt(ClientToScreen(BtnPoints[1]));
    BtnPoints[0] := ScreenToClient(pt);
  end;
  if assigned(Connection2) then
  begin
    pt := Connection2.ClosestScreenPt(ClientToScreen(BtnPoints[ButtonCount-2]));
    BtnPoints[ButtonCount-1] := ScreenToClient(pt);
  end;
  ResizeNeeded;
end;
//------------------------------------------------------------------------------

procedure TBezier.SaveToPropStrings;
begin
  inherited;
  if Filled then AddToPropStrings('Filled', GetEnumProp(self, 'Filled'));
  if not Smooth then AddToPropStrings('Smooth', GetEnumProp(self, 'Smooth'));
end;


//------------------------------------------------------------------------------
// TSolidBezier methods
//------------------------------------------------------------------------------

constructor TSolidBezier.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  pen.Width := 20;
  fBorder := 3;
  DoSaveInfo;
end;
//------------------------------------------------------------------------------

procedure TSolidBezier.SetNoConnection(Connection: TSolid);
begin
  //although this object is a line it looks like a solid so it makes no
  //sense to allow it to connect to other solids.
end;
//------------------------------------------------------------------------------

function TSolidBezier.GetNoConnection: TSolid;
begin
  result := nil; //see above
end;
//------------------------------------------------------------------------------

procedure TSolidBezier.SetArrow1(Arrow: boolean);
begin
  //see above
end;
//------------------------------------------------------------------------------

procedure TSolidBezier.SetArrow2(Arrow: boolean);
begin
  //see above
end;
//------------------------------------------------------------------------------

procedure TSolidBezier.SetFilled(isFilled: boolean);
begin
  //do nothing
end;
//------------------------------------------------------------------------------

procedure TSolidBezier.SetUseHitTest(value: boolean);
begin
  inherited SetUseHitTest(false);
end;
//------------------------------------------------------------------------------

procedure TSolidBezier.SetBorder(border: integer);
begin
  if Border*2 >= Pen.Width then Border := Pen.Width div 2
  else if Border < 0 then Border := 0;
  if fBorder = border then exit;
  fBorder := border;
  UpdateNeeded;
end;
//------------------------------------------------------------------------------

procedure TSolidBezier.DrawObject(Canvas: TCanvas; IsShadow: boolean);
begin
  with Canvas do
  begin
    PolyBezier(BtnPoints);
    if isShadow then exit;
    Pen.Width := Pen.Width - fBorder*2;
    Pen.Color := self.Color;
    PolyBezier(BtnPoints);
  end;
end;
//------------------------------------------------------------------------------

procedure TSolidBezier.SaveToPropStrings;
begin
  inherited;
  AddToPropStrings('BorderWidth', inttostr(BorderWidth));
end;
//------------------------------------------------------------------------------

procedure TSolidBezier.Mirror;
var
  i: integer;
begin
  for i := 0 to ButtonCount -1 do
    BtnPoints[i].X := Width - BtnPoints[i].X;
  ResizeNeeded;
end;
//------------------------------------------------------------------------------

procedure TSolidBezier.Flip;
var
  i: integer;
begin
  for i := 0 to ButtonCount -1 do
    BtnPoints[i].Y := Height - BtnPoints[i].Y;
  ResizeNeeded;
end;

//------------------------------------------------------------------------------
// TTextBezier methods
//------------------------------------------------------------------------------

constructor TTextBezier.Create(AOwner: TComponent);
begin
  inherited;
  ParentFont := true;
end;
//------------------------------------------------------------------------------

procedure TTextBezier.SetText(const text: string);
begin
  if fText = text then exit;
  fText := text;
  UpdateNeeded;
end;
//------------------------------------------------------------------------------

procedure TTextBezier.SetOutline(Outline: TFontOutline);
begin
  if fOutline = Outline then exit;
  fOutline := Outline;
  UpdateNeeded;
end;
//------------------------------------------------------------------------------

procedure TTextBezier.CMFontChanged(var Message: TMessage);
begin
  inherited;
  CalcMargin;
end;
//------------------------------------------------------------------------------

procedure TTextBezier.CalcMargin;
begin
  //the following formula is empirical ...
  Margin := max(ButtonSize + 2, 2 * abs(Font.Height) div 3);
  //the following is also needed (see ancestor method) ...
  ResizeNeeded;
end;
//------------------------------------------------------------------------------


procedure TTextBezier.SetNoConnection(Connection: TSolid);
begin
  //although this object is a line it looks like a solid so it makes no
  //sense to allow it to connect to other solids.
end;
//------------------------------------------------------------------------------

function TTextBezier.GetNoConnection: TSolid;
begin
  result := nil; //see above
end;
//------------------------------------------------------------------------------

procedure TTextBezier.SetArrow1(Arrow: boolean);
begin
  //see above
end;
//------------------------------------------------------------------------------

procedure TTextBezier.SetArrow2(Arrow: boolean);
begin
  //see above
end;
//------------------------------------------------------------------------------

procedure TTextBezier.SetUseHitTest(value: boolean);
begin
  inherited SetUseHitTest(false);
end;
//------------------------------------------------------------------------------

procedure TTextBezier.SetFilled(isFilled: boolean);
begin
  //do nothing
end;
//------------------------------------------------------------------------------

procedure TTextBezier.DrawObject(Canvas: TCanvas; IsShadow: boolean);
var
  s: string;
  SavedColor: TColor;
begin
  if fText = '' then s := trim(dummyStrings.Text) else s := fText;
  with canvas do
  begin
    Brush.Style := bsClear;
    if IsShadow then
    begin
      SavedColor := Font.Color;
      Font.Color := ColorShadow;
      Brush.Color := ColorShadow;
      TextAlongBezier(canvas, BtnPoints,
        s, - round(2 * TextHeight('Yy') / 3), fOutline);
      Font.Color := SavedColor;
    end else
    begin
      if fOutline = foColored then brush.Color := color;
      TextAlongBezier(canvas, BtnPoints,
        s, - round(2 * TextHeight('Yy') / 3), fOutline);
    end;
  end;
end;
//------------------------------------------------------------------------------

procedure TTextBezier.SaveToPropStrings;
begin
  inherited;
  AddToPropStrings('Text', fText);
  AddToPropStrings('Font.Charset', inttostr(Font.Charset));
  AddToPropStrings('Font.Color', '$'+inttohex(ColorToRGB(Font.Color),8));
  AddToPropStrings('Font.Name', Font.Name);
  AddToPropStrings('Font.Size', inttostr(Font.Size));
  AddToPropStrings('Font.Style', GetSetProp(Font, 'Style', false));
  AddToPropStrings('Outline', GetEnumProp(self, 'Outline'));
end;


//------------------------------------------------------------------------------
// TArc methods
//------------------------------------------------------------------------------


constructor TArc.Create(AOwner: TComponent);
begin
  inherited;
  fAngle1 := 45;
  DoSaveInfo;
end;
//------------------------------------------------------------------------------


procedure TArc.DrawObject(Canvas: TCanvas; IsShadow: boolean);
var
  mp, pt1, pt2: TPoint;
begin
  mp.X := (BtnPoints[0].X + BtnPoints[1].X) div 2;
  mp.Y := (BtnPoints[0].Y + BtnPoints[1].Y) div 2;

  pt1 := GetPtOnCircleFromAngle(100, (fAngle1 * pi) / 180);
  OffsetPt(pt1, mp.X, mp.Y);
  pt2 := GetPtOnCircleFromAngle(100, (fAngle2 * pi) / 180);
  OffsetPt(pt2, mp.X, mp.Y);

  with canvas do
  begin
    Pie(BtnPoints[0].X,BtnPoints[0].Y,BtnPoints[1].X,BtnPoints[1].Y,
      pt1.X, pt1.Y, pt2.X, pt2.Y);
  end;
end;
//------------------------------------------------------------------------------

procedure TArc.SetAngle1(ang1: integer);
begin
  while (ang1 < 0) do inc(ang1, 360);
  while (ang1 > 359) do dec(ang1, 360);
  if (fAngle1 = ang1) then exit;
  fAngle1 := ang1;
  UpdateNeeded;
end;
//------------------------------------------------------------------------------

procedure TArc.SetAngle2(ang2: integer);
begin
  while (ang2 < 0) do inc(ang2, 360);
  while (ang2 > 359) do dec(ang2, 360);
  if (fAngle2 = ang2) then exit;
  fAngle2 := ang2;
  UpdateNeeded;
end;
//------------------------------------------------------------------------------

procedure TArc.SetRegular(value: boolean);
begin
  if fRegular = value then exit;
  fRegular := value;
  if not fRegular then exit;
  BtnPoints[1].Y := BtnPoints[0].Y + (BtnPoints[1].X - BtnPoints[0].X);
  ResizeNeeded;
end;
//------------------------------------------------------------------------------

procedure TArc.BeginTransform;
begin
  inherited;
  fCurrRotAngle := 0;
end;
//------------------------------------------------------------------------------

procedure TArc.Rotate(degrees: integer);
var
  diff: integer;
begin
  if not SavedInfo.isTransforming then
    Raise Exception.Create('Error: Rotate() without BeginRotate().');

  degrees := degrees mod 360;
  if degrees < 0 then inc(degrees, 360);
  diff := degrees - fCurrRotAngle;
  if diff = 0 then exit;

  fCurrRotAngle := degrees;
  Angle1 := Angle1 + diff;
  Angle2 := Angle2 + diff;
  UpdateNeeded;
end;
//------------------------------------------------------------------------------

procedure TArc.InternalBtnMove(BtnIdx: integer; NewPt: TPoint);
begin
  if fRegular then
  begin
    if BtnIdx = 0 then
    begin
      BtnPoints[0].X := NewPt.X;
      BtnPoints[0].Y := BtnPoints[1].Y - (BtnPoints[1].X - NewPt.X);
    end else
    begin
      BtnPoints[1].X := NewPt.X;
      BtnPoints[1].Y := BtnPoints[0].Y + (NewPt.X - BtnPoints[0].X);
    end;
    ResizeNeeded;
  end else
    inherited;
end;
//------------------------------------------------------------------------------

procedure TArc.SaveToPropStrings;
begin
  inherited;
  AddToPropStrings('Angle1', inttostr(Angle1));
  AddToPropStrings('Angle2', inttostr(Angle2));
  if Regular then AddToPropStrings('Regular', GetEnumProp(self, 'Regular'));
end;

//------------------------------------------------------------------------------
// TDiamond methods
//------------------------------------------------------------------------------

constructor TDiamond.Create(AOwner: TComponent);
begin
  inherited;
  InternalSetCount(6);
  SetDiamondPts;
  DoSaveInfo;
end;
//------------------------------------------------------------------------------

procedure TDiamond.SetDiamondPts;
var
  mp: TPoint;
begin
  mp := MidPoint(BtnPoints[0], BtnPoints[1]);
  //left,top,right,bottom ...
  BtnPoints[2] := Point(BtnPoints[0].X,mp.Y);
  BtnPoints[3] := Point(mp.X,BtnPoints[0].Y);
  BtnPoints[4] := Point(BtnPoints[1].X,mp.Y);
  BtnPoints[5] := Point(mp.X,BtnPoints[1].Y);

  //now rotate all drawing points (ie pts > 1) about the diamond center ...
  if SavedInfo.AngleInDegrees <> 0 then
    RotatePts(BtnPoints, 2, mp, SavedInfo.AngleInDegrees *pi/180);
end;
//------------------------------------------------------------------------------

procedure TDiamond.Rotate(degrees: integer);
begin
  inherited;
  SetDiamondPts;
end;
//------------------------------------------------------------------------------

procedure TDiamond.DrawStringsInDiamond(Canvas: TCanvas; Strings: TStrings);
var
  YPos, YLimit, lineHeight, space, VertSpace, pad, XCenter, YCenter, MaxX: integer;
  ls, rs: string;

  function DoTextOut(DraftOnly: boolean): integer;
  var
    i, startY: integer;
  begin
    startY := YPos;
    for i := 0 to Strings.Count -1 do
    begin
      ls := Strings[i];
      if (ls = '') then
        Inc(YPos, lineHeight)
      else
      while (ls <> '') and (YPos < YLimit - lineHeight) do
      begin
        if YPos < YCenter then
          space := trunc(MaxX *
            (YPos - BtnPoints[0].Y - padding)/(YCenter - BtnPoints[0].Y - padding))
        else
          space := trunc(MaxX * (BtnPoints[1].Y - YPos - lineHeight - padding)/
            (BtnPoints[1].Y - YCenter - padding));
        TrimLine(Canvas, ls, rs, space);
        if (ls <> '') and not DraftOnly then
          with Canvas do
            if Angle = 0 then
              TextOut(XCenter - TextWidth(ls) div 2, Ypos, ls) else
              RotatedTextAtPt(Canvas, XCenter - TextWidth(ls) div 2, Ypos, ls);
        ls := rs;
        Inc(YPos, lineHeight);
      end;
      if (YPos >= YLimit - lineHeight) then break;
    end;
    result := YPos - StartY;
  end;

  function CalcVertSpace: integer;
  var
    i, cnt: integer;
  begin
    result := 0;
    cnt := 0;
    for i := 0 to Strings.Count -1 do
    begin
      if (YPos + lineHeight >= YLimit) then break;
      ls := Strings[i];
      if (ls = '') then
      begin
        inc(cnt);
        if odd(cnt) then inc(Ypos, lineheight);
        inc(result, lineheight);
      end else
      while (ls <> '') and (YPos + lineHeight < YLimit) do
      begin
        space := trunc(MaxX * (BtnPoints[1].Y - YPos - lineHeight - padding)/
          (BtnPoints[1].Y - YCenter - padding));
        TrimLine(Canvas, ls, rs, space);
        ls := rs;
        //simplified by simulating oscillating text about x axis ...
        inc(cnt);
        if odd(cnt) then Inc(YPos, lineHeight);
        inc(result, lineheight);
      end;
    end;
  end;


begin
  with Canvas do
  try
    lineHeight := TextHeight('Yy');
    pad := padding + (Pen.Width div 2);
    if odd(Pen.Width) then inc(pad);
    XCenter := (BtnPoints[0].X + BtnPoints[1].X) div 2;
    MaxX := BtnPoints[1].X - BtnPoints[0].X - pad*2;
    YCenter := (BtnPoints[0].Y + BtnPoints[1].Y) div 2; //widest point
    YLimit := BtnPoints[1].Y - pad;

    //calc approx vertical space required for text
    YPos := YCenter - lineHeight div 2;
    VertSpace := CalcVertSpace;
    //now test draw the text & get real vertSpace ...
    YPos := YCenter - VertSpace div 2;
    VertSpace := DoTextOut(true);
    //now draw text ...
    YPos := YCenter - VertSpace div 2;
    DoTextOut(false);
  except
    //ie divide by zero errors - just don't print anything
  end;
end;
//------------------------------------------------------------------------------

procedure TDiamond.InternalBtnMove(BtnIdx: integer; NewPt: TPoint);
begin
  inherited;
  SetDiamondPts;
end;
//------------------------------------------------------------------------------

function TDiamond.ClosestScreenPt(FromScreenPt: TPoint): TPoint;
var
  FromPt, mp, pt, pt1, pt2: TPoint;
  i: integer;
begin
  FromPt := ScreenToClient(FromScreenPt);
  mp := ObjectMidpoint;
  //find the closest vertex to the FromPt ...
  i := ClosestPointIdx([BtnPoints[2], BtnPoints[3],
    BtnPoints[4], BtnPoints[5]], FromPt) +2; //nb Index: 0 => BtnPoints[2]

  //given the vertex closest to FromPt, the line between the object's midpoint
  //and FromPt intersects one of the vertex's adjoining edges ...
  case i of
    2,4: begin pt1 := BtnPoints[3]; pt2 := BtnPoints[5]; end;
    3,5: begin pt1 := BtnPoints[2]; pt2 := BtnPoints[4]; end;
  end;
  IntersectionPoint(mp, fromPt, BtnPoints[i], pt1, pt);
  if not APointIsBetweenPts(pt, BtnPoints[i], pt1) then
    IntersectionPoint(mp, fromPt, BtnPoints[i], pt2, pt);
  result := ClientToScreen(pt);
end;
//------------------------------------------------------------------------------

procedure TDiamond.DrawObject(Canvas: TCanvas; IsShadow: boolean);
begin
  with canvas do
  begin
    Polygon([BtnPoints[2],BtnPoints[3],BtnPoints[4],BtnPoints[5]]);
    if IsShadow or (Strings.Count = 0) then exit;
    DrawStringsInDiamond(Canvas, Strings);
  end;
end;
//------------------------------------------------------------------------------


function TDiamond.ResizeObjectToFitText: boolean;
var
  i, w, marg: integer;
  size: TSize;
begin
  size.cx := 0;
  size.cy := bitmap.canvas.TextHeight('Yy') * (Strings.Count+1);
  for i := 0 to Strings.Count -1 do
  begin
    w := bitmap.canvas.TextWidth(Strings[i]);
    if w > size.cx then size.cx := w;
  end;
  marg := Margin + (Pen.Width div 2) + 1 + Padding;
  //theoretically only need twice width and height of rectangular text box,
  //but for some reason needs a bit more in practise (hence extra line above)...
  SetBounds(left,top, round(size.cx *2) + marg*2, round(size.cy *2) + marg*2);
  result := true;
end;

//------------------------------------------------------------------------------
// TPic methods
//------------------------------------------------------------------------------

constructor TPic.Create(AOwner: TComponent);
begin
  inherited;
  fPic := TBitmap.Create;
  DataStream := TMemoryStream.Create;
  fTransparent := true;
  fPic.Transparent := true;
  Pen.Width := 1;
  ShadowSize := 0;
  DoSaveInfo;
end;
//------------------------------------------------------------------------------

destructor TPic.Destroy;
begin
  fPic.free;
  DataStream.Free;
  DataStream := nil;
  inherited;
end;
//------------------------------------------------------------------------------

procedure TPic.BinaryDataLoaded;
begin
  LoadPicFromDataStream;
end;
//------------------------------------------------------------------------------

procedure TPic.LoadPicFromFile(const filename: string);
begin
  try
    DataStream.LoadFromFile(filename);
    LoadPicFromDataStream;
  except
  end;
end;
//------------------------------------------------------------------------------

procedure TPic.LoadPicFromDataStream;
begin
  try
    DataStream.Position := 0;
    fPic.LoadFromStream(DataStream);
    if not fStretch then
    begin
      if not BlockResize then //ie: BlockResize when loading from *.dob file
      begin
        BtnPoints[1].X := BtnPoints[0].X + fPic.Width;
        BtnPoints[1].Y  := BtnPoints[0].Y + fPic.Height;
        BlockResize := true;
        SetBounds(left, top, BtnPoints[1].X + Margin, BtnPoints[1].Y + Margin);
        BlockResize := false;
      end;
      Bitmap.Width := width;
      Bitmap.Height := Height;
    end;
  except
    DataStream.Size := 0;
  end;
  UpdateNeeded;
end;
//------------------------------------------------------------------------------

procedure TPic.SavePicToFile(const filename: string);
begin
  DataStream.SaveToFile(filename);
end;
//------------------------------------------------------------------------------

function TPic.IsValidBtnDown(BtnIdx: integer): boolean;
begin
  result := fStretch;
end;
//------------------------------------------------------------------------------

(*procedure PrintBitmapROP(DestCanvas: TCanvas;
  DestRect: TRect; Bitmap: TBitmap; rop: Cardinal);
var
    BitmapHeader:  pBitmapInfo;
    BitmapImage :  POINTER;
    HeaderSize  :  dword;
    ImageSize   :  dword;
begin
  GetDIBSizes(Bitmap.Handle,HeaderSize,ImageSize);
  GetMem(BitmapHeader,HeaderSize);
  GetMem(BitmapImage,ImageSize);
  try
    GetDIB(Bitmap.Handle, Bitmap.Palette, BitmapHeader^, BitmapImage^);
    StretchDIBits(DestCanvas.Handle,
                  DestRect.Left, DestRect.Top,     // Destination Origin
                  DestRect.Right  - DestRect.Left, // Destination Width
                  DestRect.Bottom - DestRect.Top,  // Destination Height
                  0,0,                             // Source Origin
                  Bitmap.Width, Bitmap.Height,     // Source Width & Height
                  BitmapImage,
                  TBitmapInfo(BitmapHeader^),
                  DIB_RGB_COLORS,
                  rop);
  finally
    FreeMem(BitmapHeader);
    FreeMem(BitmapImage)
  end;
end;
//------------------------------------------------------------------------------

procedure PrintBitmap(DestCanvas: TCanvas; DestRect: TRect; Bitmap: TBitmap);
var
  transpClr: TColor;
  mask: TBitmap;
  oldMode: integer;
  oldColor: cardinal;
const
  CAPS1 = 94;
  C1_TRANSPARENT = 1;
  NEWTRANSPARENT = 3;
begin
  if Bitmap.Transparent then
  begin
    transpClr := Bitmap.TransparentColor and $FFFFFF;

    if (GetDeviceCaps(DestCanvas.Handle, CAPS1) and C1_TRANSPARENT) <> 0 then
    begin
      //if the device context handles transparency natively then ...
      oldMode := SetBkMode(DestCanvas.Handle, NEWTRANSPARENT);
      oldColor := SetBkColor(DestCanvas.Handle, cardinal(transpClr));
      PrintBitmapROP(DestCanvas, DestRect, Bitmap, SRCCOPY);
      SetBkColor(DestCanvas.Handle, oldColor);
      SetBkMode(DestCanvas.Handle, oldMode);
    end else
    begin
      //otherwise do transparency this way ...
      mask := TBitmap.Create;
      try
        mask.Assign(Bitmap);
        mask.Mask(transpClr);
        PrintBitmapROP(DestCanvas, DestRect, Bitmap, SRCINVERT);
        PrintBitmapROP(DestCanvas, DestRect, mask, SRCAND);
        PrintBitmapROP(DestCanvas, DestRect, Bitmap, SRCINVERT);
      finally
        mask.Free;
      end;
    end;

  end
  else
    PrintBitmapROP(DestCanvas, DestRect, Bitmap, SRCCOPY);
end;*)
//------------------------------------------------------------------------------

procedure TPic.DrawObject(Canvas: TCanvas; IsShadow: boolean);
var
  tmpRect: TRect;
begin
  if IsShadow then exit;
  tmpRect := Rect(BtnPoints[0].X, BtnPoints[0].Y, BtnPoints[1].X, BtnPoints[1].Y);

  //nb: Delphi's Canvas.Draw() & Canvas.StretchDraw() are buggy. The pallete is
  //often corrupted when stretching a transparent image on screen and they
  //simply don't display at all in metafile canvases. (If you're not convinced,
  //try a few bitmaps in a stretched & transparent TImage component and see what
  //happens to their images.)

  //Anyhow, this PrintBitmap() function seems to (mostly) solve these issues
  //while bearing in mind that some printers (eg PostScript printers) do not
  //support ROPs that involve the destination canvas.
  (*PrintBitmap(Canvas, tmpRect, fPic);*)
end;
//------------------------------------------------------------------------------

procedure TPic.SetStretch(Stretch: boolean);
begin
  if Stretch = fStretch then exit;
  fStretch := Stretch;
  if not Stretch and (fPic.Width > 0) and not BlockResize then
  begin
    BtnPoints[1].X := fPic.Width + BtnPoints[0].X;
    BtnPoints[1].Y  := fPic.Height + BtnPoints[0].Y;
    ResizeNeeded;
  end else
    UpdateNeeded;
end;
//------------------------------------------------------------------------------

procedure TPic.SetTransparent(Transparent: boolean);
begin
  if Transparent = fTransparent then exit;
  fTransparent := Transparent;
  fPic.Transparent := fTransparent;
  UpdateNeeded;
end;
//------------------------------------------------------------------------------

procedure TPic.SetTightConnections(value: boolean);
begin
  if value = fTightConnections then exit;
  fTightConnections := value;
  //if connectors attached then they'll need adjusting ...
  if assigned(ConnectorList) then ResizeNeeded;
end;
//------------------------------------------------------------------------------

function TPic.ClosestScreenPt(FromScreenPt: TPoint): TPoint;
var
  mp: TPoint;
  trnspClr: TColor;
  slope: single;
begin
  result := inherited ClosestScreenPt(FromScreenPt);
  if not fTightConnections or not fPic.Transparent or Stretch then exit;
  trnspClr := fPic.TransparentColor and $FFFFFF;

  //find the closest non-transparent pixel to Result from a line to MidPoint ...
  result := ScreenToClient(result);
  OffsetPt(result,-margin, -margin);
  if (result.X < 0) then result.X := 0;
  while (result.X >= fPic.Width) do dec(result.X);
  while (result.Y >= fPic.Height) do dec(result.Y);
  mp := ObjectMidPoint;

  if (result.X = mp.X) then
  begin
    if (result.Y > mp.Y) then
      while (fPic.canvas.pixels[result.X,result.Y] = trnspClr) and
        (result.Y > mp.Y) do dec(result.Y)
    else
      while (fPic.canvas.pixels[result.X,result.Y] = trnspClr) and
        (result.Y < mp.Y) do inc(result.Y);
  end
  else if (result.X >= mp.X) and (result.Y >= mp.Y) then
  begin
    slope := (result.Y - mp.Y)/(result.X - mp.X);
    while (fPic.canvas.pixels[result.X,result.Y] = trnspClr) and
      not PointsEqual(result, mp) do
        if (result.X = mp.X) or ((result.Y - mp.Y)/(result.X - mp.X) >= slope) then
          dec(result.Y) else dec(result.X);
  end
  else if (result.X >= mp.X) and (result.Y < mp.Y) then
  begin
    slope := (result.Y - mp.Y)/(result.X - mp.X);
    while (fPic.canvas.pixels[result.X,result.Y] = trnspClr) and
      not PointsEqual(result, mp) do
        if (result.X = mp.X) or ((result.Y - mp.Y)/(result.X - mp.X) <= slope) then
          inc(result.Y) else dec(result.X);
  end
  else if (result.X < mp.X) and (result.Y < mp.Y) then
  begin
    slope := (result.Y - mp.Y)/(result.X - mp.X);
    while (fPic.canvas.pixels[result.X,result.Y] = trnspClr) and
      not PointsEqual(result, mp) do
        if (result.X = mp.X) or ((result.Y - mp.Y)/(result.X - mp.X) >= slope) then
          inc(result.Y) else inc(result.X);
  end else
  begin
    slope := (result.Y - mp.Y)/(result.X - mp.X);
    while (fPic.canvas.pixels[result.X,result.Y] = trnspClr) and
      not PointsEqual(result, mp) do
        if (result.X = mp.X) or ((result.Y - mp.Y)/(result.X - mp.X) <= slope) then
          dec(result.Y) else inc(result.X);
  end;
  OffsetPt(result,margin, margin);
  result := ClientToScreen(result);
end;
//------------------------------------------------------------------------------

procedure TPic.SaveToPropStrings;
begin
  inherited;
  if Angle <> 0 then AddToPropStrings('Angle', GetEnumProp(self, 'Angle'));
  if Stretch then AddToPropStrings('Stretch', GetEnumProp(self, 'Stretch'));
  if TightConnections then
    AddToPropStrings('TightConnections', GetEnumProp(self, 'TightConnections'));
end;
//------------------------------------------------------------------------------

function TPic.MergeDrawObjImage(DrawObj: TDrawObject; TransparentClr: TColor): boolean;
var
  bmp: TBitmap;
  l,t,w,h: integer;
begin
  result := assigned(DrawObj) and DrawObj.Visible and (DrawObj.Parent = Parent);
  if not result then exit;

  if (fPic.Width = 0) or (Left + Margin > DrawObj.Left) then
    l := DrawObj.Left else
    l := Left + Margin;
  if (fPic.Height = 0) or (Top + Margin > DrawObj.Top) then
    t := DrawObj.Top else
    t := Top + Margin;
  w := max(DrawObj.Left + DrawObj.Width, Left + width - Margin) - l;
  h := max(DrawObj.Top + DrawObj.Height, Top + Height - Margin) - t;

  bmp := TBitmap.Create;
  try
    bmp.Width := w;
    bmp.Height := h;
    bmp.Canvas.Brush.Color := TransparentClr;
    bmp.Canvas.FillRect(Rect(0,0,w,h));
    bmp.canvas.Draw(left + Margin -l,top + Margin -t, fPic);
    bmp.canvas.Draw(DrawObj.left -l,DrawObj.top -t, DrawObj.Bitmap);
    fPic.Assign(bmp);
    DataStream.Size := 0;
    fPic.SaveToStream(DataStream);
    SetBounds(l - Margin, t - Margin, w + Margin*2, h + Margin*2);
    BtnPoints[1].X := Width - Margin;
    BtnPoints[1].Y  := Height - Margin;
  finally
    bmp.Free;
  end;
end;
//------------------------------------------------------------------------------

procedure TPic.Rotate(degrees: integer);
var
  mp: TPoint;
  TmpPic: TBitmap;
begin
  if not SavedInfo.isTransforming then
    Raise Exception.Create('Error: Rotate() without BeginTransform().');

  degrees := degrees mod 360;
  if degrees < 0 then inc(degrees, 360);
  if degrees = SavedInfo.AngleInDegrees then exit;

  DataStream.Position := 0;
  TmpPic := TBitmap.Create;
  try
    TmpPic.Transparent := fPic.Transparent;
    TmpPic.LoadFromStream(DataStream);
(*    RotateBitmap(TmpPic, fPic, (360 - degrees) *pi / 180,
      Point(TmpPic.Width div 2, TmpPic.Height div 2), mp);*)
  finally
    TmpPic.Free;
  end;
  SavedInfo.AngleInDegrees := degrees;

  if BlockResize then exit; //ie loading from *.dob file
  BtnPoints[1].X := fPic.Width + Margin;
  BtnPoints[1].Y  := fPic.Height + Margin;
  ResizeNeeded;
end;
//------------------------------------------------------------------------------

function TPic.GetAngle: integer;
begin
  result := SavedInfo.AngleInDegrees;
  if result > 180 then dec(result, 360);
end;
//------------------------------------------------------------------------------

procedure TPic.SetAngle(angle: integer);
begin
  angle := angle mod 360;
  if angle < 0 then inc(angle, 360);
  if angle = SavedInfo.AngleInDegrees then exit;
  BeginTransform;
  Rotate(angle);
  EndTransform;
end;

//------------------------------------------------------------------------------
// TRectangle methods
//------------------------------------------------------------------------------

constructor TRectangle.Create(AOwner: TComponent);
begin
  inherited;
  InternalSetCount(6);
  fCentered := true;
  Padding := 4;
  SetRectanglePts;
  DoSaveInfo;
end;
//------------------------------------------------------------------------------

procedure TRectangle.SetRectanglePts;
var
  mp: TPoint;
begin
  mp := MidPoint(BtnPoints[0], BtnPoints[1]);
  //tl,tr,br,bl ...
  BtnPoints[2] := BtnPoints[0];
  BtnPoints[3] := Point(BtnPoints[1].X,BtnPoints[0].Y);
  BtnPoints[4] := BtnPoints[1];
  BtnPoints[5] := Point(BtnPoints[0].X,BtnPoints[1].Y);

  //now rotate all drawing points (ie pts > 1) about the diamond center ...
  if SavedInfo.AngleInDegrees <> 0 then
    RotatePts(BtnPoints, 2, mp, SavedInfo.AngleInDegrees *pi/180);
end;
//------------------------------------------------------------------------------

// Helper function for ClosestScreenPt() to elegantly handle rounded corners ...
function RoundedCorner(pt1, pt2: TPoint;
  circOrigX, circOrigY, circRadius: integer; pos: TBalloonPoint): TPoint;
var
  m,a,b,c,z, x1,x2: double;
begin
  //given 2 pts & eq'n line (y=mx+z) ...
  //m = (y2-y1)/(x2-x1)
  //z = y1 - m * x1
  m := (pt2.Y - pt1.Y)/(pt2.X - pt1.X);
  z := pt1.Y - m * pt1.X;

  //eq'n circle (x - cx)^2 + (y - cy)^2 = r^2 given origin (cx,cy), radius (r)
  //solve using simultaneous equations, substituting (mx + z) for y ...

  //(x - cx)^2 + (m*x + z - cy)^2 = r^2 given origin (cx,cy), radius (r)
  //x^2 - 2cx*x + cx^2 + m^2*x^2 + 2(z-cy)m*x + (z-cy)^2 = r^2
  //(m^2 + 1)x^2 + (2.m(z-cy) - 2.cx)x + cx^2 + (z-cy)^2 - r^2 = 0

  //Given general solution to quadratic ... x = (-b +/- sqrt(b^2 - 4ac))/2a
  a := m*m +1;
  b := (2*m*(z-circOrigY) -2*circOrigX);
  c := circOrigX*circOrigX + (z-circOrigY)*(z-circOrigY) - circRadius*circRadius;

  x1 := (-b + SQRT(b*b - 4*a*c))/(2*a);
  x2 := (-b - SQRT(b*b - 4*a*c))/(2*a);

  case pos of
    bpTopLeft, bpBottomLeft: if x2 < x1 then x1 := x2;
    else if x2 > x1 then x1 := x2;
  end;
  result.X := round(x1);
  result.Y := round(x1*m + z);

end;
//------------------------------------------------------------------------------

function TRectangle.ClosestScreenPt(FromScreenPt: TPoint): TPoint;
var
  FromPt, mp, pt, pt1, pt2: TPoint;
  i, radius: integer;
begin
  FromPt := ScreenToClient(FromScreenPt);
  mp := ObjectMidpoint;
  //find the closest vertex to the FromPt ...
  i := ClosestPointIdx([BtnPoints[2], BtnPoints[3],
    BtnPoints[4], BtnPoints[5]], FromPt) +2; //nb Index: 0 => BtnPoints[2]

  //given the vertex closest to FromPt, the line between the object's midpoint
  //and FromPt intersects one of the vertex's adjoining edges ...
  case i of
    2,4: begin pt1 := BtnPoints[3]; pt2 := BtnPoints[5]; end;
    3,5: begin pt1 := BtnPoints[2]; pt2 := BtnPoints[4]; end;
  end;
  IntersectionPoint(mp, fromPt, BtnPoints[i], pt1, pt);
  if not APointIsBetweenPts(pt, BtnPoints[i], pt1) then
    IntersectionPoint(mp, fromPt, BtnPoints[i], pt2, pt);
  result := ClientToScreen(pt);

  //finally, fix up if rounded (& Angle = 0) ...
  if fRounded then
  begin
    //nb: rounding is based on a circle with radius 1/4 length of shortest side
    radius := min(BtnPoints[1].X-BtnPoints[0].X,
      BtnPoints[1].Y-BtnPoints[0].Y) div 4;
    if pt.X < BtnPoints[0].X + radius then
    begin
      if pt.Y < BtnPoints[0].Y + radius then pt := RoundedCorner(pt, mp,
        BtnPoints[0].X + radius, BtnPoints[0].Y + radius, radius, bpTopLeft)
      else if pt.Y > BtnPoints[1].Y - radius then pt := RoundedCorner(pt, mp,
        BtnPoints[0].X + radius, BtnPoints[1].Y - radius, radius, bpBottomLeft);
    end
    else if pt.X > BtnPoints[1].X - radius then
    begin
      if pt.Y < BtnPoints[0].Y + radius then pt := RoundedCorner(pt, mp,
        BtnPoints[1].X - radius, BtnPoints[0].Y + radius, radius, bpTopRight)
      else if pt.Y > BtnPoints[1].Y - radius then pt := RoundedCorner(pt, mp,
        BtnPoints[1].X - radius, BtnPoints[1].Y - radius, radius, bpBottomRight);
    end;
    result := ClientToScreen(pt);
  end;
end;
//------------------------------------------------------------------------------

procedure TRectangle.SetCentered(Centered: boolean);
begin
  if fCentered = Centered then exit;
  fCentered := Centered;
  UpdateNeeded;
end;
//------------------------------------------------------------------------------

procedure TRectangle.SetRounded(Rounded: boolean);
begin
  if (fRounded = Rounded) or (Angle <> 0) then exit;
  fRounded := Rounded;
  //if connectors are attached then they'll need adjusting ...
  if assigned(ConnectorList) then
    ResizeNeeded else
    UpdateNeeded;
end;
//------------------------------------------------------------------------------

procedure TRectangle.Rotate(degrees: integer);
begin
  inherited;
  if (Angle <> 0) then fRounded := false;
  SetRectanglePts;
end;
//------------------------------------------------------------------------------

procedure TRectangle.InternalBtnMove(BtnIdx: integer; NewPt: TPoint);
begin
  inherited;
  SetRectanglePts;
end;
//------------------------------------------------------------------------------

procedure TRectangle.DrawStringsInRect(Canvas: TCanvas; Strings: TStrings);
var
  i, YPos, YLimit, lineHeight, space, pad, XCenter: integer;
  ls, rs: string;

  procedure CalcOnlyOrTextOut(CalcOnly: boolean);
  var
    i: integer;
  begin
    for i := 0 to Strings.Count -1 do
    begin
      ls := Strings[i];
      if ls = '' then
        Inc(YPos, lineHeight) else
        while (ls <> '') and (YPos < YLimit) do
        begin
          TrimLine(Canvas, ls, rs, space);
          if ls = '' then exit; //no room to TextOut anything!!
          if not CalcOnly then with Canvas do
            if Centered then
            begin
              if Angle = 0 then
                TextOut(XCenter - TextWidth(ls) div 2, Ypos, ls) else
                RotatedTextAtPt(Canvas, XCenter - TextWidth(ls) div 2, Ypos, ls);
            end else
            begin
              if Angle = 0 then
                TextOut(BtnPoints[0].X + Padding + Pen.Width, Ypos, ls) else
                RotatedTextAtPt(Canvas, BtnPoints[0].X + Padding + Pen.Width, Ypos, ls);
            end;
          Inc(YPos, lineHeight);
          ls := rs;
        end;
      if (YPos >= YLimit) then break;
    end;
  end;

begin
  with Canvas do
  begin
    lineHeight := TextHeight('Yy');
    pad := padding + (Pen.Width div 2);
    if odd(Pen.Width) then inc(pad);
    XCenter := (BtnPoints[0].X + BtnPoints[1].X) div 2;
    YPos := BtnPoints[0].Y + padding;
    YLimit := BtnPoints[1].Y - lineHeight - pad;
    space := BtnPoints[1].X - BtnPoints[0].X - pad *2;
    //loop through text twice, first time to calc placement ...
    CalcOnlyOrTextOut(true);
    i := BtnPoints[1].Y - pad - YPos;
    YPos := BtnPoints[0].Y + pad;
    if i > 1 then inc(YPos, i div 2);
    //now second time to draw text ...
    CalcOnlyOrTextOut(false);
  end;
end;
//------------------------------------------------------------------------------

procedure TRectangle.DrawObject(Canvas: TCanvas; IsShadow: boolean);
var
  tmpRect: TRect;
  minRadius: integer;
begin
  with canvas do
  begin
    tmpRect.TopLeft := BtnPoints[0];
    tmpRect.BottomRight := BtnPoints[1];

    if fRounded and (Angle = 0) then //nb: can't 'round' rotated rectangles
    begin
      minRadius := min(BtnPoints[4].X - BtnPoints[2].X,
        BtnPoints[4].Y - BtnPoints[2].Y) div 2;
      RoundRect(BtnPoints[2].X,BtnPoints[2].Y,BtnPoints[4].X,BtnPoints[4].Y,
        minRadius, minRadius);
    end else
      //use polygon for rotation support ...
      Polygon([BtnPoints[2],BtnPoints[3],BtnPoints[4],BtnPoints[5]]);

    if IsShadow or (Strings.Count = 0) then exit;
    DrawStringsInRect(Canvas, strings);
  end;
end;
//------------------------------------------------------------------------------

function TRectangle.ResizeObjectToFitText: boolean;
var
  i, w, marg: integer;
  size: TSize;
begin
  result := false;
  if strings.Count = 0 then exit;
  size.cx := 0;
  size.cy := bitmap.canvas.TextHeight('Yy') * Strings.Count;
  for i := 0 to Strings.Count -1 do
  begin
    w := bitmap.canvas.TextWidth(Strings[i]);
    if w > size.cx then size.cx := w;
  end;
  marg := (Margin + (Pen.Width div 2) +1 + Padding);
  SetBounds(left,top, size.cx + marg*2, size.cy + marg*2);
  result := true;
end;
//------------------------------------------------------------------------------

procedure TRectangle.SaveToPropStrings;
begin
  inherited;
  AddToPropStrings('Centered', GetEnumProp(self, 'Centered'));
  if Rounded then AddToPropStrings('Rounded', GetEnumProp(self, 'Rounded'));
end;

//------------------------------------------------------------------------------
// TObjectText methods
//------------------------------------------------------------------------------

constructor TText.Create(AOwner: TComponent);
begin
  inherited;
  Padding := 0;
  ShadowSize := -1;
  DoSaveInfo;
  CanConnect := false;
end;
//------------------------------------------------------------------------------

function TText.GetStrings: TStrings;
begin
  result := inherited Strings;
end;
//------------------------------------------------------------------------------

procedure TText.SetStrings(strings: TStrings);
begin
  inherited Strings := strings;
  ResizeObjectToFitText;
end;
//------------------------------------------------------------------------------

procedure TText.DrawObject(Canvas: TCanvas; IsShadow: boolean);
var
  SavedColor: TColor;
  stringsToParse: TStrings;
begin
  if (Strings.Count = 0) then
    stringsToParse := dummyStrings else
    stringsToParse := Strings;

  canvas.Brush.Style := bsClear;
  with canvas do
  begin
    if IsShadow then
    begin
      SavedColor := Font.Color;
      Font.Color := ColorShadow;
      DrawStringsInRect(Canvas, stringsToParse);
      Font.Color := SavedColor;
    end else
      DrawStringsInRect(Canvas, stringsToParse);
  end;
end;

//------------------------------------------------------------------------------
// TEllipse methods
//------------------------------------------------------------------------------

constructor TEllipse.Create(AOwner: TComponent);
begin
  inherited;
  InternalSetCount(15); //nb: NOT similarly named new SetButtonCount() method
  SetBezierButtons;
  DoSaveInfo;
end;
//------------------------------------------------------------------------------

function TEllipse.ClosestScreenPt(FromScreenPt: TPoint): TPoint;
var
  angle, rotationAngle: single;
  FromPt: TPoint;
begin
  FromPt := ScreenToClient(FromScreenPt);

  if SavedInfo.AngleInDegrees <> 0 then
    rotationAngle := SavedInfo.AngleInDegrees *pi/180 else
    rotationAngle := 0;

  angle := GetAnglePt2FromPt1(ObjectMidpoint, FromPt) + rotationAngle;
  if angle > PI_Mul2 then angle := angle - PI_Mul2;

  if GetPtOnEllipseFromAngle((BtnPoints[1].X - BtnPoints[0].X) div 2,
    (BtnPoints[1].Y - BtnPoints[0].Y) div 2, angle, result) then
  begin
    inc(result.X, ObjectMidpoint.X);
    inc(result.Y, ObjectMidpoint.Y);
    if SavedInfo.AngleInDegrees <> 0 then
      result := RotatePt(result, ObjectMidPoint, rotationAngle);
    result := ClientToScreen(result);
  end
  else
    result := ClientToScreen(ObjectMidPoint);
end;
//------------------------------------------------------------------------------

procedure TEllipse.SetBalloonPoint(BalloonPoint: TBalloonPoint);
begin
  if Angle <> 0 then BalloonPoint := bpNone;
  if fBalloonPoint = BalloonPoint then exit;
  fBalloonPoint := BalloonPoint;
  UpdateNeeded;
end;
//------------------------------------------------------------------------------

procedure TEllipse.SetAngle(angle: integer);
begin
  if angle <> 0 then BalloonPoint := bpNone;
  inherited;
end;
//------------------------------------------------------------------------------

procedure TEllipse.SetRegular(value: boolean);
begin
  if fRegular = value then exit;
  fRegular := value;
  if not fRegular then exit;
  BtnPoints[1].Y := BtnPoints[0].Y + (BtnPoints[1].X - BtnPoints[0].X);

  SavedInfo.AngleInDegrees := 0;
  SetBezierButtons;
  ResizeNeeded;
end;
//------------------------------------------------------------------------------

procedure TEllipse.DrawStringsInEllipse(canvas: TCanvas; Strings: TStrings);
var
  rad_horz, rad_vert: integer;
  XPos, YPos, XCenter, YCenter, lineHeight, space, vertSpace, pad: integer;
  ls, rs: string;

  function DoTextOut(DraftOnly: boolean): integer;
  var
    i, startY: integer;
  begin
    startY := YPos;
    for i := 0 to Strings.Count -1 do
    begin
      if (YPos + lineHeight + pad >= YCenter + rad_vert) then break;
      ls := strings[i];
      if ls = '' then
        Inc(YPos, lineHeight)
      else
      while (ls <> '') and (YPos + lineHeight + pad < YCenter + rad_vert) do
      begin
        if YCenter > YPos then
        begin
          if not GetEllipseXValFromYVal(rad_horz,
            rad_vert, YCenter-YPos, XPos) then break; //oops
        end else
          if not GetEllipseXValFromYVal(rad_horz,
              rad_vert, YPos+lineHeight-YCenter, XPos) then break; //oops
        space := (XPos - pad) *2;
        TrimLine(Canvas, ls, rs, space);
        if ls = '' then break; //no room to print anything!!
        if not DraftOnly then
          with Canvas do
            if Angle = 0 then
              TextOut(XCenter - textwidth(ls) div 2, Ypos, ls) else
              RotatedTextAtPt(Canvas, XCenter - textwidth(ls) div 2, Ypos, ls);
        Inc(YPos, lineHeight);
        ls := rs;
      end;
    end;
    result := YPos - StartY;
  end;

  function CalcVertSpace: integer;
  var
    i, cnt: integer;
  begin
    result := 0;
    cnt := 0;
    YPos := YCenter - lineHeight div 2;
    for i := 0 to Strings.Count -1 do
    begin
      if (YPos + lineHeight + pad >= YCenter + rad_vert) then break;
      ls := Strings[i];
      if (ls = '') then
      begin
        inc(cnt);
        if odd(cnt) then inc(Ypos, lineheight);
        inc(result, lineheight);
      end else
      while (ls <> '') and (YPos + lineHeight + pad < YCenter + rad_vert) do
      begin
        if not GetEllipseXValFromYVal(rad_horz,
            rad_vert, YPos+lineHeight-YCenter, XPos) then break; //oops
        space := (XPos - pad) *2;
        TrimLine(Canvas, ls, rs, space);
        ls := rs;
        //simplified by simulating oscillating text about x axis ...
        inc(cnt);
        if odd(cnt) then Inc(YPos, lineHeight);
        inc(result, lineheight);
      end;
    end;
  end;

begin
  with Canvas do
  begin
    lineHeight := TextHeight('Yy');
    rad_horz := (BtnPoints[1].X - BtnPoints[0].X) div 2;
    rad_vert := (BtnPoints[1].Y - BtnPoints[0].Y) div 2;
    XCenter := BtnPoints[0].X + rad_horz;
    YCenter := BtnPoints[0].Y + rad_vert;
    pad := padding + (Pen.Width div 2);
    if odd(Pen.Width) then inc(pad);
    //calc approx vertical placement ...
    vertSpace := CalcVertSpace;
    //now test draw the text & get real vertSpace ...
    YPos := YCenter - vertSpace div 2;
    vertSpace := DoTextOut(true);
    //now draw text ...
    YPos := YCenter - vertSpace div 2;
    DoTextOut(false);
  end;
end;
//------------------------------------------------------------------------------

procedure TEllipse.DrawObject(Canvas: TCanvas; IsShadow: boolean);
var
  pt1, pt2, pt3: TPoint;
  dx, dy: integer;
  SavedClr: TColor;
  IsValidPoints: boolean;

  //Get2PtsOnEllipse: helper function for Balloon extention drawing.
  //Since the balloon tip is in one corner, from that corner (pt1) find the
  //intersection pts (pt2 & pt3) of 2 lines and the ellipse where each line is
  //either 1/8 distance vertically or 1/8 distance horizontally from that
  //corner and passes through the elliptical center ...
  function Get2PtsOnEllipse(wPt,hPt: TPoint): boolean;
  var
    angle1, angle2: single;
    mp: TPoint;
  begin
    mp := Point((BtnPoints[0].X+BtnPoints[1].X) div 2,
      (BtnPoints[0].Y+BtnPoints[1].Y) div 2);
    angle1 := GetAnglePt2FromPt1(mp, hPt);
    angle2 := GetAnglePt2FromPt1(mp, wPt);
    result :=
      GetPtOnEllipseFromAngle((BtnPoints[1].X - BtnPoints[0].X) div 2,
      (BtnPoints[1].Y - BtnPoints[0].Y) div 2, angle1, pt2)
      and GetPtOnEllipseFromAngle((BtnPoints[1].X - BtnPoints[0].X) div 2,
      (BtnPoints[1].Y - BtnPoints[0].Y) div 2, angle2, pt3);
    with mp do OffsetPt(pt2,X,Y);
    with mp do OffsetPt(pt3,X,Y);
  end;

  procedure DrawBalloonExtension;
  begin
    case fBalloonPoint of
      bpTopLeft:
        begin
          IsValidPoints := Get2PtsOnEllipse(
            Point(BtnPoints[0].X + round(width*1/8),BtnPoints[0].Y),
            Point(BtnPoints[0].X,BtnPoints[0].Y + round(height*1/8)));
          pt1 := BtnPoints[0];
          dx := 1; dy := 1;
        end;
      bpTopRight:
        begin
          IsValidPoints := Get2PtsOnEllipse(
            Point(BtnPoints[1].X - round(width*1/8),BtnPoints[0].Y),
            Point(BtnPoints[1].X, BtnPoints[0].Y + round(height*1/8)));
          pt1 := Point(BtnPoints[1].X, BtnPoints[0].Y);
          dx := -1; dy := 1;
        end;
      bpBottomLeft:
        begin
          IsValidPoints := Get2PtsOnEllipse(
            Point(BtnPoints[0].X + round(width*1/8), BtnPoints[1].Y),
            Point(BtnPoints[0].X, BtnPoints[1].Y - round(height*1/8)));
          pt1 := Point(BtnPoints[0].X,BtnPoints[1].Y);
          dx := 1; dy := -1;
        end;
      else
      begin
        IsValidPoints := Get2PtsOnEllipse(
          Point(BtnPoints[1].X - round(width*1/8),BtnPoints[1].Y),
          Point(BtnPoints[1].X, BtnPoints[1].Y - round(height*1/8)));
        pt1 := BtnPoints[1];
        dx := -1; dy := -1;
      end;
    end;
    if IsValidPoints then
      with canvas do
      begin
        if not IsShadow then
        begin
          SavedClr := pen.Color;
          pen.Color := brush.Color;
          offsetPt(pt2,dx,dy);
          offsetPt(pt3,dx,dy);
          polygon([pt1,pt2,pt3]);
          pen.Color := SavedClr;
        end;
        MoveTo(Pt2.X,Pt2.Y);
        LineTo(Pt1.X,Pt1.Y);
        LineTo(Pt3.X,Pt3.Y);
      end;
  end;

begin
  with canvas do
  begin
    if SavedInfo.AngleInDegrees <> 0 then
    begin
      beginPath(Handle);
      PolyBezier([BtnPoints[2],BtnPoints[3],BtnPoints[4],BtnPoints[5],
        BtnPoints[6],BtnPoints[7],BtnPoints[8],BtnPoints[9],BtnPoints[10],
        BtnPoints[11],BtnPoints[12],BtnPoints[13],BtnPoints[14]]);
      EndPath(Handle);
      if Brush.Style = bsClear then
        StrokePath(Handle) else
        StrokeAndFillPath(Handle);
    end else
    begin
      ellipse(BtnPoints[0].X,BtnPoints[0].Y,BtnPoints[1].X,BtnPoints[1].Y);
      //draw 'balloon' extension if required ...
      if (fBalloonPoint <> bpNone) then DrawBalloonExtension;
    end;
    //finally draw text ...
    if IsShadow or (Strings.Count = 0) then exit;
    DrawStringsInEllipse(Canvas, Strings);
  end;
end;
//------------------------------------------------------------------------------

function TEllipse.ResizeObjectToFitText: boolean;
var
  i, w, marg: integer;
  size: TSize;
begin
  size.cx := 0;
  size.cy := bitmap.canvas.TextHeight('Yy') * (Strings.Count+1);
  for i := 0 to Strings.Count -1 do
  begin
    w := bitmap.canvas.TextWidth(Strings[i]);
    if w > size.cx then size.cx := w;
  end;
  marg := (Margin + (Pen.Width div 2) + 1 + Padding);
  //nb: sqrt(2) ~= 1.42 (theoretical space required)
  SetBounds(left,top, round(size.cx *1.42) + marg*2, round(size.cy *1.42) + marg*2);
  result := true;
end;
//------------------------------------------------------------------------------

procedure TEllipse.InternalBtnMove(BtnIdx: integer; NewPt: TPoint);
begin
  if fRegular then
  begin
    if BtnIdx = 0 then
    begin
      BtnPoints[0].X := NewPt.X;
      BtnPoints[0].Y := BtnPoints[1].Y - (BtnPoints[1].X - NewPt.X);
    end else
    begin
      BtnPoints[1].X := NewPt.X;
      BtnPoints[1].Y := BtnPoints[0].Y + (NewPt.X - BtnPoints[0].X);
    end;
    ResizeNeeded;
  end else
    inherited;

  SetBezierButtons;
end;
//------------------------------------------------------------------------------

procedure TEllipse.SetBezierButtons;
const
  //offset (relative to size of ellipse axis) of bezier control points
  //see: http://www.codeguru.com/gdi/ellipse.shtml
  offset: single = 0.27614237; //  2/3*(sqrt(2)-1)
var
  midx, midy, offx, offy: integer;
  rec: TRect;
begin
  //get the drawing point positions from the posion of the first 2 buttons ...
  rec := Rect(BtnPoints[0].X,BtnPoints[0].Y,BtnPoints[1].X-1,BtnPoints[1].Y-1);
  with rec do
  begin
    midx := (right - left) div 2 + left;
    midy := (bottom - top) div 2 + top;
    offx := round((right - left) * offset);
    offy := round((bottom - top) * offset);
    BtnPoints[2]  := Point(left, midy);
    BtnPoints[3]  := Point(left, midy - offy);
    BtnPoints[4]  := Point(midx - offx, top);
    BtnPoints[5]  := Point(midx, top);
    BtnPoints[6]  := Point(midx + offx, top);
    BtnPoints[7]  := Point(right, midy - offy);
    BtnPoints[8]  := Point(right, midy);
    BtnPoints[9]  := Point(right, midy + offy);
    BtnPoints[10]  := Point(midx + offx, bottom);
    BtnPoints[11]  := Point(midx, bottom);
    BtnPoints[12] := Point(midx - offx, bottom);
    BtnPoints[13] := Point(left, midy + offy);
    BtnPoints[14] := BtnPoints[2];

    //now rotate all drawing points (ie pts > 1) about the ellipse center ...
    if SavedInfo.AngleInDegrees <> 0 then
      RotatePts(BtnPoints, 2, Point(midx,midy), SavedInfo.AngleInDegrees *pi/180);
  end;
end;
//------------------------------------------------------------------------------

procedure TEllipse.Rotate(degrees: integer);
begin
  if fRegular then exit;
  inherited;
  SetBezierButtons;
end;
//------------------------------------------------------------------------------

procedure TEllipse.SaveToPropStrings;
begin
  inherited;
  AddToPropStrings('BalloonPoint', GetEnumProp(self, 'BalloonPoint'));
  if Regular then AddToPropStrings('Regular', GetEnumProp(self, 'Regular'));
end;

//------------------------------------------------------------------------------
// TPolygon methods
//------------------------------------------------------------------------------

constructor TPolygon.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  InternalSetCount(5); //nb: NOT similarly named new SetButtonCount() method
  InitializePoints;
end;
//------------------------------------------------------------------------------

function TPolygon.ClosestScreenPt(FromScreenPt: TPoint): TPoint;
var
  i, bestBtnIdx, dist, dist2: integer;
  FromPt: TPoint;
begin
  FromPt := ScreenToClient(FromScreenPt);
  dist := SquaredDistBetweenPoints(FromPt, BtnPoints[0]);
  bestBtnIdx := 0;
  for i := 1 to ButtonCount -1 do
  begin
    dist2 := SquaredDistBetweenPoints(FromPt, BtnPoints[i]);
    if dist2 < dist then
    begin
      dist := dist2;
      bestBtnIdx := i;
    end;
  end;
  result := ClientToScreen(BtnPoints[bestBtnIdx]);
end;
//------------------------------------------------------------------------------

procedure TPolygon.InitializePoints;
var
  radius: integer;
begin
  radius := min(width,height) div 2 - Margin;
  SetPointsAroundCircle(ObjectMidPoint, radius, ButtonCount, BtnPoints);
  DoSaveInfo;
end;
//------------------------------------------------------------------------------

function TPolygon.GetButtonCount: integer;
begin
  result := inherited ButtonCount;
end;
//------------------------------------------------------------------------------

procedure TPolygon.SetButtonCount(count: integer);
begin
  if (count < 3) then exit; //oops
  InternalSetCount(count);
  InitializePoints;
  ResizeNeeded;
end;
//------------------------------------------------------------------------------

procedure TPolygon.DuplicateButton(btnIdx: integer);
var
  i: integer;
begin
  if (btnIdx < 0) then btnIdx := 0
  else if (btnIdx >= ButtonCount) then btnIdx := ButtonCount -1;
  InternalSetCount(ButtonCount +1);
  for i := ButtonCount -1 downto btnIdx+1 do
    BtnPoints[i] := BtnPoints[i-1];
  OffsetPt(BtnPoints[btnIdx],-1,-1);
  OffsetPt(BtnPoints[btnIdx+1],1,1);
  ResizeNeeded;
end;
//------------------------------------------------------------------------------

procedure TPolygon.RemoveButton(btnIdx: integer);
var
  i: integer;
begin
  if ButtonCount < 4 then exit;
  if (btnIdx < 0) then btnIdx := 0
  else if (btnIdx >= ButtonCount) then btnIdx := ButtonCount -1;

  for i := btnIdx to ButtonCount -2 do
    BtnPoints[i] := BtnPoints[i+1];
  InternalSetCount(ButtonCount -1);
  ResizeNeeded;
end;
//------------------------------------------------------------------------------

procedure TPolygon.Mirror;
var
  i: integer;
begin
  for i := 0 to ButtonCount -1 do
    BtnPoints[i].X := Width - BtnPoints[i].X;
  ResizeNeeded;
end;
//------------------------------------------------------------------------------

procedure TPolygon.Flip;
var
  i: integer;
begin
  for i := 0 to ButtonCount -1 do
    BtnPoints[i].Y := Height - BtnPoints[i].Y;
  ResizeNeeded;
end;
//------------------------------------------------------------------------------

procedure TPolygon.SetPlainPoly(isPlainPoly: boolean);
begin
  if fPlainPoly = isPlainPoly then exit;
  fPlainPoly := isPlainPoly;
  if not fPlainPoly then exit;
  InitializePoints;
  ResizeNeeded;
end;
//------------------------------------------------------------------------------

procedure TPolygon.InternalBtnMove(BtnIdx: integer; NewPt: TPoint);
var
  radius: integer;
  mp: TPoint;

  rec: TRect;
begin
  if Regular then
  begin
    mp := ObjectMidPoint;
    radius := round(SQRT(SquaredDistBetweenPoints(mp, NewPt)));
    SetPointsAroundCircle(mp, radius, ButtonCount, BtnPoints);

    //ResizeNeeded() only works for even numbered ButtonCounts
    //otherwise ObjectMidPoint moves and causes havoc...
    if odd(ButtonCount) then
    begin
      with rec do
      begin
        Right := (radius + Margin) * 2;
        Bottom := Right;
        left := self.Left + mp.X - (radius + Margin);
        Top := self.Top + mp.Y - (radius + Margin);

        Bitmap.Width := Right;
        Bitmap.Height := Bottom;
        BlockResize := true; //blocks scaling while resizing Bitmap
        try
          self.setBounds(Left, Top, Right, Bottom);
        finally
          BlockResize := false;
        end;
      end;
      UpdateNeeded;
    end
    else
      ResizeNeeded;
  end
  else
    inherited;
end;
//------------------------------------------------------------------------------

function TPolygon.IsValidBtnDown(BtnIdx: integer): boolean;
begin
  result := not Regular;
end;
//------------------------------------------------------------------------------

procedure TPolygon.SaveToPropStrings;
begin
  inherited;
  if Regular then AddToPropStrings('Regular', GetEnumProp(self, 'Regular'));
end;

//------------------------------------------------------------------------------
// TSolidArrow methods
//------------------------------------------------------------------------------

constructor TSolidArrow.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  InternalSetCount(7);
  BtnPoints[0] := Point(width - Margin, height div 2);
  BtnPoints[1] := Point(Margin + (width - Margin*2) div 5, Margin);
  BtnPoints[2] := Point(BtnPoints[1].X, Margin + (height - Margin*2) div 3);
  BtnPoints[3] := Point(Margin, BtnPoints[2].Y);
  BtnPoints[4] := Point(Margin, Margin + (height - Margin*2)*2 div 3);
  BtnPoints[5] := Point(BtnPoints[1].X, BtnPoints[4].Y);
  BtnPoints[6] := Point(BtnPoints[1].X, height - Margin);
  DoSaveInfo;
end;
//------------------------------------------------------------------------------

procedure TSolidArrow.InternalBtnMove(BtnIdx: integer; NewPt: TPoint);

  procedure AlignPt1;
  begin
    if (NewPt.Y >= BtnPoints[0].Y) then NewPt.Y := BtnPoints[0].Y -1;
    BtnPoints[6].Y := 2* BtnPoints[0].Y - BtnPoints[1].Y;
  end;

  procedure AlignPt6;
  begin
    if (NewPt.Y <= BtnPoints[0].Y) then NewPt.Y := BtnPoints[0].Y +1;
    BtnPoints[1].Y := 2* BtnPoints[0].Y - BtnPoints[6].Y;
  end;

  procedure AlignArrowHorz;
  begin
    BtnPoints[1].X := NewPt.X;
    BtnPoints[2].X := NewPt.X;
    BtnPoints[5].X := NewPt.X;
    BtnPoints[6].X := NewPt.X;
  end;

  procedure AlignTailTop;
  begin
    if (NewPt.Y >= BtnPoints[0].Y) then NewPt.Y := BtnPoints[0].Y -1;
    BtnPoints[2].Y := NewPt.Y;
    BtnPoints[3].Y := NewPt.Y;
    BtnPoints[4].Y := 2* BtnPoints[0].Y - BtnPoints[2].Y;
    BtnPoints[5].Y := BtnPoints[4].Y;
  end;

  procedure AlignTailBottom;
  begin
    if (NewPt.Y <= BtnPoints[0].Y) then NewPt.Y := BtnPoints[0].Y +1;
    BtnPoints[4].Y := NewPt.Y;
    BtnPoints[5].Y := NewPt.Y;
    BtnPoints[2].Y := 2* BtnPoints[0].Y - BtnPoints[4].Y;
    BtnPoints[3].Y := BtnPoints[2].Y;
  end;

  procedure AlignTail;
  begin
    BtnPoints[3].X := NewPt.X;
    BtnPoints[4].X := NewPt.X;
  end;

begin
  if fWasRotated then
  begin
    inherited;
    exit; //ie: it's too much work to maintain alignment when rotated
  end;
  case BtnIdx of
    0:   NewPt.Y := BtnPoints[0].Y;
    1:   begin AlignPt1; AlignArrowHorz; end;
    2:   begin AlignArrowHorz; AlignTailTop; end;
    3:   begin AlignTailTop; AlignTail; end;
    4:   begin AlignTailBottom; AlignTail; end;
    5:   begin AlignArrowHorz; AlignTailBottom; end;
    6:   begin AlignPt6; AlignArrowHorz; end;
  end;
  inherited InternalBtnMove(BtnIdx, NewPt);
end;
//------------------------------------------------------------------------------

procedure TSolidArrow.Rotate(degrees: integer);
begin
  inherited Rotate(degrees);
  //if rotated then vert/horz alignment is broken ...
  fWasRotated := true;
end;

//------------------------------------------------------------------------------
// TRandomPoly methods
//------------------------------------------------------------------------------

procedure TRandomPoly.Randomize;
begin
  InitializePoints;
  UpdateNeeded;
end;
//------------------------------------------------------------------------------

procedure TRandomPoly.InitializePoints;
var
  i: integer;
begin
  for i := 0 to ButtonCount -1 do
    BtnPoints[i] := Point(system.Random(width-Margin*2)+Margin,
      system.Random(height-Margin*2)+Margin);
  DoSaveInfo;
end;
//------------------------------------------------------------------------------

procedure TRandomPoly.SetButtonCount(count: integer);
begin
  if (count < 3) then count := 3;
  if count = ButtonCount then exit;
  InternalSetCount(count);
  InitializePoints;
  UpdateNeeded;
end;


//------------------------------------------------------------------------------
// TStar methods
//------------------------------------------------------------------------------

constructor TStar.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  InternalSetCount(18); //nb: NOT similarly named new SetButtonCount() method
  InitializePoints;
end;
//------------------------------------------------------------------------------

procedure TStar.DuplicateButton(btnIdx: integer);
begin
  //do nothing
end;
//------------------------------------------------------------------------------

procedure TStar.RemoveButton(btnIdx: integer);
begin
  //do nothing
end;
//------------------------------------------------------------------------------

procedure TStar.SetButtonCount(count: integer);
begin
  if (count < 10) then count := 10
  else if odd(count) then dec(count);
  if count = ButtonCount then exit;
  InternalSetCount(count);
  InitializePoints;
  UpdateNeeded;
end;
//------------------------------------------------------------------------------

procedure TStar.InitializePoints;
var
  i: integer;
  radius: integer;
  innerCirc: array of TPoint;
begin
  radius := min(width,height) div 2 - Margin;
  SetPointsAroundCircle(ObjectMidPoint, radius, ButtonCount, BtnPoints);
  radius := min(width,height) div 4 - Margin;
  setLength(innerCirc, ButtonCount div 2);
  SetPointsAroundCircle(ObjectMidpoint, radius, ButtonCount div 2, innerCirc);
  for i := 0 to (ButtonCount div 2) -1 do
    BtnPoints[i*2] := innerCirc[i];
  DoSaveInfo;
end;
//------------------------------------------------------------------------------

procedure TStar.SetBoringStar(BoringStar: boolean);
begin
  if fBoringStar = BoringStar then exit;
  fBoringStar := BoringStar;
  if fBoringStar then InitializePoints;
  UpdateNeeded;
end;
//------------------------------------------------------------------------------

procedure TStar.SetPointsAroundCirc(StartPtIdx: integer; NewPt: TPoint);
var
  i, radius: integer;
  angle_increment, angle_offset: single;
  mp: TPoint;
  tmpPts: array of TPoint;
begin
  mp := ScreenToClient(fMidPtInScreenCoords);
  if PointsEqual(NewPt, mp) then exit;
  radius := round(sqrt(SquaredDistBetweenPoints(NewPt,mp)));

  if fBoringStar then
  begin
    setLength(tmpPts, ButtonCount);
    SetPointsAroundCircle(ScreenToClient(fMidPtInScreenCoords),
      radius, ButtonCount, tmpPts);
    if Odd(StartPtIdx) then
      for i := 0 to (ButtonCount div 2) -1 do
        BtnPoints[i*2 +1] := tmpPts[i*2+1]
    else
        for i := 0 to (ButtonCount div 2) -1 do
          BtnPoints[i*2] := tmpPts[i*2];
  end else
  begin
    angle_increment := PI_Mul2 / ButtonCount;
    angle_offset := GetAnglePt2FromPt1(mp, NewPt) - angle_increment*StartPtIdx;
    if odd(StartPtIdx) then
      i := 1 else
      i := 0;
    while i < ButtonCount do
    begin
      BtnPoints[i] := GetPtOnCircleFromAngle(radius, i*angle_increment + angle_offset);
      OffsetPt(BtnPoints[i], mp.X, mp.Y);
      inc(i,2);
    end;
  end;
end;
//------------------------------------------------------------------------------

procedure TStar.MouseDown(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited;
  fMidPtInScreenCoords := ClientToScreen(ObjectMidPoint);
end;
//------------------------------------------------------------------------------

procedure TStar.InternalBtnMove(BtnIdx: integer; NewPt: TPoint);
begin
  SetPointsAroundCirc(BtnIdx, NewPt);
  ResizeNeeded;
end;
//------------------------------------------------------------------------------

initialization
  RegisterDrawObjClasses;
finalization
  FreeAndNil(fDummyStrings);

end.
