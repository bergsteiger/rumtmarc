unit evTextParaTools;              
{* Утилитные методы для работы с текстовым параграфом. }

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: evTextParaTools - }
{ Начат: 17.06.2004 14:37 }
{ $Id: evTextParaTools.pas,v 1.197 2013/04/24 09:35:36 lulin Exp $ }

// $Log: evTextParaTools.pas,v $
// Revision 1.197  2013/04/24 09:35:36  lulin
// - портируем.
//
// Revision 1.196  2013/04/04 11:18:52  lulin
// - портируем.
//
// Revision 1.195  2012/10/29 16:56:55  lulin
// - вычищаем поддержку ветки редактора.
//
// Revision 1.194  2011/12/20 06:55:34  dinishev
// {Requestlink:313754442}
//
// Revision 1.193  2011/09/19 09:45:49  lulin
// {RequestLink:266898633}.
//
// Revision 1.192  2011/09/15 18:32:06  lulin
// {RequestLink:278824896}.
//
// Revision 1.191  2011/09/15 16:23:22  lulin
// {RequestLink:278824896}.
//
// Revision 1.189  2011/09/14 18:01:52  lulin
// {RequestLink:278824896}.
//
// Revision 1.188  2011/09/05 10:44:50  lulin
// {RequestLink:280006084}.
//
// Revision 1.187  2011/09/02 15:09:54  lulin
// {RequestLink:280006084}.
//
// Revision 1.186  2011/09/01 13:44:25  lulin
// {RequestLink:280006084}.
//
// Revision 1.185  2011/08/31 19:30:24  lulin
// {RequestLink:280006084}.
//
// Revision 1.184  2011/08/30 17:10:08  lulin
// {RequestLink:280006084}.
//
// Revision 1.183  2011/08/30 10:34:18  lulin
// {RequestLink:278833302}.
// - bug fix: не присваивали результат.
//
// Revision 1.182  2011/08/29 15:53:58  lulin
// {RequestLink:278833302}.
//
// Revision 1.181  2011/08/25 17:30:42  lulin
// {RequestLink:279774244}.
//
// Revision 1.180  2011/08/25 15:00:07  lulin
// {RequestLink:279774216}.
//
// Revision 1.179  2011/08/23 18:01:07  lulin
// {RequestLink:279774229}.
//
// Revision 1.178  2011/08/22 16:48:57  lulin
// {RequestLink:278844809}.
//
// Revision 1.177  2011/08/05 10:42:55  dinishev
// [$278135327]
//
// Revision 1.176  2011/08/03 15:06:42  lulin
// {RequestLink:272663564}.
//
// Revision 1.175  2011/08/03 14:22:38  lulin
// {RequestLink:272663564}.
//
// Revision 1.174  2011/07/08 17:05:07  lulin
// {RequestLink:228688745}.
//
// Revision 1.173  2011/02/18 12:11:56  lulin
// - расширяем заготовочку для Валентина.
//
// Revision 1.172  2010/12/10 12:31:25  lulin
// - bug fix: не собирались с директивой _nsTool.
//
// Revision 1.171  2010/09/28 09:18:41  dinishev
// [$235058888]
//
// Revision 1.170  2010/09/27 09:34:47  dinishev
// [$235058865]. Bug fix: обновляем f_FirstTabStop при изменении тега.
//
// Revision 1.169  2010/08/10 08:17:26  dinishev
// [$232097129]
//
// Revision 1.168  2010/06/29 13:08:50  lulin
// {RequestLink:210436431}.
//
// Revision 1.167  2010/06/28 16:05:42  lulin
// {RequestLink:220595991}.
//
// Revision 1.166  2010/06/28 15:21:21  lulin
// {RequestLink:220595279}.
// - bug fix: не сдвигали сегменты при разделении абзаца, а надо было.
//
// Revision 1.165  2010/05/11 11:17:50  lulin
// {RequestLink:210437726}.
//
// Revision 1.164  2010/05/04 15:27:28  lulin
// {RequestLink:208701762}.
// - bug fix: при разрыве параграфа не переносились сегменты.
//
// Revision 1.163  2010/04/19 08:31:39  lulin
// {RequestLink:204112481}.
// - не очищали суперпозицию.
//
// Revision 1.162  2010/03/26 14:33:29  lulin
// {RequestLink:200081692}.
// - оптимизация для {RequestLink:199591524}.
//
// Revision 1.161  2010/03/25 14:51:41  lulin
// {RequestLink:199591524}.
//
// Revision 1.160  2010/02/25 13:31:59  lulin
// {RequestLink:192645982}.
// - оптимизация.
//
// Revision 1.158  2010/02/25 12:37:25  lulin
// {RequestLink:192644728}.
// - bug fix: не сбрасывали суперпозицию сегментов при вставке нового параграфа.
//
// Revision 1.157  2009/07/23 13:42:11  lulin
// - переносим процессор операций туда куда надо.
//
// Revision 1.156  2009/07/20 16:44:04  lulin
// - убираем из некоторых листьевых параграфов хранение типа конкретного тега, вместо этого "плодим" под каждый тип тега свой тип класса.
//
// Revision 1.155  2009/07/13 13:25:22  lulin
// {RequestLink:141264340}. №14.
//
// Revision 1.154  2009/07/10 12:51:06  lulin
// {RequestLink:141264340}. №3.
//
// Revision 1.153  2009/07/09 16:10:36  lulin
// - более дешёвую проверку выносим вперёд.
//
// Revision 1.152  2009/07/06 13:32:06  lulin
// - возвращаемся от интерфейсов к объектам.
//
// Revision 1.151  2009/06/29 17:58:28  lulin
// - убираем лишнее дёрганье счётчика ссылок.
//
// Revision 1.150  2009/06/25 12:57:31  lulin
// - вычищаем ненужный контекст.
//
// Revision 1.149  2009/06/22 13:32:10  lulin
// - не приводим к простому типу по-нескольку раз.
//
// Revision 1.148  2009/06/22 13:05:09  lulin
// - не приводим к простому типу по-нескольку раз.
//
// Revision 1.147  2009/06/22 12:45:57  lulin
// [$152408437].
//
// Revision 1.146  2009/06/22 12:37:46  lulin
// {RequestLink:152408409}.
//
// Revision 1.145  2009/06/22 11:12:58  lulin
// - переносим якорь списков параграфов на модель.
//
// Revision 1.144  2009/05/14 08:42:04  dinishev
// <K> : 137469295
//
// Revision 1.143  2009/05/12 10:58:29  dinishev
// _CleanUp
//
// Revision 1.142  2009/04/14 18:11:55  lulin
// [$143396720]. Подготовительная работа.
//
// Revision 1.141  2009/04/09 08:57:39  lulin
// [$142613134]. Неправильно учитывали отступы при форматировании параграфов.
//
// Revision 1.140  2009/03/31 12:04:37  lulin
// [$140286997].
//
// Revision 1.139  2009/03/30 09:45:42  lulin
// [$139439426]. Не создаём ненужную принтерную канву.
//
// Revision 1.138  2009/03/04 13:32:48  lulin
// - <K>: 137470629. Генерируем идентификаторы типов с модели и убираем их из общей помойки.
//
// Revision 1.137  2009/01/19 14:06:41  dinishev
// http://mdp.garant.ru/pages/viewpage.action?pageId=118394503&focusedCommentId=135599508#comment-135599508
//
// Revision 1.136  2008/10/02 06:26:54  dinishev
// http://mdp.garant.ru/pages/viewpage.action?pageId=85169631&focusedCommentId=119475207#comment-119475207
//
// Revision 1.135  2008/09/26 10:51:41  dinishev
// <K>: 77235630 - мерж испрвлений замечений с веткой
//
// Revision 1.134  2008/09/26 10:10:47  dinishev
// <K>: 77235630 для Head'а
//
// Revision 1.133  2008/08/26 11:22:03  lulin
// - чистка кода.
//
// Revision 1.132  2008/08/26 09:40:09  lulin
// - чистка кода.
//
// Revision 1.131  2008/07/03 13:23:21  lulin
// - <K>: 87589015.
//
// Revision 1.130  2008/06/20 14:02:45  lulin
// - используем префиксы элементов.
//
// Revision 1.129  2008/05/28 08:34:40  lulin
// - вычищен ненужный параметр.
//
// Revision 1.128  2008/05/08 16:10:55  lulin
// - изменения в рамках <K>: 90442475.
//
// Revision 1.127  2008/05/08 13:14:30  lulin
// - <K>: 90442618.
//
// Revision 1.126  2008/05/08 08:54:19  lulin
// - передаём канву.
//
// Revision 1.125  2008/05/08 08:18:03  lulin
// - <K>: 90440848.
//
// Revision 1.124  2008/05/08 07:03:13  lulin
// - <K>: 90441963.
//
// Revision 1.123  2008/05/07 18:29:48  lulin
// - изменения в рамках <K>: 90441963.
//
// Revision 1.122  2008/05/07 17:30:11  lulin
// - cleanup.
//
// Revision 1.121  2008/05/07 16:19:28  lulin
// - изменения в рамках <K>: 90441943.
//
// Revision 1.120  2008/05/07 13:04:23  lulin
// - изменения в рамках <K>: 90441635.
//
// Revision 1.119  2008/05/05 12:56:39  lulin
// - <K>: 90439843.
//
// Revision 1.118  2008/04/29 16:56:52  lulin
// - работы по <K>: 89106312.
//
// Revision 1.117  2008/04/28 07:18:26  dinishev
// Bug fix: в режиме отображения невидимых символов не выставлялся флаг для конвертора строки о применении пробелов (мерж исправления с веткой).
//
// Revision 1.116  2008/04/24 15:22:12  lulin
// - изменения в рамках <K>: 89106312.
//
// Revision 1.115  2008/04/24 12:26:19  lulin
// - изменения в рамках <K>: 89106312.
//
// Revision 1.114  2008/04/23 18:27:40  lulin
// - <K>: 89106529.
//
// Revision 1.113  2008/04/23 14:20:07  lulin
// - <K>: 89106322.
//
// Revision 1.112  2008/04/22 10:49:23  lulin
// - <K>: 88637809.
//
// Revision 1.111  2008/04/11 14:26:17  lulin
// - передаём вью в рамках <K>: 89096854.
//
// Revision 1.110  2008/04/07 13:34:07  lulin
// - изменения в рамках <K>: 89096854.
//
// Revision 1.109  2008/04/07 11:59:57  lulin
// - <K>: 89096763.
//
// Revision 1.108  2008/04/07 10:35:25  lulin
// - <K>: 89096356.
//
// Revision 1.107  2008/03/21 12:17:25  lulin
// - <K>: 87590980.
//
// Revision 1.106  2008/03/21 10:38:37  lulin
// - <K>: 87590380.
//
// Revision 1.105  2008/03/20 15:00:47  lulin
// - <K>: 87590377.
//
// Revision 1.104  2008/03/19 14:23:34  lulin
// - cleanup.
//
// Revision 1.103  2008/02/04 08:51:24  lulin
// - класс _Tl3InterfaceList выделен в отдельный модуль.
//
// Revision 1.102  2008/01/31 18:53:27  lulin
// - избавляемся от излишней универсальности списков.
//
// Revision 1.101  2008/01/24 07:55:13  dinishev
// Bug fix: не устанавливался флаг изменения при выставлении другого стиля параграфу
//
// Revision 1.100  2007/12/04 12:47:06  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.81.2.77  2007/10/10 17:40:34  lulin
// - в метод подсчета суперпозиции сегментов теперь передаем карту форматирования.
//
// Revision 1.81.2.76  2007/09/25 15:48:53  lulin
// - bug fix: поправлена вставка строки в начале параграфа непосредственно ПЕРЕД объектом.
//
// Revision 1.81.2.75  2007/09/25 15:41:21  lulin
// - поправлена вставка строк непосредственно между объектами.
//
// Revision 1.81.2.74  2007/09/18 16:00:55  lulin
// - bug fix: при изменении параметров шрифта не взводили флаг измененности параграфа (CQ OIT5-26708).
//
// Revision 1.81.2.73  2007/09/14 13:26:07  lulin
// - объединил с веткой B_Tag_Clean.
//
// Revision 1.81.2.72.2.3  2007/09/12 17:08:16  lulin
// - cleanup.
//
// Revision 1.81.2.72.2.2  2007/09/12 16:14:08  lulin
// - убран ненужный параметр по-умолчанию.
//
// Revision 1.81.2.72.2.1  2007/09/12 15:23:02  lulin
// - избавляемся от метода, дублирующего функциональность получения атрибута.
//
// Revision 1.81.2.72  2007/09/11 18:49:58  lulin
// - удален ненужный параметр.
//
// Revision 1.81.2.71  2007/09/07 13:46:20  lulin
// - удалены ненужные методы тегов.
//
// Revision 1.81.2.70  2007/09/07 12:52:52  lulin
// - удален ненужный параметр.
//
// Revision 1.81.2.69  2007/09/06 09:37:37  lulin
// - переименовано свойство.
//
// Revision 1.81.2.68  2007/09/04 17:06:00  lulin
// - cleanup.
//
// Revision 1.81.2.67  2007/08/21 16:10:28  lulin
// - неверно трактовали отсутствующий конец сегмента при переборе сегментов (CQ OIT5-25634).
//
// Revision 1.81.2.66  2007/08/14 15:19:22  lulin
// - оптимизируем перемещение блоков памяти.
//
// Revision 1.81.2.65  2007/08/10 08:30:11  lulin
// - избавляемся от излишнего использования интерфейсов, т.к. переносимость может быть достигнута другими методами.
//
// Revision 1.81.2.64  2007/07/18 15:07:19  lulin
// - выпрямляем зависимости. Схема документа, теперь не зависит от Эвереста.
//
// Revision 1.81.2.63  2007/02/13 17:32:56  lulin
// - избавляемся от использования стандартной функции поиска подстроки в строке.
//
// Revision 1.81.2.62  2006/12/01 15:50:59  lulin
// - cleanup.
//
// Revision 1.81.2.61  2006/11/10 17:15:55  lulin
// - объединил с веткой.
//
// Revision 1.81.2.60  2006/11/03 11:00:08  lulin
// - объединил с веткой 6.4.
//
// Revision 1.81.2.59.6.9  2006/10/31 11:15:03  oman
// - new: Реализация _ViewBounds для текстовых параграфов. Не
//  самая оптимальная (cq22451)
//
// Revision 1.81.2.59.6.8  2006/10/30 13:41:08  lulin
// - теперь и курсор возвращает честное смещение по вертикали.
//
// Revision 1.81.2.59.6.7  2006/10/26 13:06:53  lulin
// - cleanup.
//
// Revision 1.81.2.59.6.6  2006/10/26 12:50:42  lulin
// - используем полиморфизм, вместо выяснения класса объекта.
//
// Revision 1.81.2.59.6.5  2006/10/26 11:24:13  lulin
// - избавляемся от лишних преобразований типов.
//
// Revision 1.81.2.59.6.4  2006/10/26 10:48:49  lulin
// - избавляемся от преобразования карты форматирования к тегу.
//
// Revision 1.81.2.59.6.3  2006/10/26 10:19:29  lulin
// - модуль переехал в базовую библиотеку.
//
// Revision 1.81.2.59.6.2  2006/10/25 16:26:06  lulin
// - избавляемся от получения строки параграфа по смещению какими-то окольными путями.
//
// Revision 1.81.2.59.6.1  2006/10/18 13:17:03  lulin
// - cleanup.
//
// Revision 1.81.2.59  2006/09/21 11:44:35  oman
// - new beh: При установке в конец строки, встаем перед "Soft Enter"
//
// Revision 1.81.2.58  2006/08/28 15:08:46  lulin
// - bug fix: был AV при выделении текста мышью в которком документе с подписью внизу (CQ OIT5-22339).
//
// Revision 1.81.2.57  2006/08/03 09:06:47  lulin
// Удалем все сегменты при установлении выравнивания "преформатированный"
//
// Revision 1.81.2.56  2006/08/02 10:51:53  lulin
// - объединил с веткой в которой боролся со скроллингом.
//
// Revision 1.81.2.55.2.10  2006/08/01 15:52:26  lulin
// - облегчаем метрики параграфа.
//
// Revision 1.81.2.55.2.9  2006/08/01 10:51:37  lulin
// - у отображаемых объектов убрано свойство "ширина".
//
// Revision 1.81.2.55.2.8  2006/07/27 13:54:15  lulin
// - убрано ненужное свойство.
//
// Revision 1.81.2.55.2.7  2006/07/27 12:46:46  lulin
// - cleanup.
//
// Revision 1.81.2.55.2.6  2006/07/27 12:24:33  lulin
// - восстановлена функциональность хот-спотов.
//
// Revision 1.81.2.55.2.5  2006/07/26 10:27:54  lulin
// - вместо указателя на запись используем ссылку на интерфейс.
//
// Revision 1.81.2.55.2.4  2006/07/24 18:15:29  lulin
// - подготавливаемся к переносу суперпозиции сегментов на карту форматирования.
//
// Revision 1.81.2.55.2.3  2006/07/24 18:00:47  lulin
// - имя свойства убрано из комментариев - чтобы не находилось контекстным поиском.
//
// Revision 1.81.2.55.2.2  2006/07/24 17:34:13  lulin
// - у параграфа убрана ссыкла на информацию о форматировании.
//
// Revision 1.81.2.55.2.1  2006/07/24 16:23:57  lulin
// - теперь форматирование параграфа хранится в коллекции отрисованных элементов.
//
// Revision 1.81.2.55  2006/07/24 13:46:53  lulin
// - уменьшаем количество приведений тега к объекту.
//
// Revision 1.81.2.54  2006/07/24 11:56:50  lulin
// - оптимизация - получаем число строк из карты форматирования, а не у параграфа.
//
// Revision 1.81.2.53  2006/07/24 11:33:03  lulin
// - bug fix: падали при добавлении поля в КЗ (CQ OIT5-22009).
//
// Revision 1.81.2.52  2006/07/24 11:10:19  lulin
// - оптимизация: на получаем по нескольку раз текст параграфа.
//
// Revision 1.81.2.51  2006/07/24 11:02:03  lulin
// - оптимизация: на получаем по нескольку раз текст параграфа.
//
// Revision 1.81.2.50  2006/07/21 20:13:34  lulin
// - оптимизация: на получаем по нескольку раз текст параграфа.
//
// Revision 1.81.2.49  2006/07/21 19:25:22  lulin
// - оптимизация: на получаем по нескольку раз карту форматирования параграфа.
//
// Revision 1.81.2.48  2006/07/21 17:56:34  lulin
// - cleanup.
//
// Revision 1.81.2.47  2006/07/21 17:53:57  lulin
// - убран ненужный метод.
//
// Revision 1.81.2.46  2006/07/21 15:33:01  lulin
// - убран ненужный метод.
//
// Revision 1.81.2.45  2006/07/21 15:11:12  lulin
// - убран ненужный параметр.
//
// Revision 1.81.2.44  2006/07/21 14:58:39  lulin
// - убран ненужный параметр.
//
// Revision 1.81.2.43  2006/07/21 14:50:50  lulin
// - убран ненужный параметр.
//
// Revision 1.81.2.42  2006/07/21 14:38:18  lulin
// - cleanup.
//
// Revision 1.81.2.41  2006/07/21 14:15:09  lulin
// - cleanup.
//
// Revision 1.81.2.40  2006/07/21 11:16:04  lulin
// - борьба с тормозами при вводе.
//
// Revision 1.81.2.39  2006/06/07 08:52:52  oman
// - fix: При печати портились цвета (более широкая проверка) (cq17605)
//
// Revision 1.81.2.38  2006/06/02 11:22:58  oman
// - fix: при расчете высоты сегмета портился цвет на канве (cq17605)
//
// Revision 1.81.2.37  2006/03/29 11:59:17  dinishev
// Убираем заточку для многострочных полей из общей процедуры
//
// Revision 1.81.2.36  2006/03/14 15:34:39  dinishev
// Подкорректировал работу многострочного поля: корректное отображение при одной строке/пустом редакторе + авторазмер
//
// Revision 1.81.2.35  2006/01/16 09:18:38  lulin
// - new behavior: если параграф не сформатирован, а просят его i-ю строку, то форматируем его.
//
// Revision 1.81.2.34  2005/12/03 19:43:58  lulin
// - удален старый механизм перехода на метки. Теперь все делается через Waiter'ов.
//
// Revision 1.81.2.33  2005/11/18 15:13:34  lulin
// - доделано сохранение комментариев.
//
// Revision 1.81.2.32  2005/11/17 15:02:54  lulin
// - по другому лечим неправильное приведение типов.
//
// Revision 1.81.2.31  2005/11/17 14:45:22  lulin
// - bug fix: было приведение к неправильному классу.
//
// Revision 1.81.2.30  2005/11/09 15:28:25  lulin
// - базовые интерфейсы перенесены в правильный модуль.
//
// Revision 1.81.2.29  2005/11/08 06:39:37  lulin
// - с текстового параграфа и списка параграфов вычищены ненужные методы получения сложной формы параграфа.
//
// Revision 1.81.2.28  2005/11/04 11:22:09  lulin
// - cleanup: с параграфа убран метод переформатирования - он оставлен только на форме отображения объекта.
//
// Revision 1.81.2.27  2005/11/01 15:49:20  lulin
// - bug fix: бывало обращение к несуществующей строке параграфа в результате которого не рисовался документ (CQ OIT5-17516).
//
// Revision 1.81.2.26  2005/10/25 11:05:44  lulin
// - не получаем напрямую информационную канву экрана, а получаем ее через фасад.
//
// Revision 1.81.2.25  2005/10/06 13:04:30  lulin
// - подготавливаем параграфы к тому, чтобы форматирование не хранилось вместе с данными.
//
// Revision 1.81.2.24  2005/09/14 07:18:15  lulin
// - bug fix: исправлена очередная пачка ошибок с редактированием параграфа в Unicode.
//
// Revision 1.81.2.23  2005/08/31 15:29:35  lulin
// - bug fix: неправильно отрисовывался текстовый параграф при изменении в нем количества строк при набивке текста.
//
// Revision 1.81.2.22  2005/07/21 16:54:23  lulin
// - контейнер документов теперь знает про процессор параграфов.
//
// Revision 1.81.2.21  2005/07/15 15:45:30  lulin
// - new behavior: перерисовываем строки параграфов, через _InevSimpleView.
//
// Revision 1.81.2.20  2005/07/14 14:17:35  lulin
// - new behavior: теперь один документ может быть привязан к нескольким TextSource - т.е. одна и та же копия документа может быть показана в разных окнах редакторов, расположенных на разных формах.
//
// Revision 1.81.2.19  2005/07/14 09:07:46  lulin
// - new interface: InevTextSource.
// - new behavior: DocumentContainer теперь не знает напрямую о TextSource, а только через интерфейс InevTextSource - это задел на показ одного документа в нескольких окнах.
//
// Revision 1.81.2.18  2005/07/13 11:39:25  lulin
// - bug fix: приводили строку к неправильному типу.
//
// Revision 1.81.2.17  2005/06/24 18:20:16  lulin
// - bug fix: преобразовывали к неправильному типу строки.
//
// Revision 1.81.2.16  2005/06/24 16:06:09  lulin
// - bug fix: преобразовывали к неправильному типу строки.
//
// Revision 1.81.2.15  2005/06/21 16:58:55  lulin
// - cleanup.
//
// Revision 1.81.2.14  2005/06/21 16:11:16  lulin
// - new behavior: для перерисовки строк параграфа пользуемся методом _InevShape.Invalidate.
//
// Revision 1.81.2.13  2005/06/21 13:13:08  lulin
// - cleanup: удалены ненужные методы.
//
// Revision 1.81.2.12  2005/06/17 14:37:46  lulin
// - cleanup: убраны устаревшие методы.
//
// Revision 1.81.2.11  2005/06/17 13:50:43  lulin
// - new property: InevTextPara._ViewSegments.
//
// Revision 1.81.2.10  2005/06/17 13:18:46  lulin
// - new property: InevTextPara.Formatting.
//
// Revision 1.81.2.9  2005/06/16 16:06:19  lulin
// - cleanup: подготавливаемся к расширению интерфейса InevTextPara.
//
// Revision 1.81.2.8  2005/05/26 17:44:29  lulin
// - базовая канва вывода переехала из Эвереста в L3.
//
// Revision 1.81.2.7  2005/05/26 13:19:29  lulin
// - new unit: l3ScreenIC.
//
// Revision 1.81.2.6  2005/05/26 11:52:04  lulin
// - new unit: l3PrinterIC.
//
// Revision 1.81.2.5  2005/05/24 13:43:29  lulin
// - rename unit: evLineAr -> l3LineArray.
//
// Revision 1.81.2.4  2005/05/23 13:26:05  lulin
// - используем интерфейс, а не объект.
//
// Revision 1.81.2.3  2005/05/23 08:39:14  lulin
// - избавился от использования промежуточного объекта.
//
// Revision 1.81.2.2  2005/05/20 16:30:15  lulin
// - развязал интерфейс и реализацию шрифта выделения.
//
// Revision 1.81.2.1  2005/05/18 12:42:48  lulin
// - отвел новую ветку.
//
// Revision 1.77.2.5  2005/05/18 12:32:10  lulin
// - очередной раз объединил ветку с HEAD.
//
// Revision 1.77.2.4  2005/04/28 09:18:30  lulin
// - объединил с веткой B_Tag_Box.
//
// Revision 1.77.2.3  2005/04/13 15:30:04  lulin
// - форма текстового параграфа теперь представляется списком строк.
//
// Revision 1.77.2.2  2005/04/13 14:31:51  lulin
// - вместо безликих тегов используем параграфы.
//
// Revision 1.77.2.1  2005/04/08 13:35:05  lulin
// - _Processor стал обязательным параметром.
//
// Revision 1.79.2.5  2005/04/23 16:23:00  lulin
// - remove prop: Ik2Tag.AttrWP.
//
// Revision 1.79.2.4  2005/04/23 16:07:25  lulin
// - удален временный интерфейс Ik2TagBox.
//
// Revision 1.79.2.3  2005/04/23 15:19:23  lulin
// - remove method: Ik2Tag._SetSubAtom - как сложный и ведущий к неоптимальному коду.
//
// Revision 1.79.2.2  2005/04/22 05:56:19  lulin
// - cleanup.
//
// Revision 1.79.2.1  2005/04/21 14:46:55  lulin
// - избавляемся от обертки над тегами - теперь объекты посредством шаблонов сами реализуют интерфейс Ik2Tag.
//
// Revision 1.79  2005/04/21 05:11:38  lulin
// - используем _Box (пока из-за постоянных преобразований туда и обратно - по скорости стало только хуже).
//
// Revision 1.78  2005/04/12 09:53:06  lulin
// - объединил с веткой - в попытках починить List Index Out Of Bounds.
//
// Revision 1.81  2005/05/17 09:27:33  lulin
// - new unit: _evResultFont.
//
// Revision 1.80  2005/04/28 15:03:38  lulin
// - переложил ветку B_Tag_Box в HEAD.
//
// Revision 1.79.2.5  2005/04/23 16:23:00  lulin
// - remove prop: Ik2Tag.AttrWP.
//
// Revision 1.79.2.4  2005/04/23 16:07:25  lulin
// - удален временный интерфейс Ik2TagBox.
//
// Revision 1.79.2.3  2005/04/23 15:19:23  lulin
// - remove method: Ik2Tag._SetSubAtom - как сложный и ведущий к неоптимальному коду.
//
// Revision 1.79.2.2  2005/04/22 05:56:19  lulin
// - cleanup.
//
// Revision 1.79.2.1  2005/04/21 14:46:55  lulin
// - избавляемся от обертки над тегами - теперь объекты посредством шаблонов сами реализуют интерфейс Ik2Tag.
//
// Revision 1.79  2005/04/21 05:11:38  lulin
// - используем _Box (пока из-за постоянных преобразований туда и обратно - по скорости стало только хуже).
//
// Revision 1.78  2005/04/12 09:53:06  lulin
// - объединил с веткой - в попытках починить List Index Out Of Bounds.
//
// Revision 1.77  2005/04/05 09:55:27  lulin
// - используем IevShape.
//
// Revision 1.76  2005/03/29 16:38:29  lulin
// - поменьше преобразовываем типы.
//
// Revision 1.75  2005/03/28 11:32:08  lulin
// - интерфейсы переехали в "правильный" модуль.
//
// Revision 1.74  2005/03/25 17:09:01  lulin
// - избавляемся от метода Tk2AtomW.sLong.
//
// Revision 1.73  2005/03/25 11:04:26  lulin
// - используем _AttrW вместо SetNull.
//
// Revision 1.72  2005/03/23 16:53:30  lulin
// - bug fix: бывали ошибки преобразования при установки стиля.
//
// Revision 1.71  2005/03/23 14:14:13  lulin
// - убран ненужный утилитный класс.
//
// Revision 1.70  2005/03/23 13:36:29  lulin
// - убран ненужный утилитный класс.
//
// Revision 1.69  2005/03/23 12:42:23  lulin
// - вместо вызова метода ссылаемся на свойство.
//
// Revision 1.68  2005/03/23 11:16:29  lulin
// - удалено ненужное исключение.
//
// Revision 1.67  2005/03/23 08:46:32  lulin
// - методы для установки свойств перенесены на Ik2Tag.
//
// Revision 1.66  2005/03/22 12:42:16  lulin
// - bug fix: установка стиля убивала гиперссылки.
//
// Revision 1.65  2005/03/21 16:28:16  lulin
// - переходим к Ik2Tag.
//
// Revision 1.64  2005/03/17 11:06:26  lulin
// - переходим к Ik2Tag.
//
// Revision 1.63  2005/03/15 12:16:09  lulin
// - remove method: k2TagO.
//
// Revision 1.62  2005/03/15 10:30:18  lulin
// - от Tk2AtomR переходим к Ik2Tag.
//
// Revision 1.61  2005/03/14 07:29:01  lulin
// - от Tk2AtomR переходим к Ik2Tag.
//
// Revision 1.60  2005/03/11 17:13:05  lulin
// - от Tk2AtomR переходим к Ik2Tag.
//
// Revision 1.59  2005/03/11 16:26:39  lulin
// - от Tk2AtomR переходим к Ik2Tag.
//
// Revision 1.58  2005/03/10 17:44:02  lulin
// - от Tk2AtomR переходим к Ik2Tag.
//
// Revision 1.57  2005/03/10 11:35:09  lulin
// - от Tk2AtomR переходим к Ik2Tag.
//
// Revision 1.56  2005/03/09 18:40:19  lulin
// - remove method: Tk2AtomR.DeleteChild.
// - new method: Ik2Tag.DeleteChild.
//
// Revision 1.55  2005/03/09 15:43:12  lulin
// - remove method: Tk2AtomR._AssignCloneParams.
// - new class: Tk2TT - утилитные функции для работы с тегами (структурами документа) не инкапсулированные самими тегами (в частности туда перенесен метод _AssignCloneParams).
//
// Revision 1.54  2005/03/09 12:04:52  lulin
// - от Tk2AtomR переходим к Ik2TagWrap.
//
// Revision 1.53  2005/03/04 13:59:17  lulin
// - remove method: Tk2AtomR._AddChild.
//
// Revision 1.52  2005/02/28 14:24:35  lulin
// - обновлена документация.
//
// Revision 1.51  2005/02/28 14:12:33  lulin
// - bug fix: при форматировании по метрикам принтера неправильно устанавливался курсор, а также неправильно определялись начало и конец гиперссылки.
//
// Revision 1.50  2005/02/18 15:04:37  lulin
// - перевел на Ik2Tag.
//
// Revision 1.49  2005/02/03 14:33:43  lulin
// - для Undo-записей используем фабричные методы ToUndo, вместо конструкторов.
//
// Revision 1.48  2004/12/08 13:17:06  lulin
// - new behavior: не умничаем с форматированием текстового параграфа, если родительский параграф не сформатирован.
//
// Revision 1.47  2004/11/29 12:03:17  voba
// - bug fix: при кривой таблице стилей гиперссылки превращались в стиль параграфа.
//
// Revision 1.46  2004/11/15 13:53:56  lulin
// - remove method: Tk2AtomR.AssignSubAtomEx.
// - new method: Tk2AtomR._AssignCloneParams.
//
// Revision 1.45  2004/11/15 13:40:45  lulin
// - теперь для типа параграфа можно определять ParamsForClone - список атрибутов, которые нужно присваивать при клонировании параграфа.
//
// Revision 1.44  2004/11/10 11:06:08  lulin
// - new interface: IevTagShape.
// - remove interface: IevVisualShapedTag.
//
// Revision 1.43  2004/10/28 14:10:55  lulin
// - remove unit: evParam.
//
// Revision 1.42  2004/10/28 13:54:26  lulin
// - remove type: TevParam.
//
// Revision 1.41  2004/10/18 16:18:57  lulin
// - remove unit: evTagTools.
//
// Revision 1.40  2004/10/18 15:22:16  lulin
// - метод evReformatTextPara переименован в _evReformatPara и перенесен в модуль evParaTools.
//
// Revision 1.39  2004/10/18 15:07:40  lulin
// - добавлен комментарий.
//
// Revision 1.38  2004/08/05 15:26:03  law
// - убрал потенциально опасный метод.
//
// Revision 1.37  2004/08/05 14:58:40  law
// - bug fix: при определении позиции курсора при включенных спецсимволах неправильно учитывалась разгонка по ширине.
//
// Revision 1.36  2004/08/04 11:53:02  law
// - bug fix: вычисление позиции курсора не учитывало режима отображения спецсимволов.
//
// Revision 1.35  2004/07/29 06:24:33  law
// - оптимизировано рисование линий псевдографикой.
//
// Revision 1.34  2004/07/28 15:23:47  law
// - bug fix: при удалении пустого параграфа перед preformatted - создавалось впечатление, что preformatted тоже удалился.
//
// Revision 1.33  2004/07/08 15:59:18  law
// - ускорена вставка/удаление текста в длинных документах.
//
// Revision 1.32  2004/07/05 12:35:03  law
// - вернул старые названия методов rAtom и wAtom.
//
// Revision 1.31  2004/07/05 11:34:12  law
// - bug fix: ссылки в комментариях отрисовывались на белом фоне.
//
// Revision 1.29  2004/07/02 10:57:49  law
// - замена Tk2AtomR -> Ik2Tag.
//
// Revision 1.28  2004/07/01 17:41:46  law
// - new behavior: Formatter'ы переведены с Tk2AtomR на Ik2Tag.
//
// Revision 1.27  2004/06/30 11:32:21  law
// - rename proc: _k2Tag(TObject) -> k2TagO.
//
// Revision 1.26  2004/06/29 16:01:34  law
// - bug fix: зацикливание в получении документа в evNode.
//
// Revision 1.25  2004/06/29 14:26:41  law
// - избавляемся от метода Tk2AtomR._Set.
//
// Revision 1.24  2004/06/18 11:35:40  law
// - вычищаем все из модуля _TevTextPara.
//
// Revision 1.23  2004/06/18 10:48:45  law
// - убрана лишняя зависимость.
//
// Revision 1.22  2004/06/17 17:58:22  law
// - еще пачка методов уехала из класса _TevTextPara.
//
// Revision 1.21  2004/06/17 16:44:23  law
// - еще пачка методов уехала из класса _TevTextPara.
//
// Revision 1.20  2004/06/17 15:05:35  law
// - еще пачка методов уехала из класса _TevTextPara.
//
// Revision 1.19  2004/06/17 14:24:22  law
// - remove method: _TevTextPara.GetPosFont.
//
// Revision 1.18  2004/06/17 14:17:30  law
// - remove method: _TevTextPara.PosFont.
//
// Revision 1.17  2004/06/17 12:07:39  law
// - remove method: _TevTextPara.Dir_DeleteText.
// - new proc: evDir_DeleteText.
//
// Revision 1.16  2004/06/17 11:16:16  law
// - remove method: _TevTextPara.Dir_InsertText.
// - new proc: evDir_InsertText.
//

{$Include evDefine.inc }

interface

uses
  l3Interfaces,
  l3Types,
  l3InternalInterfaces,
  l3Base,

  k2Types,
  k2Interfaces,
  k2InterfacesEx,

  evdTypes,
  
  nevBase,
  nevTools
  ;

function evDir_InsertText(const aPara    : InevTextPara;
                          aSt            : Tl3CustomString;
                          aPos           : Long;
                          UpdateSegments : Bool;
                          IncludeStart   : Bool = false;
                          const Context  : InevOp = nil): Bool;
  {-}                        
function evDir_DeleteText(const aPara    : InevTextPara;
                          aPos, Count    : Long;
                          Deleted        : PAnsiChar = nil;
                          const anOpPack : InevOp = nil): Bool;
  {-}                        
procedure evTextParaAddSegment(const aPara     : InevTextPara;
                               aLayerHandle    : Tl3Handle;
                               const Segment   : Ik2Tag;
                               const Container : InevOp = nil);
  {* - добавляет отрезок выделения. }
procedure evTextParaIterateLines(const aMap  : TnevFormatInfoPrim;
                                 const aText : Tl3PCharLen;
                                 const aPara : InevTextPara;
                                 Action      : Tl3IteratorAction;
                                 I1          : Tl3Index = l3MinIndex;
                                 I2          : Tl3Index = l3MaxIndex);
  {-}
function evTextParaGetLine(const aMap  : InevLines;
                           const aText : Tl3PCharLen;
                           var i       : Long): Tl3PCharLen;
  {-}
function evTextParaGetLineByPos(const aMap  : TnevFormatInfoPrim;
                                const aText : Tl3PCharLen;
                                aPos        : Long): Long;
  {* - возвращает номер строки по смещению от начала параграфа. }
function evTextParaGetDeltaByPos(const aMap   : TnevFormatInfoPrim;
                                 const aText  : Tl3PCharLen;
                                 const aPara  : InevTextPara;
                                 aPos         : Long;
                                 L            : Long): Long;
  {* - возвращает позицию в дюймах на смещении aPos символов с начала строки L. }
function evTextParaGetDeltaByLinePrim(const aMap  : TnevFormatInfoPrim;
                                  const aPara : InevTextPara;
                                  aLine       : Long): Long;
  {-}
function evTextParaGetDeltaByLine(const aMap  : TnevFormatInfoPrim;
                                  const aPara : InevTextPara;
                                  aLine       : Long): Long;
  {-}
function evTextParaGetPosByDelta(const aMap   : TnevFormatInfoPrim;
                                 const aText  : Tl3PCharLen;
                                 const aPara  : InevTextPara;
                                 DX           : Long;
                                 L            : Long): Long;
  overload;
  {* - возвращает позицию на смещении DХ с начала строки L. }
function evTextParaGetPosByLine(const aMap  : InevLines;
                                const aText : Tl3PCharLen;
                                var L       : Long): Long;
  {* - смещение строки L c начала параграфа. }
procedure evTextParaGetLineSegment(const aMap  : InevLines;
                                   const aText : Tl3PCharLen;
                                   Li, Si      : Long;
                                   const L     : Ik2TagList;
                                   S1, S2, S3  : Tl3CustomString);
  {-}
function  evTextParaGetLineSegments(const aMap  : TnevFormatInfoPrim;
                                    const aText : Tl3PCharLen;
                                    const aPara : InevTextPara;
                                    Li          : Long): Ik2TagList;
  {* - возвращает индекс начального и конечного отрезков строки L
    SS = -1 если отрезков в строке нет. }
procedure evTextParaSetFontParam(const aPara     : InevTextPara;
                                 anAtom          : Long;
                                 const aValue    : Ik2Tag;
                                 const Container : InevOp = nil);
  {-}
function  evTextParaLineCount(const aMap: TnevFormatInfoPrim): Integer;
  {-}
function evTextParaViewBounds(const aMap  : InevMap;
                              const aText : Tl3PCharLen;
                              const aPara : InevTextPara;
                              aPosInLine  : Long;
                              aLine       : Long): TnevRect;
  {-}
implementation

uses
  SysUtils,
  
  l3Const,
  l3Chars,
  l3Units,
  l3Utils,
  l3MinMax,
  l3String,
  l3LineArray,
  l3SingleLineInfo,

  k2Base,
  k2Tags,
  k2Except,
  k2TagTools,
  k2InterfacedTagList,

  evTypes,
  
  nevFacade,

  evInternalInterfaces,
  evParaTools,

  evSegOp,
  evSegLst,
  evTabStops,
  evChangeCodePage,
  evResultFont,
  evAlignBySeparatorUtils,  

  nevFontPrim,

  ObjectSegment_Const,
  TableCell_Const,
  nevSegmentObject,

  nevStringCache
  ;

function evDir_InsertText(const aPara    : InevTextPara;
                          aSt            : Tl3CustomString;
                          aPos           : Long;
                          UpdateSegments : Bool;
                          IncludeStart   : Bool = false;
                          const Context  : InevOp = nil): Bool;
  {-Insert StLen characters from St^ at aPos}

 procedure UpdateInsertion(aPos, Len: Long);
   {-}

  var
   l_ClearSuper : Boolean;  

  function UpdateLayer(const Layer: Ik2Tag; Index: Long): Bool;

   function UpdateSegment(const S: Ik2Tag; Index: Long): Bool;
   var
    l_oS : Integer;
    l_nS : Integer;
    l_oF : Integer;
    l_nF : Integer;
   begin
    //if S.HasSubAtom(k2_tiStart) OR S.InheritsFrom(k2_idObjectSegment) then
    begin
     l_oS := S.IntA[k2_tiStart];
     l_nS := Succ(l3UpdateInsertion(Pred(l_oS), aPos, Len, IncludeStart));
     if (l_oS <> l_nS) then
     begin
      S.IntW[k2_tiStart, nil] := l_nS;
      l_ClearSuper := true;
     end;//l_oS <> l_nS
    end;//S.HasSubAtom(k2_tiStart)..
    if S.HasSubAtom(k2_tiFinish) then
    begin
     l_oF := S.IntA[k2_tiFinish];
     if (l_oF <> aPos) OR not S.InheritsFrom(k2_idObjectSegment) then
     begin
      l_nF := l3UpdateInsertion(l_oF, aPos, Len, false);
      if (l_oF <> l_nF) then
      begin
       S.IntW[k2_tiFinish, nil] := l_nF;
       l_ClearSuper := true;
      end;//l_oF <> l_nF
     end;//l_F <> aPos.. 
    end;//S.HasSubAtom(k2_tiFinish)
    Result := true;
   end;

  begin//UpdateSegment
   Layer.IterateChildrenF(k2L2TIA(@UpdateSegment));
   Result := true;
  end;//UpdateSegment

 begin//UpdateInsertion
  with aPara.Attr[k2_tiSegments] do
   if IsValid then
   begin
    l_ClearSuper := false;
    IterateChildrenF(k2L2TIA(@UpdateLayer));
    if l_ClearSuper then
     evSegments_ClearSuper(aPara, Context);
   end;//IsValid
 end;//UpdateInsertion

var
 l_S : Tl3CustomString;
 l_WasEmpty : Boolean;
begin
 Result := not aSt.Empty;
 if Result then
 begin
  l_S := (aPara.cAtom(k2_tiText).AsObject As Tl3CustomString);
  l_WasEmpty := l_S.Empty;
  l_S.Insert(aSt, aPos);
  if UpdateSegments then
   UpdateInsertion(aPos, aSt.Len);
  if l_WasEmpty AND
     (EvPrevOverallPara(aPara).IsLegalComment OR
      EvNextOverallPara(aPara).IsLegalComment) then
  begin
   aPara.OwnerPara.Invalidate([nev_spExtent]);
   if not UpdateSegments then
    aPara.Invalidate([nev_spExtent]);
  end
  else
   aPara.Invalidate([nev_spExtent]);
 end;//Result
end;

function evDir_DeleteText(const aPara    : InevTextPara;
                          aPos, Count    : Long;
                          Deleted        : PAnsiChar = nil;
                          const anOpPack : InevOp = nil): Bool;
  {-удаляет Count символов с позиции aPos}

 procedure UpdateDeletion(aPos, Len: Long);

(* var
  l_ClearSuper : Bool;*)
  var
   l_LayerCount : Integer;
 
  function UpdateLayer(const aLayer: Ik2Tag; Index: Long): Bool; 
  var
   i       : Long;
   l_Seg   : Ik2Tag;
   oStart  : Long;
   oFinish : Long;
   nStart  : Long;
   nFinish : Long;
  begin//UpdateLayer
   Inc(l_LayerCount);
   with aLayer do
   begin
    i := 0;
    while (i < ChildrenCount) do
    begin
     l_Seg := Child[i];
     if l_Seg.IsValid then
     begin
      with l_Seg do
      begin
       oStart := Pred(IntA[k2_tiStart]);
       oFinish := Pred(IntA[k2_tiFinish]);
      end;//with l_Seg
      nStart  := l3UpdateDeletion(oStart, aPos, Len, true);
      nFinish := l3UpdateDeletion(oFinish, aPos, Len, false);
      if (nStart > nFinish) then
      begin
       aLayer.DeleteChild(i, anOpPack);
       //l_ClearSuper := true;
      end
      else
      begin
       with l_Seg do
       begin
        if (anOpPack <> nil) AND
           (aPos <= oStart) AND (aPos + Len > oStart) AND
           (nFinish <> oFinish) then
        begin
         {$IfDef k2ForEditor}
         OevSaveSegmentStart.ToUndo(anOpPack, l_Seg, Succ(oStart));
         {$EndIf k2ForEditor}
         if (nStart <> oStart) then
          IntW[k2_tiStart, nil] := Succ(nStart);
         IntW[k2_tiFinish, nil] := Succ(nFinish);
        end
        else
        begin
         if (nStart <> oStart) then
          IntW[k2_tiStart, nil] := Succ(nStart);
         if (nFinish <> oFinish) then
          IntW[k2_tiFinish, nil] := Succ(nFinish);
        end;
       end;{with l_Seg}
       Inc(i);
      end;{nStart > nFinish}
     end//l_Seg.IsValid
     else
      aLayer.DeleteChild(i);
    end;//while (i < Count)..
   end;//with aLayer
   Result := true;
  end;//UpdateLayer

 var
  l_Seg : Ik2Tag; 
 begin//UpdateDeletion
  l_Seg := aPara.Attr[k2_tiSegments];
  with l_Seg do
   if IsValid then
   begin
    //l_ClearSuper := false;
    l_LayerCount := 0;
    //if (anOpPack <> nil) then
    // ПРОВЕРКА УБРАНА ОСОЗНАННО http://mdp.garant.ru/pages/viewpage.action?pageId=220595279
     // это на самом деле аналог (misfLockSegments in aFlags) в TevTextParaCursor.DoDeleteString,
     // а иначе сегменты сдвигаются тогда, когда не надо, например при разделении
     // параграфа на два
     l_Seg.IterateChildrenF(k2L2TIA(@UpdateLayer));
    //if l_ClearSuper {AND (anOpPack <> nil)} then
    // - проверять ничего не надо, ибо суперпозиция теперь не в параграфе лежит
    // http://mdp.garant.ru/pages/viewpage.action?pageId=199591524
(*    if (l_LayerCount > 1) then*)
    // http://mdp.garant.ru/pages/viewpage.action?pageId=204112481
    // Нельзя тут оптимизировать, ибо есть такая проверочка:
    // if (l_Exclude = []) AND (l_CC = 1) then
    // - а в Архивариусе как раз l_Exclude <> [].
     evSegments_ClearSuper(aPara, anOpPack);
   end;//IsValid
 end;//UpdateDeletion

var
 l_Text      : Tl3CustomString;
 l_TextStart : PAnsiChar;
begin
 Result := false;
 with aPara.Attr[k2_tiText] do
  if IsValid then
   l_Text := AsObject As Tl3CustomString
  else
   Exit;
 if not l_Text.Empty then
 begin
  if (aPos < l_Text.Len) then
  begin
   l_TextStart := l_Text.St + aPos;
   if (Deleted <> nil) then
    l3Move(l_TextStart^, Deleted^, Count);
   l_Text.Delete(aPos, Count);
   UpdateDeletion(aPos, Count);
   (*   if l_Text.Empty AND
      (EvPrevOverallPara(aPara).IsLegalComment OR
       EvNextOverallPara(aPara).IsLegalComment) then
    aPara.OwnerPara.Invalidate([nev_spExtent])
   else*)
   // ^ - Появилось в http://mdp.garant.ru/pages/viewpage.action?pageId=210436431
   // Закомментировано в http://mdp.garant.ru/pages/viewpage.action?pageId=313754442
    aPara.Invalidate([nev_spExtent]);
   Result := true;
  end;//aPos < l_Text.Len
 end;//not l_Text.Empty
end;

procedure evTextParaAddSegment(const aPara     : InevTextPara;
                               aLayerHandle    : Tl3Handle;
                               const Segment   : Ik2Tag;
                               const Container : InevOp = nil);
  {-добавляет отрезок выделения}
var
 l_Text  : Tl3PCharLen;
 l_Sg    : Ik2Tag;
 WasPreformatted : Bool;
begin
 l_Text := aPara.Text;
 if not l3IsNil(l_Text) then
 begin
  if (Segment.IntA[k2_tiStart] <= Segment.IntA[k2_tiFinish]) then
  begin
   if (Segment.IntA[k2_tiStart] <= l_Text.SLen) then
   begin
    l_Sg := aPara.cAtom(k2_tiSegments, Container);
    if (Segment.IntA[k2_tiFinish] > l_Text.SLen) then
     Segment.IntW[k2_tiFinish, nil] := l_Text.SLen;
    if (aLayerHandle = ev_slView) AND
       // - нефига со ссылками (и остальными спецслоями) умничать и "натягивать" их на параграф.
       Segment.BoolA[k2_tiApply2Para] AND
       (Segment.IntA[k2_tiStart] = 1) AND (Segment.IntA[k2_tiFinish] >= l_Text.SLen) then
    begin
     WasPreformatted := (aPara.IntA[k2_tiJustification] = Ord(ev_itPreformatted));
     aPara.AssignCloneParams(Segment);
     if WasPreformatted AND (aPara.IntA[k2_tiJustification] <> Ord(ev_itPreformatted)) then
      aPara.IntW[k2_tiJustification, Container] := Ord(ev_itPreformatted);
    end//Segment.BoolA[k2_tiApply2Para]
    else
     evSegments_AddSegment(aPara, l_Sg, aLayerHandle, Segment, Container);
   end;//Segment.Long(k2_tiStart) <= l_Text.Len
   aPara.Invalidate([nev_spExtent]);
  end;//Segment.IntA[k2_tiStart] <= Segment.IntA[k2_tiFinish]
 end;//not l_Text.Empty
end;

procedure evTextParaIterateLines(const aMap  : TnevFormatInfoPrim;
                                 const aText : Tl3PCharLen;
                                 const aPara : InevTextPara;
                                 Action      : Tl3IteratorAction;
                                 I1          : Tl3Index = l3MinIndex;
                                 I2          : Tl3Index = l3MaxIndex);
  {-}
var
 l_PrevLineInfo : PevLineInfo;

 function CheckLine(LineInfo: PPevLineInfo; Index: Long): Bool;
 var
  Start, Finish : Long;
  l_LineInfo    : PevLineInfo;
  l_Line        : Tl3PCharLen;
 begin
  l_LineInfo := LineInfo^;
  if (l_LineInfo^.WC < 0) then
  begin
   if l3IsNil(aText) then
    l_LineInfo^.WC := 0
   else
   begin
    if (l_PrevLineInfo = nil) then
     Start := 0
    else
     Start := l_PrevLineInfo^.B;
    Finish := l_LineInfo^.B;
    l_Line.InitPart(aText.S, Start, Finish, aText.SCodePage);
    LineInfo^.WC := l3CountOfChar(cc_HardSpace, l3RTrim(l_Line));
   end;//l3IsNil(aText)
  end;//LineInfo^^.WC < 0
  Result := Action(LineInfo, Index);
  l_PrevLineInfo := l_LineInfo;
 end;

var
 l_LineInfo  : TevLineInfo;
 l_PLineInfo : PevLineInfo;
 l_O         : TObject;
begin
 if (aMap = nil) OR (aMap.Lines = nil) then
 begin
  {-эта ветка необходима когда параграф еще не сформатировался}
  Assert(aMap <> nil, 'А бывает ли такое, что итерируем строки в отсутствии форматирования?');
  //Assert(aMap.Lines <> nil);
  // - этот Assert влючать нельзя, т.к. для Preformatted параграфов Lines = nil
  with l_LineInfo do
  begin
   if (aMap = nil) then
   begin
    LE.P.X := 0;
    LE.P.Y := 0;
   end
   else
   begin
    LE.P.X := aMap.Width;
    LE.P.Y := aMap.Height;
   end;//aMap = nil
   B := aText.SLen;
   FI := [];
   WC := 0;
   AddHyphen := false;
  end;//with l_LineInfo
  l_PLineInfo := @l_LineInfo;
  Action(@l_PLineInfo, 0);
 end//not aMap.rMap.IsValid
 else
 begin
  l_O := aMap.Lines.AsObject;
  if (l_O Is TevLineArray) then
  begin
   if not l3IsNil(aText) then
   begin
    l_PrevLineInfo := nil;
    TevLineArray(l_O).IterateF(I1, I2, l3L2IA(@CheckLine));
   end//not l3IsNil(aText)
   else
    TevLineArray(l_O).Iterate(I1, I2, Action);
  end//l_O Is TevLineArray
  else
  begin
   with l_LineInfo do
   begin
    with (l_O As Tl3SingleLineInfo) do
    begin
     LE.P.X := Width;
     LE.P.Y := Height;
     FI := FontIndexes;
    end;//with (l_O As Tl3SingleLineInfo)
    B := aText.SLen;
    WC := 0;
    AddHyphen := false;
   end;//with l_LineInfo
   l_PLineInfo := @l_LineInfo;
   Action(@l_PLineInfo, 0);
  end;//l_O Is TevLineArray
 end;//not aMap.rMap.IsValid
end;

function evTextParaGetLine(const aMap  : InevLines;
                           const aText : Tl3PCharLen;
                           var i       : Long): Tl3PCharLen;
var
 l_O : TObject;                           
begin
 if l3IsNil(aText) then
  l3AssignNil(Result)
 else
 begin
  if (aMap <> nil) then
  begin
   l_O := aMap.AsObject;
   if (l_O Is TevLineArray) then
   begin
    with TevLineArray(l_O) do
    begin
     if (i > Count) then
      i := Count;
     Result := GetLine(aText, i);
    end;//with TevLineArray(l_O)
   end//l_O Is TevLineArray
   else
    Result := aText;
  end//aMap <> nil
  else
   Result := aText;
 end;//l_Text.Empty
end;

function evTextParaGetLineByPos(const aMap  : TnevFormatInfoPrim;
                                const aText : Tl3PCharLen;
                                aPos        : Long): Long;
  {-возвращает номер строки по смещению от начала параграфа}
var
 LID         : Long;
 PL          : Tl3PCharLen;
 LOfs        : Long;
 l_LineCount : Long;
begin
 if (aPos <= 0) then
  Result := 1
 else
 begin
  l_LineCount := evTextParaLineCount(aMap);
  if (aMap <> nil) AND (l_LineCount > 0) then
  begin
   LID := 1;
   while (LID <= l_LineCount) do
   begin
    PL := evTextParaGetLine(aMap.Lines, aText, LID);
    if (PL.S = nil) then
    begin
     Result := 1;
     Exit;
    end//PL.S = nil
    else
    begin
     if l3IsNil(aText) then
      LOfs := 0
     else
      LOfs := PL.Diff(aText);
     if (aPos >= LOfs) AND (aPos < LOfs + PL.SLen) then
     begin
      Result := LID;
      Exit;
     end;//aPos >= LOfs..
    end;//PL.S = nil..
    Inc(LID);
   end;//while (LID <= l_LineCount)
  end;//l_LineCount > 0
  Result := l_LineCount;
  if (Result < 1) then Result := 1;
 end//aPos <= 0
end;

procedure evTextParaGetLineSegment(const aMap  : InevLines;
                                   const aText : Tl3PCharLen;
                                   Li, Si      : Long;
                                   const L     : Ik2TagList;
                                   S1, S2, S3  : Tl3CustomString);
  {-}
var
 B1, B2  : Long;
 SB1,SB2 : Long;
 TS      : Ik2Tag;
 l_O     : TObject;
begin
 S1.Clear; S2.Clear; S3.Clear;
 if not L.Empty AND not l3IsNil(aText) then
 begin
  if (aMap <> nil) then
  begin
   l_O := aMap.AsObject;
   if (l_O Is TevLineArray) then
    TevLineArray(l_O).GetLineBorders(aText, Li, B1, B2)
   else
   begin
    B1 := 0;
    B2 := aText.SLen;
   end;//l_O Is TevLineArray
  end//aMap.IsValid
  else
  begin
   B1 := 0;
   B2 := aText.SLen;
  end;//aMap.IsValid
  TS := Ik2Tag(L.Items[Si]);
  SB1 := Max(B1, Pred(TS.IntA[k2_tiStart]));
  SB2 := Min(B2, TS.IntA[k2_tiFinish]);
  if (SB1 > B1) then
  begin
   if (Si = 0) then
    S1.AssignSt(aText.S, B1, SB1, aText.SCodePage)
   else
    S1.AssignSt(aText.S,
                Ik2Tag(L.Items[Pred(Si)]).IntA[k2_tiFinish],
                SB1,
                aText.SCodePage);
  end;
  S2.AssignSt(aText.S, SB1, SB2, aText.SCodePage);
  if (Si = Pred(L.Count)) then
   S3.AssignSt(aText.S, SB2, B2, aText.SCodePage);
 end//not L.Empty
 else
  if not l3IsNil(aText) then
   with evTextParaGetLine(aMap, aText, Li)
    do S1.AssignSt(aText.S, 0, SLen, aText.SCodePage);
end;

function evTextParaGetLineSegments(const aMap  : TnevFormatInfoPrim;
                                   const aText : Tl3PCharLen;
                                   const aPara : InevTextPara;
                                   Li          : Long): Ik2TagList;
  {-возвращает индекс начального и конечного отрезков строки L
    SS = -1 если отрезков в строке нет}
var
 B1, B2 : Long;
 Super  : Ik2Tag;
 l_O    : TObject;
begin
 if (aMap = nil) then
  Result := Tk2InterfacedTagList.MakeI
 else
 begin
  Super := aMap.ViewSegments;
  if Super.IsValid then
  begin
   if (aMap.Lines = nil) then
   begin
    B1 := 0;
    B2 := High(Long);
   end//not aMap.IsValid
   else
   begin
    l_O := aMap.Lines.AsObject;
    if (l_O Is TevLineArray) then
     TevLineArray(l_O).GetLineBorders(aText, Li, B1, B2)
    else
    begin
     B1 := 0;
     B2 := High(Long);
    end;//l_O Is TevLineArray
   end;//not aMap.IsValid
   Result := evSegmentsLayer_GetSegments(aPara, Super, B1, B2);
  end//Super.IsValid
  else
   Result := Tk2InterfacedTagList.MakeI;
 end;//aMap = nil
end;

function evTextParaGetLineWordCount(const aMap : InevLines;
                                    i          : Long): Long;
var
 l_O : TObject;                                    
begin
 if (aMap <> nil) then
 begin
  l_O := aMap.AsObject;
  if (l_O Is TevLineArray) then
   Result := TevLineArray(l_O).LineWordCount[i]
  else
   Result := 0;
 end//l_Map.IsValid
 else
  Result := 0;
end;

function GetD2S(var WC: Long; var DW: Long):Long;
begin
 if (WC > 0) then
 begin
  if (WC = 1) then
   Result := DW
  else
   Result := DW div WC;
  Dec(WC);
  Dec(DW, Result);
 end//WC > 0
 else
  Result := 0;
end;

function evTextParaGetDeltaByPos(const aMap  : TnevFormatInfoPrim;
                                 const aText : Tl3PCharLen;
                                 const aPara : InevTextPara;
                                 aPos        : Long;
                                 L           : Long): Long;
  {-возвращает позицию в дюймах на смещении aPos символов с начала строки L}
var
 CN    : Il3InfoCanvas;
 WC    : Long;
 DW    : TevPixel;
 IT    : TevIndentType;
 Cont  : Boolean;

  function TextLen(aStr: Tl3CustomString; const Font: Il3Font): TevPixel;
  var
   l_NS    : Tl3CustomString;
   pxD2S   : TevPixel;
   l_S     : Tl3CustomString;
   l_HasWS : Boolean;
   l_IsWS  : Boolean;
   l_aStr_AsPCharLen : Tl3PCharLen;
   l_S_AsPCharLen : Tl3PCharLen;
   l_CharForSearch : AnsiChar;
  begin
   if aStr.Empty then
   begin
    Result := 0;
    Cont   := true;
   end
   else
   begin
    CN.Font := Font;
    l_aStr_AsPCharLen := aStr.AsPCharLen;
    l_HasWS := l3HasWhiteSpace(l_aStr_AsPCharLen); //Проверяем здесь, т.к. дальше строка может быть преобразована
    if (aMap.Metrics <> nil) AND aMap.Metrics.ShowSpecial then
     l_S := Tl3String.Make(CN.CheckConvertString(l_aStr_AsPCharLen))
    else
     l_S := aStr.Use;
    try
     l_S_AsPCharLen := l_S.AsPCharLen;
     if (IT <> ev_itWidth) OR not l_HasWS then
     begin
      if (aPos >= l_S_AsPCharLen.SLen) then
      begin
       Result := CN.TextExtent(l_S_AsPCharLen).X;
       Dec(aPos, l_S_AsPCharLen.SLen);
       Cont := true;
      end
      else
      begin
       Result := CN.TextExtent(l3PCharLen(l_S_AsPCharLen.S, aPos, l_S_AsPCharLen.SCodePage)).X;
       aPos := 0;
       Cont := false;
      end;//aPos >= l_S_AsPCharLen.SLen
     end
     else
     begin
      Result  := 0;
      l_NS := l_S.Clone;
      try
       if aMap.Metrics.ShowSpecial then
        l_CharForSearch := cc_HardSpaceSymbol
       else
        l_CharForSearch := cc_HardSpace;
       while not l_S.Empty do
       begin
        l_S.FindCharEx(l_CharForSearch, l_NS);
        l_S_AsPCharLen := l_S.AsPCharLen;
        if (aPos >= l_S_AsPCharLen.SLen) then
        begin
         Inc(Result, CN.TextExtent(l_S_AsPCharLen).X);
         Dec(aPos, l_S_AsPCharLen.SLen);
         Cont   := true;
        end//aPos >= l_S_AsPCharLen.SLen
        else
        begin
         Inc(Result, CN.TextExtent(l3PCharLen(l_S_AsPCharLen.S, aPos, l_S_AsPCharLen.SCodePage)).X);
         aPos := 0;
         Cont := false;
        end;//aPos >= l_S_AsPCharLen.SLen
        if aMap.Metrics.ShowSpecial then
         l_IsWS := l3IsHiddenWhiteSpace(l_S.Last)
        else
         l_IsWS := l3IsWhiteSpace(l_S.Last);
        if l_IsWS then
        begin
         pxD2S := GetD2S(WC, DW);
         if Cont then Inc(Result, pxD2S);
        end;//l3IsWhiteSpace(l_S.Last)
        if not Cont then Break;
        l_S.Assign(l_NS);
       end;//while not l_S.Empty
      finally
       l3Free(l_NS);
      end;//try..finally
     end;//IT <> ev_itWidth
    finally
     l3Free(l_S);
    end;//try..finally
   end;//F = nil..
  end;//TextLen

var
 l_ParaFont : Il3Font;
 SegLst     : Ik2TagList;
 S1, S2, S3 : Tl3CustomString;
 Res        : TevPixel;
 function SegmentLen(const Seg: Ik2Tag; Index: Long): Bool;
 var
  l_SegFont : Il3Font;
 begin
  Result := false;
  evTextParaGetLineSegment(aMap.Lines, aText, L, Index, SegLst, S1, S2, S3);
  Inc(Res, TextLen(S1, l_ParaFont));
  if Cont then
  begin
   l_SegFont := aMap.InfoForChild(TnevSegmentObject.Make(Seg)).Font[true];
   try
    Inc(Res, TextLen(S2, l_SegFont));
   finally
    l_SegFont := nil;
   end;//try..finally
   if Cont then
   begin
    Inc(Res, TextLen(S3, l_ParaFont));
    Result := true;
   end;
  end;
 end;

var
 PL          : Tl3PCharLen;
 iPL         : Long;
 iLW         : Long;
 iDW         : Long;
 ParaWidth   : Long;
 l_LineCount : Long;
 l_SaveColor : Tl3Color;
 l_SegmentAndFontTool : InevStringCache;
begin
 if (aMap = nil) then
  Result := 0
 else
  with aPara do
  begin
   if (aMap.Metrics = nil) then
   begin
    Result := 0;
    Exit;
   end;//aMap.Metrics = nil
   CN := aMap.Metrics.InfoCanvas;
   l_LineCount := evTextParaLineCount(aMap);
   l_SaveColor := CN.Font.ForeColor;
   try
    if (L <= 0) OR (L > l_LineCount) then
     Result := 0
    else
    begin
     (*CN.StartTabs(l_TabInfo);
     try*)
      if (L > 1) then
       iPL := IntA[k2_tiLeftIndent]
      else
       iPL := aMap.FirstIndent;
      // - http://mdp.garant.ru/pages/viewpage.action?pageId=278844809
      // - стоит призадуматься ! ! !
      PL := evTextParaGetLine(aMap.Lines, aText, L);
      IT := TevIndentType(IntA[k2_tiJustification]);
      case IT of
       ev_itWidth:
        if (L = l_LineCount) then
         IT := ev_itLeft;
       ev_itPreformatted:
        IT := ev_itLeft;
      end;//case IT
      if Owner.InheritsFrom(k2_idTableCell) then
       Inc(iPl, evCalcDecimalTabIndent(aPara, aText, IT, l_LineCount, CN));
      Result := iPL;
      ParaWidth := aMap.Width;
      if (aMap.Lines <> nil) then
      begin
       if (aMap.Lines.AsObject Is TevLineArray) then
        iLW := TevLineArray(aMap.Lines.AsObject).LineWidth[L]
       else
        iLW := (aMap.Lines.AsObject As Tl3SingleLineInfo).Width;
      end//aMap.rMap.IsValid
      else
       iLW := ParaWidth;
      WC  := evTextParaGetLineWordCount(aMap.Lines, L);
      iDW := ParaWidth - iPL - iLW;
      //if (iDW < 0) then iDW := 0;
      DW := iDW;
      case IT of
       ev_itRight  : Inc(Result, iDW);
       ev_itCenter : Inc(Result, iDW div 2);
      end;//case IT..
      if (aPos <= 0) then
      begin
       ;
      end
      else
      if (aPos > PL.SLen) then
      begin
       if (IT = ev_itWidth) then
        Result := ParaWidth
       else
        Inc(Result, iLW);
      end
      else
      begin //-позиция внутри строки
       Res := 0;
       l_SegmentAndFontTool := TnevStringCache.Make;
       try
        SegLst := evTextParaGetLineSegments(aMap, aText, aPara, L);
        S1 := l_SegmentAndFontTool.CheckS(1);
        l_ParaFont := aMap.Font[true];
        try
         if SegLst.Empty then
         begin
          S1.AsPCharLen := PL;
          Res := TextLen(S1, l_ParaFont);
         end//SegLst.Empty
         else
         begin
          S2 := l_SegmentAndFontTool.CheckS(2);
          S3 := l_SegmentAndFontTool.CheckS(3);
          SegLst.ForEachF(k2L2TIA(@SegmentLen));
         end;//SegLst.Empty
        finally
         l_ParaFont := nil;
        end;//try..finally
       finally
        l_SegmentAndFontTool := nil;
       end;//try..finally
       Inc(Result, Res);
      end;//-позиция внутри строки
     (*finally
      CN.FinishTabs(l_TabInfo);
     end;//try..finally*)
    end;//(L <= 0) OR (L > l_LineCoint)
   finally
    CN.Font.ForeColor := l_SaveColor;
   end;//try..finally
  end;//with aPara
end;

function evTextParaGetPosByDelta(const aMap    : TnevFormatInfoPrim;
                                 const aText   : Tl3PCharLen;
                                 const aPara   : InevTextPara;
                                 const IC      : Il3InfoCanvas;
                                 DX            : Long;
                                 const PL      : Tl3PCharLen;
                                 InLI          : PevLineInfo;
                                 L             : Long): Long;
  overload;
  {-возвращает позицию на смещении DХ с начала строки L} 
var
 l_Continue : Bool;

  function _TextPos(S: Tl3CustomString): Long;
  var
   SW         : Tl3Point;
   l_OTabInfo : Il3TabInfo;
   l_TabInfo  : Il3TabInfo;
   l_RealStr  : Tl3CustomString;
   l_RealStr_AsPCharLen : Tl3PCharLen;
  begin
   l_OTabInfo := IC.TabInfo;
   if aMap.Metrics.ShowSpecial then
    l_RealStr := Tl3String.Make(IC.CheckConvertString(S.AsPCharLen))
   else
    l_RealStr := S.Use;
   try
    l_RealStr_AsPCharLen := l_RealStr.AsPCharLen;
    SW := IC.TextExtent(l_RealStr_AsPCharLen);
    if (DX >= SW.P.X) then
    begin
     Dec(DX, SW.P.X);
     Result := l_RealStr_AsPCharLen.SLen;
     l_Continue := true;
    end
    else
    begin
     IC.StartTabs(l_TabInfo, l_OTabInfo);
     Result := IC.Pos2Index(DX, l_RealStr_AsPCharLen);
     IC.FinishTabs(l_TabInfo);
     IC.StartTabs(l_TabInfo, l_OTabInfo);
     Dec(DX, IC.TextExtent(l3PCharLen(l_RealStr_AsPCharLen.S, Result, l_RealStr_AsPCharLen.SCodePage)).P.X);
     IC.FinishTabs(l_TabInfo);
     l_Continue := false;
    end;//DX >= iLW
   finally
    l3Free(l_RealStr);
   end;//try..finally 
  end;//_TextPos

  function TextPos(S: Tl3CustomString; const Font: Il3Font): Long;
  begin
   if S.Empty then
   begin
    Result := 0;
    l_Continue := true;
   end
   else
   begin
    IC.Font := Font;
    Result := _TextPos(S)
   end;{S.Empty}
  end;{TextPos}
  
  function _TextPosW(S: Tl3CustomString): Long;
  var
   SW         : Tl3Point;
   l_NS       : Tl3CustomString;
   D2S        : TevPixel;
   l_Pos      : Long;
   l_OTabInfo : Il3TabInfo;
   l_TabInfo  : Il3TabInfo;
   l_RealStr  : Tl3CustomString;
   l_CharForSearch : AnsiChar;
   l_RealStr_AsPCharLen : Tl3PCharLen;
  begin
   Result  := 0;
   l_OTabInfo := IC.TabInfo;
   if aMap.Metrics.ShowSpecial then
    l_RealStr := Tl3String.Make(IC.CheckConvertString(S.AsPCharLen))
   else
    l_RealStr := S.Use;
   try
    l_NS := l_RealStr.Clone;
    try
     if aMap.Metrics.ShowSpecial then
      l_CharForSearch := cc_HardSpaceSymbol
     else
      l_CharForSearch := cc_HardSpace;
     while not l_RealStr.Empty do
     begin
      l_RealStr.FindCharEx(l_CharForSearch, l_NS);
      l_RealStr_AsPCharLen := l_RealStr.AsPCharLen;
      SW := IC.TextExtent(l_RealStr_AsPCharLen);
      if (DX >= SW.P.X) then
      begin
       l_Pos := l_RealStr_AsPCharLen.SLen;
       Inc(Result, l_Pos);
       Dec(DX, SW.P.X);
       l_Continue := true;
      end
      else
      begin
       IC.StartTabs(l_TabInfo, l_OTabInfo);
       l_Pos := IC.Pos2Index(DX, l_RealStr_AsPCharLen);
       IC.FinishTabs(l_TabInfo);
       Inc(Result, l_Pos);
       IC.StartTabs(l_TabInfo, l_OTabInfo);
       Dec(DX, IC.TextExtent(l3PCharLen(l_RealStr_AsPCharLen.S, l_Pos, l_RealStr_AsPCharLen.SCodePage)).P.X);
       IC.FinishTabs(l_TabInfo);
       l_Continue := false;
      end;{DX >= iLW}
      if (aMap.Metrics.ShowSpecial and l3IsHiddenWhiteSpace(l_RealStr.Last)) or
         l3IsWhiteSpace(l_RealStr.Last) then
      begin
       D2S := GetD2S(InLI^.WC, InLI^.LE.P.X);
       if l_Continue OR (l_Pos = l_RealStr_AsPCharLen.SLen) then Dec(DX, D2S);
      end;
      if not l_Continue then Break;
      l_RealStr.Assign(l_NS);
     end;//while not l_RealStr.Empty
    finally
     l3Free(l_NS);
    end;//try..finally
   finally
    l3Free(l_RealStr);
   end;//try..finally
  end;//_TextPosW

  function TextPosW(S: Tl3CustomString; const Font: Il3Font): Long;
  begin
   if S.Empty then
   begin
    Result := 0;
    l_Continue := true;
   end
   else
   begin
    IC.Font := Font;
    if not l3HasWhiteSpace(S.AsPCharLen) then
     Result := _TextPos(S)
    else
     Result := _TextPosW(S);
   end;{F = nil..}
  end;{TextPosW}

var
 S1, S2, S3 : Tl3CustomString;
 l_Pos      : Long;
 SegLst     : Ik2TagList;
 l_ParaFont : Il3Font;

  function SegmentPos(const Seg: Ik2Tag; Index: Long): Bool; 
  var
   l_SegFont : Il3Font;
  begin
   Result := false;
   evTextParaGetLineSegment(aMap.Lines, aText, L, Index, SegLst, S1, S2, S3);
   Inc(l_Pos, TextPos(S1, l_ParaFont));
   if l_Continue then
   begin
    l_SegFont := aMap.InfoForChild(TnevSegmentObject.Make(Seg)).Font[true];
    try
     Inc(l_Pos, TextPos(S2, l_SegFont));
    finally
     l_SegFont := nil;
    end;{try..finally}
    if l_Continue then
    begin
     Inc(l_Pos, TextPos(S3, l_ParaFont));
     Result := true;
    end;
   end;{DX1 > 0..}
  end;//SegmentPos

  function SegmentPosW(const Seg: Ik2Tag; Index: Long): Bool;
  var
   l_SegFont : Il3Font;
  begin
   Result := false;
   evTextParaGetLineSegment(aMap.Lines, aText, L, Index, SegLst, S1, S2, S3);
   Inc(l_Pos, TextPosW(S1, l_ParaFont));
   if l_Continue then
   begin
    l_SegFont := aMap.InfoForChild(TnevSegmentObject.Make(Seg)).Font[true];
    try
     Inc(l_Pos, TextPosW(S2, l_SegFont));
    finally
     l_SegFont := nil;
    end;{try..finally}
    if l_Continue then
    begin
     Inc(l_Pos, TextPosW(S3, l_ParaFont));
     Result := true;
    end;
   end;{DX1 > 0..}
  end;//SegmentPosW

var
 l_TabInfo : Il3TabInfo;
 l_StringCache : InevStringCache;
begin
 Result := 0;
 if (DX <= 0) then Exit;
 if not l3IsNil(PL) then
 begin
  if (IC <> nil) then
  begin
   IC.StartTabs(l_TabInfo, aMap.Obj.TabStops);
   try
    l_StringCache := TnevStringCache.Make;
    try
     S1 := l_StringCache.CheckS(1);
     l_ParaFont := aMap.Font[true];
     try
      SegLst := evTextParaGetLineSegments(aMap, aText, aPara, L);
      if (InLi <> nil) then
      begin
       if SegLst.Empty then
       begin
        S1.AsPCharLen := PL;
        l_Pos := TextPosW(S1, l_ParaFont);
       end//SegLst.Empty
       else
       begin
        S2 := l_StringCache.CheckS(2);
        S3 := l_StringCache.CheckS(3);
        l_Pos := 0;
        SegLst.ForEachF(k2L2TIA(@SegmentPosW));
       end;//SegLst.Empty
      end//InLi <> nil
      else
      begin
       if SegLst.Empty then
       begin
        S1.AsPCharLen := PL;
        l_Pos := TextPos(S1, l_ParaFont);
       end//SegLst.Empty
       else
       begin
        S2 := l_StringCache.CheckS(2);
        S3 := l_StringCache.CheckS(3);
        l_Pos := 0;
        SegLst.ForEachF(k2L2TIA(@SegmentPos));
       end;//SegLst.Empty
      end;//InLi <> nil
     finally
      l_ParaFont := nil;
     end;//try..finally
     Result := l_Pos;
    finally
     l_StringCache := nil;
    end;//try..finally
   finally
    IC.FinishTabs(l_TabInfo);
   end;//try..finally
  end;//IC <> nil
 end;//not l3IsNil(PL)
end;

function evTextParaGetPosByDelta(const aMap    : TnevFormatInfoPrim;
                                 const aText   : Tl3PCharLen;
                                 const aPara   : InevTextPara;
                                 DX            : Long;
                                 const PL      : Tl3PCharLen;
                                 InLI          : PevLineInfo;
                                 L             : Long): Long;
  {-возвращает позицию на смещении DХ с начала строки L}
  overload;
var
 l_CN : Il3InfoCanvas;
begin
 l_CN := aMap.Metrics.InfoCanvas;
 try
  if not l_CN.EQ(nev.CrtIC) then
  begin
   Assert(false, 'Сейчас вроде такого быть не должно');
   l_CN := nev.CrtIC;
  // - подменяем канву, т.к. мерять надо именно по канве вывода, а не по канве форматирования
  end;//not l_CN.EQ(nev.CrtIC)
  l_CN.Lock;
  try
   Result := evTextParaGetPosByDelta(aMap, aText, aPara, l_CN, DX, PL, InLI, L);
  finally
   l_CN.Unlock;
  end;//try..finally
 finally
  l_CN := nil;
 end;//try..finally
end;

function evTextParaGetDeltaByLinePrim(const aMap  : TnevFormatInfoPrim;
                                  const aPara : InevTextPara;
                                  aLine       : Long): Long;
  {-}
var
 l_Result : Integer absolute Result;

 function AddLineDelta(ppLI: PPevLineInfo; Index: Integer): Boolean;
 begin//AddLineDelta
  Inc(l_Result, ppLI^^.LE.P.Y);
  Result := true;
 end;//AddLineDelta

var
 IA : Tl3IteratorAction;
begin
 Result := 0;
 if (aLine > 0) then
 begin
  IA := l3L2IA(@AddLineDelta);
  try
   evTextParaIterateLines(aMap, aPara.Text, aPara, IA, 0, aLine - 1);
  finally
   l3FreeIA(IA);
  end;//try..finally
 end;//aLine > 0
end;

function evTextParaGetDeltaByLine(const aMap  : TnevFormatInfoPrim;
                                  const aPara : InevTextPara;
                                  aLine       : Long): Long;
  {-}
begin
 if (aLine > 0) then
 begin
  Result := evTextParaGetDeltaByLinePrim(aMap, aPara, aLine);
  Inc(Result, aMap.Spacing.Top);
 end//aLine > 0
 else
  Result := 0;
end;

function evTextParaGetPosByDelta(const aMap  : TnevFormatInfoPrim;
                                 const aText : Tl3PCharLen;
                                 const aPara : InevTextPara;
                                 DX          : Long;
                                 L           : Long): Long;
  overload;
  {-возвращает позицию на смещении DХ с начала строки L}
var
 PL  : Tl3PCharLen;
 PW  : TevPixel;
 LW  : TevPixel;
 iPL : Long;
 IT  : TevIndentType;
 LI  : TevLineInfo;
 l_LineCount : Long;
begin
 Result := 0;
 if (aMap <> nil) then
  with aPara do
  begin
   l_LineCount := evTextParaLineCount(aMap);
   if (L > 0) AND (L <= l_LineCount) then
   begin
    PL := evTextParaGetLine(aMap.Lines, aText, L);
    if not l3IsNil(PL) then
    begin
     if (L > 1) then
      iPL := IntA[k2_tiLeftIndent]
     else
      iPL := aMap.FirstIndent;
     // - http://mdp.garant.ru/pages/viewpage.action?pageId=278844809
     // - стоит призадуматься ! ! !
     IT := TevIndentType(IntA[k2_tiJustification]);
     case IT of
      ev_itWidth:
       if (L = l_LineCount) then
        IT := ev_itLeft;                      
      ev_itPreformatted:
       IT := ev_itLeft;
     end;//case IT
     if Owner.InheritsFrom(k2_idTableCell) then
      Inc(iPl, evCalcDecimalTabIndent(aPara, aText, IT, l_LineCount, aMap.Metrics.InfoCanvas));
     PW := aMap.Width - iPL;
     LI.WC := evTextParaGetLineWordCount(aMap.Lines, L);
     if (aMap.Lines <> nil) then
     begin
      if (aMap.Lines.AsObject Is TevLineArray) then
       LW := Min(TevLineArray(aMap.Lines.AsObject).LineWidth[L], PW)
      else
       LW := Min((aMap.Lines.AsObject As Tl3SingleLineInfo).Width, PW);
     end//aMap.rMap.IsValid
     else
      LW := PW;
     LI.LE.P.X := PW - LW;
     Dec(DX, iPL);
     case IT of
      ev_itRight  : Dec(DX, LI.LE.P.X);
      ev_itCenter : Dec(DX, LI.LE.P.X div 2);
     end;//case IT..
     if (DX <= 0) then
      Exit
     else
     begin
      if (IT = ev_itWidth) then
      begin
       if (DX >= PW) then
       begin
        Result := PL.SLen;
        {$IfDef Nemesis}
        if (PL.SLen > 0) and PL.IsLast(cc_SoftEnter) then
         Dec(Result);
        {$EndIf Nemesis}
        Exit;
       end;//DX >= PW
      end//IT = ev_itWidth
      else
      if (DX >= LW) then
      begin
       Result := PL.SLen;
       {$IfDef Nemesis}
       if (PL.SLen > 0) and PL.IsLast(cc_SoftEnter) then
        Dec(Result);
       {$EndIf Nemesis}
       Exit;
      end;//DX >= LW
     end;//DX <= 0
     if (IT = ev_itWidth) then
      Result := evTextParaGetPosByDelta(aMap,
                                        aText,
                                        aPara,
                                        DX, PL,
                                        @LI, {-InLI}
                                        L)
     else
      Result := evTextParaGetPosByDelta(aMap,
                                        aText,
                                        aPara,
                                        DX, PL,
                                        nil, {-InLI}
                                        L);
    end;//not l3IsNil(PL)
   end;//L > 0..}
  end;//with aPara
end;

function  evTextParaGetPosByLine(const aMap  : InevLines;
                                 const aText : Tl3PCharLen;
                                 var L       : Long): Long;
  {-смещение строки L c начала параграфа}
var
 PL : Tl3PCharLen;
begin
 if (L <= 1) then
  Result := 0
 else
 begin
  if l3IsNil(aText) then
   Result := 0
  else
  begin
   PL := evTextParaGetLine(aMap, aText, L);
   if (PL.S = nil) then
    Result := 0
   else
    Result := PL.Diff(aText);
  end;//l3IsNil(aText)
 end;//L <= 1
end;

procedure evTextParaSetFontParamPrim(const aPara   : InevTextPara;
                                     P             : Long;
                                     const Value   : Ik2Tag;
                                     const Context : InevOp);
  {-}
var
 l_Segments : Ik2Tag;
 l_Layer    : Ik2Tag;
 l_Index    : Long;
 l_Prop     : Tk2CustomPropertyPrim;
begin
 with aPara do
 begin
  l_Prop := TagType.Prop[P];
  if (l_Prop <> nil) AND not l_Prop.ReadOnly then
  begin
   AttrW[l_Prop.TagIndex, Context] := Value;
   {$IFNDEF Nemesis}
   if (Context <> nil) then
    Context.MarkModified(aPara);
   {$ENDIF Nemesis} 
   if (P = k2_tiStyle) OR
      ((P = k2_tiJustification) AND (Value.AsLong = Ord(ev_itPreformatted))) then
   begin
    l_Segments := Attr[k2_tiSegments];
    if l_Segments.IsValid then
    begin
     l_Layer := l_Segments.rAtomEx([k2_tiChildren, k2_tiHandle, ev_slView], @l_Index);
     if l_Layer.IsValid then
     begin
      l_Segments.DeleteChild(l_Index, Context);
      evSegments_ClearSuper(aPara, Context);
      if (l_Segments.ChildrenCount <= 0) then
       aPara.AttrW[k2_tiSegments, Context] := nil;
      Exit;
      // - чтобы не попасть в Invalidate 
     end;//l_Layer.IsValid
    end;//l_Segments.IsValid
   end;//P = k2_tiStyle
   Invalidate([nev_spExtent]);
  end//l_Prop <> nil..
  else
  begin
   cAtom(k2_tiFont, Context).AttrW[P, Context] := Value;
   if (Context <> nil) then
    Context.MarkModified(aPara);
  end;//l_Prop <> nil..
 end;//with aPara
end;

procedure evTextParaSetFontParam(const aPara     : InevTextPara;
                                 anAtom          : Long;
                                 const aValue    : Ik2Tag;
                                 const Container : InevOp = nil);
  {-}
var
 l_S    : Tl3PCharLen;
 l_Text : Tl3CustomString;
begin
 l_S := aPara.Text;
 if l3IsNil(l_S) then
  evTextParaSetFontParamPrim(aPara, anAtom, aValue, Container)
 else
 begin
  evTextParaSetFontParamPrim(aPara, anAtom, aValue, Container);
  l_Text := aPara.Attr[k2_tiText].AsObject As Tl3CustomString;
  OevChangeCodePage.ToUndo(Container, l_S.SCodePage, l_Text.CodePage, l_Text);
 end;//l_S.Empty
end;

function evTextParaLineCount(const aMap: TnevFormatInfoPrim): Integer;
  {-}
begin
 if (aMap <> nil) AND (aMap.Lines <> nil) then
  Result := aMap.Lines.Count
 else
  Result := 1;
end;

function evTextParaViewBounds(const aMap  : InevMap;
                              const aText : Tl3PCharLen;
                              const aPara : InevTextPara;
                              aPosInLine  : Long;
                              aLine       : Long): TnevRect;
  {-}
var
 l_FI : TInevFormatInfoRet;
begin
 if (aMap = nil) or (aLine < 1) then
  Result := nevRect0
 else
  begin
   l_FI := aMap.FI;
   Result.Top := aMap.Bounds.Top + evTextParaGetDeltaByLine(l_FI, aPara, aLine - 1);
   Result.Bottom := aMap.Bounds.Top + evTextParaGetDeltaByLine(l_FI, aPara, aLine);
   Result.Left := aMap.Bounds.Left + evTextParaGetDeltaByPos(l_FI, aText, aPara, aPosInLine, aLine);
   Result.Right := Result.Left;
  end; 
end;

end.

