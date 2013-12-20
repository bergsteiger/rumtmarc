unit evCellsOffsetsPair;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Инишев Д.А.
// Модуль: "w:/common/components/gui/Garant/Everest/evCellsOffsetsPair.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::CellUtils::TevCellsOffsetsPair
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
  evCellsCharOffsets,
  edCellTypesList
  ;

type
 TedCellPosType = (
   ed_cpNone
 , ed_cpLast
 , ed_cpIgnoreLast
 );//TedCellPosType

 TevCellsOffsetsPair = class(Tl3ProtoObject)
 private
 // private fields
   f_FoundUpper : Boolean;
   f_OldOffset : TevCellsCharOffsets;
   f_NewOffset : TevCellsCharOffsets;
   f_CellsType : TedCellTypesList;
    {* Поле для свойства CellsType}
   f_RowType : TedRowType;
    {* Поле для свойства RowType}
 private
 // private methods
   function CompareWidth(const aOffsetList: TevCellsOffsetsPair;
     var l_Delta: Integer): Integer;
   function FindUpper(const aOffsetList: TevCellsOffsetsPair;
     var l_Delta: Integer): Boolean;
   function FindLower(const aOffsetList: TevCellsOffsetsPair;
     var anIndex: Integer;
     var aDelta: Integer): Boolean;
   procedure UpdateNewWidth(anIndex: Integer;
     aDelta: Integer);
   function FindOffset(const aOffsetList: TevCellsOffsetsPair): Boolean;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 public
 // public methods
   constructor Create; reintroduce;
   procedure Clear;
   procedure AddCellWidthAndRecalc;
   function GetOffset(aNew: Boolean): Integer;
   function GetWidth(aNew: Boolean): Integer;
   function LastNewWidth: Integer;
   function PrevNewWidth: Integer;
   procedure SetWidthPair(aNewWidth: Integer;
     aOldWidth: Integer);
   function GetNextOffset(aNew: Boolean): Integer;
   function EqualCells(const anIterator: IedCellsIterator): Boolean; overload; 
   procedure CopyData(const aData: TevCellsOffsetsPair;
     const anIterator: IedCellsIterator); overload; 
   function GetRowWidth(aNew: Boolean): Integer;
   procedure CheckCurrentRow(aList: TevCellsOffsetsPair;
     aNewWidth: Integer;
     anOldCellWidth: Integer;
     aPrevRowWidth: Integer;
     aCelPosl: TedCellPosType;
     out aNeedBreak: Boolean);
   procedure AlignByPrevious(const aData: TevCellsOffsetsPair);
     {* Выравнять ширину ячеек по переданному списку. }
   procedure CopyData(aData: TevCellsCharOffsets;
     const anIterator: IedCellsIterator); overload; 
   function EqualCells(const anIterator: IedCellsIterator;
     const aCellsType: TedCellTypesList): Boolean; overload; 
   function GetOffsetByIndex(anIndex: Integer): Integer;
   function CellTypeByOffset(anOffset: Integer): TedCellType;
   procedure CopyData(const aData: TevCellsOffsetsPair;
     const aControlData: TevCellsOffsetsPair;
     const anIterator: IedCellsIterator); overload; 
     {* Копирование для групп ячеек. }
 public
 // public properties
   property CellsType: TedCellTypesList
     read f_CellsType
     write f_CellsType;
     {* Массив с типами содержимого ячеек. }
   property RowType: TedRowType
     read f_RowType
     write f_RowType;
 end;//TevCellsOffsetsPair

implementation

uses
  l3UnitsTools,
  SysUtils
  ;

// start class TevCellsOffsetsPair

function TevCellsOffsetsPair.CompareWidth(const aOffsetList: TevCellsOffsetsPair;
  var l_Delta: Integer): Integer;
//#UC START# *4F2F719C01AF_4F2F6F750263_var*
//#UC END# *4F2F719C01AF_4F2F6F750263_var*
begin
//#UC START# *4F2F719C01AF_4F2F6F750263_impl*
 Result := f_OldOffset.GetWidth - aOffsetList.f_OldOffset.GetWidth;
 l_Delta := f_NewOffset.GetWidth - aOffsetList.f_NewOffset.GetWidth;
 if Abs(Result) < evCellWidthEpsilon then
  Result := 0;
 f_FoundUpper := Result > 0; 
//#UC END# *4F2F719C01AF_4F2F6F750263_impl*
end;//TevCellsOffsetsPair.CompareWidth

function TevCellsOffsetsPair.FindUpper(const aOffsetList: TevCellsOffsetsPair;
  var l_Delta: Integer): Boolean;
//#UC START# *4F2F71C0015D_4F2F6F750263_var*
//#UC END# *4F2F71C0015D_4F2F6F750263_var*
begin
//#UC START# *4F2F71C0015D_4F2F6F750263_impl*
 l_Delta := GetNextOffset(True) - aOffsetList.GetOffset(True);
 Result := f_FoundUpper and
           (Abs((aOffsetList.GetNextOffset(False) - GetOffset(False)) - GetWidth(False)) < evCellWidthEpsilon);
//#UC END# *4F2F71C0015D_4F2F6F750263_impl*
end;//TevCellsOffsetsPair.FindUpper

function TevCellsOffsetsPair.FindLower(const aOffsetList: TevCellsOffsetsPair;
  var anIndex: Integer;
  var aDelta: Integer): Boolean;
//#UC START# *4F2F71EF028D_4F2F6F750263_var*
var
 l_Offset : Integer; 
//#UC END# *4F2F71EF028D_4F2F6F750263_var*
begin
//#UC START# *4F2F71EF028D_4F2F6F750263_impl*
 l_Offset := aOffsetList.f_OldOffset.GetNextOffset;
 Result := f_OldOffset.FindOffset(l_Offset, anIndex);
 if Result then
 begin
  Dec(anIndex);
  f_NewOffset.SetCurrent(anIndex);
  l_Offset := aOffsetList.GetNextOffset(True);
  aDelta := l_Offset - GetNextOffset(True);
  //Result := Abs(aDelta) >= evCellWidthEpsilon;
 end; // if Result then
//#UC END# *4F2F71EF028D_4F2F6F750263_impl*
end;//TevCellsOffsetsPair.FindLower

procedure TevCellsOffsetsPair.UpdateNewWidth(anIndex: Integer;
  aDelta: Integer);
//#UC START# *4F2F7226039B_4F2F6F750263_var*
//#UC END# *4F2F7226039B_4F2F6F750263_var*
begin
//#UC START# *4F2F7226039B_4F2F6F750263_impl*
 f_NewOffset.UpdateWidth(anIndex, aDelta);
//#UC END# *4F2F7226039B_4F2F6F750263_impl*
end;//TevCellsOffsetsPair.UpdateNewWidth

function TevCellsOffsetsPair.FindOffset(const aOffsetList: TevCellsOffsetsPair): Boolean;
//#UC START# *4F2F716F0249_4F2F6F750263_var*
var
 l_Index: Integer;
//#UC END# *4F2F716F0249_4F2F6F750263_var*
begin
//#UC START# *4F2F716F0249_4F2F6F750263_impl*
 Result := f_OldOffset <> nil;
 if Result then
 begin
  Result := f_OldOffset.FindOffset(aOffsetList.f_OldOffset, l_Index);
  if Result then
   f_NewOffset.SetCurrent(l_Index);
 end; // if Result then
//#UC END# *4F2F716F0249_4F2F6F750263_impl*
end;//TevCellsOffsetsPair.FindOffset

constructor TevCellsOffsetsPair.Create;
//#UC START# *4F2F7030001E_4F2F6F750263_var*
//#UC END# *4F2F7030001E_4F2F6F750263_var*
begin
//#UC START# *4F2F7030001E_4F2F6F750263_impl*
 inherited Create;
 f_RowType := ed_Null;
 f_OldOffset := TevCellsCharOffsets.Create;
 f_NewOffset := TevCellsCharOffsets.Create;
//#UC END# *4F2F7030001E_4F2F6F750263_impl*
end;//TevCellsOffsetsPair.Create

procedure TevCellsOffsetsPair.Clear;
//#UC START# *4F2F704A01F8_4F2F6F750263_var*
//#UC END# *4F2F704A01F8_4F2F6F750263_var*
begin
//#UC START# *4F2F704A01F8_4F2F6F750263_impl*
 if f_NewOffset <> nil then
  f_NewOffset.Clear;
 if (f_OldOffset <> nil) then
  f_OldOffset.Clear;
 f_FoundUpper := False;
//#UC END# *4F2F704A01F8_4F2F6F750263_impl*
end;//TevCellsOffsetsPair.Clear

procedure TevCellsOffsetsPair.AddCellWidthAndRecalc;
//#UC START# *4F2F70660228_4F2F6F750263_var*
//#UC END# *4F2F70660228_4F2F6F750263_var*
begin
//#UC START# *4F2F70660228_4F2F6F750263_impl*
 f_OldOffset.AddCellWidthAndRecalc;
 f_NewOffset.AddCellWidthAndRecalc;
//#UC END# *4F2F70660228_4F2F6F750263_impl*
end;//TevCellsOffsetsPair.AddCellWidthAndRecalc

function TevCellsOffsetsPair.GetOffset(aNew: Boolean): Integer;
//#UC START# *4F2F708E0299_4F2F6F750263_var*
//#UC END# *4F2F708E0299_4F2F6F750263_var*
begin
//#UC START# *4F2F708E0299_4F2F6F750263_impl*
 if aNew then
  Result := f_NewOffset.GetOffset
 else
  Result := f_OldOffset.GetOffset
//#UC END# *4F2F708E0299_4F2F6F750263_impl*
end;//TevCellsOffsetsPair.GetOffset

function TevCellsOffsetsPair.GetWidth(aNew: Boolean): Integer;
//#UC START# *4F2F70B6006A_4F2F6F750263_var*
//#UC END# *4F2F70B6006A_4F2F6F750263_var*
begin
//#UC START# *4F2F70B6006A_4F2F6F750263_impl*
 if aNew then
  Result := f_NewOffset.GetWidth
 else
  Result := f_OldOffset.GetWidth
//#UC END# *4F2F70B6006A_4F2F6F750263_impl*
end;//TevCellsOffsetsPair.GetWidth

function TevCellsOffsetsPair.LastNewWidth: Integer;
//#UC START# *4F2F70EB0222_4F2F6F750263_var*
//#UC END# *4F2F70EB0222_4F2F6F750263_var*
begin
//#UC START# *4F2F70EB0222_4F2F6F750263_impl*
 Result := f_NewOffset.LastWidth;
//#UC END# *4F2F70EB0222_4F2F6F750263_impl*
end;//TevCellsOffsetsPair.LastNewWidth

function TevCellsOffsetsPair.PrevNewWidth: Integer;
//#UC START# *4F2F710D00D6_4F2F6F750263_var*
//#UC END# *4F2F710D00D6_4F2F6F750263_var*
begin
//#UC START# *4F2F710D00D6_4F2F6F750263_impl*
 Result := f_NewOffset.PrevWidth;
//#UC END# *4F2F710D00D6_4F2F6F750263_impl*
end;//TevCellsOffsetsPair.PrevNewWidth

procedure TevCellsOffsetsPair.SetWidthPair(aNewWidth: Integer;
  aOldWidth: Integer);
//#UC START# *4F2F712F0179_4F2F6F750263_var*
//#UC END# *4F2F712F0179_4F2F6F750263_var*
begin
//#UC START# *4F2F712F0179_4F2F6F750263_impl*
 f_OldOffset.SetWidth(aOldWidth);
 f_NewOffset.SetWidth(aNewWidth);
//#UC END# *4F2F712F0179_4F2F6F750263_impl*
end;//TevCellsOffsetsPair.SetWidthPair

function TevCellsOffsetsPair.GetNextOffset(aNew: Boolean): Integer;
//#UC START# *4F2F7268015A_4F2F6F750263_var*
//#UC END# *4F2F7268015A_4F2F6F750263_var*
begin
//#UC START# *4F2F7268015A_4F2F6F750263_impl*
 if aNew then
  Result := f_NewOffset.GetNextOffset
 else
  Result := f_OldOffset.GetNextOffset
//#UC END# *4F2F7268015A_4F2F6F750263_impl*
end;//TevCellsOffsetsPair.GetNextOffset

function TevCellsOffsetsPair.EqualCells(const anIterator: IedCellsIterator): Boolean;
//#UC START# *4F2FABC40294_4F2F6F750263_var*
//#UC END# *4F2FABC40294_4F2F6F750263_var*
begin
//#UC START# *4F2FABC40294_4F2F6F750263_impl*
 Result := f_OldOffset.Equals(anIterator);
//#UC END# *4F2FABC40294_4F2F6F750263_impl*
end;//TevCellsOffsetsPair.EqualCells

procedure TevCellsOffsetsPair.CopyData(const aData: TevCellsOffsetsPair;
  const anIterator: IedCellsIterator);
//#UC START# *4F2FCC5E00C8_4F2F6F750263_var*
//#UC END# *4F2FCC5E00C8_4F2F6F750263_var*
begin
//#UC START# *4F2FCC5E00C8_4F2F6F750263_impl*
 f_OldOffset.CopyData(aData.f_OldOffset, anIterator);
 f_NewOffset.CopyData(aData.f_NewOffset, nil);
//#UC END# *4F2FCC5E00C8_4F2F6F750263_impl*
end;//TevCellsOffsetsPair.CopyData

function TevCellsOffsetsPair.GetRowWidth(aNew: Boolean): Integer;
//#UC START# *4FAB83530326_4F2F6F750263_var*
//#UC END# *4FAB83530326_4F2F6F750263_var*
begin
//#UC START# *4FAB83530326_4F2F6F750263_impl*
 if aNew then
  Result := f_NewOffset.GetRowWidth
 else
  Result := f_OldOffset.GetRowWidth;
//#UC END# *4FAB83530326_4F2F6F750263_impl*
end;//TevCellsOffsetsPair.GetRowWidth

procedure TevCellsOffsetsPair.CheckCurrentRow(aList: TevCellsOffsetsPair;
  aNewWidth: Integer;
  anOldCellWidth: Integer;
  aPrevRowWidth: Integer;
  aCelPosl: TedCellPosType;
  out aNeedBreak: Boolean);
//#UC START# *4FC5F3CF0017_4F2F6F750263_var*
var
 l_Delta: Integer;

 procedure lp_CorrectUpper(anOnlyPositive: Boolean);
 begin
  aList.AddCellWidthAndRecalc;
  l_Delta := aList.GetOffset(True) - aPrevRowWidth;
  if not anOnlyPositive or (l_Delta > 0) then
   UpdateNewWidth(-1, l_Delta);
  aNeedBreak := True;
 end;

var
 l_Index   : Integer;
 l_Compare : Integer;
//#UC END# *4FC5F3CF0017_4F2F6F750263_var*
begin
//#UC START# *4FC5F3CF0017_4F2F6F750263_impl*
 aNeedBreak := False;
 if FindUpper(aList, l_Delta) then
 begin
  if (l_Delta > 0) then
   if (aList.RowType = ed_ChessTableRow) and (aCelPosl = ed_cpLast) then
    lp_CorrectUpper(False)
   else
    aList.SetWidthPair(l_Delta, anOldCellWidth)
 end // if l_PrevWidthList.FindUpper(aList, l_Delta) then
 else
  if FindOffset(aList) then
  begin
   l_Compare := CompareWidth(aList, l_Delta);
   if l_Compare = 0 then
   begin
    if l_Delta <> 0 then
     aList.SetWidthPair(aNewWidth + l_Delta, anOldCellWidth);
   end // if l_Compare = 0 then
   else
    if l_Compare < 0 then // возможно охватывающая ячейка...
     if aCelPosl > ed_cpNone then
     begin
      if aCelPosl = ed_cpLast then
       lp_CorrectUpper(True)
     end // if l_Cell = nil then
     else
      if FindLower(aList, l_Index, l_Delta) then
       aList.SetWidthPair(aNewWidth - l_Delta, anOldCellWidth)
  end; // if FindOffset(aList) then
//#UC END# *4FC5F3CF0017_4F2F6F750263_impl*
end;//TevCellsOffsetsPair.CheckCurrentRow

procedure TevCellsOffsetsPair.AlignByPrevious(const aData: TevCellsOffsetsPair);
//#UC START# *4FC76FA7005D_4F2F6F750263_var*
//#UC END# *4FC76FA7005D_4F2F6F750263_var*
begin
//#UC START# *4FC76FA7005D_4F2F6F750263_impl*
 f_NewOffset.AlignByPrevious(aData.f_NewOffset);
//#UC END# *4FC76FA7005D_4F2F6F750263_impl*
end;//TevCellsOffsetsPair.AlignByPrevious

procedure TevCellsOffsetsPair.CopyData(aData: TevCellsCharOffsets;
  const anIterator: IedCellsIterator);
//#UC START# *50925F0800F6_4F2F6F750263_var*
//#UC END# *50925F0800F6_4F2F6F750263_var*
begin
//#UC START# *50925F0800F6_4F2F6F750263_impl*
 f_OldOffset.CopyData(aData, anIterator);
 f_NewOffset.CopyData(aData, nil);
//#UC END# *50925F0800F6_4F2F6F750263_impl*
end;//TevCellsOffsetsPair.CopyData

function TevCellsOffsetsPair.EqualCells(const anIterator: IedCellsIterator;
  const aCellsType: TedCellTypesList): Boolean;
//#UC START# *51135A8C030B_4F2F6F750263_var*
var
 i       : Integer;
 l_Diff  : Integer;
 l_Count : Integer;
//#UC END# *51135A8C030B_4F2F6F750263_var*
begin
//#UC START# *51135A8C030B_4F2F6F750263_impl*
 l_Diff := aCellsType.Count - f_CellsType.Count;
 Result := l_Diff = 0;
 l_Count := aCellsType.Count - 1;
 if (l_Diff = 1) and (aCellsType[aCellsType.Count - 1] = ed_NeedDelete) then // Последняя ячейка "фейковая"
 begin
  Result := True;
  Dec(l_Count);
 end; // if (l_Diff = 1) and (aCellsType[aCellsType.Count - 1] = ed_None) then
 if (l_Diff < 0) and (f_RowType = ed_EmptyWithContnueCells) then
  Result := True;
 if Result then
 begin
  for i := 0 to l_Count do
  begin
   Result := aCellsType[i] = f_CellsType[i];
   if not Result then
    Result := (aCellsType[i] = ed_Empty) {and (f_CellsType[i] = ed_Continue)};
   if not Result then Break;
  end; // for i := 0 to l_Count do
 end; // if Result then
//#UC END# *51135A8C030B_4F2F6F750263_impl*
end;//TevCellsOffsetsPair.EqualCells

function TevCellsOffsetsPair.GetOffsetByIndex(anIndex: Integer): Integer;
//#UC START# *511A3FF40393_4F2F6F750263_var*
//#UC END# *511A3FF40393_4F2F6F750263_var*
begin
//#UC START# *511A3FF40393_4F2F6F750263_impl*
 Result := f_NewOffset.GetOffsetByIndex(anIndex);
//#UC END# *511A3FF40393_4F2F6F750263_impl*
end;//TevCellsOffsetsPair.GetOffsetByIndex

function TevCellsOffsetsPair.CellTypeByOffset(anOffset: Integer): TedCellType;
//#UC START# *511A409401A4_4F2F6F750263_var*
var
 l_Index: Integer;
//#UC END# *511A409401A4_4F2F6F750263_var*
begin
//#UC START# *511A409401A4_4F2F6F750263_impl*
 if f_NewOffset.FindOffset(anOffset, l_Index) then
  Result := f_CellsType[l_Index]
 else
  Result := ed_None;
//#UC END# *511A409401A4_4F2F6F750263_impl*
end;//TevCellsOffsetsPair.CellTypeByOffset

procedure TevCellsOffsetsPair.CopyData(const aData: TevCellsOffsetsPair;
  const aControlData: TevCellsOffsetsPair;
  const anIterator: IedCellsIterator);
//#UC START# *511B592B0089_4F2F6F750263_var*
//#UC END# *511B592B0089_4F2F6F750263_var*
begin
//#UC START# *511B592B0089_4F2F6F750263_impl*
 f_OldOffset.CopyData(aData.f_OldOffset, anIterator);
 f_NewOffset.CopyDataWithCheckingType(aData.f_NewOffset, aData.f_CellsType, f_CellsType, aData.f_RowType);
//#UC END# *511B592B0089_4F2F6F750263_impl*
end;//TevCellsOffsetsPair.CopyData

procedure TevCellsOffsetsPair.Cleanup;
//#UC START# *479731C50290_4F2F6F750263_var*
//#UC END# *479731C50290_4F2F6F750263_var*
begin
//#UC START# *479731C50290_4F2F6F750263_impl*
 if f_OldOffset <> nil then
  f_OldOffset.Clear;
 FreeAndNil(f_OldOffset);
 if f_NewOffset <> nil then
  f_NewOffset.Clear;
 FreeAndNil(f_NewOffset);
 if f_CellsType <> nil then
  f_CellsType.Clear;
 FreeAndNil(f_CellsType);
 f_RowType := ed_Null;
 inherited;
//#UC END# *479731C50290_4F2F6F750263_impl*
end;//TevCellsOffsetsPair.Cleanup

end.