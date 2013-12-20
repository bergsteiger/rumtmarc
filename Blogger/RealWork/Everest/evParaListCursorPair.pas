unit evParaListCursorPair;

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: evParaListCursorPair - }
{ Начат: 17.12.2002 12:09 }
{ $Id: evParaListCursorPair.pas,v 1.183 2013/04/24 09:35:36 lulin Exp $ }

// $Log: evParaListCursorPair.pas,v $
// Revision 1.183  2013/04/24 09:35:36  lulin
// - портируем.
//
// Revision 1.182  2013/04/15 10:39:28  dinishev
// {Requestlink:377750479}
//
// Revision 1.181  2013/03/28 05:11:40  dinishev
// Bug fix: не проходили тесты.
//
// Revision 1.180  2013/03/26 11:23:11  dinishev
// {Requestlink:442368006}
//
// Revision 1.179  2013/03/21 09:33:41  dinishev
// {Requestlink:439979342}
//
// Revision 1.178  2013/01/30 09:28:06  dinishev
// {Requestlink:425273666}. Переносим на модель TevTableCurosrPair, т.к. нужна примесь.
//
// Revision 1.177  2012/09/21 13:03:27  dinishev
// {Requestlink:395662507}
//
// Revision 1.176  2012/05/05 10:25:26  dinishev
// {Requestlink:362973200}
//
// Revision 1.175  2012/04/17 14:10:01  dinishev
// {Requestlink:356070765}
//
// Revision 1.174  2012/04/13 10:17:10  dinishev
// {Requestlink:358353189}
//
// Revision 1.173  2012/04/04 14:08:29  dinishev
// {Requestlink:356060358}
//
// Revision 1.172  2012/03/22 13:18:22  dinishev
// {Requestlink:349116289}
//
// Revision 1.171  2011/12/29 09:21:29  dinishev
// {Requestlink:325258836}
//
// Revision 1.170  2011/10/11 08:20:57  lulin
// {RequestLink:290951686}.
//
// Revision 1.169  2011/10/11 08:03:20  lulin
// {RequestLink:290951686}.
//
// Revision 1.168  2011/09/15 18:32:06  lulin
// {RequestLink:278824896}.
//
// Revision 1.167  2011/05/10 06:07:44  dinishev
// Bug fix: не было проверки на nil.
//
// Revision 1.166  2011/03/31 11:01:36  lulin
// - правим непрошедший тест.
//
// Revision 1.164  2011/03/30 18:11:21  lulin
// {RequestLink:255980970}.
//
// Revision 1.163  2011/02/17 13:19:27  dinishev
// [$253663257]
//
// Revision 1.162  2010/11/22 15:50:51  lulin
// {RequestLink:242516390}.
//
// Revision 1.161  2010/11/15 15:43:09  dinishev
// [$234357754]
//
// Revision 1.160  2010/11/13 07:23:41  dinishev
// Cleanup
//
// Revision 1.159  2010/07/29 11:34:09  lulin
// {RequestLink:228693150}.
// - не удаляем все пустые параграфы при вставке потока. ОДИН всегда оставляем.
//
// Revision 1.158  2010/07/13 10:45:27  dinishev
// [$226001213]
//
// Revision 1.157  2010/07/12 07:44:25  dinishev
// Cleanup
//
// Revision 1.156  2010/04/12 14:53:46  lulin
// {RequestLink:203129570}.
// - убираем ненужный тип подитеративной функции.
//
// Revision 1.155  2010/04/12 14:16:26  lulin
// {RequestLink:203129570}.
//
// Revision 1.154  2010/03/24 18:25:44  lulin
// {RequestLink:198672902}.
//
// Revision 1.153  2010/03/02 13:34:35  lulin
// {RequestLink:193823544}.
//
// Revision 1.152  2010/03/01 16:45:07  lulin
// {RequestLink:193823544}.
//
// Revision 1.151  2009/07/23 13:42:11  lulin
// - переносим процессор операций туда куда надо.
//
// Revision 1.150  2009/07/23 08:14:39  lulin
// - вычищаем ненужное использование процессора операций.
//
// Revision 1.149  2009/07/15 06:26:06  lulin
// - выделяем общий код для якорей и курсоров на основе стереотипа [$156927718].
//
// Revision 1.148  2009/07/14 14:56:26  lulin
// {RequestLink:141264340}. №25.
//
// Revision 1.147  2009/07/13 12:31:36  lulin
// {RequestLink:141264340}. №23ac.
//
// Revision 1.146  2009/07/11 17:11:05  lulin
// {RequestLink:141264340}. №19.
//
// Revision 1.145  2009/07/11 15:55:09  lulin
// {RequestLink:141264340}. №22.
//
// Revision 1.144  2009/07/11 09:24:41  lulin
// - избавляемся от лишнего дёрганья счётчиков ссылок.
//
// Revision 1.143  2009/07/10 15:04:43  lulin
// - избавляемся от лишнего дёрганья счётчиков ссылок.
//
// Revision 1.142  2009/07/07 08:58:23  lulin
// - вычищаем ненужное.
//
// Revision 1.141  2009/07/06 13:32:06  lulin
// - возвращаемся от интерфейсов к объектам.
//
// Revision 1.140  2009/06/24 15:53:21  lulin
// {RequestLink:140286381}.
//
// Revision 1.139  2009/06/18 18:35:07  lulin
// {RequestLink:142613457}.
//
// Revision 1.138  2009/06/18 14:56:03  lulin
// {RequestLink:142613919}. №6.
//
// Revision 1.137  2009/06/05 17:13:47  lulin
// - переносим на модель то, что возможно перенести.
//
// Revision 1.136  2009/06/02 13:48:01  lulin
// [$148574526].
//
// Revision 1.135  2009/04/14 18:11:54  lulin
// [$143396720]. Подготовительная работа.
//
// Revision 1.134  2009/04/13 17:27:50  lulin
// [$142613919]. Переносим базовый курсор на модель.
//
// Revision 1.133  2009/04/13 16:43:33  lulin
// [$142613919]. Переносим базовый курсор на модель.
//
// Revision 1.132  2009/04/13 12:32:48  lulin
// [$142613919].
//
// Revision 1.131  2009/04/09 14:12:36  lulin
// [$140837386]. №15.
//
// Revision 1.130  2009/04/09 11:37:26  lulin
// - не ходим к собственным свойствам через Владивосток.
//
// Revision 1.129  2009/04/09 11:18:58  lulin
// - наводим порядок с указателями на объекты.
//
// Revision 1.128  2009/04/06 09:45:27  lulin
// [$140837386]. Убираем старорежимную примесь для списков параграфов.
//
// Revision 1.127  2009/03/31 12:04:36  lulin
// [$140286997].
//
// Revision 1.126  2009/03/04 13:32:46  lulin
// - <K>: 137470629. Генерируем идентификаторы типов с модели и убираем их из общей помойки.
//
// Revision 1.125  2009/02/26 10:21:19  lulin
// - <K>: 137465982. №1
//
// Revision 1.124  2008/12/12 19:19:14  lulin
// - <K>: 129762414.
//
// Revision 1.123  2008/10/14 19:20:11  lulin
// - <K>: 121149970.
//
// Revision 1.122  2008/10/08 11:07:14  lulin
// - избавляемся от ненужных зависимостей между интерфейсами.
//
// Revision 1.121  2008/10/02 06:26:54  dinishev
// http://mdp.garant.ru/pages/viewpage.action?pageId=85169631&focusedCommentId=119475207#comment-119475207
//
// Revision 1.120  2008/09/26 10:10:47  dinishev
// <K>: 77235630 для Head'а
//
// Revision 1.119  2008/09/16 11:51:51  lulin
// - переносим TnevParaList на модель.
//
// Revision 1.118  2008/06/20 14:48:50  lulin
// - используем префиксы элементов.
//
// Revision 1.117  2008/05/30 14:57:43  lulin
// - <K>: 93258461.
//
// Revision 1.116  2008/05/12 06:28:41  lulin
// - избегаем бесконечной рекурсии.
//
// Revision 1.115  2008/05/08 16:10:55  lulin
// - изменения в рамках <K>: 90442475.
//
// Revision 1.114  2008/05/08 13:14:30  lulin
// - <K>: 90442618.
//
// Revision 1.113  2008/04/24 18:52:04  lulin
// - подготавливаемся к хранению форматированияв пуле, в рамках <K>: 89106312.
//
// Revision 1.112  2008/04/23 10:43:41  lulin
// - упрощаем логику.
//
// Revision 1.111  2008/04/22 10:49:23  lulin
// - <K>: 88637809.
//
// Revision 1.110  2008/04/15 08:23:45  lulin
// - передаём вью в качестве параметра.
//
// Revision 1.109  2008/04/14 13:46:35  lulin
// - <K>: 89096854.
//
// Revision 1.108  2008/04/14 07:03:22  lulin
// - передаём вью в рамках <K>: 89096854.
//
// Revision 1.107  2008/04/11 13:03:52  lulin
// - <K>: 89096854.
//
// Revision 1.106  2008/04/11 12:51:54  lulin
// - <K>: 89100722.
//
// Revision 1.105  2008/04/11 12:26:08  lulin
// - <K>: 89100752.
//
// Revision 1.104  2008/04/11 11:29:58  lulin
// - передаём вью в рамках <K>: 89096854.
//
// Revision 1.103  2008/04/10 17:34:24  lulin
// - <K>: 89097983.
//
// Revision 1.102  2008/04/09 17:57:07  lulin
// - передаём вью в рамках <K>: 89096854.
//
// Revision 1.101  2008/02/21 10:55:02  lulin
// - упрощаем наследование.
//
// Revision 1.100  2008/02/08 19:58:22  lulin
// - <TDN>: 55.
//
// Revision 1.99  2008/02/05 09:57:37  lulin
// - выделяем базовые объекты в отдельные файлы и переносим их на модель.
//
// Revision 1.98  2007/12/04 12:47:03  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.91.2.93  2007/11/28 14:10:43  dinishev
// _CleanUp
//
// Revision 1.91.2.92  2007/10/10 16:39:21  lulin
// - теперь при вычислении шрифта передаем ссылку на карту форматирования.
//
// Revision 1.91.2.91  2007/09/25 13:58:41  lulin
// - bug fix: не вседа корректно создавался курсор, особенно при создании нового пустого документа.
//
// Revision 1.91.2.90  2007/09/14 13:26:05  lulin
// - объединил с веткой B_Tag_Clean.
//
// Revision 1.91.2.89.2.3  2007/09/12 18:37:43  lulin
// - с интерфейса удален ненужный метод.
//
// Revision 1.91.2.89.2.2  2007/09/12 17:51:48  lulin
// - cleanup.
//
// Revision 1.91.2.89.2.1  2007/09/12 15:23:01  lulin
// - избавляемся от метода, дублирующего функциональность получения атрибута.
//
// Revision 1.91.2.89  2007/08/09 11:19:13  lulin
// - cleanup.
//
// Revision 1.91.2.88  2007/06/25 13:29:06  lulin
// - cleanup.
//
// Revision 1.91.2.87  2007/06/22 20:18:32  lulin
// - cleanup.
//
// Revision 1.91.2.86  2007/02/12 18:06:13  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.91.2.85  2007/02/12 16:40:20  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.91.2.84  2007/02/05 14:46:31  oman
// - fix: При убиении параграфа курсоры внутри него пытаемся сначал
//  сместить вниз, а уже потом вверх
//
// Revision 1.91.2.83  2007/01/24 10:21:42  oman
// - new: Локализация библиотек - ev (cq24078)
//
// Revision 1.91.2.82  2006/11/10 17:15:54  lulin
// - объединил с веткой.
//
// Revision 1.91.2.81  2006/11/03 11:00:06  lulin
// - объединил с веткой 6.4.
//
// Revision 1.91.2.80.2.1  2006/10/12 17:52:05  lulin
// - вычищаем все, что связано с дозагрузкой документа.
//
// Revision 1.91.2.80  2006/10/10 12:06:13  lulin
// - cleanup.
//
// Revision 1.91.2.79  2006/10/08 14:07:33  lulin
// - избавляемся от косвенного приведения курсора к интерфейсу - "показыать/не показывать схлопнутых детей".
//
// Revision 1.91.2.78  2006/09/18 16:44:33  lulin
// - сделан переход по гиперссылкам назад (CQ OIT5-21613).
//
// Revision 1.91.2.77  2006/09/18 10:20:21  lulin
// - промежуточный коммит для поддержки поиска в обратном направлении.
//
// Revision 1.91.2.76  2006/09/18 07:20:37  lulin
// - убран ненужный параметр.
//
// Revision 1.91.2.75  2006/09/14 08:07:30  oman
// - fix: При удалении параграфа целиком не выставлялся признак
//  модифицированности (cq22579)
//
// Revision 1.91.2.74  2006/08/02 10:51:52  lulin
// - объединил с веткой в которой боролся со скроллингом.
//
// Revision 1.91.2.73.2.2  2006/07/28 13:38:31  lulin
// - убрана операция переформатирования параграфа целиком.
//
// Revision 1.91.2.73.2.1  2006/07/24 17:57:50  lulin
// - имя метода убрано из комментариев - чтобы не находилось контекстным поиском.
//
// Revision 1.91.2.73  2006/07/10 14:55:45  lulin
// - убрана инициализация ссылки на родительский объект выделения.
//
// Revision 1.91.2.72  2006/07/03 18:23:16  lulin
// - bug fix: в переменную типа интерфейс получали сссылку на неправильный объект (не реализующий этот интерфейс) в итоге был AV при удалении строк таблицы (CQ OIT5-21549).
//
// Revision 1.91.2.71  2006/05/26 09:21:06  lulin
// - cleanup.
//
// Revision 1.91.2.70  2006/05/26 09:12:46  lulin
// - bug fix: после удаления пачки параграфов двоило Undo при их восстановлении.
//
// Revision 1.91.2.69  2006/02/27 17:14:37  lulin
// - bug fix: можно было изменить шрифт у константного текста (CQ OIT5-19664).
//
// Revision 1.91.2.68  2006/02/17 12:55:25  oman
// - fix: При "пустых" Bounds иногда лез EListError (cq19658)
//
// Revision 1.91.2.67  2006/02/07 12:45:28  lulin
// - bug fix: был AV при попытке удалить сразу несколько комментариев в выделении (CQ OIT5-19406).
//
// Revision 1.91.2.66  2006/01/16 11:31:03  lulin
// - убран метод удаления параграфа, т.к. для этих целей полностью подходит метод удаления тега.
//
// Revision 1.91.2.65  2006/01/13 12:59:05  lulin
// - bug fix: в Undo-буфер попадала лишняя запись (CQ OIT5-19077).
//
// Revision 1.91.2.64  2005/12/29 16:14:53  lulin
// - bug fix: падало при показе контекстного меню при наличии выделения в редакторе.
//
// Revision 1.91.2.63  2005/12/02 18:23:28  lulin
// - обрабока нотфификации об удалении/добавлении параграфа практически полностью перенесена на процессор.
//
// Revision 1.91.2.62  2005/11/15 08:02:39  lulin
// - чтение/запись документа практически польностью перенесены с TextSource на контейнер документа.
//
// Revision 1.91.2.61  2005/11/09 15:28:24  lulin
// - базовые интерфейсы перенесены в правильный модуль.
//
// Revision 1.91.2.60  2005/11/08 10:11:05  lulin
// - метод переформатирования целиком перенесен на базовую форму.
//
// Revision 1.91.2.59  2005/11/08 06:39:36  lulin
// - с текстового параграфа и списка параграфов вычищены ненужные методы получения сложной формы параграфа.
//
// Revision 1.91.2.58  2005/11/07 15:12:20  lulin
// - на сложной форме появился метод переформатирования всей формы.
//
// Revision 1.91.2.57  2005/11/07 14:08:32  lulin
// - от безликих тегов переходим к параграфам.
//
// Revision 1.91.2.56  2005/11/07 06:51:34  lulin
// - bug fix: был AV при отстутствии дочернего блока.
//
// Revision 1.91.2.55  2005/11/07 06:25:22  lulin
// - выделяем у якоря и у курсора общую функциональность.
//
// Revision 1.91.2.54  2005/11/03 16:33:43  lulin
// - optimization: при переформатировании документа итерируем только непрогруженные параграфы.
//
// Revision 1.91.2.53  2005/11/02 15:16:24  dinishev
// Bug fix: Многочисленные AV, если провести с нажатой кнопкой по КЗ (судя по всем, последствия удаления лишнего выделения)
//
// Revision 1.91.2.52  2005/10/18 11:26:06  lulin
// - реализация Undo-записи удаления/добавления пачки параграфов, перенесена в правильное место.
//
// Revision 1.91.2.51  2005/09/23 16:03:55  lulin
// - выделен модуль с общими интерфейсами.
//
// Revision 1.91.2.50  2005/08/31 12:04:34  lulin
// - удален ненужный модуль.
//
// Revision 1.91.2.49  2005/08/31 11:01:14  lulin
// - теперь метод удаления параграфа не глобальный, а привязан к интерфейсу _InevParaListModify.
//
// Revision 1.91.2.48  2005/07/21 07:54:32  lulin
// - убран промежуточный интерфейс и упрощено использование функции поиска/замены.
//
// Revision 1.91.2.47  2005/07/21 06:05:47  lulin
// - в процедуре поиска модифицируемый курсор заменен на немодифицируемый.
//
// Revision 1.91.2.46  2005/07/19 15:32:23  lulin
// - убрана часть обращений к интересующим интерфейсам через цепочку Parent'ов диапазонов и курсоров.
//
// Revision 1.91.2.45  2005/07/19 12:03:20  lulin
// - cleanup: удалены ненужные модули и методы.
//
// Revision 1.91.2.44  2005/07/19 10:21:16  lulin
// - bug fix: не находился первый параграф в списке параграфов - и как итог - тогмозило Back - когда ставилась журнальная закладка.
//
// Revision 1.91.2.43  2005/07/19 08:25:03  lulin
// - избавился от посылки сообщений для конвертации текста параграфа - перевел конвертацию на общий механизм Search/_Replace.
//
// Revision 1.91.2.42  2005/07/19 06:58:45  lulin
// - cleanup: убрано лишнее сообщение для конвертации текста параграфов.
//
// Revision 1.91.2.41  2005/07/18 17:37:43  lulin
// - упорядочена интерфейсная модель редактора - для удобства чтения и эффективности использования, а также для избавления от посылки сообщений.
//
// Revision 1.91.2.40  2005/07/18 15:10:27  lulin
// - избавляемся от косвенного приведения одного интерфейса к другому.
//
// Revision 1.91.2.39  2005/07/18 11:22:37  lulin
// - методу, возвращаещему выделение на параграфе дано более подходящее название.
//
// Revision 1.91.2.38  2005/07/11 06:07:06  lulin
// - упорядочены названия интерфейсов.
//
// Revision 1.91.2.37  2005/07/07 13:09:28  lulin
// - упорядочены названия интерфейсов.
//
// Revision 1.91.2.36  2005/06/21 13:28:02  lulin
// - cleanup: удалены ненужные методы.
//
// Revision 1.91.2.35  2005/06/16 16:04:44  lulin
// - cleanup: подготавливаемся к расширению интерфейса InevTextPara.
//
// Revision 1.91.2.34  2005/06/16 14:11:29  lulin
// - cleanup: отдельно стоящие процедуры перенесены на интерфейсы.
//
// Revision 1.91.2.33  2005/06/15 17:23:52  lulin
// - remove proc: _evMoveCursor.
//
// Revision 1.91.2.32  2005/06/15 13:06:00  lulin
// - убрана инициализация блоков выделения в явном виде.
//
// Revision 1.91.2.31  2005/06/15 11:45:21  lulin
// - cleanup.
//
// Revision 1.91.2.30  2005/06/11 11:13:20  lulin
// - избавился от использования "устаревших" интерфейсов.
//
// Revision 1.91.2.29  2005/06/08 10:18:30  lulin
// - вместо объекта используем интерфейс.
//
// Revision 1.91.2.28  2005/06/07 13:43:47  lulin
// - удален ненужный модуль.
//
// Revision 1.91.2.27  2005/06/06 15:36:08  lulin
// - продолжаем бороться со знанием о природе реализации курсоров.
//
// Revision 1.91.2.26  2005/06/03 12:08:19  lulin
// - cleanup: убраны ненужные зависимости.
//
// Revision 1.91.2.25  2005/06/03 09:33:44  lulin
// - используем InevPara вместо безликих тегов.
//
// Revision 1.91.2.24  2005/06/03 09:02:57  lulin
// - используем InevPara вместо безликих тегов.
//
// Revision 1.91.2.23  2005/06/02 16:38:47  lulin
// - cleanup.
//
// Revision 1.91.2.22  2005/06/02 16:19:27  lulin
// - cleanup.
//
// Revision 1.91.2.21  2005/06/02 15:20:24  lulin
// - cleanup: удалены устаревшие методы.
//
// Revision 1.91.2.20  2005/06/02 15:07:05  lulin
// - cleanup: удалены устаревшие методы.
//
// Revision 1.91.2.19  2005/06/02 12:33:08  lulin
// - вчерне заменил прямое создание блока выделения на его получение от фабрики.
//
// Revision 1.91.2.18  2005/06/02 06:05:07  lulin
// - инициализуруем блок выделения интерфейсами, а не объектами.
//
// Revision 1.91.2.17  2005/06/01 16:50:52  lulin
// - убрано знание о реализации курсоров выделения.
//
// Revision 1.91.2.16  2005/06/01 16:37:32  lulin
// - cleanup.
//
// Revision 1.91.2.15  2005/06/01 16:35:34  lulin
// - cleanup.
//
// Revision 1.91.2.14  2005/06/01 16:22:25  lulin
// - remove unit: evIntf.
//
// Revision 1.91.2.13  2005/06/01 14:02:17  lulin
// - new unit: evCursor.
//
// Revision 1.91.2.12  2005/05/31 17:46:39  lulin
// - изживаем остатки объектов в качестве курсоров.
//
// Revision 1.91.2.11  2005/05/31 17:09:19  lulin
// - изживаем остатки объектов в качестве курсоров.
//
// Revision 1.91.2.10  2005/05/31 15:57:20  lulin
// - изживаем остатки объектов в качестве курсоров.
//
// Revision 1.91.2.9  2005/05/31 14:48:01  lulin
// - cleanup: при работе с курсорами используем интерфейсы, а не объекты.
//
// Revision 1.91.2.8  2005/05/31 08:15:20  lulin
// - new behavior: корректнее присваиваем инструменты для работы с тегами.
//
// Revision 1.91.2.7  2005/05/23 12:23:55  lulin
// - bug fix: были AV при получении шрифта.
//
// Revision 1.91.2.6  2005/05/20 16:30:15  lulin
// - развязал интерфейс и реализацию шрифта выделения.
//
// Revision 1.91.2.5  2005/05/20 11:27:35  lulin
// - класс TevBlock вынесен в отдельный модуль.
//
// Revision 1.91.2.4  2005/05/19 14:52:38  lulin
// - rename unit: evBlock -> evCursorPair.
//
// Revision 1.91.2.3  2005/05/19 12:31:10  lulin
// - получение шрифта у блока и у курсора приведено к единому знаменателю.
//
// Revision 1.91.2.2  2005/05/19 10:43:40  lulin
// - cleanup.
//
// Revision 1.91.2.1  2005/05/18 12:42:47  lulin
// - отвел новую ветку.
//
// Revision 1.85.2.3  2005/05/18 12:32:09  lulin
// - очередной раз объединил ветку с HEAD.
//
// Revision 1.85.2.2  2005/04/28 09:18:29  lulin
// - объединил с веткой B_Tag_Box.
//
// Revision 1.85.2.1  2005/04/19 11:56:41  lulin
// - заточки для тестирования.
//
// Revision 1.87  2005/04/19 15:41:27  lulin
// - переходим на "правильный" ProcessMessages.
//
// Revision 1.86  2005/04/19 08:27:45  lulin
// - спрятаны методы, которые нельзя вызывать напрямую.
//
// Revision 1.91  2005/05/17 09:27:33  lulin
// - new unit: _evResultFont.
//
// Revision 1.90  2005/05/17 08:19:20  lulin
// - bug fix: AV при переходе по ссылке.
//
// Revision 1.89  2005/05/16 15:31:11  lulin
// - cleanup: прямое использование объекта заменено на использование интерфейса.
//
// Revision 1.88  2005/05/13 17:15:21  lulin
// - new behavior: теперь шрифт вычисляется на основе мультивыделения - должно помочь с проблемой долгого выделения (CQ OIT5-13320).
//
// Revision 1.87  2005/04/19 15:41:27  lulin
// - переходим на "правильный" ProcessMessages.
//
// Revision 1.86  2005/04/19 08:27:45  lulin
// - спрятаны методы, которые нельзя вызывать напрямую.
//
// Revision 1.85  2005/04/04 12:11:29  lulin
// - переименованы файлы с шаблонами.
//
// Revision 1.84  2005/04/04 12:03:17  lulin
// - используем шаблоны для реализации иструментов для параграфов конкретных типов.
//
// Revision 1.83  2005/04/01 13:21:57  lulin
// - добавлены интерфейсы InevPoint*.
//
// Revision 1.82  2005/04/01 11:40:01  lulin
// - используем метод _InevParaListModify.InsertDefaultPara.
//
// Revision 1.81  2005/03/30 10:14:52  lulin
// - переходим от классов к интерфейсам.
//
// Revision 1.80  2005/03/28 11:32:08  lulin
// - интерфейсы переехали в "правильный" модуль.
//
// Revision 1.79  2005/03/25 17:09:01  lulin
// - избавляемся от метода Tk2AtomW.sLong.
//
// Revision 1.78  2005/03/24 15:25:51  lulin
// - удалены ненужные методы.
//
// Revision 1.77  2005/03/24 10:59:44  lulin
// - bug fix: забыл then.
//
// Revision 1.76  2005/03/24 10:52:32  lulin
// - bug fix: _TevParaListCursorPair.IsSolid теперь учитывает специальные значения - "перед началом списка" и "после начала списка".
//
// Revision 1.75  2005/03/22 12:42:16  lulin
// - bug fix: установка стиля убивала гиперссылки.
//
// Revision 1.74  2005/03/21 13:42:58  lulin
// - убраны ненужные методы.
//
// Revision 1.73  2005/03/21 10:04:49  lulin
// - new interface: _Ik2Type.
//
// Revision 1.72  2005/03/18 16:11:22  lulin
// - remove method: Tk2AtomR.Write.
//
// Revision 1.71  2005/03/17 17:57:02  lulin
// - переходим к Ik2Tag.
//
// Revision 1.70  2005/03/16 14:07:08  lulin
// - переходим к Ik2Tag.
//
// Revision 1.69  2005/03/16 12:16:52  lulin
// - переходим к Ik2Tag.
//
// Revision 1.68  2005/03/16 09:05:24  lulin
// - переходим к Ik2Tag.
//
// Revision 1.67  2005/03/15 10:30:18  lulin
// - от Tk2AtomR переходим к Ik2Tag.
//
// Revision 1.66  2005/03/14 16:43:31  lulin
// - от Tk2AtomR переходим к Ik2Tag.
//
// Revision 1.65  2005/03/14 10:00:33  lulin
// - от Tk2AtomR переходим к Ik2Tag.
//
// Revision 1.64  2005/03/11 12:49:10  lulin
// - от Tk2AtomR переходим к Ik2Tag.
//
// Revision 1.63  2005/03/10 17:44:02  lulin
// - от Tk2AtomR переходим к Ik2Tag.
//
// Revision 1.62  2005/03/10 07:05:11  lulin
// - от Tk2AtomR переходим к Ik2Tag.
//
// Revision 1.61  2005/03/09 18:40:19  lulin
// - remove method: Tk2AtomR.DeleteChild.
// - new method: Ik2Tag.DeleteChild.
//
// Revision 1.60  2005/03/03 17:28:19  lulin
// - избавился от прямого упоминания текстового параграфа.
//
// Revision 1.59  2005/02/03 14:33:43  lulin
// - для Undo-записей используем фабричные методы ToUndo, вместо конструкторов.
//
// Revision 1.58  2004/11/24 17:19:59  lulin
// - bug fix: AV и Range Check с "кривыми" таблицами.
//
// Revision 1.57  2004/11/09 14:07:16  lulin
// - переходим от классов к интерфейсам.
//
// Revision 1.56  2004/10/28 13:54:26  lulin
// - remove type: TevParam.
//
// Revision 1.55  2004/10/19 13:37:44  lulin
// - bug fix: сбивался Top в редакторе, при синхронизации установки закладки.
//
// Revision 1.54  2004/10/18 16:18:56  lulin
// - remove unit: evTagTools.
//
// Revision 1.53  2004/10/18 16:05:11  lulin
// - remove method: TevTag._UnformatAll.
// - new proc: evUnformatAllPara.
//
// Revision 1.52  2004/08/06 15:29:33  law
// - bug fix: ошибка после Undo (CQ OIT5-8614).
//
// Revision 1.51  2004/07/06 12:08:03  law
// - new behavior: для Немезиса открутил сбор информации о стиле и шрифте.
//
// Revision 1.50  2004/06/29 14:26:41  law
// - избавляемся от метода Tk2AtomR._Set.
//
// Revision 1.49  2004/06/28 13:46:33  law
// - remove unit: k2IntfStub.
//
// Revision 1.48  2004/06/28 13:34:46  law
// - remove class: Il3Pointer.
//
// Revision 1.47  2004/06/22 15:18:26  law
// - проведена подготовка для догрузки документа при печати, заборе в буфер обмена и т.п.
//
// Revision 1.46  2004/06/22 11:41:51  law
// - bug fix: неправильно удалялось содержимое списка параграфов.
//
// Revision 1.45  2004/06/17 16:27:55  law
// - remove unit: evParaList.
//
// Revision 1.44  2004/06/17 15:58:53  law
// - свойство Empty переместилось с класса Tl3Base на класс _Tl3SomeDataContainer.
//
// Revision 1.43  2004/06/17 13:57:42  law
// - bug fix: курсоры не владели параграфами - соответственно были потенциальные ошибки, когда параграфы умирали, а курсоры нет.
// - bug fix: в результате переделок механизма поиска перестал работать поиск в выборке.
//
// Revision 1.42  2004/06/17 10:06:14  law
// - remove method: TevBaseParaList.Dir_DeletePara.
// - new proc: evDir_DeletePara.
//
// Revision 1.41  2004/06/09 09:53:36  law
// - change: переходим к типу TevPair от пары параметров Start, Finish.
//
// Revision 1.40  2004/05/25 13:08:49  law
// - change: Tk2AtomR.ArrayProp - теперь property, а не функция.
// - bug fix: при вставке из буфера вставлялись "левые" элементы оглавления.
//
// Revision 1.39  2004/05/06 14:11:47  law
// - cleanup.
//
// Revision 1.38  2004/05/06 10:35:37  law
// - cleanup: удалены ненужные локальные переменные.
//
// Revision 1.37  2004/05/06 10:32:14  law
// - cleanup: удалены ненужные зависимости.
//
// Revision 1.36  2004/05/06 10:20:39  law
// - change: выравнивание уровня курсоров перенесено из _TevParaListCursorPair._SearchPrim в _TevCursorPair.SearchProcess.
//
// Revision 1.35  2004/01/20 16:46:35  law
// - cleanup: TevBlock.StoreExPrim переименован в _DoStore.
//
// Revision 1.34  2004/01/20 16:36:06  law
// - cleanup: метод IevDataObject.StoreEx переименован в просто Store.
//
// Revision 1.33  2003/12/01 14:39:59  law
// - new methods: TevCustomEditor.TextBufConvert, TextBufConvertF.
//
// Revision 1.32  2003/10/02 16:33:24  law
// - rename unit: evBseCur -> evBaseCursor.
//
// Revision 1.31  2003/04/24 16:29:54  law
// - new behavior: TevStyleReplacer при пустом свойстве Text убивает найденные сегменты.
//
// Revision 1.30  2003/04/23 13:20:06  law
// - bug fix: при вставке блока откусывался последний пустой параграф.
//
// Revision 1.29  2003/04/18 13:53:11  law
// - new behavior: при сохранении отсекаем пустой текстовый параграф.
//
// Revision 1.28  2003/03/06 12:26:48  law
// - new proc version: _evClearPara.
//
// Revision 1.27  2003/02/28 15:51:53  law
// - bug fix: при вставке строки таблицы с непустыми ячейками не сохранялось горизонтальное выравнивание текстовых параграфов.
//
// Revision 1.26  2003/02/17 15:22:18  law
// - bug fix: BUG: в пустой ячейке таблицы жмем Shift-End - ячейка не выделяется, хотя по идее должна бы (№121).
//
// Revision 1.25  2003/02/17 13:05:47  law
// - optimization: метод _TevParaListCursorPair.Delete: если в режиме _ev_cmKeepOne у списка параграфов и так только один пустой тестовый параграф, то ничего не делаем.
//
// Revision 1.24  2003/02/17 12:31:41  law
// - bug fix: BUG: Разобраться со стилями параграфов таблицы и SBS при удалении содержимого ячеек (№119).
//
// Revision 1.23  2003/02/14 17:17:52  law
// - bug fix: Поправить удаление выделения - плохо работает, когда Solid, режим _ev_cmKeepOne и первый или последний параграф - таблица или блок (№116).
//
// Revision 1.22  2003/02/14 13:02:59  law
// - cleanup: rename class TevListCursorPair -> _TevParaListCursorPair.
//
// Revision 1.21  2003/02/14 12:42:29  law
// - refactoring: _TevParaListCursorPair.Delete - "Extract Method".
//
// Revision 1.20  2003/02/11 15:57:03  law
// - change: _IterateChildren - теперь функция.
//
// Revision 1.19  2003/02/06 14:42:59  law
// - cleanup: переходим от сообщений (message)  к виртуальным функциям.
//
// Revision 1.18  2003/02/06 12:43:57  law
// - bug fix: ошибка вставки строки таблицы при непустой текущей строке с ячейкой в которой > 2 параграфов.
//
// Revision 1.17  2003/02/06 12:10:17  law
// - new proc: evJoinParas.
// - bug fix: ошибка вставки строки таблицы при непустой текущей строке.
//
// Revision 1.16  2003/02/05 16:12:09  law
// - bug fix: вернул индикатор прогресса.
//
// Revision 1.15  2003/02/05 13:53:11  law
// - cleanup: переходим от сообщений (message)  к виртуальным функциям.
//
// Revision 1.14  2003/01/23 16:18:09  law
// - new behavior: используем TevBlock.Delete вместо WM_Clear.
//
// Revision 1.13  2003/01/23 15:22:06  law
// - rename method: TevBlock.IterateEx -> Iterate.
//
// Revision 1.12  2003/01/21 13:11:45  law
// - new method: TevBlock.GetBottomChildBlock.
//
// Revision 1.11  2003/01/21 12:56:24  law
// - rename proc: TevBlock.GetChildBlockEx -> GetChildBlock.
//
// Revision 1.10  2003/01/20 13:03:04  law
// - cleanup: избавляемся от прямого использования ev_msgMove.
//
// Revision 1.9  2003/01/20 10:32:14  law
// - cleanup: избавляемся от прямого использования ev_msgMove.
// - bug fix: неправильно модифицировались курсоры при удалении параграфов.
//
// Revision 1.8  2002/12/26 16:56:07  law
// - cleanup.
//
// Revision 1.7  2002/12/26 16:03:15  law
// - new directive: evNeedEditableCursors.
//
// Revision 1.6  2002/12/26 15:46:35  law
// - new directive: evNeedMarkers.
//
// Revision 1.5  2002/12/25 11:59:15  law
// - cleanup.
//
// Revision 1.4  2002/12/19 11:44:28  law
// - remove prop: _TevBasePara.BlockLength.
//
// Revision 1.3  2002/12/19 09:47:49  law
// - remove type: TevSearchEvent.
// - change: ипользуем IevSearcher вместо TevBaseSearcher.
//
// Revision 1.2  2002/12/18 14:42:08  law
// - new unit: evCursorConst.
//
// Revision 1.1  2002/12/17 09:49:42  law
// - new unit: evParaListCursorPair.
//

{$Include evDefine.inc }

interface

uses
  Messages,

  l3Types,
  l3IID,
  l3Interfaces,
  l3Base,
  l3InternalInterfaces,

  k2Types,
  k2Interfaces,
  k2TagTool,
  k2TagGen,

  evMsgCode,

  evInternalInterfaces,
  evCursorPair,

  nevBase,
  nevTools
  ;

type
  _nevParaListTool_Parent_ = TevCursorPair;
  {$Include nevParaListTool.imp.pas}
  TevParaListCursorPair = class(_nevParaListTool_)
   {* Выделение для списка параграфов. }
    protected
    // internal fields
      f_ChildStart  : InevBasePoint;
      f_ChildFinish : InevBasePoint;
    protected
    // internal methods
      function DoDeleteHyperlink(const anOpPack : InevOp = nil): Boolean;
        override;
        {-}
      procedure GetBlockBorders;
        override;
        {-}
      function GetParaBlockBordersPrim(const aChildPara : InevPara;
                                       aPID             : Long;
                                       out cParaStart   : InevBasePoint;
                                       out cParaFinish  : InevBasePoint): Boolean;
        virtual;
        {-}
      {$IfDef evNeedGetBlockFont}
      function  DoGetFont(const aView : InevView;
                        aMap : TnevFormatInfoPrim;
                        Stop       : PInteger = nil): InevFontPrim;
        override;
        {-}
      {$EndIf evNeedGetBlockFont}
      {$IfDef evNeedGetBlockStyle}
      function  DoGetStyle(Stop: PInteger): Ik2Tag;
        override;
        {-}
      {$EndIf evNeedGetBlockStyle}  
      function COMQueryInterface(const IID: Tl3GUID; out Obj): Tl3HResult;
        override;
        {-}
      procedure DoStore(const aView: InevView;
                        const G : Ik2TagGenerator;
                        aFlags  : TevStoreFlags);
        override;
        {-}
      procedure ArrangeFoundCursors(anIndex       : Long;
                                    var theStart  : InevBasePoint;
                                    var theFinish : InevBasePoint);
        virtual;
        {-}
      function  SearchPrim(const aView : InevView;
                           const aSearcher : IevSearcher;
                           const aProgress : Il3Progress;
                           const aStart    : InevBasePoint;
                           out theStart    : InevBasePoint;
                           out theFinish   : InevBasePoint): Boolean;
        override;
        {-ищет подстроку и возвращает найденную позицию в (cFStart, cFFinish)}
      function  DoIterateChildrenF(Action : Ik2Tag_IterateChildrenF_Action;
                                 aStart : Tl3Index;
                                 aHi    : Tl3Index;
                                 aLoadedOnly : Boolean): Long;
        override;
        {-}
      function  IsSolid(const aView: InevView): Boolean;
        override;
        {-}
      procedure Cleanup;
        override;
        {-}
      function  GetChildSel(const aView : InevView;
                            ChildIndex: Long;
                            aForDrawing: Boolean): InevRange;
        override;
        {-}
      function  DoSetAtom(const aView : InevView;
                          anIndex        : Cardinal;
                          const pSource  : Ik2Tag;
                          const anOpPack : InevOp): Boolean;
        override;
        {-}
      function  DoChangeParam(const aView : InevView;
                              const aMarker  : IevMarker;
                              aValue         : Long;
                              const anOpPack : InevOp = nil): Boolean;
        override;
        {-}
      function DoAddIndentMarker(const aView    : InevView;
                           aValue         : Integer;
                           const anOpPack : InevOp = nil): Boolean;
        override;
        {-}
      function DoDeleteIndentMarker(const aView    : InevView;
                              const anOpPack : InevOp = nil): Boolean;
        override;
        {-}
    public
    // public methods
      procedure Init(const Start   : InevBasePoint = nil;
                     const Finish  : InevBasePoint = nil;
                     aSharp        : Boolean = false);
        override;
        {-}
      function  DoGetBlockLength: Long;
        override;
        {-}
      function  BottomChildBlock(const aView : InevView): InevRange;
        override;
        {-}
      function DoInsertString(const aView : InevView;
                              const aString : Il3CString;
                              const anOp : InevOp = nil;
                              InsertMode : Boolean = true;
                              aFlags     : TnevInsertStringFlags = []): Boolean;
        override;
        {-}
      function  DoDelete(const aView : InevView;
                       const anOpPack : InevOp = nil;
                       aMode          : TevClearMode = ev_cmAll;
                       const aPara    : InevPara = nil): Boolean;
        override;
        {-}
      function  IsCollapsed(const aView: InevView): Boolean;
        override;
        {-}
      function  DoDeleteSegments(const anOpPack : InevOp = nil): Boolean;
        override;
        {* - удаляет сегменты. }
  end;//TevParaListCursorPair

implementation

uses
  Classes,
  SysUtils,
  
  Forms,
  
  l3Const,
  l3MinMax,
  l3String,
  l3InterfacesMisc,

  afwFacade,

  k2BaseTypes,
  k2Base,
  k2InternalInterfaces,
  k2Tags,
  k2OpMisc,

  evdInterfaces,

  evTypes,
  evOp,
  evParaListCursorPrim,
  evParaListCursor,
  evParaPackOperation,
  evCursorConst,
  evCursorTools,
  evParaTools,
  evdStyles,

  nevFacade,
  nevInterfaces,
  nevNavigation,

  ParaList_Const,
  TextPara_Const
  ;

{$Include nevParaListTool.imp.pas}

// start class TevParaListCursorPair 

procedure TevParaListCursorPair.Init(const Start   : InevBasePoint = nil;
                                     const Finish  : InevBasePoint = nil;
                                     aSharp        : Boolean = false);
  {override;}
  {-}
begin
 inherited;
 if (f_Start = nil) then
  f_ChildStart := nil
 else
 if not f_Start.HasInner then
  f_ChildStart := nil
 else
  f_ChildStart := f_Start.Inner;
 if (f_Finish = nil) then
  f_ChildFinish := nil
 else
 if not f_Finish.HasInner then
  f_ChildFinish :=  nil
 else
  f_ChildFinish := f_Finish.Inner;
end;

function TevParaListCursorPair.DoGetBlockLength: Long;
  //override;
  {-}
begin
 Result := ParaX.ParaCount; 
end;

function TevParaListCursorPair.GetChildSel(const aView : InevView;
                                           ChildIndex: Long;
                                           aForDrawing: Boolean): InevRange;
  {virtual;}
  {-}
var
 cParaStart  : InevBasePoint;
 cParaFinish : InevBasePoint;
 l_Para      : InevPara;
begin
 if (ChildIndex < 0) then
 begin
  Result := nil;
  Exit;
 end;//ChildIndex < 0
 try
  if (ChildIndex >= ParaX.ParaCount) then
  begin
   Result := nil;
   Exit;
  end//ChildIndex >= ParaX.ChildrenCount
  else
   l_Para := ParaX[ChildIndex];
 except                        
  on EListError do
  begin
   Result := nil;
   Exit;
  end;//on EListError
 end;//try..except
 if GetParaBlockBordersPrim(l_Para, Succ(ChildIndex), cParaStart, cParaFinish) then
  try
   Result := l_Para.Range(cParaStart, cParaFinish, Sharp);
  finally
   cParaStart := nil;
   cParaFinish := nil;
  end//try..finally
 else
  Result := nil;
end;

procedure TevParaListCursorPair.Cleanup;
  {override;}
  {-}
begin
 f_ChildStart := nil;
 f_ChildFinish := nil;
 inherited;
end;

function TevParaListCursorPair.DoSetAtom(const aView : InevView;
                                         anIndex        : Cardinal;
                                         const pSource  : Ik2Tag;
                                         const anOpPack : InevOp): Boolean;
  //override;
  {-}

 function _DoChild(const aBlock: InevRange; aBlockIndex: Long): Boolean;
 var
  l_F : InevDataFormattingModify;
 begin
  Result := true;
  l_F := aBlock.Formatting.Modify(aView);
  if (l_F <> nil) AND l_F.SetAtom(aView, anIndex, pSource, anOpPack) then
   DoSetAtom := true;
 end;

var
 l_Progress: Il3Progress;
begin
 Result := false;
 if (anOpPack = nil) then
  l_Progress := nil
 else
  anOpPack.QueryInterface(Il3Progress, l_Progress);
 try
  if (anIndex = k2_tiStyle) then
   DoIterateBackF(evL2TSA(@_DoChild), l_Progress)
  else
   DoIterateF(evL2TSA(@_DoChild), l_Progress);
 finally
  l_Progress := nil;
 end;//try..finally
end;

function TevParaListCursorPair.DoInsertString(const aView : InevView;
                                              const aString : Il3CString;
                                              const anOp : InevOp = nil;
                                              InsertMode : Boolean = true;
                                              aFlags     : TnevInsertStringFlags = []): Boolean;
  //override;
  {-}
var
 l_R : InevRange;  
begin
 l_R := BottomChildBlock(aView);
 if (l_R <> nil) AND not l3IEQ(l_R, Self) then
                 //  ^ - это защита от бесконечной рекурсии 
  Result := l_R.Text.Modify.InsertString(aView, aString, anOp, InsertMode, aFlags)
 else
  Result := inherited DoInsertString(aView, aString, anOp, InsertMode, aFlags);
end;
  
function TevParaListCursorPair.DoDelete(const aView : InevView;
                                      const anOpPack : InevOp = nil;
                                      aMode          : TevClearMode = ev_cmAll;
                                      const aPara    : InevPara = nil): Boolean;
  //override;
  {-}

 procedure DeleteParasInRange(const aParaList : InevParaList;
                              aStart, aFinish : Long);
 var
  l_Op       : Ok2DeleteChildren;
  l_Deleted  : Ik2Tag;
  l_Index    : Long;
  l_DelIndex : Integer;
  l_SaveUndo : Boolean;
  l_PL       : InevParaListModify;
 begin//DeleteParasInRange
  l_Op := Ok2DeleteChildren.Create;
  try
   l_Op.SetParam(aParaList, Tk2Type(aParaList.TagType).ArrayProp[k2_tiChildren], Pred(aStart));
   l_DelIndex := Pred(aStart);
   if (anOpPack <> nil) then
   begin
    l_SaveUndo := anOpPack.SaveUndo;
    anOpPack.SaveUndo := false;
   end//anOpPack <> nil
   else
    l_SaveUndo := false;
   try
    l_PL := aParaList.Modify;
    for l_Index := aStart to aFinish do
    begin
     if l_PL.DeleteChild(l_DelIndex, anOpPack, l_Deleted) then
      try
       l_Op.Deleted.Add(l_Deleted);
      finally
       l_Deleted := nil;
      end//try..finally
     else
      Inc(l_DelIndex);
    end;//for l_Index..
   finally
    if (anOpPack <> nil) then
     anOpPack.SaveUndo := l_SaveUndo;
   end;//try..finally
   if (anOpPack <> nil) AND not l_Op.Deleted.Empty then
   begin
    anOpPack.MarkModified(ParaX);
    l_Op.Put(anOpPack);
   end;
  finally
   l3Free(l_Op);
  end;//try..finally
  aParaList.Invalidate([]); 
 end;//DeleteParasInRange

 function DeleteAll: Boolean;

  function _SetCursorToParaListTop(C: PevParaListCursor; Index: Long): Boolean; far;
  begin//_SetCursorToParaListTop
   Result := true;
   C^.Move(aView, ev_ocTopLeft, anOpPack);
  end;//_SetCursorToParaListTop

 var
  l_ParaList  : InevParaList;
  l_PrevStyle : Long;
  l_ParaCount : Long;
  l_Start     : Long;
  l_Child     : InevPara;
 begin//DeleteAll
  Result := false;
  if Solid(aView) AND (aMode in [ev_cmKeepOne, ev_cmForceKeepOne]) then
  begin
   if QT(InevParaList, l_ParaList, k2Proc(anOpPack)) then
    try
     Result := true;
     l_ParaCount := l_ParaList.ParaCount;
     if (l_ParaCount > 0) then
     begin
      l_Start := f_B.rStart;
      l_PrevStyle := ev_saTxtNormalANSI;
      l_Child := l_ParaList.Para[0];
      with l_Child do
       if InheritsFrom(k2_idTextPara) then
       begin
        if (l_ParaCount = 1) AND
           not evHasText(l_Child) then
         Exit;
         // - параграф один и он пустой - ничего удалять не надо
        l_Child.Range.Modify.Delete(aView, anOpPack, ev_cmKeepOne);
        if (l_ParaCount = 1) then
         Exit;
        Inc(l_Start);
        l_PrevStyle := IntA[k2_tiStyle];
       end//InheritsFrom(k2_idTextPara)
       else
       if (l_ParaCount > 1) then
        with l_ParaList.Para[Pred(l_ParaCount)] do
         if InheritsFrom(k2_idTextPara) then
          l_PrevStyle := IntA[k2_tiStyle];
      DeleteParasInRange(l_ParaList, l_Start, f_B.rFinish);
      if (l_Start = f_B.rStart) then
      begin
       l_ParaList.Modify.InsertDefaultPara(nev_piFirst, anOpPack);
       if (l_PrevStyle <> ev_saTxtNormalANSI) then
        l_ParaList.Para[0].IntA[k2_tiStyle] := l_PrevStyle;
      end;//l_Start = f_B.rStart
      evIterateCursorsF(l_ParaList, l3L2IA(@_SetCursorToParaListTop));
     end;//l_ParaCount > 0
    finally
     l_ParaList := nil;
    end;//try..finally
  end;//Solid..
 end;//DeleteAll

var
 l_Start  : Long;
 l_Finish : Long;

 procedure DeleteInnerParas;

  function _ModifyCursorOnParaForDelete(PLC: PevParaListCursor; Index: Long): Boolean; far;
  var
   l_Pos : Long;
  begin//_ModifyCursorOnParaForDelete
   Result := true;
   l_Pos := PLC^.Position;
   if (l_Pos >= l_Start) AND (l_Pos <= l_Finish) then
   begin
    (* - курсор стоит на удаляемом параграфе - надо что-то делать,
         а то куда же ему потом показывать *)
    PLC^.SetEntryPoint(l_Finish, anOpPack);
    if aMode = ev_cmVertMergeCells then
     PLC^.ChangePointByPara(aView, anOpPack, aPara)
    else 
    if not PLC^.Move(aView, ev_ocNextParaTopLeft, anOpPack) then
    begin
     // не смогли сместиться на следующий параграф
     PLC^.SetEntryPoint(l_Start, anOpPack);
     // - в начало удаляемого блока
     if not PLC^.Move(aView, ev_ocPrevParaBottomRight, anOpPack) then
      // - не смогли сместиться на предыдущий параграф
      PLC^.SetEntryPoint(ev_cpNull, anOpPack);
      // - надо что то делать !!!
    end;
   end;//l_Pos >= l_Start
  end;//_ModifyCursorOnParaForDelete

  function _ModifyCursor(C: PevParaListCursor; Index: Long): Boolean; far;
  begin//_ModifyCursor
   Result := true;
   if (C^.Position > l_Finish) then
    C^.OffsetPID(-Succ(l_Finish - l_Start), anOpPack);
  end;//_ModifyCursor

 begin//DeleteInnerParas
  if (l_Start <= l_Finish) then
  begin
   evIterateCursorsF(ParaX, l3L2IA(@_ModifyCursorOnParaForDelete));
   DeleteParasInRange(ParaX, l_Start, l_Finish);
   evIterateCursorsF(ParaX, l3L2IA(@_ModifyCursor));
  end;//l_Start <= l_Finish
 end;//DeleteInnerParas

 procedure InitIndexes;
 var
  l_Sel : InevRange;
 begin//InitIndexes
  l_Start := f_B.rStart;
  if (aMode in [ev_cmAll, ev_cmVertMergeCells]) then
  begin
   if not GetChildSel(aView, Pred(l_Start), False).Solid(aView) then
    Inc(l_Start);
  end//aMode = ev_cmAll
  else
   Inc(l_Start);
  l_Finish := f_B.rFinish;
  if (f_B.Len > 0) then
  begin
   if (aMode in [ev_cmAll, ev_cmVertMergeCells]) then
   begin
    l_Sel := GetChildSel(aView, Pred(l_Finish), False);
    if (l_Sel <> nil) AND not l_Sel.Solid(aView) then
     Dec(l_Finish);
   end//aMode = ev_cmAll
   else
    Dec(l_Finish);
  end;//f_B.Len > 0
 end;//InitIndexes

var
 l_NeedJoin : Boolean;
 
 procedure DeleteFirstParaTail;
 begin//DeleteFirstParaTail
  if (l_Start > f_B.rStart) then
  begin
   l_NeedJoin := true;
   GetChildSel(aView, Pred(f_B.rStart), False).Modify.Delete(aView, anOpPack, aMode);
  end//l_Start > f_B.rStart
  else
   l_NeedJoin := false;
 end;//DeleteFirstParaTail

 procedure DeleteLastParaHead;
 var
  OBF : Long;
 begin//DeleteLastParaHead
  OBF := f_B.rFinish;
  Dec(f_B.rFinish, Succ(l_Finish - l_Start));
  if (l_Finish < OBF) then
  begin
   if (f_Start <> nil) then
   begin
    // - какая-то корректировка, а зачем - я не помню.. надо разбираться
    f_Start.SetEntryPoint(f_B.rStart, anOpPack);
    if f_Start.HasInner then
    begin
     if (l_Start > f_B.rStart) then
      f_Start.Inner.Move(aView, ev_ocBottomRight, anOpPack)
     else
      f_Start.Inner.Move(aView, ev_ocTopLeft, anOpPack);
    end;//f_Start.ChildCursor <> nil
   end;//f_Start <> nil
   Init(f_Start, f_Finish);
   if not GetChildSel(aView, Pred(f_B.rFinish), False).Modify.Delete(aView, anOpPack, aMode, aPara) then
   begin
    evDeletePara(anOpPack, f_Finish, [ev_dpfInternal]);
    l_NeedJoin := false;
   end;//not l_ChildBlock..
  end//l_Finish < OBF
  else
   l_NeedJoin := false;
 end;//DeleteLastParaHead

 procedure JoinFirstAndLast;

  function lp_IsEmptyInner(const anInner: InevBasePoint): Boolean;

   function lp_CheckEmty(const aTag: InevPara; anIndex: TnevParaIndex): Boolean;
   begin
    Result := not aTag.IsEmpty;
    if not Result then
     lp_IsEmptyInner := Result;
   end;

  begin
   Result := anInner.Obj.IsEmpty;
   if not Result then
   begin
    Result := True;
    if anInner.Obj^.IsList then
     anInner.Obj^.AsPara.AsList.IterateParaF(nevL2PIA(@lp_CheckEmty))
    else
     Result := anInner.Obj^.IsEmpty; 
   end; // if not Result then
  end;

 var
  l_StartCursor : InevPoint;
  l_Point       : InevBasePoint;
 begin//JoinFirstAndLast
  if (aMode = ev_cmEmpty) or (aMode = ev_cmEmpty4BlockResize) then
  begin
   l_StartCursor := ParaX.MakePoint;
   try
    l_StartCursor.PositionW := f_B.rStart;
    l_StartCursor.ShowCollapsed := True;
    if l_StartCursor.Inner.Obj.IsEmpty then
    begin
     evDeletePara(anOpPack, l_StartCursor, [ev_dpfInternal]);  
     if l_NeedJoin then
     begin
      l_StartCursor.PositionW := f_B.rStart;
      if lp_IsEmptyInner(l_StartCursor.Inner) then
       evDeletePara(anOpPack, l_StartCursor, [ev_dpfInternal]);
     end;//l_NeedJoin
     l_NeedJoin := false; // - по любому уже ничего не надо объединять
    end;//evEmpty(l_StartCursor.Inner.Target)
    if l_NeedJoin then
     l_StartCursor.Text.Modify.JoinWithNext(aView, anOpPack);
   finally
    l_StartCursor := nil;
   end;//try..finally
  end//aMode = ev_cmEmpty
  else
  if l_NeedJoin then
  begin
   l_Point := f_Start;
   try
    if (l_Point = nil) then
    begin
     l_Point := ParaX.MakePoint;
     l_Point.Move(aView, ev_ocTopLeft);
    end;//l_Point = nil
    l_Point.Text.Modify.JoinWithNext(aView, anOpPack);
   finally
    l_StartCursor := nil;
   end;//try..finally
  end;//aMode = ev_cmEmpty
 end;//JoinFirstAndLast

begin
 if (f_B.Len >= 0) then
 begin
  // - есть что удалять
  if not DeleteAll then                     
  begin
   InitIndexes;
   DeleteInnerParas;
   DeleteFirstParaTail;
   DeleteLastParaHead;
   JoinFirstAndLast;
  end;//not DeleteAll
 end;//f_B.Len >= 0
 Result := true;
end;

function TevParaListCursorPair.DoDeleteHyperlink(const anOpPack : InevOp = nil): Boolean;
  {-}

 function _DoChild(const aBlock: InevRange; aBlockIndex: Long): Boolean;
 begin
  Result := true;
  if aBlock.Formatting.Modify(nil).DeleteHyperlink(anOpPack) then
  begin
   DoDeleteHyperlink := true;
   if anOpPack <> nil then
    anOpPack.MarkModified(aBlock.AsPoint);
  end;
 end;

var
 l_Progress: Il3Progress;
begin
 Result := false;
 if (anOpPack = nil) then
  l_Progress := nil
 else
  anOpPack.QueryInterface(Il3Progress, l_Progress);
 try
  DoIterateF(evL2TSA(@_DoChild), l_Progress);
 finally
  l_Progress := nil;
 end;//try..finally
end;

function TevParaListCursorPair.DoChangeParam(const aView : InevView;
                                             const aMarker  : IevMarker;
                                             aValue         : Long;
                                             const anOpPack : InevOp = nil): Boolean;
  //override;
  {-}

 function _DoChild(const aBlock: InevRange; aBlockIndex: Long): Boolean;
 begin
  Result := true;
  if aBlock.Formatting.Modify(aView).ChangeParam(aView, aMarker, aValue, anOpPack) then
   DoChangeParam := true;
 end;

var
 l_Progress: Il3Progress;
begin
 Result := inherited DoChangeParam(aView, aMarker, aValue, anOpPack);
 if not Result then
 begin
  if (anOpPack = nil) then
   l_Progress := nil
  else
   anOpPack.QueryInterface(Il3Progress, l_Progress);
  try
   DoIterateF(evL2TSA(@_DoChild), l_Progress);
  finally
   l_Progress := nil;
  end;//try..finally
 end;//not Result
end;

procedure TevParaListCursorPair.GetBlockBorders;
  {override;}
  {-}
begin
 if (f_Start = nil) then
  f_B.rStart := 1
 else
  f_B.rStart := f_Start.Position;
 if (f_Finish = nil) then
  f_B.rFinish := l3NilLong
 else
  f_B.rFinish := f_Finish.Position;
end;

function TevParaListCursorPair.GetParaBlockBordersPrim(const aChildPara : InevPara;
                                                       aPID             : Long;
                                                       out cParaStart   : InevBasePoint;
                                                       out cParaFinish  : InevBasePoint): Boolean;
  {override;}
  {-}

 procedure CheckCursor(var theChildCursor : InevBasePoint);
 // Проверяет, что мир исказился (например вставили LeafParaDecorationsHolder),
 // а курсоры про это не узнали, ну и их структура поехала
 var
  l_PrevChild : InevBasePoint;
 begin//CheckCursor
  if (theChildCursor <> nil) then                                       
  begin
   if not theChildCursor.Obj.Box.IsSame(aChildPara) then
   // - наш дочерний курсор указывает не на тот параграф, который на самом деле
   //   является нашим ребёнком
   begin
    if not theChildCursor.Obj.Owner.IsValid then
    // - параграф был удалён, например в результате Undo
    begin
     theChildCursor := aChildPara.MakePoint;
     // - создаём курсор на правильный параграф
     // !!! может быть надо будет создават ЦЕПОЧКУ параграфов, если параграф
     //     нелистьевой и мы опять на это наткнёмся.
    end//not theChildCursor.Obj.Owner.IsValid
    else
    begin
     l_PrevChild := theChildCursor;
     //Assert(theChildCursor.Position = 0);
     Assert(theChildCursor.Inner = nil);
     theChildCursor := aChildPara.MakePoint;
     if aChildPara.IsSame(l_PrevChild.Obj.Owner) then
     // - видимо появился контейнер типа LeafParaDecorationsHolder
      theChildCursor.Inner := l_PrevChild;
     // - иначе - скорее всего удаляли параграф l_PrevChild.Obj
    end;//not theChildCursor.Obj.Box.IsSame(aChildPara)
   end;//not theChildCursor.Obj.Owner.IsValid
  end;//theChildCursor <> nil
 end;//CheckCursor

begin
 Result := (f_B.rStart > 0) AND (aPID >= f_B.rStart) AND (aPID <= f_B.rFinish);
 if Result then
 begin
  if aChildPara.IsValid then
  begin
   Assert(aChildPara.PID = Pred(aPID));
   if (aPID = f_B.rStart) then
    cParaStart := f_ChildStart
   else
    cParaStart := nil;
   if (aPID = f_B.rFinish) then
    cParaFinish := f_ChildFinish
   else
    cParaFinish := nil;
   CheckCursor(cParaStart);
   CheckCursor(cParaFinish);
   Assert((cParaStart = nil) OR cParaStart.Obj^.Box.IsSame(aChildPara));
   Assert((cParaFinish = nil) OR cParaFinish.Obj^.Box.IsSame(aChildPara));
  end//aChildPara.IsValid
  else
  begin
   Result := false;
   cParaStart := nil;
   cParaFinish := nil;
  end;//aChildPara.IsValid
 end//Result
 else
 begin
  cParaStart := nil;
  cParaFinish := nil;
 end;//InBlock
end;

function TevParaListCursorPair.IsSolid(const aView: InevView): Boolean;
  {override;}
  {-}
var
 l_StartCursor  : InevBasePoint;
 l_FinishCursor : InevBasePoint;
 l_BlockLenght  : Long;
 l_Range: InevRange;
begin
 l_BlockLenght := DoGetBlockLength;
 if (l_BlockLenght = 0) then
  Result := True
 else
 if (f_B.rStart <= 1) AND (f_B.rFinish >= l_BlockLenght) then
 begin
  GetBorderPoints(l_StartCursor, l_FinishCursor);
  if (l_StartCursor = nil) then
   Result := True
  else
  begin
   if (l_StartCursor.Position <= 0) then
   // - Начальный курсор стоит ПЕРЕД первым параграфом
    Result := True
   else
   begin
    l_Range := GetChildSel(aView, l_StartCursor.Position - 1, False); 
    if l_Range <> nil then
     Result := l_Range.Solid(aView)        
    else 
     Result := False;
   end; 
  end;//l_StartCursor = nil
  if Result then
  begin
   if (l_FinishCursor = nil) then
    Result := True
   else
   begin
    if (l_FinishCursor.Position <= 0) then
    // - Конечный курсор стоит ПЕРЕД первым параграфом
     Result := False
    else
    begin
     if (l_FinishCursor.Position > l_BlockLenght) then
     // - Конечный курсор стоит ПОСЛЕ последнего параграфа
      Result := True
     else
      begin
       l_Range := GetChildSel(aView, l_FinishCursor.Position - 1, False); 
       if l_Range <> nil then
        Result := l_Range.Solid(aView)        
       else 
        Result := False;
      end; 
    end;//l_FinishCursor.Position <= 0
   end;//l_FinishCursor = nil
  end;//Result
 end//(f_B.rStart <= 1) AND (f_B.rFinish >= l_BlockLenght)
 else
  Result := false;
end;

{$IfDef evNeedGetBlockFont}
function TevParaListCursorPair.DoGetFont(const aView : InevView;
                                       aMap : TnevFormatInfoPrim;
                                       Stop       : PInteger = nil): InevFontPrim;
  {override;}
  {-}
var
 NF1 : InevFontPrim;
 pNF : ^InevFontPrim;
 Ass : Boolean;
 NF  : InevFontPrim absolute Result;

 function AddChildFont(const aChild: InevRange; anIndex: Long): Boolean;
 var
  l_ChildMap: TnevFormatInfoPrim;
 begin//AddChildFont
  Result := False;
  try
   if (Stop <> nil) AND (Stop^ > 1) then Exit;
   if aChild = nil then Exit; //Заплатка!!!
   l_ChildMap := aMap.InfoForChild(aChild.Obj^);
   if l_ChildMap = nil then Exit;
   pNF^ := aChild.Formatting.GetFont(aView, l_ChildMap, Stop);
   if (Stop <> nil) AND (Stop^ > 1) then Exit;
   if (NF <> nil) then
   begin
    if not Ass then
     pNF := @NF1
    else
    if NF.SubFont(pNF^) then
     Exit;
   end;//NF <> nil
   {$IFNDEF Archi}
   if not afw.InOp then
    afw.ProcessMessages;
   {$ENDIF Archi}
  finally
   if Ass then
    NF1 := nil
   else
   if (NF <> nil) then
    Ass := true;
  end;//try..finally
  Result := true;
 end;//AddChildFont

begin
 Ass := false;
 pNF := @Result;
 DoIterateF(evL2TSA(@AddChildFont));
end;
{$EndIf evNeedGetBlockFont}

{$IfDef evNeedGetBlockStyle}
function TevParaListCursorPair.DoGetStyle(Stop: PInteger): Ik2Tag;
  {override;}
  {-}
var
 ResultStyle : Ik2Tag absolute Result;
 Ass         : Boolean;

 function AddChildStyle(const aChild: InevRange; anIndex: Long): Boolean;
 var
  St : Ik2Tag;
 begin//AddChildStyle
  Result := false;
  if (Stop <> nil) AND (Stop^ > 1) then Exit;
  if aChild = nil then Exit; //Заплатка!!!
  St := aChild.Formatting.GetStyle(Stop);
  if (Stop <> nil) AND (Stop^ > 1) then Exit;
  if (St = nil) OR St.IsNull then
  begin
   ResultStyle := k2NullTag;
   Exit;
  end//St = nil
  else
  if Ass then
  begin
   if not St.IsSame(ResultStyle) then
   begin
    ResultStyle := k2NullTag;
    Exit;
   end;//not St.IsSame(ResultStyle)
  end//Ass
  else
  begin
   ResultStyle := St;
   Ass := true;
  end;//Ass                       
  //if not afw.InOp then
  // afw.ProcessMessages;
  Result := true;
 end;//AddChildStyle

begin
 Result := k2NullTag;
 Ass := false;
 DoIterateF(evL2TSA(@AddChildStyle));
end;
{$EndIf evNeedGetBlockStyle}

function TevParaListCursorPair.COMQueryInterface(const IID: Tl3GUID; out Obj): Tl3HResult;
  {override;}
  {stdcall;}
  {-}
begin
 if IID.EQ(IevHyperlink) AND (f_B.rStart = f_B.rFinish) then
 begin
  if Supports(GetChildSel(nil, Pred(f_B.rStart), False), IID.IID, Obj) then
   Result.SetOk
  else
   Result.SetNoInterface;
 end 
 else
  Result := inherited COMQueryInterface(IID, Obj);
end;

procedure TevParaListCursorPair.DoStore(const aView: InevView;
                                        const G : Ik2TagGenerator;
                                        aFlags  : TevStoreFlags);
  {override;}
  {-} 
var
 l_ChildProp : Tk2ArrayProperty;
 l_Tag       : PIk2Tag;
 l_WasOut    : Boolean;
 l_Last      : Long;

 function StoreChild(const aChild: Ik2Tag; Index: Long): Boolean; 
 var
  l_Block : InevRange;
  l_B     : TevPair;
 begin
  Result := True;
  if l_ChildProp.GetStoredChild(l_Tag^, aChild, G.Context) then
  begin
   l_Block := GetChildSel(aView, Index, False);
   try
    if l_WasOut {AND not StoreParaEnd} AND (Index = l_Last) AND
       not aChild.InheritsFrom(k2_idParaList) AND
       not l_Block.ContainsEnd(aView) then
    begin
     l_B := l_Block.Borders;
     if (l_B.rStart = l_B.rFinish) then
      Exit;
    end;//l_WasOut
    if l_Block <> nil then
     l_Block.AsStorable.Store(aView, G, aFlags - [evd_sfChildrenOnly]);
    l_WasOut := True;
   finally
    l_Block := nil;
   end;//try..finally
  end;//l_ChildProp.GetStored(..
 end;

begin
 l_Tag := GetRedirect;
 if l_Tag.IsValid then
 begin
  if Solid(aView) then
  begin
   aFlags := aFlags - [evd_sfStoreParaEnd];
   if not (evd_sfChildrenOnly in aFlags) then
   begin
    G.StartChild(l_Tag.TagType.ID);
    try
     l_Tag.Write(G, l3_spfAll);
    finally
     G.Finish;
    end;//try..finally
    Exit;
   end;//not ChildrenOnly
  end;//Solid
  l_WasOut := false;
  l_Last := Pred(f_B.rFinish);
  l_ChildProp := Tk2Type(l_Tag.TagType).ArrayProp[k2_tiChildren];
  if (evd_sfChildrenOnly in aFlags) then
   IterateChildrenF(k2L2TIA(@StoreChild))
  else
  begin
   G.StartChild(l_Tag.TagType.ID);
   try
    l_Tag.Write(G, l3_spfAll - [l3_spfChildren]);
    Self.IterateChildrenF(k2L2TIA(@StoreChild));
   finally
    G.Finish;
   end;//try..finally
  end;//(evd_sfChildrenOnly in aFlags)
 end;//l_Tag.IsValid
end;

procedure TevParaListCursorPair.ArrangeFoundCursors(anIndex       : Long;
                                                    var theStart  : InevBasePoint;
                                                    var theFinish : InevBasePoint);
  //virtual;
  {-}
begin
end;
  
function TevParaListCursorPair.SearchPrim(const aView : InevView;
                                          const aSearcher : IevSearcher;
                                          const aProgress : Il3Progress;
                                          const aStart    : InevBasePoint;
                                          out theStart    : InevBasePoint;
                                          out theFinish   : InevBasePoint): Boolean;
  {override;}
  {-ищет подстроку и возвращает найденную позицию в (cFStart, cFFinish)}

var
 l_ChildStart : InevBasePoint;

 function ChildSearch(const aChildBlock: InevRange; anIndex: Long): Boolean; far;
 var
  l_thisChildStart : InevBasePoint;
 begin//ChildSearch
  Inc(anIndex);
  if (l_ChildStart <> nil) AND
     l_ChildStart.Obj.IsSame(aChildBlock.Obj^) then
   l_thisChildStart := l_ChildStart
  else
   l_thisChildStart := nil;
  if (aChildBlock <> nil) and
     aChildBlock.Search(aView,
                        aSearcher,
                        aProgress,
                        l_thisChildStart,
                        theStart,
                        theFinish) then
  begin
   SearchPrim := true;
   Result := false;
   ArrangeFoundCursors(anIndex, theStart, theFinish);
  end//aChildBlock.Search
  else
   Result := true;
 end;//ChildSearch

 function ChildFunc(const Child: Ik2Tag; Index: Long): Boolean;
 begin//ChildFunc
  Result := ChildSearch(GetChildSel(aView, Index, False), Index);
 end;//ChildFunc

var
 l_BS                : Long;
 l_PrevShowCollapsed : Boolean;
 l_B                 : Integer;
 l_Back              : Boolean;
begin
 l_PrevShowCollapsed := false;
 Result := false;
 l_Back := (ev_soBackward in aSearcher.Options);
 if l_Back then
  l_B := f_B.rFinish
 else
  l_B := f_B.rStart;
 if (aStart <> nil) AND aStart.Obj.IsSame(GetRedirect^) then
 begin
  if l_Back then
   l_BS := Min(l_B, aStart.Position)
  else
   l_BS := Max(l_B, aStart.Position);
  if not aStart.HasInner then
   l_ChildStart := nil
  else
   l_ChildStart := aStart.Inner;
  if (l_ChildStart <> nil) then
  begin
   l_PrevShowCollapsed := l_ChildStart.ShowCollapsed;
   l_ChildStart.ShowCollapsed := true;
  end;//(l_ChildStart <> nil)
 end//aStart <> nil..
 else
 begin
  l_BS := l_B;
  l_ChildStart := nil;
 end;//aStart <> nil..
 if l_Back then
  IterateChildrenBackF(k2L2TIA(@ChildFunc), Max(0, Pred(l_BS)))
 else
  DoIterateF(evL2TSA(@ChildSearch), aProgress, str_nevmmSearch.AsCStr,
           Max(0, Pred(l_BS)));
 if (l_ChildStart <> nil) then
  l_ChildStart.ShowCollapsed := l_PrevShowCollapsed;
end;

function TevParaListCursorPair.DoIterateChildrenF(Action : Ik2Tag_IterateChildrenF_Action;
                                                aStart : Tl3Index;
                                                aHi    : Tl3Index;
                                                aLoadedOnly : Boolean): Long;
  {override;}
  {-}

 function DoChild(const aTag: InevPara; anIndex: TnevParaIndex): Boolean;
 begin//DoChild
  Result := Action(aTag, anIndex);
 end;//DoChild

begin
 try
  Result := -1;
  if (f_B.Len >= 0) AND (f_B.rFinish > 0) then
  begin
   aStart := Max(aStart, Pred(f_B.rStart));
   aHi := Min(aHi, Pred(f_B.rFinish));
   Result := ParaX.IterateParaF(nevL2PIA(@DoChild), aStart, aHi, aLoadedOnly);
  end;//f_B.Len >= 0
 finally
  k2FreeTIA(Action);
 end;//try..finally
end;

function TevParaListCursorPair.BottomChildBlock(const aView : InevView): InevRange;
  //override;
  {-}
var
 l_B : TevPair;
begin
 l_B := Borders;
 if (l_B.rStart = l_B.rFinish) then
  // - спускаемся на уровень вниз
  Result := GetChildSel(aView, Pred(l_B.rStart), False).BottomChildBlock(aView)
 else
  Result := inherited BottomChildBlock(aView);
  // - мы и есть блок самого нижнего уровня
end;

function TevParaListCursorPair.IsCollapsed(const aView: InevView): Boolean;
  //override;
  {-}
var
 l_B   : TevPair;
 l_Sel : InevRange;
begin
 l_B := Borders;
 if (l_B.rStart = l_B.rFinish) then
 begin
  // - спускаемся на уровень вниз
  l_Sel := GetChildSel(aView, Pred(l_B.rStart), False);
  if (l_Sel = nil) then
   Result := true
  else
   Result := l_Sel.Collapsed(aView)
 end//l_B.rStart = l_B.rFinish
 else
  Result := inherited IsCollapsed(aView);
end;

function TevParaListCursorPair.DoDeleteSegments(const anOpPack : InevOp = nil): Boolean;
  //override;
  {* - удаляет сегменты. }

 function _DoChild(const aBlock: InevRange; aBlockIndex: Long): Boolean;
 begin//_DoChild
  Result := true;
  if aBlock.Formatting.Modify(nil).DeleteSegments(anOpPack) then
   DoDeleteSegments := true;
 end;//_DoChild

begin
 Result := false;
 DoIterateF(evL2TSA(@_DoChild));
end;

function TevParaListCursorPair.DoAddIndentMarker(const aView: InevView;
  aValue: Integer;
  const anOpPack: InevOp): Boolean;

 function _DoChild(const aBlock: InevRange; aBlockIndex: Long): Boolean;
 begin
  Result := True;
  if aBlock.Formatting.Modify(aView).AddIndentMarker(aView, aValue, anOpPack) then
   DoAddIndentMarker := True;
 end;

var
 l_Progress: Il3Progress;
begin
 Result := inherited DoAddIndentMarker(aView, aValue, anOpPack);
 if not Result then
 begin
  if (anOpPack = nil) then
   l_Progress := nil
  else
   anOpPack.QueryInterface(Il3Progress, l_Progress);
  try
   DoIterateF(evL2TSA(@_DoChild), l_Progress);
  finally
   l_Progress := nil;
  end;//try..finally
 end;//not Result
end;

function TevParaListCursorPair.DoDeleteIndentMarker(const aView: InevView;
  const anOpPack: InevOp): Boolean;
  
 function _DoChild(const aBlock: InevRange; aBlockIndex: Long): Boolean;
 begin
  Result := True;
  if aBlock.Formatting.Modify(aView).DeleteIndentMarker(aView, anOpPack) then
   DoDeleteIndentMarker := True;
 end;

var
 l_Progress: Il3Progress;
begin
 Result := inherited DoDeleteIndentMarker(aView, anOpPack);
 if not Result then
 begin
  if (anOpPack = nil) then
   l_Progress := nil
  else
   anOpPack.QueryInterface(Il3Progress, l_Progress);
  try
   DoIterateF(evL2TSA(@_DoChild), l_Progress);
  finally
   l_Progress := nil;
  end;//try..finally
 end;//not Result
end;

end.

