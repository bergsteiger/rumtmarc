unit ddTableRow;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "dd"
// Модуль: "w:/common/components/rtl/Garant/dd/ddTableRow.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::dd::ddCommon::TddTableRow
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

interface

uses
  ddBase,
  ddDocumentAtom,
  ddTableCell,
  ddCellList,
  ddCellsPropertyList,
  ddRowProperty,
  Classes,
  ddCustomDestination,
  k2Interfaces
  ;

type
 TddTableRow = class(TddDocumentAtom)
 private
 // private fields
   f_CellList : TddCellList;
   f_CellProps : TddCellsPropertyList;
   f_TAP : TddRowProperty;
    {* Поле для свойства TAP}
   f_RTFLikeWidth : Boolean;
    {* Поле для свойства RTFLikeWidth}
   f_CellPropsCompleate : Boolean;
    {* Поле для свойства CellPropsCompleate}
 private
 // private methods
   procedure DoApplyCellProps(aCellProps: TddCellsPropertyList);
 protected
 // property methods
   procedure pm_SetTAP(aValue: TddRowProperty);
   function pm_GetLastCell: TddTableCell;
   function pm_GetLastCellProperty: TddCellProperty; virtual;
   function pm_GetCellWidthBySpan(anIndex: Integer): Integer;
   function pm_GetCellCountBySpan: Integer;
   function pm_GetCellWidth(anIndex: Integer): Integer;
   procedure pm_SetCellWidth(anIndex: Integer; aValue: Integer);
   function pm_GetCellSpan(anIndex: Integer): Integer;
   function pm_GetCellCount: Integer;
   function pm_GetCells(anIndex: Integer): TddTableCell;
   function pm_GetCellPropBySpan(anIndex: Integer): TddCellProperty;
   function pm_GetCellPropByPos(aPos: Integer): TddCellProperty;
   function pm_GetCellByPos(aPos: Integer): TddTableCell; virtual;
 protected
 // realized methods
   procedure Write2Generator(const Generator: Ik2TagGenerator;
     aNeedProcessRow: Boolean;
     LiteVersion: Boolean); override;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure DoClose; override;
 public
 // overridden public methods
   procedure Assign(Source: TPersistent); override;
   procedure Clear; override;
   constructor Create(anOwner: TObject;
    aDetination: TddCustomDestination); override;
 public
 // public methods
   procedure AddCell(aCell: TddTableCell);
   procedure AddCellAndPara(const OnlyCell: Boolean = False);
   procedure AddEmptyCell;
   procedure AddCellProp(aCellProps: TddCellProperty);
   procedure ApplyCellProps;
   function CellIndexBySpan(anIndex: Integer): Integer;
   procedure ClearCellProps;
   procedure DeleteCell(anIndex: Integer);
   function GetLastNonClosedCell: TddTableCell;
   procedure CloneCell(aCellProp: TddCellProperty);
   function GetLastNonClosedCellOrAddNew: TddTableCell;
     {* Проверяет не закрыта ли предыдущая ячейка, а если закрыта открывает новую. }
   function IsCellPropsInit: Boolean;
   procedure ApplyExternalCellPropsDef(aRow: TddTableRow);
 public
 // public properties
   property TAP: TddRowProperty
     read f_TAP
     write pm_SetTAP;
   property RTFLikeWidth: Boolean
     read f_RTFLikeWidth
     write f_RTFLikeWidth;
   property LastCell: TddTableCell
     read pm_GetLastCell;
   property LastCellProperty: TddCellProperty
     read pm_GetLastCellProperty;
   property CellWidthBySpan[anIndex: Integer]: Integer
     read pm_GetCellWidthBySpan;
   property CellCountBySpan: Integer
     read pm_GetCellCountBySpan;
   property CellWidth[anIndex: Integer]: Integer
     read pm_GetCellWidth
     write pm_SetCellWidth;
   property CellSpan[anIndex: Integer]: Integer
     read pm_GetCellSpan;
   property CellCount: Integer
     read pm_GetCellCount;
   property Cells[anIndex: Integer]: TddTableCell
     read pm_GetCells;
     default;
   property CellPropBySpan[anIndex: Integer]: TddCellProperty
     read pm_GetCellPropBySpan;
   property CellPropByPos[aPos: Integer]: TddCellProperty
     read pm_GetCellPropByPos;
   property CellByPos[aPos: Integer]: TddTableCell
     read pm_GetCellByPos;
   property CellPropsCompleate: Boolean
     read f_CellPropsCompleate
     write f_CellPropsCompleate;
 end;//TddTableRow

implementation

uses
  SysUtils,
  k2Tags,
  evdTypes,
  l3Math,
  RTFtypes,
  evdFrame_Const,
  ddTable,
  l3Const,
  ddTextParagraph,
  Math
  ;

// start class TddTableRow

procedure TddTableRow.DoApplyCellProps(aCellProps: TddCellsPropertyList);
//#UC START# *51E657D90184_4FACE1370377_var*
var
 i      : Integer;
 l_Cell : TddTableCell;
//#UC END# *51E657D90184_4FACE1370377_var*
begin
//#UC START# *51E657D90184_4FACE1370377_impl*
 for i := 0 to aCellProps.Hi do
 begin
  l_Cell := Cells[i];
  if l_Cell = nil then Break; 
  l_Cell.Props := aCellProps[i];
 end; // for i := 0 to aCellProps.Hi do
//#UC END# *51E657D90184_4FACE1370377_impl*
end;//TddTableRow.DoApplyCellProps

procedure TddTableRow.AddCell(aCell: TddTableCell);
//#UC START# *518A4EF70329_4FACE1370377_var*
//#UC END# *518A4EF70329_4FACE1370377_var*
begin
//#UC START# *518A4EF70329_4FACE1370377_impl*
  aCell.anIndex := f_CellList.Add(aCell);
//#UC END# *518A4EF70329_4FACE1370377_impl*
end;//TddTableRow.AddCell

procedure TddTableRow.AddCellAndPara(const OnlyCell: Boolean = False);
//#UC START# *518A4F30003C_4FACE1370377_var*
var
 l_Cell     : TddTableCell;
 l_Property : TddTextParagraph;
//#UC END# *518A4F30003C_4FACE1370377_var*
begin
//#UC START# *518A4F30003C_4FACE1370377_impl*
 l_Cell := TddTableCell.Create(Self, f_Destination);
 try
  // Нужно ли добавить абзац
  if not OnlyCell then
  begin
   l_Property := TddTextParagraph.Create(l_Cell, f_Destination);
   try
    l_Property.PAP.InTable := True;
    l_Cell.Add(l_Property);
   finally
    FreeAndNil(l_Property);
   end;
  end; // not OnlyCell          
  AddCell(l_Cell);
 finally
  FreeAndNil(l_Cell);
 end;
//#UC END# *518A4F30003C_4FACE1370377_impl*
end;//TddTableRow.AddCellAndPara

procedure TddTableRow.AddEmptyCell;
//#UC START# *518A4F52010F_4FACE1370377_var*
var
 l_Cell: TddTableCell;
//#UC END# *518A4F52010F_4FACE1370377_var*
begin
//#UC START# *518A4F52010F_4FACE1370377_impl*
 l_Cell := TddTableCell.Create(Self, f_Destination);
 try
  AddCell(l_Cell);
 finally
  FreeAndNil(l_Cell);
 end;
//#UC END# *518A4F52010F_4FACE1370377_impl*
end;//TddTableRow.AddEmptyCell

procedure TddTableRow.AddCellProp(aCellProps: TddCellProperty);
//#UC START# *518A4F870014_4FACE1370377_var*
var
 l_Cell: TddCellProperty;
//#UC END# *518A4F870014_4FACE1370377_var*
begin
//#UC START# *518A4F870014_4FACE1370377_impl*
 if f_CellPropsCompleate then
  ClearCellProps;
 l_Cell:= TddCellProperty.Create(nil);
 try
  l_Cell.Assign(aCellProps);
  f_CellProps.Add(l_Cell);
 finally
  FreeAndNil(l_Cell);
 end;
//#UC END# *518A4F870014_4FACE1370377_impl*
end;//TddTableRow.AddCellProp

procedure TddTableRow.ApplyCellProps;
//#UC START# *518A4FB1034A_4FACE1370377_var*
//#UC END# *518A4FB1034A_4FACE1370377_var*
begin
//#UC START# *518A4FB1034A_4FACE1370377_impl*
 DoApplyCellProps(f_CellProps);
//#UC END# *518A4FB1034A_4FACE1370377_impl*
end;//TddTableRow.ApplyCellProps

function TddTableRow.CellIndexBySpan(anIndex: Integer): Integer;
//#UC START# *518A4FCE02FC_4FACE1370377_var*
var
 l_SpanIndex: Integer;
 l_CellIndex: Integer;
 i, j: Integer;
//#UC END# *518A4FCE02FC_4FACE1370377_var*
begin
//#UC START# *518A4FCE02FC_4FACE1370377_impl*
 l_SpanIndex:= -1;
 l_CellIndex:= 0;
 Result:= -1;
 for l_CellIndex:= 0 to Pred(CellCount) do
 begin
  for j:= 1 to CellSpan[l_CellIndex] do
  begin
   Inc(l_SpanIndex);
   if l_SpanIndex = anIndex then
   begin
    Result := l_CellIndex;
    Break;
   end;
  end;
 end; // while
 if Result = -1 then
 begin
  l_SpanIndex:= -1;
  l_CellIndex:= 0;
  Result:= -1;
  for l_CellIndex := 0 to Pred(CellCount) do
   for j := 1 to CellSpan[l_CellIndex] do
   begin
    Inc(l_SpanIndex);
    if l_SpanIndex = anIndex then
    begin
     Result := l_CellIndex;
     Break;
    end;
   end;
 end;
//#UC END# *518A4FCE02FC_4FACE1370377_impl*
end;//TddTableRow.CellIndexBySpan

procedure TddTableRow.ClearCellProps;
//#UC START# *518A4FF703E6_4FACE1370377_var*
//#UC END# *518A4FF703E6_4FACE1370377_var*
begin
//#UC START# *518A4FF703E6_4FACE1370377_impl*
 f_CellProps.Clear;
 f_CellPropsCompleate := False;
//#UC END# *518A4FF703E6_4FACE1370377_impl*
end;//TddTableRow.ClearCellProps

procedure TddTableRow.DeleteCell(anIndex: Integer);
//#UC START# *518A501003AE_4FACE1370377_var*
var
  l_CP: TddCellProperty;
//#UC END# *518A501003AE_4FACE1370377_var*
begin
//#UC START# *518A501003AE_4FACE1370377_impl*
  l_CP:= Cells[anIndex].Props;
  if (l_CP <> nil) and (CellCount > 1) then
  begin
   if anIndex > 0 then
   begin
    Cells[anIndex].Props.Border.Frames[bpLeft].Assign(Cells[anIndex-1].Props.Border.Frames[bpLeft]);
    Cells[anIndex-1].Props.Assign(Cells[anIndex].Props);
   end // if anIndex > 0 then
   else
    Cells[anIndex + 1].Props.Border.Frames[bpLeft].Assign(Cells[anIndex].Props.Border.Frames[bpLeft]);
   f_CellList.Delete(anIndex);
  end;
//#UC END# *518A501003AE_4FACE1370377_impl*
end;//TddTableRow.DeleteCell

function TddTableRow.GetLastNonClosedCell: TddTableCell;
//#UC START# *51960AF50141_4FACE1370377_var*
//#UC END# *51960AF50141_4FACE1370377_var*
begin
//#UC START# *51960AF50141_4FACE1370377_impl*
 Result := pm_GetLastCell;
 if (Result <> nil) and Result.Closed then
  Result := nil;
//#UC END# *51960AF50141_4FACE1370377_impl*
end;//TddTableRow.GetLastNonClosedCell

procedure TddTableRow.CloneCell(aCellProp: TddCellProperty);
//#UC START# *519C8B33037C_4FACE1370377_var*
//#UC END# *519C8B33037C_4FACE1370377_var*
begin
//#UC START# *519C8B33037C_4FACE1370377_impl*
 AddCellAndPara;
 LastCellProperty.RowSpan:= Pred(aCellProp.RowSpan);
 LastCellProperty.CellSpan:= aCellProp.CellSpan;
 LastCellProperty.Width:= aCellProp.Width;
 // Нельзя так присваивать рамки!
 LastCellProperty.Border.Assign(aCellProp.Border);
 LastCellProperty.VMerged:= True;
//#UC END# *519C8B33037C_4FACE1370377_impl*
end;//TddTableRow.CloneCell

function TddTableRow.GetLastNonClosedCellOrAddNew: TddTableCell;
//#UC START# *519C95060331_4FACE1370377_var*
//#UC END# *519C95060331_4FACE1370377_var*
begin
//#UC START# *519C95060331_4FACE1370377_impl*
 Result := LastCell;
 if Result.Closed then
 begin
  AddCellAndPara(True);
  Result := LastCell;
 end; //if l_OutCell.Closed then
//#UC END# *519C95060331_4FACE1370377_impl*
end;//TddTableRow.GetLastNonClosedCellOrAddNew

function TddTableRow.IsCellPropsInit: Boolean;
//#UC START# *51E64E830070_4FACE1370377_var*
//#UC END# *51E64E830070_4FACE1370377_var*
begin
//#UC START# *51E64E830070_4FACE1370377_impl*
 Result := f_CellProps.Count > 0;
//#UC END# *51E64E830070_4FACE1370377_impl*
end;//TddTableRow.IsCellPropsInit

procedure TddTableRow.ApplyExternalCellPropsDef(aRow: TddTableRow);
//#UC START# *51E64F4B039E_4FACE1370377_var*
//#UC END# *51E64F4B039E_4FACE1370377_var*
begin
//#UC START# *51E64F4B039E_4FACE1370377_impl*
 DoApplyCellProps(aRow.f_CellProps);
//#UC END# *51E64F4B039E_4FACE1370377_impl*
end;//TddTableRow.ApplyExternalCellPropsDef

procedure TddTableRow.pm_SetTAP(aValue: TddRowProperty);
//#UC START# *518A479603CD_4FACE1370377set_var*
//#UC END# *518A479603CD_4FACE1370377set_var*
begin
//#UC START# *518A479603CD_4FACE1370377set_impl*
 f_TAP.Assign(aValue);
//#UC END# *518A479603CD_4FACE1370377set_impl*
end;//TddTableRow.pm_SetTAP

function TddTableRow.pm_GetLastCell: TddTableCell;
//#UC START# *518A4B370328_4FACE1370377get_var*
//#UC END# *518A4B370328_4FACE1370377get_var*
begin
//#UC START# *518A4B370328_4FACE1370377get_impl*
 if f_CellList.Count = 0 then
  Result:= nil //AddCellAndPara;
 else
  Result := f_CellList.Last;
//#UC END# *518A4B370328_4FACE1370377get_impl*
end;//TddTableRow.pm_GetLastCell

function TddTableRow.pm_GetLastCellProperty: TddCellProperty;
//#UC START# *518A4B72006B_4FACE1370377get_var*
//#UC END# *518A4B72006B_4FACE1370377get_var*
begin
//#UC START# *518A4B72006B_4FACE1370377get_impl*
 if LastCell = nil then
  AddCellAndPara;
 Result:= LastCell.Props;
//#UC END# *518A4B72006B_4FACE1370377get_impl*
end;//TddTableRow.pm_GetLastCellProperty

function TddTableRow.pm_GetCellWidthBySpan(anIndex: Integer): Integer;
//#UC START# *518A4BB402CE_4FACE1370377get_var*
var
 l_CellIndex: Integer;
//#UC END# *518A4BB402CE_4FACE1370377get_var*
begin
//#UC START# *518A4BB402CE_4FACE1370377get_impl*
 Result := 0;
 l_CellIndex := CellIndexBySpan(anIndex);
 if l_CellIndex > -1 then
  Result := CellWidth[l_CellIndex] div CellSpan[l_CellIndex];
//#UC END# *518A4BB402CE_4FACE1370377get_impl*
end;//TddTableRow.pm_GetCellWidthBySpan

function TddTableRow.pm_GetCellCountBySpan: Integer;
//#UC START# *518A4C320198_4FACE1370377get_var*
var
 i: Integer;
//#UC END# *518A4C320198_4FACE1370377get_var*
begin
//#UC START# *518A4C320198_4FACE1370377get_impl*
 Result := 0;
 for i := 0 to CellCount - 1 do
  Inc(Result, CellSpan[i]);
//#UC END# *518A4C320198_4FACE1370377get_impl*
end;//TddTableRow.pm_GetCellCountBySpan

function TddTableRow.pm_GetCellWidth(anIndex: Integer): Integer;
//#UC START# *518A4C67024C_4FACE1370377get_var*
//#UC END# *518A4C67024C_4FACE1370377get_var*
begin
//#UC START# *518A4C67024C_4FACE1370377get_impl*
 Result := Cells[anIndex].Props.Width;
//#UC END# *518A4C67024C_4FACE1370377get_impl*
end;//TddTableRow.pm_GetCellWidth

procedure TddTableRow.pm_SetCellWidth(anIndex: Integer; aValue: Integer);
//#UC START# *518A4C67024C_4FACE1370377set_var*
//#UC END# *518A4C67024C_4FACE1370377set_var*
begin
//#UC START# *518A4C67024C_4FACE1370377set_impl*
 Cells[anIndex].Props.Width:= aValue;
//#UC END# *518A4C67024C_4FACE1370377set_impl*
end;//TddTableRow.pm_SetCellWidth

function TddTableRow.pm_GetCellSpan(anIndex: Integer): Integer;
//#UC START# *518A4CA40030_4FACE1370377get_var*
//#UC END# *518A4CA40030_4FACE1370377get_var*
begin
//#UC START# *518A4CA40030_4FACE1370377get_impl*
 Result := Cells[anIndex].Props.CellSpan;
//#UC END# *518A4CA40030_4FACE1370377get_impl*
end;//TddTableRow.pm_GetCellSpan

function TddTableRow.pm_GetCellCount: Integer;
//#UC START# *518A4CFA00C4_4FACE1370377get_var*
//#UC END# *518A4CFA00C4_4FACE1370377get_var*
begin
//#UC START# *518A4CFA00C4_4FACE1370377get_impl*
  if (Self <> nil) AND (f_CellList <> nil) then
   Result:= f_CellList.Count
  else
   Result:= 0;
//#UC END# *518A4CFA00C4_4FACE1370377get_impl*
end;//TddTableRow.pm_GetCellCount

function TddTableRow.pm_GetCells(anIndex: Integer): TddTableCell;
//#UC START# *518A4D6A039D_4FACE1370377get_var*
//#UC END# *518A4D6A039D_4FACE1370377get_var*
begin
//#UC START# *518A4D6A039D_4FACE1370377get_impl*
 if (anIndex >= 0) and (anIndex < f_CellList.Count) then
  Result := f_CellList.Items[anIndex]
 else 
  Result := nil;
//#UC END# *518A4D6A039D_4FACE1370377get_impl*
end;//TddTableRow.pm_GetCells

function TddTableRow.pm_GetCellPropBySpan(anIndex: Integer): TddCellProperty;
//#UC START# *518A4DE0032A_4FACE1370377get_var*
var
 l_CellIndex: Integer;
//#UC END# *518A4DE0032A_4FACE1370377get_var*
begin
//#UC START# *518A4DE0032A_4FACE1370377get_impl*
 Result := nil;
 l_CellIndex := CellIndexBySpan(anIndex);
 if l_CellIndex > -1 then
  Result := Cells[l_CellIndex].Props;
//#UC END# *518A4DE0032A_4FACE1370377get_impl*
end;//TddTableRow.pm_GetCellPropBySpan

function TddTableRow.pm_GetCellPropByPos(aPos: Integer): TddCellProperty;
//#UC START# *518A4E390255_4FACE1370377get_var*
var
 i: Integer;
 W, Delta: LongInt;
//#UC END# *518A4E390255_4FACE1370377get_var*
begin
//#UC START# *518A4E390255_4FACE1370377get_impl*
 W := 0;
 Result := nil;
 for i:= 0 to f_CellList.Hi do
 begin
  if (i > 0) and RTFLikeWidth then
   Delta:= Cells[i].Props.Width-Cells[Pred(i)].Props.Width
  else
   Delta:= Cells[i].Props.Width;
  if (aPos > W) and (aPos <= (W+ l3MulDiv(Delta, 105, 100))) then
  begin
   Result:= Cells[i].Props;
   Result.Index:= i;
   Break;
  end
  else
   Inc(W, Delta);
 end;
//#UC END# *518A4E390255_4FACE1370377get_impl*
end;//TddTableRow.pm_GetCellPropByPos

function TddTableRow.pm_GetCellByPos(aPos: Integer): TddTableCell;
//#UC START# *5190964701FB_4FACE1370377get_var*
var
  i: Integer;
  Delta: LongInt;
//#UC END# *5190964701FB_4FACE1370377get_var*
begin
//#UC START# *5190964701FB_4FACE1370377get_impl*
 Result := nil;
 for i := 0 to f_CellList.Hi do
 begin
  if i > 0 then
   Delta := Cells[Pred(i)].Props.Width
  else
   Delta := 0;
  if InRange(aPos, Delta, Cells[i].Props.Width) then
  begin
   Result := Cells[i];
   Break;
  end; // InRange
 end; // for i
//#UC END# *5190964701FB_4FACE1370377get_impl*
end;//TddTableRow.pm_GetCellByPos

procedure TddTableRow.Write2Generator(const Generator: Ik2TagGenerator;
  aNeedProcessRow: Boolean;
  LiteVersion: Boolean);
//#UC START# *518A504F00F5_4FACE1370377_var*
var
 i       : Integer;
 j       : Integer;
 l_Cell  : TddTableCell;
 l_Item  : TddDocumentAtom;
 l_Delta : Integer;
 l_Width : Integer;
//#UC END# *518A504F00F5_4FACE1370377_var*
begin
//#UC START# *518A504F00F5_4FACE1370377_impl*
 Generator.StartDefaultChild;
 try
  if not LiteVersion then
   TAP.Border.Write2Generator(Generator);
   for i := 0 to f_CellList.Hi do
   begin
    l_Cell := Cells[i];
    Generator.StartDefaultChild;
    try
     if l_Cell.Props.VMergeFirst then
      Generator.AddIntegerAtom(k2_tiMergeStatus, Ord(ev_msHead))
     else
      if l_Cell.Props.VMerged then
       Generator.AddIntegerAtom(k2_tiMergeStatus, Ord(ev_msContinue));
     if not LiteVersion then
      if l_Cell.Props.PatternBackColor <> propUndefined then
       Generator.AddIntegerAtom(k2_tiBackColor, l_Cell.Props.PatternBackColor);
     if (i > 0) then
      l_Delta := CellWidth[Pred(i)]
     else
      l_Delta := TAP.Left;
     l_Width := l_Cell.Props.Width - l_Delta;
     Generator.AddIntegerAtom(k2_tiWidth, l_Width);
     if not LiteVersion then
     begin                                                                     
      Generator.AddIntegerAtom(k2_tiLeftIndent, l_Cell.Props.LeftPad);
      Generator.AddIntegerAtom(k2_tiRightIndent, l_Cell.Props.RightPad);
      Generator.AddIntegerAtom(k2_tiSpaceBefore, l_Cell.Props.TopPad);
      Generator.AddIntegerAtom(k2_tiSpaceAfter, l_Cell.Props.BottomPad);
     end;
     if l_Cell.Props.Border.IsFramed then
      l_Cell.Props.Border.Write2Generator(Generator)
     else
      Generator.AddIntegerAtom(k2_tiFrame, evd_fvEmpty);
     Generator.AddIntegerAtom(k2_tiVerticalAligment, Ord(l_Cell.Props.Just));
     if not l_Cell.Props.VMerged then
     begin
      if l_Cell.Count = 0 then
       l_Cell.AddParagraph;
      for j := 0 to l_Cell.Hi do
      begin
       l_Item := l_Cell.Items[j];
       if (l_Item.AtomType = dd_docTable) then
        TddTable(l_Item).AdjustWidth(l_Width - l_Cell.Props.LeftPad - l_Cell.Props.RightPad);
       l_Item.Write2Generator(Generator, aNeedProcessRow, LiteVersion);
      end; // for j:= 0 to l_Cell.Hi do
     end;
    finally
      Generator.Finish;
    end;
   end; {for i}
 finally
  Generator.Finish;
 end;
//#UC END# *518A504F00F5_4FACE1370377_impl*
end;//TddTableRow.Write2Generator

procedure TddTableRow.Assign(Source: TPersistent);
//#UC START# *478CF34E02CE_4FACE1370377_var*
var
 i: Integer;
 l_Cell: TddtableCell;
//#UC END# *478CF34E02CE_4FACE1370377_var*
begin
//#UC START# *478CF34E02CE_4FACE1370377_impl*
 if (Source Is TddTableRow) then
 begin
  f_TAP.Assign(TddTableRow(Source).TAP);
  for i:= 0 to TddTableRow(Source).f_CellList.Hi do
  begin
   l_Cell:= TddTableCell.Create(Self, f_Destination);
   try
    l_Cell.Assign(TddTableRow(Source)[i]);
    l_Cell.Clear;
    f_CellList.Add(l_Cell);
   finally
    FreeAndNil(l_Cell)
   end;
  end;
 end
 else
  inherited Assign(Source);
//#UC END# *478CF34E02CE_4FACE1370377_impl*
end;//TddTableRow.Assign

procedure TddTableRow.Cleanup;
//#UC START# *479731C50290_4FACE1370377_var*
//#UC END# *479731C50290_4FACE1370377_var*
begin
//#UC START# *479731C50290_4FACE1370377_impl*
 FreeAndNil(f_CellProps);
 FreeAndNil(f_CellList);
 FreeAndNil(f_TAP);
 f_CellPropsCompleate := False;
 inherited;
//#UC END# *479731C50290_4FACE1370377_impl*
end;//TddTableRow.Cleanup

procedure TddTableRow.Clear;
//#UC START# *518A48F500CF_4FACE1370377_var*
var
 i: Integer;
//#UC END# *518A48F500CF_4FACE1370377_var*
begin
//#UC START# *518A48F500CF_4FACE1370377_impl*
 inherited;
 f_TAP.Clear;
 ClearCellProps;
//f_CellList.Clear;
//#UC END# *518A48F500CF_4FACE1370377_impl*
end;//TddTableRow.Clear

procedure TddTableRow.DoClose;
//#UC START# *518A4950037A_4FACE1370377_var*
var
 i: Integer;
//#UC END# *518A4950037A_4FACE1370377_var*
begin
//#UC START# *518A4950037A_4FACE1370377_impl*
 for i:= 0 to Pred(CellCount) do
  Cells[i].Closed:= True; 
//#UC END# *518A4950037A_4FACE1370377_impl*
end;//TddTableRow.DoClose

constructor TddTableRow.Create(anOwner: TObject;
  aDetination: TddCustomDestination);
//#UC START# *51E91BA80051_4FACE1370377_var*
//#UC END# *51E91BA80051_4FACE1370377_var*
begin
//#UC START# *51E91BA80051_4FACE1370377_impl*
 inherited Create(anOwner, aDetination);
 AtomType:= dd_docTableRow;
 f_CellPropsCompleate := False;
 f_CellList := TddCellList.Make;
 f_TAP:= TddRowProperty.Create(nil);
 f_RTFLikeWidth := False;
 f_CellProps := TddCellsPropertyList.Make;
//#UC END# *51E91BA80051_4FACE1370377_impl*
end;//TddTableRow.Create

end.