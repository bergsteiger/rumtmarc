unit evParaUtilClasses;

{ Библиотека "Эверест"    }
{ Начал: Люлин А.В.       }
{ Модуль: evParaUtilClasses - }
{ Начат: 02.09.2008 18:12 }
{ $Id: evParaUtilClasses.pas,v 1.102 2013/04/04 11:18:51 lulin Exp $ }

// $Log: evParaUtilClasses.pas,v $
// Revision 1.102  2013/04/04 11:18:51  lulin
// - портируем.
//
// Revision 1.101  2013/02/13 14:32:07  dinishev
// {Requestlink:425040715}
//
// Revision 1.100  2013/02/01 12:00:45  dinishev
// {Requestlink:425263512}
//
// Revision 1.99  2013/02/01 10:12:38  dinishev
// {Requestlink:425263512}
//
// Revision 1.98  2012/12/28 11:18:30  dinishev
// {Requestlink:421111320}
//
// Revision 1.97  2012/12/27 06:49:17  dinishev
// Удаляем ненужный метод.
//
// Revision 1.96  2012/11/02 14:01:14  dinishev
// {Requestlink:407150049}
//
// Revision 1.95  2012/10/04 09:16:29  dinishev
// Не все тесты исправил.
//
// Revision 1.94  2012/10/03 13:44:26  dinishev
// Bug fix: отъехали тесты.
//
// Revision 1.93  2012/10/03 11:18:01  dinishev
// Cleanup
//
// Revision 1.92  2012/10/03 11:14:32  dinishev
// {Requestlink:395659375}
//
// Revision 1.91  2012/10/03 10:03:18  dinishev
// Cleanup
//
// Revision 1.90  2012/10/03 09:54:08  dinishev
// Cleanup
//
// Revision 1.88  2012/10/03 09:44:41  dinishev
// Cleanup
//
// Revision 1.87  2012/10/03 07:20:36  dinishev
// {Requestlink:395654924}
//
// Revision 1.86  2012/10/02 10:37:25  dinishev
// {Requestlink:395658761}. Убираем костыли.
//
// Revision 1.85  2012/09/18 08:09:40  dinishev
// {Requestlink:395647218}
//
// Revision 1.84  2012/09/06 14:33:10  dinishev
// {Requestlink:390585154}
//
// Revision 1.83  2012/08/16 12:43:46  dinishev
// Cleanup
//
// Revision 1.82  2012/08/16 12:42:09  dinishev
// {Requestlink:382408117}
//                                                     
// Revision 1.81  2012/06/05 14:57:52  dinishev
// {Requestlink:370383707}
//
// Revision 1.80  2012/05/31 14:24:02  dinishev
// {Requestlink:365824453}
//
// Revision 1.79  2012/05/31 09:43:07  dinishev
// {Requestlink:365824453}
//
// Revision 1.78  2012/05/31 09:14:11  dinishev
// {Requestlink:365824453}
//
// Revision 1.77  2012/05/29 11:09:48  dinishev
// {Requestlink:365824453}
//
// Revision 1.76  2012/05/29 07:05:42  dinishev
// Cleanup
//
// Revision 1.75  2012/05/05 10:25:26  dinishev
// {Requestlink:362973200}
//
// Revision 1.74  2012/03/26 07:45:20  dinishev
// Remove compiler warning
//
// Revision 1.73  2012/03/26 07:26:27  dinishev
// {Requestlink:347636412}
//
// Revision 1.72  2012/03/23 10:41:29  dinishev
// {Requestlink:349116229}
//
// Revision 1.71  2012/03/22 09:14:24  dinishev
// {Requestlink:349116289}
//
// Revision 1.70  2012/02/27 11:23:06  dinishev
// {Requestlink:341838531}
//
// Revision 1.69  2012/02/09 06:33:00  dinishev
// {Requestlink:336659951}
//
// Revision 1.68  2012/02/03 11:38:30  dinishev
// {Requestlink:333550210}
//
// Revision 1.67  2012/01/27 11:28:42  dinishev
// {Requestlink:330704233}
//
// Revision 1.66  2012/01/25 12:56:48  dinishev
// {Requestlink:330140470}
//
// Revision 1.65  2011/07/05 10:43:06  dinishev
// [$272662869]. Bug fix: отъехал тест - проверка подвисшей ячейки проводилась до изменения её ширины.
//
// Revision 1.64  2011/07/05 07:50:18  dinishev
// [$272662869]
//
// Revision 1.63  2011/07/04 12:38:24  dinishev
// [$272662869]
//
// Revision 1.62  2011/07/01 15:39:46  dinishev
// [$271754584]
//
// Revision 1.61  2011/07/01 14:31:43  dinishev
// [$271754584]
//
// Revision 1.60  2011/05/11 06:48:51  dinishev
// [$265411837]
//
// Revision 1.59  2011/02/24 12:54:31  dinishev
// [$253663257]
//
// Revision 1.58  2011/02/18 12:11:56  lulin
// - расширяем заготовочку для Валентина.
//
// Revision 1.57  2011/02/17 13:19:27  dinishev
// [$253663257]
//
// Revision 1.56  2011/02/15 14:07:35  dinishev
// [$253668263]. Откатываем [$114459496]
//
// Revision 1.55  2011/02/10 09:44:42  dinishev
// [$253664689]
//
// Revision 1.54  2011/02/09 11:15:35  dinishev
// Cleanup
//
// Revision 1.53  2010/12/10 12:31:25  lulin
// - bug fix: не собирались с директивой _nsTool.                                          
//
// Revision 1.52  2010/11/16 08:50:22  dinishev
// [$234357754]
//
// Revision 1.51  2010/10/27 14:07:37  dinishev
// [$237503768]
//
// Revision 1.50  2010/08/19 10:32:05  dinishev
// Cleanup. Делаем код исправления и в ветке и в Head'е похожим.
//
// Revision 1.49  2010/08/19 10:16:26  dinishev
// [$233015524]
//
// Revision 1.48  2010/07/13 07:09:26  dinishev
// [$224791621]
//
// Revision 1.47  2010/07/10 10:59:59  dinishev
// [$200902351]
//
// Revision 1.46  2010/07/07 12:40:08  dinishev
// [$224133899]
//
// Revision 1.45  2010/07/07 10:15:27  dinishev
// Cleanup
//
// Revision 1.44  2010/06/11 15:19:40  dinishev
// [$216530981]. И все-таки Assert не работал.
//
// Revision 1.43  2010/06/11 11:09:04  dinishev
// [$216530981]
//
// Revision 1.42  2010/06/11 10:39:18  dinishev
// Добавил Assert
//
// Revision 1.41  2010/05/27 06:01:08  dinishev
// [$210436129]
//
// Revision 1.40  2010/05/26 14:11:16  dinishev
// [$210436129]
//
// Revision 1.39  2010/05/26 10:30:18  dinishev
// [$210436129]
//
// Revision 1.38  2010/05/26 07:35:21  dinishev
// Cleanup
//
// Revision 1.37  2010/05/26 07:34:39  dinishev
// [$210436129]
//
// Revision 1.36  2010/04/26 14:06:37  lulin
// {RequestLink:201491442}.
//
// Revision 1.35  2010/04/09 16:02:37  lulin
// {RequestLink:201493388}.
//
// Revision 1.34  2010/04/07 17:35:51  lulin
// {RequestLink:201491473}.
//
// Revision 1.33  2010/04/06 13:53:51  fireton
// - редактируем размер шрифта при печати
//
// Revision 1.32  2010/02/26 11:33:55  dinishev
// [$192645663]. Несовместимый код.
//
// Revision 1.31  2010/02/26 09:46:13  dinishev               
// [$192645663]
//
// Revision 1.30  2010/02/17 10:42:57  dinishev
// [$189268714]
//
// Revision 1.29  2009/11/19 12:05:13  dinishev
// [$171968600]
//
// Revision 1.28  2009/07/23 13:42:11  lulin
// - переносим процессор операций туда куда надо.
//
// Revision 1.27  2009/07/23 08:14:39  lulin
// - вычищаем ненужное использование процессора операций.
//
// Revision 1.26  2009/07/17 10:31:39  dinishev
// Bug fix: не всегда правильно разделялись ячейки по вертикали
//
// Revision 1.25  2009/07/14 14:56:27  lulin
// {RequestLink:141264340}. №25.
//
// Revision 1.24  2009/07/13 12:31:36  lulin
// {RequestLink:141264340}. №23ac.
//
// Revision 1.23  2009/07/11 17:11:05  lulin
// {RequestLink:141264340}. №19.
//
// Revision 1.22  2009/07/11 15:55:09  lulin
// {RequestLink:141264340}. №22.
//
// Revision 1.21  2009/07/11 09:24:42  lulin
// - избавляемся от лишнего дёрганья счётчиков ссылок.
//
// Revision 1.20  2009/07/06 13:32:06  lulin
// - возвращаемся от интерфейсов к объектам.
//
// Revision 1.19  2009/04/14 18:11:55  lulin
// [$143396720]. Подготовительная работа.
//
// Revision 1.18  2009/04/09 14:12:37  lulin
// [$140837386]. №15.
//
// Revision 1.17  2009/04/09 10:08:57  lulin
// [$140837386]. №14.
//
// Revision 1.16  2009/04/07 16:09:41  lulin
// [$140837386]. №13.
//
// Revision 1.15  2009/04/07 15:04:58  lulin
// [$140837386]. №1.
//
// Revision 1.14  2009/04/07 05:39:59  dinishev
// <K> : 142246046
//
// Revision 1.13  2009/04/06 17:51:26  lulin
// [$140837386]. №11.
//
// Revision 1.12  2009/03/31 12:04:36  lulin
// [$140286997].
//
// Revision 1.11  2009/03/05 16:46:32  lulin
// - <K>: 137470629. Убран ненужный интерфейс.
//
// Revision 1.10  2009/03/04 18:14:14  lulin
// - <K>: 137470629. Удалён ненужный интерфейс.
//
// Revision 1.9  2009/03/04 13:32:46  lulin
// - <K>: 137470629. Генерируем идентификаторы типов с модели и убираем их из общей помойки.
//
// Revision 1.8  2009/02/04 15:19:34  dinishev
// <K> : 114459496
//
// Revision 1.7  2008/12/12 15:34:20  lulin
// - <K>: 129762414.
//
// Revision 1.6  2008/12/12 12:43:24  dinishev
// Bug fix: иногда неправильно объединялись ячейки
//
// Revision 1.5  2008/12/01 12:32:52  dinishev
// <K> : 121156026 - дорабатываем разделение ячеек
//
// Revision 1.4  2008/11/18 06:58:15  dinishev
// <K> : 122672275
//
// Revision 1.3  2008/10/27 06:55:52  dinishev
// <K>: 121156026
//
// Revision 1.2  2008/10/02 16:52:41  lulin
// - чистка кода.
//
// Revision 1.1  2008/10/02 14:45:08  lulin
// - распиливаем на два файла.
//

{$Include evDefine.inc }

interface

{$IfDef evNeedEditableCursors}
uses
  l3Interfaces,
  l3Types,

  k2Interfaces,
  k2TagTools,
  k2Base,
  k2BaseIntf,

  evdTypes,

  nevTools,

  evEditorInterfaces,
  evCustomParaListUtils
  ;
{$EndIf evNeedEditableCursors}

{$IfDef evNeedEditableCursors}
type
  TevParagraphPart = class(Tl3ProcessorTool, IedParagraph)
   {* Реализация IedParagraph для куска параграфа. }
    private
    //internal fields
      f_Block : InevRange;
      f_View  : InevView;
    protected
    //property methods
      // IedParagraph
      function  Get_Frame: IedFrame;
        virtual;
      procedure Set_Frame(const Value: IedFrame);
        virtual;
        {-}
    protected
    //internal methods
      procedure Cleanup;
        override;
        {-}
    public
    //public methods
      constructor Create(const aView : InevView;
                         const aProcessor : InevProcessor;
                         const aBlock     : InevRange);
        reintroduce;
        {-}
    protected
    //internal properties
      property Block: InevRange
        read f_Block;
        {-}
      property View: InevView
        read f_View;
  end;//TevParagraphPart

  TevLeafParagraph = class(TevParagraphPart, IedLeafParagraph, IedStyle)
   {* Реализация листьевого параграфа для выделения. }
    protected
    //property methods
      // IedLeafParagraph
      function  pm_GetStyle: IedStyle;
        {-}
      // IedStyle
      function  pm_GetStyles: Il3Strings;
        {-}
      function  pm_GetID: Integer;
      procedure pm_SetID(Value: Integer);
        {-}
      function  pm_GetName: AnsiString;
        reintroduce;
      procedure pm_SetName(const Value: AnsiString);
        {-}
      function pm_GetPrintFontSize: Integer;
        {-}
      procedure pm_SetPrintFontSize(aValue: Integer);
        {-}
    protected
    //internal methods
      function  StyleType: Tk2Type;
        {-}
      procedure SetStyleParam(Index: Integer; const Source: InevTag);
        {-}
    public
    //public methods
      class function Make(const aView : InevView;
                          const aProcessor : InevProcessor;
                          const aBlock     : InevRange): IedLeafParagraph;
        reintroduce;
        {-}
  end;//TevLeafParagraph

  TevParagraphPack = class(TevParagraphPart)
   {* Реализация IedParagraph для пачки параграфов. }
    protected
    {property methods}
      function  Get_Frame: IedFrame;
        override;
        {-}
  end;{TevParagraphPack}

  TevRowsIterator = class(TevTableChild, IedRowsIterator)
    private
    // internal fields
      f_StartRow : Integer;
      f_First    : Integer;
    protected
    // interface methods
      // IedRowsIterator
      function First: IedRow;
        {* - Возвращает первую строку и начинает перебор. }
      function Next: IedRow;
        {* - Возвращает следующую строку или nil, если перебор закончен. }
    public
    // public methods
      constructor Create(const aView : InevView;
                         const aTable      : IedTable;
                         const aTagWrap    : InevTag;
                         const aProcessor  : InevProcessor;
                         const aStartRow   : Integer;
                         const aLocation   : InevLocation = nil);
        reintroduce;
        {-}
      class function Make(const aView : InevView;
                          const aTable      : IedTable;
                          const aTagWrap    : InevTag;
                          const aProcessor  : InevProcessor;
                          const aStartRow   : Integer;
                          const aLocation   : InevLocation = nil): IedRowsIterator;
        reintroduce;
        {-}
  end;//TevRowsIterator

  TevTable = class(TevLocationProcessorTagTool, IedTable, IedCells)
   {* - Реализация интерфейсов IedCell и IedCells для таблицы. }
    private
     // internal methods
      procedure Unselect;
       {-}
      procedure CheckTable(const aCell: InevPara);
       {-}
      function GetOuterTextPara(const aPack: InevOp; const aCell: InevPara): InevPara;
       {-}
      procedure MoveCellText(const aPack: InevOp; const aCell: InevPara; const aTextPara: InevTextModify);
       {-}
      procedure DeleteCell(const aPack: InevOp; const aCell: InevPara);
       {-}
    private
    {property methods}
      // IedTable
      function  Get_Frame: IedFrame;
      procedure Set_Frame(const Value: IedFrame);
        {-}
      function  Get_Cell: IedCell;
        {-}
      function  Get_Cells: IedCells;
        {* - Метод для чтения свойства Cells. }
      function  Get_Column: IedColumn;
        {* - Метод для чтения свойства Column. }
      function  Get_ColumnsIterator: IedColumnsIterator;
        {-}
      function  pm_GetRowsIterator: IedRowsIterator;
        {-}
      // IedCells
      function  IedCells_Get_Frame: IedFrame;
      procedure IedCells_Set_Frame(const Value: IedFrame);
        {-}
      function  IedCells.Get_Frame = IedCells_Get_Frame;
      //procedure IedCells.Set_Frame = IedCells_Set_Frame;
        {-}
      function  pm_GetTable: IedTable;
        {-}
      function  pm_GetTableRange: IevTableRange;
        {-}
      function  pm_GetVerticalAligment: TevVerticalAligment;
        {* - Метод для чтения свойства VerticalAligment. }
      procedure pm_SetVerticalAligment(Value: TevVerticalAligment);
        {* - Метод для записи свойства VerticalAligment. }
      function pm_GetOldNSRC: Boolean;
        {-}
      procedure pm_SetOldNSRC(aValue: Boolean);
        {-}
      function InternalMerge(var aResultCell: InevPara; aMergeAlg : TedMergeAlgorythm = ed_maAll): Boolean;
        {-}
    private
    {interface methods}
      // IedTable
      function InsertRows(NumRows: Integer): Boolean;
        {-}
     function GetTagCell(const aRow: InevTag;
       const aCell: InevPara;
       aTagIndex: LongInt;
       const aLocation: InevLocation;
       anInitNeighbours: Boolean): IedCell;
       {* Времянка до переноса на модель evParaUtilClasses на модель. }
    protected
    {internal methods}
      function  GetRangeIndexes(var aStartRow, aFinishRow, aStartCell, aFinishCell: Integer): Boolean;
        overload;
        {-}
      function  GetRangeIndexes(var theIndexes: TedRangeIndexes): Boolean;
        overload;
        {-}
      function RowCount : Integer;
        {* - возварщает количество строк в таблице. }
      function GetTag: InevTag;
       {-}       
    public
    {public methods}
      // IedTable
      function Split(const anIndicator: InevProgress): Boolean;
        {* - Разделяет таблицу на две, в текущем месте. }
      function IedTable_Merge(const anIndicator: InevProgress): Boolean;
        {* - Объединяет таблицу со следующей. }
      function IedTable.Merge = IedTable_Merge;
        {-}
      function FirstRowID: Integer;
        {* - Возвращает номер первой выделенной строки. }
      function Delete: Boolean;
        {* - Удаляет таблицу. }
      // IedCells
      procedure Translate2Text;
        {-}
      function Merge(aMergeAlg : TedMergeAlgorythm = ed_maAll): Boolean;
        {* - Объединить ячейки в диапазоне. }
  end;{TevTable}
{$EndIf evNeedEditableCursors}

implementation

{$IfDef evNeedEditableCursors}
uses
  SysUtils,

  l3Base,
  l3MinMax,
  l3IID,
  l3Const,
  l3Units,
  l3Chars,
  l3LongintList,

  k2OpMisc,
  k2Tags,
  k2Facade,
  k2Except,
  k2Long_Const,

  evdStyles,

  nevBase,
  nevFacade,

  evRow,
  evCell,
  evCellsIterator,
  evParaListCursorPrim,
  evInternalInterfaces,
  evOp,
  evMsgCode,
  evParaFrame,
  evParaTools,
  evTableTools,
  evTableCellUtils,
  evTableColumn,
  evTableColumnsIterator,
  evCursorTools,
  evStyleInterface,

  TextPara_Const,
  TableCell_Const,
  Table_Const
  ;

function evGetTagCell(const aView : InevView;
                      const aTable     : IedTable;
                      const aRow       : Ik2Tag;
                      const aCell      : InevPara;
                      aTagIndex        : Long;
                      const aProcessor : InevProcessor;
                      const aLocation  : InevLocation;
                      anInitNeighbours : Boolean): IedCell;
var
  l_TagWrap    : Ik2Tag;
  l_Neighbours : TevCellNeighbours;
begin
 with aCell do
  if InheritsFrom(k2_idTableCell) then
  begin
   if anInitNeighbours then
   begin
    if (aTagIndex > 0) then
    begin
     if Supports(aRow.Child[aTagIndex - 1], Ik2Tag, l_TagWrap) then
      l_Neighbours[ed_fpiLeft] := l_TagWrap
     else
      l_Neighbours[ed_fpiLeft] := k2NullTag;
    end//aTagIndex > 0
    else
     l_Neighbours[ed_fpiLeft] := k2NullTag;
    if (aTagIndex < (aRow.ChildrenCount - 1)) then
    begin
     if Supports(aRow.Child[aTagIndex + 1], Ik2Tag, l_TagWrap) then
      l_Neighbours[ed_fpiRight] := l_TagWrap
     else
      l_Neighbours[ed_fpiRight] := k2NullTag;
    end//aTagIndex < (aRow.ChildrenCount - 1)
    else
     l_Neighbours[ed_fpiRight] := k2NullTag;
    l_Neighbours[ed_fpiUp] := evTableGetNeighbour(aView, aCell, ev_npUp);
    l_Neighbours[ed_fpiDown] := evTableGetNeighbour(aView, aCell, ev_npDown);
   end
   else
   begin
    l_Neighbours[ed_fpiLeft] := k2NullTag;
    l_Neighbours[ed_fpiRight] := k2NullTag;
    l_Neighbours[ed_fpiUp] := k2NullTag;
    l_Neighbours[ed_fpiDown] := k2NullTag;
   end;
   Result := TevCell.Make(aView, aTable, aCell, aProcessor, l_Neighbours, aLocation);
  end//InheritsFrom(k2_idTableCell)
  else
   Result := nil;
end;

{ start class TevTable }

function TevTable.Get_Frame: IedFrame;
  {-}
begin
 Pointer(Result) := Pointer(IedFrame(TevTableFrame.Create(TagInst, Processor)));
end;

procedure TevTable.Set_Frame(const Value: IedFrame);
  {-}
begin
end;

function TevTable.GetTagCell(const aRow: InevTag;
                            const aCell: InevPara;
                            aTagIndex: LongInt;
                            const aLocation: InevLocation;
                            anInitNeighbours: Boolean): IedCell;
begin
 Result := evGetTagCell(View, Self, aRow, aCell, aTagIndex, Processor, aLocation, anInitNeighbours);
end;


function TevTable.Get_Cell: IedCell;
  {-}

 procedure GetCursorCell(aCursor: InevBasePoint);
 var
  l_CellIndex  : Integer;
  l_Row        : PInevObject;
 begin
  if (aCursor <> nil) then
   aCursor := aCursor.Inner;
  if (aCursor <> nil) then
  begin
   l_Row := aCursor.Obj;
   l_CellIndex := aCursor.Position - 1;
   aCursor := aCursor.Inner;
   if (aCursor = nil) then
    Result := nil
   else
    Result := evGetTagCell(View, Self, l_Row^, aCursor.Obj.AsPara, l_CellIndex, Processor, aCursor, True);
  end //aCursor <> nil
  else
   Result := nil;
 end;

var
 l_Cursor : InevPoint;
 l_Start  : InevBasePoint;
 l_Finish : InevBasePoint;
 l_Sel    : InevRange;
begin
 if Supports(f_Location, InevPoint, l_Cursor) then
  GetCursorCell(l_Cursor)
 else
 if Supports(f_Location, InevRange, l_Sel) then
 begin
  l_Sel.GetBorderPoints(l_Start, l_Finish);
  if (l_Start = nil) OR (l_Finish = nil) OR
     not l_Start.Obj.IsSame(l_Finish.Obj^) then
   Result := nil
  else
  begin
   l_Start := l_Start.Inner;
   l_Finish := l_Finish.Inner;
   if (l_Start = nil) OR (l_Finish = nil) OR
      not l_Start.Obj.IsSame(l_Finish.Obj^) then
    Result := nil
   else
   begin
    l_Start := l_Start.Inner;
    l_Finish := l_Finish.Inner;
    if (l_Start = nil) OR (l_Finish = nil) OR
       not l_Start.Obj.IsSame(l_Finish.Obj^) then
     Result := nil
    else
     GetCursorCell(l_Start.ParentPoint.ParentPoint);
   end;
  end;
 end // if Supports(f_Location, InevRange, l_Sel) then
 else
  Result := nil;
end;

function TevTable.Get_Column: IedColumn;
  {* - Метод для чтения свойства Column. }
var
 l_Cursor : InevBasePoint;
begin
 if Supports(f_Location, InevPoint, l_Cursor) then
 begin
  if (l_Cursor <> nil) then
   l_Cursor := l_Cursor.Inner;
  if (l_Cursor <> nil) then
   Result := TevColumn.Make(View,
                            l_Cursor.Obj^,
                            l_Cursor.Position - 1,
                            Processor)
  else
   Result := nil; 
 end else
  Result := nil;
end;

function TevTable.Get_ColumnsIterator: IedColumnsIterator;
  {-}
var
 l_Indexes : TedRangeIndexes;
begin
 if GetRangeIndexes(l_Indexes) then
 begin
  Result := TevColumnsIterator.Make(View,
                                    f_Location.Obj.Child[l_Indexes.rStartRow],
                                    Processor,
                                    l_Indexes.rStartCell,
                                    l_Indexes.rFinishCell)
 end//GetRangeIndexes
 else
  Result := nil;
end;

function TevTable.pm_GetRowsIterator: IedRowsIterator;
  {-}
var
 l_Indexes : TedRangeIndexes;
 l_Tag     : InevPara;
begin
 if (f_Location As InevTag).QT(InevPara, l_Tag) then
  try
   if GetRangeIndexes(l_Indexes) then
   begin
    Result := TevRowsIterator.Make(View,
                                   Self,
                                   l_Tag,
                                   Processor,
                                   l_Indexes.rStartRow,
                                   f_Location);
   end//GetRangeIndexes
   else
    Result := TevRowsIterator.Make(View,
                                   Self,
                                   l_Tag,
                                   Processor,
                                   0,
                                   l_Tag.Range);
  finally
   l_Tag := nil;
  end//try..finally
 else
  Assert(false); 
end;

function TevTable.Get_Cells: IedCells;
  {* - Метод для чтения свойства Cells. }
begin
 Result := Self;
end;

function TevTable.IedCells_Get_Frame: IedFrame;
  {-}
var
 l_Cell       : IedCell;
 l_StartCell  : Integer;
 l_FinishCell : Integer;
 l_StartRow   : Integer;
 l_FinishRow  : Integer;
begin
 Result := nil;
 l_Cell := Get_Cell;
 if (l_Cell <> nil) then
  Result := l_Cell.Frame;
 if (Result = nil) then
 begin
  if GetRangeIndexes(l_StartRow, l_FinishRow,
                     l_StartCell, l_FinishCell) then
  begin
   Pointer(Result) := Pointer(
                       IedFrame(
                        TevTableFrame.Create(TagInst, Processor,
                                             l_StartRow, l_FinishRow,
                                             l_StartCell, l_FinishCell)));
  end;//GetRangeIndexes
 end;//Result = nil..
end;

procedure TevTable.IedCells_Set_Frame(const Value: IedFrame);
  {-}
begin
end;

function TevTable.InsertRows(NumRows: Integer): Boolean;
  {-}
begin
 Result := false;
end;

function TevTable.GetRangeIndexes(var aStartRow, aFinishRow, aStartCell, aFinishCell: Integer): Boolean;
  {-}
var  
 l_Start  : InevBasePoint;
 l_Finish : InevBasePoint;
 l_Sel    : InevRange;
begin
 Result := Supports(f_Location, InevRange, l_Sel);
 if Result then
 begin
  l_Sel.GetBorderPoints(l_Start, l_Finish);
  if (l_Start = nil) then
  begin
   aStartRow := 0;
   aStartCell := 0;
  end//l_Start = nil
  else
  begin
   aStartRow := Max(0, l_Start.Position - 1);
   if not l_Start.HasInner then
    aStartCell := 0
   else
    aStartCell := Max(0, l_Start.Inner.Position - 1);
  end;//l_Start = nil
  if (l_Finish = nil) then
  begin
   aFinishRow := l3MaxIndex;
   aFinishCell := l3MaxIndex;
  end//l_Finish = nil
  else
  begin
   aFinishRow := Max(0, l_Finish.Position - 1);
   if not l_Finish.HasInner then
    aFinishCell := l3MaxIndex
   else
    aFinishCell := Max(0, l_Finish.Inner.Position - 1);
  end;//l_Finish = nil
 end;//Result
end;

function TevTable.GetRangeIndexes(var theIndexes: TedRangeIndexes): Boolean;
  //overload;
  {-}
begin
 with theIndexes do
  Result := GetRangeIndexes(rStartRow, rFinishRow, rStartCell, rFinishCell);
end;

function TevTable.FirstRowID: Integer;
  {* - Возвращает номер первой выделенной строки. }
var
 l_StartCell  : Integer;
 l_FinishCell : Integer;
 l_StartRow   : Integer;
 l_FinishRow  : Integer;
 l_Cursor     : InevPoint;
begin
 if GetRangeIndexes(l_StartRow, l_FinishRow,
                    l_StartCell, l_FinishCell) then
  Result := l_StartRow
 else
 if Supports(f_Location, InevPoint, l_Cursor) then
  Result := l_Cursor.Position - 1
 else
  Result := 0;
end;

function TevTable.Delete: Boolean;
  {* - Удаляет таблицу. }
var
 l_Para : InevPara;
begin
 if not TagInst.QT(InevPara, l_Para, Processor) then
  Assert(false);
 Result := l_Para.Edit.Delete(False, k2StartOp(Processor, ev_msgDeletePara));
end;

function TevTable.Split(const anIndicator: InevProgress): Boolean;
  {* - Разделяет таблицу на две, в текущем месте. }
var
 l_OpPack : InevOp;

 function CheckCell(const aCell: InevPara; aCelID: TnevParaIndex): Boolean; 
 var
  l_NeedCorrect : Boolean; // - признак того, что надо корректировать флажок объединения
 begin//CheckCell
  Result := True;
  with aCell do
  begin
   with Attr[k2_tiMergeStatus] do
    l_NeedCorrect := IsValid AND (AsLong = Ord(ev_msContinue));
   if l_NeedCorrect then
   begin
    IntW[k2_tiMergeStatus, l_OpPack] := Ord(ev_msHead);
    evCheckCellStatus(l_OpPack, aCell);
   end;
  end;//with aCell
 end;//CheckCell

var
 l_RowID       : Integer;
 l_Table       : InevParaList;
 l_NewTable    : InevPara;
 l_Cursor      : InevBasePoint;
 l_FirstRow    : Boolean;      // - признак того, что переносимая строка первая
 l_CopyRow     : InevPara;
 l_ControlView : InevControlView;
begin
 Result := False;
 l_Cursor := f_Location.AsPoint;
 if (l_Cursor <> nil) then
 begin
  if not TagInst.QT(InevParaList, l_Table) then
   Assert(False);
  l_RowID := l_Cursor.Position;
  if (l_RowID > 1) AND (l_RowID <= l_Table.ChildrenCount) then
  begin
   l_Cursor := l_Cursor.ClonePoint(View);
   // - Копируем курсор таблицы
   try
    l_OpPack := Processor.StartOp(ev_msgInsertPara);
    try
     l_Cursor.Move(View, ev_ocBottomRight, l_OpPack);
     // - Перемещаем курсор на конец таблицы
     l_Cursor := l_Cursor.PointToParent;
     // - Перемещаем курсор на владельца таблицы
     if not Tk2Type(l_Table.TagType).MakeTag.QT(InevPara, l_NewTable, Processor) then
      Assert(false);
     // - Cоздаем новую таблицу
     try
      if evInsertPara(l_OpPack, l_Cursor, l_NewTable) then
      begin
       // - Смогли вставить новую таблицу
       if not evInsertPara(l_OpPack,
                           l_Cursor, 
                           Tk2Type(l_Cursor.Obj.TagType).ArrayProp[k2_tiChildren].DefaultChildType.MakeTag) then
        // - Вставляем текстовый параграф перед таблицей
        Exit;
       if l_Table.BoolA[k2_tiOldNSRC] then
        l_NewTable.BoolW[k2_tiOldNSRC, l_OpPack] := True;
       l_Cursor := nil;
       l_Cursor := l_NewTable.MakePoint;
       // - Создаем курсор для новой таблицы
      end//evInsertPara(l_OpPack, l_Cursor, l_NewTable)
      else
       Exit;
     finally
      l_NewTable := nil;
     end;//try..finally
     l_FirstRow := True;
     while (l_RowID <= l_Table.ChildrenCount) do
     begin
      // - В цикле переносим строки таблицы в новую таблицу
      if not l_FirstRow then
      begin
       // - Остальные строки переносим "скопом" - для ускорения процесса.
       evMergeParaList(View, l_Cursor, l_Table, ev_mtlCells, l_OpPack, l_RowID, nil, anIndicator);
       Break;
      end;//not l_FirstRow
      l_CopyRow := l_Table.Para[l_RowID - 1];
      if evInsertPara(l_OpPack, l_Cursor, l_CopyRow) then
      begin
       if l_FirstRow then
       begin
        l_FirstRow := False;
        l_CopyRow.AsList.IterateParaF(nevL2PIA(@CheckCell));
       end;//l_FirstRow
       l_Cursor.Move(View, ev_ocBottomRight, l_OpPack);
       // - Смещаемся на конец таблицы
       Result := True;
       // - Сигнализируем об успехе операции (м. б. частичном)
      end
      else
       Inc(l_RowID);
       // - Не смогли перенести строку таблицы - смещаемся на следующую
     end;//while (l_RowID <= l_Table.ChildrenCount)
     if Supports(View, InevControlView, l_ControlView) then
      try
       l_Cursor := f_Location.AsPoint;
       l_Cursor.Move(View, ev_ocBottomRight, l_OpPack);
       l_Cursor := l_Cursor.PointToParent(l_ControlView.Control.Selection.Point.Obj^);
       l_ControlView.Control.Selection.Point.AssignPoint(l_ControlView, l_Cursor);
      finally
       l_ControlView := nil;
      end;
    finally
     l_OpPack := nil;
    end;//try..finally
   finally
    l_Cursor := nil;
   end;//try..finally
  end;//l_RowID > 1..
 end;//f_Location Is _TevCursor
end;

function TevTable.IedTable_Merge(const anIndicator: InevProgress): Boolean;
  {* - Объединяет таблицу со следующей. }
var
 l_Result : Boolean absolute Result;
 l_First  : Integer;
 l_Finish : InevBasePoint;

 function DoChild(const aChild: InevTag; anIndex: Integer): Boolean;
 var
  l_Para : InevParaList;
 begin//DoChild
  Result := True;
  if aChild.InheritsFrom(k2_idTable) then
   if not aChild.QT(InevParaList, l_Para, Processor) then
    Assert(False);
   if evMergeParaListWithNext(View, l_Para, ev_mtlTables, Processor, Pred(l_Finish.Position), anIndicator) then
   begin
    // - Объединили, надо выйти, т.к. поехали индексы
    Result := False;
    l_Result := True;
    l_First := Succ(anIndex);
   end;//evMergeParaListWithNext
 end;//DoChild

var
 l_OpPack : InevOp;
 l_Block  : InevRangeFactory;
 l_Start  : InevBasePoint;
 l_Para   : InevParaList;
begin
 Result := false;
 if (f_Location.Range <> nil) AND
    Supports(f_Location.Range.ParentRange, InevRangeFactory, l_Block) then
 begin
  if (Processor = nil) then
   l_OpPack := nil
  else
   l_OpPack := Processor.StartOp(ev_msgInsertPara);
  try
   l_First := 1;
   with l_Block do
   begin
    GetBorderPoints(l_Start, l_Finish);
    while (l_Start.Position < l_Finish.Position) do
    begin
     if (IterateChildrenF(k2L2TIA(@DoChild), l_First) < 0) OR not Result then
      Break
     else
      Init(l_Start, l_Finish);
      // - Надо переинициализировать выделение
    end;//while true
   end;//with l_Block 
  finally
   l_OpPack := nil;
  end;//try..finally
 end;//Supprts(f_Location.Parent, InevRange
 if not Result then
  if TagInst.QT(InevParaList, l_Para, Processor) then
   Result := evMergeParaListWithNext(View, l_Para, ev_mtlTables, Processor, MaxInt, anIndicator)
  else 
   Assert(false);
end;

function TevTable.pm_GetTableRange: IevTableRange;
  {-}
begin
 if (f_Location = nil) OR
    l3IFail(f_Location.QueryInterface(IevTableRange, Result)) then
  Result := nil;
end;

function TevTable.pm_GetTable: IedTable;
  {-}
begin
 Result := Self;
end;

function TevTable.pm_GetVerticalAligment: TevVerticalAligment;
  {* - Метод для чтения свойства VerticalAligment. }
begin
 Result := ev_valTop;
end;

procedure TevTable.pm_SetVerticalAligment(Value: TevVerticalAligment);
  {* - Метод для записи свойства VerticalAligment. }
begin
 if (f_Location <> nil) then
  f_Location.Formatting.Modify(View).SetAtom(View, k2_tiVerticalAligment, k2_typLong.TagFromIntRef(Ord(Value)), Processor.StartOp);
end;

function TevTable.Merge(aMergeAlg : TedMergeAlgorythm = ed_maAll): Boolean;
  {* - Объединить ячейки в диапазоне. }
var
 l_Para: InevPara;
begin
 try
  Result := InternalMerge(l_Para, aMergeAlg);
 finally
  l_Para := nil;
 end;
end;

// start class TevRowsIterator

constructor TevRowsIterator.Create(const aView : InevView;
                                   const aTable      : IedTable;
                                   const aTagWrap    : InevTag;
                                   const aProcessor  : InevProcessor;
                                   const aStartRow   : Integer;
                                   const aLocation   : InevLocation = nil);
  //reintroduce;
  {-}
begin
 inherited Create(aView, aTable, aTagWrap, aProcessor, aLocation);
 f_StartRow := aStartRow;
end;

class function TevRowsIterator.Make(const aView : InevView;
                                    const aTable      : IedTable;
                                    const aTagWrap    : InevTag;
                                    const aProcessor  : InevProcessor;
                                    const aStartRow   : Integer;
                                    const aLocation   : InevLocation = nil): IedRowsIterator;
  {-}
var
 l_RowsIterator : TevRowsIterator;
begin
 l_RowsIterator := Create(aView, aTable, aTagWrap, aProcessor, aStartRow, aLocation);
 try
  Result := l_RowsIterator;
 finally
  l3Free(l_RowsIterator);
 end;//try..finally
end;
  
function TevRowsIterator.First: IedRow;
  {* - Возвращает первую строку и начинает перебор. }
begin
 f_First := f_StartRow;
 Result := Next;
end;

function TevRowsIterator.Next: IedRow;
  {* - Возвращает следующую строку или nil, если перебор закончен. }
var
 l_Result : IedRow absolute Result;

 function _DoRow(const aRowBlock: InevRange; anIndex: Integer): Boolean;
 begin//_DoRow
  Result := False;
  l_Result := TevRow.Make(View, GetTable, aRowBlock.Obj^, Processor, aRowBlock);
  f_First := anIndex + 1;
  // - Следующий раз начинаем со следующей строки
 end;//_DoRow

var
 l_Sel : InevRange; 
begin
 Result := nil;
 if Supports(f_Location, InevRange, l_Sel) then
  l_Sel.IterateF(evL2TSA(@_DoRow), f_First)
end;

// start class TevParagraphPack 

function TevParagraphPack.Get_Frame: IedFrame;
  {-}
begin
 Pointer(Result) := Pointer(IedFrame(TevParagraphPackFrame.Create(f_View, Processor, f_Block)));
end;

// start class TevParagraphPart

constructor TevParagraphPart.Create(const aView : InevView;
                                    const aProcessor : InevProcessor;
                                    const aBlock     : InevRange);
  //reintroduce;
  {-}
begin
 inherited Create(aProcessor);
 f_Block := aBlock;
 f_View := aView;
end;

procedure TevParagraphPart.Cleanup;
  //override;
  {-}
begin
 f_View := nil;
 f_Block := nil;
 inherited;
end;

function TevParagraphPart.Get_Frame: IedFrame;
  //virtual;
  {-}
begin
 Pointer(Result) := Pointer(IedFrame(TevUsialParaFrame.Create(f_Block.Obj^, Processor)));
end;

procedure TevParagraphPart.Set_Frame(const Value: IedFrame);
  //virtual;
  {-}
begin
end;

// start class TevLeafParagraph

class function TevLeafParagraph.Make(const aView : InevView;
                                     const aProcessor : InevProcessor;
                                     const aBlock     : InevRange): IedLeafParagraph;
  //reintroduce;
  {-}
var
 l_LeafParagraph : TevLeafParagraph;  
begin
 l_LeafParagraph := Create(aView, aProcessor, aBlock);
 try
  Result := l_LeafParagraph;
 finally
  l3Free(l_LeafParagraph);
 end;//try..finally
end;
 
function TevLeafParagraph.pm_GetStyle: IedStyle;
  {-}
begin
 Result := Self;
end;

function TevLeafParagraph.pm_GetStyles: Il3Strings;
  {-}
var
 l_SI   : TevStyleInterface;
 l_Type : Tk2Type;
begin
 l_Type := StyleType;
 if (l_Type = nil) then
  Result := nil
 else
 begin
  l_SI := TevStyleInterface.Create;
  try
   l_SI.TagType := l_Type;
   Result := l_SI;
  finally
   l3Free(l_SI);
  end;{try..finally}
 end;
end;

function TevLeafParagraph.pm_GetID: Integer;
  {-}
begin
 try
  Result := Block.Obj.rLong(k2_tiStyle, ev_saTxtNormalANSI);
 except
  on Ek2ConversionError do Result := ev_saTxtNormalANSI;
 end;//try..except
end;

procedure TevLeafParagraph.pm_SetID(Value: Integer);
  {-}
var
 l_StyleType: Tk2Type;
begin
 l_StyleType := StyleType;
 if l_StyleType <> nil then
  SetStyleParam(k2_tiHandle, l_StyleType.IntToTag(Value));
end;

function TevLeafParagraph.pm_GetName: AnsiString;
  {-}
begin
 try
  Result := Block.Obj.Attr[k2_tiStyle].AsString;
  { TODO -cОптимизация -oЛюлин А. В. : Здесь надо бы rString добавить вместо AsString. }
 except
  on Ek2ConversionError do Result := '';
 end;//try..except
end;

function TevLeafParagraph.pm_GetPrintFontSize: Integer;
begin
// try
  Result := Block.Obj.IntA[k2_tiPrintFontSize];
{
 except
  on Ek2ConversionError do Result := 12;
 end;//try..except
}
end;

procedure TevLeafParagraph.pm_SetName(const Value: AnsiString);
  {-}
var
 l_StyleType: Tk2Type;
begin
 l_StyleType := StyleType;
 if l_StyleType <> nil then
  SetStyleParam(k2_tiName, l_StyleType.StrToTag(Value));
end;

procedure TevLeafParagraph.pm_SetPrintFontSize(aValue: Integer);
var
 l_O: InevObject;
begin
 if Block.Obj.IntA[k2_tiJustification] = Ord(ev_itPreformatted) then
 begin
  Block.Obj.IntW[k2_tiPrintFontSize, k2StartOp(Processor)] := aValue;
  if not Block.Obj.QT(InevObject, l_O) then
   Assert(false);
  l_O.Invalidate([nev_spSegments]);
 end;
end;

function TevLeafParagraph.StyleType: Tk2Type;
  {-}
var
 l_Prop : Tk2CustomPropertyPrim;
begin
 l_Prop := Block.Obj.TagType.Prop[k2_tiStyle];
 if (l_Prop = nil) then
  Result := nil
 else
  Result := k2.TypeTable[l_Prop.AtomType.ID];
end;

procedure TevLeafParagraph.SetStyleParam(Index: Integer; const Source: InevTag);
  {-}
begin
 if (Index = k2_tiName) OR (Index = k2_tiHandle) then
  Block.Formatting.Modify(View).SetAtom(f_View, k2_tiStyle, Source, k2StartOp(Processor));
end;

function TevTable.pm_GetOldNSRC: Boolean;
begin
 Result := TagInst.BoolA[k2_tiOldNSRC];
end;

procedure TevTable.pm_SetOldNSRC(aValue: Boolean);
var
 l_Para   : InevPara;
 l_OpPack : InevOp;
begin
 l_OpPack := Processor.StartOp;
 try
  TagInst.BoolW[k2_tiOldNSRC, l_OpPack] := aValue;
  if TagInst.QT(InevPara, l_Para) then
   l_Para.Invalidate([]);
 finally
  l_OpPack := nil;
 end;//try..finally
end;

function TevTable.RowCount: Integer;
begin
 Result := TagInst.ChildrenCount;
end;

procedure TevTable.Translate2Text;
var
 l_Cell     : InevPara;
 l_OpPack   : InevOp;
 l_TextPara : InevPara;
begin
 l_OpPack := Processor.StartOp(ev_msgInsertPara);
 try
  if InternalMerge(l_Cell) and (l_Cell <> nil) then
  try
   Unselect;
   l_TextPara := GetOuterTextPara(l_OpPack, l_Cell);
   MoveCellText(l_OpPack, l_Cell, l_TextPara.MakePoint.Text.Modify);
  finally
   l_Cell := nil;
  end;
 finally
  l_OpPack := nil;
 end;
end;

function TevTable.InternalMerge(var aResultCell: InevPara;
  aMergeAlg: TedMergeAlgorythm): Boolean;
var
 l_TableRange          : IevTableRange;
 l_StartRow            : Integer;
 l_FinishRow           : Integer;
 l_OpPack              : InevOp;
 l_MinOffset           : Integer;
 l_MaxWidth            : Integer;
 l_Row4CheckStartIndex : Integer;

 procedure lp_AddCheckRow(aValue: Integer);
 begin
  if l_Row4CheckStartIndex > -1 then
   l_Row4CheckStartIndex := Min(l_Row4CheckStartIndex, aValue)
  else
   l_Row4CheckStartIndex := aValue;
 end;

 procedure MergeBetween(const aTable  : InevTag;
                        aStartOffset,
                        aFinishOffset : Integer);
 var
  l_HeadCellWrap : InevPara;

  function _MergeInRow(const aRow: InevTag; aRowIndex: Integer): Boolean;
  var
   l_FirstCellWrap : InevPara;

   procedure MergeVert;

    function _ModifyHeadCursors(PLC: PevParaListCursor; Index: Long): Boolean;
    begin
     PLC^.ChangePointByPara(View, l_OpPack, nil);
     Result := True;
    end;

   var
    l_MergeStatus : TevMergeStatus;
   begin//MergeVert
    if (aMergeAlg <> ed_maHorz) AND (l_StartRow < l_FinishRow) then
    begin
     // - Здесь делаем объединение по вертикали.
     with l_FirstCellWrap do
     begin
      with Attr[k2_tiMergeStatus] do
       if IsValid then
        l_MergeStatus := TevMergeStatus(AsLong)
       else
        l_MergeStatus := ev_msNone;
      if (aRowIndex = l_StartRow) then
      begin                                            
       case l_MergeStatus of
        ev_msNone: begin
         IntW[k2_tiMergeStatus, l_OpPack] := Ord(ev_msHead);
         l_HeadCellWrap := l_FirstCellWrap;
         evIterateCursorsF(l_HeadCellWrap, l3L2IA(@_ModifyHeadCursors));
        end;//ev_msNone
        ev_msHead: l_HeadCellWrap := l_FirstCellWrap;
       end;//case l_MergeStatus
      end//aRowIndex = l_StartRow
      else
      begin
       if (l_HeadCellWrap <> nil) then
        evCopyParaList(View, Self.Processor,
                       l_HeadCellWrap,
                       l_FirstCellWrap, evDefaultCopyFlags + [ev_lfAtEnd], True); // - Объединяем тексты двух ячеек.
       evClearPara(View, l_FirstCellWrap, l_OpPack, ev_cmVertMergeCells, l_HeadCellWrap); // - Здесь надо удалить текст из объединенной ячейки.
       IntW[k2_tiMergeStatus, l_OpPack] := Ord(ev_msContinue);
       if (l_HeadCellWrap <> nil) and evEqualOffset(l_HeadCellWrap.OffsetX, OffsetX) then
       begin
        if evEqualOffset(l_HeadCellWrap.IntA[k2_tiWidth], IntA[k2_tiWidth]) then // Всякое бывает...
         IntW[k2_tiWidth, l_OpPack] := l_HeadCellWrap.IntA[k2_tiWidth];
       end
       else
        lp_AddCheckRow(aRowIndex);
      end;//aRowIndex = l_StartRow
     end;//l_FirstCellWrap
     InternalMerge := True;
    end;//l_StartRow < l_FinishRow
   end;//MergeVert

  var
   l_Cell         : InevTableCell;
   l_CellIndex    : Integer;
   l_FirstCell    : IedCell;
   l_NextCell     : IedCell;
   l_NextCellWrap : InevPara;
   l_CellCount    : Integer;
   l_Width        : Integer;
   l_LocStartCell : Integer;
   l_StartCell    : Integer;
   l_FinishCell   : Integer;
  begin//_MergeInRow
   Result := l_TableRange.Offset2Cells(aRow,
                                       aStartOffset, aFinishOffset,
                                       l_StartCell, l_FinishCell);
   if Result then
   begin
    l_CellCount := aRow.ChildrenCount;
    if (l_StartCell < l_CellCount) then
    begin
     if not aRow.Child[l_StartCell].QT(InevPara, l_FirstCellWrap) then
      Assert(false);
     if l3IOk(evQueryParaInterface(View,
                                   Processor,
                                   l_FirstCellWrap,
                                   Tl3GUID_C(IedCell),
                                   l_FirstCell)) then
      try
       if (l_FinishCell > l_StartCell) then
       begin
        // - Здесь делаем объединение по горизонтали.
        InternalMerge := True;
        l_Width := l_FirstCell.Width;
        l_LocStartCell := l_StartCell + 1;
        for l_CellIndex := l_LocStartCell to Min(l_CellCount - 1, l_FinishCell) do
        begin
         if not aRow.Child[l_LocStartCell].QT(InevPara, l_NextCellWrap) then
          Assert(False);
         if l3IOk(evQueryParaInterface(View,
                                       Processor,
                                       l_NextCellWrap,
                                       Tl3GUID_C(IedCell),
                                       l_NextCell)) then
          try
           Inc(l_Width, l_NextCell.Width);
           // - Увеличиваем результирующую ширину.                        
           evCopyParaList(View, Processor,
                          l_FirstCellWrap,
                          l_NextCellWrap, evDefaultCopyFlags + [ev_lfAtEnd], True);
           // - Объединяем тексты двух ячеек.
           with l_NextCellWrap.Attr[k2_tiMergeStatus] do
            if IsValid and (TevMergeStatus(AsLong) = ev_msHead) then
             lp_AddCheckRow(l_FinishRow + 1);
           l_NextCell.Delete(l_OpPack, True);
           // - Удаляем следующую ячейку.
           Continue; // - Не надо модифицировать l_LocStartCell
          finally
           l_NextCell := nil;
          end;//try..finally
         Inc(l_LocStartCell);
         // - Не удалось удалить ячейку - сдвигаемся на следующую
        end;//for l_CellIndex
        aResultCell := l_FirstCellWrap;
        l_FirstCell.Width := l_Width;
        l_MaxWidth := Max(l_FirstCell.Width, l_MaxWidth);
        if l_MinOffset = 0 then
         l_MinOffset := l_FirstCellWrap.OffsetX
        else
         l_MinOffset := Min(l_FirstCellWrap.OffsetX, l_MinOffset);
       end;//l_FinishCell > l_StartCell
       if (aMergeAlg = ed_maHorz) then
       begin
        l_FirstCellWrap.QT(InevTableCell, l_Cell);
        with l_FirstCellWrap.Attr[k2_tiMergeStatus] do
         if IsValid and (TevMergeStatus(AsLong) = ev_msContinue) and
          ((l_FirstCellWrap.ChildrenCount > 0) or (l_Cell.GetMergeHead = nil)) then
         begin
          l_FirstCellWrap.IntW[k2_tiMergeStatus, l_OpPack] := Ord(ev_msNone);
          evCheckCellStatus(l_OpPack, l_FirstCellWrap);
         end; // if IsValid and (TevMergeStatus(AsLong) <> ev_msNone) then
       end; // if (aMergeAlg = ed_maHorz) then
       MergeVert;// - Здесь делаем объединение по вертикали.
      finally
       l_FirstCell := nil;
      end;//try..finally
    end;//l_StartCell < l_CellCount..
   end;//Result
  end;//_MergeInRow

 begin
  l_HeadCellWrap := nil;
  try
   aTable.IterateChildrenF(k2L2TIA(@_MergeInRow), l_StartRow, l_FinishRow);
   if l_HeadCellWrap <> nil then
    aResultCell := l_HeadCellWrap;
  finally
   l_HeadCellWrap := nil;
  end;//try..finally
 end;//MergeBetween

 procedure MergeVert(const aTable  : InevTag;
                     aStartOffset,
                     aFinishOffset : Integer);
 var
  l_StartCell,
  l_FinishCell : Integer;
  l_FirstRow   : InevTag;
  l_Index      : Integer;
  l_CellOffset : Integer;
  l_Cell       : InevPara;
 begin//MergeVert
  l_FirstRow := aTable.Child[l_StartRow];
  if l_TableRange.Offset2Cells(l_FirstRow,
                               aStartOffset, aFinishOffset,
                               l_StartCell, l_FinishCell) then
  begin
   for l_Index := l_StartCell to l_FinishCell do
   begin
    if not l_FirstRow.Child[l_Index].QT(InevPara, l_Cell, Processor) then
     Assert(False);
    with l_Cell do
    begin
     l_CellOffset := l_Cell.OffsetX; 
     MergeBetween(aTable,
                  l_CellOffset + l3Epsilon * 3,
                  l_CellOffset + IntA[k2_tiWidth] - l3Epsilon * 3); // <stub> - Width
    end;//with l_Cell
   end;//for l_Index
  end;//l_TableRange.Offset2Cells..
 end;//MergeVert

 procedure CheckRowsForDelete(const aTable          : InevTag;
                              aStartRow, aFinishRow : Integer);
 var
  l_First : Boolean;

  function CanDeleteRow(const aRow: InevTag): Boolean;
  var
   l_HeadCell        : InevTag;
   l_CellCount       : Integer;
   l_MergedCellCount : Integer;

   function CheckCell(const aCell: InevTag; aCellIndex: Integer): Boolean; far;
   begin//CheckCell
    Result := True;
    Inc(l_CellCount);
    case TevMergeStatus(aCell.IntA[k2_tiMergeStatus]) of
      ev_msNone: l_HeadCell := k2NullTag;
      ev_msHead: begin
        if l_HeadCell = nil then
         l_HeadCell := aCell
        else
         if l_HeadCell.IsValid then
         begin
          if (aCell.ChildrenCount > 0) then
           if l_HeadCell.ChildrenCount > aCell.ChildrenCount then
            l_HeadCell := aCell
           else
            if l_HeadCell.ChildrenCount = aCell.ChildrenCount then
             if (l_HeadCell.Child[0].Attr[k2_tiText].AsPCharLen.SLen - aCell.Child[0].Attr[k2_tiText].AsPCharLen.SLen) > 5 then
              l_HeadCell := aCell
         end; // if l_HeadCell.IsValid then
       end; // if (AsLong = Ord(ev_msHead)) then
      ev_msContinue:
       begin
        Inc(l_MergedCellCount);
        Assert((aCell.ChildrenCount = 0) or ((aCell.ChildrenCount = 1) and (aCell.Child[0].StrA[k2_tiText] = '')));
       end; // if IsValid AND (AsLong = Ord(ev_msContinue)) then
      else
       Assert(False);
    end; // case TevMergeStatus(aCell.IntA[]) of 
   end;//CheckCell

  var
   l_Next     : InevPara;
   l_CellTool : InevTableCell;
  begin//CanDeleteRow
   l_HeadCell := nil;
   l_CellCount := 0;
   l_MergedCellCount := 0;
   aRow.IterateChildrenF(k2L2TIA(@CheckCell));
   Result := (l_CellCount = l_MergedCellCount);
   if not Result and not l_First and (l_HeadCell <> nil) and l_HeadCell.IsValid then
   begin
    if (l_HeadCell.Owner.ChildrenCount > 1) and Supports(l_HeadCell, InevTableCell, l_CellTool) then
    begin
     l_Next := l_CellTool.GetContinueCell(True, fc_Down);
     if (l_Next <> nil) and l_Next.IsValid then
     begin
      l_Next.AttrW[k2_tiMergeStatus, l_OpPack] := nil;
      evCheckCellStatus(l_OpPack, l_Next);
     end; // if (l_Next <> nil) and l_Next.IsValid then
    end; // if Supports(aCell, InevTableCell, l_CellTool) then
    l_HeadCell.AttrW[k2_tiMergeStatus, l_OpPack] := nil;
   end; // if not Result and (l_HeadCell <> nil) and l_HeadCell.IsValid then
  end;//CanDeleteRow

 var
  l_RowForCheck : InevPara;
 begin//CheckRowsForDelete
  with aTable do
   l_First := True;
   while (aStartRow <= aFinishRow) do
   begin
    if not Child[aStartRow].QT(InevPara, l_RowForCheck, Processor) then
     Assert(False);
    if CanDeleteRow(l_RowForCheck) then
    begin
     Dec(aFinishRow);
     l_RowForCheck.Edit.Delete(False, l_OpPack);
    end // if CanDeleteRow(l_RowForCheck) then
    else
     Inc(aStartRow);
    l_First := False;
   end;//while (aStartRow <= aFinishRow)
 end;//CheckRowsForDelete

 procedure CheckHeads(const aRow: InevTag);

  function CheckCell(const aCell: InevTag; aCellIndex: Integer): Boolean; 
  var
   l_Next     : InevTag;
   l_Para     : InevParaList;
   l_CellTool : InevTableCell;
  begin//CheckCell
   Result := True;
   if not aCell.QT(InevParaList, l_Para, Processor) then
    Assert(False);
   with aCell.Attr[k2_tiMergeStatus] do
    if IsValid AND (AsLong = Ord(ev_msHead)) then
    begin
     if Supports(l_Para, InevTableCell, l_CellTool) then
      l_Next := l_CellTool.GetContinueCell(True, fc_Down);
     if (l_Next = nil) OR not l_Next.IsValid then
      aCell.AttrW[k2_tiMergeStatus, l_OpPack] := nil
     else
      with l_Next.Attr[k2_tiMergeStatus] do
       if not IsValid OR (AsLong <> Ord(ev_msContinue)) then
        aCell.AttrW[k2_tiMergeStatus, l_OpPack] := nil;
    end;//IsValid
  end;//CheckCell

 begin//CheckHeads
  aRow.IterateChildrenF(k2L2TIA(@CheckCell));
 end;//CheckHeads

 procedure lp_CheckSkippedContinueCell(const aTable: InevTag;
                                       aStartRow: Integer);
 var
  l_RowOffset : Integer;

  function CheckRow(const aRow: InevTag; aRowIndex: Integer): Boolean;
  var
   l_Offset    : Integer;
   l_WasChange : Boolean;

   function CheckCell(const aCell: InevTag; aCellIndex: Integer): Boolean;
   var
    l_Cell : InevTableCell;
   begin
    Result := l_RowOffset >= (l_Offset + aCell.IntA[k2_tiWidth]);
    with aCell.Attr[k2_tiMergeStatus] do
     if IsValid and (TevMergeStatus(AsLong) = ev_msContinue) and
        (l_Offset >= l_MinOffset) and Result then
    begin
     aCell.QT(InevTableCell, l_Cell);
     if l_Cell.GetMergeHead = nil then
     begin
      if l_Cell.GetContinueCell(False, fc_Down) = nil then
       aCell.AttrW[k2_tiMergeStatus, l_OpPack] := nil
      else
       aCell.IntW[k2_tiMergeStatus, l_OpPack] := Ord(ev_msHead);
      evCheckCellStatus(l_OpPack, l_Cell);
     end; // if l_Cell.GetMergeHead = nil then
     l_WasChange := True;
    end;
    Inc(l_Offset, aCell.IntA[k2_tiWidth]);
   end;

  begin//CheckCell
   l_Offset := 0;
   l_WasChange := False;
   aRow.IterateChildrenF(k2L2TIA(@CheckCell));
   Result := l_WasChange;
  end;//CheckCell

 begin
  l_RowOffset := l_MinOffset + l_MaxWidth;
  aTable.IterateChildrenF(k2L2TIA(@CheckRow), aStartRow);
 end;

 procedure CheckFinishRow(const aTable  : InevTag;
                          aStartOffset,
                          aFinishOffset : Integer);
 var
  l_FirstRow   : InevTag;
  l_StartCell  : Integer;
  l_FinishCell : Integer;
  l_Index      : Integer;
  l_Cell       : InevPara;
  l_TagCell    : InevTag;
  l_PrevCell   : InevPara;
  l_NewFinish  : Integer;
  l_C          : InevTableCell;
 begin
  l_FirstRow := aTable.Child[l_StartRow];
  Result := l_TableRange.Offset2Cells(l_FirstRow,
                                      aStartOffset, aFinishOffset,
                                      l_StartCell, l_FinishCell);
  l_NewFinish := 0;
  for l_Index := l_StartCell to l_FinishCell do
  begin
   l_TagCell := l_FirstRow.Child[l_Index];
   if TevMergeStatus(l_TagCell.IntA[k2_tiMergeStatus]) = ev_msHead then
   begin
    if not l_TagCell.QT(InevPara, l_Cell, Processor) then
     Assert(False);
    while l_Cell <> nil do
    begin
     l_PrevCell := l_Cell;
     if not l_Cell.QT(InevTableCell, l_C) then
      Assert(false);
     l_Cell := l_C.GetContinueCell(True, fc_Down);
     l_NewFinish := Max(l_NewFinish, l_PrevCell.OwnerPara.PID);
    end; //while l_Cell <> nil do
   end //if TevMergeStatus(l_TagCell.IntA[k2_tiMergeStatus]) = ev_msHead then
   else
    l_NewFinish := -1;
  end; //for l_Index := l_StartCell to l_FinishCell do
  l_FinishRow := Max(l_FinishRow, l_NewFinish);
 end;

var
 l_Table        : InevTag;
 l_StartOffset  : Integer;
 l_FinishOffset : Integer;
begin
 Result := False;
 aResultCell := nil;
 if (f_Location <> nil) AND
    l3IOk(f_Location.QueryInterface(IevTableRange, l_TableRange)) then
  try
   if l_TableRange.GetRangeBorders(l_StartRow, l_FinishRow,
                                   l_StartOffset, l_FinishOffset) then
   begin
    l_OpPack := Processor.StartOp(ev_msgBlock2Para);
    try
     l_Table := TagInst;
     CheckFinishRow(l_Table, l_StartOffset, l_FinishOffset);
     l_MinOffset := 0; l_MaxWidth := 0; l_Row4CheckStartIndex := -1;
     if (aMergeAlg = ed_maVert) then
      MergeVert(l_Table, l_StartOffset, l_FinishOffset)
     else
      MergeBetween(l_Table, l_StartOffset, l_FinishOffset);
     if Result then
     begin
      CheckRowsForDelete(l_Table, l_StartRow, l_FinishRow);
      CheckHeads(l_Table.Child[l_StartRow]);
      if l_Row4CheckStartIndex > -1 then
       lp_CheckSkippedContinueCell(l_Table, l_Row4CheckStartIndex);
     end;//Result
    finally
     l_OpPack := nil;
    end;//try..finally
   end;//GetRangeIndexes
  finally
   l_TableRange := nil;
  end;//try..finally
end;

procedure TevTable.Unselect;
var
 l_CView : InevControlView;
begin
 if Supports(View, InevControlView, l_CView) then
  l_CView.Control.Selection.Unselect;
end;

procedure TevTable.CheckTable(const aCell: InevPara);
var
 l_NextCell : InevPara;
 l_PrevLoc  : InevLocation;
 l_Point    : InevBasePoint;
begin
 l_NextCell := aCell.Next;
 if (l_NextCell = nil) or l_NextCell.IsNull then // тогда берем первую из следующей строки
 begin
  l_NextCell := aCell.OwnerPara.Next;
  if (l_NextCell <> nil) and not l_NextCell.IsNull then
   l_NextCell := l_NextCell.AsList[0];
 end; // if (l_NextCell = nil) or l_NextCell.IsNull then
 if (l_NextCell <> nil) and not l_NextCell.IsNull then
 begin
  l_Point := l_NextCell.MakePoint;
  l_Point.SetAtStart(View, True);
  l_Point := l_Point.PointToParent(f_Location.Obj^);
  l_PrevLoc := f_Location;
  try
   f_Location := l_Point;
   Split(nil);// В этом месте делим таблицу пополам.
  finally
   f_Location := l_PrevLoc;
  end;
 end; // if (l_NextCell <> nil) and not l_NextCell.IsNull then
end;

function TevTable.GetOuterTextPara(const aPack: InevOp; const aCell: InevPara): InevPara;
var
 l_Row     : InevPara;
 l_Point   : InevBasePoint;
 l_AtStart : Boolean;
 l_AtEnd   : Boolean;
begin
 l_Row := aCell.OwnerPara;
 l_Point := l_Row.MakePoint;
 l_AtStart := l_Row.PID = 0;
 l_AtEnd := l_Row.PID = l_Row.OwnerPara.ChildrenCount - 1;
 if l_AtStart or l_AtEnd then
 begin
  l_Point := l_Row.OwnerPara.MakePoint;
  if l_AtEnd then
   l_Point.Move(View, ev_ocBottomRight, aPack);
  l_Point := l_Point.PointToParent;
  evInsertPara(aPack,
               l_Point,
               Tk2Type(l_Point.Obj.TagType).ArrayProp[k2_tiChildren].DefaultChildType.MakeTag);
  if l_AtStart then
   Result := l_Row.OwnerPara.Prev
  else
   Result := l_Row.OwnerPara.Next;
 end // if l_Row.PID = 0 then
 else
  begin
   CheckTable(aCell);
   Result := l_Row.OwnerPara.Next;
  end; // if (l_Row.PID > 0) and (l_Row.PID < l_Row.OwnerPara.ChildrenCount - 2) then
end;

procedure TevTable.MoveCellText(const aPack: InevOp; const aCell: InevPara; const aTextPara: InevTextModify);
var
 i           : Integer;
 l_CellList  : InevParaList;
 l_CellChild : InevPara;
 l_Point     : InevBasePoint;
 l_Count     : Integer;
begin
 l_Count := aCell.ChildrenCount - 1;
 l_CellList := aCell.AsList;
 for i := l_Count downto 0 do
 begin
  l_CellChild := l_CellList[i];
  if l_CellChild.InheritsFrom(k2_idTextPara) and (i > 0) and EvHasText(l_CellChild) then
  begin
   l_Point := l_CellChild.MakePoint;
   l_Point.Text.Modify.InsertString(View, l3CStr(cc_HardSpace), aPack, True, [misfDirect]);
  end; // if l_CellChild.InheritsFrom(k2_idTextPara) then
  aTextPara.JoinWith(View, l_CellChild, aPack);
 end; // for i := l_Count downto 0 do
 DeleteCell(aPack, aCell);
end;

procedure TevTable.DeleteCell(const aPack: InevOp; const aCell: InevPara);
var
 l_DelRow : Boolean;

 function CheckChild(const aChild: Ik2Tag; Index: Long): Bool;
 begin
  if aChild.IsSame(aCell) then
   Result := True
  else
  begin
   if aChild.IntA[k2_tiMergeStatus] <> Ord(ev_msContinue) then
    l_DelRow := False;
   Result := not l_DelRow;
  end;
 end;

var
 l_Row : InevParaList;
begin
 l_Row := aCell.OwnerPara;
 l_DelRow := l_Row.ChildrenCount = 1;
 if l_DelRow and (RowCount = 1) then
 begin
  Delete;
  Exit;
 end; // if l_DelRow and RowCount = 1 then
 if not l_DelRow then
 begin                                                             
  l_DelRow := True;
  l_Row.IterateChildrenF(k2L2TIA(@CheckChild));
 end; // if not l_DelRow then
 l_DelRow := True;
 if l_DelRow then
  l_Row.Edit.Delete(True, aPack)
 else
  aCell.Edit.Delete(True, aPack);
end;
{$EndIf evNeedEditableCursors}

function TevTable.GetTag: InevTag;
begin
 Result := TagInst;
end;

end.

