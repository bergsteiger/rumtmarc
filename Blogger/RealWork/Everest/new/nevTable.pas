unit nevTable;

{ Библиотека "Эверест"    }
{ Начал: Люлин А.В.       }
{ Модуль: nevTable -      }
{ Начат: 09.04.2005 16:45 }
{ $Id: nevTable.pas,v 1.29 2012/03/23 10:39:52 dinishev Exp $ }

// $Log: nevTable.pas,v $
// Revision 1.29  2012/03/23 10:39:52  dinishev
// {Requestlink:349116229}
//
// Revision 1.28  2012/03/22 13:18:43  dinishev
// {Requestlink:349116289}
//
// Revision 1.27  2009/07/29 16:17:08  lulin
// - правильнее обрабатываем ячейки без рамок.
// - не трогаем стиль параграфов ячеек.
//
// Revision 1.26  2009/07/23 13:42:19  lulin
// - переносим процессор операций туда куда надо.
//
// Revision 1.25  2009/07/15 13:26:04  lulin
// - рамкам таблиц прописываем значение по-умолчанию.
//
// Revision 1.24  2009/07/14 14:56:41  lulin
// {RequestLink:141264340}. №25.
//
// Revision 1.23  2009/07/13 12:31:48  lulin
// {RequestLink:141264340}. №23ac.
//
// Revision 1.22  2009/07/11 17:11:08  lulin
// {RequestLink:141264340}. №19.
//
// Revision 1.21  2009/07/11 15:55:17  lulin
// {RequestLink:141264340}. №22.
//
// Revision 1.20  2009/07/11 09:24:50  lulin
// - избавляемся от лишнего дёрганья счётчиков ссылок.
//
// Revision 1.19  2009/07/10 16:15:46  lulin
// - избавляемся от лишнего дёрганья счётчиков ссылок.
//
// Revision 1.18  2009/07/06 13:32:08  lulin
// - возвращаемся от интерфейсов к объектам.
//
// Revision 1.17  2009/04/16 15:55:30  lulin
// [$143396720]. №5. Убираем доступ к ненужному свойству.
//
// Revision 1.16  2009/04/15 11:14:08  lulin
// [$143396720]. Убираем лишний параметр из конструкторов и фабричных методов.
//
// Revision 1.15  2009/04/09 14:12:46  lulin
// [$140837386]. №15.
//
// Revision 1.14  2009/03/31 12:04:41  lulin
// [$140286997].
//
// Revision 1.13  2009/03/04 13:32:57  lulin
// - <K>: 137470629. Генерируем идентификаторы типов с модели и убираем их из общей помойки.
//
// Revision 1.12  2008/06/25 14:47:53  lulin
// - сделана возможность использовать предопределённые значения для рамок.
//
// Revision 1.11  2008/06/20 14:49:04  lulin
// - используем префиксы элементов.
//
// Revision 1.10  2008/05/30 14:57:45  lulin
// - <K>: 93258461.
//
// Revision 1.9  2008/04/17 12:58:31  lulin
// - избавились от приведения интерфейсов.
//
// Revision 1.8  2008/04/17 12:02:50  lulin
// - вычищен ненужный код.
//
// Revision 1.7  2008/04/15 08:23:54  lulin
// - передаём вью в качестве параметра.
//
// Revision 1.6  2008/04/14 13:46:44  lulin
// - <K>: 89096854.
//
// Revision 1.5  2008/04/09 17:57:18  lulin
// - передаём вью в рамках <K>: 89096854.
//
// Revision 1.4  2008/03/03 13:20:30  lulin
// - nevTools перенесён на модель. Теперь всё компилируется.
//
// Revision 1.3  2007/12/04 12:47:52  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.1.4.8  2007/12/03 11:43:23  lulin
// - убрано ненужное укладывание константных данных в Undo-буфер.
//
// Revision 1.1.4.7  2007/11/29 11:38:38  dinishev
// Используем единую пачку операций при вставке таблицы
//
// Revision 1.1.4.6  2007/11/28 15:53:49  dinishev
// Методы для работы с таблицей
//
// Revision 1.1.4.5  2006/07/21 11:54:45  lulin
// - имя метода убрано из комментариев - чтобы не находилось контекстным поиском.
//
// Revision 1.1.4.4  2006/01/23 17:31:57  lulin
// - bug fix: избавляемся от паразитного горизонтального скроллера в КЗ.
//
// Revision 1.1.4.3  2005/11/01 12:30:52  lulin
// - используем полиморфизм для избавления от инструкций выбора.
//
// Revision 1.1.4.2  2005/08/23 16:25:16  lulin
// - bug fix: исправлена "резиновость" SBS.
//
// Revision 1.1.4.1  2005/05/18 12:43:00  lulin
// - отвел новую ветку.
//
// Revision 1.1.2.1  2005/04/12 10:18:47  lulin
// - новые файлы переехали в новый каталог.
//
// Revision 1.1.2.4  2005/04/11 07:46:38  lulin
// - метод сделан статическим - во избежании злоупотреблений с его перекрытием.
//
// Revision 1.1.2.3  2005/04/10 17:38:20  lulin
// - для несформатированных парарафов вычисляем смещение рекурсивно исходя из информации о предыдущих.
//
// Revision 1.1.2.2  2005/04/10 16:02:35  lulin
// - new method: _InevShape._MoveTo.
//
// Revision 1.1.2.1  2005/04/10 13:01:01  lulin
// - new unit: nevTable.
//

{$Include nevDefine.inc }

interface

uses
  l3Types,
  l3Interfaces,  

  nevTools,
  nevParaList
  ;

type
  TnevTable = class(TnevParaList, InevTable)
  protected
   // interface methods
   // - InevTable
   procedure InsertRows(const aPoint : InevPoint; 
                        aNumRows     : Integer; 
                        anAtEnd      : Boolean);
     {-}
   procedure InsertColumns(const aPoint : InevPoint; 
                           aNumColumns  : Integer);
     {-}
   procedure DeleteRow(const aPoint : InevPoint);
     {-}
   procedure DeleteColumn(const aPoint : InevPoint);
     {-}
   procedure AddRow(const anOp   : InevOp;
                    aColCount    : Long;
                    aColumnWidth : Long;
                    aFramed      : Bool);
     {-}          
    public
    // public methods
      class function Make(const aTag       : InevTag): InevTable;
        reintroduce;
        {-}
  end;//TnevTable

implementation

uses
  SysUtils,

  k2Base,
  k2Tags,
  k2Interfaces,

  l3Units,
  l3MinMax,

  evdFrame_Const,

  nevBase,
  nevFacade,
  
  evOp,
  evDef,
  evdStyles,
  evParaTools,
  evCursorTools,

  TableCell_Const,
  TableRow_Const
  ;       

// start class TnevTable

{ TnevTable }

class function TnevTable.Make(const aTag       : InevTag): InevTable;
  //reintroduce;
  //virtual;
  {-}
var
 l_List : TnevTable;
begin
 l_List := Create(aTag);
 try
  Result := l_List;
 finally
  FreeAndNil(l_List);
 end;//try..finally
end;

procedure TnevTable.AddRow(const anOp   : InevOp;
                           aColCount    : Long;
                           aColumnWidth : Long;
                           aFramed      : Bool);
var
 i         : Long;
 l_NewRow  : Ik2Tag;
 l_NewCell : Ik2Tag;
 l_NewPara : Ik2Tag;
begin
 l_NewRow := Tk2Type(GetRedirect.TagType).ArrayProp[k2_tiChildren].DefaultChildType.MakeTag;
 try
  for i := 1 to aColCount do 
  begin
   with l_NewRow do 
   begin
    l_NewCell := Tk2Type(l_NewRow.TagType).ArrayProp[k2_tiChildren].DefaultChildType.MakeTag;
    try
     if aFramed then
     begin
(*      {$IfNDef Archi}*)
      l_NewCell.IntA[k2_tiFrame] := evd_fvSolid;
(*      {$Else  Archi}
      with l_NewCell.cAtom(k2_tiFrame) do
      begin
       cAtom(k2_tiFrameUp);
       cAtom(k2_tiFrameDown);
       cAtom(k2_tiFrameLeft);
       cAtom(k2_tiFrameRight);
      end;//with l_NewCell.cAtom(k2_tiFrame)
      {$EndIf Archi}*)
     end{aFramed}
     else
      l_NewCell.IntA[k2_tiFrame] := evd_fvEmpty;
     l_NewPara := Tk2Type(l_NewCell.TagType).ArrayProp[k2_tiChildren].DefaultChildType.MakeTag;
     try
      //l_NewPara.IntA[k2_tiStyle] := ev_saNormalTable;
      with l_NewCell do 
      begin
       IntA[k2_tiWidth] := aColumnWidth;
       AddChild(l_NewPara);
      end;{with l_NewCell}
     finally
      l_NewPara := nil;
     end;{try..finally}
     IntA[k2_tiWidth] := IntA[k2_tiWidth] + l_NewCell.IntA[k2_tiWidth];
     AddChild(l_NewCell);
    finally
     l_NewCell := nil;
    end;{try..finally}
   end;{with l_NewRow}
  end;{for i}
  GetRedirect.AddChild(l_NewRow, anOp);
 finally
  l_NewRow := nil;
 end;//try..finally
end;

procedure TnevTable.DeleteColumn(const aPoint : InevPoint);
var
 l_ColumnPoint : InevBasePoint;
 l_RowCursor   : InevBasePoint;
 l_TableCursor : InevBasePoint;
 l_TableIndex  : Long;
 l_ColumnID    : Long;
 l_RowID       : Long;
 l_CellPara    : InevPara;
 l_RowPara     : InevParaList;
 l_Pack        : InevOp;
 l_DelCursor   : InevBasePoint;
begin
 l_Pack := pm_GetDocumentContainer.Processor.StartOp(ev_ocDeleteColumn);
 try
  l_ColumnPoint := aPoint.MostInner;
  while (l_ColumnPoint <> nil) do
  begin
   if l_ColumnPoint.Obj.InheritsFrom(k2_idTableCell) then
   begin
    if (l_ColumnPoint.ParentPoint <> nil) then
    begin
     l_ColumnPoint := l_ColumnPoint.ParentPoint;
     if (l_ColumnPoint.ParentPoint <> nil) then
     begin
      l_RowCursor := l_ColumnPoint.ParentPoint;
      if (l_RowCursor.ParentPoint <> nil) then
      begin
       l_TableCursor := l_RowCursor.ParentPoint;
       l_TableIndex := l_TableCursor.Position;
      end 
      else
       Break;
     end 
     else
      Break;
     l_ColumnID := l_ColumnPoint.Position;
     l_RowPara := l_RowCursor.Obj.AsPara.AsList;
     l_RowID := 1;
     while (l_RowID <= l_RowPara.ChildrenCount) do
     begin
      l_CellPara := l_RowPara[l_RowID - 1];
      if (l_ColumnID <= l_CellPara.ChildrenCount) then
      begin
       if (l_RowID = 1) AND (l_ColumnID = 1) then
        l_RowCursor.SetEntryPoint(l_RowID + 1, l_Pack);
       l_DelCursor := l_CellPara.MakePoint;
       try
        l_DelCursor.SetEntryPoint(l_ColumnID);
        evDeletePara(l_Pack, l_DelCursor, []);
       finally
        l_DelCursor := nil;
       end;{try..finally}
       if (l_CellPara.ChildrenCount = 0) then
       begin
        l_DelCursor := l_RowPara.MakePoint;
        try
         l_DelCursor.SetEntryPoint(l_RowID);
         evDeletePara(l_Pack, l_DelCursor, []);
        finally
         l_DelCursor := nil;
        end;//try..finally
        if (l_RowPara.ChildrenCount = 0) then
        begin
         if (l_TableCursor <> nil) then
         begin
          repeat
           l_TableCursor.SetEntryPoint(l_TableIndex, l_Pack);
           l_DelCursor := l_TableCursor;
           if (l_TableCursor.ParentPoint <> nil) then
           begin
            l_TableCursor := l_TableCursor.ParentPoint;
            l_TableIndex := l_TableCursor.Position;
           end//l_TableCursor.ParentPoint <> nil
           else
            l_TableCursor := nil;
           evDeletePara(l_Pack, l_DelCursor, []);
           if (l_DelCursor.Obj.ChildrenCount > 0) then
           begin
            l_DelCursor.SetEntryPoint(l_DelCursor.Position, l_Pack);
            l_DelCursor.Inner.Move(nil, ev_ocTopLeft, l_Pack);
            Exit;
           end;{l_DelCursor.Obj.ChildrenCount > 0}
          until (l_TableCursor = nil);
         end;{l_TableCursor <> nil}
         Exit;
        end//l_RowPara.ChildrenCount = 0
        else
        if (l_RowCursor.Position = l_RowID) then
        begin
         l_RowCursor.SetEntryPoint(l_RowID, l_Pack);
         l_RowCursor.Inner.Move(nil, ev_ocTopLeft, l_Pack);
        end;{l_RowPara.ParaCount = 0}
       end
       else
       begin
        if (l_RowCursor.Position = l_RowID) then
        begin
         l_ColumnPoint.SetEntryPoint(Min(l_CellPara.ChildrenCount, l_ColumnID), l_Pack);
         l_ColumnPoint.Inner.Move(nil, ev_ocTopLeft, l_Pack);
        end;//l_RowID =..
        Inc(l_RowID);
       end;//l_CellPara.ChildrenCount = 0
      end//l_ColumnID <= l_CellPara.ChildrenCount
      else
       Inc(l_RowID);
     end;{while l_RowID <= ..}
     with l_RowCursor do
      if GetRedirect.IsSame(l_RowPara) AND (Position > l_RowPara.ChildrenCount) then
       l_RowCursor.Move(nil, ev_ocTopLeft, l_Pack);
    end;{CC <> nil}
    Break;
   end//l_ColumnPoint.Obj.InheritsFrom(k2_idTableCell)
   else
    l_ColumnPoint := l_ColumnPoint.ParentPoint;
  end;{while (l_ColumnPoint <> nil)}
 finally
  l_Pack := nil;
 end;//try..finally
end;

procedure TnevTable.DeleteRow(const aPoint : InevPoint);
var
 l_RowPoint : InevBasePoint;
 l_Pack     : InevOp;
 l_ParaList : Ik2Tag;
begin
 l_Pack := pm_GetDocumentContainer.Processor.StartOp(ev_ocDeleteRow);
 try
  l_RowPoint := aPoint.MostInner;
  while (l_RowPoint <> nil) do
  begin
   if l_RowPoint.Obj.InheritsFrom(k2_idTableRow) then
   begin
    if (l_RowPoint.ParentPoint <> nil) then
    begin
     l_RowPoint := l_RowPoint.ParentPoint;
     repeat
      l_ParaList := l_RowPoint.Obj^;
      evDeletePara(l_Pack, l_RowPoint, []);
      if (l_ParaList.ChildrenCount > 0) then
      begin
       l_RowPoint.SetEntryPoint(l_RowPoint.Position, l_Pack);
       if l_RowPoint.HasInner then
        l_RowPoint.Inner.Move(nil, ev_ocTopLeft, l_Pack);
      end;
      if (l_RowPoint.ParentPoint <> nil) then
       l_RowPoint := l_RowPoint.ParentPoint
      else
       Break;
     until (l_ParaList.ChildrenCount > 0);
    end;{CC.Parent Is TevParaCursor}
    Break;
   end//l_RowPoint.Obj.InheritsFrom(k2_idTableRow)
   else
    l_RowPoint := l_RowPoint.ParentPoint;
  end;//while l_RowPoint <> nil
 finally
  l_Pack := nil;
 end;//try..finally
end;

procedure TnevTable.InsertColumns(const aPoint : InevPoint;
                                  aNumColumns  : Integer);
var
 l_Pack        : InevOp;        {* - Пачка операций. }
 l_TablePoint  : InevPoint;
 l_ColumnID    : Long;
 l_RowID       : Long;
 l_TableColumn : InevPara;
 l_TableRow    : InevParaList;
 l_Table       : InevParaList;
 l_RowCursor   : InevPoint;
 l_NumColumns  : Long;
begin
 l_TablePoint := aPoint;
 l_Pack := pm_GetDocumentContainer.Processor.StartOp(ev_ocInsertColumn);
 {* - Открываем пачку операций. }
 try
  l_ColumnID := l_TablePoint.Inner.Position;
  l_Table := Self;
  for l_RowID := 0 to l_Table.ParaCount - 1 do
  begin
   l_TableRow := l_Table[l_RowID].AsList;
   if (l_ColumnID <= l_TableRow.ParaCount) then
   begin
    l_TableColumn := l_TableRow[l_ColumnID - 1].CloneObj.AsPara;
    try
     evClearPara(nil, l_TableColumn, nil);
     l_RowCursor := l_TableRow.MakePoint;
     try
      l_RowCursor.SetEntryPoint(l_ColumnID);
      l_NumColumns := aNumColumns;
      while (l_NumColumns > 0) do
      begin
       evInsertPara(l_Pack, l_RowCursor, l_TableColumn, []);
       Dec(l_NumColumns);
       if (l_NumColumns > 0) then
        l_TableColumn := l_TableColumn.CloneObj.AsPara;
      end;//while l_NumColumns > 0
     finally
      l_RowCursor := nil;
     end;//try..finally
    finally
     l_TableColumn := nil;
    end;//try.finally
   end;//l_ColumnID <= l_TableRow.ParaCount
  end;//for l_RowID <= ..
 finally
  l_Pack := nil; {* - Закрываем пачку операций. }
 end;//try..finally
end;

procedure TnevTable.InsertRows(const aPoint : InevPoint; 
                               aNumRows     : Integer; 
                               anAtEnd      : Boolean);
var
 l_Row        : InevObject;
 l_Pack       : InevOp;  {* - Пачка операций. }
 l_TablePoint : InevPoint;
begin
 l_TablePoint := aPoint;
 l_Pack := pm_GetDocumentContainer.Processor.StartOp(ev_ocInsertRow);
 {* - Открываем пачку операций. }
 try
  l_Row := l_TablePoint.Inner.Obj.CloneObj;
  try
   evClearPara(nil, l_Row, nil);
   while (aNumRows > 0) do
   begin
    evInsertPara(l_Pack, l_TablePoint, l_Row, AtEndFromBool[anAtEnd]);
    if anAtEnd then
     l_TablePoint.SetEntryPoint(l_TablePoint.Position + 1, l_Pack)
    else
     l_TablePoint.SetEntryPoint(l_TablePoint.Position, l_Pack);
    Dec(aNumRows);
    if (aNumRows > 0) then
     l_Row := l_Row.CloneObj;
   end;//aNumRows > 0
   with l_TablePoint.Inner do
   begin
    SetEntryPoint(1, l_Pack);
    Inner.Move(nil, ev_ocTopLeft, l_Pack);
   end;//with l_TablePoint.Inner
  finally
   l_Row := nil;
  end;//try..finally
 finally
  l_Pack := nil; {* - Закрываем пачку операций. }
 end;//try..finally
end;

end.

