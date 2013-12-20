unit vgTypes;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "VGScene"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/external/VGScene/vgTypes.pas"
// Начат: 10.02.2011 20:32
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Interfaces::Category>> Shared Delphi::VGScene::vgTypes
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\common\components\rtl\external\VGScene\vg_define.inc}

interface

{$If not defined(NoVGScene)}
uses
  Classes,
  Controls
  ;

type
 TvgPoint = packed record
   X : single;
   Y : single;
 end;//TvgPoint

 TvgRectLTRB = packed record
   Left : single;
   Top : single;
   Right : single;
   Bottom : single;
 end;//TvgRectLTRB

 TvgRectPoints = packed record
   TopLeft : TvgPoint;
   BottomRight : TvgPoint;
 end;//TvgRectPoints

 TvgRect = packed record
  Case Integer of
   0: (Left: single;
 Top: single;
 Right: single;
 Bottom: single;);
   1: (TopLeft: TvgPoint;
 BottomRight: TvgPoint;);
 end;//TvgRect

 TvgAnimationType = (
   vgAnimationIn
 , vgAnimationOut
 , vgAnimationInOut
 );//TvgAnimationType

 TvgInterpolationType = (
   vgInterpolationLinear
 , vgInterpolationQuadratic
 , vgInterpolationCubic
 , vgInterpolationQuartic
 , vgInterpolationQuintic
 , vgInterpolationSinusoidal
 , vgInterpolationExponential
 , vgInterpolationCircular
 , vgInterpolationElastic
 , vgInterpolationBack
 , vgInterpolationBounce
 );//TvgInterpolationType

 TvgAlign = (
   vaNone
 , vaTopLeft
 , vaTopRight
 , vaBottomLeft
 , vaBottomRight
 , vaTop
 , vaLeft
 , vaRight
 , vaBottom
 , vaMostTop
 , vaMostBottom
 , vaMostLeft
 , vaMostRight
 , vaClient
 , vaContents
 , vaCenter
 , vaVertCenter
 , vaHorzCenter
 , vaHorizontal
 , vaVertical
 , vaScale
 , vaFit
 , vaFitLeft
 , vaFitRight
 );//TvgAlign

 TvgDragMode = (
   vgDragManual
 , vgDragAutomatic
 );//TvgDragMode

 TvgDragObject = record
   Source : TObject;
   Files : array of WideString;
   Data : Variant;
 end;//TvgDragObject

 TvgDragEnterEvent = procedure (Sender: TObject;
  const Data: TvgDragObject;
  const Point: TvgPoint) of object;

 TvgDragOverEvent = procedure (Sender: TObject;
  const Data: TvgDragObject;
  const Point: TvgPoint;
  var Accept: Boolean) of object;

 TvgDragDropEvent = procedure (Sender: TObject;
  const Data: TvgDragObject;
  const Point: TvgPoint) of object;

 TvgCanFocusedEvent = procedure (Sender: TObject;
  var ACanFocused: Boolean) of object;

 TvgProcessTickEvent = procedure (Sender: TObject;
  time: single;
  deltaTime: single) of object;

 TvgMouseEvent = procedure (Sender: TObject;
  Button: TMouseButton;
  Shift: TShiftState;
  X: single;
  Y: single) of object;

 TvgMouseMoveEvent = procedure (Sender: TObject;
  Shift: TShiftState;
  X: single;
  Y: single;
  Dx: single;
  Dy: single) of object;

 TvgMouseWheelEvent = procedure (Sender: TObject;
  Shift: TShiftState;
  WheelDelta: Integer;
  const MousePos: TvgPoint;
  var Handled: Boolean) of object;

 TvgKeyEvent = procedure (Sender: TObject;
  var Key: Word;
  var KeyChar: WideChar;
  Shift: TShiftState) of object;

 TvgCorner = (
   vgCornerTopLeft
 , vgCornerTopRight
 , vgCornerBottomLeft
 , vgCornerBottomRight
 );//TvgCorner

 TvgCorners = set of TvgCorner;

 TvgCornerType = (
   vgCornerRound
 , vgCornerBevel
 , vgCornerInnerRound
 , vgCornerInnerLine
 );//TvgCornerType

 TvgSide = (
   vgSideTop
 , vgSideLeft
 , vgSideBottom
 , vgSideRight
 );//TvgSide

 TvgSides = set of TvgSide;

 TFromZeroToTwoRange = 0..2;

 TvgVectorArray = array [TFromZeroToTwoRange] of single;

 TvgVectorStruct = record
   X : single;
   Y : single;
   W : single;
 end;//TvgVectorStruct

 TvgVector = packed record
  Case Integer of
   0: (V: TvgVectorArray);
   1: (X: single;
 Y: single;
 W: single;);
 end;//TvgVector

 TvgMatrixStruct = record
   m11 : single;
   m12 : single;
   m13 : single;
   m21 : single;
   m22 : single;
   m23 : single;
   m31 : single;
   m32 : single;
   m33 : single;
 end;//TvgMatrixStruct

 TvgPolygon = array of TvgPoint;

 PvgPolygon = ^TvgPolygon;

 TvgColor = System.Cardinal;

 TFromZeroToZeroRange = 0..0;

 TFromZeroToFourRange = 0..4;

 TvgColorArray = array [TFromZeroToFourRange] of TvgColor;

 TvgColorRecStructW = record
   HiWord : Word;
   LoWord : Word;
 end;//TvgColorRecStructW

 TvgColor24 = packed record
   R : Byte;
   G : Byte;
   B : Byte;
 end;//TvgColor24

 TvgColor24Array = array [TFromZeroToZeroRange] of TvgColor24;

 PvgColor24Array = ^TvgColor24Array;

 TvgColorRecStructB = record
   {$If defined(FPC_BIG_ENDIAN) AND not defined(NoVGScene)}
   A : Byte;
   {$IfEnd} //FPC_BIG_ENDIAN AND not NoVGScene
   {$If defined(FPC_BIG_ENDIAN) AND not defined(NoVGScene)}
   R : Byte;
   {$IfEnd} //FPC_BIG_ENDIAN AND not NoVGScene
   {$If defined(FPC_BIG_ENDIAN) AND not defined(NoVGScene)}
   G : Byte;
   {$IfEnd} //FPC_BIG_ENDIAN AND not NoVGScene
   {$If defined(FPC_BIG_ENDIAN) AND not defined(NoVGScene)}
   B : Byte;
   {$IfEnd} //FPC_BIG_ENDIAN AND not NoVGScene
   {$If not defined(FPC_BIG_ENDIAN) AND not defined(NoVGScene)}
   B : Byte;
   {$IfEnd} //not FPC_BIG_ENDIAN AND not NoVGScene
   {$If not defined(FPC_BIG_ENDIAN) AND not defined(NoVGScene)}
   G : Byte;
   {$IfEnd} //not FPC_BIG_ENDIAN AND not NoVGScene
   {$If not defined(FPC_BIG_ENDIAN) AND not defined(NoVGScene)}
   R : Byte;
   {$IfEnd} //not FPC_BIG_ENDIAN AND not NoVGScene
   {$If not defined(FPC_BIG_ENDIAN) AND not defined(NoVGScene)}
   A : Byte;
   {$IfEnd} //not FPC_BIG_ENDIAN AND not NoVGScene
 end;//TvgColorRecStructB

 PvgColorArray = ^TvgColorArray;

 PvgColor = ^TvgColor;

 TvgColorRec = packed record
  Case Integer of
   0: (Color: TvgColor);
   1: (HiWord: Word;
 LoWord: Word;);
   2: (
 {$If defined(FPC_BIG_ENDIAN) AND not defined(NoVGScene)}
 A: Byte;
 {$IfEnd} //FPC_BIG_ENDIAN AND not NoVGScene
 {$If defined(FPC_BIG_ENDIAN) AND not defined(NoVGScene)}
 R: Byte;
 {$IfEnd} //FPC_BIG_ENDIAN AND not NoVGScene
 {$If defined(FPC_BIG_ENDIAN) AND not defined(NoVGScene)}
 G: Byte;
 {$IfEnd} //FPC_BIG_ENDIAN AND not NoVGScene
 {$If defined(FPC_BIG_ENDIAN) AND not defined(NoVGScene)}
 B: Byte;
 {$IfEnd} //FPC_BIG_ENDIAN AND not NoVGScene
 
 {$If not defined(FPC_BIG_ENDIAN) AND not defined(NoVGScene)}
 B: Byte;
 {$IfEnd} //not FPC_BIG_ENDIAN AND not NoVGScene
 {$If not defined(FPC_BIG_ENDIAN) AND not defined(NoVGScene)}
 G: Byte;
 {$IfEnd} //not FPC_BIG_ENDIAN AND not NoVGScene
 {$If not defined(FPC_BIG_ENDIAN) AND not defined(NoVGScene)}
 R: Byte;
 {$IfEnd} //not FPC_BIG_ENDIAN AND not NoVGScene
 {$If not defined(FPC_BIG_ENDIAN) AND not defined(NoVGScene)}
 A: Byte;
 {$IfEnd} //not FPC_BIG_ENDIAN AND not NoVGScene
 );
 end;//TvgColorRec

 TvgWrapMode = (
   vgWrapTile
 , vgWrapTileOriginal
 , vgWrapTileStretch
 );//TvgWrapMode

 TvgMatrixArray = array [TFromZeroToTwoRange] of TvgVector;

 TvgMatrix = packed record
  Case Integer of
   0: (M: TvgMatrixArray);
   1: (m11: single;
 m12: single;
 m13: single;
 m21: single;
 m22: single;
 m23: single;
 m31: single;
 m32: single;
 m33: single;);
 end;//TvgMatrix

 PvgColorRec = ^TvgColorRec;

 TvgColorRecArray = array [TFromZeroToZeroRange] of TvgColorRec;

 PvgColorRecArray = ^TvgColorRecArray;

const
  { vgTypesConstants }
 cPI : single = 3.141592654;
 cPIdiv180 : single = 0.017453292;
 c180divPI : single = 57.29577951;
 c2PI : single = 6.283185307;
 cPIdiv2 : single = 1.570796326;
 cPIdiv4 : single = 0.785398163;
 c3PIdiv4 : single = 2.35619449;
 cInv2PI : single = 1/6.283185307;
 cInv360 : single = 1/360;
 c180 : single = 180;
 c360 : single = 360;
 cOneHalf : single = 0.5;
 Epsilon : single = 1e-40;
 AllCorners : TvgCorners = [vgCornerTopLeft, vgCornerTopRight, vgCornerBottomLeft, vgCornerBottomRight];
 AllSides : TvgSides = [vgSideTop,vgSideLeft,vgSideBottom,vgSideRight];
 ClosePolygon : TvgPoint = (X: $FFFF; Y: $FFFF);
 CurveKappa = 0.5522847498;
 CurveKappaInv = 1 - CurveKappa;
 vgWideNull = System.WideChar(#0);
 vgWideTabulator = System.WideChar(#9);
 vgWideSpace = System.WideChar(#32);
 vgWideCarriageReturn = System.WideChar($D);
 vgWideLineFeed = System.WideChar($A);
 vgWideVerticalTab = System.WideChar($B);
 vgWideFormFeed = System.WideChar($C);
 vgWideLineSeparator = System.WideChar($2028);
 vgWideParagraphSeparator = System.WideChar($2029);
 BOM_LSB_FIRST = System.WideChar($FEFF);
 BOM_MSB_FIRST = System.WideChar($FFFE);

const
  { vgTypesConstants2 }
 IdentityMatrix : TvgMatrix = (m11:1.0;m12:0.0;m13:0.0;m21:0.0;m22:1.0;m23:0.0; m31:0.0;m32:0.0;m33:1.0);
 ZeroMatrix : TvgMatrix = (m11:0.0;m12:0.0;m13:0.0;m21:0.0;m22:0.0;m23:0.0;m31:0.0;m32:0.0;m33:0.0);
 NullRect : TvgRect = (Left: 0; Top: 0; Right: 0; Bottom: 0);
{$IfEnd} //not NoVGScene

implementation

end.