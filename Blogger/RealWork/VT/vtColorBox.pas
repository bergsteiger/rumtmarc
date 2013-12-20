unit vtColorBox;

{ $Id: vtColorBox.pas,v 1.6 2012/10/26 17:10:17 lulin Exp $ }

// $Log: vtColorBox.pas,v $
// Revision 1.6  2012/10/26 17:10:17  lulin
// - вычищаем поддержку ветки редактора.
//
// Revision 1.5  2009/03/26 17:22:16  lulin
// [$140282719]. Новая "мода". Пишем комментарий об окончании метода.
//
// Revision 1.4  2009/03/26 10:22:21  fireton
// - изменился интерфейс _Il3NodePainter (параметры aSelStart и aSelEnd)
//
// Revision 1.3  2009/03/24 12:16:01  lulin
// - bug fix: не запускался Архивариус.
//
// Revision 1.2  2009/03/24 09:31:08  lulin
// - bug fix: не собирался Архивариус в ветке.
//
// Revision 1.1  2009/03/23 15:09:07  lulin
// [$139442655]. Переименовываем файл.
//
// Revision 1.14  2009/03/23 14:54:24  lulin
// [$139442655]. Переименовываем новый контрол.
//
// Revision 1.13  2009/03/23 14:40:22  lulin
// [$139442655]. Убиваем старый контрол.
//
// Revision 1.12  2009/03/19 10:27:04  oman
// - fix: Давим лишний Change (К-137463980)
//
// Revision 1.11  2009/03/19 09:54:32  oman
// - fix: Рисуем правильней (К-137463980)
//
// Revision 1.10  2009/03/19 09:03:33  oman
// - fix: Пытаемся рисовать в редакторе (К-137463980)
//
// Revision 1.9  2009/03/19 08:42:29  oman
// - fix: Пытаемся рисовать в редакторе (К-137463980)
//
// Revision 1.8  2009/03/18 14:02:15  oman
// - fix: Пытаемся рисовать в редакторе (К-137463980)
//
// Revision 1.7  2009/03/18 10:14:30  oman
// - fix: Поддержка стилы cbNoNames (К-137463980)
//
// Revision 1.6  2009/03/17 15:05:27  oman
// - fix: Пытаемся рисовать (К-137463980)
//
// Revision 1.5  2009/03/17 11:36:56  oman
// - fix: Обработка CustomColor (К-137463980)
//
// Revision 1.4  2009/03/17 11:14:12  oman
// - fix: Обработка CustomColor (К-137463980)
//
// Revision 1.3  2009/03/17 09:53:45  oman
// - fix: Публикуем свойства (К-137463980)
//
// Revision 1.2  2009/03/17 08:53:30  oman
// - fix: Первичная реализация (К-137463980)
//
// Revision 1.1  2009/03/17 07:32:22  oman
// - fix: Заготовки контрола (К-137463980)
//
//

{$Include vtDefine.inc }

interface

uses
 Graphics,
 Classes,

 l3VCLStrings,
 l3Interfaces,
 l3InternalInterfaces,

 nevTools,

 vtCtrls,

 ctTypes,
 FakeBox

 ;

type
  TvtColorBoxStyles = (cbStandardColors, // first sixteen RGBI colors
                       cbExtendedColors, // four additional reserved colors
                       cbSystemColors,   // system managed/defined colors
                       cbIncludeNone,    // include clNone color, must be used with cbSystemColors
                       cbIncludeDefault, // include clDefault color, must be used with cbSystemColors
                       cbCustomColor,    // first color is customizable
                       cbPrettyNames,    // instead of 'clColorNames' you get 'Color Names'
                       cbNoName);        // show only color rect

  TvtColorBoxStyle = set of TvtColorBoxStyles;

 TvtCustomColorBox = class(TFakeBox)
 private
  f_ColorStyle: TvtColorBoxStyle;
  f_NeedToPopulate: Boolean;
  f_DefaultColorColor: TColor;
  f_NoneColorColor: TColor;
  f_SelectedColor: TColor;
  f_LockPickCustomColor: Boolean;
 private
  procedure pm_SetColorStyle(aColorStyle: TvtColorBoxStyle);
    {-}
  function pm_GetColor(Index: Integer): TColor;
    {-}
  function pm_GetColorName(Index: Integer): Il3CString;
    {-}
  function pm_GetSelected: TColor;
  procedure pm_SetSelected(const AColor: TColor);
    {-}
  procedure pm_SetDefaultColorColor(const Value: TColor);
    {-}
  procedure pm_SetNoneColorColor(const Value: TColor);
    {-}
  procedure ColorCallBack(const AName: string);
    {-}
  function IndexOfColor(aColor: TColor): Integer;
    {-}
 protected
  procedure Change;
    override;
    {-}
  function DoDrawDocument(const aCanvas: Il3Canvas; out aMap: InevMap): Boolean;
    override;
    {* - Отрисовка документа. }
  procedure RecreateTreeIfNeeded(aValue: TComboStyle);
    override;
    {-}
  procedure ProcessTreeSelect(ChooseFromTree : Boolean;
                              aTriggerSelect : Boolean);
    override;
    {-}
  procedure CreateWnd;
    override;
    {-}
  procedure Loaded;
    override;
    {-}
  function PickCustomColor: Boolean;
    virtual;
    {-}
  procedure PopulateList;
    {-}
  function DoCreateStrings: Tl3Strings;
    override;
    {-}
 public
  constructor Create(AOwner: TComponent);
    override;
    {-}
  function DrawNames: Boolean;
    {-}
 public
  property ColorStyle: TvtColorBoxStyle
    read f_ColorStyle
    write pm_SetColorStyle
    default [cbStandardColors, cbExtendedColors, cbSystemColors];
    {-}
  property Colors[Index: Integer]: TColor
    read pm_GetColor;
    {-}
  property ColorNames[Index: Integer]: Il3CString
    read pm_GetColorName;
    {-}
  property Selected: TColor
    read pm_GetSelected
    write pm_SetSelected
    default clBlack;
    {-}
  property DefaultColorColor: TColor
    read f_DefaultColorColor
    write pm_SetDefaultColorColor
    default clBlack;
    {-}
  property NoneColorColor: TColor
    read f_NoneColorColor
    write pm_SetNoneColorColor
    default clBlack;
    {-}
 end;

 TvtColorBox = class(TvtCustomColorBox)
 published
  property ColorStyle;
  property DefaultColorColor;
  property NoneColorColor;
  property Selected;
  property Color;
  property Font;
  property HelpContext;
  property HelpKeyword;
  property HelpType;
  property Hint;
  property ParentColor;
  property ParentCtl3D;
  property ParentFont;
  property ParentShowHint;
  property ShowHint;
  property TabOrder;
  property TabStop;
  property Visible;
 end;

const
 NoColorSelected = TColor($FF000000);

implementation

uses
 Dialogs,
 SysUtils,
 Consts,

 l3Base
 ,
 l3Units,

 k2Tags,

 vtColorBoxStrings
 ;

resourcestring
  clNameBlack = 'Black';
  clNameMaroon = 'Maroon';
  clNameGreen = 'Green';
  clNameOlive = 'Olive';
  clNameNavy = 'Navy';
  clNamePurple = 'Purple';
  clNameTeal = 'Teal';
  clNameGray = 'Gray';
  clNameSilver = 'Silver';
  clNameRed = 'Red';
  clNameLime = 'Lime';
  clNameYellow = 'Yellow';
  clNameBlue = 'Blue';
  clNameFuchsia = 'Fuchsia';
  clNameAqua = 'Aqua';
  clNameWhite = 'White';
  clNameMoneyGreen = 'Money Green';
  clNameSkyBlue = 'Sky Blue';
  clNameCream = 'Cream';
  clNameMedGray = 'Medium Gray';
  clNameActiveBorder = 'Active Border';
  clNameActiveCaption = 'Active Caption';
  clNameAppWorkSpace = 'Application Workspace';
  clNameBackground = 'Background';
  clNameBtnFace = 'Button Face';
  clNameBtnHighlight = 'Button Highlight';
  clNameBtnShadow = 'Button Shadow';
  clNameBtnText = 'Button Text';
  clNameCaptionText = 'Caption Text';
  clNameDefault = 'Default';
  clNameGradientActiveCaption = 'Gradient Active Caption';
  clNameGradientInactiveCaption = 'Gradient Inactive Caption';
  clNameGrayText = 'Gray Text';
  clNameHighlight = 'Highlight Background';
  clNameHighlightText = 'Highlight Text';
  clNameInactiveBorder = 'Inactive Border';
  clNameInactiveCaption = 'Inactive Caption';
  clNameInactiveCaptionText = 'Inactive Caption Text';
  clNameInfoBk = 'Info Background';
  clNameInfoText = 'Info Text';
  clNameMenu = 'Menu Background';
  clNameMenuText = 'Menu Text';
  clNameNone = 'None';
  clNameScrollBar = 'Scroll Bar';
  clName3DDkShadow = '3D Dark Shadow';
  clName3DLight = '3D Light';
  clNameWindow = 'Window Background';
  clNameWindowFrame = 'Window Frame';
  clNameWindowText = 'Window Text';

const
  ColorToPretyName: array[0..46] of TIdentMapEntry = (
    (Value: clBlack; Name: clNameBlack),
    (Value: clMaroon; Name: clNameMaroon),
    (Value: clGreen; Name: clNameGreen),
    (Value: clOlive; Name: clNameOlive),
    (Value: clNavy; Name: clNameNavy),
    (Value: clPurple; Name: clNamePurple),
    (Value: clTeal; Name: clNameTeal),
    (Value: clGray; Name: clNameGray),
    (Value: clSilver; Name: clNameSilver),
    (Value: clRed; Name: clNameRed),
    (Value: clLime; Name: clNameLime),
    (Value: clYellow; Name: clNameYellow),
    (Value: clBlue; Name: clNameBlue),
    (Value: clFuchsia; Name: clNameFuchsia),
    (Value: clAqua; Name: clNameAqua),
    (Value: clWhite; Name: clNameWhite),
    (Value: clMoneyGreen; Name: clNameMoneyGreen),
    (Value: clSkyBlue; Name: clNameSkyBlue),
    (Value: clCream; Name: clNameCream),
    (Value: clMedGray; Name: clNameMedGray),

    (Value: clActiveBorder; Name: clNameActiveBorder),
    (Value: clActiveCaption; Name: clNameActiveCaption),
    (Value: clAppWorkSpace; Name: clNameAppWorkSpace),
    (Value: clBackground; Name: clNameBackground),
    (Value: clBtnFace; Name: clNameBtnFace),
    (Value: clBtnHighlight; Name: clNameBtnHighlight),
    (Value: clBtnShadow; Name: clNameBtnShadow),
    (Value: clBtnText; Name: clNameBtnText),
    (Value: clCaptionText; Name: clNameCaptionText),
    (Value: clDefault; Name: clNameDefault),
    (Value: clGrayText; Name: clNameGrayText),
    (Value: clHighlight; Name: clNameHighlight),
    (Value: clHighlightText; Name: clNameHighlightText),
    (Value: clInactiveBorder; Name: clNameInactiveBorder),
    (Value: clInactiveCaption; Name: clNameInactiveCaption),
    (Value: clInactiveCaptionText; Name: clNameInactiveCaptionText),
    (Value: clInfoBk; Name: clNameInfoBk),
    (Value: clInfoText; Name: clNameInfoText),
    (Value: clMenu; Name: clNameMenu),
    (Value: clMenuText; Name: clNameMenuText),
    (Value: clNone; Name: clNameNone),
    (Value: clScrollBar; Name: clNameScrollBar),
    (Value: cl3DDkShadow; Name: clName3DDkShadow),
    (Value: cl3DLight; Name: clName3DLight),
    (Value: clWindow; Name: clNameWindow),
    (Value: clWindowFrame; Name: clNameWindowFrame),
    (Value: clWindowText; Name: clNameWindowText) );

{ TvtCustomColorBox }

procedure TvtCustomColorBox.Change;
begin
 if not f_LockPickCustomColor then
  inherited Change;
end;

procedure TvtCustomColorBox.ColorCallBack(const AName: string);
var
 I, LStart: Integer;
 LColor: TColor;
 LName: string;
begin
 LColor := StringToColor(AName);
 if cbPrettyNames in ColorStyle then
 begin
  if not IntToIdent(LColor, LName, ColorToPretyName) then
  begin
   if System.Copy(AName, 1, 2) = 'cl' then
    LStart := 3
   else
    LStart := 1;
   LName := '';
   for I := LStart to Length(AName) do
   begin
    case AName[I] of
     'A'..'Z':
       if LName <> '' then
        LName := LName + ' ';
    end;
    LName := LName + AName[I];
   end;
  end;
 end
 else
  LName := AName;
 Items.AddObject(l3CStr(LName), TObject(LColor));
end;

constructor TvtCustomColorBox.Create(AOwner: TComponent);
begin
 inherited Create(aOwner);
 Assert(Items is TvtColorBoxStrings);
 ComboStyle := ct_cbDropDownList;
 f_ColorStyle := [cbStandardColors, cbExtendedColors, cbSystemColors];
 f_SelectedColor := clBlack;
 f_DefaultColorColor := clBlack;
 f_NoneColorColor := clBlack;
 PopulateList;
end;

procedure TvtCustomColorBox.CreateWnd;
begin
 inherited CreateWnd;
 if f_NeedToPopulate then
  PopulateList;
end;

function TvtCustomColorBox.DoCreateStrings: Tl3Strings;
begin
 Result := TvtColorBoxStrings.Create(Self);
end;

function TvtCustomColorBox.DoDrawDocument(
  const aCanvas: Il3Canvas; out aMap: InevMap): Boolean;
var
 l_NodePainter: Il3NodePainter;
 l_ClipRect: Tl3Rect;
 l_TopMargin: Integer;
 l_MarginRect: Tl3Rect;
begin
 Result := True;
 if (ItemIndex <> -1) and Supports(Tree.GetNode(ItemIndex), Il3NodePainter, l_NodePainter) then
 begin
  l_ClipRect := aCanvas.ClipRect;
  l_TopMargin := Document.IntA[k2_tiSpaceBefore];
  l_MarginRect := l_ClipRect;
  l_MarginRect.Bottom := l_TopMargin;
  aCanvas.FillRect(l_MarginRect);
  l_MarginRect := l_ClipRect;
  l_MarginRect.Top := l_MarginRect.Bottom - l_TopMargin;
  aCanvas.FillRect(l_MarginRect);
  l_ClipRect.Inflate(0, -l_TopMargin);
  aCanvas.ClipRect := l_ClipRect;

  l_NodePainter.PaintNode(aCanvas, aCanvas.ClipRect, 0, 0, Focused);
 end
 else
  aCanvas.FillEmptyRect(aCanvas.ClipRect);
end;

function TvtCustomColorBox.DrawNames: Boolean;
begin
 Result := not (cbNoName in ColorStyle);
end;

function TvtCustomColorBox.IndexOfColor(
  aColor: TColor): Integer;
var
 Index: Integer;
begin
 Result := -1;
 for Index := 0 to Items.Count - 1 do
 begin
  if Items[Index].LinkedObject = TObject(AColor) then
  begin
   Result := Index;
   Break;
  end;
 end;
end;

procedure TvtCustomColorBox.Loaded;
begin
 inherited;
 Selected := f_SelectedColor;
end;

function TvtCustomColorBox.PickCustomColor: Boolean;
var
 LColor: TColor;
begin
 with TColorDialog.Create(nil) do
  try
   LColor := ColorToRGB(TColor(Items[0].LinkedObject));
   Color := LColor;
   CustomColors.Text := Format('ColorA=%.8x', [LColor]);
   Result := Execute;
   if Result then
   begin
    Items[0].LinkedObject := TObject(Color);
    Self.Invalidate;
   end;
  finally
   Free;
  end;
end;

function TvtCustomColorBox.pm_GetColor(Index: Integer): TColor;
begin
 Result := TColor(Items[Index].LinkedObject);
end;

function TvtCustomColorBox.pm_GetColorName(
  Index: Integer): Il3CString;
begin
 Result := l3CStr(Items[Index].AsWStr);
end;

function TvtCustomColorBox.pm_GetSelected: TColor;
begin
 if HandleAllocated then
   if ItemIndex <> -1 then
     Result := Colors[ItemIndex]
   else
     Result := NoColorSelected
 else
   Result := f_SelectedColor;
end;

procedure TvtCustomColorBox.pm_SetColorStyle(
  aColorStyle: TvtColorBoxStyle);
begin
 if ColorStyle <> aColorStyle then
 begin
   f_ColorStyle := aColorStyle;
   Enabled := ([cbStandardColors, cbExtendedColors, cbSystemColors, cbCustomColor] * f_ColorStyle) <> [];
   PopulateList;
   if (Items.Count > 0) and (ItemIndex = -1) then
     ItemIndex := 0;
 end;
end;

procedure TvtCustomColorBox.pm_SetDefaultColorColor(
  const Value: TColor);
begin
 if Value <> f_DefaultColorColor then
 begin
  f_DefaultColorColor := Value;
  Invalidate;
 end;
end;

procedure TvtCustomColorBox.pm_SetNoneColorColor(
  const Value: TColor);
begin
 if Value <> f_NoneColorColor then
 begin
  f_NoneColorColor := Value;
  Invalidate;
 end;
end;

procedure TvtCustomColorBox.pm_SetSelected(
  const AColor: TColor);
var
 I, Index: Integer;
begin
 if HandleAllocated then
 begin
  I := IndexOfColor(AColor);
  if (I = -1) and (cbCustomColor in ColorStyle) and (AColor <> NoColorSelected) then
  begin
   Items[0].LinkedObject := TObject(AColor);
   I := 0;
  end
  else
  if (cbCustomColor in ColorStyle) and (I = 0) then
  begin
   { Look for the color anywhere else but the first color before
     defaulting to selecting the "custom color". }
   for Index := 1 to Items.Count - 1 do
   begin
    if Items[Index].LinkedObject = TObject(AColor) then
    begin
     I := Index;
     Break;
    end;
   end;
  end;
  f_LockPickCustomColor := True;
  try
   ItemIndex := I;
  finally
   f_LockPickCustomColor := False;
  end;
 end;
 f_SelectedColor := AColor;
end;

procedure TvtCustomColorBox.PopulateList;

 procedure DeleteRange(const AMin, AMax: Integer);
 var
  I: Integer;
 begin
  for I := AMax downto AMin do
   Items.Delete(I);
 end;

 procedure DeleteColor(const AColor: TColor);
 var
  I: Integer;
 begin
  I := IndexOfColor(AColor);
  if I <> -1 then
   Items.Delete(I);
 end;

var
 l_SelectedColor: TColor;
 l_CustomColor: TColor;
begin
 if HandleAllocated then
 begin
  Items.BeginUpdate;
  try
   l_CustomColor := clBlack;
   if (cbCustomColor in ColorStyle) and (Items.Count > 0) then
     l_CustomColor := TColor(Items[0].LinkedObject);
   l_SelectedColor := f_SelectedColor;
   Items.Clear;
   GetColorValues(ColorCallBack);
   if not (cbIncludeNone in ColorStyle) then
     DeleteColor(clNone);
   if not (cbIncludeDefault in ColorStyle) then
     DeleteColor(clDefault);
   if not (cbSystemColors in ColorStyle) then
     DeleteRange(StandardColorsCount + ExtendedColorsCount, Items.Count - 1);
   if not (cbExtendedColors in ColorStyle) then
     DeleteRange(StandardColorsCount, StandardColorsCount + ExtendedColorsCount - 1);
   if not (cbStandardColors in ColorStyle) then
     DeleteRange(0, StandardColorsCount - 1);
   if cbCustomColor in ColorStyle then
   begin
    Items.Insert(0, l3CStr(SColorBoxCustomCaption));
    Items[0].LinkedObject := TObject(l_CustomColor);
   end;
   Selected := l_SelectedColor;
  finally
   Items.EndUpdate;
   f_NeedToPopulate := False;
  end;
 end
 else
  f_NeedToPopulate := True;
end;

procedure TvtCustomColorBox.ProcessTreeSelect(ChooseFromTree,
  aTriggerSelect: Boolean);
begin
 {$IfNDef DesignTimeLibrary}
 if not f_LockPickCustomColor then
  if (cbCustomColor in ColorStyle) and
     (FindIndexOf(Tree.GetCurrentNode) = 0) and
     not PickCustomColor then
     begin
      Tree.GotoOnNode(ChoosenValue);
      Exit;
     end;
 {$EndIf DesignTimeLibrary}
 inherited ProcessTreeSelect(ChooseFromTree, aTriggerSelect);
end;

procedure TvtCustomColorBox.RecreateTreeIfNeeded(
  aValue: TComboStyle);
begin
 inherited RecreateTreeIfNeeded(aValue);
{$IfNDef DesignTimeLibrary}
 Tree.SelfDrawNodes := True;
{$EndIf DesignTimeLibrary}
end;

end.
