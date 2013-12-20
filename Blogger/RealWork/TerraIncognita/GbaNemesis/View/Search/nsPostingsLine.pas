unit nsPostingsLine;

// $Id: nsPostingsLine.pas,v 1.8 2013/04/24 09:35:57 lulin Exp $

// $Log: nsPostingsLine.pas,v $
// Revision 1.8  2013/04/24 09:35:57  lulin
// - портируем.
//
// Revision 1.7  2011/11/01 10:32:58  lulin
// {RequestLink:296621528}
//
// Revision 1.6  2011/10/31 15:33:26  lulin
// {RequestLink:294589844}
//
// Revision 1.5  2011/06/28 19:19:54  lulin
// {RequestLink:254944102}.
//
// Revision 1.4  2011/06/28 17:54:56  lulin
// {RequestLink:254944102}.
//
// Revision 1.3  2011/06/23 15:31:33  lulin
// {RequestLink:254944102}.
//
// Revision 1.2  2011/01/27 12:16:44  lulin
// {RequestLink:248195582}.
// - избавляемся от развесистых макарон.
//
// Revision 1.1  2010/07/02 18:20:18  lulin
// {RequestLink:207389954}.
// - переносим на модель КЗ.
//
// Revision 1.8  2010/05/12 08:14:04  oman
// - new: {RequestLink:210436767}
//
// Revision 1.7  2010/05/11 11:40:42  oman
// - new: {RequestLink:210436767}
//
// Revision 1.6  2010/05/11 10:28:39  oman
// - new: Мультудаление {RequestLink:210436767}
//
// Revision 1.5  2009/10/21 17:43:39  lulin
// - раскладываем модули по правильным местам.
//
// Revision 1.4  2009/10/21 16:26:11  lulin
// - переносим на модель ноды оболочки.
//
// Revision 1.3  2009/10/15 09:06:35  oman
// - new: Чистим устаревшие методы доступа {RequestLink:122652464}
//
// Revision 1.2  2009/09/28 16:16:19  lulin
// - вызов диалога сохранения объекта в папки переведён на фабрику.
//
// Revision 1.1  2009/09/15 16:33:04  lulin
// - основной модуль мониторингов полностью перенесён на модель.
//
// Revision 1.87  2009/07/31 17:30:05  lulin
// - убираем мусор.
//
// Revision 1.86  2009/02/20 10:12:53  lulin
// - чистка комментариев.
//
// Revision 1.85  2009/02/10 19:03:32  lulin
// - <K>: 133891247. Вычищаем морально устаревший модуль.
//
// Revision 1.84  2009/02/09 13:57:05  lulin
// - <K>: 133891247. Выделяем интерфейсы для ПРАЙМа.
//
// Revision 1.83  2009/02/09 13:21:22  lulin
// - <K>: 133891247.
//
// Revision 1.82  2009/01/15 07:17:54  oman
// Вычищаем 5x
//
// Revision 1.81  2009/01/14 14:08:01  oman
// Вычищаем 5x
//
// Revision 1.80  2009/01/14 13:54:58  oman
// Вычищаем 5x
//
// Revision 1.79  2008/12/16 06:39:34  oman
// - fix: Снимаем ограничение на количество лент (К-128288740)
//
// Revision 1.78  2008/06/19 05:02:50  mmorozov
// - change comment;
//
// Revision 1.77  2008/06/19 05:01:23  mmorozov
// - не собирались;
//
// Revision 1.76  2008/06/18 11:20:14  oman
// - fix: Пользуем более правильное исключение (cq29204)
//
// Revision 1.75  2008/03/20 10:01:57  oman
// - fix: Не падаем в случае отсутствия значений
//
// Revision 1.74  2008/03/19 10:34:09  mmorozov
// - bugfix: при удалении рассылки используем идентфикатор, а не порядковый нормер рассылки (CQ: OIT5-28599);
//
// Revision 1.73  2008/03/11 13:28:47  mmorozov
// - change: метод сохранения рассылок для файл сервера переехал на PrimeManager;
//
// Revision 1.72  2008/03/07 12:51:38  mmorozov
// - обработка DuplicateName;
//
// Revision 1.71  2008/02/29 05:30:36  mmorozov
// - new: перенос запросов ПРАЙМ с папок в отдельное хранилище;
//
// Revision 1.70  2008/01/10 07:23:41  oman
// Переход на новый адаптер
//
// Revision 1.68.2.2  2007/12/11 09:32:18  mmorozov
// - MERGE WITH HEAD;
//
// Revision 1.68.2.1  2007/11/23 10:15:35  oman
// Перепиливаем на новый адаптер
//
// Revision 1.69  2007/12/11 06:13:00  mmorozov
// - change: в рамках рефакторинга по CQ: OIT5-27823;
//
// Revision 1.68  2007/11/01 13:16:50  oman
// - fix: Создаваемую ленту могли трактовать как модифицируемую
// cleanup;
//
// Revision 1.67  2007/08/03 12:00:38  mmorozov
// - bugfix: при экспорте списка рассылок если пользователь отказался от сохрания текущей все равно экспортируем имеющиеся (CQ: OIT5-26067);
// - new behaviour: если из списка рассылок удаляется текущая редактируемая рассылка, то очищаем карточку, при этом никаких сообщений о сохранении не выдаем;
//
// Revision 1.66  2007/05/03 08:15:49  mmorozov
// - new behaviour: для сетевой (однопользовательской и многопользовательской) версии системы снято ограничение на количество рассылок (CQ: OIT5-24639);
// - opt: разрешенное количество рассылок получаем один раз;
//
// Revision 1.65  2007/04/13 07:24:28  oman
// - fix: Неправильное сравнение строк
//
// Revision 1.64  2007/04/05 11:48:17  lulin
// - bug fix: не собирались мониторинги.
//
// Revision 1.63  2007/03/20 11:38:13  lulin
// - не теряем кодировку при присваивании заголовков форм и контролов.
//
// Revision 1.62  2007/03/16 16:57:06  lulin
// - избавляемся от излишнего копирования и преобразования строк.
//
// Revision 1.61  2007/03/01 06:00:53  mmorozov
// - локализация строк;
//
// Revision 1.60  2007/02/16 18:06:12  lulin
// - избавляемся от стандартного строкового типа.
//
// Revision 1.59  2007/02/13 14:33:21  lulin
// - cleanup.
//
// Revision 1.58  2007/02/13 10:10:36  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.57  2007/02/07 18:05:15  lulin
// - bug fix: не собирались мониторинги.
//
// Revision 1.56  2007/02/05 09:07:24  lulin
// - bug fix: не собирались мониторинги.
//
// Revision 1.55  2006/11/17 13:13:56  mmorozov
// MERGE WITH B_NEMESIS_6_4 ( bugfix: при измении тематик (добавлении/удалении/изменении), в процессе работы с ПРАЙМ, автоматом не вызывался метод выливки папок (CQ: OIT5-23672));
//
// Revision 1.54  2006/11/03 09:45:52  oman
// Merge with B_NEMESIS_6_4_0
//
// Revision 1.53.2.1  2006/10/25 07:29:58  oman
// Продолжаем избавлятся от StdStr
//
// Revision 1.53  2006/09/18 09:08:50  oman
// - fix: Корректная проверка правильности ввода
// - fix: Корректное ограничение на длину полей
// cleanup (ненужные операции/сообщения/проверки)
//
// Revision 1.52  2006/04/21 12:12:17  dinishev
// Bug fix: была возможность сохранить запрос в утилите заказа рассылки с пустым именем
//
// Revision 1.51  2006/04/19 13:34:38  oman
// - new beh: перекладываем StdStr в _StdRes
//
// Revision 1.50  2006/04/19 09:07:45  dinishev
// Cleanup
//
// Revision 1.49  2006/04/03 15:55:51  dinishev
// _CleanUp
//
// Revision 1.48  2006/03/24 12:47:20  mmorozov
// no message
//
// Revision 1.47  2006/03/21 14:10:41  mmorozov
// - собирася проект;
//
// Revision 1.46  2006/03/21 10:18:13  oman
// - new beh: Перекладываем все текстовые константы в три места (StdStr, DebugStr и SystemStr)
//
// Revision 1.45  2006/03/17 13:52:13  oman
// - change: Избавляемся от %s в сообщениях, которые приездают не с адаптера
//
// Revision 1.44  2005/10/25 17:35:46  dinishev
// Bug fix: не компилировалось.
//
// Revision 1.43  2005/10/25 12:45:57  demon
// - new behavior: обработаны исключения ECanNotSave и ENotSaved при вызове SaveTo
//
// Revision 1.42  2005/10/11 17:07:55  dinishev
// Bug fix: AV при попытке сохранить редактируемый запрос в F1Prime
//
// Revision 1.41  2005/10/04 12:15:37  demon
// - new behavior: У метода SaveTo появился out параметр, возвращающий ноду получившуюся в результате сохранения
//
// Revision 1.40  2005/10/04 06:17:00  demon
// - fix: вызовы SaveAs и Save заменены на SaveTo
//
// Revision 1.39  2005/10/03 16:58:43  dinishev
// Comments
//
// Revision 1.38  2005/09/30 12:04:50  dinishev
// Bug fix: изживаем интерфейс _IBaseEntity
//
// Revision 1.37  2005/08/29 16:10:28  demon
// - new behavior: Операция Open на ноде теперь возвращает IUnknown
//
// Revision 1.36  2005/08/23 13:43:47  dinishev
// Нотификация об изменении текста в поле редактора
//
// Revision 1.35  2005/08/18 13:01:53  dinishev
// Подправлены названия тегов
//
// Revision 1.34  2005/07/22 15:13:24  dinishev
// Новая EVD
//
// Revision 1.33  2005/07/07 09:25:59  cyberz
// удалили из мониторингов не нужный сиквенс
//
// Revision 1.32  2005/06/30 07:48:12  cyberz
// READY FOR TIE-TEMPLATE GENERATION
//
// Revision 1.31  2005/05/19 08:15:32  dinishev
// Возмжность создания тестовой версии утилиты для ГК (без проверки ограничения количества рассылок)
//
// Revision 1.30  2005/04/21 14:32:26  dinishev
// Comments
//
// Revision 1.29  2005/04/21 14:07:29  dinishev
// New property: NeedSave
//
// Revision 1.28  2005/04/21 13:09:09  dinishev
// функция GetName4Query переехала в public
//
// Revision 1.27  2005/04/12 11:28:50  dinishev
// После ожидания 30 сек. после предложния о выключении сервера, появлялось предложение сохранить рассылку.
//
// Revision 1.26  2005/04/05 14:34:46  dinishev
// minor changes
//
// Revision 1.25  2005/04/01 11:32:13  dinishev
// не всегда восстанавливалось значение последнего загруженного каталога.
//
// Revision 1.24  2005/04/01 08:55:22  dinishev
// Вернул проверки на изменение списка, но без сохранения в настройки.
//
// Revision 1.23  2005/03/31 14:01:25  dinishev
// Сообщение о выборе каталога для сохранения списка рассылок, выключение проверок на изменение списка - сразу подымаем диалог при выходе (если только список не был пуст).
//
// Revision 1.22  2005/03/31 12:28:01  dinishev
// Автоматическая загрузка последней рассылки.
//
// Revision 1.21  2005/03/29 12:40:05  dinishev
// Число рассылок для многопользовательской и внутренней версии увеличено до 5
//
// Revision 1.20  2005/03/29 09:08:15  dinishev
// Bug fix: AV при попытке закрытия приложения из предварительного просмотра.
//
// Revision 1.19  2005/03/28 10:37:52  dinishev
// Обработка попытки добавить рассылку с тем же именем.
//
// Revision 1.18  2005/03/25 14:36:38  dinishev
// New method: SaveOrCreateQuery
//
// Revision 1.17  2005/03/25 12:15:42  dinishev
// New methods: GetName4Query, IsMaximumPostings & Comments & Изменение названия рассылки в списке при редактировании
//
// Revision 1.16  2005/03/22 15:11:22  dinishev
// События об изменеии, _CleanUp & максимальное число рассылок для внутреннего комплекта.
//
// Revision 1.15  2005/03/21 17:37:52  dinishev
// Cleanup
//
// Revision 1.14  2005/03/21 17:32:12  dinishev
// Обработка типа комплекта.
//
// Revision 1.13  2005/03/21 17:22:32  dinishev
// Bug fix: не запоминался флаг "изменен".
//
// Revision 1.12  2005/03/21 16:43:45  dinishev
// Корректный подсчет количества рассылок.
//
// Revision 1.11  2005/03/18 15:10:22  dinishev
// Ограничение количества тематик для комплекта.
//
// Revision 1.10  2005/03/18 13:13:48  dinishev
// Запоминание последнего каталога, куда было сделано сохранение и флага изменения списка рассылок
//
// Revision 1.9  2005/03/17 15:31:18  dinishev
// Cleanup
//
// Revision 1.8  2005/03/16 11:10:55  dinishev
// bug fix: неправильно выставлялся флаг Changed для пустых списков + комментарии
//
// Revision 1.7  2005/03/15 17:17:26  dinishev
// Remove class TnsPostingsLine. Флаг изменения списка рассылок.
//
// Revision 1.6  2005/03/15 11:26:07  dinishev
// Перевод поиска папки "Мои Документы' по флагу вместо заголовка
//
// Revision 1.5  2005/03/14 16:12:36  dinishev
// Удаление рассылки
//
// Revision 1.4  2005/03/11 10:16:46  dinishev
// Временно включен поиск папки "Мои документы" по заголовку.
//
// Revision 1.3  2005/03/11 08:15:59  dinishev
// new interface: InsPrimeNode & cleanup
//
// Revision 1.2  2005/03/04 15:28:45  dinishev
// Переделка дерева списка рассылок
//
// Revision 1.1  2005/03/01 14:22:56  dinishev
// Интерфейс InsPostingsLine - спискок рассылок + реализация
//

{$Include nsDefine.inc }
//{$DEFINE TESTF1PRIME} //Вырубает проверку ограничения количества рассылок для тестовой версии.

interface

uses
  l3Interfaces,
  l3Base,
  l3Tree,
  l3Tree_TLB,

  vcmBase,

  eeInterfaces,

  nsQueryInterfaces,
  nsQueryAttribute,

  vcmInterfaces,
  vcmStringList,

  BaseTreeSupportUnit,
  SearchUnit,
  PrimeUnit,
  IOUnit
  ;

type
  TnsAddEvent = procedure (const aIndex: Integer) of Object;
  TnsCaptionChangeEvent = procedure (const aIndex: Integer; const aNewCaption: Il3CString) of Object;

  TnsPostingsTree = class(TvcmCacheableBase)
  private
    f_Root          : Il3Node;
    f_Changed       : Boolean;
    f_MgrSearch     : Pointer;//IqaMgrSearch;
    f_LastCatalog   : Il3CString;
    f_OnEditNode    : TnsCaptionChangeEvent;
    f_OnAddNode     : TnsAddEvent;
    f_OnDelNode     : TnsAddEvent;
    f_EditNodeIndex : Integer;
    f_OldModifed    : Boolean;
    f_Closed        : Boolean;
    f_NeedLoad      : Boolean;
    f_ServerDown    : Boolean;
  private
  // property methods
    function pm_GetCount: Integer;
      {-}
    function  pm_GetRoot: Il3Node;
      {-}
    procedure LoadChilds;
      {* - загружает список рассылок. }
    procedure LoadSettings;
      {* - загружает настройки для дерева. }
    procedure SetChanged(const Value: Boolean);
      {-}
    procedure SetMgrSearch(const Value: IqaMgrSearch);
      {-}
    function  GetLastCatalog: Il3CString;
    procedure SetLastCatalog(const Value: Il3CString);
      {-}
    function GetChanged: Boolean;
      {-}
    procedure SetEditNodeIndex(const Value: Integer);
      {-}
    function Get_MgrSearch: IqaMgrSearch;
      {-}
    function pm_GetHasChildren: Boolean;
      {-}
  private
  // methods
    function MakeCurrentPrimeName: IString;
      {-}
  protected
  // methods
    property Count: Integer
      read pm_GetCount;
      {* - количество тематик. У TnsCacheableNode.ThisChildrenCount справшивать
           нельзя, значение кешируется. На AdapterNode тоже справшивать не
           хочется, вдруг там кроме тематик ещё какие-нибудь узлы появятся.

           Нужно сделать, чтобы TnsPrimeNode наследовался от класса, на
           котором не кешируется ThisChildrenCount. }
  public
  // methods
    constructor Create;
     reintroduce;
     {-}
    function SaveQuery2Adapter(const aQuery : IQuery): Boolean;
      {* - сохраняет запрос в базу. }
    procedure SaveXMLForServer;
      {* - если новостаная лента была изменена нужно вылить папки для
           файл-серверной версии системы. }
    procedure ChangeCaption;
      {* - передает дереву новое значение _Caption редактируемого узла. }
    procedure DeletePosting(const aNode: IeeNode);
      {* - удаляет рассылку из списка рассылок (одновременно на адаптере и дереве
           в оболочке). }
    procedure DeleteSelectedPostings(const aTreeView: IeeTreeView);
      {-}
    procedure ExportSelected(const aTreeView: IeeTreeView; const aFileName: Il3CString);
      {-}
    procedure Cleanup;
      override;
      {-}
    function GetFirstQuery: IQuery;
      {* - возвращает запрос для первой рассылки в списке. }
    function SaveOrCreateQuery: Boolean;
      {* - чтобы не мотаться по формам, сделан некоторый реверанс в сторону
           "ручного" программирования, тем более, что все данные для этого есть. }
  public
  // properties
    property Root: Il3Node
      read pm_GetRoot;
      {* - указатель на корневой узел дерева, где хранятся списки рассылок списка
           рассылок. Фактически "Мои документы" для пользователя
           "_predefined_data". }
    property DataChanged: Boolean
      read GetChanged
      write SetChanged;
      {* - флаг изменения окна дерева (удаление или добавление узлов). Если
           пустое, то флаг автоматически выставляется в False. Реально нужен для
           проверки перед сохранением списка рассылки на диск. }
    property MgrSearch: IqaMgrSearch
      read Get_MgrSearch
      write SetMgrSearch;
      {* - указатель на менеджер КЗ заказа рассылки. Считается, что он всегда один. }
    property LastCatalog: Il3CString
      read GetLastCatalog
      write SetLastCatalog;
      {* - каталог, в который последний раз производилось сохранение. }
    property EditNodeIndex: Integer
      read f_EditNodeIndex
      write SetEditNodeIndex;
      {* - индекс редактируемого элемента в дереве (для которого открыта КЗ).
           Может несоответствовать выделенному. }
    property OldModifed: Boolean
      read f_OldModifed
      write f_OldModifed;
      {* - кэширование флага изменения параметров рассылки. }
    property Closed: Boolean
      read f_Closed
      write f_Closed;
      {* - признак того, что приложение закрывается. }
    property NeedLoad: Boolean
      read f_NeedLoad;
      {* - флаг для загрузки данных из первой рассылки в КЗ. Флаг сбрасывается в
           функции GetFirstQuery. }
    property ServerDown: Boolean
      read f_ServerDown
      write f_ServerDown;
      {* - флаг закрытия приложения по выключению сервера. }
    property HasChildren: Boolean
      read pm_GetHasChildren;
      {* - наличие новостных лент. }
  public
  // _events
    property OnAddNode: TnsAddEvent
      read f_OnAddNode
      write f_OnAddNode;
      {* - обработчик события добавления узла в дерево. }
    property OnDelNode: TnsAddEvent
      read f_OnDelNode
      write f_OnDelNode;
      {* - обработчик события удаления узла из дерева. }
    property OnEditNode: TnsCaptionChangeEvent
      read f_OnEditNode
      write f_OnEditNode;
      {* - обработчик изменения названия узла. }
  end;//TnsPostingsTree

implementation

uses
 SysUtils,
 Dialogs,

 l3InterfacesMisc,
 l3String,
 l3Nodes,

 afwFacade,

 eeTreeMisc,

 DataAdapter,

 vcmForm,

 evQueryCardInt,

 nsTypes,
 nsQueryUtils,
 nsConst,
 nsNodes,

 BaseTypesUnit,
 ComplectUnit,
 DynamicTreeUnit,
 FoldersUnit,

 StdRes,

 PrimeDomainInterfaces,
 nsPrimeNode,

 vcmMessagesSupport,

 l3MessageID
 ;

{ TnsPostingsTree }

procedure TnsPostingsTree.SaveXMLForServer;
  {* - если новостаная лента была изменена нужно вылить папки для
       файл-серверной версии системы. }
var
 l_MayGo: Boolean;
begin
 if DataChanged then
 begin
  // сохранение XML на стороне сервера приложений
  l_MayGo := False;
  while not l_MayGo do
  begin
   try
    DefDataAdapter.PrimeManager.SharePrimeForFileServer;
    l_MayGo := True;
   except
    on EUnknownExportError do
     l_MayGo := not vcmAsk(qr_Save2ServerPostList);
   end;
  end;
 end;
end;

function TnsPostingsTree.MakeCurrentPrimeName: IString;
begin
  Result := nsIStr(MgrSearch.GetName4Query);
end;//MakeCurrentPrimeName

function TnsPostingsTree.SaveQuery2Adapter(const aQuery : IQuery): Boolean;
var
 l_NewPrime: IPrime;
begin
 Result := False;
 try
  DefDataAdapter.PrimeManager.Add(MakeCurrentPrimeName, aQuery, l_NewPrime);
  Result := True;
 except
  on EDuplicateName do
  begin
   vcmSay(inf_PostingAlreadyExist);
   Exit;
  end;//EDuplicateName
 end;//try..except
 Root.InsertChild(TnsPrimeNode.Make(l_NewPrime));
 if Assigned(f_OnAddNode) then
  f_OnAddNode(Pred(Self.Count));
 DataChanged := True;
 EditNodeIndex := Root.ThisChildrenCount - 1;
end;

procedure TnsPostingsTree.ChangeCaption;
var
 l_Item : IPrime;
 l_List : IPrimeList;
 l_Name : Il3CString;
begin
 DefDataAdapter.PrimeManager.GetList(l_List);
 Assert(Assigned(l_List));
 try
  l_Name := MgrSearch.GetName4Query;
  l_List.pm_GetItem(f_EditNodeIndex, l_Item);
  l_Item.SetName(nsIStr(l_Name));
  if Assigned(f_OnEditNode) then
   f_OnEditNode(f_EditNodeIndex, l_Name);
 finally
  l_List := nil;
 end;//try..finally
end;

procedure TnsPostingsTree.Cleanup;
begin
 f_LastCatalog := nil;
 f_OnAddNode := nil;
 f_OnDelNode := nil;
 f_Root := nil;
 f_MgrSearch := nil; 
 inherited;
end;

procedure TnsPostingsTree.DeletePosting(const aNode: IeeNode);

 function lp_NodeId: Integer;
 var
  l_Node: InsPrimeNode;
 begin
  if Supports(aNode, InsPrimeNode, l_Node) then
   Result := l_Node.Data.GetId
  else
  begin
   Result := 0;
   Assert(False);
  end;
 end;//lp_NodeIndex

 function lp_NodeIndex: Integer;
 var
  l_Node: Il3Node;
 begin
  if Supports(aNode, Il3Node, l_Node) then
   Result := l_Node.GetNumInParent
  else
  begin
   Result := 0;
   Assert(False);
  end;
 end;//lp_NodeIndex

begin
 DefDataAdapter.PrimeManager.Remove(lp_NodeId);
 if Assigned(f_OnDelNode) then
  f_OnDelNode(lp_NodeIndex);
 aNode.Delete;
 DataChanged := True;
 EditNodeIndex := -1;
end;//DeletePosting

function TnsPostingsTree.GetChanged: Boolean;
begin
 Result := f_Changed;  
end;

function TnsPostingsTree.GetFirstQuery: IQuery;
var
 l_List      : IPrimeList;
 l_FirstNode : IPrime;
begin
 DefDataAdapter.PrimeManager.GetList(l_List);
 try
  if (l_List = nil) or (l_List.Count = 0) then
   Result := nil
  else
  begin
   l_List.pm_GetItem(0, l_FirstNode);
   try
    l_FirstNode.GetQuery(Result);
   finally
    l_FirstNode := nil;
   end;
  end;
 finally
  l_List := nil;
 end;
 f_NeedLoad := False;
end;

function TnsPostingsTree.GetLastCatalog: Il3CString;
begin
 Result := f_LastCatalog;
end;

procedure TnsPostingsTree.LoadChilds;
var
 l_List   : IPrimeList;
 l_Item   : IPrime;
 l_Index  : LongInt;
begin
 DefDataAdapter.PrimeManager.GetList(l_List);
 try
  if Assigned(l_List) and (l_List.Count > 0) then
  begin
   Root.Changing;
   try
    for l_Index := 0 to Pred(l_List.Count) do
    begin
     l_List.pm_GetItem(l_Index, l_Item);
     Root.InsertChild(TnsPrimeNode.Make(l_Item));
    end;//for l_Index := 0 to Pred(l_List.Count) do
    f_NeedLoad := True;
   finally
    Root.Changed;
   end;
  end;
  LoadSettings;    
 finally
  l_List := nil;
 end;
end;

procedure TnsPostingsTree.LoadSettings;
const
 FuckMagic = '-1';
var
 l_Value : Il3CString;
begin
 l_Value := afw.Settings.LoadString(pi_PostingOrder_LastCatalog, FuckMagic);
 if not l3Same(l_Value, FuckMagic) then
  f_LastCatalog := l_Value;
 f_Changed := False;
end;

function TnsPostingsTree.pm_GetRoot: Il3Node;
begin
 if (f_Root = nil) then
 begin
  f_Root := TnsRootNode.Make;
  f_Root.Text := vcmWStr(vcmCStr(str_MonitoringsList));
  LoadChilds;
 end;//f_Root = nil
 Result := f_Root;
end;

function TnsPostingsTree.SaveOrCreateQuery: Boolean;

 function lp_Save: Boolean;
 var
  l_Prime : IPrime;
  l_List  : IPrimeList;
 begin
  Result := False;
  try
   ChangeCaption;
   Result := True;
  except
   on EDuplicateName do
   begin
    vcmSay(inf_PostingAlreadyExist);
    Exit;
   end;//EDuplicateName
  end;//try..except
  DefDataAdapter.PrimeManager.GetList(l_List);
  Assert(Assigned(l_List));
  l_List.pm_GetItem(EditNodeIndex, l_Prime);
  l_Prime.SetQuery(MgrSearch.Query);
  //Количество рассылок не изменилось, но изменилось их содержание.
  DataChanged := True;
  //При закрытии приложения нет смысла выставлять этот флаг.
  if not f_Closed then
   MgrSearch.Modified := False;
 end;

 function lp_New: Boolean;
 begin
  Result := SaveQuery2Adapter(MgrSearch.Query);
  if Result and not f_Closed then
   MgrSearch.Modified := False;
 end;

begin
 try
  MgrSearch.Check;
  Result := True;
 except
  on E: EqaException do
  begin
   if not (E is EqaSilentAbort) then
    vcmShowMessageDlg(Tl3Message_C(nsCStr(E.Message),
                                   'TnsPostingsTree.SaveOrCreateQuery',
                                   mtError));
   Result := False;
   Exit;
  end;//on E: EqaException
 end;//try..except
 if MgrSearch.Save then
  // Пользователь захотел перезаписать
  if (EditNodeIndex <> -1) and vcmAsk(qr_QueryWasSaved) then
   Result := lp_Save
  else
   Result := lp_New
 else
  Result := False;
end;

procedure TnsPostingsTree.SetChanged(const Value: Boolean);
begin
 f_Changed := Value;
end;

procedure TnsPostingsTree.SetEditNodeIndex(const Value: Integer);
begin
 f_EditNodeIndex := Value;
end;

procedure TnsPostingsTree.SetLastCatalog(const Value: Il3CString);
begin
 if not l3Same(f_LastCatalog, Value) then
 begin
  f_LastCatalog := Value;
  afw.Settings.SaveString(pi_PostingOrder_LastCatalog, f_LastCatalog);
 end;//not l3Same(f_LastCatalog.AsWStr, Value)  
end;

procedure TnsPostingsTree.SetMgrSearch(const Value: IqaMgrSearch);
begin
 f_MgrSearch := Pointer(Value);
 //f_MgrSearch := Value;
end;

function TnsPostingsTree.Get_MgrSearch: IqaMgrSearch;
begin
 Result := IqaMgrSearch(f_MgrSearch);
end;

function TnsPostingsTree.pm_GetHasChildren: Boolean;
begin
 Result := f_Root.HasChild;
end;

function TnsPostingsTree.pm_GetCount: Integer;

 procedure CountChild(const aNode: Il3Node);
 begin//CountChild
  Inc(Result);
 end;//CountChild

begin
 if Root.HasChild then
  Root.IterateF(l3L2NA(@CountChild), imOneLevel)
 else
  Result := 0;
end;

constructor TnsPostingsTree.Create;
begin
 inherited Create;
 f_EditNodeIndex := -1;
end;

procedure TnsPostingsTree.DeleteSelectedPostings(const aTreeView: IeeTreeView);

 function lp_Iterate(const anIntf: IeeNode): Boolean;
 begin//lp_Iterate
  Result := False;
  if (aTreeView.NodeFlags[anIntf] and FM_SELECTION) <> 0 then
   DeletePosting(anIntf);
 end;//lp_Iterate

begin
 aTreeView.Tree.IterateF(eeL2NA(@lp_Iterate), 0);
end;

procedure TnsPostingsTree.ExportSelected(const aTreeView: IeeTreeView; const aFileName: Il3CString);
var
 l_List: IKeysList;

 function lp_Iterate(const anIntf: IeeNode): Boolean;
 var
  l_Node: InsPrimeNode;
 begin//lp_Iterate
  Result := False;
  if ((aTreeView.NodeFlags[anIntf] and FM_SELECTION) <> 0) and Supports(anIntf, InsPrimeNode, l_Node) then
   l_List.Add(l_Node.Data.GetId);
 end;//lp_Iterate

begin
 l_List := DefDataAdapter.NativeAdapter.MakeKeysList;
 try
  aTreeView.Tree.IterateF(eeL2NA(@lp_Iterate), 0);

  DefDataAdapter.PrimeManager.SaveListToXml(l_List, nsAStr(aFileName).S);
 finally
  l_List := nil;
 end;//try..finally
end;

end.
