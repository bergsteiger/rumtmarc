unit l3Core;

{$IfDef DesignTimeLibrary}
{$WEAKPACKAGEUNIT ON}
{$EndIf DesignTimeLibrary}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "L3$Domain"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/L3/l3Core.pas"
// Начат: 24.07.2007 15:19
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Interfaces::Category>> Shared Delphi Требования к низкоуровневым библиотекам::L3$Domain::l3Core
//
// Базовые примитивные типы и интерфейсы, унаследованные извне. Для уменьшения связности с внешними
// модулями.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\L3\l3Define.inc}

interface

uses
  Types,
  Messages,
  Classes,
  Graphics,
  Windows
  ;

type
 HPALETTE = Windows.HPALETTE;

 HMETAFILE = Windows.HMETAFILE;

 HGLOBAL = Windows.HGLOBAL;

 TFontName = Graphics.TFontName;
  {* Гарнитура шрифта. }

 TFontPitch = Graphics.TFontPitch;

 TFontStyles = Graphics.TFontStyles;

 hFont = Windows.HFONT;

 TFont = Graphics.TFont;

 VCLBitmap = Graphics.TBitmap;
  {* Картинка. }

 TPoint = Types.TPoint;
  {* Точка. }

 TRect = Types.TRect;

 TMessage = Messages.TMessage;

 Tl3Position = type System.Integer;
  {* Позиция. }

 Tl3Inch = type System.Integer;
  {* Дюйм. }

 Tl3Color = Graphics.TColor;
  {* Цвет. }

 VCLCanvas = Graphics.TCanvas;

 VCLGraphic = Graphics.TGraphic;
  {* Картинка. }

const
  { Цвета }
 clDefault = Graphics.clDefault;
  { Цвет по-умолчанию. }

type
 PTextMetric = Windows.PTextMetric;

 THandle = Windows.THandle;

 hRgn = Windows.hRgn;
  {* Хэндл региона. }

 WinBool = Windows.BOOL;

 LCID = Windows.LCID;

 PMsg = Windows.PMsg;

 hDC = Windows.hDC;

 hWnd = Windows.hWnd;

 WPARAM = Windows.WPARAM;

 LPARAM = Windows.LPARAM;

 TComponent = Classes.TComponent;

 TStrings = Classes.TStrings;

 TShiftState = Classes.TShiftState;

const
  { ShiftStates }
 ssCtrl = Classes.ssCtrl;

type
 TPersistent = Classes.TPersistent;

 DWORD = System.Cardinal;

 PInteger = Windows.PInteger;

 RtlDateTime = System.TDateTime;

implementation

end.