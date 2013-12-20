unit l3Units;
{* Модуль описывающий работу с различными единицами измерения. }

{ Библиотека "Эверест" }
{ Автор: Люлин А.В. ©  }
{ Модуль: l3Units - работа с различными единицами измерения}
{ Начат: 12.12.96 }
{ $Id: l3Units.pas,v 1.29 2013/05/24 15:59:50 lulin Exp $ }

// $Log: l3Units.pas,v $
// Revision 1.29  2013/05/24 15:59:50  lulin
// - пытаемся портироваться под XE4.
//
// Revision 1.28  2012/06/14 10:19:19  dinishev
// {Requestlink:371197572}
//
// Revision 1.27  2011/11/01 10:12:14  lulin
// {RequestLink:290953660}
//
// Revision 1.26  2011/10/14 15:23:34  dinishev
// {Requestlink:281520291}
//
// Revision 1.25  2011/07/20 11:16:03  lulin
// {RequestLink:228688745}.
//
// Revision 1.24  2010/01/19 20:16:33  lulin
// {RequestLink:178717800}. Заготовочка.
//
// Revision 1.23  2008/08/26 11:22:08  lulin
// - чистка кода.
//
// Revision 1.22  2008/02/27 17:25:04  lulin
// - подгоняем код под модель.
//
// Revision 1.21  2007/11/28 13:59:46  dinishev
// Bug fix: возникало переполнение
//
// Revision 1.20  2007/08/14 19:31:59  lulin
// - оптимизируем очистку памяти.
//
// Revision 1.19  2007/04/02 06:17:55  lulin
// - убрана неправильная зависимость.
//
// Revision 1.18  2006/11/03 11:00:47  lulin
// - объединил с веткой 6.4.
//
// Revision 1.17.4.1  2006/10/20 09:40:45  lulin
// - cleanup.
//
// Revision 1.17  2006/06/06 13:47:57  lulin
// - стараемся уменьшить число вызовов GDI.
//
// Revision 1.16  2005/05/27 12:06:04  lulin
// - убраны лишние зависимости.
//
// Revision 1.15  2005/05/26 16:01:48  lulin
// - избавил базовую канву вывода от знания о константах Эвереста.
//
// Revision 1.14  2005/05/24 12:48:20  lulin
// - для канвы используем интерфейс, а не объект.
//
// Revision 1.13  2005/04/16 11:41:27  lulin
// - слил с веткой. Теперь из ветки можно вытягивать ТОЛЬКО Everest.
//
// Revision 1.12.2.1  2005/04/13 10:20:04  lulin
// - cleanup.
//
// Revision 1.12  2005/02/22 12:27:44  lulin
// - рефакторинг работы с Tl3Point и Tl3Rect.
//
// Revision 1.11  2004/12/04 11:40:38  mmorozov
// new: overload function l3SRect;
//
// Revision 1.10  2003/11/13 11:53:48  law
// - new method: Tl3Point.IsNull.
//
// Revision 1.9  2003/09/17 14:12:59  law
// - bug fix: integer overflow, кода отрисовывается закрывающееся окно (OIT500004649).
//
// Revision 1.8  2003/05/22 13:10:10  law
// - cleanup.
//
// Revision 1.7  2003/05/21 15:55:59  law
// - new behavior: правую границу блока рисуем "в бесконечности".
//
// Revision 1.6  2003/04/15 13:26:49  law
// - new unit: evUnits.
//
// Revision 1.5  2002/09/18 07:24:03  law
// - cleanup: evDefine.inc -> l3Define.inc.
//
// Revision 1.4  2002/07/23 15:26:58  law
// - rename proc: evRectBnd -> l3RectBnd.
//
// Revision 1.3  2002/07/11 12:03:15  law
// - rename proc: evPoint -> l3Point, evRect -> l3Rect.
//
// Revision 1.2  2002/07/11 07:06:21  law
// - new behavior: защита от экспериментаторов и пидарасов.
//
// Revision 1.1  2002/07/09 12:49:23  law
// - rename unit: evUnits -> l3Units.
//
// Revision 1.34  2002/07/09 11:12:42  law
// - new type: Tl3Inch.
//
// Revision 1.33  2002/01/08 13:54:14  law
// - rename type: TevOrientation -> Tl3Orientation.
//
// Revision 1.32  2002/01/05 11:09:36  law
// - cleanup.
//
// Revision 1.31  2001/11/23 17:25:21  law
// - cleanup.
//
// Revision 1.30  2001/09/19 15:55:21  law
// - new behavior: начата работа над возможностью сворачивать и разворачивать блоки документа.
//
// Revision 1.29  2001/09/07 08:53:02  law
// - rename procedures: evPointX -> l3PointX, evPointY -> l3PointY.
//
// Revision 1.28  2001/08/31 12:59:06  law
// - comments & cleanup.
//
// Revision 1.27  2001/08/31 08:50:07  law
// - cleanup: первые шаги к кроссплатформенности.
//
// Revision 1.26  2001/07/27 15:46:04  law
// - comments: xHelpGen.
//
// Revision 1.25  2001/04/20 14:03:52  law
// - cleanup: def_cm* => def_inch*, evCm2Pixel -> evCm2Inch.
//
// Revision 1.24  2001/04/20 11:19:14  law
// - new const: добавлены константы def_inch*.
//
// Revision 1.23  2001/04/05 08:57:37  law
// - cleanup: использование модулей WinTypes и WinProcs заменен на Windows.
//
// Revision 1.22  2001/03/27 08:01:58  law
// - TevPoint -> Tl3Point, TevRect -> Tl3Rect.
//
// Revision 1.21  2001/03/11 17:08:22  law
// - дописаны комментарии для XHelpGen.
//
// Revision 1.20  2001/02/27 17:11:35  law
// - дописаны комментарии.
//
// Revision 1.19  2000/12/15 15:10:39  law
// - вставлены директивы Log.
//

{$Include l3Define.inc }

interface

uses
  Windows,
  
  l3Types,
  l3Interfaces
  ;

type
  Tl3ConvertPointProc = function (const Pt: TPoint): TPoint of object;
    {* Тип процедур для конвертации точек. }

  {$IfDef XE4}
  Tl3SPoint = Tl3_SPoint;
  {$Else  XE4}
  Tl3SPoint = packed object(Tl3_SPoint)
   {* Точка с координатами в пикселях (на экране). }
    public
    // public methods
      procedure Init(aX, aY: Long);
        {* - инициализирует точку. }
      procedure Inc(const Pt: Tl3_SPoint);
        {* - прибавляет Pt к Self. }
      procedure Dec(const Pt: Tl3_SPoint);
        {* - отнимает Pt от Self. }
      function  Add(const Pt: Tl3_SPoint): Tl3SPoint;
        {* - складывает Self с P и возвращает полученное значение. }
      function  Sub(const Pt: Tl3_SPoint): Tl3SPoint;
        {* - вычитает P из Self и возвращает полученное значение. }
      function EQ(const Pt: Tl3_SPoint): Bool;
        {* - проверяет равенство двух точек. }
      function  Neg: Tl3SPoint;
        {* - возвращает точку отраженную через начало координат. }
      function  GetCursorPos: Bool;
        {* - инициализирует точку значением начала координат курсора мыши. }
      function  Zoom(Z: sInt16): Tl3SPoint;
        {* - увеличивает координаты вектора на Z % и возвращает Result. }
      function  Dezoom(Z: sInt16): Tl3SPoint;
        {* - уменьшает координаты вектора на Z % и возвращает Result. }
      procedure MakeZoom(Z: sInt16);
        {* - увеличивает координаты вектора на Z %. }
      procedure MakeDezoom(Z: sInt16);
        {* - уменьшает координаты вектора на Z %. }
      function  Convert(CP: Tl3ConvertPointProc): Tl3SPoint;
        {* - конвертирует точку процедурой CP. }
  end;//Tl3SPoint
  {$EndIf XE4}

  Tl3_SRect = {$IfDef XE4}packed record{$Else}packed object{$EndIf}
    public
    {public fields}
      R : packed record
        Case Byte of
         0: (Left, Top, Right, Bottom : Integer);
         1: (TopLeft, BottomRight: Tl3SPoint);
         2: (bRt: array [Bool] of Tl3SPoint);
         3: (WR: Windows.TRect);
      end;{R}
    public
    // public properties
      property Left: Long
        read R.Left
        write R.Left;
        {-}
      property Right: Long
        read R.Right
        write R.Right;
        {-}
      property Top: Long
        read R.Top
        write R.Top;
        {-}
      property Bottom: Long
        read R.Bottom
        write R.Bottom;
        {-}
      property TopLeft: Tl3SPoint
        read R.TopLeft
        write R.TopLeft;
        {-}
      property BottomRight: Tl3SPoint
        read R.BottomRight
        write R.BottomRight;
        {-}
    {$Ifdef XE4}
    public
    // public methods
      procedure InitPoint(const P1, P2: TPoint);
        {* - инициализирует прямоугольник типом TPoint. }
      procedure InitRect(const Rect: Windows.TRect);
        {* - инициализирует прямоугольник типом Windows.TRect. }
      function  IntersectsWith(const Rt: Tl3_SRect): Bool;
        {* - проверяет пересечение Self с Rt. }
      function  InitClientRect(Wnd: hWnd): Bool;
        {* - инициализирует прямоугольник клиентской областью Wnd. }
      procedure OffsetPt(const Pt: Tl3SPoint);
        {* - сдвинуть прямоугольник на Pt. }
      procedure Offset(aX, aY: Long);
        {* - сдвинуть прямоугольник на (X, Y). }
      function  ContainsPt(const Pt: Tl3SPoint): Bool;
        {* - содержит ли прямоугольник точку Pt. }
      procedure InflatePt(const Pt: Tl3SPoint);
        {* - увеличивает размеры прямоугольника на P. }
      procedure Inflate(X, Y: Long);
        {* - увеличивает размеры прямоугольника на (X, Y). }
      procedure Inflate1(X: Long);
        {* - увеличивает размеры прямоугольника на (X, X). }
      function  IsEmpty: Bool;
        {* - проверяет не пустой ли прямоугольник. }
      function  Invert(DC: hDC): Bool;
        {* - инвертировать прямоугольник на DC. }
      function  CreateRgn: Tl3Rgn;
        {* - создать регион содержащий данный прямоугольник. }
      function  EQ(const Rt: Tl3_SRect): Bool;
        {* - проверяет равенство двух прямоугольников. }
      procedure MakeZoom(Z: sInt16);
        {* - увеличивает координаты прямоугольника на Z %. }
      procedure MakeDezoom(Z: sInt16);
        {* - уменьшает координаты прямоугольника на Z %. }
      function  Invalidate(Wnd: hWnd; Erase: Bool): Bool;
        {* - метит прямоугольник в окне Wnd для обновления. }
      function  GetRgn(Rgn: Tl3Rgn): Integer;
        {* - инициализирует прямоугольник максимальными размерами региона Rgn. }
      function  IntersectClip(DC: hDC): Integer;
        {* - устанавливает область отсечения контексту DC.}
      function  GetClip(DC: hDC): Bool;
        {* -инициализирут прямоугольник значением области отсечения. }
      function  AddPt(const Pt: Tl3SPoint): Tl3_SRect;
        {* - сдвинуть прямоугольник на Pt и вернуть Result. }
      function  SubPt(const Pt: Tl3SPoint): Tl3_SRect;
        {* - сдвинуть прямоугольник на -Pt и вернуть Result. }
    {$EndIf XE4}
  end;//Tl3_SRect

  {$IfDef XE4}
  Tl3SRect = Tl3_SRect;
  {$Else  XE4}
  Tl3SRect = packed object(Tl3_SRect)
   {* Прямоугольник с координатами в пикселях (на экране). }
    public
    {public methods}
      procedure InitPoint(const P1, P2: TPoint);
        {* - инициализирует прямоугольник типом TPoint. }
      procedure InitRect(const Rect: Windows.TRect);
        {* - инициализирует прямоугольник типом Windows.TRect. }
      function  IntersectsWith(const Rt: Tl3_SRect): Bool;
        {* - проверяет пересечение Self с Rt. }
      function  InitClientRect(Wnd: hWnd): Bool;
        {* - инициализирует прямоугольник клиентской областью Wnd. }
      procedure OffsetPt(const Pt: Tl3SPoint);
        {* - сдвинуть прямоугольник на Pt. }
      procedure Offset(aX, aY: Long);
        {* - сдвинуть прямоугольник на (X, Y). }
      function  ContainsPt(const Pt: Tl3SPoint): Bool;
        {* - содержит ли прямоугольник точку Pt. }
      procedure InflatePt(const Pt: Tl3SPoint);
        {* - увеличивает размеры прямоугольника на P. }
      procedure Inflate(X, Y: Long);
        {* - увеличивает размеры прямоугольника на (X, Y). }
      procedure Inflate1(X: Long);
        {* - увеличивает размеры прямоугольника на (X, X). }
      function  IsEmpty: Bool;
        {* - проверяет не пустой ли прямоугольник. }
      function  Invert(DC: hDC): Bool;
        {* - инвертировать прямоугольник на DC. }
      function  CreateRgn: Tl3Rgn;
        {* - создать регион содержащий данный прямоугольник. }
      function  EQ(const Rt: Tl3_SRect): Bool;
        {* - проверяет равенство двух прямоугольников. }
      procedure MakeZoom(Z: sInt16);
        {* - увеличивает координаты прямоугольника на Z %. }
      procedure MakeDezoom(Z: sInt16);
        {* - уменьшает координаты прямоугольника на Z %. }
      function  Invalidate(Wnd: hWnd; Erase: Bool): Bool;
        {* - метит прямоугольник в окне Wnd для обновления. }
      function  GetRgn(Rgn: Tl3Rgn): Integer;
        {* - инициализирует прямоугольник максимальными размерами региона Rgn. }
      function  IntersectClip(DC: hDC): Integer;
        {* - устанавливает область отсечения контексту DC.}
      function  GetClip(DC: hDC): Bool;
        {* -инициализирут прямоугольник значением области отсечения. }
      function  AddPt(const Pt: Tl3SPoint): Tl3SRect;
        {* - сдвинуть прямоугольник на Pt и вернуть Result. }
      function  SubPt(const Pt: Tl3SPoint): Tl3SRect;
        {* - сдвинуть прямоугольник на -Pt и вернуть Result. }
  end;//Tl3SRect
  {$EndIf XE4}

  {$IfDef XE4}
  Tl3Point = Tl3_Point;
  {$Else  XE4}
  Tl3Point = packed object(Tl3_Point)
   {* Точка с координатами в дюймах (мировые координаты). }
    public
    // public methods
      procedure Init(aX, aY: Tl3Inch);
        {* - инициализирует точку. }
      function  IsNull: Boolean;
        {-}
      function Add(const Pt: Tl3_Point): Tl3Point;
        {* - складывает Self с P и возвращает полученное значение. }
      function Sub(const Pt: Tl3_Point): Tl3Point;
        {* - вычитает P из Self и возвращает полученное значение. }
      function Mul(const Pt: Tl3_Point): Tl3Point;
        {* - умножает Self на P и возвращает полученное значение. }
      function Divide(const Pt: Tl3_Point): Tl3Point;
      function EQ(const Pt: Tl3_Point): Boolean;
        {* - проверяет равенство двух точек. }
      function Neg: Tl3Point;
        {* - возвращает точку отраженную через начало координат. }
      function e(aVert: Boolean): Tl3Point;
        {-}
      function eX: Tl3Point;
        {* - возвращает вектор параллельный оси X "длиной" Self.X. }
      function e_X: Tl3Point;
        {* - возвращает вектор параллельный оси X "длиной" -Self.X. }
      function eY: Tl3Point;
        {* - возвращает вектор параллельный оси Y "длиной" Self.Y. }
      function e_Y: Tl3Point;
        {* - возвращает вектор параллельный оси Y "длиной" -Self.Y. }
      function Zoom(Z: sInt16): Tl3Point;
        {* - увеличивает координаты вектора на Z % и возвращает Result. }
      function Dezoom(Z: sInt16): Tl3Point;
        {* - уменьшает координаты вектора на Z % и возвращает Result. }
      procedure MakeZoom(Z: sInt16);
        {* - увеличивает координаты вектора на Z %. }
  end;//Tl3Point
  {$EndIf XE4}

  {$IfDef XE4}
  Tl3Rect = Tl3_Rect;
  {$Else  XE4}
  Tl3Rect = packed object(Tl3_Rect)
   {* Прямоугольник с координатами в дюймах (мировые координаты). }
    protected
    // property methods
      function  pm_GetTopLeft: Tl3Point;
      procedure pm_SetTopLeft(const aValue: Tl3Point);
        {-}
      function  pm_GetBottomRight: Tl3Point;
      procedure pm_SetBottomRight(const aValue: Tl3Point);
        {-}
    public
    // public methods
      procedure Inflate(const Pt: Tl3Point);
        overload;
        {* - увеличивает размеры прямоугольника на P. }
      procedure Inflate(X, Y: Tl3Inch);
        overload;
        {* - увеличивает размеры прямоугольника на (X, Y). }
      procedure OffsetPt(const Pt: Tl3Point);
        {* - сдвинуть прямоугольник на Pt. }
      procedure Offset(aX, aY: Tl3Inch);
        {* - сдвинуть прямоугольник на (X, Y). }
      function  ContainsPt(const Pt: Tl3_Point): Bool;
        {* - содержит ли прямоугольник точку Pt? }
      function  EQ(const Rt: Tl3_Rect): Bool;
        {* - проверяет равенство двух прямоугольников. }
      function  AddPt(const Pt: Tl3Point): Tl3Rect;
        {* - сдвинуть прямоугольник на Pt и вернуть Result. }
      function  SubPt(const Pt: Tl3Point): Tl3Rect;
        {* - сдвинуть прямоугольник на -Pt и вернуть Result. }
      function  IntersectsWith(const Rt: Tl3_Rect): Bool;
        {* - проверяет пересечение Self с Rt. }
      procedure MakeZoom(Z: sInt16);
        {* - увеличивает координаты вектора на Z %. }
    public
    // public properties
      property TopLeft: Tl3Point
        read pm_GetTopLeft
        write pm_SetTopLeft;
        {-}
      property BottomRight: Tl3Point
        read pm_GetBottomRight
        write pm_SetBottomRight;
        {-}
  end;//Tl3Rect
  {$EndIf XE4}

function l3Point(X, Y: Long): Tl3Point;
function l3Rect(aLeft, aTop, aRight, aBottom: Long): Tl3Rect;
  overload;
function l3Rect(const TopLeft, BottomRight: Tl3_Point): Tl3Rect;
  overload;
function l3RectBnd(const TopLeft, Extent: Tl3_Point): Tl3Rect;
function l3SRectBnd(const TopLeft, Extent: Tl3_SPoint): Tl3SRect;
function l3SPoint(X, Y: Integer): Tl3SPoint;
  {* - "конструктор" для Tl3SPoint. }
function l3SBounds(ALeft, ATop, AWidth, AHeight: Integer): Tl3SRect;
  {-}
function l3SRect(Left, Top, Right, Bottom: Long): Tl3SRect;
  overload;
function l3SRect(const TopLeft, BottomRight: Tl3SPoint): Tl3SRect;
  overload;
function l3SRect(aRect : TRect) : Tl3SRect;
  overload;
function l3Point1(X: Long): Tl3Point;
function l3PointX(X: Long): Tl3Point;
function l3PointY(Y: Long): Tl3Point;
function l3PointD0(A, B: Long; D: Bool): Tl3Point;
function Point1(X: Long): Tl3SPoint;
function PointX(X: Long): Tl3SPoint;
function PointY(Y: Long): Tl3SPoint;

function evInchZoom(Zoom: sInt16; Inch: Long): Long;
function evInchDezoom(Zoom: sInt16; Inch: Long): Long;

function evPixelZoom(Zoom: sInt16; Pixel: Long): Long;
function evPixelDezoom(Zoom: sInt16; Pixel: Long): Long;

function evZoom(Zoom: sInt16; Value: Long): Long;
function evDezoom(Zoom: sInt16; Value: Long): Long;

function evIntersectRect(var DR: Tl3Rect; const SR1, SR2: Tl3Rect): Bool;
  {* - пересекает два прямоугольника. }
function l3IntersectRect(const SR1, SR2: Tl3Rect): Tl3Rect;
  overload;
function l3IntersectRect(const SR1, SR2: Tl3SRect): Tl3SRect;
  overload;
  {* - пересекает два прямоугольника. }

const
 l3Point0 : Tl3Point = (P: (X: 0; Y: 0));
 l3Point_1 : Tl3Point = (P: (X: -1; Y: -1));
 l3SPoint0 : Tl3SPoint = (P: (X: 0; Y: 0));
 l3Rect0  : Tl3Rect = (R: (Left: 0; Top: 0; Right: 0; Bottom: 0));
 l3SRect1 : Tl3SRect = (R: (Left: 0; Top: 0; Right: 1; Bottom: 1));
 l3SRect0 : Tl3SRect = (R: (Left: 0; Top: 0; Right: 0; Bottom: 0));

implementation

uses
  l3MinMax,
  l3Math,
  l3Const,
  l3Base
  ;

function evIntersectRect(var DR: Tl3Rect; const SR1, SR2: Tl3Rect): Bool;
begin
 with DR do
 begin
  R.Top := Max(SR1.R.Top, SR2.R.Top);
  R.Bottom := Min(SR1.R.Bottom, SR2.R.Bottom);
  Result := (R.Top < R.Bottom);
  if Result then
  begin
   R.Left := Max(SR1.R.Left, SR2.R.Left);
   R.Right := Min(SR1.R.Right, SR2.R.Right);
   Result := (R.Left < R.Right);
  end;//Result
  if not Result then
   l3FillChar(DR, SizeOf(DR));
 end;//with DR
end;

function l3IntersectRect(const SR1, SR2: Tl3Rect): Tl3Rect;
  {* - пересекает два прямоугольника. }
var
 l_Res : Boolean;
begin
 with Result do
 begin
  R.Top := Max(SR1.R.Top, SR2.R.Top);
  R.Bottom := Min(SR1.R.Bottom, SR2.R.Bottom);
  l_Res := (R.Top < R.Bottom);
  if l_Res then
  begin
   R.Left := Max(SR1.R.Left, SR2.R.Left);
   R.Right := Min(SR1.R.Right, SR2.R.Right);
   l_Res := (R.Left < R.Right);
  end;//l_Res
 end;//with Result
 if not l_Res then
  l3FillChar(Result, SizeOf(Result));
end;

function l3IntersectRect(const SR1, SR2: Tl3SRect): Tl3SRect;
  {* - пересекает два прямоугольника. }
begin
 Windows.IntersectRect(Result.R.WR, SR1.R.WR, SR2.R.WR);
end;

function evZoom(Zoom: sInt16; Value: Long): Long;
begin
 if (Zoom <> 100) then
  Result := l3MulDiv(Value, Zoom, 100)
 else
  Result := Value;
end;

function evDezoom(Zoom: sInt16; Value: Long): Long;
begin
 if (Zoom <> 100) AND (Zoom > 0) then
  Result := l3MulDiv(Value, 100, Zoom)
 else
  Result := Value;
end;

function evInchZoom(Zoom: sInt16; Inch: Long): Long;
  {-}
begin
 if (Zoom <> 100) then
  Result := l3MulDiv(Inch, Zoom, 100)
 else
  Result := Inch;
end;

function evInchDezoom(Zoom: sInt16; Inch: Long): Long;
  {-}
begin
 if (Zoom <> 100) AND (Zoom > 0) then
  Result := l3MulDiv(Inch, 100, Zoom)
 else
  Result := Inch;
end;

function evPixelZoom(Zoom: sInt16; Pixel: Long): Long;
  {-}
begin
 if (Zoom <> 100) then
  Result := l3MulDiv(Pixel, Zoom, 100)
 else
  Result := Pixel;
end;

function evPixelDezoom(Zoom: sInt16; Pixel: Long): Long;
  {-}
begin
 if (Zoom <> 100) AND (Zoom > 0) then
  Result := l3MulDiv(Pixel, 100, Zoom)
 else
  Result := Pixel;
end;

function l3Point(X, Y: Long): Tl3Point;
begin
 Result.X := X;
 Result.Y := Y;
end;

function l3Point1(X: Long): Tl3Point;
begin
 Result.P.X := X;
 Result.P.Y := X;
end;

function l3PointX(X: Long): Tl3Point;
begin
 Result.P.X := X;
 Result.P.Y := 0;
end;

function l3PointY(Y: Long): Tl3Point;
begin
 Result.P.X := 0;
 Result.P.Y := Y;
end;

function l3PointD0(A, B: Long; D: Bool): Tl3Point;
begin
 Result.P.bPt[D] := A;
 Result.P.bPt[not D] := B;
end;

function Point1(X: Long): Tl3SPoint;
begin
 Result.P.X := X;
 Result.P.Y := X;
end;

function PointX(X: Long): Tl3SPoint;
begin
 Result.P.X := X;
 Result.P.Y := 0;
end;

function PointY(Y: Long): Tl3SPoint;
begin
 Result.P.X := 0;
 Result.P.Y := Y;
end;

function l3Rect(aLeft, aTop, aRight, aBottom: Long): Tl3Rect;
begin
 Result.R.Left := aLeft;
 Result.R.Right := aRight;
 Result.R.Top := aTop;
 Result.R.Bottom := aBottom;
end;

function l3Rect(const TopLeft, BottomRight: Tl3_Point): Tl3Rect;
begin
 Result.R.TopLeft := TopLeft;
 Result.R.BottomRight := BottomRight;
end;

function l3RectBnd(const TopLeft, Extent: Tl3_Point): Tl3Rect;
begin
 Result.R.TopLeft := TopLeft;
 Result.R.BottomRight := Tl3Point(TopLeft).Add(Extent);
end;

function l3SRectBnd(const TopLeft, Extent: Tl3_SPoint): Tl3SRect;
begin
 Result.R.TopLeft := Tl3SPoint(TopLeft);
 Result.R.BottomRight := Tl3SPoint(TopLeft).Add(Extent);
end;

function l3SPoint(X, Y: Integer): Tl3SPoint;
begin
 Result.P.X := X;
 Result.P.Y := Y;
end;

function l3SBounds(ALeft, ATop, AWidth, AHeight: Integer): Tl3SRect;
begin
  with Result do
  begin
    Left := ALeft;
    Top := ATop;
    Right := ALeft + AWidth;
    Bottom :=  ATop + AHeight;
  end;
end;

function l3SRect(Left, Top, Right, Bottom: Long): Tl3SRect;
begin
 Result.R.Left := Left;
 Result.R.Top := Top;
 Result.R.Right := Right;
 Result.R.Bottom := Bottom;
end;

function l3SRect(const TopLeft, BottomRight: Tl3SPoint): Tl3SRect;
begin
 Result.R.TopLeft := TopLeft;
 Result.R.BottomRight := BottomRight;
end;

function l3SRect(aRect : TRect) : Tl3SRect;
// overload;
begin
 Result.R.Left := aRect.Left;
 Result.R.Top := aRect.Top;
 Result.R.Right := aRect.Right;
 Result.R.Bottom := aRect.Bottom;
end;

{$IfNDef XE4}
// start object Tl3Point

procedure Tl3Point.Init(aX, aY: Long);
  {-инициализирует точку}
begin
 P.X := aX;
 P.Y := aY;
end;

function Tl3Point.IsNull: Boolean;
  {-}
begin
 Result := (P.X = 0) AND (P.Y = 0);
end;

function Tl3Point.Add(const Pt: Tl3_Point): Tl3Point;
  {-складывает Self с P}
begin
 Result.P.X := P.X + Pt.P.X;
 Result.P.Y := P.Y + Pt.P.Y;
end;

function Tl3Point.Sub(const Pt: Tl3_Point): Tl3Point;
  {-вычитает P из Self и возвращает полученное значение}
begin
 Result.P.X := P.X - Pt.P.X;
 Result.P.Y := P.Y - Pt.P.Y;
end;

function Tl3Point.Mul(const Pt: Tl3_Point): Tl3Point;
  {-умножает Self на P и возвращает полученное значение}
begin
 Result.Init(P.X * Pt.P.X, P.Y * Pt.P.Y);
end;

function Tl3Point.Divide(const Pt: Tl3_Point): Tl3Point;
begin
 Result.Init(P.X div Pt.P.X, P.Y div Pt.P.Y);
end;

function Tl3Point.EQ(const Pt: Tl3_Point): Bool;
  {-проверяет равенство двух точек}
begin
 Result := (P.X = Pt.P.X) AND (P.Y = Pt.P.Y);
end;

function Tl3Point.Neg: Tl3Point;
  {-возвращает точку отраженную через начало координат}
begin
 Result.Init(-P.X, -P.Y);
end;

function Tl3Point.e(aVert: Boolean): Tl3Point;
  {-}
begin
 Result.P.bPt[aVert] := P.bPt[aVert];
 Result.P.bPt[not aVert] := 0;
end;
  
function Tl3Point.eX: Tl3Point;
  {-возвращает вектор параллельный оси X "длиной" Self.X}
begin
 Result.Init(P.X, 0);
end;

function Tl3Point.e_X: Tl3Point;
  {-возвращает вектор параллельный оси X "длиной" -Self.X}
begin
 Result.Init(-P.X, 0);
end;

function Tl3Point.eY: Tl3Point;
  {-возвращает вектор параллельный оси X "длиной" Self.Y}
begin
 Result.Init(0, P.Y);
end;

function Tl3Point.e_Y: Tl3Point;
  {-возвращает вектор параллельный оси X "длиной" -Self.Y}
begin
 Result.Init(0, -P.Y);
end;

function Tl3Point.Zoom(Z: sInt16): Tl3Point;
  {-увеличивает координаты вектора на Z % и возвращает Result}
begin
 Result.Init(evZoom(Z, P.X), evZoom(Z, P.Y));
end;

function Tl3Point.Dezoom(Z: sInt16): Tl3Point;
  {-уменьшает координаты вектора на Z % и возвращает Result}
begin
 Result.Init(evDezoom(Z, P.X), evDezoom(Z, P.Y));
end;

procedure Tl3Point.MakeZoom(Z: sInt16);
  {-увеличивает координаты вектора на Z %}
begin
 P.X := evZoom(Z, P.X);
 P.Y := evZoom(Z, P.Y);
end;
{$EndIf XE4}

{$IfNDef XE4}
// start object Tl3Rect

procedure Tl3Rect.Inflate(const Pt: Tl3Point);
  {overload;}
  {-увеличивает размеры прямоугольника на P}
begin
 TopLeft := Tl3Point(R.TopLeft).Sub(Pt);
 BottomRight := Tl3Point(R.BottomRight).Add(Pt);
end;

procedure Tl3Rect.Inflate(X, Y: Long);
  {overload;}
  {-увеличивает размеры прямоугольника на (X, Y)}
begin
 Dec(R.Left, X);
 Inc(R.Right, X);
 Dec(R.Top, Y);
 Inc(R.Bottom, Y);
end;

procedure Tl3Rect.OffsetPt(const Pt: Tl3Point);
  {-сдвинуть прямоугольник на Pt}
begin
 TopLeft := Tl3Point(R.TopLeft).Add(Pt);
 BottomRight := Tl3Point(R.BottomRight).Add(Pt);
end;

procedure Tl3Rect.Offset(aX, aY: Long);
  {-сдвинуть прямоугольник на (X, Y)}
begin
 Inc(R.Top, aY);
 Inc(R.Bottom, aY);
 Inc(R.Left, aX);
 Inc(R.Right, aX);
end;

function Tl3Rect.ContainsPt(const Pt: Tl3_Point): Bool;
  {-содержит ли прямоугольник точку Pt}
begin
 with Pt do
  Result := ((P.X >= R.Left) AND (P.Y >= R.Top)) AND ((P.X < R.Right) AND (P.Y < R.Bottom));
end;

function Tl3Rect.EQ(const Rt: Tl3_Rect): Bool;
  {-проверяет равенство двух прямоугольников}
begin
 Result := Tl3Point(R.TopLeft).EQ(Rt.R.TopLeft) AND Tl3Point(R.BottomRight).EQ(Rt.R.BottomRight);
end;

function Tl3Rect.AddPt(const Pt: Tl3Point): Tl3Rect;
  {-сдвинуть прямоугольник на Pt и вернуть Result}
begin
 Result.R.Left := R.Left + Pt.P.X;
 Result.R.Right := R.Right + Pt.P.X;
 Result.R.Top := R.Top + Pt.P.Y;
 if R.Bottom = High(MaxInt) then
  Result.R.Bottom := High(Integer)
 else 
  Result.R.Bottom := R.Bottom + Pt.P.Y;
end;

function Tl3Rect.SubPt(const Pt: Tl3Point): Tl3Rect;
  {-сдвинуть прямоугольник на -Pt и вернуть Result}
begin
 Result.R.Left := R.Left - Pt.P.X;
 Result.R.Right := R.Right - Pt.P.X;
 Result.R.Top := R.Top - Pt.P.Y;
 Result.R.Bottom := R.Bottom - Pt.P.Y;
end;

function Tl3Rect.IntersectsWith(const Rt: Tl3_Rect): Bool;
  {-проверяет пересечение Self с Rt}
var
 OutR : Tl3Rect;
begin
 Result := evIntersectRect(OutR, Self, Tl3Rect(Rt));
end;

function Tl3Rect.pm_GetTopLeft: Tl3Point;
  {-}
begin
 Result := Tl3Point(R.TopLeft);
end;

procedure Tl3Rect.pm_SetTopLeft(const aValue: Tl3Point);
  {-}
begin
 R.TopLeft := aValue;
end;

function Tl3Rect.pm_GetBottomRight: Tl3Point;
  {-}
begin
 Result := Tl3Point(R.BottomRight);
end;

procedure Tl3Rect.pm_SetBottomRight(const aValue: Tl3Point);
  {-}
begin
 R.BottomRight := aValue;
end;
{$EndIf}

// start object Tl3SRect

procedure Tl3SRect.InitPoint(const P1, P2: TPoint);
  {-инициализирует прямоугольник типом TPoint}
begin
 R.Left   := P1.X;
 R.Top    := P1.Y;
 R.Right  := P2.X;
 R.Bottom := P2.Y;
end;

procedure Tl3SRect.InitRect(const Rect: Windows.TRect);
  {-инициализирует прямоугольник типом Windows.TRect}
begin
 R.WR := Rect;
end;

function Tl3SRect.IntersectsWith(const Rt: Tl3_SRect): Bool;
  {-проверяет пересечение Self с Rt}
var
 OutR : Windows.TRect;
begin
 Result := Bool(Windows.IntersectRect(OutR, R.WR, Rt.R.WR));
end;

function Tl3SRect.InitClientRect(Wnd: hWnd): Bool;
  {-инициализирует прямоугольник клиентской областью Wnd}
begin
 Windows.GetClientRect(Wnd, R.WR);
 Result := true;
end;

procedure Tl3SRect.OffsetPt(const Pt: Tl3SPoint);
  {-сдвинуть прямоугольник на Pt}
begin
 R.TopLeft.Inc(Pt);
 R.BottomRight.Inc(Pt);
end;

procedure Tl3SRect.Offset(aX, aY: Long);
  {-сдвинуть прямоугольник на (X, Y)}
begin
 Inc(R.Top, aY);
 Inc(R.Bottom, aY);
 Inc(R.Left, aX);
 Inc(R.Right, aX);
end;

function Tl3SRect.ContainsPt(const Pt: Tl3SPoint): Bool;
  {-содержит ли прямоугольник точку Pt}
begin
 Result := Windows.PtInRect(Self.R.WR, TPoint(Pt));
end;

procedure Tl3SRect.InflatePt(const Pt: Tl3SPoint);
  {-увеличивает размеры прямоугольника на P}
begin
 R.TopLeft.Dec(Pt);
 R.BottomRight.Inc(Pt);
end;

procedure Tl3SRect.Inflate(X, Y: Long);
  {-увеличивает размеры прямоугольника на (X, Y)}
begin
 Dec(R.Left, X);
 Inc(R.Right, X);
 Dec(R.Top, Y);
 Inc(R.Bottom, Y);
end;

procedure Tl3SRect.Inflate1(X: Long);
  {-увеличивает размеры прямоугольника на (X, X)}
begin
 Dec(R.Left, X);
 Inc(R.Right, X);
 Dec(R.Top, X);
 Inc(R.Bottom, X);
end;

function Tl3SRect.IsEmpty: Bool;
  {-проверяет не пустой ли прямоугольник}
begin
 Result := Windows.IsRectEmpty(R.WR);
end;

function Tl3SRect.Invert(DC: hDC): Bool;
  {-инвертировать прямоугольник на DC}
begin
 Windows.InvertRect(DC, R.WR);
 Result := true;
end;

function Tl3SRect.CreateRgn: Tl3Rgn;
  {-создать регион содержащий данный прямоугольник}
begin
 Result := Windows.CreateRectRgnIndirect(R.WR);
 if (Result <> 0) then
  l3System.IncRgnCount;
end;

function Tl3SRect.EQ(const Rt: Tl3_SRect): Bool;
  {-проверяет равенство двух прямоугольников}
begin
 Result := Windows.EqualRect(R.WR, Rt.R.WR);
end;

procedure Tl3SRect.MakeZoom(Z: sInt16);
  {-увеличивает координаты прямоугольника на Z %}
begin
 R.TopLeft.MakeZoom(Z);
 R.BottomRight.MakeZoom(Z);
end;

procedure Tl3SRect.MakeDezoom(Z: sInt16);
  {-уменьшает координаты прямоугольника на Z %}
begin
 R.TopLeft.MakeDezoom(Z);
 R.BottomRight.MakeDezoom(Z);
end;

function Tl3SRect.Invalidate(Wnd: hWnd; Erase: Bool): Bool;
  {-}
begin
 Windows.InvalidateRect(Wnd, @Self, Erase);
 Result := true;
end;

function Tl3SRect.GetRgn(Rgn: Tl3Rgn): Integer;
  {-инициализирует прямоугольник максимальными размерами региона Rgn}
begin
 Result := Windows.GetRgnBox(Rgn, R.WR);
end;

function Tl3SRect.IntersectClip(DC: hDC): Integer;
  {-устанавливает область отсечения контексту DC}
begin
 with R do
  Result := Windows.IntersectClipRect(DC, Left, Top, Right, Bottom);
end;

function Tl3SRect.GetClip(DC: hDC): Bool;
  {-инициализирут прямоугольник значением области отсечения}
begin
 Result := (GetClipBox(DC, R.WR) <> Windows.ERROR);
end;

function Tl3SRect.AddPt(const Pt: Tl3SPoint): Tl3SRect;
  {-сдвинуть прямоугольник на Pt и вернуть Result}
begin
 Result.R.Left := R.Left + Pt.P.X;
 Result.R.Right := R.Right + Pt.P.X;
 Result.R.Top := R.Top + Pt.P.Y;
 Result.R.Bottom := R.Bottom + Pt.P.Y;
end;

function Tl3SRect.SubPt(const Pt: Tl3SPoint): Tl3SRect;
  {-сдвинуть прямоугольник на -Pt и вернуть Result}
begin
 Result.R.Left := R.Left - Pt.P.X;
 Result.R.Right := R.Right - Pt.P.X;
 Result.R.Top := R.Top - Pt.P.Y;
 Result.R.Bottom := R.Bottom - Pt.P.Y;
end;

{$IfNDef XE4}
// start object Tl3SPoint

procedure Tl3SPoint.Init(aX, aY: Long);
  {-инициализирует точку}
begin
 P.X := aX;
 P.Y := aY;
end;

procedure Tl3SPoint.Inc(const Pt: Tl3_SPoint);
  {-прибавляет Pt к Self}
begin
 System.Inc(P.X, Pt.P.X);
 System.Inc(P.Y, Pt.P.Y);
end;

procedure Tl3SPoint.Dec(const Pt: Tl3_SPoint);
  {-отнимает Pt от Self}
begin
 System.Dec(P.X, Pt.P.X);
 System.Dec(P.Y, Pt.P.Y);
end;

function Tl3SPoint.Add(const Pt: Tl3_SPoint): Tl3SPoint;
  {-складывает Self с P и возвращает полученное значение}
begin
 if (P.X = High(P.X)) then
  Result.P.X := P.X
 else
  Result.P.X := P.X + Pt.P.X;
 if (P.Y = High(P.Y)) then
  Result.P.Y := P.Y
 else
  Result.P.Y := P.Y + Pt.P.Y;
end;

function Tl3SPoint.Sub(const Pt: Tl3_SPoint): Tl3SPoint;
  {-вычитает P из Self и возвращает полученное значение}
begin
 Result.P.X := P.X - Pt.P.X;
 Result.P.Y := P.Y - Pt.P.Y;
end;

function Tl3SPoint.EQ(const Pt: Tl3_SPoint): Bool;
  {-проверяет равенство двух точек}
begin
 Result := (P.X = Pt.P.X) AND (P.Y = Pt.P.Y);
end;

function Tl3SPoint.Neg: Tl3SPoint;
  {-возвращает точку отраженную через начало координат}
begin
 Result.P.X := -P.X;
 Result.P.Y := -P.Y;
end;

function Tl3SPoint.GetCursorPos: Bool;
  {-инициализирует точку значением начала координат курсора мыши}
var
 WP : TPoint;
begin
 Windows.GetCursorPos(WP);
 Self := l3SPoint(WP.X, WP.Y);
 Result := true;
end;

function Tl3SPoint.Zoom(Z: sInt16): Tl3SPoint;
  {-увеличивает координаты вектора на Z % и возвращает Result}
begin
 Result.Init(evZoom(Z, P.X), evZoom(Z, P.Y));
end;

function Tl3SPoint.Dezoom(Z: sInt16): Tl3SPoint;
  {-уменьшает координаты вектора на Z % и возвращает Result}
begin
 Result.Init(evDezoom(Z, P.X), evDezoom(Z, P.Y));
end;

procedure Tl3SPoint.MakeZoom(Z: sInt16);
  {-увеличивает координаты вектора на Z %}
begin
 P.X := evZoom(Z, P.X);
 P.Y := evZoom(Z, P.Y);
end;

procedure Tl3SPoint.MakeDezoom(Z: sInt16);
  {-уменьшает координаты вектора на Z %}
begin
 P.X := evDezoom(Z, P.X);
 P.Y := evDezoom(Z, P.Y);
end;

function Tl3SPoint.Convert(CP: Tl3ConvertPointProc): Tl3SPoint;
  {-конвертирует точку процедурой CP}
begin
 with CP(TPoint(Self)) do
  Self := l3SPoint(X, Y);
 Result := Self;
end;
{$EndIf  XE4}

{$IfNDef XE4}
procedure Tl3Rect.MakeZoom(Z: sInt16);
begin
 Top := evZoom(Z, Top);
 Left := evZoom(Z, Left);
 Right := evZoom(Z, Right);
 Bottom := evZoom(Z, Bottom);
end;
{$EndIf  XE4}

end.

