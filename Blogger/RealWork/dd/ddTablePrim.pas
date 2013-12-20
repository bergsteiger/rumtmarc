unit ddTablePrim;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "dd"
// Модуль: "w:/common/components/rtl/Garant/dd/ddTablePrim.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::dd::ddCommon::TddTablePrim
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

interface

uses
  l3Base,
  ddBase,
  ddDocumentAtom,
  ddTableCell,
  ddTableRow,
  ddRowList,
  ddRowProperty,
  ddParagraphProperty,
  ddTextParagraph,
  ddCustomDestination
  ;

type
 TddTablePrim = class(TddDocumentAtom)
 private
 // private fields
   f_EtalonRow : TddTableRow;
   f_RowList : TddRowList;
    {* Поле для свойства RowList}
   f_Level : Integer;
    {* Поле для свойства Level}
   f_Scale : Integer;
    {* Поле для свойства Scale}
   f_Width : Integer;
    {* Поле для свойства Width}
   f_LeftIndent : Integer;
    {* Поле для свойства LeftIndent}
   f_Nested : Boolean;
    {* Поле для свойства Nested}
   f_IsPercent : Boolean;
    {* Поле для свойства IsPercent}
   f_IsSBS : Boolean;
    {* Поле для свойства IsSBS}
 private
 // private methods
   procedure CheckLastRow(aNeedClone: Boolean);
   function GetLineLen(const aText: Tl3String): Integer;
   function FindPrevRowWithCellProps: TddTableRow;
   procedure CorrectParaLevelAfterCloseTable(aParaProp: TddParagraphProperty);
     {* Уменьшает уровень текущего параграфа на 1, чтобы следующие даннные добавлялись на уровень выше. }
 protected
 // property methods
   function pm_GetLastRow: TddTableRow;
   function pm_GetRows(anRowID: Integer): TddTableRow;
   function pm_GetRowCount: Integer;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 public
 // overridden public methods
   procedure Clear; override;
   constructor Create(anOwner: TObject;
    aDetination: TddCustomDestination); override;
 protected
 // protected methods
   procedure ProcessTableRow(aRow: TddTableRow;
     aPrevRow: TddTableRow);
 public
 // public methods
   procedure AddRow(aRow: TddTableRow); overload; 
   procedure AddRow(anEmpty: Boolean); overload; 
   procedure ClearLastRow;
   procedure CloneRow;
   procedure CloseCell;
   procedure AdjustWidth(aNewWidth: Integer);
   function LastParagraph: TddTextParagraph;
   function AddTextParaWithCheckingRow(const aPara: TddDocumentAtom): TddTextParagraph;
   procedure ApplyCellProperty(const aCellProp: TddCellProperty);
   function GetLastNotClosedRow: TddTableRow;
   function Cells(aRowID: Integer;
     aCellID: Integer): TddTableCell;
   function CellsProps(aRowID: Integer;
     aCellID: Integer): TddCellProperty;
   procedure CalculateCellsWidth;
   procedure CheckPercentCells(aRow: TddTableRow);
   procedure CheckSpanCells(aScaleCellWidth: Boolean;
     aDocTextWidth: Integer);
   procedure NormalizeCells;
   procedure CloseRow;
   procedure CloseTable(aScaleCellWidth: Boolean;
     aDocTextWidth: Integer);
   function BeforeParseCell: TddTableRow;
   procedure CloseLastRow(aRowProp: TddRowProperty;
     aParaProp: TddParagraphProperty);
 protected
 // protected properties
   property RowList: TddRowList
     read f_RowList;
 public
 // public properties
   property Level: Integer
     read f_Level
     write f_Level;
   property Scale: Integer
     read f_Scale
     write f_Scale;
   property Width: Integer
     read f_Width
     write f_Width;
   property LeftIndent: Integer
     read f_LeftIndent
     write f_LeftIndent;
   property Nested: Boolean
     read f_Nested
     write f_Nested;
   property IsPercent: Boolean
     read f_IsPercent
     write f_IsPercent;
   property IsSBS: Boolean
     read f_IsSBS
     write f_IsSBS;
   property LastRow: TddTableRow
     read pm_GetLastRow;
   property Rows[anRowID: Integer]: TddTableRow
     read pm_GetRows;
     default;
   property RowCount: Integer
     read pm_GetRowCount;
 end;//TddTablePrim

implementation

uses
  SysUtils,
  l3Math,
  l3Defaults,
  l3MinMax,
  l3UnitsTools,
  StrUtils,
  RTFtypes
  ;

// start class TddTablePrim

procedure TddTablePrim.CheckLastRow(aNeedClone: Boolean);
//#UC START# *519B755501DD_4FACE16602E1_var*
//#UC END# *519B755501DD_4FACE16602E1_var*
begin
//#UC START# *519B755501DD_4FACE16602E1_impl*
 if GetLastNotClosedRow = nil then
  if aNeedClone then
   CloneRow
  else
   AddRow(True);
//#UC END# *519B755501DD_4FACE16602E1_impl*
end;//TddTablePrim.CheckLastRow

function TddTablePrim.GetLineLen(const aText: Tl3String): Integer;
//#UC START# *519C6F6A0171_4FACE16602E1_var*
var
 l_Pos, l_PrevPos: Integer;
//#UC END# *519C6F6A0171_4FACE16602E1_var*
begin
//#UC START# *519C6F6A0171_4FACE16602E1_impl*
 l_PrevPos := 1;
 Result := 0;
 repeat
  l_Pos := PosEx(#10, aText.AsString, l_PrevPos);
  if l_Pos = 0 then
   l_Pos := aText.Len;
  Result := Max(Result, l_Pos - l_PrevPos + 1);
  l_PrevPos := Succ(l_Pos);
 until l_Pos = aText.Len;
//#UC END# *519C6F6A0171_4FACE16602E1_impl*
end;//TddTablePrim.GetLineLen

function TddTablePrim.FindPrevRowWithCellProps: TddTableRow;
//#UC START# *51E64EC500BE_4FACE16602E1_var*
var
 i     : Integer;
 l_Row : TddTableRow;
//#UC END# *51E64EC500BE_4FACE16602E1_var*
begin
//#UC START# *51E64EC500BE_4FACE16602E1_impl*
 Result := nil;
 for i := f_RowList.Count - 1 downto 0 do
 begin
  l_Row := f_RowList[i];
  if l_Row.IsCellPropsInit then
  begin
   Result := l_Row;
   Break;
  end; // if l_Row.IsCellPropsInit then
 end; // for i := f_RowList.Count - 1 downto 0 do
//#UC END# *51E64EC500BE_4FACE16602E1_impl*
end;//TddTablePrim.FindPrevRowWithCellProps

procedure TddTablePrim.CorrectParaLevelAfterCloseTable(aParaProp: TddParagraphProperty);
//#UC START# *51E6661502F3_4FACE16602E1_var*
//#UC END# *51E6661502F3_4FACE16602E1_var*
begin
//#UC START# *51E6661502F3_4FACE16602E1_impl*
 if aParaProp.itap > 1 then // Чтобы не начинать новую таблицу по приходу обычного параграфа...
  aParaProp.itap := aParaProp.itap - 1;
//#UC END# *51E6661502F3_4FACE16602E1_impl*
end;//TddTablePrim.CorrectParaLevelAfterCloseTable

procedure TddTablePrim.AddRow(aRow: TddTableRow);
//#UC START# *5193529401A7_4FACE16602E1_var*
//#UC END# *5193529401A7_4FACE16602E1_var*
begin
//#UC START# *5193529401A7_4FACE16602E1_impl*
 f_RowList.Add(aRow);
 aRow.TAP.Left:= LeftIndent;
//#UC END# *5193529401A7_4FACE16602E1_impl*
end;//TddTablePrim.AddRow

procedure TddTablePrim.AddRow(anEmpty: Boolean);
//#UC START# *519352D60008_4FACE16602E1_var*
var
 l_Row : TddTableRow;
//#UC END# *519352D60008_4FACE16602E1_var*
begin
//#UC START# *519352D60008_4FACE16602E1_impl*
 l_Row := TddTableRow.Create(nil, f_Destination);
 try
  f_RowList.Add(l_Row);
  if anEmpty then
   l_Row.AddCellAndPara(True);
 finally
  FreeAndNil(l_Row);
 end;
//#UC END# *519352D60008_4FACE16602E1_impl*
end;//TddTablePrim.AddRow

procedure TddTablePrim.ClearLastRow;
//#UC START# *5193530901C8_4FACE16602E1_var*
var
 l_LastRow : TddTableRow;
//#UC END# *5193530901C8_4FACE16602E1_var*
begin
//#UC START# *5193530901C8_4FACE16602E1_impl*
 l_LastRow := GetLastNotClosedRow;
 if l_LastRow <> nil then
  l_LastRow.Clear;
//#UC END# *5193530901C8_4FACE16602E1_impl*
end;//TddTablePrim.ClearLastRow

procedure TddTablePrim.ProcessTableRow(aRow: TddTableRow;
  aPrevRow: TddTableRow);
//#UC START# *519353210123_4FACE16602E1_var*
var
 k: Integer;
 l: Integer;
 i: Integer;
 l_P: TddDocumentAtom;
 l_Table: Boolean;
 l_NullWidth: Boolean;
//#UC END# *519353210123_4FACE16602E1_var*
begin
//#UC START# *519353210123_4FACE16602E1_impl*
 l := -2;
 // - чтобы упало, если не инициализировано
 if aRow.CellCount > 0 then
 begin
  // Коррекция флага "объединение по вертикали"
  if aPrevRow <> nil then
   for i:= 0 to Pred(aRow.CellCount) do
   begin
    if aRow[i].Props.VMergeFirst and (i < aPrevRow.CellCount) then
     if (aRow[i].Props.Width = aPrevRow[i].Props.Width) then
      if aPrevRow[i].Props.VMergeFirst and not aPrevRow[i].Props.VMerged then
      begin
       aPrevRow[i].Props.VMergeFirst := False;
       aRow[i].Props.VMergeFirst := False;
       aRow[i].Props.VMerged := False;
      end // if aPrevRow[i].Props.VMergeFirst and not aPrevRow[i].Props.VMerged then
      else
      if (aPrevRow[i].Props.VMergeFirst) or (aPrevRow[i].Props.VMerged and aRow[i].Empty) then
      begin
       aRow[i].Props.VMergeFirst := False;
       aRow[i].Props.VMerged := True;
       // Добавить свои абзацы в верхнюю (самую?) ячейку
      end; // if (aPrevRow[i].Props.VMergeFirst) or (aPrevRow[i].Props.VMerged and aRow[i].Empty) then
   end; // for i
 // Ищем и объединяем ячейки
  k := 0;
  while k < aRow.CellCount do
  begin
   if aRow.Cells[k].Props.MergeFirst then
   begin
    l:= k;
    Inc(k);
   end
   else
   if aRow.Cells[k].Props.Merged then
   begin
    aRow.Cells[l].Props.Width := aRow.Cells[k].Props.Width;
    aRow.DeleteCell(k);
   end
   else
    Inc(k);
  end; // for k
 end;// aRow.CellCount > 0
//#UC END# *519353210123_4FACE16602E1_impl*
end;//TddTablePrim.ProcessTableRow

procedure TddTablePrim.CloneRow;
//#UC START# *51935359008C_4FACE16602E1_var*
var
 i     : Integer;
 l_Row : TddTableRow;
//#UC END# *51935359008C_4FACE16602E1_var*
begin
//#UC START# *51935359008C_4FACE16602E1_impl*
 if GetLastNotClosedRow <> nil then
 begin
  l_Row := TddTableRow.Create(nil, f_Destination);
  try
   l_Row.Assign(LastRow);
   l_Row.Closed := False;
   for i := 0 to Pred(l_Row.CellCount) do
    l_Row[i].Clear;
   f_RowList.Add(l_Row);
  finally
   FreeAndNil(l_Row);
  end;
 end // if LastRow <> nil then
 else // Нет ни абзаца, ни таблицы...
  AddRow(True);
//#UC END# *51935359008C_4FACE16602E1_impl*
end;//TddTablePrim.CloneRow

procedure TddTablePrim.CloseCell;
//#UC START# *519353720016_4FACE16602E1_var*
var
 l_LastRow : TddTableRow;
 l_LastCell: TddTableCell;
//#UC END# *519353720016_4FACE16602E1_var*
begin
//#UC START# *519353720016_4FACE16602E1_impl*
 l_LastRow := GetLastNotClosedRow;
 if l_LastRow = nil then
 begin
  CloneRow;
  l_LastRow := LastRow;
 end; // if LastRow = nil then
 l_LastCell := l_LastRow.GetLastNonClosedCell;
 if l_LastCell = nil then
 begin
  l_LastRow.AddEmptyCell;
  l_LastCell := l_LastRow.GetLastNonClosedCell;
 end; // if l_LastCell = nil then
 l_LastCell.Closed := True;
 l_LastRow.CellPropsCompleate := True;
//#UC END# *519353720016_4FACE16602E1_impl*
end;//TddTablePrim.CloseCell

procedure TddTablePrim.AdjustWidth(aNewWidth: Integer);
//#UC START# *5193538A0211_4FACE16602E1_var*
var
 i, j : Integer;
 l_R: TddTableRow;
 l_OldWidth : Integer;
//#UC END# *5193538A0211_4FACE16602E1_var*
begin
//#UC START# *5193538A0211_4FACE16602E1_impl*
 for i := 0 to RowList.Hi do
 begin
  l_R := TddTableRow(RowList.Items[i]);
  l_OldWidth := 0;
  for j := 0 to Pred(l_R.CellCount) do
  begin
   Inc(l_OldWidth, l_R.Cells[j].Props.Width);
   if j > 0 then
    Dec(l_OldWidth, l_R.Cells[Pred(j)].Props.Width);
  end; // for j
  if l_OldWidth > aNewWidth then
   for j := 0 to Pred(l_R.CellCount) do
    l_R.Cells[j].Props.Width := l3MulDiv(l_R.Cells[j].Props.Width, aNewWidth, l_OldWidth);
 end; // for i
//#UC END# *5193538A0211_4FACE16602E1_impl*
end;//TddTablePrim.AdjustWidth

function TddTablePrim.LastParagraph: TddTextParagraph;
//#UC START# *519353B400B5_4FACE16602E1_var*
var
 l_Cell    : TddTableCell;
 l_LastRow : TddTableRow;
//#UC END# *519353B400B5_4FACE16602E1_var*
begin
//#UC START# *519353B400B5_4FACE16602E1_impl*
 Result := nil;
 l_LastRow := GetLastNotClosedRow;
 if l_LastRow <> nil then // иначе строка уже закончилась
 begin
  l_Cell := l_LastRow.GetLastNonClosedCell;
  if (l_Cell <> nil) and not l_Cell.Empty then
   Result := l_Cell.LastTextPara;
 end; // l_LastRow <> nil
//#UC END# *519353B400B5_4FACE16602E1_impl*
end;//TddTablePrim.LastParagraph

function TddTablePrim.AddTextParaWithCheckingRow(const aPara: TddDocumentAtom): TddTextParagraph;
//#UC START# *51935B02008F_4FACE16602E1_var*
var
 l_LastRow : TddTableRow;
 l_LastCell: TddTableCell;
//#UC END# *51935B02008F_4FACE16602E1_var*
begin
//#UC START# *51935B02008F_4FACE16602E1_impl*
 CheckLastRow(True);
 l_LastRow := GetLastNotClosedRow;
 if l_LastRow <> nil then
 begin
  l_LastCell := l_LastRow.GetLastNonClosedCell;
  if l_LastCell = nil then
  begin
   l_LastRow.AddEmptyCell;
   l_LastCell := l_LastRow.GetLastNonClosedCell;
  end; // if l_LastCell = nil then
  if l_LastCell <> nil then
   if aPara = nil then
    Result := l_LastCell.AddParagraph 
   else
    l_LastCell.Add(aPara);
 end; // if l_LastRow <> nil then
//#UC END# *51935B02008F_4FACE16602E1_impl*
end;//TddTablePrim.AddTextParaWithCheckingRow

procedure TddTablePrim.ApplyCellProperty(const aCellProp: TddCellProperty);
//#UC START# *51935B27022C_4FACE16602E1_var*
var
 l_LastRow : TddTableRow;
//#UC END# *51935B27022C_4FACE16602E1_var*
begin
//#UC START# *51935B27022C_4FACE16602E1_impl*
 if GetLastNotClosedRow = nil then
  AddRow(False);
 l_LastRow := LastRow;
 l_LastRow.AddCellProp(aCellProp);
//#UC END# *51935B27022C_4FACE16602E1_impl*
end;//TddTablePrim.ApplyCellProperty

function TddTablePrim.GetLastNotClosedRow: TddTableRow;
//#UC START# *519B67FC0314_4FACE16602E1_var*
//#UC END# *519B67FC0314_4FACE16602E1_var*
begin
//#UC START# *519B67FC0314_4FACE16602E1_impl*
 Result := LastRow;
 if (Result <> nil) and Result.Closed then
  Result := nil;
//#UC END# *519B67FC0314_4FACE16602E1_impl*
end;//TddTablePrim.GetLastNotClosedRow

function TddTablePrim.Cells(aRowID: Integer;
  aCellID: Integer): TddTableCell;
//#UC START# *519B6E6E0351_4FACE16602E1_var*
//#UC END# *519B6E6E0351_4FACE16602E1_var*
begin
//#UC START# *519B6E6E0351_4FACE16602E1_impl*
 if (aRowID >= 0) and (aRowID < RowList.Count) and
    (aCellID >= 0) and (aCellID < TddTableRow(RowList.Items[aRowID]).CellCount) then
  Result := TddTableRow(RowList.Items[aRowID]).Cells[aCellID]
 else
  Result := nil;
//#UC END# *519B6E6E0351_4FACE16602E1_impl*
end;//TddTablePrim.Cells

function TddTablePrim.CellsProps(aRowID: Integer;
  aCellID: Integer): TddCellProperty;
//#UC START# *519B6EBD031F_4FACE16602E1_var*
//#UC END# *519B6EBD031F_4FACE16602E1_var*
begin
//#UC START# *519B6EBD031F_4FACE16602E1_impl*
  if (aRowID >= 0) and (aRowID < RowList.Count) and
     (aCellID >= 0) and (aCellID < TddTableRow(RowList[aRowID]).CellCount) then
   Result := TddTableRow(RowList[aRowID]).Cells[aCellID].Props
  else
   Result := nil;
//#UC END# *519B6EBD031F_4FACE16602E1_impl*
end;//TddTablePrim.CellsProps

procedure TddTablePrim.CalculateCellsWidth;
//#UC START# *519C6553007B_4FACE16602E1_var*
var
 i: Integer;
 l_DocAtom: TddDocumentAtom;
 l_Row: TddTableRow;
 l_Cell: TddTableCell;
 RowIndex: Integer;
 CellIndex: Integer;
 l_CellWidth: LongInt;
 l_RowWidth: LongInt;
 l_P: TddTextParagraph;
 l_NeedAdjust: Boolean;
 l_TableWidth: Integer;
//#UC END# *519C6553007B_4FACE16602E1_var*
begin
//#UC START# *519C6553007B_4FACE16602E1_impl*
 l_RowWidth := 0;
 l_NeedAdjust := False;
 for RowIndex := 0 to RowCount - 1 do
 begin
   l_Row:= Rows[RowIndex];

   CheckPercentCells(l_Row);

   l_RowWidth := 0;
   for CellIndex := 0 to l_Row.CellCount - 1 do
   begin
    l_Cell := l_Row.Cells[CellIndex];

    if RowIndex = 0 then // Заполняем эталонную строку ячейками
     for i := 1 to l_Row.CellSpan[CellIndex] do
      f_EtalonRow.AddCellAndPara(True);

    if l_Row.CellWidth[CellIndex] = 0 then
    begin
     l_CellWidth := 0;
     for i := 0 to l_Cell.Hi do
     begin
      l_DocAtom := l_Cell.Items[i];
      if l_DocAtom is TddTextParagraph then
      begin
       l_P := l_DocAtom as TddTextParagraph;
       l_CellWidth := Max(GetLineLen(l_P.Text), l_CellWidth);
      end
      else
       l_CellWidth := Max((l_DocAtom as TddTablePrim).LastRow.TAP.Width, l_CellWidth);
     end; { for i }
     // Ширина ячейки в символах, переводим в дюймы
     l_Row.CellWidth[CellIndex]:= evChar2Inch(l_CellWidth) + 2 * 108;
     l_NeedAdjust := True;
    end
    else
    // Перерассчитываем в дюймы ;
    begin
     if l_Row.Cells[CellIndex].Props.IsPercent then
      l_Row.CellWidth[CellIndex] := l3MulDiv(Width, l_Row.CellWidth[CellIndex], 100)
     else // Пикселы
      l_Row.CellWidth[CellIndex] := 96 * (l_Row.CellWidth[CellIndex])* 144 div 100;
    end;
    Inc(l_RowWidth, l_Row.CellWidth[CellIndex]);
   end; // for CellIndex
   l_Row.TAP.Width := l_RowWidth;
 end; // Все ячейки имеют длину в шурадюймах

 // Корректируем ширины эталона по максимальной ширине ячеек
 f_EtalonRow.TAP.Width := 0;
 for CellIndex := 0 to Pred(f_EtalonRow.CellCount) do
 begin
   l_CellWidth := 0;
   // Находим максимальную ширину
   for RowIndex:= 0 to Pred(RowCount) do
   begin
    l_Row := Rows[RowIndex];
    l_CellWidth := Max(l_Row.CellWidthBySpan[CellIndex], l_CellWidth);
   end; { for RowIndex }
   if l_CellWidth = 0 then
    l_CellWidth := 108 + 108;
   f_EtalonRow.CellWidth[CellIndex] := l_CellWidth;
   f_EtalonRow.TAP.Width := f_EtalonRow.TAP.Width + l_CellWidth;
 end; { for CellIndex };
//#UC END# *519C6553007B_4FACE16602E1_impl*
end;//TddTablePrim.CalculateCellsWidth

procedure TddTablePrim.CheckPercentCells(aRow: TddTableRow);
//#UC START# *519C65E700C6_4FACE16602E1_var*
var
 i: Integer;
 l_Percent: Integer;
 l_NonPercentCount: Integer;
//#UC END# *519C65E700C6_4FACE16602E1_var*
begin
//#UC START# *519C65E700C6_4FACE16602E1_impl*
 l_Percent:= 0;
 l_NonPercentCount:= 0;
 for i:= 0 to Pred(aRow.CellCount) do
 begin
   if aRow.CellWidth[i] = 0 then
    Inc(l_NonPercentCount)
   else
   if aRow.Cells[i].Props.IsPercent then
    inc(l_Percent, aRow.CellWidth[i]);
 end; // for i
 if l_Percent > 0 then
  for i:= 0 to Pred(aRow.CellCount) do
  begin
    if aRow.CellWidth[i] = 0 then
    begin
     aRow.CellWidth[i]:= (100 - l_Percent) div l_NonPercentCount;
     aRow.Cells[i].Props.IsPercent:= True;
    end; // aRow.CellWidth[i] = 0
  end; // for i
//#UC END# *519C65E700C6_4FACE16602E1_impl*
end;//TddTablePrim.CheckPercentCells

procedure TddTablePrim.CheckSpanCells(aScaleCellWidth: Boolean;
  aDocTextWidth: Integer);
//#UC START# *519C65FC03D1_4FACE16602E1_var*
var
 i: Integer;
 k: Integer;
 l_Row: TddTableRow;
 RowIndex: Integer;
 CellIndex, l_EtalonCellIndex: Integer;
 l_Len: LongInt;
 l_Scale: Integer;
//#UC END# *519C65FC03D1_4FACE16602E1_var*
begin
//#UC START# *519C65FC03D1_4FACE16602E1_impl*
 // Даже без масштаба нужно ограничивать ширину таблицы...
  if aScaleCellWidth then
   l_Scale := aDocTextWidth
  else
   l_Scale := aDocTextWidth * 2;
  l_Scale := l3MulDiv(100, l_Scale, f_EtalonRow.TAP.Width);
  l_Scale := Min(100, l_Scale);
   for RowIndex := 0 to RowCount - 1 do
   begin
    l_Row := Rows[RowIndex];
    l_EtalonCellIndex := 0;
    for CellIndex := 0 to Pred(l_Row.CellCount) do
    begin
     l_Len := 0;
     for k := 1 to l_Row.Cells[CellIndex].Props.CellSpan do
     begin
      // Найти соответствующую ячейку в эталонном столбце и прибавить ее ширину
      if f_EtalonRow.Cells[l_EtalonCellIndex] <> nil then
      begin
       Inc(l_Len, f_EtalonRow.CellWidth[l_EtalonCellIndex]);
       Inc(l_EtalonCellIndex);
      end // if f_EtalonRow.Cells[l_EtalonCellIndex] <> nil then
     end; // l_Row.TAP.CellsProps[CellIndex].CellSpan > 1
     if (l_Len <> 0)  then
      l_Row.CellWidth[CellIndex] := l3MulDiv(l_Len, l_Scale, 100) + l_Row.CellSpan[CellIndex] * (108+108);
    end; // for CellIndex
   end; // for RowIndex;
//#UC END# *519C65FC03D1_4FACE16602E1_impl*
end;//TddTablePrim.CheckSpanCells

procedure TddTablePrim.NormalizeCells;
//#UC START# *519C7ACE00A5_4FACE16602E1_var*
var
 l_Row       : TddTableRow;
 l_RowIndex  : Integer;
 l_CellIndex : Integer;
 l_BorderRule: TddBorderRules;
//#UC END# *519C7ACE00A5_4FACE16602E1_var*
begin
//#UC START# *519C7ACE00A5_4FACE16602E1_impl*
 for l_RowIndex := 0 to RowCount - 1 do
 begin
  l_Row := Rows[l_RowIndex];
  for l_CellIndex := 0 to l_Row.CellCount - 1 do
  begin
   if l_CellIndex > 0 then
    l_Row.CellWidth[l_CellIndex]:= l_Row.CellWidth[l_CellIndex] + l_Row.CellWidth[l_CellIndex - 1];
  end;
 end;
//#UC END# *519C7ACE00A5_4FACE16602E1_impl*
end;//TddTablePrim.NormalizeCells

procedure TddTablePrim.CloseRow;
//#UC START# *519C7E26026D_4FACE16602E1_var*
var
 l_PrevRow, l_Row: TddTableRow;
 l_PrevCellIndex: Integer;
//#UC END# *519C7E26026D_4FACE16602E1_var*
begin
//#UC START# *519C7E26026D_4FACE16602E1_impl*
 if RowCount < 2 then Exit;
 l_PrevRow := Rows[RowCount - 2]; // Предыдущий ряд
 l_Row := LastRow;
 if l_Row.CellCountBySpan < l_PrevRow.CellCountBySpan then { TODO : Нужно учитывать объединенные по горизонтали ячейки }
 begin
  l_PrevCellIndex := l_Row.CellCountBySpan;
  while l_PrevCellIndex < l_PrevRow.CellCountBySpan do
  begin
   if l_PrevRow.CellPropBySpan[l_PrevCellIndex].RowSpan > 1 then
    l_Row.CloneCell(l_PrevRow.CellPropBySpan[l_PrevCellIndex]);
   Inc(l_PrevCellIndex, l_PrevRow.CellPropBySpan[l_PrevCellIndex].CellSpan);
  end; // f_Table.RowList.Count > 0
 end;
//#UC END# *519C7E26026D_4FACE16602E1_impl*
end;//TddTablePrim.CloseRow

procedure TddTablePrim.CloseTable(aScaleCellWidth: Boolean;
  aDocTextWidth: Integer);
//#UC START# *519C7EE102E3_4FACE16602E1_var*
//#UC END# *519C7EE102E3_4FACE16602E1_var*
begin
//#UC START# *519C7EE102E3_4FACE16602E1_impl*
 f_EtalonRow := TddTableRow.Create(nil, f_Destination);
 try
  CalculateCellsWidth;
  // Коррекция объединенных по горизонтали
  CheckSpanCells(aScaleCellWidth, aDocTextWidth);

  // Приведение ширин к нормальному виду, расстановка рамок
  NormalizeCells;
  Closed := True;
 finally
  FreeAndNil(f_EtalonRow);
 end;
//#UC END# *519C7EE102E3_4FACE16602E1_impl*
end;//TddTablePrim.CloseTable

function TddTablePrim.BeforeParseCell: TddTableRow;
//#UC START# *519C7F2303A2_4FACE16602E1_var*
var
 l_PrevRow: TddTableRow;
 l_PrevCellIndex: Integer;
//#UC END# *519C7F2303A2_4FACE16602E1_var*
begin
//#UC START# *519C7F2303A2_4FACE16602E1_impl*
 Result := LastRow;
 if Result = nil then
 begin
  AddRow(False);
  Result := LastRow;
 end; // if Result = nil then 
 if (RowCount > 1) then
 begin
  l_PrevCellIndex := Result.CellCountBySpan;
  l_PrevRow := Rows[RowCount - 2]; // Предыдущий ряд
  while (l_PrevRow.CellPropBySpan[l_PrevCellIndex] <> nil) and
        (l_PrevRow.CellPropBySpan[l_PrevCellIndex].RowSpan > 1) do
  begin
   Result.CloneCell(l_PrevRow.CellPropBySpan[l_PrevCellIndex]);
   Inc(l_PrevCellIndex, l_PrevRow.CellPropBySpan[l_PrevCellIndex].CellSpan);
  end; // while
 end; // f_Table.RowList.Count > 1
 Result.AddCellAndPara(True);
 Result.LastCell.Props.Border.IsFramed := False;
//#UC END# *519C7F2303A2_4FACE16602E1_impl*
end;//TddTablePrim.BeforeParseCell

procedure TddTablePrim.CloseLastRow(aRowProp: TddRowProperty;
  aParaProp: TddParagraphProperty);
//#UC START# *51E65C1C0375_4FACE16602E1_var*
var
 l_Row: TddTableRow;
//#UC END# *51E65C1C0375_4FACE16602E1_var*
begin
//#UC START# *51E65C1C0375_4FACE16602E1_impl*
 l_Row := LastRow;
 l_Row.CellPropsCompleate := True;
 l_Row.TAP := aRowProp;
 if l_Row.IsCellPropsInit then
  l_Row.ApplyCellProps
 else
  l_Row.ApplyExternalCellPropsDef(FindPrevRowWithCellProps);
 l_Row.Closed := True;
 if l_Row.TAP.IsLastRow then
 begin
  Closed := True;
  CorrectParaLevelAfterCloseTable(aParaProp);
 end; // if LastRow.TAP.LastRow then
//#UC END# *51E65C1C0375_4FACE16602E1_impl*
end;//TddTablePrim.CloseLastRow

function TddTablePrim.pm_GetLastRow: TddTableRow;
//#UC START# *519B7458025F_4FACE16602E1get_var*
//#UC END# *519B7458025F_4FACE16602E1get_var*
begin
//#UC START# *519B7458025F_4FACE16602E1get_impl*
 if f_RowList.Count > 0 then
  Result := f_RowList.Last
 else
  Result := nil;
//#UC END# *519B7458025F_4FACE16602E1get_impl*
end;//TddTablePrim.pm_GetLastRow

function TddTablePrim.pm_GetRows(anRowID: Integer): TddTableRow;
//#UC START# *519B7CC3008E_4FACE16602E1get_var*
//#UC END# *519B7CC3008E_4FACE16602E1get_var*
begin
//#UC START# *519B7CC3008E_4FACE16602E1get_impl*
 Result := f_RowList.Items[anRowID];
//#UC END# *519B7CC3008E_4FACE16602E1get_impl*
end;//TddTablePrim.pm_GetRows

function TddTablePrim.pm_GetRowCount: Integer;
//#UC START# *519B805901DF_4FACE16602E1get_var*
//#UC END# *519B805901DF_4FACE16602E1get_var*
begin
//#UC START# *519B805901DF_4FACE16602E1get_impl*
 Result := f_RowList.Count;
//#UC END# *519B805901DF_4FACE16602E1get_impl*
end;//TddTablePrim.pm_GetRowCount

procedure TddTablePrim.Cleanup;
//#UC START# *479731C50290_4FACE16602E1_var*
//#UC END# *479731C50290_4FACE16602E1_var*
begin
//#UC START# *479731C50290_4FACE16602E1_impl*
 FreeAndNil(f_RowList);
 inherited
//#UC END# *479731C50290_4FACE16602E1_impl*
end;//TddTablePrim.Cleanup

procedure TddTablePrim.Clear;
//#UC START# *518A48F500CF_4FACE16602E1_var*
//#UC END# *518A48F500CF_4FACE16602E1_var*
begin
//#UC START# *518A48F500CF_4FACE16602E1_impl*
 inherited;
 f_RowList.Clear;
 f_LeftIndent:= 0;
//#UC END# *518A48F500CF_4FACE16602E1_impl*
end;//TddTablePrim.Clear

constructor TddTablePrim.Create(anOwner: TObject;
  aDetination: TddCustomDestination);
//#UC START# *51E91BA80051_4FACE16602E1_var*
//#UC END# *51E91BA80051_4FACE16602E1_var*
begin
//#UC START# *51E91BA80051_4FACE16602E1_impl*
 inherited Create(anOwner, aDetination);
 f_RowList := TddRowList.Make;
 AtomType := dd_docTable;
 f_IsSBS := False;
 f_Scale := def_Zoom;
 f_Nested := False;
//#UC END# *51E91BA80051_4FACE16602E1_impl*
end;//TddTablePrim.Create

end.