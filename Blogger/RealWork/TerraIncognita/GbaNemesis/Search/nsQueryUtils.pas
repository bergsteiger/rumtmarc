unit nsQueryUtils;

// $Id: nsQueryUtils.pas,v 1.10 2013/04/24 09:35:56 lulin Exp $

// $Log: nsQueryUtils.pas,v $
// Revision 1.10  2013/04/24 09:35:56  lulin
// - портируем.
//
// Revision 1.9  2012/07/26 18:36:15  lulin
// {RequestLink:378540022}
//
// Revision 1.8  2012/07/24 18:26:20  lulin
// - чистка кода.
//
// Revision 1.7  2012/04/28 09:51:47  lulin
// {RequestLink:294599518}
//
// Revision 1.6  2012/04/27 15:57:49  lulin
// {RequestLink:361404275}
//
// Revision 1.5  2012/04/04 09:02:56  lulin
// {RequestLink:237994598}
//
// Revision 1.4  2012/03/27 15:01:14  lulin
// - выделяем общую часть.
//
// Revision 1.3  2012/03/23 13:03:46  lulin
// - отпиливаем настройки.
//
// Revision 1.2  2012/03/12 15:10:29  lulin
// {RequestLink:296618130}
//
// Revision 1.1  2011/12/15 16:24:19  lulin
// {RequestLink:320734796}
//
// Revision 1.26  2011/06/28 19:19:47  lulin
// {RequestLink:254944102}.
//
// Revision 1.25  2011/06/28 17:54:51  lulin
// {RequestLink:254944102}.
//
// Revision 1.24  2011/06/27 13:54:04  lulin
// {RequestLink:254944102}.
//
// Revision 1.23  2011/06/23 15:30:00  lulin
// {RequestLink:254944102}.
//
// Revision 1.22  2011/06/02 11:02:01  lulin
// {RequestLink:266897327}.
//
// Revision 1.21  2011/03/11 13:12:32  lulin
// {RequestLink:228688510}. №1.
//
// Revision 1.20  2010/12/22 18:24:19  lulin
// {RequestLink:242845936}.
//
// Revision 1.19  2010/11/22 13:39:08  lulin
// [$242845500].
//
// Revision 1.18  2010/11/01 17:20:06  lulin
// {RequestLink:237994238}.
// - передаём ссылку на "модель".
// - делаем, чтобы собирались другие проекты.
//
// Revision 1.17  2010/11/01 16:15:59  lulin
// {RequestLink:237994238}.
// - настраиваем вычитанные атрибуты.
//
// Revision 1.16  2010/10/25 12:13:56  lulin
// {RequestLink:236722190}.
//
// Revision 1.15  2010/10/25 09:55:03  lulin
// {RequestLink:237502802}.
// Шаг №3.
//
// Revision 1.14  2010/10/25 08:36:46  lulin
// {RequestLink:237502802}.
// Шаг №2.
//
// Revision 1.13  2010/10/22 19:48:31  lulin
// {RequestLink:237502802}.
// Шаг №1.
//
// Revision 1.12  2010/10/04 12:32:31  oman
// - new: Заглушки и не падаем {RequestLink:235057812}
//
// Revision 1.11  2010/06/01 09:15:00  oman
// - new: {RequestLink:216793285}
//
// Revision 1.10  2010/04/26 17:22:31  lulin
// {RequestLink:159352361}.
// - bug fix: не компилировался Admin.
//
// Revision 1.9  2010/04/26 16:45:24  lulin
// {RequestLink:159352361}.
// - вычищаем код старого стиля.
//
// Revision 1.8  2010/04/09 07:52:18  oman
// - new: {RequestLink:201491867}
//
// Revision 1.7  2010/04/08 13:28:31  oman
// - new: Заготовки {RequestLink:201491867}
//
// Revision 1.6  2009/12/09 13:08:20  lulin
// {RequestLink:124453871}.
//
// Revision 1.5  2009/12/08 15:27:29  lulin
// - переносим TdeSearchInfo на модель.
//
// Revision 1.4  2009/12/07 19:06:13  lulin
// - удалил ненужный модуль.
//
// Revision 1.3  2009/11/05 11:41:39  oman
// - new: {RequestLink:121160631}
//
// Revision 1.2  2009/11/02 09:25:03  oman
// - new: {RequestLink:136253296}
//
// Revision 1.1  2009/10/29 14:35:44  lulin
// - вторая волна компании по борьбе со старыми внутренними операциями.
//
// Revision 1.205  2009/10/26 09:24:06  oman
// - fix: {RequestLink:121160631}
//
// Revision 1.204  2009/10/19 06:47:20  oman
// - new: Подключаемся к инфарму {RequestLink:164596503}
//
// Revision 1.203  2009/10/16 13:26:59  oman
// - new: Переносим на модель {RequestLink:164596503}
//
// Revision 1.202  2009/10/16 08:38:27  oman
// - new: Учимся распознавать разный контекст {RequestLink:164596503}
//
// Revision 1.201  2009/10/15 09:23:43  oman
// - new: Чистим устаревшие методы доступа {RequestLink:122652464}
//
// Revision 1.200  2009/10/13 08:33:57  oman
// - new:  {RequestLink:164599602}
//
// Revision 1.199  2009/09/22 14:49:20  lulin
// - переносим модуль поиска на модель.
//
// Revision 1.198  2009/09/21 17:31:09  lulin
// - избавляемся от внутренних методов модуля, связанных с базовым поиском.
//
// Revision 1.197  2009/09/09 18:55:15  lulin
// - переносим на модель код проектов.
//
// Revision 1.196  2009/09/07 17:54:09  lulin
// - переводим консультации на фабрики.
//
// Revision 1.195  2009/09/07 12:26:45  lulin
// - сделана фабрика для открытия списков.
//
// Revision 1.194  2009/09/07 08:35:20  lulin
// - для открытия автореферата после поиска делаем фабрику.
//
// Revision 1.193  2009/09/03 18:48:56  lulin
// - реструктуризируем поиски и удаляем ненужное.
//
// Revision 1.192  2009/09/03 13:25:43  lulin
// - делаем прецеденты более изолированными друг от друга.
//
// Revision 1.191  2009/08/26 08:15:06  lulin
// - декорируем имена операций, чтобы можно было искать.
// - bug fix: не собирались мониторинги.
//
// Revision 1.190  2009/08/19 11:07:18  oman
// - new: Зачистка - {RequestLink:159355458}
//
// Revision 1.189  2009/08/12 12:21:12  oman
// - new: Добиваемся компилируемости - {RequestLink:159355458}
//
// Revision 1.188  2009/08/12 10:48:18  oman
// - new: Первое приближение - {RequestLink:159355458}
//
// Revision 1.187  2009/08/04 11:25:31  lulin
// [$159351827].
//
// Revision 1.186  2009/07/31 17:29:52  lulin
// - убираем мусор.
//
// Revision 1.185  2009/06/18 07:53:38  oman
// - new: строим полный список по новому - [$140286494]
//
// Revision 1.184  2009/06/15 11:20:45  oman
// - fix: отрезаем запятую - [$151587436]
//
// Revision 1.183  2009/06/03 10:43:13  oman
// - new: Готовим проекты к отпилу - [$148014435]
//
// Revision 1.182  2009/02/20 12:25:12  lulin
// - <K>: 136941122.
//
// Revision 1.181  2009/02/10 19:03:13  lulin
// - <K>: 133891247. Вычищаем морально устаревший модуль.
//
// Revision 1.180  2009/02/09 19:17:18  lulin
// - <K>: 133891247. Выделяем интерфейсы поиска.
//
// Revision 1.179  2009/01/12 15:58:21  lulin
// - <K>: 133138664. № 22.
//
// Revision 1.178  2008/12/08 09:32:33  lulin
// - <K>: 128292941.
//
// Revision 1.177  2008/10/30 15:09:03  lulin
// - <K>: 121159648.
//
// Revision 1.176  2008/05/14 11:37:17  mmorozov
// - bugfix: при возврате в список из документа не применяем постоянные фильтры.
//
// Revision 1.175  2008/05/08 06:28:12  mmorozov
// - применение постоянных фильтров;
//
// Revision 1.174  2008/05/08 04:58:07  mmorozov
// - rename: QueryInfo -> SearchInfo;
//
// Revision 1.173  2008/05/06 10:42:41  oman
// - new: При неудачном поиске БП по именам выводим соответствующее сообщение (cq29006)
//
// Revision 1.172  2008/05/05 12:05:19  mmorozov
// - new: показ документа в извлечениях доступен только после поиска в котором выбрано значение реквизита "Раздел\Тема" (CQ: OIT5-9285, 9656).
//
// Revision 1.171  2008/04/21 11:30:34  mmorozov
// - bugfix: при поиске контекста в запросе не пустой результат возвращается только если контекст найден (CQ: OIT5-28916);
//
// Revision 1.170  2008/04/02 11:42:31  mmorozov
// - пилим общую функциональность списка (создать новый список);
//
// Revision 1.169  2008/03/26 12:01:49  oman
// cleanup
//
// Revision 1.168  2008/03/21 08:09:50  oman
// - fix: Для ПЛП не даем обращаться в правовую поддержку
//
// Revision 1.167  2008/03/19 12:45:39  oman
// - fix: Не падаем в случае отсутствия значений
//
// Revision 1.166  2008/03/19 12:35:30  oman
// - fix: Не падаем в случае отсутствия значений
//
// Revision 1.165  2008/03/12 11:32:44  oman
// - new: Заготовки для ПЛП - пишем в журнал работы
//
// Revision 1.164  2008/03/12 08:58:35  oman
// - new: Заготовки для ПЛП - заготовки для фильтров
//
// Revision 1.163  2008/03/12 08:28:39  oman
// - new: Заготовки для ПЛП - типы форм
//
// Revision 1.162  2008/03/11 07:37:26  oman
// - Не собирались мониторинги
//
// Revision 1.161  2008/02/29 07:30:53  lulin
// - cleanup.
//
// Revision 1.160  2008/02/13 08:08:33  oman
// - new: Обработка прерывания поиска (cq28225)
//
// Revision 1.159  2008/02/13 07:28:17  oman
// Cleanup
//
// Revision 1.158  2008/01/10 07:23:10  oman
// Переход на новый адаптер
//
// Revision 1.156.2.3  2007/12/28 10:36:37  mmorozov
// - MERGE WITH HEAD;
//
// Revision 1.156.2.2  2007/11/29 12:44:43  oman
// Перепиливаем на новый адаптер
//
// Revision 1.156.2.1  2007/11/21 15:07:41  oman
// Перепиливаем на новый адаптер
//
// Revision 1.157  2007/12/27 16:42:12  mmorozov
// - new: новая сборка для показа автореферата после поиска, без вкладки со списком новостных лент (CQ: OIT5-27876);
//
// Revision 1.156  2007/11/01 13:36:36  oman
// - fix: Запрещаем админам пользоваться правовой поддержкой (cq27277)
//
// Revision 1.155  2007/10/16 09:34:33  oman
// - fix: Насильно разрешаем обзор изменений законодательства для
//  внутренней версии (cq27081)
//
// Revision 1.154  2007/10/15 13:10:03  oman
// - fix: При успешном не базовом поиске считаем, что БП был
//  закрыт пользователем (cq27057)
//
// Revision 1.153  2007/09/10 14:38:18  oman
// - fix: Не выводим нулевые значения в сообщении (cq26519)
//
// Revision 1.152  2007/09/10 14:03:43  oman
// - fix: Не выводим нулевые значения в сообщении (cq26519)
//
// Revision 1.151  2007/09/04 07:32:23  oman
// - fix: Историю контекста меняем при собственно поиске (cq26586)
//
// Revision 1.150  2007/08/14 14:29:48  lulin
// - оптимизируем перемещение блоков памяти.
//
// Revision 1.149  2007/08/09 10:05:49  oman
// - new: Успешный БП из ОМ трактуем как ручной вызов БП - т.е. в
//  открывшемся списке появиться панель БП (cq26300)
//
// Revision 1.148  2007/08/07 11:01:47  oman
// - new: При вызове ППО после пустого ППР инициализируем запрос (cq25836)
//
// Revision 1.147  2007/07/27 07:08:28  oman
// - fix: При локальном поиске, если ничего не найдено предлагаем
//  поискать глобально (cq26041)
//
// Revision 1.146  2007/07/11 13:31:01  oman
// Hint fix
//
// Revision 1.145  2007/07/11 12:55:43  oman
// - fix: При контекстном поиске парные двойные кавычки заменяем
//  прямыми (cq25909)
//
// Revision 1.144  2007/06/01 10:38:00  lulin
// - восстановил загрузку текста атрибута по-умолчанию (<K>-14516770).
//
// Revision 1.143  2007/05/23 10:40:17  oman
// - new: Новый тип запросов "Базовый поиск" (cq25374)
//
// Revision 1.142  2007/05/17 12:40:06  lulin
// - удаляем контекст из комментариев.
//
// Revision 1.141  2007/05/17 12:03:45  oman
// cleanup
//
// Revision 1.140  2007/05/17 11:08:34  oman
// cleanup
//
// Revision 1.139  2007/05/17 10:41:23  lulin
// - удаляем контекст из комментариев.
//
// Revision 1.138  2007/05/17 10:35:39  lulin
// - вычищаем мусор.
//
// Revision 1.137  2007/05/17 09:10:18  lulin
// - удаляем устаревший модуль.
//
// Revision 1.136  2007/05/17 09:04:15  lulin
// - вычищаем мусор.
//
// Revision 1.135  2007/05/17 06:52:10  oman
// - fix: При поиске по ППР в историю контекстов добавляем и
//  "слова в названии"
//
// Revision 1.134  2007/05/16 11:40:06  oman
// - new: Логика сохранения истории запросов (cq25145)
//
// Revision 1.133  2007/05/16 08:59:17  oman
// Cleanup - лишняя операция и лишний параметр
//
// Revision 1.132  2007/05/08 15:21:18  oman
// - new: Загрузка параметров базового поиска из истории запросов
//  карточки (cq25145)
//
// Revision 1.131  2007/04/24 06:45:15  oman
// - fix: локальный параметр скрывал формальный (cq25147)
//
// Revision 1.130  2007/04/23 10:03:54  oman
// - fix: Оказалось _IQuery не всегда имеет имя - убрал ассерт (cq25139)
//
// Revision 1.129  2007/04/23 08:27:28  oman
// - new: Вычищаем старую ППР и старые фильтры - _UserTypes (cq25125)
//
// Revision 1.128  2007/04/20 08:31:13  lulin
// - cleanup.
//
// Revision 1.127  2007/04/20 08:12:01  oman
// - fix: Было AV, если ничего не нашлось (cq25120)
//
// Revision 1.126  2007/04/20 06:18:49  oman
// - fix: Для решения о показе запроса используем сумму количества
//  документов и редакций.
//
// Revision 1.125  2007/04/19 14:20:48  oman
// - fix: При построении списка после поиска выводим еще и количество
//  редакций/вхождений (cq24319)
//
// Revision 1.124  2007/04/19 13:17:45  oman
// cleanup - запрос всегда должен иметь имя - облегчаем
//  страховочный код (cq24319)
//
// Revision 1.123  2007/04/05 11:16:47  lulin
// - cleanup.
//
// Revision 1.122  2007/03/29 13:47:10  oman
// Вычитываем таки параметры контекстного фильтра для атрибутов
//
// Revision 1.121  2007/03/27 12:43:19  oman
// Пользуем родные деревья для атрибутов
//
// Revision 1.120  2007/03/27 11:59:37  oman
// Переводим тэг атрибутов на константную строку
//
// Revision 1.119  2007/03/20 09:27:03  lulin
// - используем строки с кодировкой.
//
// Revision 1.118  2007/03/16 16:56:55  lulin
// - избавляемся от излишнего копирования и преобразования строк.
//
// Revision 1.117  2007/03/15 15:21:18  lulin
// - заменяем на свою функцию форматирования строки.
//
// Revision 1.116  2007/02/28 14:17:43  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.115  2007/02/16 15:16:51  lulin
// - cleanup.
//
// Revision 1.114  2007/02/14 17:04:56  lulin
// - избавляемся от использования стандартных строк.
//
// Revision 1.113  2007/02/14 16:13:50  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.112  2007/02/14 14:24:04  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.111  2007/02/13 14:33:08  lulin
// - cleanup.
//
// Revision 1.110  2007/02/13 10:10:35  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.109  2007/02/13 09:37:43  lulin
// - cleanup.
//
// Revision 1.108  2007/02/13 09:33:41  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.107  2007/02/12 19:35:50  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.106  2007/02/12 18:06:01  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.105  2007/02/09 15:56:20  mmorozov
// - new: правильно реализуем поиск по контексту в простом основном меню (CQ: OIT5-24353);
//
// Revision 1.104  2007/02/08 15:31:45  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.103  2007/02/07 15:14:27  mmorozov
// - change: TbsListAdditionalDataSource -> _TbsListSynchroForm;
//
// Revision 1.102  2007/02/02 08:38:49  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.101  2007/01/20 18:36:25  lulin
// - вычищаем ненужное создание параметров.
//
// Revision 1.100  2007/01/19 14:35:21  mmorozov
// - new: поиск по контексту в простом варианте основного меню (CQ: OIT5-23939);
//
// Revision 1.99  2006/12/14 14:49:54  oman
// - fix: Другой текст сообщения для ненайденных документов с
//  комментариями (cq23083)
//
// Revision 1.98  2006/12/07 08:11:34  lulin
// - cleanup.
//
// Revision 1.97  2006/12/01 15:20:33  mmorozov
// - new: информация о локали выделана в отдельный интерфейс;
//
// Revision 1.96  2006/11/28 15:35:28  mmorozov
// - опубликован идентификатор языка приложения IafwApplication.LocateId: LCID;
// - существовавшее свойство LocateId переименовано в DetailedLanguageId;
// - после чтения строкового идентфикатора языка приложения проверяем его на допустимость;
// - формируем идентфикаторы языков приложения по первому требованию;
// - при определении языка прилоежния используем идентфикаторы опубликованные в afwInterfaces;
//
// Revision 1.95  2006/11/03 09:45:25  oman
// Merge with B_NEMESIS_6_4_0
//
// Revision 1.94.2.4  2006/10/25 07:29:48  oman
// Продолжаем избавлятся от StdStr
//
// Revision 1.94.2.3  2006/10/23 05:51:12  lulin
// - переход по ссылке переделан с обработки мыши на специально для этого выделенное событие.
// - вычищены ненужные операции.
//
// Revision 1.94.2.2  2006/10/17 13:18:57  oman
// - fix: "Заточка" для учета русского языка (cq23019)
//
// Revision 1.94.2.1  2006/10/13 13:50:55  oman
// - new: строчки для поиска документов без склонений для других
//  языков (cq23019)
//
// Revision 1.94  2006/07/28 14:57:28  mmorozov
// - _format code;
//
// Revision 1.93  2006/07/27 13:39:17  mmorozov
// - new: замеры открытия списка после поиска (CQ: OIT500021557);
// - rename: интерфейсы профайлеров, некторые методы, константы;
//
// Revision 1.92  2006/05/12 13:26:21  dinishev
// В случае, если ничего не найдено на запрос на получение всех комменатриев пользователя, выводим стандартный диалог.
//
// Revision 1.91  2006/05/12 11:42:54  dinishev
// По другому обрабатываем доступность консультационной услуги
//
// Revision 1.90  2006/05/06 13:41:16  lulin
// - вытерто упоминание про опцию поиска "С морфологией".
//
// Revision 1.89  2006/04/19 13:34:29  oman
// - new beh: перекладываем StdStr в _StdRes
//
// Revision 1.88  2006/04/18 08:54:02  mmorozov
// - new: оценка консультации;
// - new: менеджер ссылок (bsHyperlinkManager);
// - warnings fix;
//
// Revision 1.87  2006/04/17 12:08:51  oman
// - change: Избавляем бизнес-объекты (слой модели) от обязательств
//  контроллера (хинты, imageindex)
// - new beh: перекладываем StdStr в _StdRes
//
// Revision 1.86  2006/04/17 10:54:27  mmorozov
// - изменения связанные с повлением формы оценка консультации;
// - некоторые типы переименованны;
//
// Revision 1.85  2006/04/06 14:53:35  dinishev
// Переделка диалога с дополнительной кнопкой
//
// Revision 1.84  2006/04/05 13:50:46  dinishev
// Новое сообщение для консультаций
//
// Revision 1.83  2006/04/03 15:56:59  dinishev
// _CleanUp
//
// Revision 1.82  2006/04/03 07:07:23  mmorozov
// - remove: константа ccqnLawSupport удалена за ненадобностью;
//
// Revision 1.81  2006/03/31 13:44:13  mmorozov
// - change: расширился TQueryType;
//
// Revision 1.80  2006/03/28 12:05:19  mmorozov
// - change: изменился тип возвращаемого результата после поиска;
//
// Revision 1.79  2006/03/28 08:09:41  oman
// - change: Изводим %s в константах.
//
// Revision 1.78  2006/03/21 15:03:58  oman
// - new beh: Перекладываем все текстовые константы в три места (StdStr, DebugStr и SystemStr)
//
// Revision 1.77  2006/03/20 15:10:21  dinishev
// Поддержка нового типа записи в журнал
//
// Revision 1.76  2006/03/17 14:30:42  dinishev
// Cleanup
//
// Revision 1.75  2006/03/16 10:06:33  dinishev
// Bug fix: запрос поиска с правовой поддержкой сохранялся в журнал
//
// Revision 1.74  2006/02/08 09:56:18  mmorozov
// - bugfix: не вычленялся контекст из запроса сформированного ППР 5.х;
//
// Revision 1.73  2005/12/19 14:07:30  dinishev
// Bug fix: не бились контекстные строки при вставке из буфера, из-за чего нельзя было выполнить запрос
//
// Revision 1.72  2005/11/16 15:56:51  demon
// - new message: сообщение при нулевом допоиске в списке
//
// Revision 1.71  2005/11/14 12:58:02  fireton
// - bug fix: только поиск в теле документа пробрасывается в контекст
//
// Revision 1.70  2005/10/10 17:53:33  demon
// - fix: количество найденных документов после поиска берем из Query + количество отфильтрованных спрашиваем после фильтрации
//
// Revision 1.69  2005/10/07 14:47:04  dinishev
// New UserType: slqtOldFilters - для КЗ с фильтром 5.x
//
// Revision 1.68  2005/10/07 09:10:26  mmorozov
// - появилась возможность допоиска в списке;
// - модуль nsQueryNewExecuteProgressIndicator больше не используется;
//
// Revision 1.67  2005/10/05 11:28:04  mmorozov
// new: установка области поиска при открытии карточки ППР 5.х;
//
// Revision 1.66  2005/10/03 17:34:15  demon
// - new behavior: перевели реализацию на IEntityBase
//
// Revision 1.65  2005/09/30 14:42:15  fireton
// - bug fix: параметры области поиска теперь передаются в контекст
//
// Revision 1.64  2005/09/28 15:46:03  fireton
// - bug fix: не выковыривался контекст поиска из запроса
//
// Revision 1.63  2005/09/27 11:56:58  demon
// - fix: не сохранялись запросы в историю
//
// Revision 1.62  2005/09/19 14:14:33  lulin
// - bug fix: сделано так чтобы не было exception после поиска по КЗ.
//
// Revision 1.61  2005/09/15 14:11:08  dinishev
// Загрузка значений по умолчанию + Bug fix: AV при вводе символов с клавиатуры
//
// Revision 1.60  2005/09/15 13:18:39  mmorozov
// - вычищение старого списка и переход на новый;
//
// Revision 1.59  2005/09/13 13:28:37  mmorozov
// cleanup: вычищен закомментированный код;
//
// Revision 1.58  2005/08/24 09:30:26  mmorozov
// new: открытие нового списка после поиска;
//
// Revision 1.57  2005/08/23 12:01:02  mmorozov
// new: поиск с использованием нового списка;
//
// Revision 1.56  2005/08/22 15:35:48  mmorozov
// no message
//
// Revision 1.55  2005/08/18 10:38:11  dinishev
// Bug fix: переиненованы названия атрибутов
//
// Revision 1.54  2005/07/22 08:43:44  mmorozov
// - переезд на новый запрос;
//
// Revision 1.53  2005/07/20 15:01:16  mmorozov
// new: global function LoadContextNew;
//
// Revision 1.52  2005/07/19 15:00:39  mmorozov
// change: сигнатура LoadDictionary;
//
// Revision 1.51  2005/06/30 07:48:05  cyberz
// READY FOR TIE-TEMPLATE GENERATION
//
// Revision 1.50  2005/03/24 08:20:02  mmorozov
// new: при постороении автореферата используются отдельные настройки для выдачи предупреждения о количестве найденных;
//
// Revision 1.49  2005/03/22 09:39:56  am
// change: поправил имя, с DocmentsNotFound на DocumentsNotFound + поменял текст сообщения
//
// Revision 1.48  2005/03/09 08:57:32  demon
// - new behavior: открываем автореферат после построения Обзора законодательства (пока автореферат не приезжает - ничего не происходит).
//
// Revision 1.47  2005/03/06 14:36:55  demon
// - fix: можно было открыть пустой список документов с комментариями.
//
// Revision 1.46  2005/03/04 15:39:57  demon
// - new behavior: вставлена ветка для открытия автореферата после поиска.
//
// Revision 1.45  2005/03/04 13:05:45  demon
// - new behavior: В связи с расширением вида апросов добавлена обработка новых элементов (в частности QT_Review)
//
// Revision 1.44  2005/03/03 16:49:57  demon
// - new behavior: обработаны новые типы запросов
//
// Revision 1.43  2005/02/28 09:34:00  demon
// - new behavior: При создании пустого _IQuery на адаптере нужно указывать его тип
// - new behavior: поле _IQuery.Type стало readonly
//
// Revision 1.42  2005/01/12 16:29:57  lulin
// - контекстный поиск полностью переведен с операций VCM на интерфейсы AFW.
//
// Revision 1.41  2005/01/11 12:53:07  lulin
// - cleanup: вычищены ненужные интерфейсы, а нужные переехали в "правильное" место.
//
// Revision 1.40  2004/11/30 08:41:07  mmorozov
// new: код для проверки работы _IQuery.NewExecute (обрамлен дефайном _nsNewQueryExecute);
//
// Revision 1.39  2004/11/26 14:58:59  demon
// - new behavior: не переприсваиваем имя после клонирования запроса перед записью в Журнал.
//
// Revision 1.38  2004/11/24 13:32:34  fireton
// - change: добавляем в IContextContainer область поиска контекста
//
// Revision 1.37  2004/11/24 10:10:52  demon
// - new behavior: при сохранении запроса в Журнал, он клонируется, для того чтобы пользовательский запрос не становился сохраненным.
//
// Revision 1.36  2004/11/23 09:24:58  demon
// - new behavior: добавлено сохранение запросов и документов в журнал
//
// Revision 1.35  2004/10/01 11:12:18  am
// change: если в ППР вёлся поиск по контексту только в названиях - не поднимаем в документе форму контекстного поиска.
//
// Revision 1.34  2004/09/24 09:09:24  mmorozov
// change: переименованны классы;
//
// Revision 1.33  2004/09/23 14:52:29  demon
// - new behavior: выделена отдельная функция _nsSearchExecute, которая проводит поиск и возвращает IList в качесве результата
//
// Revision 1.32  2004/09/17 12:58:54  lulin
// - все что было возможно перевел с _TStrings на IvcmStrings.
//
// Revision 1.31  2004/09/15 14:11:25  lulin
// - заменил _TStringList на _TvcmStringList.
//
// Revision 1.30  2004/09/10 13:58:03  demon
// - fix: удалены избыточные сообщения
//
// Revision 1.29  2004/09/07 16:22:03  law
// - перевел Nemesis на кешированные обьекты.
//
// Revision 1.28  2004/08/12 06:39:29  mmorozov
// change: вместо старого _ParseContext в модуль перенесен метод _ParseContext из nsAttributeSearch;
//
// Revision 1.27  2004/08/06 14:42:06  demon
// - cleanup: remove warnings and hints
//
// Revision 1.26  2004/07/28 15:12:56  mmorozov
// new: _InsContextContainer, _TnsContextContainer property WithMorfo;
// new: procedure _nsSearch parameter aWithMorfo;
//
// Revision 1.25  2004/07/22 09:27:13  mmorozov
// change: вместо TagSearchList используется AttributeSearchList;
//
// Revision 1.24  2004/07/07 07:33:08  am
// change: LoadLogicFromQuery
//
// Revision 1.23  2004/07/02 14:36:48  mmorozov
// change: сигнатура LoadContext;
//
// Revision 1.22  2004/07/02 10:45:21  am
// change: LoadLogicFromQuery/SaveLogicToQuery - временный обход бага с деревом
//
// Revision 1.21  2004/07/02 09:19:24  am
// new: LoadLogicFromQuery/SaveLogicToQuery + временный обход бага в новом дереве
//
// Revision 1.20  2004/06/04 15:01:51  mmorozov
// - переход на новые настройки;
//
// Revision 1.19  2004/05/26 11:02:54  am
// bugfix: вызов формы поиска контекста, когда надо, при автоматическом открытии документа (из списка с одним же)
//
// Revision 1.18  2004/04/06 09:43:15  nikitin75
// - переходим на IStringOld;
//
// Revision 1.17  2004/04/05 13:54:16  nikitin75
// - переходим на IStringOld;
//
// Revision 1.16  2004/03/26 07:36:05  kool
// fix for names
//
// Revision 1.15  2004/03/26 07:31:07  kool
// fixes for unit names
//
// Revision 1.14  2004/03/25 16:17:31  demon
// - fix: получение количества найденных документов после поиска теперь идет прямо из списка (а не из Root).
//
// Revision 1.13  2004/03/23 12:56:51  demon
// - new behavior: Context is now default property in _InsContextContainer
//
// Revision 1.12  2004/03/22 17:04:22  demon
// - new: передаем контекст из поиска в список (opSetSearchContext)
//
// Revision 1.11  2004/03/22 14:23:58  demon
// - _move: loadContext & _ParseContext перемещены в nsQueryUtils
//
// Revision 1.10  2004/03/22 13:23:53  demon
// - new object: _TnsContextContainer
//
// Revision 1.9  2004/03/19 08:09:17  nikitin75
// + добавлены автосгенеренные (+подправленные) прогресс-индикаторы;
//
// Revision 1.8  2004/03/17 08:13:06  demon
// - fix: при поиске, если ничего не найдено не выдавалось сообщение.
//
// Revision 1.7  2004/03/16 19:40:07  nikitin75
// + ProgressIndicators;
//
// Revision 1.6  2004/02/20 13:24:15  am
// change: убраны группы из настроек.
//
// Revision 1.5  2004/02/18 09:16:06  am
// new: vcm'ным сообщениям добавлены ключи. Добавлен код.
//
// Revision 1.4  2004/02/13 13:42:40  demon
// - cleanup: slqtNone UserType
//
// Revision 1.3  2004/02/04 13:31:50  demon
// - new behavior: Операции работы с _IQuery перенесены из модуля search\nsQuery в модуль nsQueryUtils
//
// Revision 1.2  2003/12/05 13:31:42  demon
// - fix: видимость запросов по ситуации в ППР (запрещено)
//
// Revision 1.1  2003/11/30 11:40:49  law
// - change: используем автогенерированные типы пользовательских объектов. Почистил nsTypes.
//

{$Include nsDefine.inc }

interface

uses
  Classes,

  l3Interfaces,
  l3TreeInterfaces,

  afwInterfaces,
  
  vtComboBoxQS,

  vcmExternalInterfaces,
  vcmInterfaces,
  vcmBase,
  vcmUserControls,

  nsNodes,
  nsLogicOperationToFlags,
  {$If not defined(Admin)}
  nsQuery,
  {$IfEnd}

  DynamicDocListUnit,
  DynamicTreeUnit,
  FiltersUnit,
  SearchUnit,

  StdRes

  {$If not Defined(Admin) AND not Defined(Monitorings)}
  ,
  PrimBaseSearchInterfaces,
  BaseSearchInterfaces
  {$IfEnd}
  ;

{ Процедуры для работы с IQuery }

{$If not defined(Admin) AND not defined(Monitorings)}
 function nsGetContextFromQuery(ContextKind: TnsContextHistoryKind; const aQuery : IQuery): IvcmStrings;
   {* Операция позволяет получить контекст, участвовавший в запросе.
      Если не было контекста - nil. }
 function nsSearchExecute(const aQuery       : IQuery;
                          const aResult      : System.PInteger = nil;
                          const aFilters     : IFiltersFromQuery = nil;
                          const aList        : IDynList = nil;
                          const aProcessor: InsBaseSearchResultProcessor = nil) : IDynList;
   {* Операция проводит поиск по текущему запросу (aQuery),
      на результирующий список, накладывается фильтр (aFilter),
      список возвращается как результат }
{$IfEnd} //not Admin
{$If not defined(Admin) AND not defined(Monitorings)}
 procedure nsSearch(const aQuery       : IQuery;
                    const aFilters     : IFiltersFromQuery = nil;
                    const aList        : IDynList = nil;
                    const aProcessor: IUnknown = nil);
   {* Операция проводит поиск по текущему запросу (aQuery),
      на результирующий список, накладывается фильтр (aFilter),
      список автоматически открывается }
{$IfEnd} //not Admin
 function nsCreateQueryName(const aQuery : IQuery) : Il3CString;
   {* Формирует для запроса имя по умолчанию }
 function nsIsQuerySaved(const aQuery: IQuery) : Boolean;
   {* Проверяет статус isSaved для указанного объекта Query }
 function LoadContextNew(const aQuery   : IQuery;
                         const aTagName : Il3CString;
                         out aContext   : Il3CString) : Boolean;
   {* - загружает контекст из Query. }
 function LoadAttributeCaption(const aQuery   : IQuery;
                         const aTagName : Il3CString;
                         out aCaption   : Il3CString) : Boolean;
   {* - загружает Заголовок первого атрибута из Query. }
 procedure nsParseContext(const aContext : Il3CString;
                          const aStrings : IvcmStrings);
 /////// новые деревья /////////////////////////////////////////////////////////
 procedure LoadLogicFromQuery(const aQuery : IQuery;
                              const aTag   : Il3CString;
                              const aTree  : Il3SimpleTree);

 function SaveLogicToQuery(const aQuery : IQuery;
                           const aTag   : Il3CString;
                           const aTree  : Il3SimpleTree): boolean;
 ///////////////////////////////////////////////////////////////////////////////

 function nsGetQueryName(const aQuery : IQuery) : Il3CString;

implementation

uses
  SysUtils,
  Dialogs,
  Controls,

  l3Const,
  l3InterfacesMisc,
  l3String,
  l3Chars,

  afwFacade,

  vcmStringList,
  vcmForm,

  bsTypes,
  bsUtils,

  DataAdapter,
  DebugStr,

  BaseTreeSupportUnit,
  BaseTypesUnit,
  IOUnit,
  MonitoringUnit,

  nsTypes,
  nsTreeUtils,
  {$IfNDef Admin}
  nsSearchClasses,
  {$EndIf  Admin}
  nsTreeStruct,
  nsQueryExecuteProgressIndicator,
  nsManagers,
  nsConst,
  nsAttributeTreeStruct,
  nsQueryAttribute,
  nsUtils,

  SearchDomainInterfaces

  {$If not Defined(Admin) AND not Defined(Monitorings)}
  ,
  nsContextHistory,
  nsQuestions,
  nsQuestionsWithChoices
  {$IfEnd}
  
  ,
  deSearchInfo,
  deListSet,

  vcmDialogs, 
  vcmMessagesSupport,

  l3MessageID 
  ;


procedure LoadLogicFromQuery(const aQuery : IQuery;
                             const aTag   : Il3CString;
                             const aTree  : Il3SimpleTree);
var
 l_List     : TqaAttrInfoList;
 l_Node     : INodeBase;
 l_TreeNode : INodeBase;
 l_Index    : integer;
 l_FakeTree : Il3SimpleTree;
 l_A        : TqaAttrInfo;
begin
 /////// !! временно, для обхода бага в дереве, сохраняем не сам узел, а его "близнеца" в большом дереве
 //////  !! убрать после починки дерева
 /////  см. _GetTwinNode
 l_FakeTree := TnsAttributeTreeStruct.Make(aTag, aTree.ShowRoot);
 //////////////////////////////////////////////////////////////////////////////

 l_List := TqaAttrInfoList.Create;
 try
  {$IfNDef Admin}
  LoadDictionaryNew(l_List, aQuery, aTag);
  {$Else  Admin}
  Assert(false);
  {$EndIf Admin}
  for l_Index := 0 to l_List.Count - 1 do
  begin
   l_A := TqaAttrInfo(l_List[l_Index]);
   l_Node := l_A.NodeBase;
   l_TreeNode := GetTwinNode(l_FakeTree, l_Node);
   if l_TreeNode <> nil then
    SetLogicOperation(l_TreeNode, l_A.Oper)
   else
    SetLogicOperation(l_Node, l_A.Oper);
  end;//for l_Index
 finally
  vcmFree(l_List);
 end;//try..finally
end;

function SaveLogicToQuery(const aQuery : IQuery;
                          const aTag   : Il3CString;
                          const aTree  : Il3SimpleTree): boolean;
Var
 l_Root: INodeBase;
 l_FakeTree: Il3SimpleTree;

 procedure SaveOpToQuery(aOp: TLogicOperation);
 Var
  l_Node: INodeBase;
  l_Iterator: INodeIterator;

  l_Twin: INodeBase;
 begin
  l_Iterator := GetOperationIterator(l_Root, aOp);
  try
   l_Iterator.GetNext(l_Node);
   while l_Node <> nil do
   begin
    l_Twin := GetTwinNode(l_FakeTree, l_Node);
    {$If not defined(Admin)}
    if l_Twin <> nil then
     SaveAttributeNew(aQuery, aTag, aOp, l_Twin)
    else
     SaveAttributeNew(aQuery, aTag, aOp, l_Node);
    {$Else}
    Assert(false);
    {$IfEnd}
    l_Iterator.GetNext(l_Node);
    Result := true;
   end;
  finally
   l_Iterator := nil;
  end;
 end;

begin
 Result := false;
 if Supports(aTree.RootNode, INodeBase, l_Root) then
 try
  /////// !! временно, для обхода бага в дереве, сохраняем не сам узел, а его "близнеца" в большом дереве
  //////  !! убрать после починки дерева
  /////  см. _GetTwinNode
  l_FakeTree := TnsAttributeTreeStruct.Make(aTag, aTree.ShowRoot);
  //////////////////////////////////////////////////////////////////////////////
  SaveOpToQuery(loOr);
  SaveOpToQuery(loAnd);
  SaveOpToQuery(loNot);
 finally
  l_Root := nil;
 end;
end;                           

function nsGetQueryName(const aQuery : IQuery) : Il3CString;
var
 l_String : IString;
begin
 if Assigned(aQuery) then
  aQuery.GetName(l_String)
 else
  l_String := nil;
 Result := nsCStr(l_String);
end;

{$If not defined(Admin) AND not defined(Monitorings)}
function nsGetContextFromQuery(ContextKind: TnsContextHistoryKind; const aQuery : IQuery): IvcmStrings;
  {* Операция позволяет получить контекст, участвовавший в запросе.
     Если не было контекста - nil. }

 procedure lp_ProcessTag(const aTag: PAnsiChar; const aList: IvcmStrings);
 var
  l_List: IQueryAttributeList;
  l_Idx: Integer;
  l_ContextIdx: Integer;
  l_Context: IQueryContextAttribute;
  l_ContextList: IContextValueList;
  l_Attribute: IQueryAttribute;
  l_ContextValue: TContextValue;
 begin
  aQuery.AttributesByTag(aTag, l_List);
  if l_List = nil then
   Exit;
  for l_Idx := 0 to Pred(l_List.Count) do
  begin
   l_List.pm_GetItem(l_Idx, l_Attribute);
   if l_Attribute.GetType = QTT_CONTEXT then
    if Supports(l_Attribute, IQueryContextAttribute, l_Context) then
     try
      l_Context.GetValues(l_ContextList);
     for l_ContextIdx := 0 to Pred(l_ContextList.Count) do
     begin
      l_ContextList.pm_GetItem(l_ContextIdx, l_ContextValue);
      with l_ContextValue do
        nsParseContext(nsCStr(rContext), aList);
     end;
     finally
      l_Context := nil;
     end;
  end;
 end;

var
 l_Strings: IvcmStrings;
begin
 l_Strings := TvcmStringList.Make;
 case ContextKind of
  ns_chkDocument:
   begin
    lp_ProcessTag(AT_TEXT_BODY, l_Strings);
    lp_ProcessTag(AT_TEXT_NAME, l_Strings);
   end;
  ns_chkInpharm:
   begin
    lp_ProcessTag(AT_PHARM_TEXT, l_Strings);
    lp_ProcessTag(AT_PHARM_NAME, l_Strings);
   end;
 end;
 if l_Strings.Count > 0 then
  Result := l_Strings
 else
  Result := nil;
end;//nsGetContextFromQuery

procedure AddQueryToJournal(const aQuery: IQuery);
var
 l_NewQuery  : IQuery;
begin
 if aQuery.GetType in [{QT_OLD_FILTER, }
                       QT_COMMENTS,
                       QT_MAIL_LIST,
                       QT_HANDYCRAFT_CONSULT] then
  Exit;
 aQuery.Clone(l_NewQuery);
 if Assigned(l_NewQuery) then
  TdmStdRes.MakeWorkJournal.AddQuery(l_NewQuery);
end;//AddQueryToJournal
{$IfEnd}

{$If not defined(Admin) AND not defined(Monitorings)}
function nsSearchExecute(const aQuery       : IQuery;
                         const aResult      : System.PInteger = nil;
                         const aFilters     : IFiltersFromQuery = nil;
                         const aList        : IDynList = nil;
                         const aProcessor: InsBaseSearchResultProcessor = nil) : IDynList;
var
 l_Query         : IQuery;
 l_TmpStr        : Il3CString;
 l_QueryResult   : Integer;
 l_DocCount: LongInt;
 l_EditionCount: LongInt;
 l_EntryCount: LongInt;
 l_FilteredCount : LongInt;
 l_Filterable    : IFilterable;
 l_IsBuild       : Boolean; // строить список
 l_BuildCount    : Integer; // количество элементов в списке
 l_Root          : INodeBase;
 l_SpatialMessage: Boolean;

 function FoundCount(anAmount: Integer; const anArray: TnsNumberSufixesArray): AnsiString;
 begin
   // *10, *11, ... , *19,
   if (anAmount mod 100) div 10 = 1 then
     Result := anArray[ns_nsTenth]
   // *1
   else if (anAmount mod 10) = 1 then
     Result := anArray[ns_nsSingle]
   // *2, *3, *4
   else if (anAmount mod 10) in [2, 3, 4] then
     Result := anArray[ns_nsFew]
   // *5, *6, *7, *8, *9, *0
   else
     Result := anArray[ns_nsSome];
 end;

 function FoundText(anAmount: Integer): AnsiString;
 begin
  // все *1, кроме *11
  if ((anAmount mod 10) = 1) and ((anAmount mod 100) <> 11) then
    Result := cseSinglePrefix
  else
    Result := cseOtherPrefix;
 end;

 procedure SetSearchListInfo(out aIsBuild    : Boolean;
                             out aBuildCount : Integer);
 begin
  case l_Query.GetType of
   // Автореферат
   QT_REVIEW:
   begin
    aIsBuild := afw.Settings.LoadBoolean(piSearchListIsBuildReview,
     dvSearchListIsBuildReview);
    aBuildCount := afw.Settings.LoadInteger(piSearchListBuildCountReview,
     dvSearchListBuildCountReview);
   end;
   // Остальные поисковые запросы (поиски по реквизитам, по ситуации, по
   // источнику опубликования)
   else
   begin
    aIsBuild := afw.Settings.LoadBoolean(pi_Search_List_IsBuild,
     dv_Search_List_IsBuild);
    aBuildCount := afw.Settings.LoadInteger(pi_Search_List_BuildCount,
     dv_Search_List_BuildCount);
   end;
  end;
 end;

 function lp_DoSearch(out aDocCount, aEditionCount, aEntryCount: LongInt; out aResultList: IDynList): Boolean;
 var
  l_Entity : ISearchEntity;
 begin
  aResultList := nil;
  Result := TnsQueryExecuteProgressIndicator.Make(l_Query, aList).Execute(vcmCStr(str_seSearchTitle), l_Entity);
  if Result and Assigned(l_Entity) then
   with l_Entity do
   begin
    aDocCount := GetDocumentCount;
    aEditionCount := GetEditionCount;
    aEntryCount := GetEntryCount;
    case GetResultType of
     SRT_CONSULTATION:
      Assert(False, 'Не поддерживается');
     SRT_AUTOREFERAT:
      aResultList := bsMonitoringList(l_Entity);
     SRT_DOCUMENT_LIST:
      aResultList := bsDocumentList(l_Entity);
    end;//case l_Entity.GetResultType of
   end
  else
  begin
   aDocCount := 0;
   aEditionCount := 0;
   aEntryCount := 0;
  end;
 end;//lp_Result

 function lp_QueryHasAttribute(const aQuery: IQuery; const aTag: PAnsiChar): Boolean;
 var
  l_List: IQueryAttributeList;
 begin
  aQuery.AttributesByTag(aTag, l_List);
  Result := Assigned(l_List) and (l_List.Count > 0);
 end;

var
 l_FilterName : Il3CString;
 l_Button     : Integer;
 l_Filter     : IFilterFromQuery;

const
 cseBuild: array [Boolean] of AnsiString = (cseBuildList, cseBuildAutoreferat);
 cseBuildWOEntry: array [Boolean] of AnsiString = (cseBuildListWOEntry, cseBuildAutoreferatWOEntry);
 cseBuildWOEdition: array [Boolean] of AnsiString = (cseBuildListWOEdition, cseBuildAutoreferatWOEdition);
 cseBuildWOEditionWOEntry: array [Boolean] of AnsiString = (cseBuildListWOEditionWOEntry, cseBuildAutoreferatWOEditionWOEntry);

 str_seBuild: array [Boolean] of PVCMStringID = (@str_seBuildList, @str_seBuildAutoreferat);
 str_seBuildWOEntry: array [Boolean] of PVCMStringID = (@str_seBuildListWOEntry, @str_seBuildAutoreferatWOEntry);
 str_seBuildWOEdition: array [Boolean] of PVCMStringID = (@str_seBuildListWOEdition, @str_seBuildAutoreferatWOEdition);
 str_seBuildWOEditionWOEntry: array [Boolean] of PVCMStringID = (@str_seBuildListWOEditionWOEntry, @str_seBuildAutoreferatWOEditionWOEntry);
begin
 l_SpatialMessage := afw.Application.LocaleInfo.Language = afw_lngRussian;
 if aResult <> nil then
  aResult^ := 0;
 if aQuery <> nil then
  l_Query := aQuery
 else
  l_Query := DefDataAdapter.CreateEmptyQuery(QT_ATTRIBUTE);
 try
  if lp_DoSearch(l_DocCount, l_EditionCount, l_EntryCount, Result) then
  begin
   if Result <> nil then
   begin
    if Assigned(aProcessor) then
     aProcessor.SearchResultExists;
    l_TmpStr := nil;
    if Assigned(aFilters) and (aFilters.Count > 0) then
    begin
     if l3BQueryInterface(Result, IFilterable, l_Filterable) then
      try
       if (aFilters.Count = 1) then
       begin
        aFilters.pm_GetItem(0, l_Filter);
        l_FilterName := nsGetFilterCaption(l_Filter);
       end;//if (aFilters.Count = 1)
       try
        // фильтрация
        l_Filterable.ApplyFilters(aFilters);
        // Получаем количество отфильтрованных элементов списка
        Result.GetRoot(l_Root);
        try
         l_FilteredCount:= l_Root.GetChildCount;
        finally
         l_Root := nil;
        end;
        SetSearchListInfo(l_IsBuild, l_BuildCount);
        if l_IsBuild and (l_FilteredCount > l_BuildCount) then
        begin
         if l_SpatialMessage then
          if not l3IsNil(l_FilterName) then
           l_TmpStr := l3Fmt(cseSingleFilterFound,[FoundText(l_FilteredCount),
            l_FilteredCount, FoundCount(l_FilteredCount, cseDocument), l_FilterName])
          else
           l_TmpStr := l3Fmt(cseManyFilterFound,[FoundText(l_FilteredCount),
            l_FilteredCount, FoundCount(l_FilteredCount, cseDocument), aFilters.Count])
         else
          if not l3IsNil(l_FilterName) then
           l_TmpStr := vcmFmt(str_seSingleFilterFound, [l_FilteredCount, l_FilterName])
          else
           l_TmpStr := vcmFmt(str_seManyFilterFound, [l_FilteredCount, aFilters.Count])
        end;//if l_IsBuild and (l_FilteredCount > l_BuildCount)
       except
        if l_SpatialMessage then
         if not l3IsNil(l_FilterName) then
         begin
          if (l_EditionCount > 0) and (l_EntryCount > 0) then
           l_TmpStr := l3Fmt(cseSingleFilterNotFound, [l_FilterName, l_DocCount, FoundCount(l_DocCount, cseDocument),
                                                                     l_EditionCount, FoundCount(l_EditionCount, cseEdition),
                                                                     l_EntryCount, FoundCount(l_EntryCount, cseEntry)])
          else
           if l_EditionCount > 0 then
            l_TmpStr := l3Fmt(cseSingleFilterNotFoundWOEntry, [l_FilterName, l_DocCount, FoundCount(l_DocCount, cseDocument),
                                                                      l_EditionCount, FoundCount(l_EditionCount, cseEdition)])
           else
            if l_EntryCount > 0 then
             l_TmpStr := l3Fmt(cseSingleFilterNotFoundWOEdition, [l_FilterName, l_DocCount, FoundCount(l_DocCount, cseDocument),
                                                                       l_EntryCount, FoundCount(l_EntryCount, cseEntry)])
            else
             l_TmpStr := l3Fmt(cseSingleFilterNotFoundWOEditionWOEntry, [l_FilterName, l_DocCount, FoundCount(l_DocCount, cseDocument)])
         end
         else//if not l3IsNil(l_FilterName)
         begin
          if (l_EditionCount > 0) and (l_EntryCount > 0) then
           l_TmpStr := l3Fmt(cseManyFilterNotFound, [l_DocCount, FoundCount(l_DocCount, cseDocument),
                                                     l_EditionCount, FoundCount(l_EditionCount, cseEdition),
                                                     l_EntryCount, FoundCount(l_EntryCount, cseEntry)])
          else
           if l_EditionCount > 0 then
            l_TmpStr := l3Fmt(cseManyFilterNotFoundWOEntry, [l_DocCount, FoundCount(l_DocCount, cseDocument),
                                                             l_EditionCount, FoundCount(l_EditionCount, cseEdition)])
           else
            if l_EntryCount > 0 then
             l_TmpStr := l3Fmt(cseManyFilterNotFoundWOEdition, [l_DocCount, FoundCount(l_DocCount, cseDocument),
                                                                l_EntryCount, FoundCount(l_EntryCount, cseEntry)])
            else
             l_TmpStr := l3Fmt(cseManyFilterNotFoundWOEditionWOEntry, [l_DocCount, FoundCount(l_DocCount, cseDocument)])
         end//if not l3IsNil(l_FilterName)
        else//if l_SpatialMessage
         if not l3IsNil(l_FilterName) then
         begin
          if (l_EditionCount > 0) and (l_EntryCount > 0) then
           l_TmpStr := vcmFmt(str_seSingleFilterNotFound, [l_FilterName, l_DocCount, l_EditionCount, l_EntryCount])
          else
           if l_EditionCount > 0 then
            l_TmpStr := vcmFmt(str_seSingleFilterNotFoundWOEntry, [l_FilterName, l_DocCount, l_EditionCount])
           else
            if l_EntryCount > 0 then
             l_TmpStr := vcmFmt(str_seSingleFilterNotFoundWOEdition, [l_FilterName, l_DocCount, l_EntryCount])
            else
             l_TmpStr := vcmFmt(str_seSingleFilterNotFoundWOEditionWOEntry, [l_FilterName, l_DocCount])
         end
         else//if not l3IsNil(l_FilterName)
         begin
          if (l_EditionCount > 0) and (l_EntryCount > 0) then
           l_TmpStr := vcmFmt(str_seManyFilterNotFound, [l_DocCount, l_EditionCount, l_EntryCount])
          else
           if l_EditionCount > 0 then
            l_TmpStr := vcmFmt(str_seManyFilterNotFoundWOEntry, [l_DocCount, l_EditionCount])
           else
            if l_EntryCount > 0 then
             l_TmpStr := vcmFmt(str_seManyFilterNotFoundWOEdition, [l_DocCount, l_EntryCount])
            else
             l_TmpStr := vcmFmt(str_seManyFilterNotFoundWOEditionWOEntry, [l_DocCount])
         end//if not l3IsNil(l_FilterName)
       end;//try..except
      finally
       l_Filterable := nil;
      end;//try..finally
    end
    else//if Assigned(aFilters) and (aFilters.Count > 0)
    begin
     SetSearchListInfo(l_IsBuild, l_BuildCount);
     if l_IsBuild and ((l_DocCount + l_EditionCount) > l_BuildCount) then
      if l_SpatialMessage then
      begin
       if (l_EditionCount > 0) and (l_EntryCount > 0) then
        l_TmpStr := l3Fmt(cseBuild[l_Query.GetType = QT_REVIEW],
                          [l_DocCount, FoundCount(l_DocCount, cseDocument),
                          l_EditionCount, FoundCount(l_EditionCount, cseEdition),
                          l_EntryCount, FoundCount(l_EntryCount, cseEntry)])
       else
        if l_EditionCount > 0 then
         l_TmpStr := l3Fmt(cseBuildWOEntry[l_Query.GetType = QT_REVIEW],
                           [l_DocCount, FoundCount(l_DocCount, cseDocument),
                           l_EditionCount, FoundCount(l_EditionCount, cseEdition)])
        else
         if l_EntryCount > 0 then
          l_TmpStr := l3Fmt(cseBuildWOEdition[l_Query.GetType = QT_REVIEW],
                            [l_DocCount, FoundCount(l_DocCount, cseDocument),
                            l_EntryCount, FoundCount(l_EntryCount, cseEntry)])
         else
          l_TmpStr := l3Fmt(cseBuildWOEditionWOEntry[l_Query.GetType = QT_REVIEW],
                            [l_DocCount, FoundCount(l_DocCount, cseDocument)])
      end
      else//if l_SpatialMessage
      begin
       if (l_EditionCount > 0) and (l_EntryCount > 0) then
        l_TmpStr := vcmFmt(str_seBuild[l_Query.GetType = QT_REVIEW]^, [l_DocCount, l_EditionCount, l_EntryCount])
       else
        if l_EditionCount > 0 then
         l_TmpStr := vcmFmt(str_seBuildWOEntry[l_Query.GetType = QT_REVIEW]^, [l_DocCount, l_EditionCount])
        else
         if l_EntryCount > 0 then
          l_TmpStr := vcmFmt(str_seBuildWOEdition[l_Query.GetType = QT_REVIEW]^, [l_DocCount, l_EntryCount])
         else
          l_TmpStr := vcmFmt(str_seBuildWOEditionWOEntry[l_Query.GetType = QT_REVIEW]^, [l_DocCount])
      end//if l_SpatialMessage
    end;//if Assigned(aFilters) and (aFilters.Count > 0)

    if l3IsNil(l_TmpStr) then
     l_QueryResult := mrYes
    else
     l_QueryResult := vcmShowMessageDlg(Tl3Message_C(l_TmpStr,
                                                     'nsSearchExecute',
                                                     mtConfirmation,
                                                     [mbYes, mbNo]));

    if l_QueryResult <> mrYes then
     Result := nil
    else
    begin
     {$IfDef vcmUseProfilers}
     ProfilersManager.ListAfterSearch.Start;
     {$EndIf vcmUseProfilers}
{$If not defined(Admin) and not defined(Monitorings)}
     AddQueryToJournal(l_Query);
{$IfEnd}
    end;
   end
   else//if Result <> nil
   begin
    if (l_Query.GetType = QT_BASE_SEARCH) then
    begin
     if lp_QueryHasAttribute(aQuery, AT_BASE_SEARCH_PANES{AT_PREFIX}) then
     begin
      if vcmAsk(qr_EmptyResultAfterBaseSearchWithPrefix) then
       TdmStdRes.TryAnotherBaseSearch(nil, aProcessor)
      else
       if Assigned(aProcessor) then
        aProcessor.AnotherSearchCancelled;
      Exit;
     end;//if lp_QueryHasAttribute(aQuery, AT_BASE_SEARCH_PANES{AT_PREFIX})
     if Assigned(aList) then
     begin
      if aList.GetIsShort then
      begin
       case vcmMessageDlg(str_EmptySearchResultInBaseList, []) of
        -1: TdmStdRes.TryAnotherBaseSearch(nil, aProcessor, True);
        -2: TdmStdRes.TryAnotherBaseSearch(nil, aProcessor);
       end;
      end
      else
      begin
       if lp_QueryHasAttribute(aQuery, AT_TEXT_NAME) then
       begin
        if vcmAsk(qr_EmptyResultAfterBaseSearchInNames) then
         TdmStdRes.TryAnotherBaseSearch(nil, aProcessor);
       end//lp_QueryHasAttribute(aQuery, AT_TEXT_NAME)
       else
        if vcmAsk(qr_EmptyResultAfterBaseSearchInList) then
         TdmStdRes.TryAnotherBaseSearch(nil, aProcessor);
      end;
      Exit;
     end;//Assigned(aList)
    end;//l_Query.GetType = QT_BASE_SEARCH
    if Assigned(aList) then
     vcmSay(war_EmptyResultAfterSearchInList)
    else
     if (l_Query.GetType <> QT_COMMENTS) and (l_Query.GetType <> QT_PHARM_SEARCH) and
       DefDataAdapter.ConsultationManager.CheckConsultingAvailable and
       not defDataAdapter.AdministratorLogin then
     begin
      l_Button := vcmMessageDlg(str_ConsultDocumentsNotFound, []);
      if aResult <> nil then
       aResult^ := l_Button;
     end
     else
      if l_Query.GetType = QT_COMMENTS then
       vcmSay(war_DocumentsWithUserCommentsNotFound)
      else
       vcmSay(war_DocumentsNotFound);
   end;//if Result <> nil
  end
  else//if lp_DoSearch(l_DocCount, l_EditionCount, l_EntryCount, Result)
  begin
   l_Button := vcmMessageDlg(war_SearchCancelled);
   if aResult <> nil then
    aResult^ := l_Button;
  end;//if lp_DoSearch(l_DocCount, l_EditionCount, l_EntryCount, Result)
 finally
  l_Query := nil;
 end;
end;
{$IfEnd} //not Admin

{$If not defined(Admin) AND not defined(Monitorings)}
procedure nsSearch(const aQuery       : IQuery;
                   const aFilters     : IFiltersFromQuery = nil;
                   const aList        : IDynList = nil;
                   const aProcessor: IUnknown = nil);
var
 l_FoundList : IDynList;
 l_Result    : Integer;
 l_Comment   : IString;
 l_Query     : IQuery;
 l_ConsultationText: Il3CString;
 l_Context: IvcmStrings;
 l_Processor: InsBaseSearchResultProcessor;
const
 cMap: array [Boolean] of TnsCOntextHistoryKind = (ns_chkDocument, ns_chkInpharm);
begin
 if (aQuery.GetType = QT_REVIEW) and not defDataAdapter.LegislationReviewAvailable then
  vcmSay(err_QueryCannotBeExecuted)
 else
 begin
  l_Context := nsGetContextFromQuery(cMap[aQuery.GetType = QT_PHARM_SEARCH], aQuery);
  try
   if Assigned(l_Context) then
   begin
    nsGetContextHistory(cMap[aQuery.GetType = QT_PHARM_SEARCH]).Searched(l_Context);
   end;
  finally
   l_Context := nil;
  end;

  Supports(aProcessor, InsBaseSearchResultProcessor, l_Processor);

  l_FoundList := nsSearchExecute(aQuery,
                                 @l_Result,
                                 aFilters,
                                 aList,
                                 l_Processor);
  try
   if (l_FoundList <> nil) then
   begin
    if (aQuery.GetType <> QT_BASE_SEARCH) and Assigned(l_Processor) then
      l_Processor.AnotherSearchSuccessed;
    if (aQuery.GetType <> QT_REVIEW) then
     TdmStdRes.OpenList(
       TdeListSet.Make(l_FoundList,
                       wdOpenIfUserDefine,
                       lofNone,
                       True,
                       nil,
                       TdeSearchInfo.Make(l_FoundList,
                                          false)), nil)
    else
     TdmStdRes.OpenAutoreferatAfterSearch(l_FoundList As IMonitoringList, nil);
   end//l_FoundList <> nil
   else
   if (l_Result = vcm_mrCustomButton) then
   begin
    if (aQuery.GetType in [QT_ATTRIBUTE, QT_BASE_SEARCH]) then
    begin
     DefDataAdapter.Search.CreateQuery(QT_HANDYCRAFT_CONSULT, l_Query);
     aQuery.GetComment(l_Comment);
     l_ConsultationText := vcmFmt(str_FailedSearchTemplate,[nsCStr(l_Comment)]);
     l_ConsultationText := l3StringReplace(l_ConsultationText, cc_EOLStr, cc_SoftEnterNativeStr, [rfReplaceAll]);
     l_ConsultationText := l3StringReplace(l_ConsultationText, cc_HardEnterNativeStr, cc_SoftEnterNativeStr, [rfReplaceAll]);
     SaveContextNew(l_Query, nsCStr(AT_LAW_SUPPORT_TEXT), l_ConsultationText);
    end//aQuery.GetType in [QT_ATTRIBUTE, QT_BASE_SEARCH]
    else
     l_Query := nil;
    TdmStdRes.OpenSendConsultation(l_Query);
   end;
  finally
   l_FoundList := nil;
  end;//try..finally
 end;//not defDataAdapter.Monitoring.IsExist
end;
{$IfEnd} //not Admin

function nsCreateQueryName(const aQuery: IQuery) : Il3CString;
  {-}
const
 l_QueryNamePatternsForSave: array [TQueryType] of PvcmStringID = (
   @str_cqnKeywordForSave,
   @str_cqnAttributeForSave,
   //@str_cqnOldAttributeForSave,
   //@str_cqnOldFilterForSave,
   @str_cqnPublishSourceForSave,
   @str_cqnCommentsForSave,
   @str_cqnReviewForSave,
   @str_cqnMailListForSave,
   @str_Empty,
   @str_Empty,
   @str_Empty,
   @str_Empty,
   @str_cqnBaseSearchForSave,
   @str_cqnInpharmSearchForSave);
begin
 Result := nsGetQueryName(aQuery);
 if l3IsNil(Result) then
  Result := vcmFmt(l_QueryNamePatternsForSave[aQuery.GetType]^, [DateTimeToStr(Now)]);
end;

function nsIsQuerySaved(const aQuery: IQuery) : Boolean;
var
 l_CurEntity : IEntityBase;
begin
 if l3BQueryInterface(aQuery, IEntityBase, l_CurEntity) then
  try
   Result := l_CurEntity.GetIsSaved;
  finally
   l_CurEntity := nil;
  end//try..finally
 else
  Result := false;
end;

function LoadContextNew(const aQuery   : IQuery;
                        const aTagName : Il3CString;
                        out aContext   : Il3CString) : Boolean;
var
 l_ValueList : IQueryAttributeList;
 l_Context   : IQueryContextAttribute;
 l_List      : IContextValueList;
 l_Attribute : IQueryAttribute;
 l_ContextValue : TContextValue;
begin
 Result := False;
 aQuery.AttributesByTag(nsAStr(aTagName).S, l_ValueList);
 if Assigned(l_ValueList) then
 try
  if (l_ValueList.Count > 0) then
  begin
   Result := True;
   l_ValueList.pm_GetItem(0, l_Attribute);
   if (l_Attribute.GetType = QTT_CONTEXT) and Supports(l_Attribute,
      IQueryContextAttribute, l_Context) then
     try
      l_Context.GetValues(l_List);
      try
      if l_List.Count > 0 then
      begin
       l_List.pm_GetItem(0, l_ContextValue);
       aContext := nsCStr(l_ContextValue.rContext);
      end;
      finally
       l_List := nil;
      end;//try..finally
     finally
      l_Context := nil;
     end;//try..finally
  end;//l_ValueList.GetCount > 0
 finally
  l_ValueList := nil;
 end;//try..finally
end;

function LoadAttributeCaption(const aQuery   : IQuery;
                        const aTagName : Il3CString;
                        out aCaption   : Il3CString) : Boolean;
   {* - загружает Заголовок первого атрибута из Query. }
var
 l_ValueList : IQueryAttributeList;
 l_Node      : IQueryNodeAttribute;
 l_List      : INodeValueList;
 l_Caption   : IString;
 l_Attribute : IQueryAttribute;
 l_Value     : TQueryNodeValue;
begin
 Result := False;
 aQuery.AttributesByTag(nsAStr(aTagName).S, l_ValueList);
 if Assigned(l_ValueList) then
 try
  if (l_ValueList.Count > 0) then
  begin
   Result := True;
   l_ValueList.pm_GetItem(0, l_Attribute);
   if (l_Attribute.GetType = QTT_NODE) and Supports(l_Attribute,
      IQueryNodeAttribute, l_Node) then
     try
      l_Node.GetValues(l_List);
      try
      if l_List.Count > 0 then
       begin
       l_List.pm_GetItem(0, l_Value);
       l_Value.rNode.GetCaption(l_Caption);
        aCaption := nsCStr(l_Caption);
        Result := True;
       end;
      finally
       l_List := nil;
      end;//try..finally
     finally
      l_Node := nil;
     end;//try..finally
  end;//l_ValueList.GetCount > 0
 finally
  l_ValueList := nil;
 end;//try..finally
end; 

procedure nsParseContext(const aContext : Il3CString;
                         const aStrings : IvcmStrings);

 function MissSimbol(var aIndex   : Integer;
                     aSimbol      : AnsiChar;
                     const aValue : Il3CString): Integer;
 begin//MissSimbol
  Result := 0;
  while (l3Len(aValue) > aIndex + 1) and
   l3IsChar(aValue, aIndex + 1, aSimbol) do
  begin
   Inc(Result);
   Inc(aIndex);
  end;//while..
 end;//MissSimbol

var
 l_Index, l_Marker: Integer;

 { MissSimbol - пропускаем одинакомые символы идущие один за другим.
    Result - количество пропущенных символов; }

begin
 if not l3IsNil(aContext) then
 begin
  (* выходим, нет символов, которые нам интересны *)
  if not l3CharSetPresent(aContext, [';', '"']) then
   aStrings.Add(aContext)
  else
  begin
   l_Index       := 0;
   l_Marker      := 0;
   while (l_Index < l3Len(aContext)) do
   begin
    case l3Char(aContext, l_Index) of
     ';':
      if (l_Index > 0) then
      begin
       if not l3IsChar(aContext, l_Marker, ';') then
        aStrings.Add(l3Trim(l3Copy(aContext, l_Marker, l_Index - l_Marker)));
       MissSimbol(l_Index, ';', aContext);
       l_Marker := l_Index + 1;
      end//l_Index > 0
      else
       l_Marker := 1;
    end;//case l3Char(aContext, l_Index)
    Inc(l_Index);
   end;//while (l_Index < l3Len(aContext))
   if (l_Marker < l3Len(aContext)) then
    aStrings.Add(l3Trim(l3Copy(aContext, l_Marker, l3Len(aContext) - l_Marker + 1)));
  end;//l3AllCharsInCharSet
 end;//not l3IsNil(aContext)
end;

end.
