unit eeTreeViewExport;
{* Компонент для экспорта отображения дерева. }

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: eeTreeViewExport - }
{ Начат: 06.02.2003 18:39 }
{ $Id: eeTreeViewExport.pas,v 1.9 2013/07/09 09:15:32 kostitsin Exp $ }

// $Log: eeTreeViewExport.pas,v $
// Revision 1.9  2013/07/09 09:15:32  kostitsin
// [$468039744]
//
// Revision 1.8  2013/04/09 16:49:56  kostitsin
// [$120723452]
//
// Revision 1.7  2013/04/02 19:04:01  kostitsin
// [$120723452] - vtLister
//
// Revision 1.6  2012/06/15 12:26:20  kostitsin
// [$371631792]
//
// Revision 1.5  2011/04/13 10:21:10  lulin
// {RequestLink:259883587}.
//
// Revision 1.4  2011/01/14 15:28:57  lulin
// {RequestLink:248195582}.
// - синхронизируем добавление закладки.
//
// Revision 1.3  2010/12/16 19:06:07  lulin
// {RequestLink:244194233}.
//
// Revision 1.2  2010/07/07 05:16:13  lulin
// {RequestLink:125405732}.
//
// Revision 1.1  2010/04/21 16:52:40  lulin
// {RequestLink:144575972}.
// - переходим к абсолютным путям для включаемых файлов.
//
// Revision 1.3  2010/03/02 13:34:43  lulin
// {RequestLink:193823544}.
//
// Revision 1.2  2010/03/01 16:45:13  lulin
// {RequestLink:193823544}.
//
// Revision 1.1  2009/09/14 11:28:08  lulin
// - выводим пути и для незавершённых модулей.
//
// Revision 1.137  2009/01/22 08:25:43  lulin
// - <K>: 135605082.
//
// Revision 1.136  2009/01/21 19:17:14  lulin
// - <K>: 135602528.
//
// Revision 1.135  2008/12/12 19:19:17  lulin
// - <K>: 129762414.
//
// Revision 1.134  2008/10/23 14:11:16  oman
// - fix: Излишне выключали фильтр (К-121160459)
//
// Revision 1.133  2008/09/02 12:38:09  lulin
// - <K>: 88080895.
//
// Revision 1.132  2008/04/07 06:18:39  lulin
// - cleanup.
//
// Revision 1.131  2008/02/14 17:08:58  lulin
// - cleanup.
//
// Revision 1.130  2007/12/25 11:36:17  mmorozov
// - change: там где можно не используем оператор AS + подписываем слушателя Il3RootSpy (CQ: OIT5-27823);
//
// Revision 1.129  2007/12/04 12:47:34  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.123.8.43  2007/09/07 12:27:36  lulin
// - cleanup.
//
// Revision 1.123.8.42  2007/04/25 06:50:49  oman
// - fix: Ослабляем излишние ограничения, чтобы позволить
//  сворачивать/разворачивать на новых деревьях (cq25156)
//
// Revision 1.123.8.41  2007/03/20 15:48:44  demon
// - new: перекрыто событие DoOnExpand по нему сбрасываем f_CurNode, т.к. были прецеденты, когда она становилась не валидной (CQ 24709)
//
// Revision 1.123.8.40  2007/02/12 18:44:58  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.123.8.39  2007/02/12 16:40:22  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.123.8.38  2007/01/24 10:21:40  oman
// - new: Локализация библиотек - ev (cq24078)
//
// Revision 1.123.8.37  2006/12/22 12:19:19  oman
// - new: Для статусбара кроме списка строк передаем еще признак о
//  необходимости вывода переливающегося  прогресс-индикатора
//  (cq23938)
//
// Revision 1.123.8.36  2006/12/15 10:44:22  oman
// - fix: IndexInParent начинается с 0... Неправильно формировали
//  сообщение в статус-баре
//
// Revision 1.123.8.35  2006/11/03 11:00:11  lulin
// - объединил с веткой 6.4.
//
// Revision 1.123.8.34.2.1  2006/10/12 10:42:10  mmorozov
// - new: событие смены индекса текущего;
//
// Revision 1.123.8.34  2006/10/05 15:16:39  mmorozov
// - new behaviour: для eeTreeViewExport и его наследников вызываем OnCurrentChanged в случае если NewCurrent = -1;
//
// Revision 1.123.8.33  2006/09/12 14:02:37  oman
// - new beh: Поддержка свернуть/развернуть для новых деревьях (cq22540)
//
// Revision 1.123.8.32  2006/09/07 15:10:32  oman
// cleanup
//
// Revision 1.123.8.31  2006/09/07 15:02:06  oman
// - new beh: Обработчик OnFormatStatusInfo (cq22473)
//
// Revision 1.123.8.30  2006/09/05 07:11:59  oman
// - fix: Не всегда обновлялась статусная строка (cq22313)
//
// Revision 1.123.8.29  2006/08/07 05:51:44  mmorozov
// - bugfix: AV, получение информации для строки состояния, при вычислении индекса у удаленного элемента дерева (CQ: OIT500022191);
//
// Revision 1.123.8.28  2006/08/02 10:51:56  lulin
// - объединил с веткой в которой боролся со скроллингом.
//
// Revision 1.123.8.27.2.1  2006/07/31 11:41:09  lulin
// - bug fix: не были опубликованы требуемые свойства.
//
// Revision 1.123.8.27  2006/07/19 08:56:02  mmorozov
// - new behaviour: во внутренней версии выводится количество элементов без учета развернутых (CQ: OIT500021911);
//
// Revision 1.123.8.26  2006/07/17 13:28:11  mmorozov
// change: вывод в строку состояния (CQ: OIT500021745);
//
// Revision 1.123.8.25  2006/06/27 08:52:08  lulin
// - реальная версия.
//
// Revision 1.123.8.24  2006/06/27 08:51:20  lulin
// - промежуточный коммит.
//
// Revision 1.123.8.25  2006/06/26 11:49:38  lulin
// - боремся с предупреждениями компилятора.
//
// Revision 1.123.8.24  2006/06/26 11:00:18  mmorozov
// - bugfix: при появлении у дерева TreeStruct, TreeView обновляем строку
//  состояния. До правок возникала ситуации когда статусная строка у дерева справшивалась до появления TreeStruct, TreeView (CQ: OIT500021361);
//
// Revision 1.123.8.23  2006/06/08 13:37:54  lulin
// - подготавливаем контролы к обработке числа повторений нажатия клавиши.
//
// Revision 1.123.8.22  2006/04/24 09:34:02  demon
// - fix: AV при вызове GoToNode с нодой не из своего дерева...
//
// Revision 1.123.8.21  2006/03/06 10:37:32  mmorozov
// - new: изменение отображения строки состояния (CQ: 19874);
//
// Revision 1.123.8.20  2006/02/10 15:54:33  mmorozov
// - new: формирование строки состояния (CQ: 17803);
//
// Revision 1.123.8.19  2005/12/14 11:08:04  lulin
// - cleanup.
//
// Revision 1.123.8.18  2005/11/21 16:54:17  lulin
// - cleanup.
//
// Revision 1.123.8.17  2005/10/21 13:11:13  mmorozov
// new behaviour: если TreeStruct пустой, то строка состояния не отдается (иначе приводило к нежелательному созданию TreeStruct);
//
// Revision 1.123.8.16  2005/10/21 10:14:49  lulin
// - bug fix: не синхронизировался текст с оглавлением. Сейчас тоже не синхронизируется, но это уже проблема реализации итератора по дереву.
//
// Revision 1.123.8.15  2005/10/20 10:47:41  demon
// - new behavior: После обработки клавиатурных комбинаций Home, End, PgUp, PgDown и т.п.
// дополнительно позиционируем текущий на экран (надо для коррекции саморазворачивания новых деревьев)
//
// Revision 1.123.8.14  2005/10/19 12:58:48  demon
// - new behavior: зарегистрирован интерфейс для получения нотификации об изменении количества видимых элементов
//
// Revision 1.123.8.13  2005/10/19 12:34:23  mmorozov
// new: event _OnCountChanged;
// change: вывод в строку состояния;
//
// Revision 1.123.8.12  2005/10/19 09:15:33  mmorozov
// new: method MakeItemVisible;
//
// Revision 1.123.8.11  2005/10/19 07:15:09  mmorozov
// change: информация для формировании статусной строки берется из Il3SimpleNode;
//
// Revision 1.123.8.10  2005/09/26 08:54:16  mmorozov
// bugfix: при переходе по истории первый был всегда выделен;
//
// Revision 1.123.8.9  2005/09/15 13:41:47  mmorozov
// new: method MakeTreeStructOnDraw - вызывается перед отрисовкой, последняя возможность определить TreeStruct;
//
// Revision 1.123.8.8  2005/09/01 17:46:24  lulin
// - теперь стало показываться оглавление в виде нового дерева.
//
// Revision 1.123.8.7  2005/08/15 13:45:57  demon
// - new behavior: добавлены операции Subscribe/UnSubscribe
//
// Revision 1.123.8.6  2005/07/28 15:37:08  lulin
// - правки в соответствии с изменениями Вована в интерфейсах нотификаторов.
//
// Revision 1.123.8.5  2005/07/21 14:16:38  lulin
// - интерфейсы для нотификации переехали в модуль базовых интерфейсов.
//
// Revision 1.123.8.4  2005/07/15 11:29:37  lulin
// - избавляемся от использования самостийной функции преобразования интерфейсов.
//
// Revision 1.123.8.3  2005/07/15 10:14:05  lulin
// - избавляемся от использования самостийной функции преобразования интерфейсов.
//
// Revision 1.123.8.2  2005/06/22 06:16:07  mmorozov
// bugfix: AV (обращались к методам пустого интерфейса);
//
// Revision 1.123.8.1  2005/05/27 14:42:24  lulin
// - базовый контрол переехал в быблиотеку L3.
//
// Revision 1.123  2005/03/23 12:16:09  am
// change: переименовал IvcmState_LoadState\IvcmState_SaveState в LoadState\SaveState, вытащил в protected, сделал виртуальными
//
// Revision 1.122  2005/03/14 15:11:34  mmorozov
// - использование property TvtCustomLister.UseStyleTable;
//
// Revision 1.121  2005/01/18 10:31:27  mmorozov
// new behaviour: во время обновления дерева не пытаемся получить IafwStatusElement_pm_GetCaption (информация в дереве не актуальна);
// new: method TeeTreeViewShadow.IsChanging;
//
// Revision 1.120  2005/01/13 14:20:58  mmorozov
// new: property ClearTreeStructOnSaveState;
//
// Revision 1.119  2004/12/23 11:13:37  lulin
// - rename prop: TvtCustomOutliner.TreeSource -> TreeStruct.
//
// Revision 1.118  2004/12/23 10:05:05  lulin
// - компоненты теперь могут сами сообщать значения для строки статуса - в частности это сделано в списке.
//
// Revision 1.117  2004/12/08 17:18:30  lulin
// - new method: TvtCustomLister.UseStyleTable.
//
// Revision 1.116  2004/12/07 13:56:03  mmorozov
// change: реакция на таблицу стилей перенесена в предка;
//
// Revision 1.115  2004/11/18 16:29:45  lulin
// - отвязываем библиотеки от VCM без использования inc'ов.
//
// Revision 1.114  2004/09/16 12:20:54  lulin
// - удалено большинство нечитабельных include'ов.
//
// Revision 1.113  2004/09/16 09:25:03  lulin
// - bug fix: наследники от evCtrl убивались в DesignTime произвольным образом.
//
// Revision 1.112  2004/09/15 16:45:00  lulin
// - в зависимости от DesignTimeLibrary перекрываем Destroy или Cleanup.
//
// Revision 1.111  2004/08/05 08:38:35  demon
// - fix: при восстановлении из истории не сбрасывалось закешированное значение f_CurNode.
//
// Revision 1.110  2004/07/13 13:14:05  demon
// - new behavior: при восстановлении TextSource из истории - восстанавливаем f_PrevNode = текущему элементу в дереве
//
// Revision 1.109  2004/06/22 17:41:24  am
// change: замена Il3Node->Il3SimpleNode в _GetNode
//
// Revision 1.108  2004/06/22 13:23:13  mmorozov
// bugfix: TeeNode.Make;
//
// Revision 1.107  2004/06/22 12:56:28  mmorozov
// - откат изменений;
//
// Revision 1.105  2004/06/22 07:24:05  am
// change: вернул поддержку истории
//
// Revision 1.103  2004/06/01 08:41:53  law
// - change: рудментарный код убран под define.
//
// Revision 1.102  2004/06/01 08:22:16  demon
// - new behavior: изменена иерархия наследования деревьев
//
// Revision 1.101  2004/05/27 08:59:09  law
// - change: исбавился от лишнего метода IsMyIntf - вместо нео теперь всегда используется IsSame.
//
// Revision 1.100  2004/05/26 18:17:19  law
// - change: Il3Node теперь наследуется от Il3SimpleNode.
//
// Revision 1.99  2004/05/26 16:59:06  law
// - new behavior: TvtCustomOutliner теперь знает только про интерфейсы Il3SimpleTree и Il3Tree, а не про объект _Tl3Tree.
//
// Revision 1.98  2004/05/26 14:21:59  law
// - change: скестил "ежа с ужом" (старые деревья с новыми).
//
// Revision 1.97  2004/05/25 10:46:06  demon
// - fix: не верно работала операция GotoNode при позиционировании на Root.
//
// Revision 1.96  2004/05/18 08:01:32  demon
// - fix: в операцию TeeTreeViewShadow.Get_Root добавлена проверка f_TreeView.TreeSource = nil, иначе иногда падало с AV
//
// Revision 1.95  2004/04/28 09:38:02  law
// - начал перетаскивать EE на новое дерево под директивой vtOutlinerKnowsInterface.
//
// Revision 1.94  2004/04/27 17:00:23  law
// - начал перетаскивать EE на новое дерево под директивой vtOutlinerKnowsInterface.
//
// Revision 1.93  2004/04/27 16:38:26  law
// - change: в eeDefine.inc вставлена директива vtOutlinerKnowsInterface.
//
// Revision 1.92  2004/04/27 14:21:48  law
// - bug fix: при вставке/удалении узла скидываем f_CurNode.
//
// Revision 1.91  2004/04/27 07:25:31  law
// - remove prop: IeeNode.Expanded.
// - cleanup: из TeeNode убрано знание про _Tl3Tree.
//
// Revision 1.90  2004/04/22 09:50:38  law
// - bug fix: исправил то, что не компилировалось.
//
// Revision 1.89  2004/04/19 08:46:38  law
// - убрана "оптимизация" для нулевого элемента, т.к. это неправильно работало для фильтрованного дерева.
//
// Revision 1.88  2004/04/15 12:21:04  law
// - bug fix: при изменении RootNode не сбрасывались закешированные ноды (CQ OIT5-7063).
//
// Revision 1.87  2004/04/14 14:16:21  demon
// - syntax fix
//
// Revision 1.86  2004/04/14 13:49:31  law
// - bug fix: игнорируем f_CurNode при смене текущего в -1.
//
// Revision 1.85  2004/04/13 12:05:05  law
// - optimization: метод IsMyIntf перенесен на Il3Node.
//
// Revision 1.84  2004/04/13 08:51:17  demon
// - new behavior: не происходит ничего, если операция GoToNode вызвана с aNode не из текущего дерева.
//
// Revision 1.83  2004/04/12 13:57:30  demon
// - new behavior: при вызове операции GoToNode, если текущаий элемент (или один из его родителей) невидим смещаемся на первого видимого родителя.
//
// Revision 1.82  2004/04/08 19:19:41  law
// - optimization: убраны директивы stdcall.
//
// Revision 1.81  2004/04/08 18:33:32  law
// - bug fix: AV при пустом дереве.
//
// Revision 1.80  2004/04/08 17:53:07  law
// - optimization: когда (anIndex <= 0), то возвращаем ноду попроще.
//
// Revision 1.79  2004/04/08 15:34:40  law
// - bug fix: не совсем корректно было организовано кеширование Current'а.
//
// Revision 1.78  2004/04/08 15:00:04  law
// - optimization: не переставляем Current в дереве, при запросе параметров текущей ("синей") ноды.
//
// Revision 1.77  2004/04/07 09:32:02  am
// bugfix: при выставлении текущего индекса в -1, не сбрасывалась f_PrevNode (соотв. при последующем переходе на ноду f_PrevNode не дёргался CurrentChange)
//
// Revision 1.76  2004/03/10 11:42:12  demon
// - new property: OnSelectCountChanged
//
// Revision 1.75  2004/03/05 16:22:08  law
// - new method: IeeTree.ChangeExpand.
//
// Revision 1.74  2004/03/05 15:59:56  law
// - new method: IeeTree.ExpandSubDir.
//
// Revision 1.73  2004/03/04 16:35:31  law
// - rename unit: VLister -> vtLister.
//
// Revision 1.72  2004/03/04 15:36:36  law
// - rename unit: VOtliner -> vtOutliner.
//
// Revision 1.71  2004/03/03 18:03:56  law
// - rename unit: l3Tree2 -> l3Tree.
//
// Revision 1.70  2004/03/03 16:31:24  law
// - cleanup: убраны события _Tl3Tree.OnTreeClear, OnNodeMove.
// - bug fix: учитываем, что дерево может быть привязано к нескольким визуальным элементам.
// - bug fix: вызываем OnRootChanged уже ПОСЛЕ того как Root действительно изменился.
//
// Revision 1.69  2004/02/26 14:33:59  demon
// - new behavior: объект TeeTreeState при QueryInterface получил возможность дополнительно спрашивать его у поля f_Tree
//
// Revision 1.68  2004/01/30 11:39:51  demon
// - cleanup: удалена неиспользуемая функция InsertChild(по имени)
// - new: добавлена функция InsertChildBefore
//
// Revision 1.67  2004/01/22 16:39:31  law
// - change: подстраиваемся под изменения Вована:
// "new behavior: заменил события onChanging, onChanged на регистрацию рассылки соообщений Il3ChangeRecipient".
//
// Revision 1.66  2003/12/27 14:59:00  am
// bugfix: TestFlagMask
//
// Revision 1.65  2003/12/25 15:51:35  law
// - new behavior: типа не сохраняем состояние "пустого" дерева.
//
// Revision 1.64  2003/12/25 12:10:49  law
// - new constructor: MakeWithoutAddToStyleTable (CQ OIT5-5649).
//
// Revision 1.63  2003/12/24 16:29:01  demon
// - new behavior: CallCureentChanged теперь имеет два параметра
//
// Revision 1.62  2003/12/11 17:08:02  law
// - new method: IeeTree.Wake.
//
// Revision 1.61  2003/12/11 14:58:37  law
// - new param: IeeTree._Changed(aCountView: Integer = ee_NeedCountView).
//
// Revision 1.60  2003/12/09 14:40:11  law
// - new method: IeeTree.TestFlagMask.
//
// Revision 1.59  2003/12/08 12:29:25  law
// - new method: IeeTree._SetFlagMask.
//
// Revision 1.58  2003/12/05 11:54:57  law
// - new behavior: сделана "отложенная" загрузка списков.
//
// Revision 1.57  2003/12/05 11:15:14  demon
// - bug fix: перепутал "магический номер".
//
// Revision 1.56  2003/12/04 18:34:20  law
// - change: сделан отложенный подсчет CountView, пока сильно не помогло, но и хуже вроде не стало.
//
// Revision 1.55  2003/12/01 12:22:23  law
// - bug fix: в Design-time не используем таблицу стилей.
//
// Revision 1.54  2003/11/27 13:51:15  law
// - new method: IeeTree.GetNodeByAbsIndex.
// - new prop: IeeTree.FlagsByAbsIndex.
//
// Revision 1.53  2003/11/20 20:37:46  law
// - new behavior: корректно генерируем список идентификаторов операций.
// - new behavior: вызов операций сущностей возможен теперь только по идентификатору.
// - cleanup: пытаемся в Design-Time отвязаться от GblAdapter (не получилось).
//
// Revision 1.52  2003/11/10 14:38:21  law
// - new method: IeeTree.SetAllFlags.
//
// Revision 1.51  2003/11/03 15:18:18  law
// - new param: _evAddStyleTableSpy - SelfNotify = false.
//
// Revision 1.50  2003/10/30 09:58:30  law
// - new prop: TeeTreeViewExport.PrevNode.
//
// Revision 1.49  2003/10/22 09:55:19  demon
// - new: на интерфейсе IeeTreeView добавились: метод GetNodeAbsIndex и свойство AbsCurrent.
//
// Revision 1.48  2003/10/20 18:17:51  migel
// - fix: при создании устанавливаем текущее значение шрифта.
//
// Revision 1.47  2003/10/20 14:00:44  law
// - new behavior: TevTreeViewExport теперь подписан на изменение таблицы стилей.
//
// Revision 1.46  2003/09/23 13:58:12  law
// - new behavior: стал IeeTreeView.Get_NextSelected стал возвращать Current, если не Multiselect.
//
// Revision 1.45  2003/09/23 10:08:45  law
// - new: TeeTreeViewExport теперь поддерживает интерфейсы IeeTree, _IeeTreeViewParams.
//
// Revision 1.44  2003/09/19 10:40:42  law
// - new prop: IeeTreeView.CurrentNode.
//
// Revision 1.43  2003/09/18 18:43:20  law
// - remove unit: eeTreeViewShadow.
//
// Revision 1.42  2003/09/18 18:29:46  law
// - bug fix: при отдании TeeTreeView как IeeTreeView отцепляем его "теневой" объект (AV - с открытием в извлечениях).
//
// Revision 1.41  2003/09/10 14:04:54  law
// - new prop: TeeTreeView.DblClickOnFolders.
//
// Revision 1.40  2003/09/03 14:04:24  law
// - change: добавлен тип TvcmStateType (задел на сохранение перехода по локальным ссылкам).
//
// Revision 1.39  2003/07/29 12:28:06  law
// - new behavior: отсекаем DblClick по иконке (TeeTreeView).
//
// Revision 1.38  2003/07/28 16:10:38  demon
// - bug fix: удалено лишнее зануление Current, приводившее к exception при смене Root'а с контентом разной длины
//
// Revision 1.37  2003/07/28 13:18:00  demon
// - bug fix: Создавался новый TreeSource при destoying'е объекта.
//
// Revision 1.36  2003/07/08 16:43:13  demon
// - bug fix: было потеряно присвоение f_PrevNode, лишний раз вызывалась ChangeCurrent.
//
// Revision 1.35  2003/07/01 17:19:21  law
// - new prop: TeeTreeView.OnRootChanged.
//
// Revision 1.34  2003/07/01 14:54:18  law
// - bug fix: не восстанавливалось состояние дерева, когда сам контрол не убивался.
//
// Revision 1.33  2003/06/30 17:48:10  law
// - new behavior: сохранение в истории выделения дерева и его текущего элемента.
//
// Revision 1.32  2003/06/27 16:31:13  law
// - new behavior: сделано восстановление состояния компонент формы, которые отдают интерфейс IvcmState.
//
// Revision 1.31  2003/06/27 15:50:11  law
// - new behavior: сделано запоминание состояния компонент формы, которые отдают интерфейс IvcmState.
//
// Revision 1.30  2003/06/20 15:16:26  law
// - new method: IeeTree.GetNextSelected.
//
// Revision 1.29  2003/06/20 14:01:38  law
// - new prop: IeeTree.SelectedCount.
//
// Revision 1.28  2003/06/20 13:43:53  law
// - new methods: IeeTree.Iterate, IeeTree.IterateF.
//
// Revision 1.27  2003/06/20 13:11:22  law
// - new prop: IeeDocument.Contents.
//
// Revision 1.26  2003/06/19 13:48:06  law
// - new methods: IeeTree.GetAbsIndex.
//
// Revision 1.25  2003/06/18 14:22:06  migel
// -bugfix
//
// Revision 1.24  2003/06/06 13:29:44  demon
// - bug fix: вызывались неправильные Changing/_Changed.
//
// Revision 1.23  2003/06/06 10:58:28  law
// - new behavior: сбрасывание Current'ов в 0, при присваивании корневого узла, убрана а в реализацию IeeTreeView.
//
// Revision 1.22  2003/06/06 10:54:37  law
// - new behavior: проверка на то, что узел не изменился (при смене Current) убрана а в реализацию IeeTreeView.
//
// Revision 1.21  2003/06/05 12:47:49  demon
// - add: добавлен метод SetRootAndCountView, позволяющий присваивать
// количество видимых элементов, одновременно с присваиванием root
//
// Revision 1.20  2003/06/03 14:27:50  demon
// - new method: IeeNode.IsSameNode.
//
// Revision 1.19  2003/06/03 11:18:39  law
// - bug fix: невозможно было обнулить корневой узел дерева.
//
// Revision 1.18  2003/06/03 08:21:20  law
// - new prop: IeeNode.HasChild.
//
// Revision 1.17  2003/06/02 14:54:42  law
// - new property: IeeTreeView.NodeFlags.
//
// Revision 1.16  2003/06/02 13:12:59  law
// - new method: IeeTreeView.GotoNode.
//
// Revision 1.15  2003/06/02 13:05:17  law
// - new method: IeeTreeView.GetNodeIndex.
//
// Revision 1.14  2003/05/30 17:24:48  law
// - change: методы l3*Flag переименованы в l3*Mask.
//
// Revision 1.13  2003/05/29 15:25:58  law
// - new method version: IeeNode.InsertChild.
//
// Revision 1.12  2003/05/29 15:16:58  law
// - change: свойство IeeTree.Root, теперь можно изменять.
//
// Revision 1.11  2003/05/28 16:15:21  law
// - change: отрезал ee.dll.
//
// Revision 1.10  2003/03/12 14:07:03  law
// - new methods: IeeTreeView.ExpandAll, IeeTreeView.CollapseAll.
//
// Revision 1.9  2003/03/12 12:32:56  law
// - new prop: IeeNode.Expanded.
//
// Revision 1.8  2003/02/28 16:31:43  law
// - обновлен help.
//
// Revision 1.7  2003/02/18 14:31:53  law
// - new methods: IeeNode.Remove, IeeNode.RemoveChildren (для коллег из Гаранта 6 сделать удаление узлов из дерева №123).
//
// Revision 1.6  2003/02/10 12:01:20  law
// - new prop: IeeNode.Text, IeeNode.ID.
//
// Revision 1.5  2003/02/07 16:08:49  law
// - change: расширен интерфейс IeeNode.
// - change: добавлены события OnActionElement, OnCurrentChanged.
//
// Revision 1.4  2003/02/07 13:14:26  law
// - new behavior: опубликована возможность управления иконками элементов дерева.
//
// Revision 1.3  2003/02/06 17:39:30  law
// - new interfaces: IeeTree, IeeNode, _IeeTreeViewParams.
//
// Revision 1.2  2003/02/06 15:59:21  law
// - new interface: IeeTreeView.
//
// Revision 1.1  2003/02/06 15:48:44  law
// - new units: eeTreeViewExport, eeControlExportTemplate.
//

{$Include eeDefine.inc }

interface

uses
  Windows,

  Messages,

  Classes,

  Controls,
  ImgList,

  l3Interfaces,
  l3Types,
  l3IID,
  l3InternalInterfaces,
  l3Tree_TLB,
  l3Units,
  l3TreeInterfaces,

  vtOutliner,
  vtOutlinerWithDragDrop,

  evInternalInterfaces,

  eeInterfaces,

  afwInterfaces,
  afwFacade

  {$IfNDef DesignTimeLibrary}
  ,
  vcmExternalInterfaces
  {$EndIf DesignTimeLibrary}
  ;


type
  TeeRootChangedEvent = procedure (aSender         : TObject;
                                   const anOldRoot : IeeNode;
                                   const aNewRoot  : IeeNode) of object;
    {-}
  TeeSelectCountChangedEvent = procedure(aSender        : TObject;
                                         anOldCount,
                                         aNewCount      : Integer) of object;
    {* Событие об изменении количества выделенных элементов в дереве }
  TeeCurrentIndexChangedEvent = procedure (const aNew  : Integer;
                                           const anOld : Integer) of Object;
    {* Событие смены индекса текущего в дереве. }
  TeeFormatStatusInfo = procedure (aSender         : TObject;
                                   var Info        : Il3CString;
                                   const aCurrent  : Integer;
                                   const aCount    : Integer;
                                   const aSelected : Integer) of object;
  TeeTreeViewExport = class(TvtOutlinerWithDragDrop,
                            Il3RootSpy,
                            Il3SelectCountChangedRecipient,
                            Il3NodeNotifyRecipient
                            {$IfNDef DesignTimeLibrary}
                            ,
                            IvcmState
                            {$EndIf DesignTimeLibrary}
                            ,
                            IafwStatusElement
                            )
   {* Компонент для экспорта отображения дерева. }
    private
    // internal fields
      f_TreeView                   : IeeTreeView;
      f_PrevNode                   : IeeNode;
      f_CurNode                    : IeeNode;
      f_OnRootChanged              : TeeRootChangedEvent;
      f_OnSelectCountChanged       : TeeSelectCountChangedEvent;
      f_DblClickOnFolder           : Boolean;
      f_NeedStatus                 : Boolean;
      f_ClearTreeStructOnSaveState : Boolean;
      f_FormatStatusInfo           : TeeFormatStatusInfo;
      f_CurrentIndexChanged        : TeeCurrentIndexChangedEvent;
    protected
    // property methods
      function  pm_GetTreeView: IeeTreeView;
        {-}
    private
    // interface methods
      // IafwStatusElement
      procedure IafwStatusElement_GetStatusInfo(out theString: Il3CString; out theNeedProgress: Boolean);
      procedure IafwStatusElement.GetStatusInfo = IafwStatusElement_GetStatusInfo;
        {-}
      // Il3NodeNotifyRecipient
      procedure Notify(anOperation : Integer; const aNode : Il3SimpleNode);
        {* - прошла операция. }
    private
    // message handlers
      procedure WMLButtonDblClk(var Msg: TWMLButtonDblClk);
        message WM_LBUTTONDBLCLK;
        {-}
    protected
    // interface methods
      {$IfNDef DesignTimeLibrary}
      function  SaveState(out aState  : IUnknown;
                          aStateType  : TvcmStateType): Boolean;
        virtual;
      function  LoadState(const aState : IUnknown;
                          aStateType   : TvcmStateType): Boolean;
        virtual;
        {-}
      {$EndIf DesignTimeLibrary}
    protected
    // internal methods
      function GetSelectedCountForStatusbar: Integer;
        virtual;

      function DoDoProcessCommand(Cmd : Tl3OperationCode) : Boolean;
        override;
        {-}
      function NotifyIfNewCurrentEmpty: Boolean;
        override;
        {* - определяет нужно ли вызывать событие OnCurrentChanged в случае если
             пришел NewCurrent = -1. }
      procedure CallCurrentChanged(aNewCurent, aOldCurrent: LongInt);
        override;
        {-}
      function  DoOnExpand(Expand: Boolean; const CNode: Il3SimpleNode): Boolean;
        override;
        {-}
      procedure pm_SetTreeStruct(const aTreeSource : Il3SimpleTree);
        override;
        {-}
      procedure SetTreeStructFromHistory(const aTreeStruct: Il3SimpleTree;
     const aData: TvtOutlinerHystoryData);
        override;
        {-}
      procedure RootChanged(const anOldRoot, aNewRoot: Il3SimpleRootNode);
        overload;
        virtual;
        {-}
      procedure RootChanged(const anOldRoot, aNewRoot: IeeNode);
        overload;
        virtual;
        {-}
      procedure SelectCountChanged(anOldCount, aNewCount : Integer);
        virtual;
        {-}
      procedure Cleanup;
        override;
        {-}
      procedure SubscribeTreeStruct(const aTreeStruct : Il3SimpleTree);
        override;
        {-}
      procedure UnsubscribeTreeStruct(const aTreeStruct : Il3SimpleTree);
        override;
        {-}
      procedure MakeTreeStructOnDraw;
        override;
        {* - вызывается перед отрисовкой, бывает что до этого момента никто
             TreeStruct не спросил, хотя сделать его готовы. }
      procedure DoTreeChanged(const anOldTree : Il3SimpleTree;
                              const aNewTree  : Il3SimpleTree);
        override;
        {-}
      procedure DoCurrentIndexChanged(const aNew  : Integer;
                                      const anOld : Integer);
        {-}
      procedure UpdataStatus;
        {* - при появлении у дерева TreeStruct, TreeView обновляем строку
             состояния. До правок возникала ситуации когда статусная строка у
             дерева справшивалась до появления TreeStruct, TreeView
             (CQ: OIT500021361). }
    public
    // public methods
      constructor Create(anOwner: TComponent);
        override;
        {-}
      procedure MakeItemVisible(const aIndex: Integer);
        {* - делает узел видимым, влиет на прокрутку. }
      function COMQueryInterface(const IID: Tl3GUID; out Obj): Tl3HResult;
        override;
        {-}
    public
    // public properties
      property DblClickOnFolder: Boolean
        read f_DblClickOnFolder
        write f_DblClickOnFolder
        default True;
        {-}
      property ClearTreeStructOnSaveState : Boolean
        read f_ClearTreeStructOnSaveState
        write f_ClearTreeStructOnSaveState
        default True;
        {-}
    public
    // public events
      property OnRootChanged : TeeRootChangedEvent
        read f_OnRootChanged
        write f_OnRootChanged;
        {-}
      property OnSelectCountChanged : TeeSelectCountChangedEvent
        read f_OnSelectCountChanged
        write f_OnSelectCountChanged;
        {-}
      property NeedStatus: Boolean
        read f_NeedStatus
        write f_NeedStatus
        default false;
        {-}
      property OnFormatStatusInfo : TeeFormatStatusInfo
        read f_FormatStatusInfo
        write f_FormatStatusInfo;
    published
    // published property
      property OnCountChanged;
        {-}
      property OnAfterFirstPaint;
        {-}
      property OnCurrentIndexChanged: TeeCurrentIndexChangedEvent
        read f_CurrentIndexChanged
        write f_CurrentIndexChanged;
        {* - }
  end;//TeeTreeViewExport

implementation

uses
  SysUtils,

  Forms,

  OvcConst,

  l3Base,
  l3Nodes,
  l3Bits,
  l3InterfacesMisc,
  l3ControlsTypes,
  l3String,
  l3CacheableBase,

  vtLister,

  {$IfNDef DesignTimeLibrary}
  evStyleTableSpy,
  evStyleTableTools,
  {$EndIf DesignTimeLibrary}

  nevInterfaces,

  eeNode,
  eeInterfacesEx
  ;

const
  eeBT2L3BT : array [TeeSetBitType] of Tl3SetBitType = (sbSelect, sbDeselect, sbInvert);

type
  TeeTreeViewShadow = class(Tl3CacheableBase, IeeTreeView, IeeTree, IeeTool)
    private
    // internal fields
      f_TreeView    : TeeTreeViewExport;
      f_UpdateCount : Integer;
    private
    // interface methods
      // IeeTool
      procedure OwnerDead;
        {-}
      // IeeTreeView
      function Get_Tree: IeeTree;
        {-}
      function  Get_Current: Integer;
      procedure Set_Current(aValue: Integer);
        {-}
      function  Get_AbsCurrent: Integer;
        {-}
      function  Get_CurrentNode: IeeNode;
        {-}
      function  Get_NodeFlags(const aNode : IeeNode) : Integer;
      procedure Set_NodeFlags(const aNode : IeeNode; aValue : Integer);
        {-}
      function  Get_FlagsByAbsIndex(anAbsIndex: Integer) : Integer;
      procedure Set_FlagsByAbsIndex(anAbsIndex: Integer; aValue : Integer);
        {-}
      function  TestFlagMask(aAbsIndex: Longint; aFlagMask : Integer) : Boolean;
        {-}
      procedure SetFlagMask(aAbsIndex : Longint;
                            aFlagMask : Integer;
                            aMode     : TeeSetBitType);
        overload;
        {-}
      procedure SetFlagMask(const aRNode : IeeNode;
                            aFlagMask    : Integer;
                            aMode        : TeeSetBitType);
        overload;
        {-}
      procedure ExpandSubDir(const RNode : IeeNode = nil;
                             Expand      : Boolean = true;
                             DeepLevel   : Byte = 0);
        {* - развернуть/свернуть узлы. }
      function  ChangeExpand(const RNode : IeeNode;
                             Mode        : TeeSetBitType;
                             aForceMode  : Boolean = false) : Boolean;
        {-}
      function  GetNode(anIndex : Integer): IeeNode;
        {-}
      function  GetNodeByAbsIndex(anAbsIndex : Integer): IeeNode;
        {-}
      function  Wake: Boolean;
        {-}
      function  IsExpanded(const aNode: IeeNode): Boolean;
       {* - раскрыт ли узел. }
      function  GetNodeIndex(const aNode: IeeNode): Integer;
        {-}
      function  GetNodeAbsIndex(const aNode: IeeNode): Integer;
        {-}
      procedure ExpandAll;
        {-}
      procedure CollapseAll;
        {-}
      function  GotoNode(const aNode : IeeNode) : Longint;
        {-}
      // IeeTree
      function  Get_Root: IeeNode;
      procedure Set_Root(const aValue: IeeNode);
        {-}
      function  Get_SelectedCount: Integer;
        {-}
      function IsChanging : Boolean;
        {* - дерево находится в фазе обновления. }
      procedure Changing;
        reintroduce;
        {-}
      procedure Changed{(aCountView: Integer = ee_NeedCountView)};
        reintroduce;
        {-}
      function  GetAbsIndex(const aNode : IeeNode): Integer;
        overload;
        {-}
      function  GetAbsIndex(anIndex : Integer): Integer;
        overload;
        {-}
      function  Iterate(Action             : TeeNodeAction;
                        IterMode           : Integer = 0;
                        const aSubRootNode : IeeNode = nil;
                        const aFromNode    : IeeNode = nil) : IeeNode;
        {* - перебрать все узлы. IterMode см. imExpandOnly etc. }
      function  IterateF(Action             : TeeNodeAction;
                         IterMode           : Integer = 0;
                         const aSubRootNode : IeeNode = nil;
                         const aFromNode    : IeeNode = nil) : IeeNode;
        {* - перебрать все узлы и освободить заглушку для Action. }
      function  GetNextSelected(const aCurNode: IeeNode) : IeeNode;
        {-}
      procedure ClearSelected;
        {-}
      procedure SetAllFlags(aMode : TeeSetBitType; aFlags : Integer);
        {-}
    protected
    // internal methods
      procedure Cleanup;
        override;
        {-}     
    public
    // public methods
      constructor Create(aTreeView: TeeTreeViewExport);
        reintroduce;
        {-}
      class function Make(aTreeView: TeeTreeViewExport): IeeTreeView;
        {-}
  end;//TeeTreeViewShadow

// start class TeeTreeViewExport

constructor TeeTreeViewExport.Create(anOwner: TComponent);
  //override;
  {-}
begin
 inherited;
 f_ClearTreeStructOnSaveState := True;
 DblClickOnFolder := true;
 UseStyleTable := True;
end;

procedure TeeTreeViewExport.MakeItemVisible(const aIndex: Integer);
  {* - делает узел видимым, влиет на прокрутку. }
begin
 vlbMakeItemVisible(aIndex);
end;

procedure TeeTreeViewExport.Cleanup;
  //override;
  {-}
var
 l_Tool : IeeTool;
begin
 {$IfNDef DesignTimeLibrary}
 evDelStyleTableSpy(Self);
 {$EndIf  DesignTimeLibrary}
 f_PrevNode := nil;
 f_CurNode := nil;
 if Supports(f_TreeView, IeeTool, l_Tool) then
  try
   l_Tool.OwnerDead;
  finally
   l_Tool := nil;
  end;//try..finally
 f_TreeView := nil;
 inherited;
end;

procedure TeeTreeViewExport.SubscribeTreeStruct(const aTreeStruct : Il3SimpleTree);
begin
 Inherited;
 aTreeStruct.Subscribe(Il3SelectCountChangedRecipient(Self));
 aTreeStruct.Subscribe(Il3NodeNotifyRecipient(Self));
 aTreeStruct.Subscribe(Il3ExternalTreeChangedRecipient(Self));
 aTreeStruct.Subscribe(Il3RootSpy(Self));
end;//SubscribeTreeStruct

procedure TeeTreeViewExport.UnsubscribeTreeStruct(const aTreeStruct : Il3SimpleTree);
begin
 Inherited;
 aTreeStruct.Unsubscribe(Il3SelectCountChangedRecipient(Self));
 aTreeStruct.Unsubscribe(Il3NodeNotifyRecipient(Self));
 aTreeStruct.Unsubscribe(Il3ExternalTreeChangedRecipient(Self));
 aTreeStruct.Unsubscribe(Il3RootSpy(Self));
end;//UnsubscribeTreeStruct

procedure TeeTreeViewExport.UpdataStatus;
begin
 if (afw.Application <> nil) and
    (afw.Application.CurrentMainForm <> nil) then
  afw.Application.CurrentMainForm.Status.Update;
end;

procedure TeeTreeViewExport.DoCurrentIndexChanged(const aNew  : Integer;
                                                  const anOld : Integer);
  {-}
begin
 if Assigned(f_CurrentIndexChanged) then
  f_CurrentIndexChanged(anOld, aNew);
end;

procedure TeeTreeViewExport.DoTreeChanged(const anOldTree : Il3SimpleTree;
                                          const aNewTree  : Il3SimpleTree);
  // override;
  {-}
begin
 inherited;
 UpdataStatus;
end;

procedure TeeTreeViewExport.MakeTreeStructOnDraw;
  // override;
  {* - вызывается перед отрисовкой, бывает что до этого момента никто
       TreeStruct не спросил, хотя сделать его готовы. }
begin
 if not Assigned(f_TreeStruct) then
  TreeStruct;
end;

function TeeTreeViewExport.DoDoProcessCommand(Cmd : Tl3OperationCode) : Boolean;
  //override;
  {-}
var
 l_Current: LongInt;
begin
 Result := inherited DoDoProcessCommand(Cmd);
 if Result then
  case Cmd of
   ccHome,
   ccExtendHome,
   ccEnd,
   ccExtendEnd,
   ccPrevPage,
   ccExtendPgUp,
   ccNextPage,
   ccExtendPgDn:
   begin
    repeat
     l_Current := Current;
     vlbMakeItemVisiblePrim(l_Current);
    until l_Current = Current;
   end;
  end;
end;

function TeeTreeViewExport.NotifyIfNewCurrentEmpty: Boolean;
  // override;
  {* - определяет нужно ли вызывать событие OnCurrentChanged в случае если
       пришел NewCurrent = -1. }
begin
 Result := True;
end;

procedure TeeTreeViewExport.CallCurrentChanged(aNewCurent, aOldCurrent: LongInt);
  //override;
begin
 f_CurNode := nil;
 // - это обязательно, а иначе получим не то, что нужно при GetNode(aNewCurent)
 if (aNewCurent = -1) then
  f_PrevNode := nil;
 if aNewCurent <> -1 then
  f_CurNode := (Self As IeeTreeView).GetNode(aNewCurent);
 if (f_PrevNode = nil) OR not f_PrevNode.IsSameNode(f_CurNode) then
 begin
  f_PrevNode := f_CurNode;
  inherited;
 end;//f_PrevNode = nil
 DoCurrentIndexChanged(aNewCurent, aOldCurrent);
end;

function TeeTreeViewExport.DoOnExpand(Expand: Boolean; const CNode: Il3SimpleNode): Boolean;
  //override;
  {-}
begin
 // {Тучнин Д.А.} Для новых деревьев Current корректируется при операции сворачивания автоматически,
 // в результате CallCurrentChanged не приходит и возможна ситуация, когда f_CurNode становится не валидной.
 // Например, когда текущим был ребенок в сворачиваемой ветке.
 if not Expand then
 begin
  f_CurNode := nil;
  f_PrevNode := nil;
 end;

 Result := inherited DoOnExpand(Expand, CNode);
end;

procedure TeeTreeViewExport.pm_SetTreeStruct(const aTreeSource : Il3SimpleTree);
  //override;
  {-}
var
 l_OldRoot : Il3SimpleRootNode;
 l_NewRoot : Il3SimpleRootNode;
begin
 if (f_TreeStruct <> aTreeSource) then
 begin
  if (f_TreeStruct = nil) then
   l_OldRoot := nil
  else
  begin
   l_OldRoot := Il3SimpleTree(f_TreeStruct).RootNode;
//   f_TreeStruct.DelRootSpy(Self);
//   f_TreeStruct.DelNotifiedObj(Self); Потребуется, если RootSpy будет вести себя отлично от простого NotifiedObj
  end;//f_TreeStruct = nil
  inherited;
  if (f_TreeStruct = nil) then
   l_NewRoot := nil
  else
  begin
   l_NewRoot := Il3SimpleTree(f_TreeStruct).RootNode;
//   f_TreeStruct.AddRootSpy(Self);
//   f_TreeStruct.AddNotifiedObj(Self); Потребуется, если RootSpy будет вести себя отлично от простого NotifiedObj
  end;//f_TreeStruct = nil
  if not l3IEQ(l_OldRoot, l_NewRoot) then
   RootChanged(l_OldRoot, l_NewRoot);
 end;//f_TreeStruct <> aTreeSource
end;

procedure TeeTreeViewExport.SetTreeStructFromHistory(const aTreeStruct: Il3SimpleTree;
     const aData: TvtOutlinerHystoryData);
  //override;
  {-}
var
 l_OldRoot : Il3SimpleRootNode;
 l_NewRoot : Il3SimpleRootNode;
begin
 if (f_TreeStruct <> aTreeStruct) then
 begin
  if (f_TreeStruct = nil) then
   l_OldRoot := nil
  else
  begin
   l_OldRoot := Il3SimpleTree(f_TreeStruct).RootNode;
//   f_TreeStruct.DelRootSpy(Self);
//   f_TreeStruct.DelNotifiedObj(Self); Потребуется, если RootSpy будет вести себя отлично от простого NotifiedObj
  end;//f_TreeStruct = nil
  inherited;
  if (f_TreeStruct = nil) then
   l_NewRoot := nil
  else
  begin
   l_NewRoot := Il3SimpleTree(f_TreeStruct).RootNode;
//   f_TreeStruct.AddRootSpy(Self);
//   f_TreeStruct.AddNotifiedObj(Self); Потребуется, если RootSpy будет вести себя отлично от простого NotifiedObj
  end;//f_TreeStruct = nil
  if not l3IEQ(l_OldRoot, l_NewRoot) then
   RootChanged(l_OldRoot, l_NewRoot);

  f_CurNode := nil;
  f_CurNode := (Self as IeeTreeView).GetNode(aData.rCurrent);
  f_PrevNode := f_CurNode;
  //Current := aData.rCurrent;
 end;//f_TreeStruct <> aTreeStruct
end;

procedure TeeTreeViewExport.RootChanged(const anOldRoot, aNewRoot: Il3SimpleRootNode);
  //virtual;
  {-}
begin
 if not (csDestroying in ComponentState) then
 begin
  f_PrevNode := nil;
  f_CurNode := nil;
  RootChanged(TeeNode.Make(anOldRoot),
              TeeNode.Make(aNewRoot));
 end;//not (csDestroying in ComponentState)
end;

procedure TeeTreeViewExport.RootChanged(const anOldRoot, aNewRoot: IeeNode);
  //virtual;
  {-}
begin
 if Assigned(f_OnRootChanged) then
  f_OnRootChanged(Self, anOldRoot, aNewRoot);
end;

procedure TeeTreeViewExport.SelectCountChanged(anOldCount, aNewCount : Integer);
  //virtual;
  {-}
begin
 if Assigned(f_OnSelectCountChanged) then
  f_OnSelectCountChanged(Self, anOldCount, aNewCount);
end;

function TeeTreeViewExport.COMQueryInterface(const IID: Tl3GUID; out Obj): Tl3HResult;
  //override;
  {-}
begin
 if IID.SomeOf([IeeTreeView, IeeTree]) then
 begin
  if Supports(pm_GetTreeView, IID.IID, Obj) then
   Result.SetOk
  else
   Result.SetNoInterface;
 end//IID.SomeOf([IeeTreeView, IeeTree])
 else
  Result := inherited COMQueryInterface(IID, Obj);
end;

procedure TeeTreeViewExport.WMLButtonDblClk(var Msg: TWMLButtonDblClk);
  //message WM_LBUTTONDBLCLK;
  {-}
var
 N      : Longint;
 l_Part : Byte;
begin
 HitTest(SmallPointToPoint(Msg.Pos), N, l_Part);
 if (l_Part <> ihtIcon) OR DblClickOnFolder then
  inherited;
end;

function TeeTreeViewExport.pm_GetTreeView: IeeTreeView;
  {-}
begin
 if (f_TreeView = nil) then
 begin
  f_TreeView := TeeTreeViewShadow.Make(Self);
  UpdataStatus;
 end;
 Result := f_TreeView;
end;

procedure TeeTreeViewExport.IafwStatusElement_GetStatusInfo(out theString: Il3CString; out theNeedProgress: Boolean);

 function lp_IndexInParent: Integer;
 var
  l_Root : Il3SimpleNode;
  l_Node : Il3SimpleNode;
  l_Temp : Il3SimpleNode;
 begin
  l_Node := GetCurrentNode;
  if Assigned(l_Node) and
    Supports(TreeStruct.RootNode, Il3SimpleNode, l_Root) then
   while Assigned(l_Node) and not l_Root.IsSame(l_Node.Parent) do
   begin
    l_Temp := l_Node.Parent;
    l_Node := l_Temp;
   end;
  if Assigned(l_Node) then
   Result := Succ(l_Node.IndexInParent)
  else
   Result := Succ(Current);
 end;

 function lp_AmountElements: Integer;
 var
  l_Node: Il3SimpleNode;
 begin
  if Supports(TreeStruct.RootNode, Il3SimpleNode, l_Node) then
  try
   Result := l_Node.ThisChildrenCount;
  finally
   l_Node := nil;
  end
  else
   Result := Total;
 end;

var
 l_Wake     : Il3Wake;
 l_Elements : Integer;
begin
 theString := nil;
 theNeedProgress := False;
 if NeedStatus AND IsTreeAssign AND (TreeStruct <> nil) AND
  ((f_TreeView = nil) OR not f_TreeView.Tree.IsChanging) then
 begin
  with TreeStruct do
  begin
   if (RootNode <> nil) then
   begin
    if Supports(RootNode, Il3Wake, l_Wake) and l_Wake.IsSleep then
     Exit;
    l_Elements := lp_AmountElements;
    // коммерческая версия

    if not afw.Application.IsInternal then
     theString := l3Fmt(str_nevmmDocumentCount.AsCStr,
                         [lp_IndexInParent,
                         l_Elements])
    // внутренней версия
    else
     theString := l3Fmt(str_nevmmDocumentCountInt.AsCStr,
                         [lp_IndexInParent,
                         l_Elements,
                         GetSelectedCountForStatusbar]);
    if Assigned(f_FormatStatusInfo) then
     f_FormatStatusInfo(self, theString, lp_IndexInParent, l_Elements, GetSelectedCountForStatusbar);
   end;//RootNode <> nil
  end;//with TreeStruct
 end //if NeedStatus
end;

{$IfNDef DesignTimeLibrary}
type
  IeeTreeState = interface(IUnknown)
    ['{94FD0226-9512-442F-813C-84EB488F965B}']
    // public methods
      function  GetTree: Il3SimpleTree;
      procedure SetTree(const aValue: Il3SimpleTree; aData : TvtOutlinerHystoryData);
        {-}
      function  GetData: TvtOutlinerHystoryData;
        {-}
  end;//IeeTreeState

  TeeTreeState = class(Tl3CacheableBase, IeeTreeState)
    private
    // internal fields
      f_Tree    : Il3SimpleTree;
      f_Data    : TvtOutlinerHystoryData;
    private
    // interface methods
      // IeeTreeState
      function  GetTree: Il3SimpleTree;
      procedure SetTree(const aValue: Il3SimpleTree; aData : TvtOutlinerHystoryData);
        {-}
      function  GetData : TvtOutlinerHystoryData;
        {-}
    protected
    // internal methods
      procedure Cleanup;
        override;
        {-}
    public
    // public methods
      constructor Create(const aTree : Il3SimpleTree;
                         aData       : TvtOutlinerHystoryData);
        reintroduce;
        {-}
      class function Make(const aTree : Il3SimpleTree;
                          aData       : TvtOutlinerHystoryData): IeeTreeState;
        {-}
      function COMQueryInterface(const IID: Tl3GUID; out Obj): Tl3HResult;
        override;
        {-}
  end;//TeeTreeState

constructor TeeTreeState.Create(const aTree : Il3SimpleTree;
                                aData       : TvtOutlinerHystoryData);
  //reintroduce;
  {-}
begin
 inherited Create;
 SetTree(aTree, aData);
end;

class function TeeTreeState.Make(const aTree : Il3SimpleTree;
                                 aData       : TvtOutlinerHystoryData): IeeTreeState;
  {-}
var
 l_State : TeeTreeState;
begin
 l_State := TeeTreeState.Create(aTree, aData);
 try
  Result := l_State;
 finally
  l3Free(l_State);
 end;//try..finally
end;

function TeeTreeState.COMQueryInterface(const IID: Tl3GUID; out Obj): Tl3HResult;
  //override;
  {-}
begin
 Result := inherited COMQueryInterface(IID, Obj);
 if Result.Fail then
  if Supports(f_Tree, IID.IID, Obj) then
   Result.SetOk
  else
   Result.SetNoInterface;
end;

procedure TeeTreeState.Cleanup;
  //override;
  {-}
begin
 f_Tree := nil;
 inherited;
end;

function TeeTreeState.GetTree: Il3SimpleTree;
  {-}
begin
 Result := f_Tree;
end;

procedure TeeTreeState.SetTree(const aValue: Il3SimpleTree; aData : TvtOutlinerHystoryData);
begin
 f_Tree := aValue;
 f_Data := aData;
end;

function TeeTreeState.GetData : TvtOutlinerHystoryData;
  {-}
begin
 Result := f_Data;
end;

function TeeTreeViewExport.SaveState(out aState : IUnknown;
                                     aStateType : TvcmStateType): Boolean;
begin
 Case aStateType of
  vcm_stContent :
  begin
   if (f_TreeStruct = nil) OR (f_TreeStruct.RootNode = nil) {OR
      (not ShowRoot AND (f_TreeStruct.RootNode.AllChildrenCount = 0))} then
    Result := false
   else
   begin
    Result := true;
    aState := TeeTreeState.Make(TreeStruct, GetHistoryData);
    if f_ClearTreeStructOnSaveState then
    begin
     f_ChangingForHistory := True;
     try
      TreeStruct := nil;
     finally
      f_ChangingForHistory := False;
     end;
    end;//f_ClearTreeStructOnSaveState
   end;//f_TreeStruct = nil
  end;//vcm_stContent
  else
   Result := false;
 end;//Case aStateType
end;

function TeeTreeViewExport.LoadState(const aState : IUnknown;
                                     aStateType   : TvcmStateType): Boolean;
var
 l_Tree : Il3SimpleTree;
 l_Data : TvtOutlinerHystoryData;
begin
 Case aStateType of
  vcm_stContent :
  begin
   Result := true;
   with (aState As IeeTreeState) do
   begin
    l_Data := GetData;
    l_Tree := GetTree;
    try
     // Сохранять не нужно, потому что во первых данные не будут сохранены в
     // историю, во вторых будут проблемы с двумя выделенными элементами, т.к.
     // в следующей строке произойдет создание TreeStruct (потому что nil) и
     // позиционированние на первый элемент, далее выделиться второй, зачитанный
     // из истории и получиться два выделенных вместо одного
     //  
     // SetTree(TreeStruct, GetHistoryData);
     //
     SetTreeStructFromHistory(l_Tree, l_Data);
    finally
     l_Tree := nil;
    end;//try..finally
   end;//with (aState As IeeTreeState) do
  end;//vcm_stContent
  else
   Result := false;
 end;//Case aStateType
end;
{$EndIf DesignTimeLibrary}

procedure TeeTreeViewExport.Notify(anOperation : Integer; const aNode: Il3SimpleNode);
  {* - прошла операция. }
begin
 if (anOperation in [ntDelete, ntInsert]) then
  f_CurNode := nil;
end;

// start class TeeTreeViewShadow

constructor TeeTreeViewShadow.Create(aTreeView: TeeTreeViewExport);
  //reintroduce;
  {-}
begin
 inherited Create;
 f_TreeView := aTreeView;
 f_UpdateCount := 0;
end;

class function TeeTreeViewShadow.Make(aTreeView: TeeTreeViewExport): IeeTreeView;
  {-}
var
 l_TreeView : TeeTreeViewShadow;
begin
 l_TreeView := Create(aTreeView);
 try
  Result := l_TreeView; 
 finally
  l3Free(l_TreeView);
 end;//try..finally
end;

procedure TeeTreeViewShadow.Cleanup;
  //override;
  {-}
begin
 f_TreeView := nil;
 inherited;
end;

procedure TeeTreeViewShadow.OwnerDead;
  {-}
begin
 f_TreeView := nil;
end;

function TeeTreeViewShadow.Get_Tree: IeeTree;
  {-}
begin
 Result := Self;
end;

function  TeeTreeViewShadow.Get_Current: Integer;
begin
 if (f_TreeView = nil) then
  Result := -1
 else
  Result := f_TreeView.Current;
end;

procedure TeeTreeViewShadow.Set_Current(aValue: Integer);
  {-}
begin
 if (f_TreeView <> nil) then
  f_TreeView.Current := aValue;
end;

function TeeTreeViewShadow.Get_AbsCurrent: Integer;
  {-}
var
 l_Node : Il3Node;
begin
 if (f_TreeView = nil) then
  Result := -1
 else
 begin
  if Supports(Get_CurrentNode, Il3Node, l_Node) then
   try
    Result := f_TreeView.CTree.GetAbsIndex(l_Node);
   finally
    l_Node := nil;
   end//try..finally
  else
   Result := -1;
 end;//f_TreeView = nil
end;

function TeeTreeViewShadow.Get_CurrentNode: IeeNode;
  {-}
begin
 if (f_TreeView = nil) then
  Result := nil
 else
  if (Get_Current < 0) then
  begin
   f_TreeView.f_CurNode := nil;
   Result := nil;
  end//(Get_Current < 0)
  else
   if (f_TreeView.f_CurNode = nil) then
    Result := GetNode(Get_Current)
   else
    Result := f_TreeView.f_CurNode;
end;

function  TeeTreeViewShadow.Get_NodeFlags(const aNode : IeeNode) : Integer;
var
 l_Node : Il3Node;
begin
 if (f_TreeView = nil) then
  Result := 0
 else
  if Supports(aNode, Il3Node, l_Node) then
   try
    Result := f_TreeView.CTree.NodeFlags[l_Node];
   finally
    l_Node := nil;
   end//try..finally
  else
   Result := 0;
end;

procedure TeeTreeViewShadow.Set_NodeFlags(const aNode : IeeNode; aValue : Integer);
  {-}
var
 l_Node : Il3Node;
begin
 if (f_TreeView <> nil) then
 begin
  if Supports(aNode, Il3Node, l_Node) then
   try
    f_TreeView.CTree.NodeFlags[l_Node] := aValue;
   finally
    l_Node := nil;
   end;//try..finally
 end;//f_TreeView <> nil
end;

function TeeTreeViewShadow.Get_FlagsByAbsIndex(anAbsIndex: Integer) : Integer;
  {-}
begin
 Result := f_TreeView.CTree.GetFlagsByAbsIndex(anAbsIndex);
end;

procedure TeeTreeViewShadow.Set_FlagsByAbsIndex(anAbsIndex: Integer; aValue : Integer);
  {-}
begin
 f_TreeView.CTree.SetFlagsByAbsIndex(anAbsIndex, aValue);
end;

function TeeTreeViewShadow.TestFlagMask(aAbsIndex: Longint; aFlagMask : Integer) : Boolean;
  {-}
begin
 if (f_TreeView = nil) then
  Result := false
 else
  Result := f_TreeView.CTree.TestFlagMask(aAbsIndex, aFlagMask);
end;

procedure TeeTreeViewShadow.SetFlagMask(aAbsIndex : Longint;
                                        aFlagMask : Integer;
                                        aMode     : TeeSetBitType);
  //overload;
  {-}
begin
 if (f_TreeView <> nil) then
  f_TreeView.CTree.SetFlagMask(aAbsIndex, aFlagMask, eeBT2L3BT[aMode]);
end;

procedure TeeTreeViewShadow.SetFlagMask(const aRNode : IeeNode;
                                        aFlagMask    : Integer;
                                        aMode        : TeeSetBitType);
  //overload;
  {-}
var
 l_Node : Il3Node;
begin
 if (f_TreeView <> nil) then
 begin
  if Supports(aRNode, Il3Node, l_Node) then
   try
    f_TreeView.CTree.SetFlagMask(l_Node, aFlagMask, eeBT2L3BT[aMode]);
   finally
    l_Node := nil;
   end;//try..finally
 end;//f_TreeView <> nil
end;

procedure TeeTreeViewShadow.ExpandSubDir(const RNode : IeeNode = nil;
                                         Expand      : Boolean = true;
                                         DeepLevel   : Byte = 0);
  {* - развернуть/свернуть узлы. }
var
 l_Node : Il3Node;
 l_SImpleNode: Il3SimpleNode;
begin
 if (f_TreeView <> nil) then
 begin
  if (RNode = nil) then
   l_Node := nil
  else
  if Supports(RNode, Il3Node, l_Node) then
   try
    f_TreeView.TreeStruct.ExpandSubDir(l_Node, Expand, DeepLevel);
   finally
    l_Node := nil;
   end//try..finally
  else
   if Supports(RNode, Il3SimpleNode, l_SimpleNode) then
    f_TreeView.TreeStruct.ExpandSubDir(l_SimpleNode, Expand, DeepLevel);
 end;//f_TreeView <> nil
end;

function TeeTreeViewShadow.ChangeExpand(const RNode : IeeNode;
                                        Mode        : TeeSetBitType;
                                        aForceMode  : Boolean = false) : Boolean;
  {-}
var
 l_Node : Il3SimpleNode;
begin
 if (f_TreeView = nil) then
  Result := false
 else
 begin
  if Supports(RNode, Il3SimpleNode, l_Node) then
   try
    Result := f_TreeView.TreeStruct.ChangeExpand(l_Node, eeBT2L3BT[Mode], aForceMode);
   finally
    l_Node := nil;
   end//try..finally
  else
   Result := false; 
 end;//f_TreeView <> nil
end;

function  TeeTreeViewShadow.GetNode(anIndex : Integer): IeeNode;
  {-}
var
 l_Node : Il3Node;  
begin
 if (f_TreeView = nil) OR (anIndex < 0) then
  Result := nil
 else
 begin
  if (f_TreeView.f_CurNode = nil) OR (anIndex <> Get_Current) then
  begin
(*   if (anIndex = 0) then
   begin
    l_Node := f_TreeView.TreeStruct.RootNode;
    if not f_TreeView.ShowRoot then
    begin
     if (l_Node <> nil) then
      l_Node := l_Node.ChildNode;
    end;//not f_TreeView.ShowRoot
   end//anIndex = 0
   else*) // - эта оптимизация убрана, т.к. не работает в фильтрованных деревьях
    Supports(f_TreeView.GetNode(anIndex), Il3SimpleNode, l_Node);
   Result := TeeNode.Make(l_Node)
  end//f_TreeView.f_CurNode = nil
  else
   Result := f_TreeView.f_CurNode;
 end;//f_TreeView = nil
end;

function TeeTreeViewShadow.GetNodeByAbsIndex(anAbsIndex : Integer): IeeNode;
  {-}
begin
 if (f_TreeView = nil) OR (f_TreeView.TreeStruct = nil) then
  Result := nil
 else
  Result := TeeNode.Make(f_TreeView.CTree.GetNodeByAbsIndex(anAbsIndex));
end;

function TeeTreeViewShadow.Wake: Boolean;
  {-}
begin
 if (f_TreeView = nil) then
  Result := false
 else
  Result := f_TreeView.Wake;
end;

function TeeTreeViewShadow.IsExpanded(const aNode: IeeNode): Boolean;
 {* - раскрыт ли узел. }
var
 l_Node : Il3SimpleNode;
begin
 if (f_TreeView = nil) then
  Result := false
 else
 begin
  if Supports(aNode, Il3SimpleNode, l_Node) then
   try
    Result := f_TreeView.TreeStruct.IsExpanded(l_Node);
   finally
    l_Node := nil;
   end//try..finally
  else
   Result := false;
 end;//f_TreeView = nil
end;

function  TeeTreeViewShadow.GetNodeIndex(const aNode: IeeNode): Integer;
  {-}
var
 l_Node : Il3SimpleNode;
begin
 if (f_TreeView = nil) then
  Result := -1
 else
 begin
  if Supports(aNode, Il3SimpleNode, l_Node) then
   try
    Result := f_TreeView.TreeStruct.GetIndex(l_Node);
   finally
    l_Node := nil;
   end//try..finally
  else
   Result := -1;
 end;//f_TreeView = nil
end;

function TeeTreeViewShadow.GetNodeAbsIndex(const aNode: IeeNode): Integer;
  {-}
var
 l_Node : Il3Node;
begin
 if (f_TreeView = nil) then
  Result := -1
 else
 begin
  if Supports(aNode, Il3Node, l_Node) then
   try
    Result := f_TreeView.CTree.GetAbsIndex(l_Node);
   finally
    l_Node := nil;
   end//try..finally
  else
   Result := -1;
 end;//f_TreeView = nil
end;

procedure TeeTreeViewShadow.ExpandAll;
  {-}
begin
 if (f_TreeView <> nil) then
  f_TreeView.ExpandNodeOnDeep;
end;

procedure TeeTreeViewShadow.CollapseAll;
  {-}
begin
 if (f_TreeView <> nil) then
  f_TreeView.ExpandNodeOnDeep(nil, false);
end;

function  TeeTreeViewShadow.GotoNode(const aNode : IeeNode) : Longint;
  {-}
 function CountLastVisible(const aNode: Il3Node) : Il3Node;
 var
  l_Current,
  l_Root     : Il3Node;
  l_AbsIndex : Integer;
 begin
  Result := nil;
  l_Current := aNode;
  try
   with f_TreeView do
   begin
    l_Root := TreeStruct.RootNode As Il3Node;
    try
     if l_Current.IsSame(l_Root) then
      Result := l_Current
     else
      while Assigned(l_Current) and
            not l_Current.IsSame(l_Root) do
      begin
       l_AbsIndex := CTree.GetAbsIndex(l_Current);
       if l_AbsIndex < 0 then // Для позиционирования подали Node не из текущего дерева.
        exit;
       if not CTree.TestFlagMask(l_AbsIndex, nfHidden) then
       begin
        if Result = nil then
         Result := l_Current;
       end
       else
        Result := nil;

       l_Current := l_Current.ParentNode;
      end;
    finally
     l_Root := nil;
    end;
   end;
  finally
   l_Current := nil;
  end;
 end;

var
 l_Visible,
 l_Node     : Il3Node;
begin
 if (f_TreeView = nil) then
  Result := -1
 else
 begin
  if Supports(aNode, Il3Node, l_Node) then
  try
   l_Visible := CountLastVisible(l_Node);
   if l_Visible = nil then
    Result := -1
   else
    try
     Result := f_TreeView.GotoOnNode(l_Visible);
    finally
     l_Visible := nil;
    end;
  finally
    l_Node := nil;
  end
 else
  Result := -1;
 end;//f_TreeView = nil
end;

function  TeeTreeViewShadow.Get_Root: IeeNode;
begin
 if (f_TreeView = nil) or
    (f_TreeView.TreeStruct = nil) then
  Result := nil
 else
  Result := TeeNode.Make(f_TreeView.TreeStruct.RootNode);
end;

procedure TeeTreeViewShadow.Set_Root(const aValue: IeeNode);
  {-}
var
 l_Node : Il3RootNode;
begin
 if (f_TreeView <> nil) then
 begin
  f_TreeView.Changing;
  try
   f_TreeView.f_PrevNode := nil;
   f_TreeView.f_CurNode := nil;
   if (aValue = nil) then
    f_TreeView.TreeStruct.RootNode := nil
   else if Supports(aValue, Il3RootNode, l_Node) then
    try
     f_TreeView.CTree.SetRootAndCountView(l_Node, l3_DelayedCountView);
    finally
     l_Node := nil;
    end;//try..finally
   f_TreeView.InternalSetCurrent(0);
  finally
   f_TreeView.Changed;
  end;//try..finally
 end;//f_TreeView <> nil
end;

function  TeeTreeViewShadow.Get_SelectedCount: Integer;
  {-}
begin
 if (f_TreeView = nil) then
  Result := 0
 else
  Result := f_TreeView.TreeStruct.SelectCount;
end;

function TeeTreeViewShadow.IsChanging : Boolean;
{* - дерево находится в фазе обновления. }
begin
 Result := f_UpdateCount > 0;
end;

procedure TeeTreeViewShadow.Changing;
  {-}
begin
 if (f_TreeView <> nil) then
 begin
  f_TreeView.TreeStruct.Changing;
  Inc(f_UpdateCount);
 end;
end;

procedure TeeTreeViewShadow.Changed{(aCountView: Integer = ee_NeedCountView)};
  {-}
begin
 if (f_TreeView <> nil) then
 begin
  f_TreeView.TreeStruct.Changed{Ex(aCountView)};
  Dec(f_UpdateCount);
 end;
end;

function  TeeTreeViewShadow.GetAbsIndex(const aNode : IeeNode): Integer;
  //overload;
  {-}
var
 l_Node : Il3Node;
begin
 if (f_TreeView = nil) then
  Result := -1
 else
 begin
  if Supports(aNode, Il3Node, l_Node) then
   try
    Result := f_TreeView.CTree.GetAbsIndex(l_Node);
   finally
    l_Node := nil;
   end//try..finally
  else
   Result := -1;
 end;//f_TreeView = nil
end;

function  TeeTreeViewShadow.GetAbsIndex(anIndex : Integer): Integer;
  //overload;
  {-}
var
 l_Node : Il3Node;
begin
 if (f_TreeView = nil) then
  Result := -1
 else
 begin
  Supports(f_TreeView.GetNode(anIndex), Il3Node, l_Node);
  if (l_Node = nil) then
   Result := -1
  else
   Result := f_TreeView.CTree.GetAbsIndex(l_Node);
 end;//f_TreeView = nil
end;

function  TeeTreeViewShadow.Iterate(Action             : TeeNodeAction;
                                    IterMode           : Integer = 0;
                                    const aSubRootNode : IeeNode = nil;
                                    const aFromNode    : IeeNode = nil) : IeeNode;
  {* - перебрать все узлы. IterMode см. imExpandOnly etc. }

 function l_CheckNode(const aNode: Il3Node): Boolean;
 begin
  Result := Action(TeeNode.Make(aNode));
 end;

 function l_CheckSimpleNode(const aNode: Il3SimpleNode): Boolean;
 begin
  Result := Action(TeeNode.Make(aNode));
 end;

var
 l_SubRoot   : Il3Node;
 l_FromNode  : Il3Node;
 l_FromNodeS : Il3SimpleNode;
 l_Tree      : Il3Tree;
begin
 if (f_TreeView = nil) then
  Result := nil
 else
 begin
  if Supports(f_TreeView.TreeStruct, Il3Tree, l_Tree) then
  begin
   Supports(aSubRootNode, Il3Node, l_SubRoot);
   Supports(aFromNode, Il3Node, l_FromNode);
   Result := TeeNode.Make(l_Tree.IterateF(l3L2NA(@l_CheckNode), IterMode, l_SubRoot, l_FromNode));
  end//Supports(f_TreeView.TreeStruct, Il3Tree, l_Tree)
  else
  begin
   Supports(aSubRootNode, Il3SimpleNode, l_FromNodeS);
   Result := TeeNode.Make(f_TreeView.TreeStruct.SimpleIterateF(l3L2SNA(@l_CheckSimpleNode), IterMode, l_FromNodeS));
  end;//Supports(f_TreeView.TreeStruct, Il3Tree, l_Tree)
 end;//f_TreeView = nil
end;

function  TeeTreeViewShadow.IterateF(Action             : TeeNodeAction;
                                     IterMode           : Integer = 0;
                                     const aSubRootNode : IeeNode = nil;
                                     const aFromNode    : IeeNode = nil) : IeeNode;
  {* - перебрать все узлы и освободить заглушку для Action. }
begin
 try
  Result := Iterate(Action, IterMode, aSubRootNode, aFromNode);
 finally
  l3FreeFA(Tl3FreeAction(Action));
 end;//try..finally
end;

function  TeeTreeViewShadow.GetNextSelected(const aCurNode: IeeNode) : IeeNode;
  {-}
var
 l_Tree : Il3Tree;
 l_Node : Il3Node;
begin
 if (f_TreeView = nil) then
  Result := nil
 else
 begin
  if f_TreeView.MultiSelect then
  begin
   l_Tree := f_TreeView.CTree;
   if (aCurNode = nil) then
    Result := TeeNode.Make(l_Tree.GetNextSelect(nil))
   else if Supports(aCurNode, Il3Node, l_Node) then
    Result := TeeNode.Make(l_Tree.GetNextSelect(l_Node))
   else
    Result := nil;
  end//f_TreeView.MultiSelect
  else
  begin
   if Get_Root.IsSameNode(aCurNode) then
    Result := Get_CurrentNode
   else
    Result := nil;
  end;//f_TreeView.MultiSelect
 end;//f_TreeView = nil
end;

procedure TeeTreeViewShadow.ClearSelected;
var
 l_Tree: Il3Tree;
begin
 if (f_TreeView <> nil) then
  f_TreeView.CTree.ClearSelected;
end;

procedure TeeTreeViewShadow.SetAllFlags(aMode : TeeSetBitType; aFlags : Integer);
  {-}
begin
 if (f_TreeView <> nil) then
  f_TreeView.CTree.SetAllFlag(eeBT2L3BT[aMode], aFlags);
end;

function TeeTreeViewExport.GetSelectedCountForStatusbar: Integer;
begin
 Result := TreeStruct.SelectCount;
end;

end.

