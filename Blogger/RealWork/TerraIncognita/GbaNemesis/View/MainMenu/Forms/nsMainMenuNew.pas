unit nsMainMenuNew;

// Библиотека : Проект Немезис;
// Название   : nsMainMenuNew;
// Автор      : Морозов М. А;
// Назначение : Содержит классы используемые для работы с "основным меню";
// Версия     : $Id: nsMainMenuNew.pas,v 1.14 2013/07/05 18:33:13 lulin Exp $

(*----------------------------------------------------------------------------
   $Log: nsMainMenuNew.pas,v $
   Revision 1.14  2013/07/05 18:33:13  lulin
   - вычищаем устаревшее.

   Revision 1.13  2013/07/04 08:36:45  morozov
   {RequestLink:434744658}

   Revision 1.12  2012/10/01 07:40:39  kostitsin
   [$397291566]

   Revision 1.11  2011/02/14 11:11:15  lulin
   - вычищаем мусор.

   Revision 1.10  2010/04/06 08:59:19  oman
   - new: {RequestLink:200902034}

   Revision 1.9  2010/01/28 08:37:36  oman
   - new: обрабатываем пустые списки {RequestLink:182452345}

   Revision 1.8  2009/11/24 14:19:40  oman
   - new: LE_OPEN_DOCUMENT_FROM_HISTORY {RequestLink:121157219}

   Revision 1.7  2009/10/21 16:26:09  lulin
   - переносим на модель ноды оболочки.

   Revision 1.6  2009/10/19 14:02:20  lulin
   {RequestLink:167348987}.

   Revision 1.5  2009/10/07 14:33:38  lulin
   - выкидываем неиспользуемое.

   Revision 1.4  2009/10/07 13:06:30  lulin
   - вычистил неиспользуемое.

   Revision 1.3  2009/10/07 10:40:33  lulin
   {RequestLink:162596818}. Подгоняем по макет.

   Revision 1.2  2009/10/06 13:13:57  lulin
   {RequestLink:162596818}. Добился правильной вёрстки.

   Revision 1.1  2009/10/05 11:15:24  lulin
   {RequestLink:162596818}. Подготавливаем инфраструктуру.

   Revision 1.123  2009/09/14 12:28:01  lulin
   - модуль Документ кладём в правильное место.

   Revision 1.122  2009/09/09 18:55:16  lulin
   - переносим на модель код проектов.

   Revision 1.121  2009/09/04 17:08:23  lulin
   {RequestLink:128288497}.

   Revision 1.120  2009/09/03 13:25:53  lulin
   - делаем прецеденты более изолированными друг от друга.

   Revision 1.119  2009/08/19 08:50:58  oman
   - new: Журнальные закладки - {RequestLink:159355458}

   Revision 1.118  2009/08/12 11:59:53  oman
   - new: Пользуем фабрику диспетчера - {RequestLink:152408792}

   Revision 1.117  2009/08/12 10:48:06  oman
   - new: Первое приближение - {RequestLink:159355458}

   Revision 1.116  2009/07/31 17:29:55  lulin
   - убираем мусор.

   Revision 1.115  2009/03/23 16:57:29  lulin
   [$122669214].

   Revision 1.114  2009/03/11 13:03:31  oman
   - fix: Сломалась расцветка (К-139430030)

   Revision 1.113  2009/02/20 10:12:56  lulin
   - чистка комментариев.

   Revision 1.112  2009/02/10 19:03:55  lulin
   - <K>: 133891247. Вычищаем морально устаревший модуль.

   Revision 1.111  2009/02/09 15:51:06  lulin
   - <K>: 133891247. Выделяем интерфейсы основного меню.

   Revision 1.110  2008/12/25 12:20:11  lulin
   - <K>: 121153186.

   Revision 1.109  2008/11/01 13:46:17  lulin
   - <K>: 121167578.

   Revision 1.108  2008/11/01 13:15:04  lulin
   - <K>: 121167580.

   Revision 1.107  2008/11/01 12:31:18  lulin
   - <K>: 121167580.

   Revision 1.106  2008/11/01 12:11:24  lulin
   - <K>: 121167580.

   Revision 1.105  2008/11/01 11:48:22  lulin
   - <K>: 121167580.

   Revision 1.104  2008/11/01 11:33:12  lulin
   - <K>: 121167580.

   Revision 1.103  2008/11/01 11:19:55  lulin
   - <K>: 121167580.

   Revision 1.102  2008/11/01 10:58:30  lulin
   - <K>: 121167580.

   Revision 1.101  2008/11/01 10:37:56  lulin
   - <K>: 121167580.

   Revision 1.100  2008/11/01 10:08:57  lulin
   - <K>: 121167580.

   Revision 1.99  2008/10/31 14:21:32  lulin
   - <K>: 121167580.

   Revision 1.98  2008/10/31 13:55:22  lulin
   - <K>: 121167580.

   Revision 1.97  2008/10/31 12:54:21  lulin
   - <K>: 121167580.

   Revision 1.96  2008/10/31 11:55:11  lulin
   - <K>: 121167580.

   Revision 1.95  2008/10/31 10:45:07  lulin
   - <K>: 121167580.

   Revision 1.94  2008/10/29 18:48:25  lulin
   - <K>: 121164067.

   Revision 1.93  2008/10/29 16:12:49  lulin
   - <K>: 121166916.

   Revision 1.92  2008/10/02 12:24:41  oman
   - fix: Заменили топик (К-119473714)

   Revision 1.91  2008/07/23 11:49:06  mmorozov
   - change: интерфейс открытия документа по номеру (K<100958789>);

   Revision 1.90  2008/06/18 10:32:56  mmorozov
   - new: последние открытые препараты (CQ: OIT5-29385);

   Revision 1.89  2008/06/04 13:05:30  mmorozov
   - new: показываем основные разделы справочника в основном меню Инфарм;

   Revision 1.88  2008/06/04 10:54:44  mmorozov
   - new: документы Инфарм в основном меню.

   Revision 1.87  2008/05/27 12:04:10  mmorozov
   - new: регистрация операций открытия препарата и фирмы производителя.

   Revision 1.86  2008/05/22 10:34:44  mmorozov
   - основное меню Инфарм.

   Revision 1.85  2008/05/22 10:14:43  mmorozov
   - new: основное меню Инфарм.

   Revision 1.84  2008/05/22 07:06:03  mmorozov
   - new: основное меню Инфарм.

   Revision 1.83  2008/04/21 10:53:49  mmorozov
   - new: при фильтрации элементов моих документов используется параметр для чего вызвали мои документы: документы | препараты.

   Revision 1.82  2008/03/26 14:28:59  lulin
   - <K>: 88080898.

   Revision 1.81  2008/03/26 11:37:10  lulin
   - зачистка в рамках <K>: 88080898.

   Revision 1.80  2008/03/26 11:12:46  lulin
   - зачистка в рамках <K>: 88080898.

   Revision 1.79  2008/03/20 11:27:05  oman
   - fix: Не падаем в случае отсутствия значений

   Revision 1.78  2008/01/10 07:23:30  oman
   Переход на новый адаптер

   Revision 1.77  2007/12/21 07:12:20  mmorozov
   - new: подписка на уведомление об обновлении данных (CQ: OIT5-27823);

   Revision 1.75.2.5  2007/12/06 10:47:27  oman
   Не ловили исключение

   Revision 1.75.2.4  2007/11/27 07:21:50  oman
   Перепиливаем на новый адаптер - логгирование

   Revision 1.75.2.3  2007/11/26 09:04:03  oman
   Перепиливаем на новый адаптер

   Revision 1.75.2.2  2007/11/21 15:07:48  oman
   Перепиливаем на новый адаптер

   Revision 1.76  2007/11/13 13:37:52  mmorozov
   - new: прокрутка колесом мыши в простом основном меню (CQ: OIT5-27201);

   Revision 1.75  2007/10/24 11:48:11  mmorozov
   - new: поддержка межстрочного интервала (voShowInterRowSpace) для элементов дерева с фиксированной высотой (CQ: OIT5-25021);

   Revision 1.74  2007/08/14 19:31:50  lulin
   - оптимизируем очистку памяти.

   Revision 1.73  2007/07/18 13:27:21  mmorozov
   - new: регистрирация события открытие докумнета из последних открытых (в рамках CQ: OIT5-25852);

   Revision 1.72  2007/05/08 09:02:09  oman
   - fix: Общая функциональность вынесена в общее место

   Revision 1.71  2007/05/03 09:44:19  mmorozov
   - change: отрезаем заголовок "продвинутого основного меню" (CQ: OIT5-25061);

   Revision 1.70  2007/04/17 09:30:03  mmorozov
   - new: определены параметры поиска элементов дерева навигатора;

   Revision 1.69  2007/04/12 10:37:07  mmorozov
   - change: назначаем правильную высоту однострочным элементам основного меню;

   Revision 1.68  2007/04/11 15:15:17  mmorozov
   - new: в простом основном меню показываем полные названия в списке последних открытых (CQ: OIT5-24958);

   Revision 1.67  2007/04/10 09:21:56  mmorozov
   - new: строим основное меню используя новые идентификаторы элементов навигатора (CQ: OIT5-24602);

   Revision 1.66  2007/03/28 11:04:54  mmorozov
   - "таблица перехода фокуса" перенесена в библиотеку визуальных компонентов проекта Немезис;

   Revision 1.65  2007/03/22 12:29:32  mmorozov
   - change: ячейка сетки контролов в виде скрываемого поля с деревом перенесена в общее место;

   Revision 1.64  2007/03/21 14:14:50  lulin
   - cleanup.

   Revision 1.63  2007/02/16 16:31:32  lulin
   - избавляемся от стандартного строкового типа.

   Revision 1.62  2007/02/07 17:48:45  lulin
   - избавляемся от копирования строк при чтении из настроек.

   Revision 1.61  2007/02/07 14:30:45  lulin
   - переводим на строки с кодировкой.

   Revision 1.60  2007/02/05 11:11:50  mmorozov
   - new: поддержка деревьями основных меню (простое, продвинутое) сброса после обновления;

   Revision 1.59  2007/02/02 14:55:10  mmorozov
   - new: используем новые типы узлов рубрикатора;

   Revision 1.58  2007/01/31 19:00:11  lulin
   - переходим к строкам с кодировкой.

   Revision 1.57  2007/01/29 10:09:35  mmorozov
   - new: в рамках работы над CQ: OIT5-24234;
   - bugfix: не обновляли деревья после переключения базы;

   Revision 1.56  2007/01/28 12:12:18  mmorozov
   - bugfix: AV при обновлении (CQ: OIT5-24208);

   Revision 1.55  2007/01/22 12:22:59  lulin
   - переходим на более правильные строки.

   Revision 1.54  2007/01/20 18:36:31  lulin
   - вычищаем ненужное создание параметров.

   Revision 1.53  2007/01/19 09:24:45  mmorozov
   - bugfix: в таблицу контролов основного меню затесалась пустая строка;

   Revision 1.52  2007/01/18 12:57:18  mmorozov
   - new: Простое основное меню (CQ: OIT5-23939);

   Revision 1.51  2007/01/15 06:33:56  mmorozov
   - высносим общую функциональность из основного меню (выделен в отдельный модуль компонент управления фокусом с клавиатуры; использование компонента "сетка контролов", для управления размещением элементов основного меню), в рамках работы над "CQ: OIT5-23939";

   Revision 1.50  2006/12/22 15:06:34  lulin
   - текст ноды - теперь структура с длиной и кодовой страницей.

   Revision 1.49  2006/12/20 13:34:15  lulin
   - удален ненужный модуль.

   Revision 1.48  2006/07/21 09:33:22  mmorozov
   - rename variables;

   Revision 1.47  2006/04/28 13:04:19  demon
   - optimize: переименовл несколько методов, вынес общую функциональность.

   Revision 1.46  2006/04/17 14:42:36  oman
   - new beh: перекладываем StdStr в _StdRes

   Revision 1.45  2006/03/16 11:36:07  oman
   - new beh: Перекладываем все текстовые константы в три места (StdStr, DebugStr и SystemStr)

   Revision 1.44  2005/11/21 17:21:08  lulin
   - cleanup.

   Revision 1.43  2005/07/07 09:31:45  mmorozov
   - warning fix;

   Revision 1.42  2005/06/09 07:43:25  mmorozov
   change: param name;

   Revision 1.41  2005/06/08 12:54:07  mmorozov
   bugfix: новые варианты не работоспособности переключения фокуса;

   Revision 1.40  2005/06/08 12:33:09  mmorozov
   bugfix: перемещение курсора (новые варианты не работоспособности);

   Revision 1.39  2005/06/08 11:25:26  mmorozov
   - bugfix: в таблице перемещения курсора не учитывалось, что некоторые элементы могут быть не видимыми;

   Revision 1.38  2005/03/28 11:39:10  demon
   - cleanup (remove hints)

   Revision 1.37  2005/03/14 13:15:33  mmorozov
   new: global function nsTaskbarSize;

   Revision 1.36  2005/03/12 09:52:42  mmorozov
   new: global function _nsControlIndents;

   Revision 1.35  2005/03/10 10:28:28  mmorozov
   change: префикс "mm" в названии классов заменен на "ns";

   Revision 1.34  2005/03/09 14:54:08  mmorozov
   new: function IsItemExists;

   Revision 1.33  2005/02/28 14:53:45  mmorozov
   Механизм навигации по таблице, ячейки которой представлены списками, адаптируются для любых компонентов:
   - new: types TmmKey, TmmOnProcessKey
   - new: classes TakTreeView, TakCustomLister, TmmProcessKey, - TmmColumn, TmmColumns;
   - new: interface ImmAdapterControl;

   Revision 1.32  2004/12/29 07:50:45  mmorozov
   new behaviour: при чтение истории последних открытых документов не обрабатываем элементы с пустыми Bookmark;

   Revision 1.31  2004/12/23 08:41:37  lulin
   - вычищен ненужный модуль.

   Revision 1.30  2004/12/09 10:20:35  mmorozov
   change: TnsQueryHistory.LoadQueries перенесен в public;

   Revision 1.29  2004/12/06 10:34:07  mmorozov
   - add log;

-----------------------------------------------------------------------------*)

interface

uses
  Graphics,
  ImgList,
  Controls,
  Types,
  Classes,
  Forms,
  Messages,

  l3Base,
  l3Tree_TLB,
  l3TreeInterfaces,
  l3Interfaces,

  afwInterfaces,

  vcmBase,
  vcmInterfaces,
  vcmExternalInterfaces,

  evTypes,

  eeInterfaces,
  eeTreeView,

  vtOutliner,
  vtLister,
  vtHideField,

  nscInterfaces,
  nscArrangeGrid,
  nscTreeViewHotTruck,

  nsNodes,
  nsTypes,

  DocumentUnit,
  DynamicTreeUnit,
  SearchUnit,
  StartUnit,
  
  nsDataResetTree,
  nsBaseMainMenuTree,
  nsHistoryTree,
  nsLastOpenDocTree,
  smTree,
  smLawNewsTree,

  MainMenuDomainInterfaces
  ;

type
  TnsQueryHistory = class(TvcmInterfaceList)
  {* - содержит историю запросов. }
  private
    f_MaxCount  : Integer;
    f_QueryType : TQueryType;
  private
  // property methods
    function pm_GetQueryNode(const aIndex : Integer) : InsQueryNode;
      {-}
  public
  // public methods
    constructor Create(const aMaxCount  : Integer;
                       const aQueryType : TQueryType);
      reintroduce;
      virtual;
      {-}
    procedure LoadQueries;
      {-}
  public
  // public properties
    property Items[const aIndex : Integer] : InsQueryNode
      read pm_GetQueryNode;
      Default;
      {* - получить обертку запроса. }
  end;//TnsQueryHistory

  TQHRec = record
   rH : TnsQueryHistory;
  end;//TQHRec

  TnsTreeStyleManager = class(TvcmBase)
  {* - менеджер стилей деревьев для основного меню. }
  private
  // fields
    f_MainMenuColor : TColor;
    f_NewSchool     : Boolean;
  private
  // methods
    procedure TreeGetItemStyle(Sender             : TObject;
                               aItemIndex         : Integer;
                               const aFont        : Il3Font;
                               var aTextBackColor : TColor;
                               var aItemBackColor : TColor;
                               var aVJustify      : TvtVJustify);
      {-}
    function TreeGetItemImage(Sender      : TObject;
                              Index       : Integer;
                              var aImages : TCustomImageList): Integer;
      {-}
  public
  // methods
    procedure Init(const aTree: TeeTreeView);
      {-}
    constructor Create(const aMainMenuColor: TColor;
                       aNewSchool : Boolean);
      reintroduce;
      {-}
  end;//TnsTreeStyleManager

  TnsLastOpenDocsManager = class(TvcmBase)
  {* - менеджер дерева последних открытых документов. }
  private
  // fields
    f_MainMenuColor : TColor;
    f_NewSchool     : Boolean;
  private
  // methods
    function GetItemCursor(aSender : TObject;
                           aIndex  : Integer): TCursor;
      {-}
    procedure ActionElement(Sender : TObject;
                            Index  : Integer);
      {-}
    procedure GetItemStyle(Sender             : TObject;
                           aItemIndex         : Integer;
                           const aFont        : Il3Font;
                           var aTextBackColor : TColor;
                           var aItemBackColor : TColor;
                           var aVJustify      : TvtVJustify);
      {-}
    function GetItemTextHint(Sender : TObject;
                             Index  : Integer): Il3CString;
      {-}

    procedure AllowHotTruck(Sender: TObject; anIndex: Integer; var Allow: Boolean);
      {-}

    function IsBookmark(const aNode: Il3SimpleNode): Boolean;
      {-}
    procedure Init(const aTree: TnscTreeViewHotTruck);
      {* - инициализировать дерево последних открытых. }
  public
  // methods
    constructor Create(const aMainMenuColor : TColor;
                       const aTree          : TnscTreeViewHotTruck;
                       aNewSchool : Boolean);
      reintroduce;
      {-}
  end;//TnsLastOpenDocsManager

function nsMakeMainMenuCaption: Il3CString;
  {* - название заголовка для основного меню. }
function nsMakeQueryStr(var aBuf      : TQHRec;
                        aIndex        : Integer;
                        aHint         : Boolean = False) : Il3CString;
  {* - название заголовка для поисков. }
function nsScrollMainMenu(const aWindow : TScrollingWinControl;
                          var Message   : TWMMouseWheel): Boolean;
  {* - прокрутить меню. }

const
 c_mmTreeColor = clWhite;
   {* - основной цвет дереве, не синий. }
 c_mmSecondItemColor   = $00F2F2F2;
   // - цвет второго элемента в дереве, списке;

implementation

uses
  Windows,
  SysUtils,
  StdCtrls,
  Math,
  ShellAPI,

  l3Chars,
  l3String,
  l3ControlsTypes,

  afwFacade,

  OvcConst,

  evStyleTableSpy,

  eeNode,

  BaseTypesUnit,
  LoggingUnit,

  bsUtils,

  nsOpenUtils,
  nsConst,
  nsUtils,
  nsLogEvent,

  MainMenuNewRes,
  StdRes,
  DataAdapter,
  nsRubricatorCache,
  nsQueryNode
  ;

type
 TnsOpenDocumentFromHistoryEvent = class(TnsLogEvent)
  class procedure Log(const aDoc: IDocument);
 end;

//{$Include afwApplicationDataUpdate.imp.pas}

function nsScrollMainMenu(const aWindow : TScrollingWinControl;
                          var Message   : TWMMouseWheel): Boolean;
  {* - прокрутить меню. }
const
 c_Delta = 10;
var
 l_Rect   : TRect;
 l_Index  : Integer;
 l_Lister : TvtLister;

 procedure lpScroll;
 var
  l_Delta : Integer;
 begin
  with Message, aWindow.VertScrollBar do
  begin
   // Определим приращение
   if WheelDelta < 0 then
    l_Delta := c_Delta
   else
    l_Delta := - c_Delta;
   // Сместимся если не выходим за пределы
   if (Position + l_Delta >= 0) and (Position + l_Delta <= Range) then
    Position := Position + l_Delta
   else
   // Смещаемся к началу или к концу
   if Message.WheelDelta > 0 then
    Position := 0
   else
    Position := Range;
  end;//with Message, aWindow.VertScrollBar do
 end;//lpScroll

begin
 Result := True;
 // Видима вертикальная полоса прокрутки
 with aWindow do
  if VertScrollBar.Visible then
   for l_Index := 0 to Pred(ComponentCount) do
    if (Components[l_Index] is TvtLister) or
     (Components[l_Index] is TeeTreeView) then
    begin
     l_Lister := TvtLister(Components[l_Index]);
     Windows.GetWindowRect(l_Lister.Handle, l_Rect);
     // Колесо используется списком, который имеет вертикальную полосу прокрутки
     if PtInRect(l_Rect, Point(Message.XPos, Message.YPos)) then
     begin
      Result := not l_Lister.IsVScrollVisible;
      Break;
     end;//if PtInRect(l_Rect, Point(Message.XPos, Message.YPos)) then
    end;//if (Components[l_Index] is TnscLister)..
 if Result then
  lpScroll;
end;//nsScrollMainMenu

function nsMakeQueryStr(var aBuf      : TQHRec;
                        aIndex        : Integer;
                        aHint         : Boolean = False) : Il3CString;
begin
 Result := nil;
 if Assigned(aBuf.rH) then
 begin
  if (aBuf.rH.Count = 0) then
  begin
   // Выводим название элемента, но не показываем hint
   if not aHint then
    Result := vcmCStr(str_NotQueries);
  end
  else
   with aBuf.rH.Items[aIndex] do
    if not aHint then
     Result := nsCStr(Name)
       {$IfDef mmQueryHistoryUseColumns}
       + #9 + IntToStr(DocCount)
       {$EndIf mmQueryHistoryUseColumns}
    else
     Result := vcmFmt(str_QueryHintFrmt, [DocCount]);
 end;//aBuf.rH
end;

function nsMakeMainMenuCaption: Il3CString;
  {* - название заголовка для основного меню. }

 function lp_MakeDate: Il3CString;
 begin
  with DefDataAdapter.CurrentBaseDate do
  try
   Result := nsCStr(nsDateToStr(EncodeDate(rYear, rMonth, rDay)));
  except
   on EConvertError do
   begin
    Result := nsCStr('');
    Assert(False);
   end;//on EConvertError do
  end;//try..except
 end;//lp_MakeDate

 function lp_MakeComplectName: Il3CString;
 begin
  Result := l3RTrim(DefDataAdapter.ComplectName, [cc_Dot]);
   // - отрежем точку в конце названия комплекта, подготовим к использованию в
   //   str_SimpleMainMenuCaptionF;
 end;//lp_MakeComplectName

begin
  Result := vcmFmt(str_SimpleMainMenuCaptionF,
   [lp_MakeComplectName, lp_MakeDate]);
end;//nsMakeMainMenuCaption

{ TnsQueryHistory }

procedure TnsQueryHistory.LoadQueries;
var
 l_Index : Integer;
 l_List  : IQueryList;
 l_Item  : IQuery;
begin
 Clear;
 try
  l_List := TdmStdRes.MakeWorkJournal.MakeQueryHistory(f_QueryType, f_MaxCount);
  if Assigned(l_List) then
   for l_Index := 0 to Pred(l_List.Count) do
   begin
    l_List.pm_GetItem(l_Index, l_Item);
    Add(TnsQueryNode.Make(l_Item));
   end;
 except
  // в истории запросов нет
  on ECanNotFindData do 
 end;
end;

constructor TnsQueryHistory.Create(const aMaxCount  : Integer;
                                   const aQueryType : TQueryType);
begin
 inherited Create;
 f_MaxCount := aMaxCount;
 f_QueryType := aQueryType;
end;

function TnsQueryHistory.pm_GetQueryNode(const aIndex : Integer) : InsQueryNode;
begin
 Supports(inherited Items[aIndex], InsQueryNode, Result);
end;

{ TnsTreeStyleManager }

function TnsTreeStyleManager.TreeGetItemImage(Sender      : TObject;
                                              Index       : Integer;
                                              var aImages : TCustomImageList): Integer;
begin
 Result := vtItemWithoutImage;
end;//TreeGetItemImage

procedure TnsTreeStyleManager.TreeGetItemStyle(Sender             : TObject;
                                               aItemIndex         : Integer;
                                               const aFont        : Il3Font;
                                               var aTextBackColor : TColor;
                                               var aItemBackColor : TColor;
                                               var aVJustify      : TvtVJustify);
  {-}
var
 l_Node : Il3SimpleNode;
begin
 if not f_NewSchool then
  aFont.ForeColor := f_MainMenuColor
 else
  aFont.ForeColor := TvtCustomOutliner(Sender).Font.Color;
 aVJustify := vt_vjCenter;
 l_Node := TeeTreeView(Sender).GetNode(aItemIndex);
 try
  if f_NewSchool then
  begin
   aTextBackColor := c_mmTreeColor;
   aItemBackColor := aTextBackColor;
  end//l_Node <> nil
  else
  if (l_Node <> nil) and ((Succ(l_Node.IndexInParent) mod 2) = 1) then
  begin
   aTextBackColor := c_mmTreeColor;
   aItemBackColor := aTextBackColor;
  end//l_Node <> nil
  else
  begin
   aTextBackColor := c_mmSecondItemColor;
   aItemBackColor := aTextBackColor;
  end;//l_Node <> nil
 finally
  l_Node := nil;
 end;//try..finally
end;//TreeGetItemStyle

procedure TnsTreeStyleManager.Init(const aTree: TeeTreeView);
begin
  with aTree do
  begin
   ScrollStyle := ssNone;
   EditOptions := EditOptions - [eoItemExpand];
   ActionElementMode := l3_amSingleClick;
   OnGetItemStyle := TreeGetItemStyle;
   // В данный момент дерево не поддерживает опцию voShowInterRowSpace для
   // однострочных элементов дерева, поэтому разряжаем элементы сами:
   if f_NewSchool then
    ViewOptions := ViewOptions - [voShowInterRowSpace]
   else
    ViewOptions := ViewOptions + [voShowInterRowSpace];
   OnGetItemImage := TreeGetItemImage;
   Color := c_mmTreeColor;
 end;//with aTree do
end;//Init

constructor TnsTreeStyleManager.Create(const aMainMenuColor: TColor;
                                       aNewSchool : Boolean);
begin
 inherited Create;
 f_MainMenuColor := aMainMenuColor;
 f_NewSchool := aNewSchool;
end;//Create

{ TnsLastOpenDocsManager }

function TnsLastOpenDocsManager.GetItemCursor(aSender : TObject;
                                              aIndex  : Integer): TCursor;
  {-}
begin
 if not IsBookmark(TnscTreeViewHotTruck(aSender).GetNode(aIndex)) then
  Result := crDefault
 else
  Result := crHandPoint;
end;//GetItemCursor

function TnsLastOpenDocsManager.GetItemTextHint(Sender : TObject;
                                                Index  : Integer): Il3CString;
  {-}
var
 l_Node : Il3SimpleNode;
 l_Book : InsJournalBookmarkNode;
 l_N    : Il3CString;
begin
 Result := nil;
 l_Node := TnscTreeViewHotTruck(Sender).GetNode(Index);
 try
  if Supports(l_Node, InsJournalBookmarkNode, l_Book) then
  try
   l_N := l_Book.DocName;
   if not l3Same(l_N, l_Node.Text) then
    Result := l_N;
  finally
   l_Book := nil;
  end;//try..finally
 finally
  l_Node := nil;
 end;//try..finally
end;

procedure TnsLastOpenDocsManager.GetItemStyle(Sender             : TObject;
                                              aItemIndex         : Integer;
                                              const aFont        : Il3Font;
                                              var aTextBackColor : TColor;
                                              var aItemBackColor : TColor;
                                              var aVJustify      : TvtVJustify);
  {-}
begin
 aVJustify := vt_vjCenter;
 if not f_NewSchool then
  aFont.ForeColor := f_MainMenuColor
 else
  aFont.ForeColor := TnscTreeViewHotTruck(Sender).Font.Color;
 if f_NewSchool then
  aItemBackColor := c_mmTreeColor
 else
 begin
  if aItemIndex mod 2 = 1 then
   aItemBackColor := c_mmSecondItemColor
  else
   aItemBackColor := c_mmTreeColor;
 end;//f_NewSchool
 aTextBackColor := aItemBackColor;
end;//GetItemStyle

procedure TnsLastOpenDocsManager.ActionElement(Sender : TObject;
                                               Index  : Integer);
  {-}
var
 l_Node     : Il3SimpleNode;
 l_MyNode   : InsJournalBookmarkNode;
 l_Document : IDocument;
begin
 l_Node := TnscTreeViewHotTruck(Sender).GetNode(Index);
 try
  if IsBookmark(l_Node) and Supports(l_Node, InsJournalBookmarkNode, l_MyNode) then
  try
   l_Document := TdmStdRes.SafeOpenDocument(l_MyNode.Bookmark);
   // Регистрируем открытие документа из истории:
   if l_Document <> nil then
   try
    if l_Document.GetDocType in [DT_DOCUMENT,
                                 DT_ACTUAL_ANALYTICS,
                                 DT_ACTUAL_ANALYTICS_CONTENTS]  then
     TnsOpenDocumentFromHistoryEvent.Log(l_Document);
   finally
    l_Document := nil;
   end;//try..finally
  finally
   l_MyNode := nil;
  end;//try..finally
 finally
  l_Node := nil;
 end;//try..finally
end;//ActionElement

function TnsLastOpenDocsManager.IsBookmark(const aNode : Il3SimpleNode) : Boolean;
var
 l_Book: InsJournalBookmarkNode;
begin
 Result := Supports(aNode, InsJournalBookmarkNode, l_Book) and Assigned(l_Book.Bookmark);
end;

procedure TnsLastOpenDocsManager.Init(const aTree: TnscTreeViewHotTruck);
begin
 with aTree do
 begin
  OnActionElement := ActionElement;
  OnGetItemStyle := GetItemStyle;
  OnGetItemTextHint := GetItemTextHint;
  OnGetItemCursor := GetItemCursor;
  OnAllowHotTruck := AllowHotTruck;
 end;//with aTree do
end;//Init

constructor TnsLastOpenDocsManager.Create(const aMainMenuColor : TColor;
                                          const aTree          : TnscTreeViewHotTruck;
                                          aNewSchool : Boolean);
  //reintroduce;
  {-}
begin
 inherited Create;
 f_MainMenuColor := aMainMenuColor;
 f_NewSchool := aNewSchool;
 Init(aTree);
end;//Create

procedure TnsLastOpenDocsManager.AllowHotTruck(Sender: TObject;
  anIndex: Integer; var Allow: Boolean);
begin
 Allow := IsBookmark(TnscTreeViewHotTruck(Sender).GetNode(anIndex))
end;

{ TnsOpenDocumentFromHistoryEvent }

class procedure TnsOpenDocumentFromHistoryEvent.Log(const aDoc: IDocument);
var
 l_Data: ILogEventData;
begin
 l_Data := MakeParamsList;
 l_Data.AddObject(aDoc);
 GetLogger.AddEvent(LE_OPEN_DOCUMENT_FROM_HISTORY, l_Data);
end;

end.
