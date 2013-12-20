unit nevTextParaRenderInfo;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/new/nevTextParaRenderInfo.pas"
// Начат: 05.05.2008 14:58
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::Rendering::TnevTextParaRenderInfo
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\common\components\gui\Garant\Everest\evDefine.inc}

interface

uses
  nevBase,
  nevTools,
  nevFormatInfoList,
  nevLeafRenderInfo,
  nevFormatInfo
  ;

type
 TnevTextParaRenderInfo = class(TnevLeafRenderInfo)
 private
 // private fields
   f_L : InevLines;
   f_VS : InevTag;
   f_Children : TnevFormatInfoList;
 protected
 // overridden property methods
   function pm_GetViewSegmentsPlace: InevTag; override;
   function pm_GetLinesPlace: InevLines; override;
   procedure pm_SetLinesPlace(const aValue: InevLines); override;
   function pm_GetLocSpacing: TnevRect; override;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   function GetMaxLinesCount: Integer; override;
   procedure DoRecalc(const aView: InevViewMetrics); override;
 public
 // overridden public methods
   function GetInfoForChild(const aChild: InevObjectPrim): TnevFormatInfo; override;
   procedure DoInvalidateShape(const aShape: InevObject;
    aParts: TnevShapeParts); override;
   procedure WForce(aParts: TnevRenderingInfoParts); override;
 end;//TnevTextParaRenderInfo

implementation

uses
  k2Tags,
  evdTypes,
  evSegLst,
  k2Base,
  l3String,
  SysUtils,
  TextPara_Const,
  LeafPara_Const,
  nevFormatInfoFactory,
  TextSegment_Const,
  l3LineArray,
  l3Types,
  l3Interfaces,
  TableCell_Const,
  evTextParaConst,
  l3Chars,
  l3Utils,
  nevSegmentObject,
  l3MinMax,
  l3SingleLineInfo
  ;

// start class TnevTextParaRenderInfo

procedure TnevTextParaRenderInfo.Cleanup;
//#UC START# *479731C50290_481F174D01BF_var*
//#UC END# *479731C50290_481F174D01BF_var*
begin
//#UC START# *479731C50290_481F174D01BF_impl*
 if (f_Children <> nil) then
  f_Children.ClearReferencesToParentFormatInfo;
 FreeAndNil(f_Children);
 f_L := nil;
 f_VS := nil;
 inherited;
//#UC END# *479731C50290_481F174D01BF_impl*
end;//TnevTextParaRenderInfo.Cleanup

function TnevTextParaRenderInfo.GetInfoForChild(const aChild: InevObjectPrim): TnevFormatInfo;
//#UC START# *4815C94A027A_481F174D01BF_var*
var
 l_Index : Integer;
 l_Item  : TnevFormatInfo;  
//#UC END# *4815C94A027A_481F174D01BF_var*
begin
//#UC START# *4815C94A027A_481F174D01BF_impl*
 Assert(aChild.InheritsFrom(k2_idLeafPara) OR
        aChild.InheritsFrom(k2_idTextSegment));
 if (f_Children = nil) then
  f_Children := TnevFormatInfoList.Create;
 with f_Children do
 begin
  for l_Index := 0 to Pred(Count) do
  begin
   l_Item := Items[l_Index];
   if l_Item.Obj.IsSame(aChild) then
   begin
    Result := l_Item;
    Exit;
   end;//l_Item.f_Obj.IsSame(aShape)
  end;//for l_Index
  l_Item := TnevFormatInfoFactory.CreateFormatInfo(aChild, Self, Metrics);
  try
   l_Item.LimitWidth := LimitWidth;
          // ^ - может быть здесь надо отступы учесть
   Add(l_Item);
   Result := l_Item;
  finally
   FreeAndNil(l_Item);
  end;//try..finally
 end;//with f_Children
//#UC END# *4815C94A027A_481F174D01BF_impl*
end;//TnevTextParaRenderInfo.GetInfoForChild

procedure TnevTextParaRenderInfo.DoInvalidateShape(const aShape: InevObject;
  aParts: TnevShapeParts);
//#UC START# *48172A690313_481F174D01BF_var*
//#UC END# *48172A690313_481F174D01BF_var*
begin
//#UC START# *48172A690313_481F174D01BF_impl*
 if (nev_spSegments in aParts) then
 begin
  if (f_VS <> nil) then
  begin
   f_VS := nil;
   Include(aParts, nev_spExtent);
  end;//f_VS <> nil
 end;//nev_spSegments in aParts
 inherited;
//#UC END# *48172A690313_481F174D01BF_impl*
end;//TnevTextParaRenderInfo.DoInvalidateShape

procedure TnevTextParaRenderInfo.WForce(aParts: TnevRenderingInfoParts);
//#UC START# *48175C1302A3_481F174D01BF_var*
//#UC END# *48175C1302A3_481F174D01BF_var*
begin
//#UC START# *48175C1302A3_481F174D01BF_impl*
 if (([nev_ripWidth, nev_ripLines, nev_ripHeight] * aParts) <> []) then
  FreeAndNil(f_Children);
 inherited;
//#UC END# *48175C1302A3_481F174D01BF_impl*
end;//TnevTextParaRenderInfo.WForce

function TnevTextParaRenderInfo.pm_GetViewSegmentsPlace: InevTag;
//#UC START# *4821DB2500CB_481F174D01BFget_var*
var
 l_Super       : InevTag absolute Result;
 l_SuperHandle : Integer;
 l_Exclude     : TevNormalSegLayerHandleSet;
 l_TextPara    : InevTextPara;

 function _AddLayer(const SegLst: InevTag; Index: Integer): Boolean; 

  function _AddSegment(const Seg: InevTag; Index: Integer): Boolean; 
  var
   S1 : InevTag;
  begin
   S1 := Seg.CloneTag;
   try
    evSegmentsLayer_AddSegment(l_TextPara, l_Super, S1);
   finally
    S1 := nil;
   end;{try..finally}
   Result := true;
  end;{_AddSegment}

 var
  l_Handle : Integer; 
 begin
  l_Handle := SegLst.IntA[k2_tiHandle];
  if (l_Handle > ev_slSuperposition) AND not (l_Handle in l_Exclude) then
   SegLst.IterateChildrenF(k2L2TIA(@_AddSegment));
  Result := true;
 end;{_AddLayer}

var
 l_Segments : InevTag;
 l_CC       : Integer;
//#UC END# *4821DB2500CB_481F174D01BFget_var*
begin
//#UC START# *4821DB2500CB_481F174D01BFget_impl*
 if (f_VS = nil) then
 begin
  if not Obj.QT(InevTextPara, l_TextPara) then
   Assert(false);
  l_Segments := l_TextPara.Attr[k2_tiSegments];
  if l_Segments.IsValid then
  begin
   if not l3IsNil(l_TextPara.Text) then
   begin
    l_CC := l_Segments.ChildrenCount;
    if (l_CC <= 0) then
    begin
     // - нет никакого оформления, значит и суперпозиция не нужна
     Result := k2NullTag;
     l_TextPara.Attr[k2_tiSegments] := nil;
     // - зачищаем странные сегменты
    end//l_CC <= 0
    else
    begin
     l_SuperHandle := 0;
     if Self.Parent <> nil then
      l_Exclude := Metrics.ExcludeSuper
     else
      l_Exclude := [];
     if (l_Exclude = []) AND (l_CC = 1) then
     begin
      // - не нужно копировать сегменты в суперпозицию
      Result := l_Segments.Child[0];
     end
     else
     begin
      Result := l_Segments.rAtomEx([k2_tiChildren, k2_tiHandle, l_SuperHandle]);
      if (Result = nil) OR not Result.IsValid then
      begin
       Result := l_Segments.cAtomEx([k2_tiChildren, k2_tiHandle, l_SuperHandle], nil);
       l_Segments.IterateChildrenF(k2L2TIA(@_AddLayer));
       l_Segments.DeleteChild(Result);
      end//not Result.IsValid
      else
       Assert(false);
     end;//l_Exclude = []..
    end;//l_CC <= 0
   end//not l3IsNil(Text)
   else
    Result := k2NullTag;
  end//l_Segments.IsValid
  else
   Result := k2NullTag;
  f_VS := Result;
 end//f_VS = nil
 else
  Result := f_VS;
//#UC END# *4821DB2500CB_481F174D01BFget_impl*
end;//TnevTextParaRenderInfo.pm_GetViewSegmentsPlace

function TnevTextParaRenderInfo.pm_GetLinesPlace: InevLines;
//#UC START# *4821DE24003D_481F174D01BFget_var*
//#UC END# *4821DE24003D_481F174D01BFget_var*
begin
//#UC START# *4821DE24003D_481F174D01BFget_impl*
 Result := f_L;
//#UC END# *4821DE24003D_481F174D01BFget_impl*
end;//TnevTextParaRenderInfo.pm_GetLinesPlace

procedure TnevTextParaRenderInfo.pm_SetLinesPlace(const aValue: InevLines);
//#UC START# *4821DE24003D_481F174D01BFset_var*
//#UC END# *4821DE24003D_481F174D01BFset_var*
begin
//#UC START# *4821DE24003D_481F174D01BFset_impl*
 f_L := aValue;
//#UC END# *4821DE24003D_481F174D01BFset_impl*
end;//TnevTextParaRenderInfo.pm_SetLinesPlace

function TnevTextParaRenderInfo.GetMaxLinesCount: Integer;
//#UC START# *4BC45843011E_481F174D01BF_var*
var
 l_Lines: InevLines;
//#UC END# *4BC45843011E_481F174D01BF_var*
begin
//#UC START# *4BC45843011E_481F174D01BF_impl*
 l_Lines := Lines;
 if l_Lines = nil then         
  Result := 1
 else
 begin
  Result := l_Lines.Count;
  Assert(Result > 0);
 end;//l_Lines = nil
//#UC END# *4BC45843011E_481F174D01BF_impl*
end;//TnevTextParaRenderInfo.GetMaxLinesCount

function TnevTextParaRenderInfo.pm_GetLocSpacing: TnevRect;
//#UC START# *4E5F3D1102B8_481F174D01BFget_var*
const
 cnTopSpace = nevInch div 8;
//#UC END# *4E5F3D1102B8_481F174D01BFget_var*
begin
//#UC START# *4E5F3D1102B8_481F174D01BFget_impl*
 Result := inherited pm_GetLocSpacing;
 if (Metrics.AACLike = nev_aacLeft) and EvIsParaHyperlink(Obj) then
 begin
  Result.Top := Result.Top + cnTopSpace;
  Result.Bottom := Result.Bottom + cnTopSpace;
 end;// if (Metrics.AACLike = nev_aacLeft) and EvIsParaHyperlink(Obj) then
//#UC END# *4E5F3D1102B8_481F174D01BFget_impl*
end;//TnevTextParaRenderInfo.pm_GetLocSpacing

procedure TnevTextParaRenderInfo.DoRecalc(const aView: InevViewMetrics);
//#UC START# *4E7094780214_481F174D01BF_var*
var
 l_Height       : Integer;
 l_InfoCanvas   : InevInfoCanvas;
 l_Map          : TevLineArray;
 l_InLimitWidth : Integer;

 procedure DoFormat{(const ETAOIN_SHRDLU_aSegmentAndFontTool: InevFontTool)};   
 var
  l_SoftEnterCount : Integer;
  l_Str            : Tl3PCharLen;    // - Строка параграфа.
  l_PrevWrap       : PAnsiChar;
  l_FontIndexes    : Tl3FontIndexes;
  l_AllowHyphen    : Boolean;
  l_ITabInfo       : Il3TabInfo;
  l_MTabInfo       : Il3TabInfo;
  l_MeasureCanvas  : InevInfoCanvas;
  l_CharSize       : Integer;
  l_Spaces         : TnevRect;

  procedure FormatStr(var theLimitWidth : Integer;
                      const aCurFont    : InevFont;
                      IsSeg             : Boolean;
                      var aStr          : Tl3PCharLen;
                      var theStrExtent  : TnevPoint);   
  var
   l_AddHyphen : Boolean;
   l_StrExtent : TnevPoint;

   procedure AddLine;
   begin{AddLine}
    l_PrevWrap := aStr.S;
    if (theStrExtent.Y = 0) then
     theStrExtent.Y := l_MeasureCanvas.AverageCharHeight;
    l_Map.Add((aStr.S - l_Str.S) div l_CharSize,
              theStrExtent, l_FontIndexes, l_AddHyphen);

    l_InfoCanvas.FinishTabs(l_ITabInfo);
    l_InfoCanvas.StartTabs(l_ITabInfo, Obj.TabStops);
    // - Переоткрываем новую строку

    if (l_InfoCanvas <> l_MeasureCanvas) then 
    begin
     l_MeasureCanvas.FinishTabs(l_MTabInfo);
     l_MeasureCanvas.StartTabs(l_MTabInfo, Obj.TabStops);
     // - Переоткрываем новую строку
    end;//l_InfoCanvas <> l_MeasureCanvas

    Inc(l_Height, theStrExtent.Y);
    theStrExtent := nevPt0;
    l_StrExtent := nevPt0;
    l_FontIndexes := [l_InfoCanvas.Font.Index];
    theLimitWidth := l_InLimitWidth - l_Spaces.Left;
   end;//AddLine

  var
   l_WrappedStr : Tl3PCharLen;
   l_OTabInfo   : Il3TabInfo;

   procedure MeasureStr(aNeedTrim: Boolean);
   var
    l_Str     : Tl3WString;
    l_TabInfo : Il3TabInfo;
    l_Len     : Integer;
   begin//MeasureStr
    if aNeedTrim then
     l_Str := l3RTrim(l_WrappedStr)
    else
     l_Str := l_WrappedStr;
    if (l_InfoCanvas = l_MeasureCanvas) then
    begin
     l_MeasureCanvas.StartTabs(l_TabInfo, l_OTabInfo);
     with l_MeasureCanvas.TextExtent(l_Str).P do
     begin
      Inc(theStrExtent.P.X, X);
      Inc(l_StrExtent.P.X, X);
      if l_AddHyphen then
      begin
       Inc(theStrExtent.P.X, evHyphenWidth);
       Inc(l_StrExtent.P.X, evHyphenWidth);
      end;//l_AddHyphen
      if (Y > theStrExtent.Y) then
      begin
       theStrExtent.Y := Y;
       l_StrExtent.Y := Y;
      end;//Y > theStrExtent.Y
     end;//with l_MeasureCanvas.TextExtent(l_Str).P
     l_MeasureCanvas.FinishTabs(l_TabInfo);
    end//l_InfoCanvas = l_MeasureCanvas
    else
    begin
     l_MeasureCanvas.Font := l_InfoCanvas.Font;
     l_MeasureCanvas.StartTabs(l_TabInfo, l_OTabInfo);
     with l_MeasureCanvas.TextExtent(l_Str).P do
     begin
      Inc(theStrExtent.P.X, X);
      if l_AddHyphen then 
       Inc(theStrExtent.P.X, evHyphenWidth);
      if (Y > theStrExtent.Y) then
       theStrExtent.Y := Y;
     end;//with l_MeasureCanvas.TextExtent(l_Str).P
     l_MeasureCanvas.FinishTabs(l_TabInfo);
     l_InfoCanvas.StartTabs(l_TabInfo, l_OTabInfo);
     with l_InfoCanvas.TextExtent(l_Str).P do
     begin
      Inc(l_StrExtent.P.X, X);
      if l_AddHyphen then
       Inc(l_StrExtent.P.X, evHyphenWidth);
      if (Y > l_StrExtent.Y) then
       l_StrExtent.Y := Y;
     end;//with l_MeasureCanvas.TextExtent(l_Str).P
     l_InfoCanvas.FinishTabs(l_TabInfo);
    end;//l_InfoCanvas = l_MeasureCanvas
   end;//MeasureStr

  var
   l_WrapPos      : Integer;  { - Позиция соответствующая максимальной ширине. }
   l_SoftEnterStr : PAnsiChar; { - Позиция SoftEnter'а. }
   l_NoTabs       : Boolean;
   l_InTable      : Boolean;
  begin//FormatStr
   l_StrExtent := theStrExtent;
   with l_InfoCanvas do
   begin
    Font := aCurFont;
    Include(l_FontIndexes, Font.Index);
   end;//with l_InfoCanvas
   l_NoTabs := False;
   while True do
   begin
    l_AddHyphen := False;
    l_OTabInfo := l_InfoCanvas.TabInfo;
    l_WrapPos := l_InfoCanvas.Pos2IndexQ(theLimitWidth - l_StrExtent.X, aStr, l_NoTabs);
    Assert(l_WrapPos >= 0);
    //l_WrapPos := l_InfoCanvas.Pos2Index(theLimitWidth - l_StrExtent.X, aStr);
    if (l_WrapPos <= 0) then
    begin
     if (l_StrExtent.X <= 0) then
      l_WrapPos := 1
     else
     if l3Same(aStr, l_Str) then
     //if (aStr.S = l_Str.S) then
     // - если често - я не до конца понял, что это за проверка и какая из двух
     //   проверок правильнее.
      Break
{     else
     if (aStr.SLen > 0) then
      Assert(false)};
    end;//l_WrapPos <= 0
    l_WrappedStr := aStr;
    if (l_WrapPos >= aStr.SLen) then
     l_WrappedStr.SLen := l_WrapPos
    else
     l_WrappedStr.SLen := l3Utils.l3FindNextLine(aStr, l_WrapPos);
    // - Нашли где должна кончаться строка без учета SoftEnter.
    if (l_SoftEnterCount > 0) then
    begin
     // - Еще есть SoftEnter'ы - надо их обработать.
     l_SoftEnterStr := ev_lpScan(cc_SoftEnter, l_WrappedStr.S, l_WrappedStr.SLen);
     if (l_SoftEnterStr <> nil) then
     begin
      Dec(l_SoftEnterCount);
      l_WrappedStr.SLen := l_SoftEnterStr - l_WrappedStr.S;
      aStr.Init(l_SoftEnterStr + 1, aStr.SLen - (l_WrappedStr.SLen + 1), aStr.SCodePage);
      MeasureStr(False); // - Измеряем размеры полученной строки.
      AddLine;  // - Добавляем строку с SoftEnter'ом.
      if (aStr.SLen = 0) then
       Break // - Строка закончилась
      else
       Continue; // - Продолжаем форматировать остаток строки.
     end;//l_SoftEnterStr <> nil
    end;//l_SoftEnterCount > 0
    l_InTable := Obj.Owner.IsValid and Obj.Owner.InheritsFrom(k2_idTableCell); 
    if (l_WrapPos < aStr.SLen) then
    begin
     // - Обрабатываем переносы по слогам
     if l_AllowHyphen then
     begin
      case l3SplitBySlog(aStr, l_WrapPos, l_InTable) of
       l3_ssHyphen : l_WrappedStr.SLen := l_WrapPos;
       l3_ssYes    :
       begin
        l_WrappedStr.SLen := l_WrapPos;
        l_AddHyphen := True;
       end;//l3_ssYes
      end;//case l3SplitBySlog(aStr, l_WrapPos)
     end//l_AllowHyphen
     else
     (*with l_WrappedStr do
      if not evWhiteSpace(S[Pred(SLen)]) then*)
      if (l_StrExtent.X <= 0) then
        l_AddHyphen := l3SplitBySlog(aStr, l_WrappedStr.SLen, l_InTable) = l3_ssYes;
    end;//l_AllowHyphen
    aStr.Shift(l_WrappedStr.SLen);
    if (aStr.SLen = 0) then
    begin
     // - Строка вся кончилась. 
     MeasureStr(False); // - Измеряем размеры полученной строки. 
     Break; // - Выходим, т.к. добавлять нецелую строку не надо. 
    end;//aStr.SLen
    if not l_AddHyphen AND
       // не было переноса
       (l_WrappedStr.S > l_PrevWrap) AND
       (l_WrappedStr.SLen > 0) then
       // - предыдущие две проверки защищают от зацикливания и выхода за границы
    begin
     if not l3IsWhiteSpace((aStr.S-1)^) then
      // - разрезали посередине слова
      if l3IsWhiteSpace((l_WrappedStr.S-1)^)
          // - пробел был где-то раньше
          OR IsSeg
          // - это сегмент, который не надо резать пополам
         then
     begin
      // - Учитываем ситуацию когда сегмент режется посередине слова
      aStr.Init(l_WrappedStr.S, aStr.SLen + l_WrappedStr.SLen, aStr.SCodePage);
      l_WrappedStr.SLen := 0;
     end;//evWhiteSpace(l_WrappedStr.S-1)^)
    end;//not l_AddHyphen..
    MeasureStr(True); // - Измеряем размеры полученной строки. 
    AddLine; // - Добавляем полученную строку. 
   end;//while True
  end;//FormatStr

 var
  l_CurStr     : Tl3PCharLen;
  l_StrExtent  : TnevPoint;
  l_LimitWidth : Integer;
  l_ParaFont   : InevFont;

  function FormatSegment(const aSegment: InevTag; Index: Integer): Boolean;
  var
   l_SegFont   : InevFont;
   l_SegStart  : Integer;
   l_SegFinish : Integer;
  begin//FormatSegment
   Result := True;
   with aSegment do
   begin
    l_SegStart := Pred(IntA[k2_tiStart]);
    l_SegFinish := IntA[k2_tiFinish];
   end;//with aSegment
   { Обрабатываем часть строки до выделения: }
   l_CurStr.SLen := Min(l_SegStart, l_Str.SLen) - (l_CurStr.S - l_Str.S);
   if (l_CurStr.SLen > 0) then
    FormatStr(l_LimitWidth, l_ParaFont, false, l_CurStr, l_StrExtent);
   { Обрабатываем отрезок выделения. }
   l_CurStr.SLen := Min(l_SegFinish - l_SegStart,
                        l_Str.SLen - (l_CurStr.S - l_Str.S));
   if (l_CurStr.SLen > 0) then
   begin
    //evCheckRenderedObject(aView, aSegment, Obj, aSegmentAndFontTool, Self);
    l_SegFont := Self.InfoForChild(TnevSegmentObject.Make(aSegment)).Font[true];
    //l_SegFont := aSegmentAndFontTool.ETAOIN_SHRDLU_GetObjIFont(aView, aSegment, true, Self);
    try
     FormatStr(l_LimitWidth, l_SegFont, true, l_CurStr, l_StrExtent);
    finally
     l_SegFont := nil;
    end;//try..finally
   end;//l_CurStr.SLen > 0
  end;//FormatSegment

  function CheckSegmentHeight(const aSegment: InevTag; Index: Integer): Boolean;
  var
   l_SegFont   : InevFont;
   l_SegStart  : Integer;
   l_SegFinish : Integer;
  begin//
   Result := True;
   with aSegment do
   begin
    l_SegStart := Pred(IntA[k2_tiStart]);
    l_SegFinish := IntA[k2_tiFinish];
   end;//with aSegment
   l_CurStr.S := l_Str.S + l_SegStart;
   l_CurStr.SLen := l_SegFinish - l_SegStart;
   if (l_CurStr.SLen > 0) then
   begin
    //evCheckRenderedObject(aView, aSegment, Obj, aSegmentAndFontTool, Self);
    l_SegFont := Self.InfoForChild(TnevSegmentObject.Make(aSegment)).Font[true];
    //l_SegFont := aSegmentAndFontTool.ETAOIN_SHRDLU_GetObjIFont(aView, aSegment, true, Self);
    try
     l_MeasureCanvas.Font := l_SegFont;
     l_Height := Max(l_Height, l_MeasureCanvas.TextExtent(l_Str).Y);
    finally
     l_SegFont := nil;
    end;//try..finally
   end;//l_CurStr.SLen > 0
  end;//CheckSegmentHeight

 var
  l_FirstIndent : Integer;
  l_SLI         : Tl3SingleLineInfo;
 begin//DoFormat
  (*if (RecalcThread <> nil) AND not RecalcThread.ChangeCanvas then
   l_MeasureCanvas := l_InfoCanvas
  else *)begin
   l_MeasureCanvas := aView.InfoCanvas;
   //l_MeasureCanvas := l_InfoCanvas;
   // http://mdp.garant.ru/pages/viewpage.action?pageId=88639598
   // - может статься, что что-то не доделал
   // Точно не доделал:
   // http://mdp.garant.ru/pages/viewpage.action?pageId=195758154
   //l_MeasureCanvas := ETAOIN_SHRDLU_l3CrtIC;
   if l_InfoCanvas.EQ(l_MeasureCanvas) then
    l_MeasureCanvas := l_InfoCanvas;
  end;//RecalcThread <> nil
  l_Spaces := Self.Get_Spacing;
  l_Map := TevLineArray.Create;
  try
   Self.wMap(l_Map);
  finally
   l_Map := l_Map.Free;
  end;//try..finally
  try
   if not Obj.TreatCollapsedAsHidden OR not aView.IsTagCollapsed(Obj) then
   begin
    l_AllowHyphen := Obj.BoolA[k2_tiAllowHyphen];
    l_Str := Obj.Text;
    if (l_Str.SCodePage = CP_Unicode) then
     l_CharSize := SizeOf(WideChar)
    else
     l_CharSize := SizeOf(ANSIChar);
    l_ParaFont := Self.Get_Font(true);
    //l_ParaFont := aSegmentAndFontTool.ETAOIN_SHRDLU_GetObjIFont(aView, Obj, False, Self);
    try
     l_InfoCanvas.Font := l_ParaFont;
     if (l_InfoCanvas <> l_MeasureCanvas) then
      l_MeasureCanvas.Font := l_ParaFont;
     l_InfoCanvas.StartTabs(l_ITabInfo, Obj.TabStops);
     if (l_InfoCanvas <> l_MeasureCanvas) then
      l_MeasureCanvas.StartTabs(l_MTabInfo, Obj.TabStops);
     try
      Dec(l_InLimitWidth, l_Spaces.Right);
      if l3IsNil(l_Str) then
      begin
       l_Height := l_MeasureCanvas.AverageCharHeight;
       l_Map.Add(0, Tl3_Point_C(0, l_Height));
       if (Obj.IntA[k2_tiJustification] = Ord(ev_itPreformatted)) then
        Self.wWidth(0)
       else
        Self.wWidth(l_InLimitWidth);
      end//l3IsNil(l_Str)
      else
      if (Obj.IntA[k2_tiJustification] = Ord(ev_itPreformatted)) and Obj.IsValid then
      begin
       l_StrExtent := l_MeasureCanvas.TextExtent(l_Str);
       l_Height := l_StrExtent.Y;
       with Self.ViewSegments do
        if IsValid then
        begin
         IterateChildrenF(k2L2TIA(@CheckSegmentHeight));
         l_StrExtent.Y := l_Height;
        end;//IsValid
       // Не уверен, что такая проверка нужна... 
       l_Map.Add(l_Str.SLen, l_StrExtent);
       Self.wWidth(l_StrExtent.X + l_Spaces.Left);
      end//IntA[k2_tiJustification] = Ord(ev_itPreformatted)
      else
      begin
       Self.wWidth(l_InLimitWidth);
       l_FirstIndent := Self.Get_FirstIndent;
       if (l_Spaces.Left >= l_InLimitWidth - 100) OR
          (l_FirstIndent >= l_InLimitWidth - 100) then
       begin
        l_Height := l_MeasureCanvas.AverageCharHeight;
        l_Map.Add(0, Tl3_Point_C(0, l_Height));
       end//l_Spaces.Left >= l_InLimitWidth - 100
       else
       begin
        l_Height := 0;
        l_StrExtent := nevPt0;
        l_LimitWidth := l_InLimitWidth - l_FirstIndent;
        l_FontIndexes := [];
        l_SoftEnterCount := l3CountOfChar(cc_SoftEnter, l_Str);
        l_CurStr := l_Str;
        l_PrevWrap := l_Str.S;
        with Self.ViewSegments do
         if IsValid then
         begin
          IterateChildrenF(k2L2TIA(@FormatSegment));
          l_CurStr.SLen := l_Str.SLen - (l_CurStr.S - l_Str.S);
          FormatStr(l_LimitWidth, l_ParaFont, false, l_CurStr, l_StrExtent);
          // - доформатируем хвост после последнего сегмента
         end//IsValid
         else
          FormatStr(l_LimitWidth, l_ParaFont, false, l_CurStr, l_StrExtent);
        if (l_StrExtent.Y <= 0) then
        begin
         l_MeasureCanvas.Font := l_ParaFont;
         l_StrExtent.Y := l_MeasureCanvas.AverageCharHeight;
        end;//l_StrExtent.Y <= 0
        l_Map.Add(l_Str.SLen, l_StrExtent, l_FontIndexes, false);
        Inc(l_Height, l_StrExtent.Y);
       end;//l_Spaces.Left >=..
      end;//..ev_itPreformatted..
     finally
      if (l_InfoCanvas <> l_MeasureCanvas) then
       l_MeasureCanvas.FinishTabs(l_MTabInfo);
      l_InfoCanvas.FinishTabs(l_ITabInfo);
     end;//try..finally
    finally
     l_ParaFont := nil;
    end;//try..finally
 (*   with Obj.rAtomEx([k2_tiFrame, k2_tiFrameUp]) do
     if IsValid then
      Inc(l_Height, IntA[k2_tiWidth]);*)
   end//not Obj.TreatCollapsedAsHidden OR not aView.IsTagCollapsed(Obj)
   else
   begin
    Self.wWidth(0);
    l_Height := 0;
   end//not Obj.TreatCollapsedAsHidden OR not aView.IsTagCollapsed(Obj)
   ;
   Inc(l_Height, l_Spaces.Top);
   Inc(l_Height, l_Spaces.Bottom);
  finally
   if (l_Map <> nil) then
   begin
    if (l_Map.Count < 1) then
    begin
     // - удаляем ненужное в данном случае форматирование
     l_Map := nil;
     Self.wMap(nil);
    end//l_Map.Count < 1
    else
    if (l_Map.Count = 1) then
    begin
     if (Obj.IntA[k2_tiJustification] = Ord(ev_itPreformatted)) then
     begin
      // - удаляем ненужное в данном случае форматирование
      l_Map := nil;
      Self.wMap(nil);
     end//IntA[k2_tiJustification] = Ord(ev_itPreformatted)
     else
     begin
      with PevLineInfo(l_Map.Items[0])^ do
       l_SLI := Tl3SingleLineInfo.Make(LE.X, LE.Y, FI);
      try
       l_Map := nil;
       Self.wMap(l_SLI);
      finally
       FreeAndNil(l_SLI);
      end;//try..finally
     end;//IntA[k2_tiJustification] = Ord(ev_itPreformatted)
    end;//l_Map.Count <= 1
   end;//l_Map <> nil
  end;//try..finally
 end;//DoFormat

{var
 l_SegmentAndFontTool : InevFontTool;}
//#UC END# *4E7094780214_481F174D01BF_var*
begin
//#UC START# *4E7094780214_481F174D01BF_impl*
 l_InLimitWidth := Self.rLimitWidth;
 l_Height := 0;
 Obj.DoLoad;
 l_InfoCanvas := aView.FormatCanvas;
// l_InfoCanvas := aView.InfoCanvas;
 try
  if Self.IsHidden(false,
                  (l_InfoCanvas <> nil) AND
                  l_InfoCanvas.Printing) then
  begin
   Self.wWidth(0);
   Self.wMap(nil);
  end//Obj.IsHiddenPrim(Self, aView.HiddenStyles)
  else
  begin
(*   l_SegmentAndFontTool := aView.FontTool{ As InevFontTool};
   try*)
(*    l_SegmentAndFontTool.ForPrinting := (l_InfoCanvas.Printing
                                         {$IFNDef Nemesis}OR not aView.IsWebStyle{$EndIf});*)
    l_InfoCanvas.Lock;
    try
     l_InfoCanvas.PushBC;
     l_InfoCanvas.PushFC;
     // - Запоминаем - чтобы не испортить фон для отрисовки
     try
      DoFormat{(l_SegmentAndFontTool)};
     finally
      l_InfoCanvas.PopFC;
      l_InfoCanvas.PopBC;
     end;//try..finally
    finally
     l_InfoCanvas.Unlock;
    end;//try..finally
(*   finally
    l_SegmentAndFontTool := nil;
   end;//try..finally*)
  end;//not Obj.IsHiddenPrim(Self, aView.HiddenStyles)
 finally
  l_InfoCanvas := nil;
 end;//try..finally
 Self.wHeight(l_Height);
//#UC END# *4E7094780214_481F174D01BF_impl*
end;//TnevTextParaRenderInfo.DoRecalc

end.