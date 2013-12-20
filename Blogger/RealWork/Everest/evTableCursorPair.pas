unit evTableCursorPair;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Модуль: "w:/common/components/gui/Garant/Everest/evTableCursorPair.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::Cursors::TevTableCursorPair
//
// Выделение для таблицы.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  nevBase,
  nevTools,
  evParaListCursorPair,
  k2Interfaces
  ;

type
 _DeletingRowCorrector_Parent_ = TevParaListCursorPair;
 {$Include ..\Everest\DeletingRowCorrector.imp.pas}
 TevTableCursorPair = class(_DeletingRowCorrector_, IevTableRange)
  {* Выделение для таблицы. }
 private
 // private fields
   f_StartOffset : LongInt;
   f_FinishOffset : LongInt;
 private
 // private methods
   function GetRowBlock(const aView: InevView;
     const aRow: InevTag;
     aStartOffset: LongInt;
     aFinishOffset: LongInt;
     out theBlock: InevRange): Boolean;
     {* получить блок выделения для строки таблицы. }
 protected
 // realized methods
   function GetRangeOffsets(out theStartOffset: Integer;
     out theFinishOffset: Integer): Boolean;
     {* возвращает горизонтальные границы диапазона выделения. }
   function GetRangeBorders(out theStartRow: Integer;
     out theFinishRow: Integer;
     out theStartOffset: Integer;
     out theFinishOffset: Integer): Boolean;
     {* возвращает границы диапазона выделения. }
   function Offset2Cells(const aRow: InevTag;
     aStartOffset: Integer;
     aFinishOffset: Integer;
     out theStartCell: Integer;
     out theFinishCell: Integer): Boolean;
     {* получить индексы для ячеек aRow для смещений (aStartOffset, aFinishOffset). }
 protected
 // overridden protected methods
   function DoChangeParam(const aView: InevView;
    const aMarker: IevMarker;
    aValue: Integer;
    const anOp: InevOp): Boolean; override;
   function GetParaBlockBordersPrim(const aChildPara: InevPara;
     aPID: LongInt;
     out cParaStart: InevBasePoint;
     out cParaFinish: InevBasePoint): Boolean; override;
   procedure Init(const aStart: InevBasePoint = nil;
     const aFinish: InevBasePoint = nil;
     aSharp: Boolean = false); override;
   procedure DoStore(const aView: InevView;
     const G: Ik2TagGenerator;
     aFlags: TevStoreFlags); override;
    {$If defined(evNeedEditableCursors)}
   function DoDelete(const aView: InevView;
     const anOpPack: InevOp = nil;
     aMode: TevClearMode = ev_cmAll;
     const aPara: InevPara = nil): Boolean; override;
    {$IfEnd} //evNeedEditableCursors
 end;//TevTableCursorPair

implementation

uses
  evOp,
  evInternalInterfaces,
  k2OpMisc,
  evConst,
  l3MinMax,
  l3Base,
  evdInterfaces,
  nevFacade,
  k2Tags,
  evCursorTools,
  evdTypes,
  k2Base
  ;

{$Include ..\Everest\DeletingRowCorrector.imp.pas}

// start class TevTableCursorPair

function TevTableCursorPair.GetRowBlock(const aView: InevView;
  const aRow: InevTag;
  aStartOffset: LongInt;
  aFinishOffset: LongInt;
  out theBlock: InevRange): Boolean;
//#UC START# *5108DA2B030A_5108D3850245_var*
var
 l_Start        : InevPoint;
 l_Finish       : InevPoint;
 l_StartColumn  : LongInt;
 l_FinishColumn : LongInt;
 l_Para         : InevPara;
//#UC END# *5108DA2B030A_5108D3850245_var*
begin
//#UC START# *5108DA2B030A_5108D3850245_impl*
 if Offset2Cells(aRow,
                 aStartOffset, aFinishOffset,
                 l_StartColumn, l_FinishColumn) then
 begin
  Result := true;
  if aRow.QT(InevPara, l_Para) then
   try
    l_Start := l_Para.MakePoint;
    try
     l_Start.SetEntryPoint(Succ(l_StartColumn));
     l_Start.Inner.Move(aView, ev_ocTopLeft);
     l_Finish := l_Para.MakePoint;
     try
      l_Finish.SetEntryPoint(Succ(l_FinishColumn));
      l_Finish.Inner.Move(aView, ev_ocBottomRight);
      theBlock := l_Para.Range(l_Start, l_Finish);
     finally
      l_Finish := nil;
     end;//try..finally
    finally
     l_Start := nil;
    end;//try..finally
   finally
    l_Para := nil;
   end;//try..finally
 end//Offset2Cells..
 else
  Result := false;
//#UC END# *5108DA2B030A_5108D3850245_impl*
end;//TevTableCursorPair.GetRowBlock

function TevTableCursorPair.GetRangeOffsets(out theStartOffset: Integer;
  out theFinishOffset: Integer): Boolean;
//#UC START# *47C7DB5401D7_5108D3850245_var*
//#UC END# *47C7DB5401D7_5108D3850245_var*
begin
//#UC START# *47C7DB5401D7_5108D3850245_impl*
 Result := True;
 theStartOffset := f_StartOffset;
 theFinishOffset := f_FinishOffset;
//#UC END# *47C7DB5401D7_5108D3850245_impl*
end;//TevTableCursorPair.GetRangeOffsets

function TevTableCursorPair.GetRangeBorders(out theStartRow: Integer;
  out theFinishRow: Integer;
  out theStartOffset: Integer;
  out theFinishOffset: Integer): Boolean;
//#UC START# *47C7DB7403D1_5108D3850245_var*
//#UC END# *47C7DB7403D1_5108D3850245_var*
begin
//#UC START# *47C7DB7403D1_5108D3850245_impl*
 Result := True;
 theStartRow := Pred(f_B.rStart);
 theFinishRow := Pred(f_B.rFinish);
 theStartOffset := f_StartOffset;
 theFinishOffset := f_FinishOffset;
//#UC END# *47C7DB7403D1_5108D3850245_impl*
end;//TevTableCursorPair.GetRangeBorders

function TevTableCursorPair.Offset2Cells(const aRow: InevTag;
  aStartOffset: Integer;
  aFinishOffset: Integer;
  out theStartCell: Integer;
  out theFinishCell: Integer): Boolean;
//#UC START# *47C7DBA00306_5108D3850245_var*
var
 l_Row : InevParaList;  
//#UC END# *47C7DBA00306_5108D3850245_var*
begin
//#UC START# *47C7DBA00306_5108D3850245_impl*
 Result := True;
 if not aRow.QT(InevParaList, l_Row) then
  Assert(False);
 with (l_Row As InevTableRow) do
 begin
  theStartCell := FindCell(aStartOffset, 0);
  theFinishCell := FindCell(aFinishOffset, 0);
 end;//with (l_Row As InevTableRow)
//#UC END# *47C7DBA00306_5108D3850245_impl*
end;//TevTableCursorPair.Offset2Cells

function TevTableCursorPair.DoChangeParam(const aView: InevView;
  const aMarker: IevMarker;
  aValue: Integer;
  const anOp: InevOp): Boolean;
//#UC START# *4A29465701BC_5108D3850245_var*
var
 l_ParamTool : IevChangeParamTool;
//#UC END# *4A29465701BC_5108D3850245_var*
begin
//#UC START# *4A29465701BC_5108D3850245_impl*
 if QT(IevChangeParamTool, l_ParamTool, k2Proc(anOp)) then
  try
   if l_ParamTool.ChangeParam(aMarker, aValue, anOp, true, Pred(f_B.rStart), Pred(f_B.rFinish)) then
    Result := true
   else
    Result := inherited DoChangeParam(aView, aMarker, aValue, anOp);
  finally
   l_ParamTool := nil;
  end//try..finally
 else
  Result := inherited DoChangeParam(aView, aMarker, aValue, anOp);
//#UC END# *4A29465701BC_5108D3850245_impl*
end;//TevTableCursorPair.DoChangeParam

function TevTableCursorPair.GetParaBlockBordersPrim(const aChildPara: InevPara;
  aPID: LongInt;
  out cParaStart: InevBasePoint;
  out cParaFinish: InevBasePoint): Boolean;
//#UC START# *5108D4820232_5108D3850245_var*

 procedure MakeBorder(const aTemplate : InevBasePoint;
                      aBorder         : LongInt;
                      aOffset         : LongInt;
                      out theBorder   : InevBasePoint;
                      aRight          : Boolean);
 var
  l_Border : InevPoint;
  l_PID    : LongInt;
 begin
  if (aTemplate = nil) then
   theBorder := nil
  else
  if (aPID = aBorder) AND
          ((f_B.rStart = f_B.rFinish) OR Sharp) then
   // - если это f_BS = f_BF - получится недоделанная возможность нецелого выделения ячеек (всегда)
   theBorder := aTemplate
  else
  begin
   l_Border := aChildPara.MakePoint(aTemplate.ParentPoint);
   try
    with l_Border do
    begin
     l_PID := (ParaX.Para[aPID - 1] As InevTableRow).FindCell(aOffset, 0, aRight);
     SetEntryPointPrim(l_PID + 1);
    end;//with l_Border
    theBorder := l_Border;
   finally
    l_Border := nil;
   end;//try..finally
  end;//aTemplate = nil
 end;

//#UC END# *5108D4820232_5108D3850245_var*
begin
//#UC START# *5108D4820232_5108D3850245_impl*
 Result := (aPID >= f_B.rStart) AND (aPID <= f_B.rFinish);
 if Result then
 begin
  MakeBorder(f_ChildStart, f_B.rStart, f_StartOffset, cParaStart, False);
  MakeBorder(f_ChildFinish, f_B.rFinish, f_FinishOffset, cParaFinish, True);
 end
 else
 begin
  cParaStart := nil;
  cParaFinish := nil;
 end;//Result
//#UC END# *5108D4820232_5108D3850245_impl*
end;//TevTableCursorPair.GetParaBlockBordersPrim

procedure TevTableCursorPair.Init(const aStart: InevBasePoint = nil;
  const aFinish: InevBasePoint = nil;
  aSharp: Boolean = false);
//#UC START# *5108D53B0312_5108D3850245_var*
var
 l_Child : InevBasePoint;
 l_Start : Boolean;
 l_Offset: Integer;
//#UC END# *5108D53B0312_5108D3850245_var*
begin
//#UC START# *5108D53B0312_5108D3850245_impl*
 inherited;
 l_Start := False;
 if (f_ChildStart = nil) then
  f_StartOffset := 0
 else
  with f_ChildStart do
  begin
   l_Child := Inner;
   if (l_Child = nil) then
    f_StartOffset := 0
   else
   begin
    f_StartOffset := f_ChildStart.Inner.Obj.OffsetX + evEpsilon;
    l_Start := f_ChildStart.Obj.PID = 0;
   end;
  end;//with f_ChildStart do
 if f_ChildFinish = nil then
  f_FinishOffset := High(LongInt)
 else                                     
 begin
  with f_ChildFinish do
  begin
   l_Child := Inner;
   if (l_Child = nil) then
    f_FinishOffset := High(LongInt)
   else
    with f_ChildFinish.Inner.Obj^ do
    begin
     if l_Start then
     begin
      l_Offset := OffsetX;
      if (Abs(f_StartOffset - l_Offset) <= evEpsilon) and (f_ChildFinish.ChildrenCount > 1) then
       f_FinishOffset := l_Offset + Min(IntA[k2_tiWidth], f_ChildStart.Inner.Obj.IntA[k2_tiWidth])
      else
       f_FinishOffset := l_Offset + IntA[k2_tiWidth];
     end // if l_Start then
     else
      f_FinishOffset := OffsetX + IntA[k2_tiWidth];
    end;
  end;//f_ChildFinish.Inner.Obj.Shape
 end;//f_ChildFinish = nil
 if (f_StartOffset > f_FinishOffset) then
  l3Swap(f_FinishOffset, f_StartOffset, SizeOf(f_FinishOffset));
//#UC END# *5108D53B0312_5108D3850245_impl*
end;//TevTableCursorPair.Init

procedure TevTableCursorPair.DoStore(const aView: InevView;
  const G: Ik2TagGenerator;
  aFlags: TevStoreFlags);
//#UC START# *5108D5CB0048_5108D3850245_var*
var
 CellBlock : InevRange;
 l_B       : TevPair;
 RowBlock  : InevRange;
//#UC END# *5108D5CB0048_5108D3850245_var*
begin
//#UC START# *5108D5CB0048_5108D3850245_impl*
 if Solid(aView) then
  inherited
 else
 begin
  l_B := Borders;
  if (l_B.rStart < l_B.rFinish) and not (evd_sfOnlyFirstCell in aFlags) then
   inherited // - выделено больше одного ряда
  else 
  begin
   RowBlock := GetChildSel(aView, Pred(l_B.rStart), False);
   try
    l_B := RowBlock.Borders;
    if (l_B.rStart < l_B.rFinish) and not (evd_sfOnlyFirstCell in aFlags) then
     inherited // - выделено больше одной ячейки
    else 
    begin
     CellBlock := RowBlock.GetChildSel(aView, Pred(l_B.rStart), False);
     try
      if CellBlock.Solid(aView) and not (evd_sfOnlyFirstCell in aFlags) then
       inherited
       // - сохраняем всю ячейку
      else
       CellBlock.AsStorable.Store(aView, G, aFlags + [evd_sfChildrenOnly]);
       // - сохраняем внутренние параграфы ячейки
     finally
      CellBlock := nil;
     end;//try..finally
    end;
   finally
    RowBlock := nil;
   end;//try..finally
  end;//l_B.rStart < l_B.rFinish
 end;//Solid 
//#UC END# *5108D5CB0048_5108D3850245_impl*
end;//TevTableCursorPair.DoStore

{$If defined(evNeedEditableCursors)}
function TevTableCursorPair.DoDelete(const aView: InevView;
  const anOpPack: InevOp = nil;
  aMode: TevClearMode = ev_cmAll;
  const aPara: InevPara = nil): Boolean;
//#UC START# *5108D66900C9_5108D3850245_var*
var
 l_StartOffset  : LongInt;
 l_FinishOffset : LongInt;                       

 function DeleteColumns(const aRow: Ik2Tag; Index: LongInt): Boolean; far;
  var
   l_Block : InevRange;
  begin//DeleteColumns
   Result := true;
   if GetRowBlock(aView, aRow,
                  l_StartOffset, l_FinishOffset, l_Block) then
    try
     l_Block.Modify.Delete(aView, anOpPack, aMode, aPara);
    finally
     l_Block := nil;
    end;//try..finally
  end;//DeleteColumns

  function DeleteText(const aRow: Ik2Tag; Index: LongInt): Boolean; far;

   function _Delete(const aBlock: InevRange; anIndex: LongInt): Boolean;
   begin//_Delete
    Result := true;
    aBlock.Modify.Delete(aView, anOpPack, ev_cmKeepOne, aPara);
   end;//_Delete

  var
   l_Block  : InevRange;
  begin//DeleteText
   Result := true;
   if GetRowBlock(aView, aRow,
                  l_StartOffset, l_FinishOffset, l_Block) then
    try
     l_Block.IterateF(evL2TSA(@_Delete));
    finally
     l_Block := nil;
    end;//try..finally
  end;//DeleteText

var
 l_OnlyCell   : Boolean;
 l_ChildBlock : InevRange;
 l_CellBlock  : InevRange;
 l_RowB       : TevPair;
 l_ColumnB    : TevPair;
 l_CheckRow   : InevPara;
//#UC END# *5108D66900C9_5108D3850245_var*
begin
//#UC START# *5108D66900C9_5108D3850245_impl*
 l_OnlyCell := aMode = ev_cmClearFirstCell;
 aMode := ev_cmAll;
 l_RowB := Borders;
 l_ChildBlock := GetChildSel(aView, Pred(l_RowB.rStart), False);
 try
  if l_ChildBlock.Solid(aView) and not l_OnlyCell then
   {-выделена группа строк}
  begin
   if l_RowB.rFinish < ParaX.ParaCount then
    CheckRow(ParaX[l_RowB.rFinish], anOpPack);
   Result := inherited DoDelete(aView, anOpPack, aMode, aPara);
  end
  else
  begin
   l_ColumnB := l_ChildBlock.Borders;
   if ((l_RowB.rStart = l_RowB.rFinish) AND
      (l_ColumnB.rStart = l_ColumnB.rFinish)) or l_OnlyCell then
   begin
    {-выделена одна ячейка}
    l_CellBlock := l_ChildBlock.GetChildSel(aView, Pred(l_ColumnB.rStart), False);
    try
     l_CellBlock.Modify.Delete(aView, anOpPack, ev_cmKeepOne, aPara);
    finally
     l_CellBlock := nil;
    end;{try..finally}
   end//l_RowB.rStart = l_RowB.rFinish..
   else
   begin
    if GetRangeOffsets(l_StartOffset, l_FinishOffset) then
    begin
     if (l_RowB.rStart = 1) AND (l_RowB.rFinish = ParaX.ParaCount) then
      {-выделена группа столбцов}
      IterateChildrenF(k2L2TIA(@DeleteColumns))
     else
      {-выделен блок ячеек}
      IterateChildrenF(k2L2TIA(@DeleteText));
    end;//GetRangeOffsets
   end;//l_StartRow = l_FinishRow
   Result := true;
  end;//ChildBlock.Solid
 finally
  l_ChildBlock := nil;
 end;//try..finally
//#UC END# *5108D66900C9_5108D3850245_impl*
end;//TevTableCursorPair.DoDelete
{$IfEnd} //evNeedEditableCursors

end.