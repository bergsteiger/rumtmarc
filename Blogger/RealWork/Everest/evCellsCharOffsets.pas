unit evCellsCharOffsets;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Инишев Д.А.
// Модуль: "w:/common/components/gui/Garant/Everest/evCellsCharOffsets.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::CellUtils::TevCellsCharOffsets
//
// работа со смещениями ячеек
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  evEditorInterfaces,
  l3ProtoObject,
  evOneCharLongIntList,
  edCellTypesList
  ;

type
 TevCellsCharOffsets = class(Tl3ProtoObject)
  {* работа со смещениями ячеек }
 private
 // private fields
   f_Offsets : TevOneCharLongIntList;
    {* Смещения ячеек}
   f_Widths : TevOneCharLongIntList;
    {* Ширина ячеек по этому смещению}
   f_Width : Integer;
    {* Текущая ширина ячейки}
   f_Offset : Integer;
    {* Текущее смещение}
   f_Index : Integer;
   f_UsingCount : Integer;
 private
 // private methods
   procedure CheckList;
   function AddCell4Delete(const aCellsType: TedCellTypesList): Integer;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 public
 // public methods
   procedure AddCellWidthAndRecalc;
   procedure Clear;
   function FindOffset(const aOffsetList: TevCellsCharOffsets;
     var anIndex: Integer): Boolean; overload; 
   function FindOffset(anOffset: Integer;
     var anIndex: Integer): Boolean; overload; 
   function LastWidth: Integer;
   function PrevWidth: Integer;
   function GetNextOffset: Integer;
   procedure SetCurrent(anIndex: Integer);
   function GetOffset: Integer;
   procedure SetWidth(aWidth: Integer);
   function GetWidth: Integer;
   procedure UpdateWidth(anIndex: Integer;
     aDelta: Integer);
   function Equals(const anIterator: IedCellsIterator): Boolean; overload; 
   procedure CopyData(const aData: TevCellsCharOffsets;
     const anIterator: IedCellsIterator);
   function GetRowWidth: Integer;
   procedure AlignByPrevious(const aData: TevCellsCharOffsets);
   function Equals(const anIterator: IedCellsIterator;
     aForTempate: Boolean): Boolean; overload; 
   procedure IncUsingCount;
   function GetOffsetByIndex(anIndex: Integer): Integer;
   procedure CopyDataWithCheckingType(const aData: TevCellsCharOffsets;
     const aDataCellsType: TedCellTypesList;
     const aCellsType: TedCellTypesList;
     const aDataRowType: TedRowType);
 end;//TevCellsCharOffsets

implementation

uses
  SysUtils,
  l3UnitsTools,
  evTableCellUtils,
  evExcept
  ;

// start class TevCellsCharOffsets

procedure TevCellsCharOffsets.CheckList;
//#UC START# *4F2FD1E202A4_4F2F6CA40273_var*
//#UC END# *4F2FD1E202A4_4F2F6CA40273_var*
begin
//#UC START# *4F2FD1E202A4_4F2F6CA40273_impl*
 if (f_Offsets = nil) then
  f_Offsets := TevOneCharLongIntList.Make;
 if (f_Widths = nil) then
  f_Widths := TevOneCharLongIntList.Make;
//#UC END# *4F2FD1E202A4_4F2F6CA40273_impl*
end;//TevCellsCharOffsets.CheckList

function TevCellsCharOffsets.AddCell4Delete(const aCellsType: TedCellTypesList): Integer;
//#UC START# *511A19780340_4F2F6CA40273_var*
var
 l_Index: Integer;
//#UC END# *511A19780340_4F2F6CA40273_var*
begin
//#UC START# *511A19780340_4F2F6CA40273_impl*
 Result := evGetMinimalCellWidth * 2;
 l_Index := f_Widths.Add(Result);
 aCellsType[l_Index] := ed_NeedDelete;
//#UC END# *511A19780340_4F2F6CA40273_impl*
end;//TevCellsCharOffsets.AddCell4Delete

procedure TevCellsCharOffsets.AddCellWidthAndRecalc;
//#UC START# *4F2F6D94002E_4F2F6CA40273_var*
//#UC END# *4F2F6D94002E_4F2F6CA40273_var*
begin
//#UC START# *4F2F6D94002E_4F2F6CA40273_impl*
 CheckList;
 f_Offsets.Add(f_Offset);
 f_Widths.Add(f_Width);
 Inc(f_Offset, f_Width);
//#UC END# *4F2F6D94002E_4F2F6CA40273_impl*
end;//TevCellsCharOffsets.AddCellWidthAndRecalc

procedure TevCellsCharOffsets.Clear;
//#UC START# *4F2F6DAB0114_4F2F6CA40273_var*
//#UC END# *4F2F6DAB0114_4F2F6CA40273_var*
begin
//#UC START# *4F2F6DAB0114_4F2F6CA40273_impl*
 if (f_Offsets <> nil) then
 begin
  f_Offsets.Clear;
  f_Widths.Clear;
  f_Offset := 0;
  f_Width := 0;
  f_Index := 0;
  f_UsingCount := 0;
 end; // if (f_Offsets <> nil) then
//#UC END# *4F2F6DAB0114_4F2F6CA40273_impl*
end;//TevCellsCharOffsets.Clear

function TevCellsCharOffsets.FindOffset(const aOffsetList: TevCellsCharOffsets;
  var anIndex: Integer): Boolean;
//#UC START# *4F2F6DC40150_4F2F6CA40273_var*
//#UC END# *4F2F6DC40150_4F2F6CA40273_var*
begin
//#UC START# *4F2F6DC40150_4F2F6CA40273_impl*
 Result := f_Offsets <> nil;
 if Result then
 begin
  Result := f_Offsets.FindData(aOffsetList.f_Offset, anIndex);
  if Result then
  begin
   f_Width := f_Widths[anIndex];
   f_Offset := f_Offsets[anIndex];
  end; // if Result then
 end; // if Result then
//#UC END# *4F2F6DC40150_4F2F6CA40273_impl*
end;//TevCellsCharOffsets.FindOffset

function TevCellsCharOffsets.FindOffset(anOffset: Integer;
  var anIndex: Integer): Boolean;
//#UC START# *4F2F6DEE0354_4F2F6CA40273_var*
//#UC END# *4F2F6DEE0354_4F2F6CA40273_var*
begin
//#UC START# *4F2F6DEE0354_4F2F6CA40273_impl*
 Result := f_Offsets <> nil;
 if Result then
 begin
  Result := f_Offsets.FindData(anOffset, anIndex);
  if Result then
  begin
   f_Width := f_Widths[anIndex];
   f_Offset := f_Offsets[anIndex];
  end; // if Result then
 end; // if Result then
//#UC END# *4F2F6DEE0354_4F2F6CA40273_impl*
end;//TevCellsCharOffsets.FindOffset

function TevCellsCharOffsets.LastWidth: Integer;
//#UC START# *4F2F6E25013C_4F2F6CA40273_var*
//#UC END# *4F2F6E25013C_4F2F6CA40273_var*
begin
//#UC START# *4F2F6E25013C_4F2F6CA40273_impl*
 f_Index := f_Widths.Count;
 Result := PrevWidth;
//#UC END# *4F2F6E25013C_4F2F6CA40273_impl*
end;//TevCellsCharOffsets.LastWidth

function TevCellsCharOffsets.PrevWidth: Integer;
//#UC START# *4F2F6E47025D_4F2F6CA40273_var*
//#UC END# *4F2F6E47025D_4F2F6CA40273_var*
begin
//#UC START# *4F2F6E47025D_4F2F6CA40273_impl*
 Dec(f_Index);
 if f_Index >= 0 then
  Result := f_Widths[f_Index]
 else
  Result := 0;
//#UC END# *4F2F6E47025D_4F2F6CA40273_impl*
end;//TevCellsCharOffsets.PrevWidth

function TevCellsCharOffsets.GetNextOffset: Integer;
//#UC START# *4F2F6E6301E4_4F2F6CA40273_var*
//#UC END# *4F2F6E6301E4_4F2F6CA40273_var*
begin
//#UC START# *4F2F6E6301E4_4F2F6CA40273_impl*
 Result := f_Offset + f_Width;
//#UC END# *4F2F6E6301E4_4F2F6CA40273_impl*
end;//TevCellsCharOffsets.GetNextOffset

procedure TevCellsCharOffsets.SetCurrent(anIndex: Integer);
//#UC START# *4F2F6E8500D5_4F2F6CA40273_var*
//#UC END# *4F2F6E8500D5_4F2F6CA40273_var*
begin
//#UC START# *4F2F6E8500D5_4F2F6CA40273_impl*
 f_Width := f_Widths[anIndex];
 f_Offset := f_Offsets[anIndex];
//#UC END# *4F2F6E8500D5_4F2F6CA40273_impl*
end;//TevCellsCharOffsets.SetCurrent

function TevCellsCharOffsets.GetOffset: Integer;
//#UC START# *4F2F6EAB0342_4F2F6CA40273_var*
//#UC END# *4F2F6EAB0342_4F2F6CA40273_var*
begin
//#UC START# *4F2F6EAB0342_4F2F6CA40273_impl*
 Result := f_Offset;
//#UC END# *4F2F6EAB0342_4F2F6CA40273_impl*
end;//TevCellsCharOffsets.GetOffset

procedure TevCellsCharOffsets.SetWidth(aWidth: Integer);
//#UC START# *4F2F6EC7021E_4F2F6CA40273_var*
//#UC END# *4F2F6EC7021E_4F2F6CA40273_var*
begin
//#UC START# *4F2F6EC7021E_4F2F6CA40273_impl*
 f_Width := aWidth;
//#UC END# *4F2F6EC7021E_4F2F6CA40273_impl*
end;//TevCellsCharOffsets.SetWidth

function TevCellsCharOffsets.GetWidth: Integer;
//#UC START# *4F2F6EE10292_4F2F6CA40273_var*
//#UC END# *4F2F6EE10292_4F2F6CA40273_var*
begin
//#UC START# *4F2F6EE10292_4F2F6CA40273_impl*
 Result := f_Width;
//#UC END# *4F2F6EE10292_4F2F6CA40273_impl*
end;//TevCellsCharOffsets.GetWidth

procedure TevCellsCharOffsets.UpdateWidth(anIndex: Integer;
  aDelta: Integer);
//#UC START# *4F2F6EFA02E7_4F2F6CA40273_var*
//#UC END# *4F2F6EFA02E7_4F2F6CA40273_var*
begin
//#UC START# *4F2F6EFA02E7_4F2F6CA40273_impl*
 if anIndex = -1 then
 begin
  f_Offset := f_Offset + aDelta;
  f_Widths.Last := f_Widths.Last + aDelta;
 end // if anIndex = -1 then
 else
  f_Widths[anIndex] := f_Widths[anIndex] + aDelta;
//#UC END# *4F2F6EFA02E7_4F2F6CA40273_impl*
end;//TevCellsCharOffsets.UpdateWidth

function TevCellsCharOffsets.Equals(const anIterator: IedCellsIterator): Boolean;
//#UC START# *4F2FC2F502F6_4F2F6CA40273_var*
const
 cnTooBigCellWidth = 1000000;
var
 i        : Integer;
 l_Cell   : IedCell;
 l_Delta  : Integer;
 l_Result : Boolean;
//#UC END# *4F2FC2F502F6_4F2F6CA40273_var*
begin
//#UC START# *4F2FC2F502F6_4F2F6CA40273_impl*
 Result := False;
 Assert(f_Widths <> nil);
 l_Result := anIterator.CellsCount = f_Widths.Count;
 if l_Result then
 begin
  l_Cell := anIterator.First(False);
  l_Delta := 4 * evCellWidthEpsilon;
  for i := 0 to f_Widths.Count - 1 do
  begin
   l_Result := Abs(l_Cell.Width - f_Widths[i]) <= l_Delta;
   if not l_Result then
    l_Result := ((l_Cell.Width < evCellWidthEpsilon) or (l_Cell.Width > cnTooBigCellWidth)) and not l_Cell.IsEmptyCell;
   if not l_Result then Break;
   l_Cell := anIterator.Next;
  end; // for i := 0 to f_Widths.Count - 1 do
  if l_Result then
   Result := True;
 end; // if not l_Result then
//#UC END# *4F2FC2F502F6_4F2F6CA40273_impl*
end;//TevCellsCharOffsets.Equals

procedure TevCellsCharOffsets.CopyData(const aData: TevCellsCharOffsets;
  const anIterator: IedCellsIterator);
//#UC START# *4F2FCECA004D_4F2F6CA40273_var*
var
 l_Cell   : IedCell;
 l_Offset : Integer;
//#UC END# *4F2FCECA004D_4F2F6CA40273_var*
begin
//#UC START# *4F2FCECA004D_4F2F6CA40273_impl*
 CheckList;
 if anIterator = nil then
 begin
  f_Widths.Assign(aData.f_Widths);
  f_Offsets.Assign(aData.f_Offsets);
 end // if anIterator = nil then
 else
 begin
  f_Widths.Capacity := anIterator.CellsCount;
  f_Offsets.Capacity := anIterator.CellsCount;
  l_Cell := anIterator.First(False);
  l_Offset := 0;
  while l_Cell <> nil do
  begin
   f_Widths.Add(l_Cell.Width);
   f_Offsets.Add(l_Offset);
   Inc(l_Offset, l_Cell.Width);
   l_Cell := anIterator.Next;
  end; // while l_Cell <> nil do
 end; // if anIterator = nil then
//#UC END# *4F2FCECA004D_4F2F6CA40273_impl*
end;//TevCellsCharOffsets.CopyData

function TevCellsCharOffsets.GetRowWidth: Integer;
//#UC START# *4FAB832701E6_4F2F6CA40273_var*
var
 i       : Integer;
 l_Count : Integer;
//#UC END# *4FAB832701E6_4F2F6CA40273_var*
begin
//#UC START# *4FAB832701E6_4F2F6CA40273_impl*
 Result := 0;
 l_Count := f_Widths.Count - 1;
 for i := 0 to l_Count do
 begin
  //if (i = l_Count) and (f_Widths[i] = evCellWidthEpsilon) then Break; // http://mdp.garant.ru/pages/viewpage.action?pageId=206078013
  Inc(Result, f_Widths[i]);
 end; // for i := 0 to l_Count do
//#UC END# *4FAB832701E6_4F2F6CA40273_impl*
end;//TevCellsCharOffsets.GetRowWidth

procedure TevCellsCharOffsets.AlignByPrevious(const aData: TevCellsCharOffsets);
//#UC START# *4FC773170099_4F2F6CA40273_var*
var
 l_Index       : Integer;
 l_PrevIndex   : Integer;
 l_RowWidth    : Integer;
 l_RightIndent : Integer;
//#UC END# *4FC773170099_4F2F6CA40273_var*
begin
//#UC START# *4FC773170099_4F2F6CA40273_impl*
 l_Index := f_Widths.Count - 1;
 l_PrevIndex := aData.f_Widths.Count - 1;
 if l_Index <= l_PrevIndex then
 begin
  l_RowWidth := aData.GetRowWidth;
  while l_Index > 0 do
  begin
   f_Widths[l_Index] := aData.f_Widths[l_PrevIndex];
   Dec(l_RowWidth, f_Widths[l_Index]);
   Dec(l_Index);
   Dec(l_PrevIndex);
  end; // while l_Index > 0 do
  f_Widths[l_Index] := l_RowWidth;
 end; // if l_Index < aData.f_Widths.Count then
//#UC END# *4FC773170099_4F2F6CA40273_impl*
end;//TevCellsCharOffsets.AlignByPrevious

function TevCellsCharOffsets.Equals(const anIterator: IedCellsIterator;
  aForTempate: Boolean): Boolean;
//#UC START# *50937BBB01BF_4F2F6CA40273_var*
var
 i        : Integer;
 l_Cell   : IedCell;
 l_Count  : Integer;
 l_Equal  : Integer;
 l_Result : Boolean;
//#UC END# *50937BBB01BF_4F2F6CA40273_var*
begin
//#UC START# *50937BBB01BF_4F2F6CA40273_impl*
 Result := False;
 l_Count := f_Widths.Count;
 l_Result := anIterator.CellsCount <> l_Count;
 if not l_Result then
 begin
  l_Cell := anIterator.First(False);
  l_Equal := 0;
  for i := 0 to l_Count - 1 do
  begin
   if (Abs(l_Cell.Width - f_Widths[i]) < l_Cell.Width div 2) then
    Inc(l_Equal);
   l_Cell := anIterator.Next;
  end; // for i := 0 to l_List.Count - 1 do
  l_Result := l_Equal >= l_Count div 2;
  if not aForTempate and not l_Result then
   l_Result := f_UsingCount > 1;
  if l_Result then
   Result := True;
 end; // if not l_Result then
//#UC END# *50937BBB01BF_4F2F6CA40273_impl*
end;//TevCellsCharOffsets.Equals

procedure TevCellsCharOffsets.IncUsingCount;
//#UC START# *509383B202C4_4F2F6CA40273_var*
//#UC END# *509383B202C4_4F2F6CA40273_var*
begin
//#UC START# *509383B202C4_4F2F6CA40273_impl*
 Inc(f_UsingCount);
//#UC END# *509383B202C4_4F2F6CA40273_impl*
end;//TevCellsCharOffsets.IncUsingCount

function TevCellsCharOffsets.GetOffsetByIndex(anIndex: Integer): Integer;
//#UC START# *511B3B8F028B_4F2F6CA40273_var*
//#UC END# *511B3B8F028B_4F2F6CA40273_var*
begin
//#UC START# *511B3B8F028B_4F2F6CA40273_impl*
 Result := f_Offsets[anIndex];
//#UC END# *511B3B8F028B_4F2F6CA40273_impl*
end;//TevCellsCharOffsets.GetOffsetByIndex

procedure TevCellsCharOffsets.CopyDataWithCheckingType(const aData: TevCellsCharOffsets;
  const aDataCellsType: TedCellTypesList;
  const aCellsType: TedCellTypesList;
  const aDataRowType: TedRowType);
//#UC START# *511B61AA00C9_4F2F6CA40273_var*

 function lp_CheckMergeCell(aCellType: TedCellType): Boolean;
 begin
  Result := False;{(aCellType >= ed_Continue) and (aCellType <= ed_HeadEmpty)}
 end;

var
 l_Index      : Integer;
 l_Offset     : Integer;
 l_RowWidth   : Integer;
 l_DataIndex  : Integer;
 l_EmptyIndex : Integer;

 procedure lp_SkipCell;
 begin
  f_Widths.Add(0);
  f_Offsets.Add(0);
  Inc(l_Index);
 end;

 procedure lp_IncIndexAndOffset(aWidth: Integer);
 begin
  Inc(l_Offset, aWidth);
  Inc(l_Index);
  Inc(l_DataIndex);
  Dec(l_RowWidth, aWidth);
 end;

 procedure lp_AddWidthWithEmptyIndex;
 var
  l_Width: Integer;
 begin
  l_Width := aData.f_Widths[l_DataIndex];
  f_Widths[l_EmptyIndex] := l_Width;
  f_Offsets[l_EmptyIndex] := l_Offset;
  l_EmptyIndex := l_Index;
  f_Widths.Add(0);
  f_Offsets.Add(0);
  lp_IncIndexAndOffset(l_Width);
 end;

var
 l_CellType     : TedCellType;
 l_HeadIndex    : Integer; // Номер объединенной ячейки справа
 l_Count        : Integer;
 l_DataCount    : Integer;
 l_DataCellType : TedCellType;

 procedure lp_Try2MakeCorrectionWidth;
 var
  i           : Integer;
  l_Offset    : Integer;
  l_TextIndex : Integer;
 begin
  if ((l_Index > l_Count) or (l_DataIndex > l_DataCount)) and (l_RowWidth > 0) and (l_EmptyIndex = -1) then
  begin
   l_TextIndex := l_Count - 1;
   while aCellsType[l_TextIndex] <> ed_Text do
    Dec(l_TextIndex);
   f_Widths[l_TextIndex] := f_Widths[l_TextIndex] + l_RowWidth;
   l_Offset := f_Widths[l_TextIndex];
   Inc(l_TextIndex);
   for i := l_TextIndex to f_Widths.Count - 1 do
   begin
    f_Offsets[i] := l_Offset;
    Inc(l_Offset, f_Widths[i]);
   end; // for i := l_TextIndex to l_Count do
  end; // if (l_Index = l_Count) and (l_RowWidth > 0) then
 end;

 function lp_HeadCell(aCellType: TedCellType): Boolean;
 begin
  Result := False;{(aCellType >= ed_HeadText) and (aCellType <= ed_HeadEmpty)};
 end;

 procedure lp_AddNewWidth;
 var
  l_Width: Integer;
 begin
  l_Width := aData.f_Widths[l_DataIndex];
  f_Widths.Add(l_Width);
  f_Offsets.Add(l_Offset);
  lp_IncIndexAndOffset(l_Width);
  if lp_CheckMergeCell(l_CellType) then
   lp_Try2MakeCorrectionWidth;
 end;

 function lp_CheckEmptyIndex: Boolean;
 begin
  Result := l_EmptyIndex = -1;
  if Result then
  if (l_Count = l_DataCount) and (aDataRowType = ed_NumericCels) then
   lp_AddNewWidth
  else
  begin
   l_EmptyIndex := l_Index;
   lp_SkipCell;
  end // if Result then
 end;

 procedure lp_SkipDataCell;
 begin
  if (aDataRowType = ed_NumericCels) and ((l_Count - l_Index) = (l_DataCount - l_DataIndex)) then
   lp_AddNewWidth
  else
   Inc(l_DataIndex);
 end;

 procedure lp_AddHeadWidth;
 var
  l_Width: Integer;
 begin
  l_Width := aData.f_Widths[l_HeadIndex];
  f_Widths.Add(l_Width);
  f_Offsets.Add(l_Offset);
  lp_IncIndexAndOffset(l_Width);
  lp_Try2MakeCorrectionWidth;
 end;

var
 l_FinishAlinment : Boolean;

 procedure lp_CheckFinishAlignment;
 begin
  l_FinishAlinment := (l_Index > l_Count) or (l_DataIndex > l_DataCount);
  Assert(l_EmptyIndex <> 0);
  if l_FinishAlinment and (l_EmptyIndex > 0) then
  begin
   if (l_DataIndex > l_DataCount) and (l_Index = f_Widths.Count) and (l_Index <= l_Count) and lp_HeadCell(aCellsType[l_Index]) then
   begin
    Dec(l_DataIndex);
    lp_AddNewWidth;
    Inc(l_DataIndex);
   end; // if (l_DataIndex > l_DataCount) and (l_Index = f_Widths.Count) and (l_Index < l_Count) and lp_HeadCell(aCellsType[l_Index]) then
   f_Widths[l_EmptyIndex] := l_RowWidth;
   f_Offsets[l_EmptyIndex] := f_Offsets[l_EmptyIndex - 1] + f_Widths[l_EmptyIndex - 1];
   l_FinishAlinment := True;
  end; // if l_FinishAlinment and (l_EmptyIndex > 0) then
 end;

 procedure lp_InitDataCount;
 var
  l_ExcessWidth: Integer;
 begin
  l_DataCount := aData.f_Widths.Count - 1;
  l_ExcessWidth := 0;
  while aDataCellsType[l_DataCount] = ed_NeedDelete do
  begin
   Inc(l_ExcessWidth, aData.f_Widths[l_DataCount]);
   Dec(l_DataCount);
  end; // while aDataCellsType[l_Count] = ed_NeedDelete do
  l_RowWidth := aData.GetRowWidth  - l_ExcessWidth;
  l_HeadIndex := l_DataCount;
  if not lp_CheckMergeCell(aDataCellsType[l_HeadIndex]) then
   l_HeadIndex := -1;
 end;

 procedure lp_InitCount;
 begin
  l_Count := aCellsType.Count - 1;
  f_Widths.Capacity := aCellsType.Count - 1;
  f_Offsets.Capacity := aCellsType.Count - 1;
  while aCellsType[l_Count] = ed_NeedDelete do
   Dec(l_Count);
 end;

 procedure lp_InitFields;
 begin
  CheckList;
  lp_InitDataCount;
  lp_InitCount;
  l_Index := 0;
  l_DataIndex := 0;
  l_Offset := 0;
  l_FinishAlinment := False;
  l_EmptyIndex := -1;
 end;

 procedure lp_CheckSmallCells;
 var
  i: Integer;
 begin
  for i := f_Widths.Count to aCellsType.Count - 1 do
  begin
   f_Offsets.Add(l_Offset);
   Inc(l_Offset, AddCell4Delete(aCellsType));
  end // for i := l_LastCellIndex to aCellsType.Count - 1 do
 end;

 function lp_IsContinueCell: Boolean;
 begin
  Result := False;
  //if (l_CellType = ed_Continue) then
   if lp_CheckMergeCell(l_DataCellType) or (aDataRowType = ed_NumericCels) then
   begin
    lp_AddNewWidth;
    Result := True;
   end // if lp_CheckMergeCell(l_DataCellType) then
   else
    if l_DataCellType in [ed_Text, ed_Empty] then
    begin
     lp_SkipDataCell;
     Result := True;
    end; // if aDataCellsType[l_DataIndex] in [ed_Text, ed_Empty] then
 end;

 function lp_NeedSkip: Boolean;
 begin
  Result := False;
  if lp_CheckMergeCell(l_DataCellType) and (l_DataIndex = l_HeadIndex) then
  begin
   lp_SkipCell;
   Result := True;
  end // if lp_CheckMergeCell(l_DataCellType) and (l_DataIndex = l_HeadIndex) then
  else
   if lp_CheckMergeCell(l_CellType) then
   begin
    lp_SkipDataCell;
    Result := True;
   end; // if aDataCellsType[l_DataIndex] in [ed_Text, ed_Empty] then
 end;

 function lp_IsEqualCellTypes: Boolean;
 begin
  Result := (l_CellType = l_DataCellType);
  if not Result then
   if (aDataRowType = ed_NumericCels) then
    Result := l_CellType in [ed_Text, ed_Empty];
 end;

 function lp_IsDataCell: Boolean;
 begin
  Result := False;
  if (l_CellType <> ed_Empty) then
   if lp_IsEqualCellTypes then
   begin
    lp_AddNewWidth;
    Result := True;
   end // if (l_CellType = l_DataCellType) then
   else
    Result := lp_NeedSkip;
 end;

 procedure lp_IsEmptyCell;
 begin
  if l_CellType = ed_Empty then
   if (l_HeadIndex > -1) and (l_Index = l_Count) then
    lp_AddHeadWidth
   else
    if lp_CheckMergeCell(l_DataCellType) then
     lp_AddNewWidth
    else
    if not lp_CheckEmptyIndex then
     lp_AddWidthWithEmptyIndex;
 end;

 procedure lp_IsEqualCells;
 begin
  if (l_Count = l_DataCount) and (l_DataIndex = l_Index) then
   if lp_CheckMergeCell(l_DataCellType) and (l_CellType = ed_Text) then
    lp_AddNewWidth;
 end;

var
 l_OldIndex     : Integer;
 l_OldDataIndex : Integer;

 procedure lp_SaveIndex;
 begin
  l_OldIndex := l_Index;
  l_OldDataIndex := l_DataIndex;
 end;

 procedure lp_CheckIndex;
 begin
  lp_IsEqualCells;
  if (l_OldIndex = l_Index) and (l_OldDataIndex = l_DataIndex) then
   raise EevException.Create('Во время выравнивания таблицы произошла ошибка. На работу системы это не повлияет. Просьба передать такую таблицу разарботчикам.');
 end;

//#UC END# *511B61AA00C9_4F2F6CA40273_var*
begin
//#UC START# *511B61AA00C9_4F2F6CA40273_impl*
 lp_InitFields;
 while not l_FinishAlinment do
 begin
  l_CellType := aCellsType[l_Index];
  l_DataCellType := aDataCellsType[l_DataIndex];
  lp_SaveIndex;
  if not lp_IsContinueCell then
   if not lp_IsDataCell then
    lp_IsEmptyCell;
  lp_CheckFinishAlignment;
  lp_CheckIndex;
 end; // while l_NewIndex <= l_Count do
 lp_CheckSmallCells;
//#UC END# *511B61AA00C9_4F2F6CA40273_impl*
end;//TevCellsCharOffsets.CopyDataWithCheckingType

procedure TevCellsCharOffsets.Cleanup;
//#UC START# *479731C50290_4F2F6CA40273_var*
//#UC END# *479731C50290_4F2F6CA40273_var*
begin
//#UC START# *479731C50290_4F2F6CA40273_impl*
 if f_Offsets <> nil then
  f_Offsets.Clear;
 FreeAndNil(f_Offsets);
 if f_Widths <> nil then
  f_Widths.Clear;
 FreeAndNil(f_Widths);
 f_UsingCount := 0;
 inherited;
//#UC END# *479731C50290_4F2F6CA40273_impl*
end;//TevCellsCharOffsets.Cleanup

end.