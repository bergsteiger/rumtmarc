unit evTableTools;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Модуль: "w:/common/components/gui/Garant/Everest/evTableTools.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::Everest::CellUtils::evTableTools
//
// Всякие полезные инструменты для работы с таблицами.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  l3Interfaces,
  nevTools,
  evEditorInterfaces
  ;

 {$If not defined(Nemesis)}
function EvMakeTableRegular(const aRange: IedRange;
  const aProgress: Il3Progress = nil): Boolean; overload; 
   {* делает таблицу "регулярной" структуры, т.е. подгоняет ширины ячеек. }
 {$IfEnd} //not Nemesis
 {$If not defined(Nemesis)}
function EvTableFixNSRCWidth(const aRange: IedRange;
  aWidth: LongInt = 0): Boolean; overload; 
   {* устанавливает ширину колонки таблицы для выливки в NSRC. }
 {$IfEnd} //not Nemesis
 {$If not defined(Nemesis)}
function EvTableFixNSRCWidth(const aColumnsIterator: IedColumnsIterator;
  aWidth: LongInt = 0): Boolean; overload; 
 {$IfEnd} //not Nemesis
 {$If not defined(Nemesis)}
function EvTableFixNSRCWidth(const aColumn: IedColumn;
  aWidth: LongInt = 0): Boolean; overload; 
 {$IfEnd} //not Nemesis
 {$If not defined(Nemesis)}
function EvMakeTableRegular(const aTable: IedTable;
  aSeparateOp: Boolean;
  const aProgress: Il3Progress = nil): Boolean; overload; 
 {$IfEnd} //not Nemesis
function EvTableGetNeighbour(const aView: InevView;
  const aCell: InevPara;
  anUp: TevNeighbourPos): InevPara;

implementation

uses
  k2Interfaces,
  l3CustomString,
  evCellsWidthCorrecter,
  l3Base,
  evMsgCode,
  afwFacade,
  k2Op,
  k2Tags,
  l3MinMax,
  l3String,
  l3Chars,
  l3UnitsTools,
  l3InterfacesMisc,
  k2Base,
  evTableCellUtils,
  evOp,
  evConst,
  nevFacade
  ;

// unit methods

{$If not defined(Nemesis)}
function EvTableCalculateNSRCWidth(const aColumn: IedColumn;
  out theWidth: LongInt): Boolean;
//#UC START# *4F2B7DD502A3_4F2B77C00327_var*
var
 l_MaxWidth : LongInt;
 l_CellGap  : LongInt;

 function lp_CheckPara(const aPara: Ik2Tag; Index: LongInt): Boolean; 
 var
  l_Text : Tl3CustomString;
 begin
  Result := true;
  with aPara.Attr[k2_tiText] do
   if IsValid then
    l_Text := AsObject As Tl3CustomString
   else
    l_Text := nil;
  if not l_Text.Empty then
   with l_Text do
   begin
    if not l3CharSetPresent(St, Len, cc_ANSILetter) then
    begin
     l_MaxWidth := Max(l_MaxWidth, evChar2Inch(Len) + l_CellGap);
     evTableCalculateNSRCWidth := true;
    end;//l3CountOfChar..
   end;//not l_Text.Empty
 end;
                                         
var
 l_CellsIterator : IedCellsIterator;
 l_Cell          : IedCell;
 l_TagWrap       : Ik2Tag;
//#UC END# *4F2B7DD502A3_4F2B77C00327_var*
begin
//#UC START# *4F2B7DD502A3_4F2B77C00327_impl*
 Result := false;
 if (aColumn <> nil) then begin
  l_CellsIterator := aColumn.CellsIterator;
  if (l_CellsIterator <> nil) then
   try
    l_MaxWidth := 0;
    l_Cell := l_CellsIterator.First(False);
    while (l_Cell <> nil) do begin
     if l3IOk(l_Cell.QueryInterface(Ik2Tag, l_TagWrap)) then
      try
       with l_TagWrap do
       begin
        l_CellGap := IntA[k2_tiLeftIndent];
        Inc(l_CellGap, IntA[k2_tiRightIndent]);
        if (aColumn.ID = 0) then
         Inc(l_CellGap, evChar2Inch(1));
        IterateChildrenF(k2L2TIA(@lp_CheckPara));
       end;//with l_TagWrap
       theWidth := l_MaxWidth;
      finally
       l_TagWrap := nil;
      end;//try..finally
     l_Cell := l_CellsIterator.Next;
    end;//l_Cell <> nil
   finally
    l_CellsIterator := nil;
   end;//try..finally
 end;//aColumn <> nil 
//#UC END# *4F2B7DD502A3_4F2B77C00327_impl*
end;//EvTableCalculateNSRCWidth
{$IfEnd} //not Nemesis

{$If not defined(Nemesis)}
procedure EvCheckTableRegular(const aTable: IedTable);
//#UC START# *4F2BBCB400BF_4F2B77C00327_var*
var
 l_Iterator    : IedColumnsIterator;
 l_Column      : IedColumn;
 l_Width       : Integer;
 l_MakeRegular : Boolean;
//#UC END# *4F2BBCB400BF_4F2B77C00327_var*
begin
//#UC START# *4F2BBCB400BF_4F2B77C00327_impl*
 l_Iterator := aTable.ColumnsIterator;
 if (l_Iterator = nil) then
  l_Column := aTable.Column
 else
  l_Column := l_Iterator.First;
 l_MakeRegular := False;
 while (l_Column <> nil) do
 begin
  l_Width := l_Column.Width;
  l_Width := evCheckCellWidth(l_Width, True);
  if l_Width <> l_Column.Width then
  begin
   l_MakeRegular := True;
   Break;
  end; // if l_Width <> l_Column.Width then
  if (l_Iterator = nil) then
   l_Column := nil
  else
   l_Column := l_Iterator.Next;
 end;//while (l_Column <> nil)
 if l_MakeRegular then
  evMakeTableRegular(aTable, False);
//#UC END# *4F2BBCB400BF_4F2B77C00327_impl*
end;//EvCheckTableRegular
{$IfEnd} //not Nemesis

{$If not defined(Nemesis)}
function EvMakeTableRegular(const aRange: IedRange;
  const aProgress: Il3Progress = nil): Boolean;
//#UC START# *4F2B77FD0024_4F2B77C00327_var*
//#UC END# *4F2B77FD0024_4F2B77C00327_var*
begin
//#UC START# *4F2B77FD0024_4F2B77C00327_impl*
 if (aRange = nil) then
  Result := False
 else
  Result := evMakeTableRegular(aRange.Table, True, aProgress);
//#UC END# *4F2B77FD0024_4F2B77C00327_impl*
end;//EvMakeTableRegular
{$IfEnd} //not Nemesis

{$If not defined(Nemesis)}
function EvTableFixNSRCWidth(const aRange: IedRange;
  aWidth: LongInt = 0): Boolean;
//#UC START# *4F2B781C0164_4F2B77C00327_var*
var
 l_Table : IedTable;
//#UC END# *4F2B781C0164_4F2B77C00327_var*
begin
//#UC START# *4F2B781C0164_4F2B77C00327_impl*
 Result := false;
 if (aRange <> nil) then
 begin
  l_Table := aRange.Table;
  if (l_Table <> nil) then
  begin
   evCheckTableRegular(l_Table);
   Result := evTableFixNSRCWidth(l_Table.Column, aWidth);
   if not Result then
    Result := evTableFixNSRCWidth(l_Table.ColumnsIterator, aWidth);
  end;//l_Table <> nil
 end;//aRange <> nil
//#UC END# *4F2B781C0164_4F2B77C00327_impl*
end;//EvTableFixNSRCWidth
{$IfEnd} //not Nemesis

{$If not defined(Nemesis)}
function EvTableFixNSRCWidth(const aColumnsIterator: IedColumnsIterator;
  aWidth: LongInt = 0): Boolean;
//#UC START# *4F2BBD58017D_4F2B77C00327_var*
var
 l_Column : IedColumn;
 l_Op     : InevOp;
//#UC END# *4F2BBD58017D_4F2B77C00327_var*
begin
//#UC START# *4F2BBD58017D_4F2B77C00327_impl*
 Result := False;
 if (aColumnsIterator <> nil) then
 begin
  l_Op := aColumnsIterator.Processor.StartOp;
  try
   l_Column := aColumnsIterator.First;
   while (l_Column <> nil) do
   begin
    if evTableFixNSRCWidth(l_Column, aWidth) then
     Result := true;
    l_Column := aColumnsIterator.Next;
   end;//while (l_Column <> nil)
  finally
   l_Op := nil;
  end;
 end;//aColumnsIterator <> nil
//#UC END# *4F2BBD58017D_4F2B77C00327_impl*
end;//EvTableFixNSRCWidth
{$IfEnd} //not Nemesis

{$If not defined(Nemesis)}
function EvTableFixNSRCWidth(const aColumn: IedColumn;
  aWidth: LongInt = 0): Boolean;
//#UC START# *4F2BBD9400E2_4F2B77C00327_var*
var
 l_Width : LongInt;
//#UC END# *4F2BBD9400E2_4F2B77C00327_var*
begin
//#UC START# *4F2BBD9400E2_4F2B77C00327_impl*
 if (aWidth = 0) then
  Result := evTableCalculateNSRCWidth(aColumn, l_Width)
 else
 begin
  if (aColumn = nil) then
   Result := False
  else
  begin
   Result := True;
   Inc(aWidth);
   if (aColumn.ID = 0) then
    Inc(aWidth);
   l_Width := evChar2Inch(aWidth);
  end;//aColumn = nil
 end;//aWidth = 0
 if Result then
  aColumn.Width := l_Width;
//#UC END# *4F2BBD9400E2_4F2B77C00327_impl*
end;//EvTableFixNSRCWidth
{$IfEnd} //not Nemesis

{$If not defined(Nemesis)}
function EvMakeTableRegular(const aTable: IedTable;
  aSeparateOp: Boolean;
  const aProgress: Il3Progress = nil): Boolean;
//#UC START# *4F2BBFAC0192_4F2B77C00327_var*
//#UC END# *4F2BBFAC0192_4F2B77C00327_var*
begin
//#UC START# *4F2BBFAC0192_4F2B77C00327_impl*
 Result := TevCellsWidthCorrecter.DoCorrection(aTable, nil, aSeparateOp, aProgress);
//#UC END# *4F2BBFAC0192_4F2B77C00327_impl*
end;//EvMakeTableRegular
{$IfEnd} //not Nemesis

function EvTableGetNeighbour(const aView: InevView;
  const aCell: InevPara;
  anUp: TevNeighbourPos): InevPara;
//#UC START# *4F2BC0450156_4F2B77C00327_var*
var
 l_RowCursor  : InevBasePoint;
 l_Op         : LongInt;
 l_Point      : InevBasePoint;
 l_CellCursor : InevBasePoint; 
//#UC END# *4F2BC0450156_4F2B77C00327_var*
begin
//#UC START# *4F2BC0450156_4F2B77C00327_impl*
 Result := nev.NullPara;
 if aCell = nil then Exit;
 l_Point := aCell.MakePoint.PointToParent(aCell.OwnerPara.OwnerPara);
 try
  l_RowCursor := l_Point.Inner;
  if (anUp = ev_npUp) then
  begin
   if (l_Point.Position <= 1) then Exit;
   //Есть возможность подняться выше...
   l_Op := ev_ocParaUp;
  end//anUp = ev_npUp
  else
  begin
   if (l_Point.Position >= l_Point.Obj.ChildrenCount) then Exit;
   if not l_RowCursor.Inner.Move(aView, ev_ocBottomRight) then Exit;
   //Есть возможность опуститься ниже...
   if (anUp = ev_npDown) then
    l_Op := ev_ocParaDown
   else
    l_Op := ev_ocNextPara;
  end;//anUp
  l_CellCursor := l_RowCursor.Inner;
  if l_CellCursor.Move(aView, l_Op) then
  begin
   if l_Point.Inner.HasInner then
   begin
    Result := l_Point.Inner.Inner.Obj.AsPara;
    if Result.IsValid then
    begin
     if (Abs(aCell.IntA[k2_tiWidth] -
             Result.IntA[k2_tiWidth]) > 2 * evEpsilon) then
     begin
      Result := nev.NullPara;
      Exit;
     end;//Abs(aCell.IntA[k2_tiWidth]
    end;//anExact
   end;//l_Point.Inner.Inner
  end;//evMoveCursor(..
 finally
  l_Point := nil;
 end;//try..finally
//#UC END# *4F2BC0450156_4F2B77C00327_impl*
end;//EvTableGetNeighbour

end.