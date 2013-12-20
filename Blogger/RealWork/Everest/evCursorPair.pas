unit evCursorPair;
{* Реализация выделения для различных типов параграфов. }

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: evCursorPair -  }
{ Начат: 13.03.2001 12:48 }
{ $Id: evCursorPair.pas,v 1.52 2012/11/29 12:10:12 dinishev Exp $ }

// $Log: evCursorPair.pas,v $
// Revision 1.52  2012/11/29 12:10:12  dinishev
// {Requestlink:409750147}
//
// Revision 1.51  2012/04/20 14:56:33  lulin
// {RequestLink:283610570}
//
// Revision 1.50  2011/08/25 14:02:58  fireton
// - возможность профилировать процедуру SearchReplace
//
// Revision 1.49  2011/08/23 18:01:07  lulin
// {RequestLink:279774229}.
//
// Revision 1.48  2011/05/18 17:45:15  lulin
// {RequestLink:266409354}.
//
// Revision 1.47  2011/03/31 13:37:47  lulin
// {RequestLink:255980970}.
//
// Revision 1.46  2010/07/23 08:39:04  fireton
// - механизм "перезапуска" цепочки searcher'ов
//
// Revision 1.45  2010/06/28 13:11:44  lulin
// {RequestLink:165514106}.
// - проверяем явную ошибку.
//
// Revision 1.44  2010/05/07 13:34:03  lulin
// {RequestLink:210436873}.
// - bug fix: блоки не умели сохраняться, когда параграф не привязан к контейнеру документа.
//
// Revision 1.43  2010/05/07 13:17:09  lulin
// {RequestLink:210436873}.
// - bug fix: не всякий контекст умеет сохранять курсоры.
//
// Revision 1.42  2010/03/02 13:34:35  lulin
// {RequestLink:193823544}.
//
// Revision 1.41  2010/03/01 16:45:07  lulin
// {RequestLink:193823544}.
//
// Revision 1.40  2009/07/23 13:42:10  lulin
// - переносим процессор операций туда куда надо.
//
// Revision 1.39  2009/07/14 14:56:25  lulin
// {RequestLink:141264340}. №25.
//
// Revision 1.38  2009/07/13 12:31:36  lulin
// {RequestLink:141264340}. №23ac.
//
// Revision 1.37  2009/07/11 15:55:09  lulin
// {RequestLink:141264340}. №22.
//
// Revision 1.36  2009/07/11 09:24:41  lulin
// - избавляемся от лишнего дёрганья счётчиков ссылок.
//
// Revision 1.35  2009/07/10 15:04:43  lulin
// - избавляемся от лишнего дёрганья счётчиков ссылок.
//
// Revision 1.34  2009/06/18 18:35:07  lulin
// {RequestLink:142613457}.
//
// Revision 1.33  2009/06/05 17:13:47  lulin
// - переносим на модель то, что возможно перенести.
//
// Revision 1.32  2009/04/14 18:11:54  lulin
// [$143396720]. Подготовительная работа.
//
// Revision 1.31  2009/04/14 08:24:25  lulin
// [$142613919]. Группируем функциональность в базовых классах.
//
// Revision 1.30  2009/04/13 16:43:33  lulin
// [$142613919]. Переносим базовый курсор на модель.
//
// Revision 1.29  2009/04/09 11:18:58  lulin
// - наводим порядок с указателями на объекты.
//
// Revision 1.28  2009/04/03 17:51:27  lulin
// [$140837386]. Ликвидируем старорежимную примесь.
//
// Revision 1.27  2008/12/12 19:19:13  lulin
// - <K>: 129762414.
//
// Revision 1.26  2008/11/11 11:09:22  lulin
// - <K>: 122672539.
//
// Revision 1.25  2008/10/08 11:07:14  lulin
// - избавляемся от ненужных зависимостей между интерфейсами.
//
// Revision 1.24  2008/05/28 07:58:23  lulin
// - <CQ>: 29146.
//
// Revision 1.23  2008/05/22 11:38:17  lulin
// - подсвечиваем первое найденное слово.
//
// Revision 1.22  2008/05/15 13:25:34  lulin
// - <K>: 90446803.
//
// Revision 1.21  2008/04/23 10:38:40  lulin
// - уменьшаем количество "затычек".
//
// Revision 1.20  2008/04/15 08:23:45  lulin
// - передаём вью в качестве параметра.
//
// Revision 1.19  2008/04/14 13:46:35  lulin
// - <K>: 89096854.
//
// Revision 1.18  2008/04/14 08:47:22  lulin
// - передаём вью в рамках <K>: 89096854.
//
// Revision 1.17  2008/04/11 13:19:12  lulin
// - передаём вью в рамках <K>: 89096854.
//
// Revision 1.16  2008/04/11 13:03:52  lulin
// - <K>: 89096854.
//
// Revision 1.15  2008/04/11 12:26:08  lulin
// - <K>: 89100752.
//
// Revision 1.14  2008/04/11 12:01:30  lulin
// - <K>: 89100701.
//
// Revision 1.13  2008/04/11 11:29:58  lulin
// - передаём вью в рамках <K>: 89096854.
//
// Revision 1.12  2008/04/10 17:34:24  lulin
// - <K>: 89097983.
//
// Revision 1.11  2008/04/09 17:57:07  lulin
// - передаём вью в рамках <K>: 89096854.
//
// Revision 1.10  2008/04/09 11:20:21  lulin
// - передаём вью в рамках <K>: 89096854.
//
// Revision 1.9  2008/04/09 08:04:45  lulin
// - передаём вью в рамках <K>: 89096854.
// - не компилировался Архивариус.
//
// Revision 1.8  2008/04/09 07:03:18  lulin
// - пытаемся ловить неиспользуемую функциональность.
//
// Revision 1.7  2008/04/08 16:41:20  lulin
// - передаём _View в AssignPoint. <K>: 89096854.
//
// Revision 1.6  2008/03/14 13:43:29  lulin
// - <K>: 86479821.
//
// Revision 1.5  2008/03/03 20:05:45  lulin
// - <K>: 85721135.
//
// Revision 1.4  2008/02/07 19:12:55  lulin
// - избавляемся от излишне универсальных методов базовых списков.
//
// Revision 1.3  2007/12/04 12:47:00  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.1.2.61  2007/12/03 15:51:39  lulin
// - cleanup.
//
// Revision 1.1.2.60  2007/09/19 09:04:54  lulin
// - bug fix: не вставляли текст, если у диапазона не был определен начальный курсор (CQ OIT5-26756).
//
// Revision 1.1.2.59  2007/06/25 13:29:06  lulin
// - cleanup.
//
// Revision 1.1.2.58  2007/06/22 20:18:31  lulin
// - cleanup.
//
// Revision 1.1.2.57  2007/06/22 19:24:51  lulin
// - cleanup.
//
// Revision 1.1.2.56  2007/06/22 19:18:56  lulin
// - cleanup.
//
// Revision 1.1.2.55  2007/02/12 18:06:13  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.1.2.54  2007/02/12 16:40:19  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.1.2.53  2007/01/24 10:21:42  oman
// - new: Локализация библиотек - ev (cq24078)
//
// Revision 1.1.2.52  2007/01/05 14:37:18  lulin
// - cleanup.
//
// Revision 1.1.2.51  2006/11/03 11:00:03  lulin
// - объединил с веткой 6.4.
//
// Revision 1.1.2.50.4.1  2006/10/25 09:44:58  lulin
// - операция клонирования спущена на базовую точку.
//
// Revision 1.1.2.50  2006/09/26 14:34:51  oman
// - fix: Сбрасываем выделение, только если что-нибудь вставили
//
// Revision 1.1.2.49  2006/09/18 16:44:32  lulin
// - сделан переход по гиперссылкам назад (CQ OIT5-21613).
//
// Revision 1.1.2.48  2006/09/18 07:20:37  lulin
// - убран ненужный параметр.
//
// Revision 1.1.2.47  2006/07/21 11:40:26  lulin
// - имя метода убрано из комментариев - чтобы не находилось контекстным поиском.
//
// Revision 1.1.2.46  2006/07/21 11:35:24  lulin
// - имя метода убрано из комментариев - чтобы не находилось контекстным поиском.
//
// Revision 1.1.2.45  2006/07/20 16:02:03  lulin
// - имя метода убрано из комментариев - чтобы не находилось контекстным поиском.
//
// Revision 1.1.2.44  2006/07/10 14:55:44  lulin
// - убрана инициализация ссылки на родительский объект выделения.
//
// Revision 1.1.2.43  2005/12/07 16:08:42  lulin
// - cleanup.
//
// Revision 1.1.2.42  2005/11/14 18:36:56  lulin
// - теперь при заборе в буфер обмена в него кладется контейнер документа, а не TextSource - должно починить ошибку CQ OIT5-17870.
//
// Revision 1.1.2.41  2005/11/09 15:28:23  lulin
// - базовые интерфейсы перенесены в правильный модуль.
//
// Revision 1.1.2.40  2005/11/05 07:33:33  lulin
// - cleanup: убраны ненужные преобразования объекта к параграфу.
//
// Revision 1.1.2.39  2005/09/23 16:03:54  lulin
// - выделен модуль с общими интерфейсами.
//
// Revision 1.1.2.38  2005/07/21 07:54:31  lulin
// - убран промежуточный интерфейс и упрощено использование функции поиска/замены.
//
// Revision 1.1.2.37  2005/07/21 06:05:47  lulin
// - в процедуре поиска модифицируемый курсор заменен на немодифицируемый.
//
// Revision 1.1.2.36  2005/07/20 18:21:13  lulin
// - убран переходный интерфейс.
//
// Revision 1.1.2.35  2005/07/20 17:43:34  lulin
// - класс переименован в соответствии с основным интерфейсом, который он реализует.
//
// Revision 1.1.2.34  2005/07/19 16:47:04  lulin
// - убран косвенный запрос подтверждения замены. Теперь соответствующий интерфейс подается непосредственно в Replacer.
//
// Revision 1.1.2.33  2005/07/19 15:58:06  lulin
// - убрана возможность присваивать курсору в качестве родителя, что-нибудь отличное от курсора.
//
// Revision 1.1.2.32  2005/07/19 15:32:23  lulin
// - убрана часть обращений к интересующим интерфейсам через цепочку Parent'ов диапазонов и курсоров.
//
// Revision 1.1.2.31  2005/07/19 12:03:19  lulin
// - cleanup: удалены ненужные модули и методы.
//
// Revision 1.1.2.30  2005/07/19 08:25:03  lulin
// - избавился от посылки сообщений для конвертации текста параграфа - перевел конвертацию на общий механизм Search/_Replace.
//
// Revision 1.1.2.29  2005/07/18 16:03:13  lulin
// - избавляемся от косвенного приведения одного интерфейса к другому.
//
// Revision 1.1.2.28  2005/07/18 15:10:26  lulin
// - избавляемся от косвенного приведения одного интерфейса к другому.
//
// Revision 1.1.2.27  2005/07/18 11:22:36  lulin
// - методу, возвращаещему выделение на параграфе дано более подходящее название.
//
// Revision 1.1.2.26  2005/07/15 11:01:00  lulin
// - избавился от опосредованного получения интерфейса для записи тега.
//
// Revision 1.1.2.25  2005/07/11 06:07:05  lulin
// - упорядочены названия интерфейсов.
//
// Revision 1.1.2.24  2005/06/16 14:59:13  lulin
// - cleanup: удалены ненужные зависимости.
//
// Revision 1.1.2.23  2005/06/16 14:11:29  lulin
// - cleanup: отдельно стоящие процедуры перенесены на интерфейсы.
//
// Revision 1.1.2.22  2005/06/15 13:05:59  lulin
// - убрана инициализация блоков выделения в явном виде.
//
// Revision 1.1.2.21  2005/06/15 11:45:21  lulin
// - cleanup.
//
// Revision 1.1.2.20  2005/06/15 11:04:09  lulin
// - убрана инициализация курсоров в явном виде.
//
// Revision 1.1.2.19  2005/06/14 16:25:10  lulin
// - new method: IevTagROPoint._PointToParent.
// - remove proc: evArrangeCursorLevel.
//
// Revision 1.1.2.18  2005/06/08 10:18:30  lulin
// - вместо объекта используем интерфейс.
//
// Revision 1.1.2.17  2005/06/07 13:43:46  lulin
// - удален ненужный модуль.
//
// Revision 1.1.2.16  2005/06/06 15:36:08  lulin
// - продолжаем бороться со знанием о природе реализации курсоров.
//
// Revision 1.1.2.15  2005/06/03 12:08:18  lulin
// - cleanup: убраны ненужные зависимости.
//
// Revision 1.1.2.14  2005/06/02 16:38:47  lulin
// - cleanup.
//
// Revision 1.1.2.13  2005/06/02 14:44:23  lulin
// - bug fix: восстановлена работа множественного выделения, отъехавшая в связи с переходом на интерфейсы.
//
// Revision 1.1.2.12  2005/06/02 12:33:07  lulin
// - вчерне заменил прямое создание блока выделения на его получение от фабрики.
//
// Revision 1.1.2.11  2005/06/02 06:05:07  lulin
// - инициализуруем блок выделения интерфейсами, а не объектами.
//
// Revision 1.1.2.10  2005/06/01 16:50:52  lulin
// - убрано знание о реализации курсоров выделения.
//
// Revision 1.1.2.9  2005/06/01 16:35:34  lulin
// - cleanup.
//
// Revision 1.1.2.8  2005/06/01 16:22:24  lulin
// - remove unit: evIntf.
//
// Revision 1.1.2.7  2005/06/01 14:02:17  lulin
// - new unit: evCursor.
//
// Revision 1.1.2.6  2005/05/31 17:46:39  lulin
// - изживаем остатки объектов в качестве курсоров.
//
// Revision 1.1.2.5  2005/05/31 17:09:19  lulin
// - изживаем остатки объектов в качестве курсоров.
//
// Revision 1.1.2.4  2005/05/31 15:57:20  lulin
// - изживаем остатки объектов в качестве курсоров.
//
// Revision 1.1.2.3  2005/05/31 08:15:20  lulin
// - new behavior: корректнее присваиваем инструменты для работы с тегами.
//
// Revision 1.1.2.2  2005/05/20 11:27:34  lulin
// - класс TevBlock вынесен в отдельный модуль.
//
// Revision 1.1.2.1  2005/05/19 14:52:38  lulin
// - rename unit: evBlock -> evCursorPair.
//
// Revision 1.135.2.2  2005/05/19 13:18:43  lulin
// - remove unit: evFont.
//
// Revision 1.135.2.1  2005/05/18 12:42:45  lulin
// - отвел новую ветку.
//
// Revision 1.133.2.3  2005/05/18 12:32:07  lulin
// - очередной раз объединил ветку с HEAD.
//
// Revision 1.133.2.2  2005/04/12 15:45:36  lulin
// - мусор связанный с удержанием Top окна при переформатировании, спрятан под Define.
//
// Revision 1.133.2.1  2005/04/08 13:35:04  lulin
// - _Processor стал обязательным параметром.
//
// Revision 1.135  2005/05/16 15:31:11  lulin
// - cleanup: прямое использование объекта заменено на использование интерфейса.
//
// Revision 1.134  2005/05/13 17:29:47  lulin
// - new behavior: теперь стиль вычисляется на основе мультивыделения.
//
// Revision 1.133  2005/04/04 12:11:29  lulin
// - переименованы файлы с шаблонами.
//
// Revision 1.132  2005/04/04 12:03:17  lulin
// - используем шаблоны для реализации иструментов для параграфов конкретных типов.
//
// Revision 1.131  2005/03/30 16:24:46  lulin
// - cleanup.
//
// Revision 1.130  2005/03/28 11:32:07  lulin
// - интерфейсы переехали в "правильный" модуль.
//
// Revision 1.129  2005/03/23 11:16:29  lulin
// - удалено ненужное исключение.
//
// Revision 1.128  2005/03/22 12:42:16  lulin
// - bug fix: установка стиля убивала гиперссылки.
//
// Revision 1.127  2005/03/19 16:39:50  lulin
// - спрятаны ненужные методы.
//
// Revision 1.126  2005/03/16 17:04:20  lulin
// - переходим к Ik2Tag.
//
// Revision 1.125  2005/03/16 12:16:51  lulin
// - переходим к Ik2Tag.
//
// Revision 1.124  2005/03/10 07:05:10  lulin
// - от Tk2AtomR переходим к Ik2Tag.
//
// Revision 1.123  2004/10/28 14:10:55  lulin
// - remove unit: evParam.
//
// Revision 1.122  2004/10/19 13:37:44  lulin
// - bug fix: сбивался Top в редакторе, при синхронизации установки закладки.
//
// Revision 1.121  2004/10/04 10:33:01  lulin
// - bug fix: после поиска контекста окно скроллировалось чуть вверх, скрывая то, что было найдено в последний раз (CQ OIT5-9999).
//
// Revision 1.120  2004/09/06 09:44:06  law
// - bug fix: после ввода строки поверх выделенного текста пропадал курсор (CQ OIT5-8692).
//
// Revision 1.119  2004/08/11 12:41:11  law
// - new behavior: при поиске в документе и догрузке кусочков предотвращаем запуск форматирования (CQ OIT5-8682). Вроде бы стало лучше.
//
// Revision 1.118  2004/07/06 12:08:02  law
// - new behavior: для Немезиса открутил сбор информации о стиле и шрифте.
//
// Revision 1.117  2004/06/28 13:34:45  law
// - remove class: Il3Pointer.
//
// Revision 1.116  2004/06/22 13:42:21  law
// - реализация _DoStore переехала из TevCursorPair в TevBlock.
//
// Revision 1.115  2004/06/11 15:33:36  law
// - продолжаем оптимизировать загрузку документа кусками.
//
// Revision 1.114  2004/06/09 09:53:36  law
// - change: переходим к типу TevPair от пары параметров _Start, _Finish.
//
// Revision 1.113  2004/05/06 17:28:16  law
// - cleanup: избавляемся от типа TevAfterSearchEvent - третий шаг в переходе от события замены к интерфейсу.
//
// Revision 1.112  2004/05/06 17:02:32  law
// - cleanup: у ReplaceFunc удален ненужный и непонятный параметр Sender.
//
// Revision 1.111  2004/05/06 10:58:26  law
// - cleanup.
//
// Revision 1.110  2004/05/06 10:20:39  law
// - change: выравнивание уровня курсоров перенесено из _TevParaListCursorPair._SearchPrim в TevCursorPair.SearchProcess.
//
// Revision 1.109  2004/05/06 09:44:01  law
// - cleanup: переименованы локальные переменные.
//
// Revision 1.108  2004/01/20 16:46:35  law
// - cleanup: TevBlock.StoreExPrim переименован в _DoStore.
//
// Revision 1.107  2003/10/02 16:33:23  law
// - rename unit: evBseCur -> evBaseCursor.
//
// Revision 1.106  2003/02/17 15:22:17  law
// - bug fix: BUG: в пустой ячейке таблицы жмем Shift-End - ячейка не выделяется, хотя по идее должна бы (№121).
//
// Revision 1.105  2003/02/06 15:15:03  law
// - cleanup: переходим от сообщений (message) к виртуальным функциям.
//
// Revision 1.104  2003/02/06 14:42:58  law
// - cleanup: переходим от сообщений (message)  к виртуальным функциям.
//
// Revision 1.103  2003/02/05 13:53:10  law
// - cleanup: переходим от сообщений (message)  к виртуальным функциям.
//
// Revision 1.102  2003/02/04 08:27:44  law
// - cleanup.
//
// Revision 1.101  2003/01/23 14:56:25  law
// - cleanup: избавляемся от прямого использования WM_Clear для удаления содержимого выделения, теперь используем evDeleteBlock.
//
// Revision 1.100  2002/12/26 16:31:28  law
// - new directive: evNeedEditableCursors.
//
// Revision 1.99  2002/12/26 16:03:15  law
// - new directive: evNeedEditableCursors.
//
// Revision 1.98  2002/12/26 15:46:35  law
// - new directive: evNeedMarkers.
//
// Revision 1.97  2002/12/25 11:59:15  law
// - cleanup.
//
// Revision 1.96  2002/12/20 13:44:45  law
// - new param: TevSearchToo._Finish - aCancel.
//
// Revision 1.95  2002/12/19 11:44:28  law
// - remove prop: _TevBasePara.BlockLength.
//
// Revision 1.94  2002/12/19 09:47:49  law
// - remove type: TevSearchEvent.
// - change: ипользуем IevSearcher вместо TevBaseSearcher.
//
// Revision 1.93  2002/12/17 10:33:17  law
// - bug fix.
//
// Revision 1.92  2002/12/17 10:03:26  law
// - new unit: evSolidParaCursorPair.
//
// Revision 1.91  2002/12/17 09:55:09  law
// - cleanup.
//
// Revision 1.90  2002/12/17 09:49:42  law
// - new unit: evParaListCursorPair.
//
// Revision 1.89  2002/12/17 09:08:06  law
// - new unit: evDocumentPartCursorPair.
//
// Revision 1.88  2002/12/17 09:03:03  law
// - new unit: evDocumentCursorPair.
//
// Revision 1.87  2002/12/17 08:59:48  law
// - new unit: evTableCursorPair.
//
// Revision 1.86  2002/12/17 08:31:19  law
// - new unit: evTableRowCursorPair.
//
// Revision 1.85  2002/12/17 08:24:44  law
// - new unit: evTableCellCursorPair.
//
// Revision 1.84  2002/12/16 15:23:19  law
// - new unit: evParaListCursor.
//
// Revision 1.83  2002/12/16 13:21:00  law
// - new unit: evDocumentPartCursor.
//
// Revision 1.82  2002/12/16 12:56:02  law
// - new unit: evTextParaCursorPair.
//
// Revision 1.81  2002/11/29 14:22:10  law
// - remove method: _TevBaseCursor.SetEntryPointHard.
// - new behavior: для "solid" параграфов обрабатываем High(Long).
//
// Revision 1.80  2002/11/14 12:37:13  law
// - bug fix: неправильно сохранялась одна целиком выделенная ячейка таблицы.
//
// Revision 1.79  2002/11/14 12:20:53  law
// - new behavior: целые блоки сохраняются в один прием.
//
// Revision 1.78  2002/11/14 10:03:28  law
// - bug fix: иногда при сохранении списков параграфов вставлялся лишний пустой пераграф.
//
// Revision 1.77  2002/11/14 09:52:37  law
// - bug fix: иногда при сохранении таблиц вставлялся лишний пустой пераграф.
//
// Revision 1.76  2002/11/12 15:43:34  law
// - new behavior: k2_idBitmapPara и k2_idBreak теперь корректно обрабатывают выделение, которое начинается или заканчивается на них.
//
// Revision 1.75  2002/11/10 16:28:07  law
// - bug fix: зацикливание при поиске в свернутых блоках.
//
// Revision 1.74  2002/10/25 13:41:17  law
// - cleanup.
//
// Revision 1.73  2002/10/17 14:52:30  law
// - cleanup.
//
// Revision 1.72  2002/10/08 12:10:28  law
// - bug fix: некорректно удалялся текст при вставке блока.
//
// Revision 1.71  2002/10/08 08:18:10  law
// - new behavior: присваиваем курсору значение FFinish, после вызова AfterReplace.
//
// Revision 1.70  2002/09/18 06:03:32  law
// - cleanup: удален параметр IsDefault.
//
// Revision 1.69  2002/09/11 11:33:12  law
// - new proc: _TevCustomTextSource._InsertDocumentPart.
//
// Revision 1.68  2002/08/27 13:55:03  law
// - new behavior: при копировании целого блока не генерирум пустой параграф.
//
// Revision 1.67  2002/07/09 13:57:38  law
// - new unit: evMsgCode.
//
// Revision 1.66  2002/07/09 12:02:18  law
// - rename unit: evUnits -> l3Units.
//
// Revision 1.65  2002/07/08 15:37:38  law
// - new behavior: не записываем несохраняемые дочерние теги.
//
// Revision 1.64  2002/03/01 14:38:47  law
// - new behavior: добавлена возможность указания копировать "пи" или нет.
//
// Revision 1.63  2002/02/15 14:36:12  law
// - new prop: _IedRange.Document.
//
// Revision 1.62  2002/02/14 15:28:30  law
// - bug fix: не забиралась "пи".
//
// Revision 1.61  2002/02/13 13:11:34  law
// - new behavior: реализован метод TevCursorPair.Assign.
//
// Revision 1.60  2002/02/13 12:51:50  law
// - new behavior: сделана реализация метода TevCursorPair._Clone.
//
// Revision 1.59  2002/02/08 15:31:50  law
// - rename unit: evTxtPar -> evTextPara.
//
// Revision 1.58  2002/02/08 12:52:18  law
// - new unit: evParaListTools.
//
// Revision 1.57  2002/02/08 12:14:48  law
// - new unit: evParaList.
//
// Revision 1.56  2002/02/07 17:56:08  law
// - cleanup: из _TevBasePara убраны знания о TevBaseParaList.
//
// Revision 1.55  2002/02/07 15:22:29  law
// - rename class: IevBlock -> TevBlock, для того чтобы не путать его с интерфейсом.
//
// Revision 1.54  2002/02/07 15:05:24  law
// - rename class: IevCursor -> _TevCursor, для того чтобы не путать его с интерфейсом.
//
// Revision 1.53  2001/12/27 15:19:28  law
// - change visibility: Tl3CustomString._SetSt перенесен из секции public в protected.
//
// Revision 1.52  2001/12/27 15:03:29  law
// - new constructors: добавлены два конструктора Tl3String.Make.
//
// Revision 1.51  2001/11/23 16:44:53  law
// - change: замена использования TevMarker на IevMarker.
//
// Revision 1.50  2001/11/23 15:10:22  law
// - cleanup: убран тип RevListCursorPair.
//
// Revision 1.49  2001/11/23 15:04:21  law
// - cleanup: поправлен порядок методов.
//
// Revision 1.48  2001/11/23 14:20:41  law
// - cleanup.
//
// Revision 1.47  2001/11/23 13:32:56  law
// - bug fix: "Некорректно изменяется размер ячеек" (см. _TestSet\ComplexTable\8.evd, задача №1364).
//
// Revision 1.46  2001/11/16 15:39:13  law
// - cleanup: имена локальных переменных.
//
// Revision 1.45  2001/11/16 15:23:32  law
// - bug fix: GPF при удалении строки таблицы (см. задачу 1344, _TestSet\ComplexTable\7.evd).
//
// Revision 1.44  2001/09/28 11:40:01  law
// - bug fix: не выделялась целиком таблица, задача №604 (см. _TestSet\Table\4.evd).
//
// Revision 1.42  2001/09/28 09:04:13  law
// - bug fix: поиск в таблице, в соответствии с задачей №1101  (см. _TestSet\Table\3.evd).
//
// Revision 1.41  2001/09/25 14:22:14  law
// - new unit: evListBlock - блоки и курсоры для _Il3StringList.
//
// Revision 1.40  2001/09/21 09:58:54  law
// - cleanup.
//
// Revision 1.39  2001/09/07 08:53:00  law
// - rename procedures: evPointX -> l3PointX, evPointY -> l3PointY.
//
// Revision 1.38  2001/09/07 07:05:40  law
// - delete methods: Tl3Base._ParentToClient и Tl3Base._ClientToParent.
//
// Revision 1.37  2001/07/26 15:55:02  law
// - comments: xHelpGen.
//
// Revision 1.36  2001/07/24 08:24:55  law
// - new behavior: при невыделенном конце параграфа теперь не сохраняются Sub'ы.
//
// Revision 1.35  2001/07/11 08:33:59  law
// - bug fix: неправильно удалялись неполностью выделенные параграфы. В соответствии с задачей "Удаление выделения" №664 (см. _TestSet\Deleting\1.evd).
//
// Revision 1.34  2001/07/05 13:01:17  law
// - comments: поправил предыдущий комментарий.
//
// Revision 1.33  2001/07/05 11:58:37  law
// - bug fix: в соответствии с задачей №589 (см. _TestSet\Segments\1.evd).
//
// Revision 1.32  2001/07/04 10:42:16  law
// - bug fix: не получалось выделить таблицу целиком (см. _TestSet\Table\1.evd).
//
// Revision 1.31  2001/06/26 12:16:14  law
// - comments & cleanup.
//
// Revision 1.30  2001/06/26 10:56:19  law
// - new behavior: классу IevBlock добавлено свойство _Sharp и на его основе поправлено зацикливание поиска внутри таблиц.
//
// Revision 1.29  2001/06/25 09:49:14  law
// - bug fix: AV после объединения ячеек таблицы.
//
// Revision 1.28  2001/06/22 13:03:17  law
// - bug fix; неправильно удалялись неполностью выделенные параграфы.
//
// Revision 1.27  2001/06/22 12:41:47  law
// - new behavior: сделана возможность выделения конца параграфа.
//
// Revision 1.26  2001/06/22 09:08:58  law
// - new behavior: другая реализация метода IsSolid.
//
// Revision 1.25  2001/06/18 14:32:48  law
// - cleanup.
//
// Revision 1.24  2001/06/01 14:21:30  law
// - buf fix: неправильное использование Dir_DeletePara иногда приводило к AV.
//
// Revision 1.23  2001/06/01 12:42:58  law
// - bug fix: был AV при удалении таблицы.
//
// Revision 1.22  2001/05/28 14:06:34  law
// - cleanup: убраны ненужные зависимости между модулями.
//
// Revision 1.21  2001/05/25 14:01:07  law
// - new behavior: изменена логика вычисления границ выделения.
//
// Revision 1.20  2001/05/25 11:55:51  law
// - bug fix; попытка предотвратить зацикливание в поиске.
//
// Revision 1.19  2001/05/25 09:52:16  law
// - change: message ev_msgSearch заменен на метод IevBlock.SearchProcess.
//
// Revision 1.18  2001/05/23 12:31:37  law
// - cleanup.
//
// Revision 1.17  2001/04/04 12:40:03  law
// - new interfaces: IevMarker, IevTableColumnMarker.
//
// Revision 1.16  2001/04/04 06:59:00  law
// - bug fix: доделано рисование ячеек таблицы, объединенных по вертикали.
//
// Revision 1.15  2001/04/02 14:54:04  law
// - new behavior: в нулевом приближении сделан режим overwrite.
//
// Revision 1.14  2001/04/02 12:48:21  law
// - потихонечку переходим от внутренних сообщений к интерфейсам.
//
// Revision 1.13  2001/03/30 11:54:33  law
// - курсор для текстовых параграфов вынесен в модуль evTextParaCursor.
//
// Revision 1.12  2001/03/27 16:11:38  law
// - метод _Tag перенесен в класс IevLocation.
//
// Revision 1.11  2001/03/26 13:50:23  law
// - убран класс Wk2Handle.
//
// Revision 1.10  2001/03/23 17:47:03  law
// - сделана реализация IevOpInsertString для IevLocation.
//
// Revision 1.9  2001/03/19 16:15:07  law
// - убрана ненужная переменная.
//
// Revision 1.8  2001/03/19 16:11:14  law
// - удаление ячеек таблицы сделано на основе смещений, а не индексов.
//
// Revision 1.7  2001/03/19 13:46:16  law
// - сделана работа с ячейками таблиц на основании смещений а не индексов.
//
// Revision 1.6  2001/03/16 13:50:45  law
// - bug fix: получение IevHyperlink у IevBlock.
//
// Revision 1.5  2001/03/16 12:28:57  law
// - bug fix: не взводился флажок Modified при удалении гиперссылок.
//
// Revision 1.4  2001/03/15 17:21:43  law
// - немного поправлена обработка сообщений для меню.
//
// Revision 1.3  2001/03/15 14:52:21  law
// - cleaning & coments.
//
// Revision 1.2  2001/03/14 13:24:53  law
// - some cleaup and tuning.
//
// Revision 1.1  2001/03/13 10:58:10  law
// - модуль evBseCur разделен на evBlock и evBseCur.
//

{$Include evDefine.inc }

interface

uses
  Messages,

  Classes,

  l3Types,
  l3Interfaces,
  l3Base,
  l3InternalInterfaces,
  l3Msg,
  l3IID,

  k2Interfaces,
  k2InternalInterfaces,
  k2TagTool,
  k2TagGen,

  evConst,
  evInternalInterfaces,
  evMsgCode,
  evSelection,

  nevBase,
  nevTools
  ;

type
  TevCursorPair = class(TevRange)
   {* Базовый класс для реализации выделения. }
    protected
    // internal fields
      f_Start       : InevBasePoint;
      f_Finish      : InevBasePoint;
      f_B           : TevPair;
    protected
    // property methods
      function  DoDeleteCharToLeft(const aView : InevView;
                                 aDrawLines     : Boolean = false;
                                 const anOp : InevOp = nil): Boolean;
        override;
        {-}
      function  DoInsertBreak(const aView : InevView;
                            aDrawLines     : Boolean = false;
                            const anOp : InevOp = nil): Boolean;
        override;
        {-}
      function  TagReader: InevTagReader;
        override;
        {-}
      procedure GetBlockBorders;
        virtual;
        {-}
      procedure Cleanup;
        override;
        {-}
      function  pm_GetBorders: TevPair;
        override;
        {-}
      procedure GetBorderPoints(out theStart, theFinish: InevBasePoint);
        override;
        {-}
      function DoInsertString(const aView : InevView;
                              const aString : Il3CString;
                              const anOp : InevOp = nil;
                              InsertMode : Bool = true;
                              aFlags     : TnevInsertStringFlags = []): Bool;
        override;
        {-}
      function DoDeleteChar(const aView : InevView;
                            aDrawLines     : Bool;
                            const anOp : InevOp = nil): Bool;
        override;
        {-}
      {$IfDef evNeedMarkers}
      function  DoChangeParam(const aView : InevView;
                              const aMarker  : IevMarker;
                              aValue         : Long;
                              const anOp : InevOp = nil): Bool;
        override;
        {-}
      {$EndIf evNeedMarkers}
      procedure ForceStore;
        override;
        {-}
      procedure DoRefreshBorders;
        override;
       {-}
    public
    // public methods
      procedure Assign(aCursor: TPersistent);
        override;
        {-}
      function COMQueryInterface(const IID: Tl3GUID; out theObj): Tl3HResult;
        override;
        {-}
      function  SearchReplace(const aSearcher : IevSearcher;
                              const aReplacer : IevReplacer;
                              const aConfirm  : InevConfirm;
                              const aCursor   : InevBasePoint = nil;
                              const anOp      : InevOp = nil;
                              aNeedProgress   : Boolean = true): Bool;
        override;
        {-}
      procedure Init(const aStart  : InevBasePoint = nil;
                     const aFinish : InevBasePoint = nil;
                     aSharp        : Boolean = false);
        override;
        {-}
      function  IsSolid(const aView: InevView): Bool;
        override;
        {-}
      function  IsCollapsed(const aView: InevView): Bool;
        override;
        {-}
  end;{TevCursorPair}

implementation

uses
  SysUtils,
  
  Forms,

  l3Const,
  l3MinMax,
  l3InterfacesMisc,
  l3String,
  l3Chars,

  l3Units,
  
  k2Except,
  k2Tags,
  k2TagTools,

  evTypes,
  evExcept,
  evOp,
  evCursorTools,
  evCursor,

  nevInterfaces,
  nevPersistentDocumentContainer
  ;

// start class TevCursorPair

procedure TevCursorPair.Cleanup;
  {override;}
  {-}
begin
 f_Start := nil;
 f_Finish := nil;
 f_B.rStart := l3NilLong;
 f_B.rFinish := l3NilLong;
 inherited;
end;

function TevCursorPair.DoInsertString(const aView : InevView;
                                      const aString    : Il3CString;
                                      const anOp : InevOp = nil;
                                      InsertMode : Bool = true;
                                      aFlags     : TnevInsertStringFlags = []): Bool;
  //override;
  {-}
begin
 Delete(aView, anOp);
 if (f_Start = nil) then
  Result := ParaX.MakePoint.Text.Modify.InsertString(aView, aString, anOp, InsertMode, aFlags)
 else
  Result := f_Start.Text.Modify.InsertString(aView, aString, anOp, InsertMode, aFlags);
 if Result then
  Unselect(aView);
end;

function TevCursorPair.DoDeleteChar(const aView : InevView;
                                    aDrawLines     : Bool;
                                    const anOp : InevOp = nil): Bool;
  //override;
  {-}
begin
 Delete(aView, anOp);
 Result := true;
end;

procedure TevCursorPair.Assign(aCursor: TPersistent);
  //override;
  {-}
begin
 if (Self = aCursor) then
  Exit
 else
 if (aCursor Is TevCursor) then
  Assert(false)(*;
  Init(TevCursor(aCursor).ClonePoint(nil).Point, TevCursor(aCursor).ClonePoint(nil).Point)*)
 else
  inherited;
end;

function TevCursorPair.COMQueryInterface(const IID: Tl3GUID; out theObj): Tl3HResult;
  //override;
  {-}
begin
 if IID.EQ(Ik2TagGeneratorWrap) then
 begin
  Result.SetNoInterface;
  Assert(false);
(*  if (f_Start = nil) then
   Result := Self.Obj.Point.QueryInterface(IID.IID, Obj)
  else
   Result := f_Start.QueryInterface(IID.IID, Obj);*)
 end//IID.EQ(Ik2TagGeneratorWrap)
 else
  Result := inherited COMQueryInterface(IID, theObj);
end;

function TevCursorPair.SearchReplace(const aSearcher : IevSearcher;
                                     const aReplacer : IevReplacer;
                                     const aConfirm  : InevConfirm;
                                     const aCursor   : InevBasePoint = nil;
                                     const anOp      : InevOp = nil;
                                     aNeedProgress   : Boolean = true): Bool;
  //override;
  {-}
var
 l_Start          : InevBasePoint;
 l_Finish         : InevBasePoint;
 l_Cursor         : InevBasePoint;
 l_NeedReplace    : Bool;
 l_Found          : Bool;
 l_FoundSomething : Bool;
 l_FoundBlock     : InevRange;
 ReplaceIndicator : Il3Progress;
 SearchIndicator  : Il3Progress;
 l_Back           : Boolean;
 l_Ctx            : IevCursorContext;
 l_RestartSource  : InevRestartPositionSource;

 procedure CheckIfFound;
 begin
  if not l_FoundSomething AND
     not (ev_soUseInternalCursor in aSearcher.Options) AND
     not (ev_soNoException in aSearcher.Options) then
   raise EevSearchFailed.Create(ev_warSearchFailed);
 end;

begin
 Result := false;
 if (aCursor = nil) then
 begin
  if (f_Start = nil) then
   l_Cursor := ParaX.MakePoint
  else
   l_Cursor := f_Start.ClonePoint(aConfirm.View);
 end//aCursor = nil
 else
  l_Cursor := aCursor;
 l_FoundSomething := false;
 l_NeedReplace := Assigned(aReplacer);
 if not aNeedProgress then
  SearchIndicator := nil
 else
  SearchIndicator := aConfirm.Progress;
 try
  if aNeedProgress AND l_NeedReplace AND aReplacer.NeedProgress then
   ReplaceIndicator := SearchIndicator
  else
   ReplaceIndicator := nil;
  if Assigned(ReplaceIndicator) then
   ReplaceIndicator.Start(DoGetBlockLength, str_nevmmReplace.AsCStr);
  try
   Sharp := true;
   l_Back := ev_soBackward in aSearcher.Options;
   while true do
   begin
    try
     l_Found := Search(aConfirm.View, aSearcher, SearchIndicator, l_Cursor, l_Start, l_Finish);
    except
      on EevSearcherRestart do
      begin
       Assert(Supports(aSearcher, InevRestartPositionSource, l_RestartSource));
       try
        l_Cursor.AssignPoint(aConfirm.View, l_RestartSource.RestartPos);
       finally
        l_RestartSource := nil;
       end;
       Continue;
      end;
    end;
    if l_Found then
    begin
     try
      Assert(l_Start <> nil);
      l_Start := l_Start.PointToParent(l_Cursor.Obj^, true);
      Assert(l_Finish <> nil);
      l_Finish := l_Finish.PointToParent(l_Cursor.Obj^, true);
      if Assigned(ReplaceIndicator) then
       ReplaceIndicator.Progress(l_Finish.Position);
      if (anOp <> nil) AND anOp.SaveUndo then
       if Supports(anOp, IevCursorContext, l_Ctx) then
        try
         l_Ctx.RecordCursor(l_Cursor);
        finally
         l_Ctx := nil;
        end;//try..finally
      with l_Cursor do
      begin
       if l_Back then
        AssignPoint(aConfirm.View, l_Start)
       else
        AssignPoint(aConfirm.View, l_Finish);
       Refresh;
      end;//l_Cursor
      l_FoundSomething := true;
      if not l_NeedReplace then
       break;
      try
       l_FoundBlock := Self.ParaX.Range(l_Start, l_Finish);
       if not aReplacer.Replace(anOp, l_FoundBlock, aConfirm) then
       begin
        Result := true;
        break;
       end;//not aReplacer.Replace
      finally
       l_FoundBlock := nil;
      end;//try..finally
      l_Cursor.AssignPoint(aConfirm.View, l_Finish);
     finally
      l_Start := nil;
      l_Finish := nil;
     end;//try..finally
    end//l_Found
    else
     break;
   end;//while true
  finally
   if Assigned(ReplaceIndicator) then
    ReplaceIndicator.Finish;
  end;//try..finally
 finally
  SearchIndicator := nil;
 end;//try..finally
 CheckIfFound;
end;

{$IfDef evNeedMarkers}
function TevCursorPair.DoChangeParam(const aView : InevView;
                                     const aMarker  : IevMarker;
                                     aValue         : Long;
                                     const anOp : InevOp = nil): Bool;
  //override;
  {-}
var
 M : IevMarker;
begin
 Result := false;
 if (aMarker.CompareLevel(GetRedirect^) = 0) then
 begin
  M := aMarker.MakeCopy(Self.ParaX);
  try
   if (M.Value <> l3NilLong) then
   begin
    M.SetValue(aValue, anOp);
    Result := true;
   end;//M.Value <> l3NilLong
  finally
   M := nil;
  end;{try..finally}
 end;//aMarker.CompareLevel(GetRedirect^) = 0
end;
{$EndIf evNeedMarkers}

procedure TevCursorPair.ForceStore;
  //override;
  {-}
begin
 inherited;
 if (f_Start <> nil) then
  f_Start.ForceStore;
 if (f_Finish <> nil) then
  f_Finish.ForceStore;
end;

function TevCursorPair.DoDeleteCharToLeft(const aView : InevView;
                                        aDrawLines     : Boolean = false;
                                        const anOp : InevOp = nil): Boolean;
  //override;
  {-}
begin
 Result := Delete(aView, anOp);
end;

function TevCursorPair.DoInsertBreak(const aView : InevView;
                                   aDrawLines     : Boolean = false;
                                   const anOp : InevOp = nil): Boolean;
  //override;
  {-}
begin
 Delete(aView, anOp);
 if (f_Start = nil) then
  Result := true
 else
  Result := f_Start.Text.Modify.InsertBreak(aView, aDrawLines, anOp);
end;

function TevCursorPair.pm_GetBorders: TevPair;
  {virtual;}
  {-}
begin
 Result := f_B;
end;

procedure TevCursorPair.GetBorderPoints(out theStart, theFinish: InevBasePoint);
  //override;
  {-}
begin
 theStart := f_Start;
 theFinish := f_Finish;
end;

procedure TevCursorPair.Init(const aStart  : InevBasePoint = nil;
                             const aFinish : InevBasePoint = nil;
                             aSharp        : Boolean = false);
  {override;}
  {-}
begin
 inherited;
 f_Start := aStart;
 f_Finish := aFinish;
 GetBlockBorders;
 f_B.rFinish := Min(f_B.rFinish, DoGetBlockLength);
end;

function TevCursorPair.TagReader: InevTagReader;
  //override;
  {-}
var
 l_Container : InevDocumentContainer;
begin
 l_Container := ParaX.DocumentContainer;
 if (l_Container = nil) then
  Result := TnevPersistentDocumentContainer.Make.TagReader
 else
  Result := l_Container.TagReader; 
end;
  
procedure TevCursorPair.GetBlockBorders;
  {override;}
  {-}
begin
 if (f_Start <> nil) then
  f_B.rStart := f_Start.Position
 else
  f_B.rStart := 0;
 if (f_Finish <> nil) then
  f_B.rFinish := f_Finish.Position
 else
  f_B.rFinish := l3NilLong;
end;

function TevCursorPair.IsSolid(const aView: InevView): Bool;
  {override;}
  {-}
var
 SC, FC : InevBasePoint;
begin
 GetBorderPoints(SC, FC);
 Result := (SC = nil) AND (FC = nil);
end;

function TevCursorPair.IsCollapsed(const aView: InevView): Bool;
  //override;
  {-}
begin
 if (f_Start = nil) OR (f_Finish = nil) then
  Result := false
 else
  Result := (f_Start.Compare(f_Finish) >= 0);
end;

procedure TevCursorPair.DoRefreshBorders;
begin
 GetBlockBorders;
end;

end.

