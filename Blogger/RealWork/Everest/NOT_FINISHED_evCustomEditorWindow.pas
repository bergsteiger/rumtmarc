unit NOT_FINISHED_evCustomEditorWindow;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/NOT_FINISHED_evCustomEditorWindow.pas"
// Начат: 17.03.1997 19:20
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<GuiControl::Class>> Shared Delphi::Everest::Editors::TevCustomEditorWindow
//
// Реализация базового оконного элемента для отображения содержимого документа
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  l3Interfaces,
  nevBase,
  afwInterfaces,
  l3InternalInterfaces,
  Messages,
  nevTools,
  evCustomTextSource,
  nevSelection,
  evEditorWindowHotSpot,
  evEditorInterfaces,
  nevGUIInterfaces,
  afwNavigation,
  evCustomEditorWindowPrim
  ;

type
 RevEditorWindowHotSpot = class of evEditorWindowHotSpot.TevEditorWindowHotSpot;

 RevSelection = class of nevSelection.TnevSelection;

 TevJumpToEvent = function (Sender: TObject;
  anEffects: TafwJumpToEffects;
  const aMoniker: IevMoniker): Boolean;

 TevParaChangeEvent = procedure (Sender: TObject;
  const aTextPara: IedTextParagraph) of object;

 TevGetHotspotInfo = procedure (Sender: TObject;
  const aHotSpot: IevHotSpot;
  const aKeys: TafwCursorState;
  var theInfo: TafwCursorInfo) of object;

 TevCustomEditorWindow = class(TevCustomEditorWindowPrim)
  {* Реализация базового оконного элемента для отображения содержимого документа }
 private
 // private methods
   procedure WMEraseBkGnd(var Msg: TWMEraseBkGnd); message WM_ERASEBKGND;
   procedure WMPaint(var Msg: TWMPaint); message WM_Paint;
   procedure WMGetDlgCode(var Msg: TWMGetDlgCode); message WM_GETDLGCODE;
   procedure WMChar(var Msg: TWMChar); message WM_CHAR;
   procedure WMKeyDown(var Msg: TWMKeyDown); message CN_KEYDOWN;
 protected
 // property methods
   function pm_GetPlainText: Boolean; virtual;
   procedure pm_SetPlainText(aValue: Boolean); virtual;
 protected
 // realized methods
   function GetLimitWidth: Integer; override;
 protected
 // overridden protected methods
   procedure DoCursorChanged; override;
   procedure WebStyleChanged; override;
   procedure DoAfterSetZoom; override;
 protected
 // protected methods
   procedure ParaChange; virtual;
     {* текущий параграф изменился. }
   procedure BlockChange; virtual;
     {* изменилось выделение. }
   procedure SetEditRect; virtual;
   procedure DoScrollEvent; overload;  virtual;
   procedure MakeCursor; virtual;
   function ReplaceConfirm(const aBlock: InevRange;
    AlienReplaceConfirm: TevReplaceConfirmEvent): ShortInt; virtual;
   procedure MakeTextSource(out theTextSource: TevCustomTextSource); virtual;
   function AllowDrawDocumentEdge: Boolean; virtual;
   procedure AfterOperation; virtual;
   function IsVScrollBarVisible: Boolean; virtual;
     {* проверяет видимость вертикального скроллбара. }
   function GetPaintSelection: InevRange; virtual;
   procedure DoCursorInSelectionChange; virtual;
     {* изменилось свойство CursorInSelection. }
   procedure DoFontChange(const Font: Il3Font); virtual;
   procedure DoBeforeRMouseClick; virtual;
   function RightIndentMul: Integer; virtual;
   function WantEnter: Boolean; virtual;
   function WantTab(aKeyPressed: Boolean = False): Boolean; virtual;
   function DoBreakPara(aDrawLines: Boolean;
    const anOp: InevOp): Boolean; virtual;
   procedure TextChange; virtual;
     {* вызывается при смене текста. }
   function GetHorzDelta: Integer; virtual;
     {* зазор, после которого начинается скроллирование вправо. }
   procedure SetTextColor(const aCanvas: Il3Canvas); virtual;
   function GetTopMargin: Integer; virtual;
     {* Возвращает отступ до текста сверху. }
   function ProcessHotSpots: Boolean; virtual;
     {* Обрабатывать ли "горячие точки" на предмет показа Hint'а и мышиного курсора или вызывать поведение по-умолчанию. [$100958718] }
   function GetInfoCanvas: InevInfoCanvas; virtual;
   function ProcessCommandEx(Cmd: Integer;
    aForce: Boolean;
    aSubCmd: Cardinal;
    aCount: Integer): Boolean; virtual;
     {* process the specified command, return true if processed }
   function SelectionClass: RevSelection; virtual;
   function HotSpotClass: RevEditorWindowHotSpot; virtual;
   procedure DoScrollEvent; overload;  virtual;
   function SelectWhenUnfocused: Boolean; virtual;
   procedure DoUnselectAfterInsertData; virtual;
 public
 // public methods
   function Tabulate: Boolean; virtual;
     {* эквивалетно нажатию Tab. }
   function Untabulate: Boolean; virtual;
     {* эквивалетно нажатию Shift-Tab. }
   function CloseQuery: Boolean; virtual;
   function MakeExportFilters(aSelection: Boolean;
    aForExport: Boolean): InevTagGenerator; virtual;
 public
 // public properties
   property PlainText: Boolean
     read pm_GetPlainText
     write pm_SetPlainText;
 end;//TevCustomEditorWindow

implementation

uses
  nevView
  ;

// start class TevCustomEditorWindow

function TevCustomEditorWindow.pm_GetPlainText: Boolean;
//#UC START# *484515B3012E_4829D92A037Bget_var*
//#UC END# *484515B3012E_4829D92A037Bget_var*
begin
//#UC START# *484515B3012E_4829D92A037Bget_impl*
 !!! Needs to be implemented !!!
//#UC END# *484515B3012E_4829D92A037Bget_impl*
end;//TevCustomEditorWindow.pm_GetPlainText

procedure TevCustomEditorWindow.pm_SetPlainText(aValue: Boolean);
//#UC START# *484515B3012E_4829D92A037Bset_var*
//#UC END# *484515B3012E_4829D92A037Bset_var*
begin
//#UC START# *484515B3012E_4829D92A037Bset_impl*
 !!! Needs to be implemented !!!
//#UC END# *484515B3012E_4829D92A037Bset_impl*
end;//TevCustomEditorWindow.pm_SetPlainText

procedure TevCustomEditorWindow.ParaChange;
//#UC START# *482BFA340236_4829D92A037B_var*
//#UC END# *482BFA340236_4829D92A037B_var*
begin
//#UC START# *482BFA340236_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482BFA340236_4829D92A037B_impl*
end;//TevCustomEditorWindow.ParaChange

procedure TevCustomEditorWindow.BlockChange;
//#UC START# *482BFA5C0286_4829D92A037B_var*
//#UC END# *482BFA5C0286_4829D92A037B_var*
begin
//#UC START# *482BFA5C0286_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482BFA5C0286_4829D92A037B_impl*
end;//TevCustomEditorWindow.BlockChange

procedure TevCustomEditorWindow.SetEditRect;
//#UC START# *482BFA6D022D_4829D92A037B_var*
//#UC END# *482BFA6D022D_4829D92A037B_var*
begin
//#UC START# *482BFA6D022D_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482BFA6D022D_4829D92A037B_impl*
end;//TevCustomEditorWindow.SetEditRect

procedure TevCustomEditorWindow.DoScrollEvent;
//#UC START# *482BFA79031D_4829D92A037B_var*
//#UC END# *482BFA79031D_4829D92A037B_var*
begin
//#UC START# *482BFA79031D_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482BFA79031D_4829D92A037B_impl*
end;//TevCustomEditorWindow.DoScrollEvent

procedure TevCustomEditorWindow.MakeCursor;
//#UC START# *482BFA9401ED_4829D92A037B_var*
//#UC END# *482BFA9401ED_4829D92A037B_var*
begin
//#UC START# *482BFA9401ED_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482BFA9401ED_4829D92A037B_impl*
end;//TevCustomEditorWindow.MakeCursor

function TevCustomEditorWindow.ReplaceConfirm(const aBlock: InevRange;
  AlienReplaceConfirm: TevReplaceConfirmEvent): ShortInt;
//#UC START# *482BFAD20173_4829D92A037B_var*
//#UC END# *482BFAD20173_4829D92A037B_var*
begin
//#UC START# *482BFAD20173_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482BFAD20173_4829D92A037B_impl*
end;//TevCustomEditorWindow.ReplaceConfirm

procedure TevCustomEditorWindow.MakeTextSource(out theTextSource: TevCustomTextSource);
//#UC START# *482BFB0A00E0_4829D92A037B_var*
//#UC END# *482BFB0A00E0_4829D92A037B_var*
begin
//#UC START# *482BFB0A00E0_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482BFB0A00E0_4829D92A037B_impl*
end;//TevCustomEditorWindow.MakeTextSource

function TevCustomEditorWindow.AllowDrawDocumentEdge: Boolean;
//#UC START# *482BFBEE00D5_4829D92A037B_var*
//#UC END# *482BFBEE00D5_4829D92A037B_var*
begin
//#UC START# *482BFBEE00D5_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482BFBEE00D5_4829D92A037B_impl*
end;//TevCustomEditorWindow.AllowDrawDocumentEdge

procedure TevCustomEditorWindow.AfterOperation;
//#UC START# *482BFC030100_4829D92A037B_var*
//#UC END# *482BFC030100_4829D92A037B_var*
begin
//#UC START# *482BFC030100_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482BFC030100_4829D92A037B_impl*
end;//TevCustomEditorWindow.AfterOperation

function TevCustomEditorWindow.IsVScrollBarVisible: Boolean;
//#UC START# *482BFC0E0175_4829D92A037B_var*
//#UC END# *482BFC0E0175_4829D92A037B_var*
begin
//#UC START# *482BFC0E0175_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482BFC0E0175_4829D92A037B_impl*
end;//TevCustomEditorWindow.IsVScrollBarVisible

function TevCustomEditorWindow.GetPaintSelection: InevRange;
//#UC START# *482BFC2E0363_4829D92A037B_var*
//#UC END# *482BFC2E0363_4829D92A037B_var*
begin
//#UC START# *482BFC2E0363_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482BFC2E0363_4829D92A037B_impl*
end;//TevCustomEditorWindow.GetPaintSelection

procedure TevCustomEditorWindow.DoCursorInSelectionChange;
//#UC START# *482BFC4200D0_4829D92A037B_var*
//#UC END# *482BFC4200D0_4829D92A037B_var*
begin
//#UC START# *482BFC4200D0_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482BFC4200D0_4829D92A037B_impl*
end;//TevCustomEditorWindow.DoCursorInSelectionChange

procedure TevCustomEditorWindow.DoFontChange(const Font: Il3Font);
//#UC START# *482BFC540231_4829D92A037B_var*
//#UC END# *482BFC540231_4829D92A037B_var*
begin
//#UC START# *482BFC540231_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482BFC540231_4829D92A037B_impl*
end;//TevCustomEditorWindow.DoFontChange

procedure TevCustomEditorWindow.DoBeforeRMouseClick;
//#UC START# *482BFC8100F4_4829D92A037B_var*
//#UC END# *482BFC8100F4_4829D92A037B_var*
begin
//#UC START# *482BFC8100F4_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482BFC8100F4_4829D92A037B_impl*
end;//TevCustomEditorWindow.DoBeforeRMouseClick

function TevCustomEditorWindow.RightIndentMul: Integer;
//#UC START# *482BFC8E036F_4829D92A037B_var*
//#UC END# *482BFC8E036F_4829D92A037B_var*
begin
//#UC START# *482BFC8E036F_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482BFC8E036F_4829D92A037B_impl*
end;//TevCustomEditorWindow.RightIndentMul

function TevCustomEditorWindow.WantEnter: Boolean;
//#UC START# *482BFCA000E4_4829D92A037B_var*
//#UC END# *482BFCA000E4_4829D92A037B_var*
begin
//#UC START# *482BFCA000E4_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482BFCA000E4_4829D92A037B_impl*
end;//TevCustomEditorWindow.WantEnter

function TevCustomEditorWindow.WantTab(aKeyPressed: Boolean = False): Boolean;
//#UC START# *482BFCAE0072_4829D92A037B_var*
//#UC END# *482BFCAE0072_4829D92A037B_var*
begin
//#UC START# *482BFCAE0072_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482BFCAE0072_4829D92A037B_impl*
end;//TevCustomEditorWindow.WantTab

function TevCustomEditorWindow.DoBreakPara(aDrawLines: Boolean;
  const anOp: InevOp): Boolean;
//#UC START# *482BFCBF01F0_4829D92A037B_var*
//#UC END# *482BFCBF01F0_4829D92A037B_var*
begin
//#UC START# *482BFCBF01F0_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482BFCBF01F0_4829D92A037B_impl*
end;//TevCustomEditorWindow.DoBreakPara

function TevCustomEditorWindow.Tabulate: Boolean;
//#UC START# *482BFD1802D3_4829D92A037B_var*
//#UC END# *482BFD1802D3_4829D92A037B_var*
begin
//#UC START# *482BFD1802D3_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482BFD1802D3_4829D92A037B_impl*
end;//TevCustomEditorWindow.Tabulate

function TevCustomEditorWindow.Untabulate: Boolean;
//#UC START# *482BFD2C0107_4829D92A037B_var*
//#UC END# *482BFD2C0107_4829D92A037B_var*
begin
//#UC START# *482BFD2C0107_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482BFD2C0107_4829D92A037B_impl*
end;//TevCustomEditorWindow.Untabulate

function TevCustomEditorWindow.CloseQuery: Boolean;
//#UC START# *482BFD410052_4829D92A037B_var*
//#UC END# *482BFD410052_4829D92A037B_var*
begin
//#UC START# *482BFD410052_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482BFD410052_4829D92A037B_impl*
end;//TevCustomEditorWindow.CloseQuery

function TevCustomEditorWindow.MakeExportFilters(aSelection: Boolean;
  aForExport: Boolean): InevTagGenerator;
//#UC START# *482BFD8601F3_4829D92A037B_var*
//#UC END# *482BFD8601F3_4829D92A037B_var*
begin
//#UC START# *482BFD8601F3_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482BFD8601F3_4829D92A037B_impl*
end;//TevCustomEditorWindow.MakeExportFilters

procedure TevCustomEditorWindow.TextChange;
//#UC START# *482C26D6006A_4829D92A037B_var*
//#UC END# *482C26D6006A_4829D92A037B_var*
begin
//#UC START# *482C26D6006A_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482C26D6006A_4829D92A037B_impl*
end;//TevCustomEditorWindow.TextChange

procedure TevCustomEditorWindow.WMEraseBkGnd(var Msg: TWMEraseBkGnd);
//#UC START# *482C434700DD_4829D92A037B_var*
//#UC END# *482C434700DD_4829D92A037B_var*
begin
//#UC START# *482C434700DD_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482C434700DD_4829D92A037B_impl*
end;//TevCustomEditorWindow.WMEraseBkGnd

procedure TevCustomEditorWindow.WMPaint(var Msg: TWMPaint);
//#UC START# *482C4396007C_4829D92A037B_var*
//#UC END# *482C4396007C_4829D92A037B_var*
begin
//#UC START# *482C4396007C_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482C4396007C_4829D92A037B_impl*
end;//TevCustomEditorWindow.WMPaint

procedure TevCustomEditorWindow.WMGetDlgCode(var Msg: TWMGetDlgCode);
//#UC START# *482C43B5039C_4829D92A037B_var*
//#UC END# *482C43B5039C_4829D92A037B_var*
begin
//#UC START# *482C43B5039C_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482C43B5039C_4829D92A037B_impl*
end;//TevCustomEditorWindow.WMGetDlgCode

procedure TevCustomEditorWindow.WMChar(var Msg: TWMChar);
//#UC START# *482C43E5012C_4829D92A037B_var*
//#UC END# *482C43E5012C_4829D92A037B_var*
begin
//#UC START# *482C43E5012C_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482C43E5012C_4829D92A037B_impl*
end;//TevCustomEditorWindow.WMChar

procedure TevCustomEditorWindow.WMKeyDown(var Msg: TWMKeyDown);
//#UC START# *482C440A0182_4829D92A037B_var*
//#UC END# *482C440A0182_4829D92A037B_var*
begin
//#UC START# *482C440A0182_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482C440A0182_4829D92A037B_impl*
end;//TevCustomEditorWindow.WMKeyDown

function TevCustomEditorWindow.GetHorzDelta: Integer;
//#UC START# *482C706503AF_4829D92A037B_var*
//#UC END# *482C706503AF_4829D92A037B_var*
begin
//#UC START# *482C706503AF_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *482C706503AF_4829D92A037B_impl*
end;//TevCustomEditorWindow.GetHorzDelta

procedure TevCustomEditorWindow.SetTextColor(const aCanvas: Il3Canvas);
//#UC START# *4831634B00FF_4829D92A037B_var*
//#UC END# *4831634B00FF_4829D92A037B_var*
begin
//#UC START# *4831634B00FF_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4831634B00FF_4829D92A037B_impl*
end;//TevCustomEditorWindow.SetTextColor

function TevCustomEditorWindow.GetTopMargin: Integer;
//#UC START# *483D718E0143_4829D92A037B_var*
//#UC END# *483D718E0143_4829D92A037B_var*
begin
//#UC START# *483D718E0143_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *483D718E0143_4829D92A037B_impl*
end;//TevCustomEditorWindow.GetTopMargin

function TevCustomEditorWindow.ProcessHotSpots: Boolean;
//#UC START# *4875FDAD037A_4829D92A037B_var*
//#UC END# *4875FDAD037A_4829D92A037B_var*
begin
//#UC START# *4875FDAD037A_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4875FDAD037A_4829D92A037B_impl*
end;//TevCustomEditorWindow.ProcessHotSpots

function TevCustomEditorWindow.GetInfoCanvas: InevInfoCanvas;
//#UC START# *489845790346_4829D92A037B_var*
//#UC END# *489845790346_4829D92A037B_var*
begin
//#UC START# *489845790346_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *489845790346_4829D92A037B_impl*
end;//TevCustomEditorWindow.GetInfoCanvas

function TevCustomEditorWindow.ProcessCommandEx(Cmd: Integer;
  aForce: Boolean;
  aSubCmd: Cardinal;
  aCount: Integer): Boolean;
//#UC START# *48E227FA00E0_4829D92A037B_var*
//#UC END# *48E227FA00E0_4829D92A037B_var*
begin
//#UC START# *48E227FA00E0_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *48E227FA00E0_4829D92A037B_impl*
end;//TevCustomEditorWindow.ProcessCommandEx

function TevCustomEditorWindow.SelectionClass: RevSelection;
//#UC START# *48E22866033A_4829D92A037B_var*
//#UC END# *48E22866033A_4829D92A037B_var*
begin
//#UC START# *48E22866033A_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *48E22866033A_4829D92A037B_impl*
end;//TevCustomEditorWindow.SelectionClass

function TevCustomEditorWindow.HotSpotClass: RevEditorWindowHotSpot;
//#UC START# *48E2297000D3_4829D92A037B_var*
//#UC END# *48E2297000D3_4829D92A037B_var*
begin
//#UC START# *48E2297000D3_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *48E2297000D3_4829D92A037B_impl*
end;//TevCustomEditorWindow.HotSpotClass

procedure TevCustomEditorWindow.DoScrollEvent;
//#UC START# *48E22AAF019D_4829D92A037B_var*
//#UC END# *48E22AAF019D_4829D92A037B_var*
begin
//#UC START# *48E22AAF019D_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *48E22AAF019D_4829D92A037B_impl*
end;//TevCustomEditorWindow.DoScrollEvent

function TevCustomEditorWindow.SelectWhenUnfocused: Boolean;
//#UC START# *48E22AD302CE_4829D92A037B_var*
//#UC END# *48E22AD302CE_4829D92A037B_var*
begin
//#UC START# *48E22AD302CE_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *48E22AD302CE_4829D92A037B_impl*
end;//TevCustomEditorWindow.SelectWhenUnfocused

procedure TevCustomEditorWindow.DoUnselectAfterInsertData;
//#UC START# *48E22B8B00CE_4829D92A037B_var*
//#UC END# *48E22B8B00CE_4829D92A037B_var*
begin
//#UC START# *48E22B8B00CE_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *48E22B8B00CE_4829D92A037B_impl*
end;//TevCustomEditorWindow.DoUnselectAfterInsertData

function TevCustomEditorWindow.GetLimitWidth: Integer;
//#UC START# *48E0EEAC0254_4829D92A037B_var*
//#UC END# *48E0EEAC0254_4829D92A037B_var*
begin
//#UC START# *48E0EEAC0254_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *48E0EEAC0254_4829D92A037B_impl*
end;//TevCustomEditorWindow.GetLimitWidth

procedure TevCustomEditorWindow.DoCursorChanged;
//#UC START# *48E1F1B1033C_4829D92A037B_var*
//#UC END# *48E1F1B1033C_4829D92A037B_var*
begin
//#UC START# *48E1F1B1033C_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *48E1F1B1033C_4829D92A037B_impl*
end;//TevCustomEditorWindow.DoCursorChanged

procedure TevCustomEditorWindow.WebStyleChanged;
//#UC START# *48E238D80225_4829D92A037B_var*
//#UC END# *48E238D80225_4829D92A037B_var*
begin
//#UC START# *48E238D80225_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *48E238D80225_4829D92A037B_impl*
end;//TevCustomEditorWindow.WebStyleChanged

procedure TevCustomEditorWindow.DoAfterSetZoom;
//#UC START# *4D3998FE03C1_4829D92A037B_var*
//#UC END# *4D3998FE03C1_4829D92A037B_var*
begin
//#UC START# *4D3998FE03C1_4829D92A037B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4D3998FE03C1_4829D92A037B_impl*
end;//TevCustomEditorWindow.DoAfterSetZoom

end.