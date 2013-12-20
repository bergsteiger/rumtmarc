unit evStdInt;
{* Реализация "фабрик интерфейсов" для стандартных типов тегов библиотеки "Эверест".}

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: evStdInt -      }
{ Начат: 03.12.1998 20:01 }
{ $Id: evStdInt.pas,v 1.229 2012/12/21 08:11:21 dinishev Exp $ }

// $Log: evStdInt.pas,v $
// Revision 1.229  2012/12/21 08:11:21  dinishev
// {Requestlink:271188165}
//
// Revision 1.228  2012/10/29 16:56:55  lulin
// - вычищаем поддержку ветки редактора.
//
// Revision 1.227  2012/04/24 09:49:13  dinishev
// {Requestlink:360025064}
//
// Revision 1.226  2012/04/20 14:56:33  lulin
// {RequestLink:283610570}
//
// Revision 1.225  2012/01/24 15:29:00  dinishev
// {Requestlink:329649989}
//
// Revision 1.224  2011/12/02 12:24:31  dinishev
// {Requestlink:311427092}
//
// Revision 1.223  2011/11/29 13:46:26  dinishev
// {Requestlink:109904163}
//
// Revision 1.222  2011/09/15 16:23:21  lulin
// {RequestLink:278824896}.
//
// Revision 1.221  2011/09/14 18:01:51  lulin
// {RequestLink:278824896}.
//
// Revision 1.220  2011/09/12 17:39:51  lulin
// {RequestLink:278839709}.
//
// Revision 1.219  2011/09/01 08:07:11  lulin
// {RequestLink:280006084}.
//
// Revision 1.218  2011/08/25 20:16:05  lulin
// {RequestLink:279774244}.
//
// Revision 1.217  2011/07/08 17:05:07  lulin
// {RequestLink:228688745}.
//
// Revision 1.216  2011/07/06 11:05:51  lulin
// {RequestLink:254944102}.
//
// Revision 1.215  2011/05/25 11:28:31  dinishev
// [$265392359]
//
// Revision 1.214  2011/03/22 15:19:13  lulin
// {RequestLink:255983289}.
//
// Revision 1.213  2011/03/21 17:32:39  lulin
// {RequestLink:257822084}.
//
// Revision 1.212  2011/02/22 19:41:04  lulin
// {RequestLink:182157315}.
//
// Revision 1.211  2011/02/18 12:11:56  lulin
// - расширяем заготовочку для Валентина.
//
// Revision 1.210  2011/02/15 15:50:52  lulin
// {RequestLink:231670346}.]
// - прибираемся за собой.
//
// Revision 1.209  2010/12/10 12:31:25  lulin
// - bug fix: не собирались с директивой _nsTool.
//
// Revision 1.208  2010/03/02 10:23:48  lulin
// {RequestLink:193823544}.
// - bug fix: не собиралась библиотека конвертации.
//
// Revision 1.207  2009/12/08 11:18:08  dinishev
// [$171541851]. Про TevBreakParaCursor забыл.
//
// Revision 1.206  2009/07/23 13:42:11  lulin
// - переносим процессор операций туда куда надо.
//
// Revision 1.205  2009/07/20 12:49:31  lulin
// - подготавливаемся к переносу изменений в ветку.
//
// Revision 1.204  2009/07/13 12:31:37  lulin
// {RequestLink:141264340}. №23ac.
//
// Revision 1.203  2009/07/11 17:11:05  lulin
// {RequestLink:141264340}. №19.
//
// Revision 1.202  2009/07/11 15:55:09  lulin
// {RequestLink:141264340}. №22.
//
// Revision 1.201  2009/07/10 15:04:43  lulin
// - избавляемся от лишнего дёрганья счётчиков ссылок.
//
// Revision 1.200  2009/07/06 13:32:06  lulin
// - возвращаемся от интерфейсов к объектам.
//
// Revision 1.199  2009/06/29 12:12:42  lulin
// {RequestLink:154075236}. №4.
//
// Revision 1.198  2009/06/25 12:57:30  lulin
// - вычищаем ненужный контекст.
//
// Revision 1.197  2009/06/19 12:54:55  lulin
// - переносим TnevAnchor на модель.
//
// Revision 1.196  2009/06/04 11:09:54  lulin
// - переносим классы на модель.
//
// Revision 1.195  2009/06/04 10:34:10  lulin
// - удаляем устаревший класс.
//
// Revision 1.194  2009/06/03 17:46:22  lulin
// [$148572917].
//
// Revision 1.193  2009/06/02 12:26:32  lulin
// [$148572872].
//
// Revision 1.192  2009/05/15 14:20:47  dinishev
// Вычищаем не нужный интерфейс
//
// Revision 1.191  2009/04/28 09:56:29  dinishev
// <K> : 142610284
//
// Revision 1.190  2009/04/15 11:14:05  lulin
// [$143396720]. Убираем лишний параметр из конструкторов и фабричных методов.
//
// Revision 1.189  2009/04/14 18:11:55  lulin
// [$143396720]. Подготовительная работа.
//
// Revision 1.188  2009/04/13 17:27:50  lulin
// [$142613919]. Переносим базовый курсор на модель.
//
// Revision 1.187  2009/04/13 13:43:19  lulin
// [$142613919]. Вычищаем ненужное местное свойство.
//
// Revision 1.186  2009/04/13 12:32:49  lulin
// [$142613919].
//
// Revision 1.185  2009/04/10 06:12:27  lulin
// - чистка кода.
//
// Revision 1.184  2009/04/07 16:18:31  lulin
// [$140837386]. Чистка кода.
//
// Revision 1.183  2009/04/06 17:31:32  lulin
// [$140837386]. №12.
//
// Revision 1.182  2009/04/06 15:46:15  lulin
// [$140837386]. Убираем использование лишних промежуточных примесей.
//
// Revision 1.181  2009/04/01 13:04:34  lulin
// [$141262980]. Убираем ненужное наследование.
//
// Revision 1.180  2009/03/31 16:15:59  lulin
// [$141262956]. Основательно перетряхаем базовые интерфейсы вкладывая их друг в друга.
//
// Revision 1.179  2009/03/31 12:04:36  lulin
// [$140286997].
//
// Revision 1.178  2008/12/12 15:34:20  lulin
// - <K>: 129762414.
//
// Revision 1.177  2008/10/15 13:03:23  lulin
// - <K>: 121149970.
//
// Revision 1.176  2008/10/09 13:37:34  lulin
// - <K>: 121145547.
//
// Revision 1.175  2008/08/29 11:12:36  lulin
// - <K>: 111739552.
//
// Revision 1.174  2008/07/03 13:23:21  lulin
// - <K>: 87589015.
//
// Revision 1.173  2008/06/17 21:26:58  lulin
// - bug fix: не собирался Архивариус.
//
// Revision 1.172  2008/06/09 11:45:47  lulin
// - <K>: 93264011.
//
// Revision 1.171  2008/04/29 16:56:52  lulin
// - работы по <K>: 89106312.
//
// Revision 1.170  2008/04/23 18:36:37  lulin
// - <K>: 89106529.
//
// Revision 1.169  2008/04/23 14:20:07  lulin
// - <K>: 89106322.
//
// Revision 1.168  2008/04/17 13:06:22  lulin
// - cleanup.
//
// Revision 1.167  2008/04/17 12:58:28  lulin
// - избавились от приведения интерфейсов.
//
// Revision 1.166  2008/04/17 11:31:12  lulin
// - <K>: 89103160.
//
// Revision 1.165  2008/04/16 18:10:10  lulin
// - <K>: 89097007.
//
// Revision 1.164  2008/04/16 07:34:53  lulin
// - cleanup.
//
// Revision 1.163  2008/04/09 07:34:59  lulin
// - передаём вью в рамках <K>: 89096854.
//
// Revision 1.162  2008/04/08 18:02:15  lulin
// - передаём вью в рамках <K>: 89096854.
//
// Revision 1.161  2008/04/08 13:59:23  lulin
// - <K>: 89096920.
//
// Revision 1.160  2008/04/02 14:22:01  lulin
// - cleanup.
//
// Revision 1.159  2008/02/07 19:12:55  lulin
// - избавляемся от излишне универсальных методов базовых списков.
//
// Revision 1.158  2007/12/25 12:55:52  lulin
// - удален ненужный модуль.
//
// Revision 1.157  2007/12/24 15:25:22  lulin
// - удалены ненужные файлы.
//
// Revision 1.156  2007/12/04 12:47:04  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.147.4.94  2007/11/29 11:34:29  dinishev
// Bug fix: ошметки старой директивы
//
// Revision 1.147.4.93  2007/11/28 15:30:20  dinishev
// Используем инструменты для работы с таблицами
//
// Revision 1.147.4.92  2007/09/19 11:55:44  lulin
// - cleanup.
//
// Revision 1.147.4.91  2007/09/14 13:26:06  lulin
// - объединил с веткой B_Tag_Clean.
//
// Revision 1.147.4.90.2.2  2007/09/12 20:23:49  lulin
// - возвращаем булевский результат, а не какой-то там код ошибки, который нафиг никому не нужен.
//
// Revision 1.147.4.90.2.1  2007/09/12 20:13:07  lulin
// - cleanup.
//
// Revision 1.147.4.90  2007/09/11 18:49:58  lulin
// - удален ненужный параметр.
//
// Revision 1.147.4.89  2007/09/03 10:46:44  lulin
// - уменьшаем число параметров.
//
// Revision 1.147.4.88  2007/07/16 11:57:06  lulin
// - починил непереход в КЗ по Tab (<K>-17760801).
//
// Revision 1.147.4.87  2007/06/23 13:54:15  lulin
// - cleanup.
//
// Revision 1.147.4.86  2007/06/22 20:18:32  lulin
// - cleanup.
//
// Revision 1.147.4.85  2007/06/22 19:24:51  lulin
// - cleanup.
//
// Revision 1.147.4.84  2007/06/22 18:59:54  lulin
// - cleanup.
//
// Revision 1.147.4.83  2007/06/19 08:42:27  lulin
// - заполненность поля с датой проверяем особенным образом (<K>-20218207).
//
// Revision 1.147.4.82  2007/06/09 12:31:49  lulin
// - восстановлена загрузка нод по умолчанию (<K>-14516759).
//
// Revision 1.147.4.81  2007/06/08 15:06:07  lulin
// - реквизит теперь сам загружает значение ноды по-умолчанию, а не через утилитный класс. Контролу текст и нода пока не передаются. В рамках <K>-14516759.
//
// Revision 1.147.4.80  2007/06/08 12:15:14  lulin
// - избавился от прямого обращения к тегу с контролом модели (<K>-17335138).
//
// Revision 1.147.4.79  2007/05/21 13:19:01  lulin
// - cleanup.
//
// Revision 1.147.4.78  2007/01/05 14:37:19  lulin
// - cleanup.
//
// Revision 1.147.4.77  2006/11/24 12:10:38  lulin
// - new behavior: не скроллируем разрывы построчно.
//
// Revision 1.147.4.76  2006/11/21 12:32:21  lulin
// - cleanup.
//
// Revision 1.147.4.75  2006/11/10 17:15:55  lulin
// - объединил с веткой.
//
// Revision 1.147.4.74  2006/11/03 11:00:06  lulin
// - объединил с веткой 6.4.
//
// Revision 1.147.4.73.2.6  2006/10/26 11:24:12  lulin
// - избавляемся от лишних преобразований типов.
//
// Revision 1.147.4.73.2.5  2006/10/24 11:17:16  lulin
// - bug fix: могли получить неинициализированный курсор.
//
// Revision 1.147.4.73.2.4  2006/10/23 11:58:53  lulin
// - убран ненужный интерфейс.
//
// Revision 1.147.4.73.2.3  2006/10/18 14:08:09  lulin
// - bug fix: не компилировалась библиотека.
//
// Revision 1.147.4.73.2.2  2006/10/18 14:02:40  lulin
// - избавляемся от хождения за процессором операций через третьи руки.
//
// Revision 1.147.4.73.2.1  2006/10/13 11:15:43  lulin
// - поборолся с неправильной подгонкой каретки по-горизонтали.
//
// Revision 1.147.4.73  2006/10/10 17:42:45  lulin
// - разносим модифицируемый и немодифицируемый якоря.
//
// Revision 1.147.4.72  2006/10/03 13:56:23  lulin
// - выделяем альтернативный интерфейс получения "горячей точки".
//
// Revision 1.147.4.71  2006/09/11 13:57:02  oman
// - fix: Более правильная реализация IevCommonControl
//
// Revision 1.147.4.70  2006/08/02 10:51:53  lulin
// - объединил с веткой в которой боролся со скроллингом.
//
// Revision 1.147.4.69.2.1  2006/08/01 15:29:43  lulin
// - имя свойства убрано из комментария.
//
// Revision 1.147.4.69  2006/07/14 12:46:37  lulin
// - bug fix: более корректно учитываем вертикальное выравнивание ячейки.
//
// Revision 1.147.4.68  2006/05/26 14:06:10  lulin
// - bug fix: при выделении текста в комментариях текст из буфера не вставлялся - только выделение удалялось (CQ OIT5-21034).
//
// Revision 1.147.4.67  2006/03/27 09:13:34  lulin
// - bug fix: AV при старте Прайма, т.к. не возвращался результат.
//
// Revision 1.147.4.66  2006/03/24 15:00:25  dinishev
// Вставка нескольких строк из буфера в многострочное поле.
//
// Revision 1.147.4.65  2006/03/13 16:12:54  dinishev
// Многострочное поле
//
// Revision 1.147.4.64  2006/01/30 12:41:17  lulin
// - более простым способом получаем цвет рамки ячейки SBS.
//
// Revision 1.147.4.63  2006/01/30 09:57:29  lulin
// - убран ненужный параметр.
//
// Revision 1.147.4.62  2006/01/30 09:12:33  lulin
// - cleanup.
//
// Revision 1.147.4.61  2006/01/24 09:45:37  lulin
// - форматтер текстового параграфа переехал из ветки в HEAD.
//
// Revision 1.147.4.60  2006/01/18 09:25:30  lulin
// - cleanup: убран ненужный метод.
//
// Revision 1.147.4.59  2005/12/08 09:18:18  lulin
// - new behavior: прячем комментарии пользователя без необходимости полного переформатирования комментариев.
//
// Revision 1.147.4.58  2005/11/25 10:47:27  lulin
// - bug fix: оказывается недочинил удаление блока из индекса.
//
// Revision 1.147.4.57  2005/11/10 08:42:19  lulin
// - убран устаревший метод получения координат курсора.
//
// Revision 1.147.4.56  2005/11/09 16:20:07  dinishev
// По другому обрабатываем табуляцию (запрет на вставку лишних строк)
//
// Revision 1.147.4.55  2005/11/09 15:28:24  lulin
// - базовые интерфейсы перенесены в правильный модуль.
//
// Revision 1.147.4.54  2005/11/04 10:49:17  lulin
// - cleanup.
//
// Revision 1.147.4.53  2005/10/26 06:35:39  lulin
// - для определения первого параграфа на следующей странице используем коллекцию отрисованных параграфов.
//
// Revision 1.147.4.52  2005/10/24 06:15:03  lulin
// - выделен класс якорей для параграфов, у которых высота не зависит от ширины (картинки, разрывы страниц и разделов, прочие элементы оформления).
//
// Revision 1.147.4.51  2005/10/24 05:48:51  lulin
// - new behavior: теперь можно "построчно" прокручивать параграфы с картинками.
//
// Revision 1.147.4.50  2005/10/05 11:06:23  lulin
// - коррекция отступов для блоков перенесена в более правильное место.
//
// Revision 1.147.4.49  2005/09/26 05:58:43  lulin
// - общие интерфейсы перенесены в общий модуль.
//
// Revision 1.147.4.48  2005/09/23 12:27:38  lulin
// - вытаскиваем общие интерфейсы в общий каталог.
//
// Revision 1.147.4.47  2005/09/16 06:53:52  lulin
// - bug fix: при изменении размеров КЗ не всегда правильно переформатировались ширины контролов.
//
// Revision 1.147.4.46  2005/09/07 09:05:11  dinishev
// Remove interface InevInputListner
//
// Revision 1.147.4.45  2005/08/31 16:07:16  lulin
// - bug fix: был AV при отсутствии _Listner'а.
//
// Revision 1.147.4.44  2005/08/30 15:03:05  lulin
// - new behavior: в контроле выделяем только текст, но не сам контрол.
//
// Revision 1.147.4.43  2005/08/30 12:31:29  lulin
// - cleanup: удалены ненужные интерфейсы, связанные с сохранением форматирования.
//
// Revision 1.147.4.42  2005/08/25 14:12:52  lulin
// - new behavior: для КЗ не выводим Hint'ы и прочее для строк и ячеек таблицы с контролами.
//
// Revision 1.147.4.41  2005/08/25 14:04:00  dinishev
// Bug fix: не работала передача событий от редактора к прослойке.
//
// Revision 1.147.4.40  2005/08/23 15:41:52  lulin
// - задел на "резиновость" карточки запроса.
//
// Revision 1.147.4.39  2005/08/23 14:50:19  dinishev
// Bug fix: AV при работе с кнопками с помощью клавиатуры.
//
// Revision 1.147.4.38  2005/08/23 13:31:07  dinishev
// Нотификация об изменении текста в поле редактора
//
// Revision 1.147.4.37  2005/08/11 12:47:41  dinishev
// Отказываемся от интерфейсов evDropControl
//
// Revision 1.147.4.36  2005/07/27 19:25:36  lulin
// - избавился от глобальных объектов для КЗ - теперь с каждым редактором связана своя обвязка для карточки запроса.
//
// Revision 1.147.4.35  2005/07/27 16:07:04  lulin
// - переупорядочил наименование и расположение интерфейсов для КЗ.
//
// Revision 1.147.4.34  2005/07/26 12:10:36  lulin
// - bug fix: в случае отсутствия интерфейса возвращался неправильный результат.
//
// Revision 1.147.4.33  2005/07/22 14:56:05  dinishev
// Новые интерфейсы
//
// Revision 1.147.4.32  2005/07/21 07:54:32  lulin
// - убран промежуточный интерфейс и упрощено использование функции поиска/замены.
//
// Revision 1.147.4.31  2005/07/20 17:43:34  lulin
// - класс переименован в соответствии с основным интерфейсом, который он реализует.
//
// Revision 1.147.4.30  2005/07/18 17:37:43  lulin
// - упорядочена интерфейсная модель редактора - для удобства чтения и эффективности использования, а также для избавления от посылки сообщений.
//
// Revision 1.147.4.29  2005/07/15 15:58:28  lulin
// - удален устаревший интерфейс.
//
// Revision 1.147.4.28  2005/07/11 06:07:06  lulin
// - упорядочены названия интерфейсов.
//
// Revision 1.147.4.27  2005/07/08 10:47:23  lulin
// - new behavior: курсор теперь корректно отдает экранные координаты, если не был ими инициализирован, но привязан к View.
//
// Revision 1.147.4.26  2005/07/07 16:13:49  lulin
// - переименовал модуль - чтобы название больше соответствовало действительности.
//
// Revision 1.147.4.25  2005/07/07 15:38:05  lulin
// - InevViewPoint теперь не наследуется от _InevAnchor.
//
// Revision 1.147.4.24  2005/07/07 13:58:20  lulin
// - спрятана возможность получения от View координат якоря в точках.
//
// Revision 1.147.4.23  2005/07/07 13:09:28  lulin
// - упорядочены названия интерфейсов.
//
// Revision 1.147.4.22  2005/06/20 15:42:10  lulin
// - cleanup: избавляемся от абсолютных координат.
//
// Revision 1.147.4.21  2005/06/16 14:11:29  lulin
// - cleanup: отдельно стоящие процедуры перенесены на интерфейсы.
//
// Revision 1.147.4.20  2005/06/16 11:24:12  lulin
// - убрана косвенная типизация параграфов (при помощи QI и QT).
//
// Revision 1.147.4.19  2005/06/15 13:06:00  lulin
// - убрана инициализация блоков выделения в явном виде.
//
// Revision 1.147.4.18  2005/06/15 11:22:53  lulin
// - new interface: InevSelectionFactory.
//
// Revision 1.147.4.17  2005/06/15 10:11:32  lulin
// - new interface: InevPointFactory.
//
// Revision 1.147.4.16  2005/06/14 10:01:31  lulin
// - избавился от передачи безликого интерфейса (теперь передается View).
//
// Revision 1.147.4.15  2005/06/11 11:13:20  lulin
// - избавился от использования "устаревших" интерфейсов.
//
// Revision 1.147.4.14  2005/06/11 08:55:38  lulin
// - в какой-то мере восстановлена работоспособность HotSpot'ов.
//
// Revision 1.147.4.13  2005/06/07 13:43:47  lulin
// - удален ненужный модуль.
//
// Revision 1.147.4.12  2005/06/07 11:26:03  lulin
// - cleanup: избавляемся от ссылки на нетипизированного Owner'а.
//
// Revision 1.147.4.11  2005/06/07 10:42:57  lulin
// - cleanup: избавляемся от ссылки на нетипизированного Owner'а.
//
// Revision 1.147.4.10  2005/06/06 15:36:09  lulin
// - продолжаем бороться со знанием о природе реализации курсоров.
//
// Revision 1.147.4.9  2005/06/03 12:08:19  lulin
// - cleanup: убраны ненужные зависимости.
//
// Revision 1.147.4.8  2005/06/03 10:14:45  lulin
// - cleanup: убран ненужный результат функции.
//
// Revision 1.147.4.7  2005/06/02 12:33:08  lulin
// - вчерне заменил прямое создание блока выделения на его получение от фабрики.
//
// Revision 1.147.4.6  2005/06/02 06:15:55  lulin
// - cleanup.
//
// Revision 1.147.4.5  2005/06/01 14:34:41  lulin
// - new unit: evLocation.
//
// Revision 1.147.4.4  2005/06/01 14:02:17  lulin
// - new unit: evCursor.
//
// Revision 1.147.4.3  2005/05/20 11:27:36  lulin
// - класс TevBlock вынесен в отдельный модуль.
//
// Revision 1.147.4.2  2005/05/19 14:52:38  lulin
// - rename unit: evBlock -> evCursorPair.
//
// Revision 1.147.4.1  2005/05/18 12:42:47  lulin
// - отвел новую ветку.
//
// Revision 1.142.2.12  2005/05/18 12:32:09  lulin
// - очередной раз объединил ветку с HEAD.
//
// Revision 1.142.2.11  2005/04/28 09:18:30  lulin
// - объединил с веткой B_Tag_Box.
//
// Revision 1.142.2.10  2005/04/12 14:14:33  lulin
// - new interface: InevAnchorEx.
//
// Revision 1.142.2.9  2005/04/12 11:55:27  lulin
// - new units: evLeafParaAnchor, evTextParaAnchor, evParaListAnchor.
//
// Revision 1.142.2.8  2005/04/12 11:04:33  lulin
// - new behavior: инициализируем Top при подключении View к контролу.
//
// Revision 1.142.2.7  2005/04/11 15:25:45  lulin
// - new interface: IevScrollView.
//
// Revision 1.142.2.6  2005/04/10 15:20:04  lulin
// - new unit: nevDocument.
//
// Revision 1.142.2.5  2005/04/10 13:01:01  lulin
// - new unit: nevTable.
//
// Revision 1.142.2.4  2005/04/09 11:03:47  lulin
// - new property: InevMetrics._FontTool.
//
// Revision 1.142.2.3  2005/04/09 09:50:50  lulin
// - new interface: InevMetrics.
//
// Revision 1.142.2.2  2005/04/08 18:10:36  lulin
// - первый эксперимент с отключением форматирования всего документа. Не впечатляет, но определенные успехи есть.
//
// Revision 1.142.2.1  2005/04/08 13:35:05  lulin
// - _Processor стал обязательным параметром.
//
// Revision 1.144.2.5  2005/04/25 16:57:30  lulin
// - уменьшаем глубину поиска подходящего инструмента.
//
// Revision 1.144.2.4  2005/04/25 16:16:07  lulin
// - cleanup.
//
// Revision 1.144.2.3  2005/04/25 15:58:06  lulin
// - нашел еще один QU - приводящий к потере производительности.
//
// Revision 1.144.2.2  2005/04/23 16:07:25  lulin
// - удален временный интерфейс Ik2TagBox.
//
// Revision 1.144.2.1  2005/04/21 14:46:55  lulin
// - избавляемся от обертки над тегами - теперь объекты посредством шаблонов сами реализуют интерфейс Ik2Tag.
//
// Revision 1.144  2005/04/21 05:11:38  lulin
// - используем _Box (пока из-за постоянных преобразований туда и обратно - по скорости стало только хуже).
//
// Revision 1.143  2005/04/20 17:40:50  lulin
// - избавился от промежуточного интерфейса Ik2TagBoxQT.
//
// Revision 1.147  2005/05/14 09:43:31  lulin
// - bug fix: неправильно форматировались таблицы в комментариях.
//
// Revision 1.146  2005/05/13 13:49:57  lulin
// - new behavior: форматируем неформатированные параграфы при отрисовке - в результате этого починилась отрисовка после поиска (CQ OIT5-13427).
//
// Revision 1.145  2005/04/28 15:03:38  lulin
// - переложил ветку B_Tag_Box в HEAD.
//
// Revision 1.144.2.5  2005/04/25 16:57:30  lulin
// - уменьшаем глубину поиска подходящего инструмента.
//
// Revision 1.144.2.4  2005/04/25 16:16:07  lulin
// - cleanup.
//
// Revision 1.144.2.3  2005/04/25 15:58:06  lulin
// - нашел еще один QU - приводящий к потере производительности.
//
// Revision 1.144.2.2  2005/04/23 16:07:25  lulin
// - удален временный интерфейс Ik2TagBox.
//
// Revision 1.144.2.1  2005/04/21 14:46:55  lulin
// - избавляемся от обертки над тегами - теперь объекты посредством шаблонов сами реализуют интерфейс Ik2Tag.
//
// Revision 1.144  2005/04/21 05:11:38  lulin
// - используем _Box (пока из-за постоянных преобразований туда и обратно - по скорости стало только хуже).
//
// Revision 1.143  2005/04/20 17:40:50  lulin
// - избавился от промежуточного интерфейса Ik2TagBoxQT.
//
// Revision 1.142  2005/04/07 16:20:41  lulin
// - new method: Ik2TagBox._MakeInterface.
//
// Revision 1.141  2005/04/07 14:32:49  lulin
// - remove proc: evGetTopPara.
//
// Revision 1.140  2005/04/06 11:50:20  lulin
// - new interface: _InevDrawingShape.
//
// Revision 1.139  2005/04/06 08:47:17  lulin
// - связываем инструменты в цепочки для более быстрого получения интересующего инструмента.
//
// Revision 1.138  2005/04/05 09:55:27  lulin
// - используем IevShape.
//
// Revision 1.137  2005/04/05 07:36:04  lulin
// - new interface: InevScreenPoint.
//
// Revision 1.136  2005/04/04 15:03:21  lulin
// - cleanup.
//
// Revision 1.135  2005/04/04 12:03:18  lulin
// - используем шаблоны для реализации иструментов для параграфов конкретных типов.
//
// Revision 1.134  2005/04/04 10:35:56  lulin
// - new interface: InevLeafPara.
//
// Revision 1.133  2005/04/04 09:06:43  lulin
// - создаем инструмент _InevPara "правильного" типа.
//
// Revision 1.132  2005/04/04 08:45:10  lulin
// - форматтеры параграфов теперь полноценные _Ik2TagTool.
//
// Revision 1.131  2005/04/04 06:43:57  lulin
// - в связи с появлением механизма событий и фасада библиотеки K-2, удалены глобальные "заплатки" связанные с созданием/уничтожением таблицы тегов.
//
// Revision 1.130  2005/04/01 16:18:39  lulin
// - new behavior: теперь рассылаем всем объектам извещение о том, что таблица тегов сейчас уничтожится.
//
// Revision 1.129  2005/04/01 14:35:22  lulin
// - переходим от перебора курсоров к посылке сообщений.
//
// Revision 1.128  2005/04/01 13:31:59  lulin
// - переименовал интерфейс - кандидат на удаление.
//
// Revision 1.127  2005/04/01 13:21:57  lulin
// - добавлены интерфейсы _InevPoint*.
//
// Revision 1.126  2005/04/01 09:09:25  lulin
// - new unit: nevTextPara.
//
// Revision 1.125  2005/03/31 15:47:23  lulin
// - new methods: _InevPara._LockFormatting, UnlockFormatting, Unformat.
//
// Revision 1.124  2005/03/31 12:58:43  lulin
// - new method: TevDeadCursor.Make.
//
// Revision 1.123  2005/03/31 12:50:17  lulin
// - new method: _TevTextParaPainter._MakeFontTool.
//
// Revision 1.122  2005/03/31 12:43:31  lulin
// - new method: _TevParaPainter.Make.
//
// Revision 1.121  2005/03/31 12:34:12  lulin
// - new unit: nevParaList.
//
// Revision 1.120  2005/03/31 11:03:27  lulin
// - добавлен параметр - Processor.
//
// Revision 1.119  2005/03/31 10:30:46  lulin
// - remove unit: evBase_TLB.
//
// Revision 1.118  2005/03/31 09:15:28  lulin
// - new unit: nevTools.
//
// Revision 1.117  2005/03/30 17:11:31  lulin
// - в процедуре печати/отрисовки убран ненужный параметр (aBottomCursor).
//
// Revision 1.116  2005/03/30 15:56:23  lulin
// - _TevLocation теперь наследуется от Tk2Tool - базового класса для инструментов тегов.
//
// Revision 1.115  2005/03/30 15:12:19  lulin
// - в _QueryTool теперь подаем тег для которого надо сделать инструмент.
//
// Revision 1.114  2005/03/28 11:32:08  lulin
// - интерфейсы переехали в "правильный" модуль.
//
// Revision 1.113  2005/03/25 11:20:34  lulin
// - cleanup.
//
// Revision 1.112  2005/03/22 08:52:32  lulin
// - bug fix: не компилировалось.
//
// Revision 1.111  2005/03/21 16:28:16  lulin
// - переходим к Ik2Tag.
//
// Revision 1.110  2005/03/16 12:16:52  lulin
// - переходим к Ik2Tag.
//
// Revision 1.109  2005/03/16 09:20:37  lulin
// - переходим к Ik2Tag.
//
// Revision 1.108  2005/03/10 17:44:02  lulin
// - от Tk2AtomR переходим к Ik2Tag.
//
// Revision 1.107  2005/02/24 13:04:52  lulin
// - переходим от объектов к интерфейсам.
//
// Revision 1.106  2005/02/11 08:18:28  dinishev
// Использование нового класса курсора
//
// Revision 1.105  2005/01/26 16:19:15  lulin
// - bug fix: поправил "кривой" коммит от Димы Инишева.
//
// Revision 1.104  2005/01/26 15:49:43  dinishev
// Новый интерфейс IevCommonControl
//
// Revision 1.103  2005/01/24 16:45:39  dinishev
// Добавлена поддержка k2_idControlsBlock
//
// Revision 1.102  2005/01/18 11:39:00  dinishev
// Редактор теперь не реагирует на пустуе поле как на ошибку.
//
// Revision 1.101  2005/01/11 13:04:10  lulin
// - rename interface: _Il3String -> Il3WordsSeq.
//
// Revision 1.100  2004/12/15 16:28:45  dinishev
// передача данных в выпадающий календарь
//
// Revision 1.99  2004/12/14 16:14:18  lulin
// - new interface: IevBaseDataObject.
//
// Revision 1.98  2004/12/11 14:40:22  lulin
// - в нулевом приближении прикрутил свой Print-_preview взамен Никитинского.
//
// Revision 1.97  2004/12/10 17:41:05  lulin
// - начал пилить Лехину красоту с Print-_preview на кусочки.
//
// Revision 1.96  2004/12/07 14:41:46  dinishev
// новый компонент ev_ctCalEdit - ComboBox с выпадающим календарем.
// доделано объединение выпадающих деревьев.
// новые интерфейсы IDropBase - базовый интерфейс для выпадающих
// компонент и IDropCalendar - интерфейс для календаря.
//
// Revision 1.95  2004/11/17 13:35:03  lulin
// - new behavior: теперь блоки с комментариями скрываются так, что рамки не видно.
//
// Revision 1.94  2004/11/17 11:30:31  lulin
// - new behavior: закрываем/открываем комментарий пользователя с клавиатуры.
//
// Revision 1.93  2004/11/15 17:57:11  lulin
// - bug fix: перенес получение _IevControl в правильное место.
//
// Revision 1.92  2004/11/15 16:49:49  lulin
// - хак перенесен в более подходящее место.
//
// Revision 1.91  2004/11/15 15:52:10  lulin
// - new behavior: предполагаем, что для параграфа с типом Combo в атрибуте tiObject лежит дерево (Il3SimpleTree) и используем это дерево для построения контрола с выпадающим деревом.
//
// Revision 1.90  2004/11/15 15:20:27  lulin
// - new unit: evDropTreeFactory.
//
// Revision 1.89  2004/11/15 14:56:49  lulin
// - new interfaces: IevDropTree, IevDropTreeFactory, IevDropTreeFactorySource - для связи редактора с выпадающими деревьями.
//
// Revision 1.88  2004/11/15 10:00:44  lulin
// - bug fix:: был Assert при форматировании схлопнутого блока.
//
// Revision 1.87  2004/11/13 16:03:15  lulin
// - new behavior: рисуем рамку вокруг параграфа с картинкой.
//
// Revision 1.86  2004/11/12 14:10:47  lulin
// - new unit: evControlParaCursor.
//
// Revision 1.85  2004/11/12 13:22:32  lulin
// - new unit: evControlParaHotSpot.
//
// Revision 1.84  2004/11/11 11:56:44  lulin
// - new behavior: для блока с комментарием теперь всегда сделана возможность сворачивать/разворачивать его при помощи мыши.
//
// Revision 1.83  2004/11/10 17:25:01  lulin
// - new behavior: всегда рисуем рамку вокруг блока с комментарием.
//
// Revision 1.82  2004/11/10 12:13:25  lulin
// - cleanup: перевел параграфы с реализации интерфейсов на реализацию инструментов.
//
// Revision 1.81  2004/11/10 11:06:08  lulin
// - new interface: IevTagShape.
// - remove interface: IevVisualShapedTag.
//
// Revision 1.80  2004/11/02 13:05:53  lulin
// - new para: k2_idControlPara.
//
// Revision 1.79  2004/11/01 11:48:27  lulin
// - new class: TevTextParaPersistentFormatting.
//
// Revision 1.78  2004/11/01 11:10:55  lulin
// - new interface: IevPersistentFormatting.
//
// Revision 1.77  2004/11/01 10:56:23  lulin
// - new method: _TevBaseParaFormatter.Make.
//
// Revision 1.76  2004/10/29 17:23:34  lulin
// - optimization: существенно ускорено переформатирование таблиц, в которых изменилось небольшое количество ячеек.
//
// Revision 1.75  2004/06/29 09:15:13  law
// - еще раз убрал под define некомпилирующийся код.
//
// Revision 1.74  2004/06/29 09:09:11  law
// - убрал под define некомпилирующийся код.
//
// Revision 1.73  2004/06/28 13:34:46  law
// - remove class: Il3Pointer.
//
// Revision 1.72  2004/03/25 16:28:41  law
// - new method: TevSectionBreakHotSpotTester.Make.
//
// Revision 1.71  2004/03/22 17:45:22  law
// - new method: TevParaListHotSpotTester.Make.
//
// Revision 1.70  2004/03/22 17:39:53  law
// - new method: TevTextParaHotSpotTester.Make.
//
// Revision 1.69  2003/10/16 15:46:57  law
// - new unit: evLeafParaCursorPair.
//
// Revision 1.68  2003/10/16 15:34:28  law
// - bug fix: TeeEditorExport._GetNearestSubByCursor возвращала nil, если курсор указывал на картинку.
//
// Revision 1.67  2003/10/06 10:04:44  law
// - new unit: evBitmpaParaFormatter.
//
// Revision 1.66  2003/02/14 13:02:59  law
// - cleanup: rename class TevListCursorPair -> _TevParaListCursorPair.
//
// Revision 1.65  2002/12/26 14:35:23  law
// - new dll: собрана более легкая версия dll-печати.
//
// Revision 1.64  2002/12/26 14:19:40  law
// - new dll: собрана более легкая версия dll-печати.
//
// Revision 1.63  2002/12/25 13:53:38  law
// - bug fix: в результате переделок была утеряна способнось SBS переформатироваться по ширине родителя.
// - rename unit: evSBSParaFormatter -> evSBSRowFormatter.
// - rename class: TevSBSParaFormatter -> TevSBSRowFormatter.
//
// Revision 1.62  2002/12/25 13:20:59  law
// - new unit: TevTableRowFormatter.
//
// Revision 1.61  2002/12/25 12:41:40  law
// - new unit: evSectionBreakFormatter.
// - new behavior: для каждого параграфа не проверяем, что он список параграфов :-).
//
// Revision 1.60  2002/12/24 15:31:34  law
// - new units: TevTreeParaFormatter, TevTreeParaConst, TevSBSParaFormatter.
//
// Revision 1.59  2002/12/24 14:38:44  law
// - new units: evTextParaFormatter, evTextParaConst.
//
// Revision 1.58  2002/12/23 12:26:22  law
// - new units: evBaseParaFormater, evParaListFormatter.
//
// Revision 1.57  2002/12/19 16:42:38  law
// - cleanup.
//
// Revision 1.56  2002/12/19 15:57:28  law
// - cleanup.
//
// Revision 1.55  2002/12/19 14:44:26  law
// - rename class: IevTextParaPainter -> _TevTextParaPainter.
//
// Revision 1.54  2002/12/17 12:20:43  law
// - new unit: k2Unknown.
//
// Revision 1.53  2002/12/17 10:03:26  law
// - new unit: evSolidParaCursorPair.
//
// Revision 1.52  2002/12/17 09:49:43  law
// - new unit: evParaListCursorPair.
//
// Revision 1.51  2002/12/17 09:08:07  law
// - new unit: evDocumentPartCursorPair.
//
// Revision 1.50  2002/12/17 09:03:03  law
// - new unit: evDocumentCursorPair.
//
// Revision 1.49  2002/12/17 08:59:48  law
// - new unit: evTableCursorPair.
//
// Revision 1.48  2002/12/17 08:31:19  law
// - new unit: evTableRowCursorPair.
//
// Revision 1.47  2002/12/17 08:24:44  law
// - new unit: evTableCellCursorPair.
//
// Revision 1.46  2002/12/16 16:10:38  law
// - new unit: evParaCursor.
//
// Revision 1.45  2002/12/16 15:39:08  law
// - new unit: evSolidParaCursor.
//
// Revision 1.44  2002/12/16 15:23:20  law
// - new unit: evParaListCursor.
//
// Revision 1.43  2002/12/16 14:11:59  law
// - new unit: evTableCellCursor.
//
// Revision 1.42  2002/12/16 13:53:08  law
// - new unit: evTableRowCursor.
//
// Revision 1.41  2002/12/16 13:34:36  law
// - new unit: evDocumentCursor.
//
// Revision 1.40  2002/12/16 13:21:00  law
// - new unit: evDocumentPartCursor.
//
// Revision 1.39  2002/12/16 12:56:02  law
// - new unit: evTextParaCursorPair.
//
// Revision 1.38  2002/12/16 12:21:46  law
// - new unit: evFormulaCursor.
//
// Revision 1.37  2002/12/16 11:59:35  law
// - new unit: evBitmapParaPainter.
//
// Revision 1.36  2002/12/15 13:38:07  law
// - new behaivor: вчерновую прикрутил рисование формул.
//
// Revision 1.35  2002/11/29 14:22:10  law
// - remove method: _TevBaseCursor.SetEntryPointHard.
// - new behavior: для "solid" параграфов обрабатываем High(Long).
//
// Revision 1.34  2002/11/12 15:43:34  law
// - new behavior: k2_idBitmapPara и k2_idBreak теперь корректно обрабатывают выделение, которое начинается или заканчивается на них.
//
// Revision 1.33  2002/07/26 13:11:40  law
// - rename unit: evTxtPnt -> _evTextParaPainter.
//
// Revision 1.32  2002/07/23 14:42:01  law
// - some refactoring.
//
// Revision 1.31  2002/07/10 15:57:14  law
// - new unit: evTreeParaHotSpot.
//
// Revision 1.30  2002/07/10 15:09:07  law
// - new behavior: черновой вариант отрисовки и курсора для параграфа с деревом.
//
// Revision 1.29  2002/07/08 12:11:30  law
// - new unit: evTreePara.
//
// Revision 1.28  2002/02/08 15:07:52  law
// - rename class: TevBlockCursor -> TevDocumentPartCursor.
//
// Revision 1.27  2002/02/08 14:39:34  law
// - rename unit: evDocPnt -> evDocumentPainter.
//
// Revision 1.26  2002/02/08 14:34:57  law
// - rename unit: evLstPnt -> evParaListPainter.
//
// Revision 1.25  2002/02/07 16:03:59  law
// - rename unit: evDocPrt -> evDocumentPartPainter.
//
// Revision 1.24  2001/11/23 13:32:56  law
// - bug fix: "Некорректно изменяется размер ячеек" (см. _TestSet\ComplexTable\8.evd, задача №1364).
//
// Revision 1.23  2001/10/24 09:06:08  law
// - bug fix: AV при работе с редактором. (Есть мысли что как-то связано с переходом на новую логику работы с буфером обмена) См. задачу №1249.
//
// Revision 1.22  2001/09/25 14:22:14  law
// - new unit: evListBlock - блоки и курсоры для _Il3StringList.
//
// Revision 1.21  2001/09/24 16:58:12  law
// - new behavior: выделен отдельно интерфейс IevPrepareContext.
//
// Revision 1.20  2001/08/02 11:43:19  law
// - cleanup & comments.
//
// Revision 1.19  2001/07/03 10:59:02  law
// - new behavior: Согласно задаче "Изменить цвет рамки вокруг сайд-бай-сайд параграфа" (№541).
//
// Revision 1.18  2001/03/30 11:54:34  law
// - курсор для текстовых параграфов вынесен в модуль evTextParaCursor.
//
// Revision 1.17  2001/03/13 10:58:11  law
// - модуль evBseCur разделен на evBlock и evBseCur.
//
// Revision 1.16  2000/12/15 15:10:37  law
// - вставлены директивы Log.
//

{$Include evDefine.inc }

interface

uses
  l3IID,
  l3Types,
  l3Interfaces,
  l3Base,
  
  k2Interfaces,
  k2Facade,
  k2Base,

  evInternalInterfaces,  
  evQueryCardInt,

  nevTools
  ;

type
  TevParaInterfaceFactory = class(Tk2InterfaceFactory,
                                  Ik2TagToolFactory,
                                  Ik2OldCursorCache)
   {* - базовый класс "фабрики интерфейсов" для параграфов. }
    public
    // public methods
      function  QueryTool(const aTag : Ik2Tag;
                          const ID   : Tl3IID;
                          out I      : Tk2ToolPrim): Bool;
        override;
        {-}
      function Ik2TagToolFactory_QueryTool(const aTag       : Ik2Tag;
                                           const IID        : TGUID;
                                           out Tool         ;
                                           const aProcessor : InevProcessor = nil): Boolean;
      function Ik2TagToolFactory.QueryTool = Ik2TagToolFactory_QueryTool;
        {-}
      function COMQueryTool(const aTag       : Ik2Tag;
                            const IID        : Tl3GUID;
                            out Tool         ;
                            const aProcessor : InevProcessor): Boolean;
        virtual;
        {-}
      procedure Iterate(const aTag : Ik2Tag;
                        Action     : Tl3IteratorAction);
        {-}
  end;//TevParaInterfaceFactory

  TevLeafParaInterfaceFactory = class(TevParaInterfaceFactory)
    public
    // public methods
      function COMQueryTool(const aTag       : Ik2Tag;
                            const IID        : Tl3GUID;
                            out Tool         ;
                            const aProcessor : InevProcessor): Boolean;
        override;
        {-}
      function  QueryTool(const aTag : Ik2Tag;
                          const ID   : Tl3IID;
                          out I      : Tk2ToolPrim): Bool;
        override;
        {-}
  end;//TevLeafParaInterfaceFactory

  TevSolidParaInterfaceFactory = class(TevLeafParaInterfaceFactory)
    public
    // public methods
      function  QueryTool(const aTag : Ik2Tag;
                          const ID   : Tl3IID;
                          out I      : Tk2ToolPrim): Bool;
        override;
        {-}
      function COMQueryTool(const aTag       : Ik2Tag;
                            const IID        : Tl3GUID;
                            out Tool         ;
                            const aProcessor : InevProcessor): Boolean;
        override;
        {-}
  end;//TevSolidParaInterfaceFactory

  TevPageBreakInterfaceFactory = class(TevSolidParaInterfaceFactory)
   {* - "фабрика интерфейсов" для разрыва страницы. }
    public
    {public methods}
      function  QueryTool(const aTag : Ik2Tag;
                          const ID   : Tl3IID;
                          out I      : Tk2ToolPrim): Bool;
        override;
        {-}
      function  COMQueryTool(const aTag       : Ik2Tag;
                             const IID        : Tl3GUID;
                             out Tool         ;
                             const aProcessor : InevProcessor): Boolean;
        override;
        {-}
  end;//TevPageBreakInterfaceFactory

  TevSectionBreakInterfaceFactory = class(TevPageBreakInterfaceFactory)
   {* - "фабрика интерфейсов" для разрыва раздела. }
    public
    // public methods
      function  COMQueryTool(const aTag       : Ik2Tag;
                             const IID        : Tl3GUID;
                             out Tool         ;
                             const aProcessor : InevProcessor): Boolean;
        override;
        {-}
  end;//TevSectionBreakInterfaceFactory

  TevBitmapParaInterfaceFactory = class(TevSolidParaInterfaceFactory)
   {* - "фабрика интерфейсов" для параграфа с картинкой. }
    public
    // public methods
      function  QueryTool(const aTag : Ik2Tag;
                          const ID   : Tl3IID;
                          out I      : Tk2ToolPrim): Bool;
        override;
        {-}
      function  COMQueryTool(const aTag       : Ik2Tag;
                             const IID        : Tl3GUID;
                             out Tool         ;
                             const aProcessor : InevProcessor): Boolean;
        override;
        {-}
  end;//TevBitmapParaInterfaceFactory

  TevTreeParaInterfaceFactory = class(TevLeafParaInterfaceFactory)
   {* - "фабрика интерфейсов" для параграфа с деревом. }
    public
    // public methods
      function  QueryTool(const aTag : Ik2Tag;
                          const ID   : Tl3IID;
                          out I      : Tk2ToolPrim): Bool;
        override;
        {-}
      function  COMQueryTool(const aTag       : Ik2Tag;
                             const IID        : Tl3GUID;
                             out Tool         ;
                             const aProcessor : InevProcessor): Boolean;
        override;
        {-}
  end;//TevTreeParaInterfaceFactory

  TevTextParaInterfaceFactory = class(TevLeafParaInterfaceFactory)
   {* - "фабрика интерфейсов" для текстового параграфа. }
    public
    // public methods
      function  QueryTool(const aTag : Ik2Tag;
                          const ID   : Tl3IID;
                          out I      : Tk2ToolPrim): Bool;
        override;
        {-}
      function  COMQueryTool(const aTag       : Ik2Tag;
                             const IID        : Tl3GUID;
                             out Tool         ;
                             const aProcessor : InevProcessor): Boolean;
        override;
        {-}
  end;//TevTextParaInterfaceFactory

  {$IfDef evUseFormula}
  TevFormulaInterfaceFactory = class(TevTextParaInterfaceFactory)
    public
    // public methods
      function  QueryTool(const aTag : Ik2Tag;
                          const ID   : Tl3IID;
                          out I      : Tk2ToolPrim): Bool;
        override;
        {-}
      function  COMQueryTool(const aTag       : Ik2Tag;
                             const IID        : Tl3GUID;
                             out Tool         ;
                             const aProcessor : InevProcessor): Boolean;
        override;
        {-}
  end;//TevFormulaInterfaceFactory
  {$EndIf evUseFormula}

  TevControlParaInterfaceFactory = class(TevTextParaInterfaceFactory)
    public
    // public methods
      function  QueryTool(const aTag : Ik2Tag;
                          const ID   : Tl3IID;
                          out I      : Tk2ToolPrim): Bool;
        override;
        {-}
      function  COMQueryTool(const aTag       : Ik2Tag;
                             const IID        : Tl3GUID;
                             out Tool         ;
                             const aProcessor : InevProcessor): Boolean;
        override;
        {-}
  end;//TevControlParaInterfaceFactory 

  TevParaListInterfaceFactory = class(TevParaInterfaceFactory)
   {* - "фабрика интерфейсов" для списка параграфов. }
    public
    // public methods
      function  QueryTool(const aTag : Ik2Tag;
                          const ID   : Tl3IID;
                          out I      : Tk2ToolPrim): Bool;
        override;
        {-}
      function  COMQueryTool(const aTag       : Ik2Tag;
                             const IID        : Tl3GUID;
                             out Tool         ;
                             const aProcessor : InevProcessor): Boolean;
        override;
        {-}
  end;//TevParaListInterfaceFactory

  TevTableRowInterfaceFactory = class(TevParaListInterfaceFactory)
   {* - "фабрика интерфейсов" для строки таблицы. }
    public
    // public methods
      function  QueryTool(const aTag : Ik2Tag;
                          const ID   : Tl3IID;
                          out I      : Tk2ToolPrim): Bool;
        override;
        {-}
      function  COMQueryTool(const aTag       : Ik2Tag;
                             const IID        : Tl3GUID;
                             out Tool         ;
                             const aProcessor : InevProcessor): Boolean;
        override;
        {-}
  end;//TevTableRowInterfaceFactory

  TevTableInterfaceFactory = class(TevParaListInterfaceFactory)
   {* - "фабрика интерфейсов" для таблицы. }
    public
    // public methods
      function  QueryTool(const aTag : Ik2Tag;
                          const ID   : Tl3IID;
                          out I      : Tk2ToolPrim): Bool;
        override;
        {-}
      function  COMQueryTool(const aTag       : Ik2Tag;
                             const IID        : Tl3GUID;
                             out Tool         ;
                             const aProcessor : InevProcessor): Boolean;
        override;
        {-}
  end;{TevTableInterfaceFactory}

  TevSBSInterfaceFactory = class(TevTableInterfaceFactory)
    public
    // public methods
      function  COMQueryTool(const aTag       : Ik2Tag;
                             const IID        : Tl3GUID;
                             out Tool         ;
                             const aProcessor : InevProcessor): Boolean;
        override;
        {-}
  end;//TevSBSInterfaceFactory

  TevSBSRowInterfaceFactory = class(TevTableRowInterfaceFactory)
    public
    // public methods
      function  QueryTool(const aTag : Ik2Tag;
                          const ID   : Tl3IID;
                          out I      : Tk2ToolPrim): Bool;
        override;
        {-}
      function  COMQueryTool(const aTag       : Ik2Tag;
                             const IID        : Tl3GUID;
                             out Tool         ;
                             const aProcessor : InevProcessor): Boolean;
        override;
        {-}
  end;//TevSBSRowInterfaceFactory

  TevReqRowInterfaceFactory = class(TevTableRowInterfaceFactory)
    public
    // public methods
      function  COMQueryTool(const aTag       : Ik2Tag;
                             const IID        : Tl3GUID;
                             out Tool         ;
                             const aProcessor : InevProcessor): Boolean;
        override;
        {-}
  end;//TevReqRowInterfaceFactory

  TevTableCellInterfaceFactory = class(TevParaListInterfaceFactory)
   {* - "фабрика интерфейсов" для ячейки таблицы. }
    public
    // public methods
      function  QueryTool(const aTag : Ik2Tag;
                          const ID   : Tl3IID;
                          out I      : Tk2ToolPrim): Bool;
        override;
        {-}
      function  COMQueryTool(const aTag       : Ik2Tag;
                             const IID        : Tl3GUID;
                             out Tool         ;
                             const aProcessor : InevProcessor): Boolean;
        override;
        {-}
  end;//TevTableCellInterfaceFactory

  TevSBSCellInterfaceFactory = class(TevTableCellInterfaceFactory)
    public
    // public methods
      function  COMQueryTool(const aTag       : Ik2Tag;
                             const IID        : Tl3GUID;
                             out Tool         ;
                             const aProcessor : InevProcessor): Boolean;
        override;
        {-}
  end;//TevSBSCellInterfaceFactory

  TevReqCellInterfaceFactory = class(TevTableCellInterfaceFactory)
    public
    // public methods
      function  QueryTool(const aTag : Ik2Tag;
                          const ID   : Tl3IID;
                          out I      : Tk2ToolPrim): Bool;
        override;
        {-}
      function  COMQueryTool(const aTag       : Ik2Tag;
                             const IID        : Tl3GUID;
                             out Tool         ;
                             const aProcessor : InevProcessor): Boolean;
        override;
        {-}
  end;//TevReqCellInterfaceFactory

  TevBlockInterfaceFactory = class(TevParaListInterfaceFactory)
   {* - "фабрика интерфейсов" для блока документа (IevDocumentPart). }
    public
    // public methods
      function  QueryTool(const aTag : Ik2Tag;
                          const ID   : Tl3IID;
                          out I      : Tk2ToolPrim): Bool;
        override;
        {-}
      function  COMQueryTool(const aTag       : Ik2Tag;
                             const IID        : Tl3GUID;
                             out Tool         ;
                             const aProcessor : InevProcessor): Boolean;
        override;
        {-}
  end;//TevBlockInterfaceFactory

  TevCommentParaInterfaceFactory = class(TevBlockInterfaceFactory)
    public
    // public methods
      function  QueryTool(const aTag : Ik2Tag;
                          const ID   : Tl3IID;
                          out I      : Tk2ToolPrim): Bool;
        override;
        {-}
      function  COMQueryTool(const aTag       : Ik2Tag;
                             const IID        : Tl3GUID;
                             out Tool         ;
                             const aProcessor : InevProcessor): Boolean;
        override;
        {-}
  end;//TevCommentParaInterfaceFactory

  TevControlsBlockInterfaceFactory = class(TevBlockInterfaceFactory)
   {* - "фабрика интерфейсов" для блока контролов. }
    public
    // public methods
      function  QueryTool(const aTag : Ik2Tag;
                          const ID   : Tl3IID;
                          out I      : Tk2ToolPrim): Bool;
        override;
        {-}
      function  COMQueryTool(const aTag       : Ik2Tag;
                             const IID        : Tl3GUID;
                             out Tool         ;
                             const aProcessor : InevProcessor): Boolean;
        override;
        {-}
  end;//TevControlsBlockInterfaceFactory

  TevDocumentInterfaceFactory = class(TevParaListInterfaceFactory)
   {* - "фабрика интерфейсов" для документа. }
    public
    // public methods
      function  QueryTool(const aTag : Ik2Tag;
                          const ID   : Tl3IID;
                          out I      : Tk2ToolPrim): Bool;
        override;
        {-}
      function  COMQueryTool(const aTag       : Ik2Tag;
                             const IID        : Tl3GUID;
                             out Tool         ;
                             const aProcessor : InevProcessor): Boolean;
        override;
        {-}
  end;//TevDocumentInterfaceFactory

  TevQueryCardInterfaceFactory = class(TevDocumentInterfaceFactory)
   {* - "фабрика интерфейсов" для новой КЗ. }
    public
    // public methods
      function  QueryTool(const aTag : Ik2Tag;
                          const ID   : Tl3IID;
                          out I      : Tk2ToolPrim): Bool;
        override;
        {-}
      function  COMQueryTool(const aTag       : Ik2Tag;
                             const IID        : Tl3GUID;
                             out Tool         ;
                             const aProcessor : InevProcessor): Boolean;
        override;
        {-}
  end;//TevQueryCardInterfaceFactory

implementation

uses
  SysUtils,
  
  l3Const,
  l3TreeInterfaces,

  k2Tags,
  {$IfDef evNeedHotSpot}
  k2InternalInterfaces,
  {$EndIf evNeedHotSpot}

  evdTypes,
  evdInterfaces,
  
  evConst,

  {$IfDef evUseVisibleCursors}
  evLocation,
  evCursor,
  evParaCursor,
  evLeafParaCursor,
  evSolidParaCursor,
  evBitmapParaCursor,
  evTextParaCursor,
  evBreakParaCursor,
  {$IfDef evUseFormula}
  evFormulaCursor,
  {$EndIf evUseFormula}
  evControlParaCursor,
  evParaListCursor,
  evTableCellCursor,
  evTableRowCursor,
  evTableCursor,
  evDocumentPartCursor,
  evCommentParaCursor,
  evDocumentCursor,
  evControlsBlockCursor,
  evReqCellCursor,
  evQueryCardCursor,
  evSBSRowCursor,

  evSelection,
  evCursorPair,
  evLeafParaCursorPair,
  evSolidParaCursorPair,
  evTextParaCursorPair,
  evControlParaCursorPair,
  evParaListCursorPair,
  evTableCellCursorPair,
  evTableRowCursorPair,
  evTableCursorPair,
  evDocumentPartCursorPair,
  evCommentParaCursorPair,
  evDocumentCursorPair,
  {$EndIf evUseVisibleCursors}

  {$IfDef evNeedPainters}
  evParaListPainter,
  evSBSCellPainter,
  evDocumentPainter,
  evPageBreakPainter,
  evSectionBreakPainter,
  evDocumentPartPainter,
  evSBSPainter,
  evBitmapParaPainter,
  evControlParaPainter,
  evCommentParaPainter,
  evControlsBlockPainter,
  evTableRowPainter,
  evReqRowPainter,
  evTableCellPainter,
  evTablePainter,
  {$EndIf evNeedPainters}

  evTextParaPainter,
  {$IfDef evNeedPainters}
  evTextParaPainterEx,
  {$IfDef evUseFormula}
  evFormulaPainter,
  {$EndIf evUseFormula}
  {$EndIf evNeedPainters}

  {$IfDef evUseDeadCursor}
  evDeadCursor,
  {$EndIf evUseDeadCursor}

  {$IfDef evNeedHotSpot}
  evSectionBreakHotSpot,
  evParaListHotSpotTester,
  evDocumentHotSpotTester,
  evDocumentPartHotSpotTester,
  evTableHotSpot,
  evTableRowHotSpot,
  evTableCellHotSpot,
  evCommentParaHotSpot,
  evControlParaHotSpot,
  evControlsBlockHotSpotTester,
  evReqRowHotSpot,
  evReqCellHotSpot,
  evTextParaHotSpotTester,
  evControlParaHotSpotTester,
  evSBSRowHotSpotTester,
  {$EndIf evNeedHotSpot}

  evTreePara
  {$IfDef evUseVisibleCursors}
  ,
  evTreeParaCursor
  {$EndIf evUseVisibleCursors}
  {$IfDef evNeedHotSpot}
  ,
  evTreeParaHotSpot
  {$EndIf evNeedHotSpot}
  ,
  evAnchorIndex_Impl,
  evTextParaStringImpl,

  nevRealTools,
  nevPara,
  nevLeafPara,
  nevTextPara,
  nevControlPara,
  nevControlsBlock,
  nevParaList,
  nevTable,
  nevTableRow,
  nevTableCell,
  nevDocumentPart,
  nevCommentPara,
  nevDocument,
  nevAnchor,
  nevTableAnchor,
  nevTableCellAnchor,
  nevTableRowAnchor,
  nevParaListAnchor,
  nevLeafParaAnchor,
  nevTextParaAnchor,
  nevSolidParaAnchor,
  nevBreakParaAnchor,
  nevBitmapParaAnchor,
  nevDocumentPartAnchor,
  nevTableRowBaseLine4Print,
  nevTableRowBaseLine4Anchor,

  nevBase,
  nevFacade,
  nevView,
  nevGUIInterfaces,
  nevFormulaPara
  ;

const
  ev_iidCursor     : Tl3IID = (IID: 0);
    {* - курсор объекта. }
  ev_iidBlock      : Tl3IID = (IID: 1);
    {* - выделение части объекта. }
    
// start class TevTextParaInterfaceFactory 

function TevTextParaInterfaceFactory.COMQueryTool(const aTag       : Ik2Tag;
                                                  const IID        : Tl3GUID;
                                                  out Tool         ;
                                                  const aProcessor : InevProcessor): Boolean;
  {override;}
  {-}
var
{$IfDef evNeedPainters}
 l_Painter : IevPainter;
{$EndIf evNeedPainters}
 l_TP      : InevTextPara;
begin
 Result := true;
 {$IfDef evNeedHotSpot}
 if IID.EQ(InevHotSpotTester2) then
  InevHotSpotTester2(Tool) := TevTextParaHotSpotTester.Make(aTag)
 else
 {$EndIf evNeedHotSpot}
 {$IfDef evNeedPainters}
 if IID.EQ(IevPainter) then
  IevPainter(Tool) := TevTextParaPainterEx.Make(aTag)
 else
 {$EndIf evNeedPainters}
 {$IfDef evUseDeadCursor}
 if IID.EQ(IevSavedCursor) then
  IevSavedCursor(Tool) := TevTextParaDeadCursor.Make
 else
 {$EndIf evUseDeadCursor}
 if IID.EQ(Il3WordsSeq) then
  Il3WordsSeq(Tool) := TevTextParaStringImpl.Make(aTag)
 else
 if IID.SomeOf([InevPara, InevParaInternal, InevLeafPara]) then
 begin
  if not aTag.QT(InevTextPara, l_TP, aProcessor) OR
     not l_TP.QT(IID.IID, Tool, aProcessor) then
   Result := false;
 end//IID.SomeOf([InevPara, InevParaInternal, InevLeafPara])
 else
 if IID.EQ(InevTextPara) then
  InevTextPara(Tool) := TnevTextPara.Make(aTag)
 else
 if IID.EQ(InevAnchor) then
  InevAnchor(Tool) := TnevTextParaAnchor.Make(aTag)
 else
  Result := inherited COMQueryTool(aTag, IID, Tool, aProcessor);
end;

function TevTextParaInterfaceFactory.QueryTool(const aTag : Ik2Tag; const ID: Tl3IID; out I: Tk2ToolPrim): Bool;
  {override;}
  {-}
begin
 {$IfDef evUseVisibleCursors}
 Result := true;
 if ID.EQ(ev_iidCursor) then
  I := TevTextParaCursor.Create(aTag)
 else
 if ID.EQ(ev_iidBlock) then
  I := TevTextCursorPair.Create(aTag)
 else
 {$EndIf evUseVisibleCursors}
  Result := inherited QueryTool(aTag, ID, I);
end;

// start class TevParaListInterfaceFactory 

function TevParaListInterfaceFactory.COMQueryTool(const aTag       : Ik2Tag;
                                                  const IID        : Tl3GUID;
                                                  out Tool         ;
                                                  const aProcessor : InevProcessor): Boolean;
  {override;}
  {-}
var
 l_PL : InevParaList;
begin
 Result := true;
 {$IfDef evNeedHotSpot}
 if IID.EQ(InevHotSpotTester2) then
  InevHotSpotTester2(Tool) := TevParaListHotSpotTester.Make(aTag, aProcessor)
 else
 {$EndIf evNeedHotSpot}
 {$IfDef evNeedPainters}
 if IID.EQ(IevPainter) then
  IevPainter(Tool) := TevParaListPainter.Make(aTag)
 else
 {$EndIf evNeedPainters}
 if IID.EQ(InevParaList) then
  InevParaList(Tool) := TnevParaList.Make(aTag)
 else
 if IID.SomeOf([InevPara, InevParaInternal]) then
 begin
  if not aTag.QT(InevParaList, l_PL, aProcessor) OR
     not l_PL.QT(IID.IID, Tool, aProcessor) then
   Result := false;
 end//IID.SomeOf([InevPara, InevLeafPara])
 else
 if IID.EQ(InevAnchor) then
  InevAnchor(Tool) := TnevParaListAnchor.Make(aTag)
 else
  Result := inherited COMQueryTool(aTag, IID, Tool, aProcessor);
end;

function TevParaListInterfaceFactory.QueryTool(const aTag : Ik2Tag; const ID: Tl3IID; out I: Tk2ToolPrim): Bool;
  {override;}
  {-}
begin
 Result := true;
 {$IfDef evUseVisibleCursors}
 if ID.EQ(ev_iidCursor) then
  I := TevParaListCursor.Create(aTag)
 else
 if ID.EQ(ev_iidBlock) then
  I := TevParaListCursorPair.Create(aTag)
 else
 {$EndIf evUseVisibleCursors}
  Result := inherited QueryTool(aTag, ID, I);
end;

// start class TevTableRowInterfaceFactory

function TevTableRowInterfaceFactory.QueryTool(const aTag : Ik2Tag; const ID: Tl3IID; out I: Tk2ToolPrim): Bool;
  {override;}
  {-}
begin
 Result := true;
 {$IfDef evUseVisibleCursors}
 if ID.EQ(ev_iidCursor) then
  I := TevTableRowCursor.Create(aTag)
 else
 if ID.EQ(ev_iidBlock) then
  I := TevTableRowCursorPair.Create(aTag)
 else
 {$EndIf evUseVisibleCursors}
  Result := inherited QueryTool(aTag, ID, I);
end;

function TevTableRowInterfaceFactory.COMQueryTool(const aTag: Ik2Tag; const IID: Tl3GUID; out Tool; const aProcessor : InevProcessor): Boolean;
  //override;
  {-}
begin
 Result := true;
 if IID.EQ(InevBaseLine4Anchor) then
  InevBaseLine4Anchor(Tool) := TnevTableRowBaseLine4Anchor.Make(aTag)
 else
 if IID.EQ(InevBaseLine4Print) then
  InevBaseLine4Print(Tool) := TnevTableRowBaseLine4Print.Make(aTag)
 else
 if IID.EQ(InevParaList) then
  InevParaList(Tool) := TnevTableRow.Make(aTag)
 else
 if IID.EQ(InevTableRow) then
  InevTableRow(Tool) := TnevTableRow.MakeRow(aTag)
 else 
 if IID.EQ(InevAnchor) then
  InevAnchor(Tool) := TnevTableRowAnchor.Make(aTag)
 else 
 {$IfDef evNeedHotSpot}
 if IID.EQ(InevHotSpotTester2) then
  InevHotSpotTester2(Tool) := TevTableRowHotSpotTester.Make(aTag, aProcessor)
 else
 {$EndIf evNeedHotSpot}
 {$IfDef evNeedPainters}
 if IID.EQ(IevPainter) then
  IevPainter(Tool) := TevTableRowPainter.Make(aTag)
 else
 {$EndIf evNeedPainters}
  Result := inherited COMQueryTool(aTag, IID, Tool, aProcessor);
end;

// start class TevTableInterfaceFactory 

function TevTableInterfaceFactory.QueryTool(const aTag : Ik2Tag; const ID: Tl3IID; out I: Tk2ToolPrim): Bool;
  {override;}
  {-}
begin
 Result := true;
 {$IfDef evUseVisibleCursors}
 if ID.EQ(ev_iidCursor) then
  I := TevTableCursor.Create(aTag)
 else
 if ID.EQ(ev_iidBlock) then
  I := TevTableCursorPair.Create(aTag)
 else
 {$EndIf evUseVisibleCursors}
  Result := inherited QueryTool(aTag, ID, I);
end;

function TevTableInterfaceFactory.COMQueryTool(const aTag: Ik2Tag; const IID: Tl3GUID; out Tool; const aProcessor : InevProcessor): Boolean;
  //override;
  {-}
{$IfDef evNeedHotSpot}
var
 l_Obj : InevObject;
{$EndIf evNeedHotSpot}
begin
 Result := true;
 if IID.EQ(InevParaList) then
  InevParaList(Tool) := TnevTable.Make(aTag)
 else
 if IID.EQ(InevTable) then  
  InevTable(Tool) := TnevTable.Make(aTag) 
 else
 if IID.EQ(InevAnchor) then
  InevAnchor(Tool) := TnevTableAnchor.Make(aTag)
 else 
 {$IfDef evNeedHotSpot}
 if IID.EQ(InevHotSpotTester2) then
  InevHotSpotTester2(Tool) := TevTableHotSpotTester.Make(aTag, aProcessor)
 else
 if IID.EQ(IevChangeParamTool) then
 begin
  if aTag.QT(InevObject, l_Obj, aProcessor) then
   try
    if not Supports(l_Obj.MakePoint, IID.IID, Tool) then
     Result := false;
   finally
    l_Obj := nil;
   end//try..finally
  else
   Result := false;
 end//IID.EQ(IevChangeParamTool)
 else
 {$EndIf evNeedHotSpot}
 {$IfDef evNeedPainters}
 if IID.EQ(IevPainter) then
  IevPainter(Tool) := TevTablePainter.Make(aTag)
 else
 {$EndIf evNeedPainters}
  Result := inherited COMQueryTool(aTag, IID, Tool, aProcessor);
end;

// start class TevTableCellInterfaceFactory 

function TevTableCellInterfaceFactory.COMQueryTool(const aTag: Ik2Tag; const IID: Tl3GUID; out Tool; const aProcessor : InevProcessor): Boolean;
  {override;}
  {-}
begin
 Result := true;
 if IID.EQ(InevParaList) then
  InevParaList(Tool) := TnevTableCell.Make(aTag)
 else
 if IID.EQ(InevTableCell) then
  InevTableCell(Tool) := TnevTableCell.Make(aTag)
 else
 {$IfDef evNeedHotSpot}
 if IID.EQ(InevHotSpotTester2) then
  InevHotSpotTester2(Tool) := TevTableCellHotSpotTester.Make(aTag, aProcessor)
 else
 {$EndIf evNeedHotSpot}
 {$IfDef evNeedPainters}
 if IID.EQ(IevPainter) then
  IevPainter(Tool) := TevTableCellPainter.Make(aTag)
 else
 if IID.EQ(InevAnchor) then
  InevAnchor(Tool) := TnevTableCellAnchor.Make(aTag)
 else
 {$EndIf evNeedPainters}
  Result := inherited COMQueryTool(aTag, IID, Tool, aProcessor);
end;

function TevTableCellInterfaceFactory.QueryTool(const aTag : Ik2Tag; const ID: Tl3IID; out I: Tk2ToolPrim): Bool;
  {override;}
  {-}
begin
 Result := true;
 {$IfDef evUseVisibleCursors}
 if ID.EQ(ev_iidCursor) then
  I := TevTableCellCursor.Create(aTag)
 else
 if ID.EQ(ev_iidBlock) then
  I := TevTableCellCursorPair.Create(aTag)
 else
 {$EndIf evUseVisibleCursors}
  Result := inherited QueryTool(aTag, ID, I);
end;

// start class TevSBSCellInterfaceFactory

function TevSBSCellInterfaceFactory.COMQueryTool(const aTag       : Ik2Tag;
                                                 const IID        : Tl3GUID;
                                                 out Tool         ;
                                                 const aProcessor : InevProcessor): Boolean;
  //override;
  {-}
begin
 Result := true;
 {$IfDef evNeedPainters}
 if IID.EQ(IevPainter) then
  IevPainter(Tool) := TevSBSCellPainter.Make(aTag)
 else
 {$EndIf evNeedPainters}
  Result := inherited COMQueryTool(aTag, IID, Tool, aProcessor);
end;

// start class TevDocumentInterfaceFactory

function TevDocumentInterfaceFactory.COMQueryTool(const aTag: Ik2Tag; const IID: Tl3GUID; out Tool; const aProcessor : InevProcessor): Boolean;
  {override;}
  {-}
begin
 Result := true;
 if IID.EQ(InevParaList) then
  InevParaList(Tool) := TnevDocument.Make(aTag)
 else
 {$IfDef evNeedPainters}
 if IID.EQ(IevPainter) then
  IevPainter(Tool) := TevDocumentPainter.Make(aTag)
 else
 {$EndIf evNeedPainters}
 if IID.EQ(IevAnchorIndex) then
  IevAnchorIndex(Tool) := TevDocumentAnchorIndex.Make(aTag, aProcessor)
 else
 {$IfDef evNeedHotSpot}
 if IID.EQ(InevHotSpotTester2) then
  InevHotSpotTester2(Tool) := TevDocumentHotSpotTester.Make(aTag, aProcessor)
 else
 {$EndIf evNeedHotSpot}
  Result := inherited COMQueryTool(aTag, IID, Tool, aProcessor);
end;

function TevDocumentInterfaceFactory.QueryTool(const aTag : Ik2Tag; const ID: Tl3IID; out I: Tk2ToolPrim): Bool;
  {override;}
  {-}
begin
 Result := true;
 {$IfDef evUseVisibleCursors}
 if ID.EQ(ev_iidCursor) then
  I := TevDocumentCursor.Create(aTag)
 else
 if ID.EQ(ev_iidBlock) then
  I := TevDocumentCursorPair.Create(aTag)
 else
 {$EndIf evUseVisibleCursors}
  Result := inherited QueryTool(aTag, ID, I);
end;

// start class TevBlockInterfaceFactory 

function TevBlockInterfaceFactory.COMQueryTool(const aTag: Ik2Tag; const IID: Tl3GUID; out Tool; const aProcessor : InevProcessor): Boolean;
  {override;}
  {-}
begin
 Result := true;
 if IID.EQ(InevParaList) then
  InevParaList(Tool) := TnevDocumentPart.Make(aTag)
 else
 {$IfDef evNeedHotSpot}
 if IID.EQ(InevHotSpotTester2) then
  InevHotSpotTester2(Tool) := TevDocumentPartHotSpotTester.Make(aTag, aProcessor)
 else
 {$EndIf evNeedHotSpot}
 {$IfDef evNeedPainters}
 if IID.EQ(IevPainter) then
  IevPainter(Tool) := TevDocumentPartPainter.Make(aTag)
 else
 {$EndIf evNeedPainters}
 if IID.EQ(InevAnchor) then
  InevAnchor(Tool) := TnevDocumentPartAnchor.Make(aTag)
 else
  Result := inherited COMQueryTool(aTag, IID, Tool, aProcessor);
end;

function TevBlockInterfaceFactory.QueryTool(const aTag : Ik2Tag; const ID: Tl3IID; out I: Tk2ToolPrim): Bool;
  {override;}
  {-}
begin
 Result := true;
 {$IfDef evUseVisibleCursors}
 if ID.EQ(ev_iidBlock) then
  I := TevDocumentPartCursorPair.Create(aTag)
 else
 if ID.EQ(ev_iidCursor) then
  I := TevDocumentPartCursor.Create(aTag)
 else
 {$EndIf evUseVisibleCursors}
  Result := inherited QueryTool(aTag, ID, I);
end;

// start class TevCommentParaInterfaceFactory

function TevCommentParaInterfaceFactory.QueryTool(const aTag : Ik2Tag; const ID: Tl3IID; out I: Tk2ToolPrim): Bool;
  //override;
  {-}
begin
 Result := true;
 {$IfDef evUseVisibleCursors}
 if ID.EQ(ev_iidBlock) then
  I := TevCommentParaCursorPair.Create(aTag)
 else
 if ID.EQ(ev_iidCursor) then
  I := TevCommentParaCursor.Create(aTag)
 else
 {$EndIf evUseVisibleCursors}
  Result := inherited QueryTool(aTag, ID, I);
end;

function TevCommentParaInterfaceFactory.COMQueryTool(const aTag: Ik2Tag; const IID: Tl3GUID; out Tool; const aProcessor : InevProcessor): Boolean;
  //override;
  {-}
begin
 Result := true;
 if IID.EQ(InevParaList) then
  InevParaList(Tool) := TnevCommentPara.Make(aTag)
 else
 {$IfDef evNeedHotSpot}
 if IID.EQ(InevHotSpotTester2) then
  InevHotSpotTester2(Tool) := TevCommentParaHotSpotTester.Make(aTag, aProcessor)
 else
 {$EndIf evNeedHotSpot}
 {$IfDef evNeedPainters}
 if IID.EQ(IevPainter) then
  IevPainter(Tool) := TevCommentParaPainter.Make(aTag)
 else
 {$EndIf evNeedPainters}
(* if IID.EQ(IevAnchor) then
  IevAnchor(Tool) := TevAnchor.Make(aTag)
 else*)
  Result := inherited COMQueryTool(aTag, IID, Tool, aProcessor);
end;

// start class TevParaInterfaceFactory

function TevParaInterfaceFactory.Ik2TagToolFactory_QueryTool(const aTag: Ik2Tag; const IID: TGUID; out Tool; const aProcessor : InevProcessor = nil): Boolean;
  {-}
begin
 if IsEqualGUID(IID, Ik2OldCursorCache) then
 begin
  Result := true;
  Ik2OldCursorCache(Tool) := Self;
 end//..Ik2OldCursorCache
 else
  Result := COMQueryTool(aTag, Tl3GUID(IID), Tool, aProcessor);
end;

function TevParaInterfaceFactory.COMQueryTool(const aTag       : Ik2Tag;
                                              const IID        : Tl3GUID;
                                              out Tool         ;
                                              const aProcessor : InevProcessor): Boolean;
  {virtual;}
  {-}
var
{$IfDef evUseVisibleCursors}
 l_Cursor : TevCursor;
 l_Block  : TevRange;
{$EndIf evUseVisibleCursors}
 l_Para   : InevPara;
 l_Pnt    : IevPainter;
begin
 Result := true;
 {$IfDef evUseVisibleCursors}
 if IID.SomeOf([InevRangeFactory, InevStorable, IevdDataObject]) then
 begin
  if QueryTool(aTag, ev_iidBlock, Tk2ToolPrim(l_Block)) then
   try
    l_Block.Target := aTag;
    l_Block.Init;
    Result := l3IOk(l_Block.QueryInterface(IID.IID, Tool));
   finally
    l3Free(l_Block);
   end//try..finally
  else
   Result := false;
 end//IID.SomeOf([IevdDataObject..
 else
 if IID.EQ(InevPoint) then
 begin
  l_Cursor := LoadTool(ev_iidCursor).Use;
  if (l_Cursor <> nil) then
   try
    l_Cursor.Target := aTag;
    InevPoint(l_Cursor).SetEntryPointPrim(0);
    Assert(not InevPoint(l_Cursor).HasInner);
    InevPoint(Tool) := l_Cursor;
   finally
    l3Free(l_Cursor);
   end//try..finally
  else
  if QueryTool(aTag, ev_iidCursor, Tk2ToolPrim(l_Cursor)) then
   try
    l_Cursor.Target := aTag;
    StoreTool(ev_iidCursor, l_Cursor);
    InevPoint(Tool) := l_Cursor;
   finally
    l3Free(l_Cursor);
   end//try..finally
  else
   Result := false;
 end//IID.EQ(InevPoint)
 else
 if IID.EQ(InevBaseLine4Anchor) then
  Result := COMQueryTool(aTag, Tl3GUID_C(InevPoint), Tool, aProcessor)
 else
 if IID.EQ(InevBaseLine4Print) then
  Result := COMQueryTool(aTag, Tl3GUID_C(InevPoint), Tool, aProcessor)
 else
 {$EndIf evUseVisibleCursors}
 {$IfDef evUseDeadCursor}
 if IID.EQ(IevSavedCursor) then
  IevSavedCursor(Tool) := TevDeadCursorParent.Make
 else
 {$EndIf evUseDeadCursor}
 if IID.EQ(Ik2OldCursorCache) then
  Ik2OldCursorCache(Tool) := Self
 else
 if IID.EQ(IevAnchorIndex) then
 begin
  if not aTag.Owner.QT(IID.IID, Tool, aProcessor) then
  // - спросим родителя
   Result := false;
 end//IID.EQ(IevAnchorIndex)
 else
 if IID.EQ(InevPara) then
  InevPara(Tool) := TnevPara.Make(aTag)
 else
 if IID.EQ(InevAnchor) then
  InevAnchor(Tool) := TnevAnchor.Make(aTag)
 else
 if IID.EQ(InevDrawingShape) then
 begin
  if not aTag.QT(IevPainter, l_Pnt, aProcessor) OR
     (l_Pnt = nil) then
   Result := false
  else
   InevDrawingShape(Tool) := l_Pnt;
 end//IID.EQ(InevDrawingShape)
 else
 if IID.EQ(InevParaInternal) then
  InevParaInternal(Tool) := TnevPara.Make(aTag)
 else
 if IID.SomeOf([InevObject]) then
 begin
  if not aTag.QT(InevPara, l_Para, aProcessor) OR
     not l_Para.QT(IID.IID, Tool, aProcessor) then
   Result := false;
 end//IID.EQ(InevShape)
 else
 if IID.SomeOf([InevObjectPrim]) then
 begin
  if not aTag.QT(InevPara, l_Para, aProcessor) then
   Result := false
  else
   InevObjectPrim(Tool) := l_Para;
 end//IID.EQ(InevShape)
 else
 begin
  IUnknown(Tool) := nil;
  Result := false;
 end;//else 
end;

function TevParaInterfaceFactory.QueryTool(const aTag : Ik2Tag; const ID: Tl3IID; out I: Tk2ToolPrim): Bool;
  {override;}
  {-}
begin
 Result := true;
 {$IfDef evUseVisibleCursors}
 if ID.EQ(ev_iidCursor) then
  I := TevParaCursor.Create(aTag)
 else
 if ID.EQ(ev_iidBlock) then
  I := TevCursorPair.Create(aTag)
 else
 {$EndIf evUseVisibleCursors}
  Result := inherited QueryTool(aTag, ID, I);
end;

procedure TevParaInterfaceFactory.Iterate(const aTag : Ik2Tag;
                                          Action     : Tl3IteratorAction);
  {-}

 {$IfDef evUseVisibleCursors}
 function _IA(I: Pl3Base; Index: Long): Bool; far;
 begin
  if TevLocation(I^).GetRedirect.IsSame(aTag) then
   Result := Action(I, Index)
  else
   Result := true;
 end;
 {$EndIf evUseVisibleCursors}

{$IfDef evUseVisibleCursors}
var
 IA : Tl3IteratorAction;
{$EndIf evUseVisibleCursors} 
begin
 {$IfDef evUseVisibleCursors}
 IA := l3L2IA(@_IA);
 try
  Tk2Type(aTag.TagType).InterfaceFactory.IterateCursors(IA);
 finally
  l3FreeIA(IA);
 end;{try..finally}
 {$EndIf evUseVisibleCursors}
end;

// start class TevBitmapParaInterfaceFactory

function TevBitmapParaInterfaceFactory.QueryTool(const aTag : Ik2Tag; const ID: Tl3IID; out I: Tk2ToolPrim): Bool;
  //override;
  {-}
begin
 Result := true;
 {$IfDef evUseVisibleCursors}
 if ID.EQ(ev_iidCursor) then
  I := TevBitmapParaCursor.Create(aTag)
(* else
 if ID.EQ(ev_iidBlock) then
  I := TevSolidParaCursorPair.Create(aTag)*)
 else
 {$EndIf evUseVisibleCursors}
  Result := inherited QueryTool(aTag, ID, I);
end;

function TevBitmapParaInterfaceFactory.COMQueryTool(const aTag: Ik2Tag; const IID: Tl3GUID; out Tool; const aProcessor : InevProcessor): Boolean;
  {override;}
  {-}
begin
 Result := true;
 {$IfDef evNeedPainters}
 if IID.EQ(IevPainter) then
  IevPainter(Tool) := TevBitmapParaPainter.Make(aTag)
 else
 {$EndIf evNeedPainters}
 if IID.EQ(InevAnchor) then
  InevAnchor(Tool) := TnevBitmapParaAnchor.Make(aTag)
 else
  Result := inherited COMQueryTool(aTag, IID, Tool, aProcessor);
end;

{ start class TevTreeParaInterfaceFactory }

function TevTreeParaInterfaceFactory.COMQueryTool(const aTag: Ik2Tag; const IID: Tl3GUID; out Tool; const aProcessor : InevProcessor): Boolean;
  {override;}
  {-}
begin
 Result := true;
 {$IfDef evNeedPainters}
 if IID.EQ(IevPainter) then
  IevPainter(Tool) := TevTreeParaPainter.Make(aTag)
 else
 {$EndIf evNeedPainters}
 {$IfDef evNeedHotSpot}
 if IID.EQ(InevHotSpotTester2) then
  Pointer(Tool) := Pointer(InevHotSpotTester2(TevTreeParaHotSpotTester.Create(aTag, aProcessor)))
 else
 {$EndIf evNeedHotSpot}
  Result := inherited COMQueryTool(aTag, IID, Tool, aProcessor);
end;

function TevTreeParaInterfaceFactory.QueryTool(const aTag : Ik2Tag; const ID: Tl3IID; out I: Tk2ToolPrim): Bool;
  {override;}
  {-}
begin
 Result := true;
 {$IfDef evUseVisibleCursors}
 if ID.EQ(ev_iidCursor) then
  I := TevTreeParaCursor.Create(aTag)
(* else if ID.EQ(ev_iidBlock) then
  I := TevTextCursorPair.Create(aTag)*)
 else
 {$EndIf evUseVisibleCursors}
  Result := inherited QueryTool(aTag, ID, I);
end;

{ start class TevPageBreakInterfaceFactory }

function TevPageBreakInterfaceFactory.COMQueryTool(const aTag: Ik2Tag; const IID: Tl3GUID; out Tool; const aProcessor : InevProcessor): Boolean;
  {override;}
  {-}
begin
 Result := true;
 if IID.EQ(InevAnchor) then
  InevAnchor(Tool) := TnevBreakParaAnchor.Make(aTag)
 else 
 {$IfDef evNeedPainters}
 if IID.EQ(IevPainter) then
  IevPainter(Tool) := TevPageBreakPainter.Make(aTag)
 else
 {$EndIf evNeedPainters}
  Result := inherited COMQueryTool(aTag, IID, Tool, aProcessor);
end;

{ start class TevSectionBreakInterfaceFactory }

function TevSectionBreakInterfaceFactory.COMQueryTool(const aTag: Ik2Tag; const IID: Tl3GUID; out Tool; const aProcessor : InevProcessor): Boolean;
  {override;}
  {-}
begin
 Result := true;
 {$IfDef evNeedPainters}
 if IID.EQ(IevPainter) then
  IevPainter(Tool) := TevSectionBreakPainter.Make(aTag)
 else
 {$EndIf evNeedPainters}
 {$IfDef evNeedHotSpot}
 if IID.EQ(InevHotSpotTester2) then
  InevHotSpotTester2(Tool) := TevSectionBreakHotSpotTester.Make(aTag, aProcessor)
 else
 {$EndIf evNeedHotSpot}
  Result := inherited COMQueryTool(aTag, IID, Tool, aProcessor);
end;

// start class TevSBSInterfaceFactory

function TevSBSInterfaceFactory.COMQueryTool(const aTag: Ik2Tag; const IID: Tl3GUID; out Tool; const aProcessor : InevProcessor): Boolean;
  {override;}
  {-}
begin
 Result := true;
 {$IfDef evNeedPainters}
 if IID.EQ(IevPainter) then
  IevPainter(Tool) := TevSBSPainter.Make(aTag)
 else
 {$EndIf evNeedPainters}
  Result := inherited COMQueryTool(aTag, IID, Tool, aProcessor);
end;

// start class TevSBSRowInterfaceFactory

function TevSBSRowInterfaceFactory.QueryTool(const aTag: Ik2Tag;
  const ID: Tl3IID; out I: Tk2ToolPrim): Bool;
begin
 Result := true;
 {$IfDef evUseVisibleCursors}
 if ID.EQ(ev_iidCursor) then
  I := TevSBSRowCursor.Create(aTag)
 else
 {$EndIf evUseVisibleCursors}
  Result := inherited QueryTool(aTag, ID, I);
end;

function TevSBSRowInterfaceFactory.COMQueryTool(const aTag: Ik2Tag; const IID: Tl3GUID; out Tool; const aProcessor : InevProcessor): Boolean;
  {override;}
  {-}
begin
 Result := true;
 {$IfDef evNeedHotSpot}
 if IID.EQ(InevHotSpotTester2) then
  InevHotSpotTester2(Tool) := TevSBSRowHotSpotTester.Make(aTag, aProcessor)
 else
 {$EndIf evNeedHotSpot}
 Result := inherited COMQueryTool(aTag, IID, Tool, aProcessor);
end;

// start class TevReqRowInterfaceFactory

function TevReqRowInterfaceFactory.COMQueryTool(const aTag: Ik2Tag; const IID: Tl3GUID; out Tool; const aProcessor : InevProcessor): Boolean;
  {override;}
  {-}
begin
 Result := true;
 if IID.SomeOf([IevReq, IevComboReq]) then
 begin
  if not Supports(IUnknown(aTag.IntA[k2_tiModelControl]), IID.IID, Tool) then
   Result := false;
 end//IID.SomeOf([IevReq..
 else
 {$IfDef evNeedHotSpot}
 {$IfNDef evCanEditControlsAsText}
 if IID.EQ(InevHotSpotTester2) then
  InevHotSpotTester2(Tool) := TevReqRowHotSpotTester.Make(aTag, aProcessor)
 else
 {$EndIf  evCanEditControlsAsText}
 {$EndIf evNeedHotSpot}
 {$IfDef evNeedPainters}
 if IID.EQ(IevPainter) then
  IevPainter(Tool) := TevReqRowPainter.Make(aTag)
 else
 {$EndIf evNeedPainters}
  Result := inherited COMQueryTool(aTag, IID, Tool, aProcessor);
end;

// start class TevReqCellInterfaceFactory

function TevReqCellInterfaceFactory.COMQueryTool(const aTag: Ik2Tag; const IID: Tl3GUID; out Tool; const aProcessor : InevProcessor): Boolean;
  {override;}
  {-}
begin
 Result := true;
 {$IfDef evNeedHotSpot}
 {$IfNDef evCanEditControlsAsText}
 if IID.EQ(InevHotSpotTester2) then
  InevHotSpotTester2(Tool) := TevReqCellHotSpotTester.Make(aTag, aProcessor)
 else
 {$EndIf  evCanEditControlsAsText}
 {$EndIf evNeedHotSpot}
  Result := inherited COMQueryTool(aTag, IID, Tool, aProcessor);
end;

// start class TevLeafParaInterfaceFactory

function TevLeafParaInterfaceFactory.COMQueryTool(const aTag: Ik2Tag; const IID: Tl3GUID; out Tool; const aProcessor : InevProcessor): Boolean;
  //override;
  {-}
var
 l_TP : InevLeafPara;  
begin
 Result := true;
 if IID.EQ(InevLeafPara) then
  InevLeafPara(Tool) := TnevLeafPara.Make(aTag)
 else
 if IID.SomeOf([InevPara, InevParaInternal]) then
 begin
  if not aTag.QT(InevLeafPara, l_TP, aProcessor) OR
     not l_TP.QT(IID.IID, Tool, aProcessor) then
   Result := false;
 end//IID.SomeOf([InevPara, InevParaInternal, InevLeafPara])
 else
 if IID.EQ(InevAnchor) then
  InevAnchor(Tool) := TnevLeafParaAnchor.Make(aTag)
 else
  Result := inherited COMQueryTool(aTag, IID, Tool, aProcessor);
end;
  
function TevLeafParaInterfaceFactory.QueryTool(const aTag : Ik2Tag; const ID: Tl3IID; out I: Tk2ToolPrim): Bool;
  //override;
  {-}
begin
 Result := true;
 {$IfDef evUseVisibleCursors}
 if ID.EQ(ev_iidCursor) then
  I := TevLeafParaCursor.Create(aTag)
 else
 if ID.EQ(ev_iidBlock) then
  I := TevLeafParaCursorPair.Create(aTag)
 else
 {$EndIf evUseVisibleCursors}
  Result := inherited QueryTool(aTag, ID, I);
end;

// start class TevSolidParaInterfaceFactory

function TevSolidParaInterfaceFactory.QueryTool(const aTag : Ik2Tag; const ID: Tl3IID; out I: Tk2ToolPrim): Bool;
  //override;
  {-}
begin
 Result := true;
 {$IfDef evUseVisibleCursors}
 if ID.EQ(ev_iidCursor) then
  I := TevSolidParaCursor.Create(aTag)
 else
 if ID.EQ(ev_iidBlock) then
  I := TevSolidParaCursorPair.Create(aTag)
 else
 {$EndIf evUseVisibleCursors}
  Result := inherited QueryTool(aTag, ID, I);
end;

function TevSolidParaInterfaceFactory.COMQueryTool(const aTag: Ik2Tag; const IID: Tl3GUID; out Tool; const aProcessor : InevProcessor): Boolean;
  //override;
  {-}
begin
 Result := true;
 if IID.EQ(InevAnchor) then
  InevAnchor(Tool) := TnevSolidParaAnchor.Make(aTag)
 else
  Result := inherited COMQueryTool(aTag, IID, Tool, aProcessor);
end;

{$IfDef evUseFormula}
// start class TevFormulaInterfaceFactory

function TevFormulaInterfaceFactory.QueryTool(const aTag : Ik2Tag; const ID: Tl3IID; out I: Tk2ToolPrim): Bool;
  //override;
  {-}
begin
 {$IfDef evUseVisibleCursors}
 Result := true;
 if ID.EQ(ev_iidCursor) then
  I := TevFormulaCursor.Create(aTag)
{ else if ID.EQ(ev_iidBlock) then
  I := TevTextCursorPair.Create(aTag)}
 else
 {$EndIf evUseVisibleCursors}
  Result := inherited QueryTool(aTag, ID, I);
end;

function TevFormulaInterfaceFactory.COMQueryTool(const aTag: Ik2Tag; const IID: Tl3GUID; out Tool; const aProcessor : InevProcessor): Boolean;
  //override;
  {-}
begin
 Result := true;
 {$IfDef evNeedPainters}
 if IID.EQ(IevPainter) then
  IevPainter(Tool) := TevFormulaPainter.Make(aTag)
 else
 {$EndIf evNeedPainters}
 if IID.EQ(InevTextPara) then
  InevTextPara(Tool) := TnevFormulaPara.Make(aTag)
 else
  Result := inherited COMQueryTool(aTag, IID, Tool, aProcessor);
end;
{$EndIf evUseFormula}

function TevControlParaInterfaceFactory.QueryTool(const aTag : Ik2Tag; const ID: Tl3IID; out I: Tk2ToolPrim): Bool;
  //override;
  {-}
begin
 {$IfNDef evCanEditControlsAsText}
 {$IfDef evUseVisibleCursors}
 Result := true;
 if ID.EQ(ev_iidCursor) then
  I := TevControlParaCursor.Create(aTag)
 else
 if ID.EQ(ev_iidBlock) then
  I := TevControlParaCursorPair.Create(aTag)
 else
 {$EndIf evUseVisibleCursors}
 {$EndIf evCanEditControlsAsText}
  Result := inherited QueryTool(aTag, ID, I);
end;

function TevControlParaInterfaceFactory.COMQueryTool(const aTag       : Ik2Tag;
                                                     const IID        : Tl3GUID;
                                                     out Tool         ;
                                                     const aProcessor : InevProcessor): Boolean;
  //override;
  {-}
var
 l_CP: IevControlFriend;
begin
 Result := true;
 if IID.EQ(IevControlFriend) then
  IevControlFriend(Tool) := TnevControlPara.Make(aTag)
 else
 if IID.SomeOf([InevPara, InevParaInternal, InevLeafPara, InevTextPara, IevControl,
  IevCommonControl, IevControlFriend]) then
 begin
  if not aTag.QT(IevControlFriend, l_CP, aProcessor) OR
     not l_CP.QT(IID.IID, Tool, aProcessor) then
   Result := false;
 end//IID.SomeOf([InevPara, InevParaInternal, InevLeafPara])
 else
 if IID.SomeOf([IevCustomParaTool, IevCustomEditorControl, IevEditorControl, IevEditorControlField, IevEditorFieldWithTree, IevEditorCalendarField]) then
 begin
  if not Supports(IUnknown(aTag.IntA[k2_tiModelControl]), IID.IID, Tool) then
   Result := false;
 end//IID.SomeOf([IevCustomEditorControl, IevEditorControl..
 else
 {$IfDef evNeedHotSpot}
 {$IfNDef evCanEditControlsAsText}
 if IID.EQ(InevHotSpotTester2) then
  InevHotSpotTester2(Tool) := TevControlParaHotSpotTester.Make(aTag)
 else
 {$EndIf  evCanEditControlsAsText}
 {$EndIf evNeedHotSpot}
 {$IfDef evNeedPainters}
 if IID.EQ(IevPainter) then
  IevPainter(Tool) := TevControlParaPainter.Make(aTag)
 else
 {$EndIf evNeedPainters}
  Result := inherited COMQueryTool(aTag, IID, Tool, aProcessor);
end;

{ TevControlsBlockInterfaceFactory }

function TevControlsBlockInterfaceFactory.COMQueryTool(const aTag       : Ik2Tag;
                                                       const IID        : Tl3GUID;
                                                       out Tool         ;
                                                       const aProcessor : InevProcessor): Boolean;
var
 l_CP: IevCommonControl;
begin
 Result := true;
 if IID.SomeOf([IevCustomParaTool, IevQueryGroup, IevCustomEditorControl, IevEditorControl]) then
 begin
  if not Supports(IUnknown(aTag.IntA[k2_tiModelControl]), IID.IID, Tool) then
   Result := false;
 end//IID.SomeOf([IevCustomParaTool, IevQueryGroup..
 else
 if IID.EQ(IevCommonControl) then
  IevCommonControl(Tool) := TnevControlsBlock.Make(aTag)
 else
 if IID.SomeOf([InevPara, InevParaInternal, InevParaList]) then
 begin
  if not aTag.QT(IevCommonControl, l_CP, aProcessor) OR
     not l_CP.QT(IID.IID, Tool, aProcessor) then
   Result := false;
 end//IID.SomeOf([InevPara, InevParaInternal, InevLeafPara])
 else
 {$IfDef evNeedHotSpot}
 {$IfNDef evCanEditControlsAsText}
 if IID.EQ(InevHotSpotTester2) then
  InevHotSpotTester2(Tool) := TevControlsBlockHotSpotTester.Make(aTag, aProcessor)
 else
 {$EndIf  evCanEditControlsAsText}
 {$EndIf evNeedHotSpot}
 {$IfDef evNeedPainters}
 if IID.EQ(IevPainter) then
  IevPainter(Tool) := TevControlsBlockPainter.Make(aTag)
 else
 {$EndIf evNeedPainters}
(* if IID.EQ(IevAnchor) then
  IevAnchor(Tool) := TevAnchor.Make(aTag)
 else*)
  Result := inherited COMQueryTool(aTag, IID, Tool, aProcessor);
end;

function TevControlsBlockInterfaceFactory.QueryTool(const aTag : Ik2Tag; const ID: Tl3IID;
  out I: Tk2ToolPrim): Bool;
begin
 Result := true;
 {$IfDef evUseVisibleCursors}
 {$IfNDef evCanEditControlsAsText}
(* if ID.EQ(ev_iidBlock) then
  I := TevDocumentPartCursorPair.Create(aTag)
 else*)
 if ID.EQ(ev_iidCursor) then
  I := TevControlsBlockCursor.Create(aTag)
 else
 {$EndIf  evCanEditControlsAsText}
 {$EndIf evUseVisibleCursors}
  Result := inherited QueryTool(aTag, ID, I);
end;

{ TevQueryCardInterfaceFactory }

function TevQueryCardInterfaceFactory.COMQueryTool(const aTag: Ik2Tag;
  const IID: Tl3GUID; out Tool; const aProcessor: InevProcessor): Boolean;
begin
 Result := inherited COMQueryTool(aTag, IID, Tool, aProcessor);
end;

function TevQueryCardInterfaceFactory.QueryTool(const aTag: Ik2Tag;
  const ID: Tl3IID; out I: Tk2ToolPrim): Bool;
begin
 Result := true;
 {$IfDef evUseVisibleCursors}
 if ID.EQ(ev_iidCursor) then
  I := TevQueryCardCursor.Create(aTag)
 else
 {$EndIf evUseVisibleCursors}
  Result := inherited QueryTool(aTag, ID, I);
end;

function TevReqCellInterfaceFactory.QueryTool(const aTag: Ik2Tag;
  const ID: Tl3IID; out I: Tk2ToolPrim): Bool;
begin
 Result := True;
 {$IfDef evUseVisibleCursors}
 {$IfNDef evCanEditControlsAsText}
 if ID.EQ(ev_iidCursor) then
  I := TevReqCellCursor.Create(aTag)
 else
 {$EndIf  evCanEditControlsAsText}
 {$EndIf evUseVisibleCursors}
  Result := inherited QueryTool(aTag, ID, I);
end;

function TevPageBreakInterfaceFactory.QueryTool(const aTag: Ik2Tag;
  const ID: Tl3IID; out I: Tk2ToolPrim): Bool;
begin
 Result := true;
 {$IfDef evUseVisibleCursors}
 if ID.EQ(ev_iidCursor) then
  I := TevBreakParaCursor.Create(aTag)
 else
 {$EndIf evUseVisibleCursors}
  Result := inherited QueryTool(aTag, ID, I);
end;

end.

