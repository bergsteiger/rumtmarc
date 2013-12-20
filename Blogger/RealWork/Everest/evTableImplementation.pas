unit evTableImplementation;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/evTableImplementation.pas"
// Начат: 01.07.1999 13:00
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::ParaUtils::TevTableImplementation
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
  k2ProcTagTool,
  nevTools
  ;

type
 _DeletingRowCorrector_Parent_ = Tk2ProcTagTool;
 {$Include ..\Everest\DeletingRowCorrector.imp.pas}
 TevTableImplementation = class(_DeletingRowCorrector_, IevTable)
 private
 // private fields
   f_Loc : InevBasePoint;
   f_View : InevView;
    {* Поле для свойства View}
 protected
 // realized methods
   procedure InsertRows(NumRows: Integer;
    aAtEnd: Boolean);
     {* вставляет NumRows строк в текущее место таблицы. }
   procedure InsertColumns(NumColumns: Integer);
     {* вставляет NumColumns столбцов в текущее место таблицы. }
   procedure DeleteRow;
     {* удалить текущую строку таблицы. }
   procedure DeleteColumn;
     {* удалить столбец таблицы. }
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure ClearFields; override;
 public
 // public methods
   constructor Create(const aView: InevView;
    const aLoc: InevBasePoint;
    const aProcessor: InevProcessor); reintroduce;
   class function Make(const aView: InevView;
    const aLoc: InevBasePoint;
    const aProcessor: InevProcessor): IevTable;
 protected
 // protected properties
   property View: InevView
     read f_View;
 end;//TevTableImplementation

implementation

uses
  evOp,
  evParaTools,
  evCursorTools,
  l3MinMax,
  l3Base,
  Table_Const,
  TableRow_Const,
  TableCell_Const,
  k2Tags,
  k2Base,
  evdTypes
  ;

{$Include ..\Everest\DeletingRowCorrector.imp.pas}

// start class TevTableImplementation

constructor TevTableImplementation.Create(const aView: InevView;
  const aLoc: InevBasePoint;
  const aProcessor: InevProcessor);
//#UC START# *48D3D6CA01F0_48D3D038036A_var*
//#UC END# *48D3D6CA01F0_48D3D038036A_var*
begin
//#UC START# *48D3D6CA01F0_48D3D038036A_impl*
 inherited Create(aLoc.Obj^, aProcessor);
 f_Loc := aLoc;
 f_View := aView;
//#UC END# *48D3D6CA01F0_48D3D038036A_impl*
end;//TevTableImplementation.Create

class function TevTableImplementation.Make(const aView: InevView;
  const aLoc: InevBasePoint;
  const aProcessor: InevProcessor): IevTable;
//#UC START# *48D3D6E60111_48D3D038036A_var*
var
 l_Range : TevTableImplementation;
 l_C     : InevBasePoint;
//#UC END# *48D3D6E60111_48D3D038036A_var*
begin
//#UC START# *48D3D6E60111_48D3D038036A_impl*
 l_C := aLoc;
 while (l_C <> nil) do
 begin
  if l_C.Obj.InheritsFrom(k2_idTable) then
   break
  else
   l_C := l_C.Inner; 
 end;//l_C <> nil
 if (l_C = nil) then
  Result := nil
 else
 begin
  l_Range := Create(aView, aLoc, aProcessor);
  try
   Result := l_Range;
  finally
   l3Free(l_Range);
  end;//try..finally
 end;//l_C = nil
//#UC END# *48D3D6E60111_48D3D038036A_impl*
end;//TevTableImplementation.Make

procedure TevTableImplementation.InsertRows(NumRows: Integer;
  aAtEnd: Boolean);
//#UC START# *4770E4A40232_48D3D038036A_var*
var
 R      : InevObject;
 l_Pack : InevOp;        {-пачка операций     }
 CC     : InevBasePoint;
//#UC END# *4770E4A40232_48D3D038036A_var*
begin
//#UC START# *4770E4A40232_48D3D038036A_impl*
 CC := f_Loc;
 l_Pack := Processor.StartOp(ev_ocInsertRow);
 {-открываем пачку операций}
 try
  R := CC.Inner.Obj.CloneObj;
  try
   evClearPara(View, R, l_Pack);                
   while (NumRows > 0) do
   begin
    evInsertPara(l_Pack, CC, R, AtEndFromBool[aAtEnd]);
    if aAtEnd then
     CC.SetEntryPoint(Succ(CC.Position), l_Pack)
    else
     CC.SetEntryPoint(CC.Position, l_Pack);
    Dec(NumRows);
    if (NumRows > 0) then
     R := R.CloneObj;
   end;//NumRows > 0
   with CC.Inner do
   begin
    SetEntryPoint(1, l_Pack);
    Inner.Move(View, ev_ocTopLeft, l_Pack);
   end;//with CC.Inner
 finally
   R := nil;
  end;//try..finally
 finally
  l_Pack := nil; {-закрываем пачку операций}
 end;//try..finally
//#UC END# *4770E4A40232_48D3D038036A_impl*
end;//TevTableImplementation.InsertRows

procedure TevTableImplementation.InsertColumns(NumColumns: Integer);
//#UC START# *4770E4B9039F_48D3D038036A_var*
var
 l_Pack    : InevOp;        {-пачка операций     }
 CC        : InevBasePoint;
 CID       : Integer;
 RID       : Integer;
 TC        : InevPara;
 TR        : InevParaList;
 T         : InevParaList;
 RowCursor : InevBasePoint;
 NC        : Integer;
//#UC END# *4770E4B9039F_48D3D038036A_var*
begin
//#UC START# *4770E4B9039F_48D3D038036A_impl*
 CC := f_Loc;
 l_Pack := Processor.StartOp(ev_ocInsertColumn);
 {-открываем пачку операций}
 try
  CID := CC.Inner.Position;
  T := CC.Obj.AsPara.AsList;
  for RID := 0 to Pred(T.ParaCount) do
  begin
   TR := T[RID].AsList;
   if (CID <= TR.ParaCount) then
   begin
    TC := TR[Pred(CID)].CloneObj.AsPara;
    try
     evClearPara(View, TC, l_Pack);
     RowCursor := TR.MakePoint;
     try
      RowCursor.SetEntryPoint(CID);
      NC := NumColumns;
      while (NC > 0) do
      begin
       evInsertPara(l_Pack, RowCursor, TC, []);
       Dec(NC);
       if (NC > 0) then
        TC := TC.CloneObj.AsPara;
      end;//while NC > 0
     finally
      RowCursor := nil;
     end;//try..finally
    finally
     TC := nil;
    end;//try.finally
   end;//CID <= TR.ParaCount
  end;//for RID <= ..
 finally
  l_Pack := nil; {-закрываем пачку операций}
 end;//try..finally
//#UC END# *4770E4B9039F_48D3D038036A_impl*
end;//TevTableImplementation.InsertColumns

procedure TevTableImplementation.DeleteRow;
//#UC START# *4770E4C80145_48D3D038036A_var*
var
 l_Pack     : InevOp;
 l_Point    : InevBasePoint;
 l_Row      : InevPara;
 l_NextRow  : InevPara;
 l_ParaList : InevTag;
//#UC END# *4770E4C80145_48D3D038036A_var*
begin
//#UC START# *4770E4C80145_48D3D038036A_impl*
 l_Pack := Processor.StartOp(ev_ocDeleteRow);
 try
  l_Point := f_Loc.MostInner;
  while (l_Point <> nil) do
  begin
   if l_Point.Obj.InheritsFrom(k2_idTableRow) then
   begin
    if (l_Point.ParentPoint <> nil) then
    begin
     l_Row := l_Point.Obj^.AsPara;
     l_Point := l_Point.ParentPoint;
     repeat
      l_ParaList := l_Point.Obj^;
      l_NextRow := l_Row.Next;
      l_Row := l_Row.Prev;
      if (l_NextRow <> nil) and l_NextRow.IsValid then
       CheckRow(l_NextRow, l_Pack);
      evDeletePara(l_Pack, l_Point, []);
      if (l_Row <> nil) and l_Row.IsValid then
       l_Row.Invalidate([nev_spCellExtent]);
      if (l_ParaList.ChildrenCount > 0) then
      begin
       l_Point.SetEntryPoint(l_Point.Position, l_Pack);
       if l_Point.HasInner then
        l_Point.Inner.Move(View, ev_ocTopLeft, l_Pack);
      end;
      if (l_Point.ParentPoint <> nil) then
       l_Point := l_Point.ParentPoint
      else
       Break;
     until (l_ParaList.ChildrenCount > 0);
    end;{CC.Parent Is _TevParaCursor}
    Break;
   end//l_Point.Obj.InheritsFrom(k2_idTableRow)
   else
    l_Point := l_Point.ParentPoint;
  end;//while l_Point <> nil
 finally
  l_Pack := nil;
 end;//try..finally
//#UC END# *4770E4C80145_48D3D038036A_impl*
end;//TevTableImplementation.DeleteRow

procedure TevTableImplementation.DeleteColumn;
//#UC START# *4770E4EB0338_48D3D038036A_var*
var
 OC           : InevBasePoint;
 RowCursor    : InevBasePoint;
 TableCursor  : InevBasePoint;
 l_TableIndex : Integer;
 CID          : Integer;
 RID          : Integer;
 TR           : InevPara;
 T            : InevParaList;
 Pack         : InevOp;
 l_DelCursor  : InevBasePoint;
//#UC END# *4770E4EB0338_48D3D038036A_var*
begin
//#UC START# *4770E4EB0338_48D3D038036A_impl*
 Pack := Processor.StartOp(ev_ocDeleteColumn);
 try
  OC := f_Loc.MostInner;
  while (OC <> nil) do
  begin
   if OC.Obj.InheritsFrom(k2_idTableCell) then
   begin
    if (OC.ParentPoint <> nil) then
    begin
     OC := OC.ParentPoint;
     if (OC.ParentPoint <> nil) then
     begin
      RowCursor := OC.ParentPoint;
      if (RowCursor.ParentPoint <> nil) then
      begin
       TableCursor := RowCursor.ParentPoint;
       l_TableIndex := TableCursor.Position;
      end else
       break;
     end else
      break;
     CID := OC.Position;
     T := RowCursor.Obj.AsPara.AsList;
     RID := 1;
     while (RID <= T.ChildrenCount) do
     begin
      TR := T[Pred(RID)];
      if (CID <= TR.ChildrenCount) then
      begin
       if (RID = 1) AND (CID = 1) then
        RowCursor.SetEntryPoint(Succ(RID), Pack);
       l_DelCursor := TR.MakePoint;
       try
        l_DelCursor.SetEntryPoint(CID);
        evDeletePara(Pack, l_DelCursor, []);
       finally
        l_DelCursor := nil;
       end;{try..finally}
       if (TR.ChildrenCount = 0) then
       begin
        l_DelCursor := T.MakePoint;
        try
         l_DelCursor.SetEntryPoint(RID);
         evDeletePara(Pack, l_DelCursor, []);
        finally
         l_DelCursor := nil;
        end;//try..finally
        if (T.ChildrenCount = 0) then
        begin
         if (TableCursor <> nil) then
         begin
          repeat
           TableCursor.SetEntryPoint(l_TableIndex, Pack);
           l_DelCursor := TableCursor;
           if (TableCursor.ParentPoint <> nil) then
           begin
            TableCursor := TableCursor.ParentPoint;
            l_TableIndex := TableCursor.Position;
           end//TableCursor.ParentPoint <> nil
           else
            TableCursor := nil;
           evDeletePara(Pack, l_DelCursor, []);
           if (l_DelCursor.Obj.ChildrenCount > 0) then
           begin
            l_DelCursor.SetEntryPoint(l_DelCursor.Position, Pack);
            l_DelCursor.Inner.Move(View, ev_ocTopLeft, Pack);
            Exit;
           end;{TableCursor.Obj.ChildrenCount > 0}
          until (TableCursor = nil);
         end;{TableCursor <> nil}
         Exit;
        end//T.ChildrenCount = 0
        else
        if (RowCursor.Position = RID) then
        begin
         RowCursor.SetEntryPoint(RID, Pack);
         if RowCursor.HasInner then
          RowCursor.Inner.Move(View, ev_ocTopLeft, Pack);
        end;{T.ParaCount = 0}
       end
       else
       begin
        if (RowCursor.Position = RID) then
        begin
         OC.SetEntryPoint(Min(TR.ChildrenCount, CID), Pack);
         if OC.HasInner then
          OC.Inner.Move(View, ev_ocTopLeft, Pack);
        end;//RID =..
        Inc(RID);
       end;//TR.ChildrenCount = 0
      end//CID <= TR.ChildrenCount
      else
       Inc(RID);
     end;{while RID <= ..}
     with RowCursor do
      if GetRedirect.IsSame(T) AND (Position > T.ChildrenCount) then
       RowCursor.Move(View, ev_ocTopLeft, Pack);
    end;{CC <> nil}
    break;
   end//OC.Obj.InheritsFrom(k2_idTableCell)
   else
    OC := OC.ParentPoint;
  end;{while (OC <> nil)}
 finally
  Pack := nil;
 end;//try..finally
//#UC END# *4770E4EB0338_48D3D038036A_impl*
end;//TevTableImplementation.DeleteColumn

procedure TevTableImplementation.Cleanup;
//#UC START# *479731C50290_48D3D038036A_var*
//#UC END# *479731C50290_48D3D038036A_var*
begin
//#UC START# *479731C50290_48D3D038036A_impl*
 f_View := nil;
 f_Loc := nil;
 inherited;
//#UC END# *479731C50290_48D3D038036A_impl*
end;//TevTableImplementation.Cleanup

procedure TevTableImplementation.ClearFields;
 {-}
begin
 f_View := nil;
 inherited;
end;//TevTableImplementation.ClearFields

end.