unit vcmBaseMenuManager;
{* Базовый менеджер меню. }

{ Библиотека "vcm"        }
{ Автор: Люлин А.В. ©     }
{ Модуль: vcmBaseMenuManager - }
{ Начат: 14.03.2003 17:02 }
{ $Id: vcmBaseMenuManager.pas,v 1.282 2013/08/28 16:38:01 lulin Exp $ }

// $Log: vcmBaseMenuManager.pas,v $
// Revision 1.282  2013/08/28 16:38:01  lulin
// - чистка кода.
//
// Revision 1.281  2013/04/05 12:02:37  lulin
// - портируем.
//
// Revision 1.280  2012/11/23 08:23:29  kostitsin
// чиню сборку
//
// Revision 1.279  2012/11/22 12:47:46  kostitsin
// [$407738353]
//
// Revision 1.278  2012/08/10 18:19:26  lulin
// {RequestLink:382421301}.
//
// Revision 1.277  2012/08/07 14:37:42  lulin
// {RequestLink:358352265}
//
// Revision 1.276  2012/08/06 17:03:35  lulin
// {RequestLink:380046115}
//
// Revision 1.275  2012/07/12 10:21:20  lulin
// {RequestLink:237994598}
//
// Revision 1.274  2012/07/10 18:58:26  lulin
// {RequestLink:237994598}
//
// Revision 1.273  2012/07/10 12:27:05  lulin
// {RequestLink:237994598}
//
// Revision 1.272  2012/05/30 17:12:01  lulin
// - выделяем класс в отдельный файл.
//
// Revision 1.271  2012/04/20 13:12:37  lulin
// {RequestLink:290266465}
//
// Revision 1.270  2012/04/09 08:38:58  lulin
// {RequestLink:237994598}
// - думаем о VGScene.
//
// Revision 1.269  2012/04/09 06:14:05  lulin
// {RequestLink:237994598}
//
// Revision 1.268  2012/04/05 19:44:26  lulin
// {RequestLink:237994598}
//
// Revision 1.267  2012/04/04 08:56:59  lulin
// {RequestLink:237994598}
//
// Revision 1.266  2012/03/22 06:40:09  lulin
// - чистим код от мусора.
//
// Revision 1.265  2012/01/24 16:30:27  lulin
// {RequestLink:330139744}
// - вставляем диагностику на предмет того, что формы не могут иметь одинаковые идентификаторы.
// - избавляемся от нетипизированных списков.
//
// Revision 1.264  2011/12/14 11:37:56  lulin
// {RequestLink:297703519}
//
// Revision 1.263  2011/12/08 16:30:03  lulin
// {RequestLink:273590436}
// - чистка кода.
//
// Revision 1.262  2011/10/24 11:53:25  lulin
// - bug fix: не собиралась библиотека.
//
// Revision 1.261  2011/08/30 11:22:08  dinishev
// [$280010450]. Компилируем Арчи после подключения скриптового движка "по настоящему".
//
// Revision 1.260  2011/08/01 14:51:33  lulin
// {RequestLink:274825697}.
//
// Revision 1.259  2011/07/15 17:30:55  lulin
// {RequestLink:269058433}.
//
// Revision 1.258  2011/07/14 14:14:48  lulin
// {RequestLink:274464961}.
//
// Revision 1.257  2011/06/20 13:46:02  lulin
// {RequestLink:269081712}.
//
// Revision 1.256  2011/05/24 15:21:52  lulin
// {RequestLink:266425290}.
//
// Revision 1.255  2011/05/19 17:04:32  lulin
// {RequestLink:266418093}.
//
// Revision 1.254  2011/05/19 12:21:15  lulin
// {RequestLink:266409354}.
//
// Revision 1.253  2011/05/06 14:28:08  lulin
// - правим IfDef'ы.
//
// Revision 1.252  2011/03/28 17:20:20  lulin
// {RequestLink:257393788}.
//
// Revision 1.251  2011/01/19 13:06:30  lulin
// {RequestLink:251330702}.
//
// Revision 1.250  2010/12/29 12:57:58  lulin
// {RequestLink:206504442}.
// [$249335215].
//
// Revision 1.249  2010/09/15 18:15:01  lulin
// {RequestLink:235047275}.
//
// Revision 1.248  2010/09/15 15:11:07  lulin
// {RequestLink:235047275}.
//
// Revision 1.247  2010/08/31 18:25:46  lulin
// {RequestLink:224134305}.
//
// Revision 1.246  2010/06/01 18:42:26  lulin
// {RequestLink:215549303}.
// - вычищаем ненужные данные.
//
// Revision 1.245  2010/04/29 13:48:03  lulin
// {RequestLink:159352361}.
// - описываем идентификаторы форм на модели.
//
// Revision 1.244  2010/04/27 18:02:24  lulin
// {RequestLink:159352361}.
// - признак возможности закрытия формы переносим на модель.
//
// Revision 1.243  2010/04/27 15:38:12  lulin
// {RequestLink:159352361}.
// - чистка кода.
//
// Revision 1.242  2010/04/27 15:24:32  lulin
// {RequestLink:159352361}.
// - перестаём генерировать пользовательские типы из StdRes.
//
// Revision 1.241  2010/04/27 13:40:27  lulin
// {RequestLink:159352361}.
//
// Revision 1.240  2010/04/23 16:37:49  lulin
// {RequestLink:159352361}.
//
// Revision 1.239  2010/04/06 08:46:46  lulin
// {RequestLink:200086500}.
// - по-любому определяем идентификатор строковой константы.
//
// Revision 1.238  2010/04/05 15:26:07  lulin
// {RequestLink:200086500}.
//
// Revision 1.237  2010/04/05 13:24:01  lulin
// {RequestLink:200086500}.
//
// Revision 1.236  2010/04/05 11:38:02  lulin
// {RequestLink:200086500}.
//
// Revision 1.235  2010/03/19 17:47:30  lulin
// {RequestLink:197952401}.
//
// Revision 1.234  2010/03/18 14:15:36  lulin
// {RequestLink:197951943}.
//
// Revision 1.233  2010/03/11 15:13:39  lulin
// {RequestLink:196969151}.
// - избавляемся от ненужных зависимостей от VCM.
//
// Revision 1.232  2010/03/10 12:48:43  lulin
// {RequestLink:193826739}.
//
// Revision 1.231  2010/03/04 11:43:24  lulin
// {RequestLink:193826739}.
//
// Revision 1.230  2010/01/11 07:50:26  lulin
// - bug fix: не собиралась библиотека.
//
// Revision 1.229  2009/12/30 13:24:14  lulin
// {RequestLink:175540860}. №1.
//
// Revision 1.228  2009/12/28 18:03:12  lulin
// - адаптируем работу с локализованными строками к режиму редактирования форм.
//
// Revision 1.227  2009/12/28 17:18:23  lulin
// - разбираемся с лишними пустыми строками.
//
// Revision 1.226  2009/12/28 16:23:56  lulin
// - определяем локализуемые строки на модели.
//
// Revision 1.225  2009/12/22 16:46:50  lulin
// - удалось запустить тест создающий форму.
//
// Revision 1.224  2009/11/19 12:59:03  oman
// - fix: {RequestLink:171968647}
//
// Revision 1.223  2009/11/18 13:06:00  lulin
// - используем базовые параметры операции.
//
// Revision 1.222  2009/11/12 15:59:57  lulin
// - вычищаем ненужные версии методов.
//
// Revision 1.221  2009/11/12 14:32:02  lulin
// - убираем возможность менять список параметров.
//
// Revision 1.220  2009/11/11 18:46:49  lulin
// - убираем генерацию идентификаторов операций.
//
// Revision 1.219  2009/11/10 12:28:56  lulin
// - перестаём выливать идентификаторы внутренних операций.
//
// Revision 1.218  2009/10/19 13:07:56  lulin
// {RequestLink:159360578}. №7.
//
// Revision 1.217  2009/10/16 15:14:26  lulin
// {RequestLink:159360578}. №52.
//
// Revision 1.216  2009/10/15 17:21:57  lulin
// {RequestLink:166856141}. Попытки ещё что-нибудь полечить.
//
// Revision 1.215  2009/10/13 15:55:29  lulin
// - чистка кода.
//
// Revision 1.214  2009/10/01 14:58:30  lulin
// - убираем сферического коня в вакууме.
//
// Revision 1.213  2009/09/28 19:35:49  lulin
// - убираем из StdRes константы для операций модулей.
//
// Revision 1.212  2009/09/28 18:50:36  lulin
// - убираем лишние ручки для вызова операций.
//
// Revision 1.211  2009/09/25 12:09:14  lulin
// - выкидываем ненужное.
//
// Revision 1.210  2009/09/22 17:39:29  lulin
// - модуль Поиск полностью перенесён на модель.
//
// Revision 1.209  2009/09/17 15:51:34  lulin
// - регистрация модулей и сборок с главной формы перенесена на приложение.
//
// Revision 1.208  2009/09/15 10:36:42  lulin
// - не генерируем идентификаторы сборок.
//
// Revision 1.207  2009/08/31 15:40:45  lulin
// - убираем лишний метод.
// - убираем необходимость знать идентификатор сборки - если есть её класс.
// - убираем ненужную связь между раализациями прецедентов.
// - ссылаемся из реализаций прецедентов на используемые прецеденты.
//
// Revision 1.206  2009/08/26 08:11:24  lulin
// - декорируем имена операций, чтобы можно было искать.
//
// Revision 1.205  2009/08/20 17:19:04  lulin
// {RequestLink:159360595}.
//
// Revision 1.204  2009/08/03 18:12:37  lulin
// - публикуем операции.
//
// Revision 1.203  2009/02/20 17:29:20  lulin
// - чистка комментариев.
//
// Revision 1.202  2009/02/20 15:19:00  lulin
// - <K>: 136941122.
//
// Revision 1.201  2009/02/12 17:09:15  lulin
// - <K>: 135604584. Выделен модуль с внутренними константами.
//
// Revision 1.200  2009/02/12 16:06:49  lulin
// - <K>: 135604584. Выделен модуль локализации.
//
// Revision 1.199  2008/04/02 05:46:35  oman
// - fix: Сглатываем шортакты до показа первой главной формы (cq28762)
//
// Revision 1.198  2008/03/21 14:09:19  lulin
// - cleanup.
//
// Revision 1.197  2008/02/05 09:57:45  lulin
// - выделяем базовые объекты в отдельные файлы и переносим их на модель.
//
// Revision 1.196  2008/02/04 09:27:24  lulin
// - bug fix: не собирался VCM.
//
// Revision 1.195  2008/02/01 15:14:35  lulin
// - избавляемся от излишней универсальности списков.
//
// Revision 1.194  2007/12/14 08:03:55  mmorozov
// - библиотекка не собиралась;
//
// Revision 1.193  2007/12/12 12:25:53  mmorozov
// - отказывамся от подписки, управляет перевставкой форм и перечиткой панелей инструментов оболочка (в рамках CQ: OIT5-27823);
//
// Revision 1.192  2007/12/12 06:34:10  mmorozov
// - библиотека не собиралась;
//
// Revision 1.191  2007/12/11 13:39:23  mmorozov
// - продолжаем переходить на уведомления о системных событиях (в рамках CQ: OIT5-27823);
//
// Revision 1.190  2007/12/10 12:44:50  mmorozov
// - new: реализуем шаблон publisher\subscriber при редактировании настроек, замены настроек (переключения конфигураций), настройке панелей инструментов (в рамках CQ: OIT5-27823);
//
// Revision 1.189  2007/08/09 08:07:39  oman
// - fix: Более правильно пытаемся закрывать окно во вкладке
//
// Revision 1.188  2007/08/09 07:37:45  oman
// - fix: Лишняя ";"
//
// Revision 1.187  2007/08/06 14:04:27  oman
// - fix: Выделен метод TvcmBaseMenuManager._BuildAction для постоения
//  Action на основе TvcmOpSelector (cq25326)
//
// Revision 1.186  2007/07/27 11:57:25  oman
// - new: В механизм локализации включаем фабрики сборок (cq25775)
//
// Revision 1.185  2007/06/06 07:37:25  oman
// - fix: При закрытии формы на повторной активации не надо ее
//  деактивировать - иначе навигатор решает свернуться (cq25582)
//
// Revision 1.184  2007/05/31 13:53:18  oman
// - fix: Вкладка с галкой на повторную активацию теперь закрывается,
//  а не просто переключает навигатор на предыдущую активную
//  - переименовано свойство в соответствии со смыслом (cq25230)
//
// Revision 1.183  2007/05/31 11:39:11  oman
// - fix: Вкладка с галкой на повторную активацию теперь закрывается,
//  а не просто переключает навигатор на предыдущую активную (cq25230)
//
// Revision 1.182  2007/04/20 08:10:48  oman
// - fix: Если диспетчера еще нет, то не выполняем операции модуля
//  (cq25117)
//
// Revision 1.181  2007/04/12 07:57:09  lulin
// - используем строки с кодировкой.
//
// Revision 1.180  2007/04/10 13:20:10  lulin
// - используем строки с кодировкой.
//
// Revision 1.179  2007/04/03 06:03:36  oman
// - fix: При подмене операций для управления активностью форм
//  не учитывали _OnContextTest и OnContextExecute
//
// Revision 1.178  2007/03/22 08:38:14  mmorozov
// - cleanup;
//
// Revision 1.177  2007/03/16 14:47:25  lulin
// - cleanup.
//
// Revision 1.176  2007/03/14 06:53:26  mmorozov
// - new: у каждой главной формы свой компонент панели задач;
//
// Revision 1.175  2007/03/06 13:35:50  mmorozov
// - new: панель задач;
//
// Revision 1.174  2007/02/13 13:28:24  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.173  2007/02/13 12:09:00  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.172  2007/02/12 16:40:29  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.171  2007/02/07 17:48:42  lulin
// - избавляемся от копирования строк при чтении из настроек.
//
// Revision 1.170  2007/02/07 12:58:11  oman
// - fix: Множество vcm_InternalOperations переименовано в
//  vcm_HiddenOperations и из него выделены собственно
//  vcm_InternalOperations - иначе не выливались Hidden операции
//  (cq24357)
//
// Revision 1.169  2007/01/30 14:54:36  oman
// - fix: Обрезаем слишком длинные комментрии в StdRes (cq24249)
//
// Revision 1.168  2007/01/30 10:20:27  oman
// - fix: Локализация библиотек (cq24250)
//
// Revision 1.167  2007/01/24 15:45:05  lulin
// - сортируем список строк.
//
// Revision 1.166  2007/01/22 15:30:08  lulin
// - избавляемся от нефиксированных параметров при выполнении пользовательской операции.
//
// Revision 1.165  2007/01/20 15:31:09  lulin
// - разделяем параметры операции для выполнения и для тестирования.
//
// Revision 1.164  2007/01/17 18:47:33  lulin
// - сужаем список параметров для тестирования операции.
//
// Revision 1.163  2007/01/17 14:02:44  lulin
// - вычищены последние нефиксированные параметры в тестах операций.
//
// Revision 1.162  2007/01/16 14:27:30  lulin
// - избавляемся от нефиксированного параметра - подсказки операции.
//
// Revision 1.161  2007/01/16 14:13:11  lulin
// - избавляемся от нефиксированного параметра - заголовка операции.
//
// Revision 1.160  2007/01/10 15:40:07  lulin
// - cleanup.
//
// Revision 1.159  2006/12/13 09:22:06  mmorozov
// - new: возможность указывать фиксированный размер для зон стыковки панелей инструментов формы, в рамках работы над CQ: OIT5-13323;
//
// Revision 1.158  2006/12/10 17:05:15  lulin
// - cleanup.
//
// Revision 1.157  2006/11/03 11:00:31  lulin
// - объединил с веткой 6.4.
//
// Revision 1.156.2.6  2006/10/23 07:29:01  lulin
// - выливаем для контролов свойства Text и ItemsText.
//
// Revision 1.156.2.5  2006/10/23 06:30:42  lulin
// - bug fix: не локализовывались формы, которые не попадали в список форм приложения.
//
// Revision 1.156.2.4  2006/10/17 13:16:26  oman
// - fix: Поддержка локали приложения с заливкой перевода (cq23019)
//
// Revision 1.156.2.3  2006/10/17 08:13:18  lulin
// - заголовки контролов вычитываем из загруженных ресурсов.
//
// Revision 1.156.2.2  2006/10/17 07:37:05  lulin
// - ресурсы компонент загружаем в специально предназначенную для этого коллекцию.
//
// Revision 1.156.2.1  2006/10/16 13:42:43  oman
// - fix: Неверно искали модуль для записи нотификации => AV (cq23050)
// - fix: По шорткату записываем только успешные срабатывания
//  (иначе для запрещенных операций записывали 2 раза)
// - fix: При загрузке ресурсов локализации забыли про _Strings.
//
// Revision 1.156  2006/10/02 14:05:35  mmorozov
// - bugfix: не вызывался родительский конструктор;
//
// Revision 1.155  2006/09/21 13:06:33  mmorozov
// - new behaviour: в нотификации о выполнении операции подается выполняемая операция в виде IvcmOperationDef;
//
// Revision 1.154  2006/09/20 14:59:16  mmorozov
// - new: событие выполения операции пользователем (в рамках работы журнал работы пользователя);
//
// Revision 1.153  2006/06/27 11:29:36  oman
// - fix: Если перевода нет, то оставляем оригинальный текст
//
// Revision 1.152  2006/06/26 12:21:25  oman
// - new beh: Если указан параметр "-vcmTestLocalization" пытаемся грузить
//  на дебагной оболочке переведенные ресурсы из файла
//  <приложение>.res.eng  (cq21409)
//
// Revision 1.151  2006/06/07 12:53:02  oman
// - fix: При восстановлении настроек терялись DesignTime шорткаты -
//  другим макаром (cq21257)
//
// Revision 1.150  2006/06/06 13:23:54  mmorozov
// - библиотека не собиралась;
//
// Revision 1.149  2006/06/06 13:06:47  mmorozov
// - new behaviour: при активации закладки устанавливаем в нее фокус (CQ: OIT500021234);
//
// Revision 1.148  2006/06/06 10:55:56  oman
// - fix: Проблемы с вычитыванием шорткатов при переключении конфигураций (cq17830)
//
// Revision 1.147  2006/05/16 10:00:42  mmorozov
// - bugfix: при управлении видимостью если форма на экране присутствует, то сначала активируем, потом вызываем операцию (CQ: OIT500020595);
//
// Revision 1.146  2006/04/18 09:03:48  oman
// cleanup (убирание rCaption из vcmPathPair)
//
// Revision 1.145  2006/03/31 07:41:46  lulin
// - изменен тип параметров, подаваемый в Execte операции.
//
// Revision 1.144  2006/03/30 15:31:16  lulin
// - изменен тип параметров в _OnTest.
//
// Revision 1.143  2006/03/30 13:32:43  oman
// - fix: неправильно формировался комментарий для MenuManager._Strings в StdRes
//
// Revision 1.142  2006/03/30 10:36:26  lulin
// - делаем индекс состояния составным типом, чтобы сложнее было пользоваться не константами.
//
// Revision 1.141  2006/03/29 12:03:44  lulin
// - вычищены "причины".
//
// Revision 1.140  2006/03/23 14:17:08  lulin
// - bug fix.
//
// Revision 1.139  2006/03/23 14:06:51  lulin
// - добавлена коллекция строковых констант.
//
// Revision 1.138  2006/03/22 08:28:56  oman
// - new beh: в комментариях для StdRes строки заключаем в двойные кавычки
//
// Revision 1.137  2006/03/21 08:40:10  oman
// - new beh: в комментариях для StdRes строки заключаем в двойные кавычки
//
// Revision 1.136  2006/03/20 15:09:22  lulin
// - new behavior: заливаем строковые параметры состояний.
//
// Revision 1.135  2006/03/16 14:12:54  lulin
// - убрана возможность изменения входного параметра - идентификатора операции.
//
// Revision 1.134  2006/03/16 11:28:51  lulin
// - вычищены имена сущностей и операций - перешли на их идентификаторы.
//
// Revision 1.133  2006/03/16 10:42:29  lulin
// - генерируем идентификаторы сущностей и операций.
//
// Revision 1.132  2006/03/16 07:00:34  oman
// - new beh: изменен способ формирования комментариев для выливки состояний
//
// Revision 1.131  2006/03/15 15:39:49  oman
// - new beh: в StdRes выливаем константы для состряний операций
//
// Revision 1.130  2006/03/15 12:27:21  lulin
// - cleanup.
//
// Revision 1.129  2006/03/15 11:42:39  lulin
// - cleanup.
//
// Revision 1.128  2006/03/14 14:38:24  lulin
// - bug fix: не собиралась библиотека.
//
// Revision 1.127  2006/03/14 14:14:04  lulin
// - вычитываем имена форм из ресурсов.
//
// Revision 1.126  2006/03/14 12:39:02  lulin
// - new behavior: загружаем ресурсы для UserType'ов.
//
// Revision 1.125  2006/03/13 13:56:49  lulin
// - bug fix: не переводились операции модуля.
//
// Revision 1.124  2006/03/13 12:00:10  lulin
// - загрузка ресурсов переехала в более правильное место.
//
// Revision 1.123  2006/03/10 18:22:03  lulin
// - работа над заливкой/выливкой строковых ресурсов.
//
// Revision 1.122  2006/03/10 11:49:03  lulin
// - поддерживаем интерфейс IvcmResources - с реализацией.
//
// Revision 1.120  2006/03/10 10:07:36  lulin
// - вчерне реализован метод описания свойства объекта.
//
// Revision 1.119  2006/03/10 09:48:32  lulin
// - добавлен пустой метод - задел для описания свойства объекта системы.
//
// Revision 1.118  2006/02/02 14:48:43  mmorozov
// new: вычисление модуля в котором зарегистрирована формы, по классу формы;
// change: убрано указание модуля при создании формы;
//
// Revision 1.117  2005/10/07 16:48:37  mmorozov
// new: причины обновления сборки описаны на сборке, идентификаторы причин обновления генерятся в модуль в котором находится MenuManager;
//
// Revision 1.116  2005/09/29 14:08:44  mmorozov
// change: теперь в коллекциях сборок используют правильные классы наследники;
//
// Revision 1.115  2005/09/13 13:18:22  mmorozov
// - warning fix;
//
// Revision 1.114  2005/09/02 11:31:11  demon
// - new behavior: при активации формы, если ее не было она только создавалась. Теперь она еще и становится активной.
//
// Revision 1.113  2005/08/25 12:52:31  lulin
// - new behavior: по возможности используем не имена, а индексы форм.
//
// Revision 1.112  2005/08/02 12:51:21  mmorozov
// change: выливка идентификаторов сборок;
//
// Revision 1.111  2005/07/29 13:58:30  mmorozov
// change: идентификаторы сборок;
//
// Revision 1.110  2005/07/28 14:35:07  mmorozov
// new: methods _RegisterFormSetFactory (2);
// new: property _FormSetFactories;
// new: публикация идентификаторов сборок;
//
// Revision 1.109  2005/07/26 14:50:47  mmorozov
// new: коллекция фабрик сборок;
//
// Revision 1.108  2005/07/14 17:19:33  lulin
// - optimization: учитываем тот факт, что ID объекта - это его Index + 1.
//
// Revision 1.107  2005/07/14 16:39:45  lulin
// - new behavior: в run-time получаем ID сущности и модуля по их имени из информации, содержащейся в MenuManager'е.
//
// Revision 1.106  2005/07/14 16:02:48  lulin
// - new behavior: в run-time получаем ID операции по ее имени из информации, содержащейся в MenuManager'е.
//
// Revision 1.105  2005/02/02 14:47:35  mmorozov
// change: название метода;
//
// Revision 1.104  2005/02/02 14:42:59  mmorozov
// new: использование TvcmRepOperationsCollectionItem.IsFormActivateDefine;
//
// Revision 1.103  2005/01/24 10:32:20  lulin
// - bug fix: константы генерировались не в правильном месте.
//
// Revision 1.102  2005/01/21 13:35:58  lulin
// - к пользовательским операциям модулей приписываем префикс user.
//
// Revision 1.101  2005/01/21 12:23:36  lulin
// - к пользовательским операция приписываем префикс user.
//
// Revision 1.100  2005/01/14 10:42:30  lulin
// - методы Get*ParentForm переехали в библиотеку AFW.
//
// Revision 1.99  2004/12/23 08:40:30  lulin
// - вычищен ненужный модуль.
//
// Revision 1.98  2004/11/18 17:34:01  lulin
// - new interface: IvcmParamsPrim.
//
// Revision 1.97  2004/10/13 16:22:27  mmorozov
// new: property _HistoryZones, SaveFormZones (TvcmBaseMenuManager);
// new: const _vcm_HistoryZones, vcm_SaveFormZones;
//
// Revision 1.96  2004/10/07 14:17:01  lulin
// - new: теперь у _IvcmParams можно присваивать только свойство DoneStatus - код завершения. На основе этого "по-хитрому" обрабатываем ShortCut'ы для запрещенных операций (CQ OIT5-10123).
//
// Revision 1.95  2004/09/22 15:19:27  lulin
// - bug fix: в DesignTime неправильно регистрировались модули в MenuManager'е.
//
// Revision 1.94  2004/09/22 14:32:43  lulin
// - доделан DblClick в коллекции форм (открывает форму). Для этого пришлось завести свойство TvcmFormsCollectionItem.FormFile, т.к. я не нашел как средствами ToolsAPI найти файл от формы проекта.
//
// Revision 1.93  2004/09/22 13:19:11  lulin
// - DblClick в коллекции форм открывает форму.
//
// Revision 1.92  2004/09/22 09:34:32  lulin
// - оптимизщация - кешируем результат преобразования Name -> ID при посылке операций.
//
// Revision 1.91  2004/09/22 06:36:18  lulin
// - оптимизация - TvcmFormsCollection теперь тоже ищет элементы по индексу (в роли которого выступает класс формы).
//
// Revision 1.90  2004/09/21 16:24:07  mmorozov
// change: сигнатура RegisterOperation;
//
// Revision 1.89  2004/09/21 15:20:20  mmorozov
// optimization: ANSISameText заменяем на сравнение с пустой строчкой;
//
// Revision 1.88  2004/09/17 14:57:06  lulin
// - clenaup.
//
// Revision 1.87  2004/09/17 13:35:44  demon
// - fix: был AV при попытке обработать shortcut до инициализации vcmDispatcher
//
// Revision 1.86  2004/09/16 15:01:19  demon
// - new behavior: хинты к операциям с вкладками теперь содержат имя операции, а не имя вкладки
//
// Revision 1.85  2004/09/15 12:54:58  mmorozov
// new behaviour: в RunTime сортировка сообщений отключена по умолчанию, сообщения сортируются после загрузки в vcmBaseMenuManager;
//
// Revision 1.84  2004/09/15 12:06:25  demon
// - new behavior: для операций, управляющих видимостью форм не в зоне навигатора Хинт не меняем (не добавляем туда слова "показать/скрыть вкладку")
//
// Revision 1.83  2004/09/13 07:10:51  mmorozov
// remove: method UnRegisterOperation;
//
// Revision 1.82  2004/09/11 12:29:09  lulin
// - cleanup: избавляемся от прямого использования деструкторов.
// - new unit: vcmComponent.
//
// Revision 1.81  2004/09/10 12:23:53  lulin
// - оптимизация - гораздо аккуратнее обращаемся с UserType'ами и VisibleOpCount. В итоге уменьшено количество различных вызовов.
//
// Revision 1.80  2004/09/07 16:19:45  law
// - перевел VCM на кшированные обьекты.
//
// Revision 1.79  2004/09/02 17:20:15  mmorozov
// change: MenuImages -> SmallImages;
//
// Revision 1.78  2004/08/11 14:29:58  law
// - new behavior: сделан вызов Help'а для пунктов меню.
//
// Revision 1.77  2004/08/02 14:05:38  law
// - открутил VCM от тесной интеграции с моделью Немезиса.
//
// Revision 1.76  2004/07/30 10:00:05  nikitin75
// корректно мержим предустановленные (disigntime) шорткаты и прочитанные из настроек, bugfix
//
// Revision 1.75  2004/07/28 10:20:49  law
// - new prop: TvcmBaseMenuManager.MenuImages.
//
// Revision 1.74  2004/07/21 14:16:08  law
// - перенес настройку ShortCut'ов из библиотеки в приложение.
//
// Revision 1.73  2004/07/21 13:46:01  law
// - new event: TvcmBaseMenuManager.OnInitCommands.
//
// Revision 1.72  2004/07/21 13:36:42  law
// - cleanup.
//
// Revision 1.71  2004/07/21 12:46:23  nikitin75
// убиваем "лишние" shortcut'ы
//
// Revision 1.70  2004/07/21 12:16:17  nikitin75
// в таблицу shortcut'ов-исключений добавил Enter
//
// Revision 1.69  2004/07/20 13:03:22  nikitin75
// иннициализация таблицы shortcut'ов-исключений
//
// Revision 1.68  2004/06/16 09:18:48  am
// new: _LoadShortcuts
//
// Revision 1.67  2004/06/02 15:41:46  law
// - bug fix: используем "правильные" списки.
//
// Revision 1.66  2004/06/01 17:13:22  law
// - удален конструктор Tl3VList.MakePersistent - пользуйтесь _Tl3ObjectRefList.
//
// Revision 1.65  2004/05/19 12:57:26  am
// new BackupOpStatus\RestoreOpStatus
//
// Revision 1.64  2004/05/13 09:04:45  nikitin75
// аккуратнее транслируем shortcut в CommandID
//
// Revision 1.63  2004/04/13 06:30:38  nikitin75
// fix: добавлен {$If  DesignTimeLibrary}...
//
// Revision 1.62  2004/04/12 08:10:39  nikitin75
// + IvcmEntityForm.IsModalForm;
// + по shortcut не зовем операцию модуля, если форма активной сущноси модальная;
//
// Revision 1.61  2004/04/12 08:09:33  am
// переименовал: SaveAllToolbars -> SaveActiveForms
//
// Revision 1.60  2004/04/07 06:39:09  am
// change: синтаксис
//
// Revision 1.59  2004/04/06 10:33:13  mmorozov
// new: использование IvcmEntityForm.SetActiveAndShowInParent;
//
// Revision 1.58  2004/03/30 10:27:05  mmorozov
// new behaviour: при активизации закладки передаём флаг в процедуру SetActiveInParent;
//
// Revision 1.57  2004/03/26 15:44:14  mmorozov
// - перенесены методы активации формы;
//
// Revision 1.56  2004/03/26 14:26:58  mmorozov
// new behaviour: если выбор был произведен из выпадающего списка кнопки всегда вызываем OnExecute операции;
//
// Revision 1.55  2004/03/26 10:45:17  am
// change: BeginOp\EndOp прокидываются из TvcmDispatcher'а
// new: поддержка операции "закрепить панели инструментов" (кнопка получила доп. параметр - IconText)
// bugfix: правки, связанные с загрузкой позиций тулбаров и созданием "виртуальных" тулбаров (из диалога настройки)
//
// Revision 1.54  2004/03/25 15:22:32  mmorozov
// new behavior: при поиске формы вместо _CurrentMainForm используем _NativeMainForm;
//
// Revision 1.53  2004/03/25 07:59:20  mmorozov
// - field rename;
//
// Revision 1.52  2004/03/25 07:55:27  mmorozov
// new: директивы в связи с использованием TvcmList;
//
// Revision 1.51  2004/03/24 14:20:01  mmorozov
// new: упраление активностью форм при использовании кнопки с выпадающим меню (vcm_otButtonCombo);
//
// Revision 1.50  2004/03/24 10:22:59  mmorozov
// new: используем TvcmList вместо TList;
// new: комментарии;
// - переименованы классы;
//
// Revision 1.49  2004/03/23 15:11:01  am
// change: семантика _PostBuild
//
// Revision 1.48  2004/03/23 14:00:21  mmorozov
// bugfix;
//
// Revision 1.47  2004/03/23 09:48:28  mmorozov
// new: при освобождении TvcmManagerFormActivate возвращаем операции старые обработчики;
//
// Revision 1.46  2004/03/23 06:52:56  mmorozov
// - метод CheckParams переименован на _FindForm (TvcmManagerFormActivate);
//
// Revision 1.45  2004/03/23 05:57:01  mmorozov
// new: сортировку для сущностей MenuManager включаем в _TvcmRepEntitiesCollection;
//
// Revision 1.44  2004/03/22 14:26:12  mmorozov
// new: Entities._Sorted := True (включаем сортировку сущностей);
//
// Revision 1.43  2004/03/20 16:10:08  mmorozov
// new: при выводе hint-а если форма существует, то используем ее Caption;
//
// Revision 1.42  2004/03/20 15:24:58  mmorozov
// delete: TvcmManagerFormsActivate.LoadOperations;
// new: используем FormActivate.TypeActivate;
// bugfix: регистрация операций модуля;
//
// Revision 1.41  2004/03/20 09:37:51  mmorozov
// new: field TvcmManagerFormActivate.FormActivate;
// new: не вызываем обработчик операции если форма существует и _TvcmFormActivate._DoExecuteIfExists = False;
// new: устанавливаем Hint у операции (показать/скрыть закладку "");
//
// Revision 1.40  2004/03/19 15:03:19  mmorozov
// new: в метод _HasForm добавлен параметр (UserType : Integer = vcm_utAny);
//
// Revision 1.39  2004/03/19 13:20:58  mmorozov
// new: классы TvcmManagerFormsActivate, TvcmManagerFormActivate, TvcmListManagersFormActivate, TvcmListOperations (управление активностью форм);
//
// Revision 1.38  2004/03/16 16:37:28  am
// new: SaveAllToolbars, ReloadAllToolbars
//
// Revision 1.37  2004/03/05 08:38:49  am
// new: TvcmCustomMenuManager.MergedToMainForm - смержены ли тулбары данной формы в главную форму.
//
// Revision 1.36  2004/03/04 08:04:03  am
// new: сохранение(TvcmEntityForm.SaveToolbars)/восстановление(TvcmCustomMenuManager._PostBuild) положения, доков, etc.. тулбаров
//
// Revision 1.35  2004/03/04 07:35:07  nikitin75
// fix: c_GroupStep correct;
//
// Revision 1.34  2004/03/03 11:17:09  nikitin75
// + продолжаем поиск shortcut в основных таблицах, если он найден но не обработан в расширенной;
//
// Revision 1.33  2004/02/27 19:22:16  law
// - bug fix: поправлена обработка ShortCut'ов для операций модулей.
// - bug fix: поправдена ДВОЙНАЯ обработка ShortCut'ов в случае редактора.
//
// Revision 1.32  2004/02/27 15:55:01  nikitin75
// + OvcController для поддержки shortcuts;
//
// Revision 1.31  2004/02/11 12:18:38  law
// - new behavior: пересоздаем Toollbar'ы для всех заинтересованных форм.
//
// Revision 1.30  2004/01/28 09:36:16  law
// - change: изменил префиксы сообщений.
//
// Revision 1.29  2004/01/27 18:37:27  law
// - bug fix.
//
// Revision 1.28  2004/01/27 17:23:17  law
// - bug fix: неправильно писались идентификаторы сообщений.
//
// Revision 1.27  2004/01/27 17:10:14  law
// - new behavior: генерируем идентификаторы сообщений.
//
// Revision 1.26  2004/01/27 17:02:00  law
// - new prop: TevBaseMenuManager.Messages.
//
// Revision 1.25  2004/01/27 16:52:57  law
// - new units: vcmMessagesCollection, vcmMessagesCollectionItem.
//
// Revision 1.24  2003/12/01 11:01:38  law
// - bug fix: поправлена генерация UserType'ов.
// - bug fix: свойство Weigth переименовано в _Weight.
//
// Revision 1.23  2003/11/30 15:15:31  law
// - new behavior: добавлена генерация констант для операций модуля.
//
// Revision 1.22  2003/11/30 14:36:43  law
// - new behavior: добавлена генерация констант для операций модуля.
//
// Revision 1.21  2003/11/30 12:38:16  law
// - bug fix: при убивании формы удаляем ссылку на нее из MenuManager'а.
//
// Revision 1.20  2003/11/30 11:39:41  law
// - new behavior: автогенерируем типы пользовательских объектов.
//
// Revision 1.19  2003/11/28 13:01:30  law
// - new behavior: опираемся на идентификаторы форм, а не на имена.
//
// Revision 1.18  2003/11/27 18:55:57  law
// - new prop: TvcmBaseMenuManager._AppForms - список всех форм приложения.
//
// Revision 1.17  2003/11/27 11:06:28  law
// - new behavior: при регистрации операции метим модуль с MenuManager'ом как модифицированный.
//
// Revision 1.16  2003/11/25 09:48:18  law
// - bug fix: сущности в MenuManager'е реистрировались в неправильный момент.
//
// Revision 1.15  2003/11/24 17:46:35  law
// - new behavior: если MenuManager создается позже других форм, то он пытается зарегистрировать у себя операции всех открытых форм.
//
// Revision 1.14  2003/11/24 17:22:51  law
// - new prop: TvcmBaseMenuManager.Modules.
//
// Revision 1.13  2003/11/24 17:09:15  law
// - new behavior: после генерации идентификаторов операций показываем редактор, в который были вставлены идентификаторы.
//
// Revision 1.12  2003/11/21 13:21:49  law
// - bug fix: идентификаторы операций генерировались куда ни попадя.
//
// Revision 1.11  2003/11/20 20:37:57  law
// - new behavior: корректно генерируем список идентификаторов операций.
// - new behavior: вызов операций сущностей возможен теперь только по идентификатору.
// - cleanup: пытаемся в Design-Time отвязаться от GblAdapter (не получилось).
//
// Revision 1.10  2003/11/20 13:12:29  law
// - new behavior: сделана генерация констант-идентификаторов сущностей, и операций.
//
// Revision 1.9  2003/11/19 17:23:03  law
// - bug fix: не всегда операция регистрировалась в MenuManager'е.
//
// Revision 1.8  2003/11/19 15:18:41  law
// - bug fix: неправильно вычислялся _GroupID.
// - new behavior: дерегестрируем описатели операций из MenuManager'а.
//
// Revision 1.7  2003/11/19 12:56:52  law
// - new behavior: отобразил свойства операций на формах на централизованное хранилище (Caption, ImageIndex, _GroupID, _Category, OperationType).
//
// Revision 1.6  2003/11/19 11:38:24  law
// - new behavior: регистрируем все сущности и операции в MenuManager'е для дальнейшей централизации редактирования. Само редактирование пока не доделано.
//
// Revision 1.5  2003/11/18 19:35:54  law
// - new: начал делать общий репозиторий модулей, сущностей и операций в MenuManager'е. Чтобы все можно было править из одного места.
//
// Revision 1.4  2003/11/18 16:40:31  law
// - new behavior: для Root'а не делаем подменю.
// - bug fix: для компонент связанных в Run-time  с сущностями не присваивалось контекстное меню.
//
// Revision 1.3  2003/10/28 09:57:48  law
// - new behavior: пункты основного меню строятся на основе MainMenuItems.
//
// Revision 1.2  2003/04/22 14:03:00  law
// - new behavior: сделана обработка операций, описанных на основной форме.
//
// Revision 1.1  2003/04/01 12:54:43  law
// - переименовываем MVC в VCM.
//
// Revision 1.1  2003/03/14 14:55:44  law
// - new units: vcmBaseMenuManager, vcmMenuManager.
//

{$Include vcmDefine.inc }

interface

uses
  SysUtils,
  Classes,
  Forms,
  Menus,
  {$IfDef DesignTimeLibrary}
  ToolsAPI,
  {$EndIf DesignTimeLibrary}
  ImgList,
  ActnList,

  OvcBase,
  OvcCmd,

  l3Interfaces,
  l3ProtoObjectRefList,

  afwInterfaces,

  vcmBase,
  vcmExternalInterfaces,
  vcmUserControls,
  vcmInterfaces,
  vcmModule,

  vcmBaseCollection,
  vcmBaseCollectionItem,
  vcmBaseEntitiesCollection,
  vcmBaseEntities,
  vcmBaseOperationsCollectionItem,

  vcmEntityForm,
  vcmFormsCollection,
  vcmStringCollection,
  vcmMessagesCollection,
  vcmModulesCollection,
  vcmRepOperationsCollectionItem,
  vcmRepEntitiesCollectionItem,
  //vcmFormSetFactoriesCollection,
  vcmFormSetFactory,
  vcmMenus,
  vcmPopupMenuPrim,
  
  l3StringIDEx
  ;


const
  vcm_HistoryZones = [vcm_ztParent];
    {* - зоны в которых формы сохраняются в историю. }
  vcm_SaveFormZones = [vcm_ztNavigator];
    {* - сохранять формы в настройки при изменении родителя если они находятся
         в перечисленных зонах. }
{$If not defined(NoVCM)}
const
  {  }
 c_vcmTableName = 'vcmTable';
 c_vcmStopTableName = 'vcmStopTable';
{$IfEnd} //not NoVCM

type

  TvcmBaseMenuManager = class;

  TvcmFormActivateManager = class;

  TvcmOperationManager = class(TvcmCacheableBase)
  {* - менеждер операции. Перехватывает операции OnTest и OnExecute операции, для управления формой. }
  private
    //internal fields
    f_OldOnTest    : TvcmTestEvent;
    f_OldOnExecute : TvcmExecuteEvent;
    f_OldOnContextTest: TvcmTestEvent;
    f_OldOnContextExecute : TvcmExecuteEvent;
    f_Managers     : TvcmFormActivateManager;
    f_FormID       : TvcmFormID;
    //property fields
    f_FormActivate : TvcmFormActivate;
    f_Operation    : TvcmBaseOperationsCollectionItem;
    f_Form         : IvcmEntityForm;
  protected
    //internal methods
    procedure DoTest(const aParams : IvcmTestParamsPrim; const aHandler: TvcmTestEvent);
      {* - проверяет наличие и активность формы. }
    procedure DoExecute(const aParams : IvcmExecuteParams; const aHandler: TvcmExecuteEvent);
      {* - скрывает форму если активна, или активирует. }
    procedure OnTest(const aParams : IvcmTestParamsPrim);
      {* - проверяет наличие и активность формы. }
    procedure OnExecute(const aParams : IvcmExecuteParams);
      {* - скрывает форму если активна, или активирует. }
    procedure OnContextTest(const aParams : IvcmTestParamsPrim);
      {* - проверяет наличие и активность формы. }
    procedure OnContextExecute(const aParams : IvcmExecuteParams);
      {* - скрывает форму если активна, или активирует. }
    function FindForm(const aParams : IvcmContainer;
                      theForm       : PIvcmEntityForm = nil): Boolean;
      {* - ищет форму в приложении используя информацию поля FormActivate. }
    //inherited methods
    procedure Cleanup;
      override;
      {-}
    //property methods
    procedure SetFormActivate(const Value: TvcmFormActivate);
      {-}
    procedure SetOperation(const Value: TvcmBaseOperationsCollectionItem);
      {* - подменяет OnTest и OnExecute операции своими обработчиками. }
  public
    constructor Create(const aForm   : IvcmEntityForm;
                       aManagers     : TvcmFormActivateManager;
                       aFormActivate : TvcmFormActivate;
                       aOperation    : TvcmBaseOperationsCollectionItem);
      reintroduce;                 
      {-}
    property Operation : TvcmBaseOperationsCollectionItem
      read f_Operation
      write SetOperation;
      {-}
    property FormActivate : TvcmFormActivate
      read f_FormActivate
      write SetFormActivate;
      {-}
    property Form : IvcmEntityForm
      read f_Form;
      {-}
  end;//TvcmOperationManager

  TvcmOperationManagers = class(TvcmCacheableBase)
  {* - список менеджеров операции. }
  private
    //internal fields
    {$IfNDef DesignTimeLibrary}
    f_Managers : Tl3ProtoObjectRefList;
    {$EndIf  DesignTimeLibrary}
  protected
    //property methods
    function GetCount: Integer;
      {-}
    function GetItem(Index: Integer): TvcmOperationManager;
      {-}
    procedure Cleanup;
      override;
      {-}
  public
    constructor Create;
      reintroduce;
      {-}
    procedure Add(const aManager : TvcmOperationManager);
      {-}
    procedure Delete(const aForm : IvcmEntityForm);
      {-}
    property Count : Integer
      read GetCount;
      {-}
    property Items[Index : Integer] : TvcmOperationManager
      read GetItem; default;
      {-}
  end;//TvcmOperationManagers

  TvcmFormActivateOperations = class(TvcmCacheableBase)
  {* - список операций модулей и сущностей заявленных на управление формой (FormActivate <> ''). }
  private
    f_IsModulesLoad  : Boolean;
    f_IsEntitiesLoad : Boolean;
    f_Operations     : TvcmObjectList;
    f_MenuManager    : TvcmBaseMenuManager;
  protected
    //internal methods
    procedure LoadOperations;
      {-}
    //Property methods
    function GetCount: Integer;
      {-}
    function GetItem(Index: Integer): TvcmBaseOperationsCollectionItem;
      {-}
    //Inherited methods
    procedure Cleanup;
      override;
      {-}
  public
    constructor Create(aMenuManager : TvcmBaseMenuManager);
      reintroduce;
      {-}
    function GetFormActivate(aOperation : TvcmBaseOperationsCollectionItem) : TvcmFormActivate;
      {* - возвращает FormActivate, если операция заявлена на управление формой. }
    procedure AddOperation(aOperation : TvcmRepOperationsCollectionItem);
      {* - добавляет в список операцию заявленную на управление формой. }
    property Count : Integer
      read GetCount;
      {-}
    property Items[Index : Integer] : TvcmBaseOperationsCollectionItem
      read GetItem;
      {-}
  end;

  TvcmFormActivateManager = class(TvcmCacheableBase)
  {* - координтор управления активностью форм. }
  private
    //property fields
    f_MenuManager      : TvcmBaseMenuManager;
    f_Managers         : TvcmOperationManagers;
    f_Operations       : TvcmFormActivateOperations;
  protected
    //internal methods
    procedure RegOperation(aOperation    : TvcmBaseOperationsCollectionItem;
                           const aForm   : IvcmEntityForm);
      {* - если данная операция заявлена на управление формой, то получает FormActivate у TvcmFormActivateOperations и создаёт TvcmOperationManager. }
    //inherited methods
    procedure Cleanup;
      override;
      {-}
    //property methods
    function GetCount: Integer;
      {-}
    function GetItem(Index: Integer): TvcmOperationManager;
      {-}
  public
    constructor Create(aMenuManager : TvcmBaseMenuManager);
      reintroduce;
      {-}
    procedure AddForm(const aForm : IvcmEntityForm);
      {* - регистрирует операции сущностей. }
    procedure RemoveForm(const aForm : IvcmEntityForm);
      {* - при удалении формы удаляет созданных TvcmOperationManager-ов. }
    procedure AddModule(aModule : TvcmModule);
      {* - регистрирует операции модуля. }
    property Count : Integer
      read GetCount;
      {-}
    property Items[Index : Integer] : TvcmOperationManager
      read GetItem;
      {-}
    property Operations : TvcmFormActivateOperations
      read f_Operations;
      {* - см. TvcmFormActivateOperations. }
    property MenuManager : TvcmBaseMenuManager
      read f_MenuManager;
      {-}
  end;//TvcmFormActivateManager

  TvcmInitCommandsEvent = procedure (aSender: TObject; aCommands: TObject) of object;

  TvcmOperationExecuteNotify = procedure (const aType       : TvcmOperationCallType;
                                          const anOperation : IvcmOperationDef) of object;
    {* - сигнатура события о выполении операции. }

  TvcmBaseMenuManager = class(TvcmBaseEntities
                              {$IfDef vcmNeedL3}
                              , IvcmResources
                              {$EndIf vcmNeedL3})
    private
    // internal fields
    {$IfNDef DesignTimeLibrary}
      f_FormActivateManager : TvcmFormActivateManager;
    {$EndIf DesignTimeLibrary}
    // property fields
      f_AppForms                 : TvcmFormsCollection;
      f_Modules                  : TvcmModulesCollection;
      f_Strings                  : TvcmStringCollection;
      f_Messages                 : TvcmMessagesCollection;
      f_SmallImages              : TCustomImageList;
      f_LargeImages              : TCustomImageList;
      f_OnInitCommands           : TvcmInitCommandsEvent;
      f_SaveFormZones            : TvcmEffectiveZoneTypes;
      f_HistoryZones             : TvcmEffectiveZoneTypes;
      //f_FormSetFactories         : TvcmFormSetFactoriesCollection;
      f_OnOperationExecuteNotify : TvcmOperationExecuteNotify;
    f_ToolbarPopup : TvcmPopupMenuPrim;
      f_KeywordsRegistered : Boolean;
    protected
    // property methods
      {$IfDef DesignTimeLibrary}
      function  pm_GetEditor: IOTAEditor;
        {-}
      function  pm_GetModule: IOTAModule;
        {-}
      function  pm_GetUnitName: String;
        {-}
(*      function  pm_GetUnitPath: String;
        {-}*)
      function  pm_GetSourceEditor: IOTASourceEditor;
        {-}
      {$EndIf  DesignTimeLibrary}
      procedure pm_SetAppForms(aValue: TvcmFormsCollection);
        {-}
(*      procedure pm_SetFormFactories(aValue: TvcmFormSetFactoriesCollection);
        {-}*)
      function  pm_GetModules: TvcmBaseEntitiesCollection;
        {-}
      procedure pm_SetModules(aValue: TvcmBaseEntitiesCollection);
        {-}
      procedure pm_SetMessages(aValue: TvcmMessagesCollection);
        {-}
      procedure pm_SetStrings(aValue: TvcmStringCollection);
        {-}
      procedure pm_SetSmallImages(Value: TCustomImageList);
        {-}
      procedure pm_SetLargeImages(Value: TCustomImageList);
        {-}
    protected
    // internal methods
      {$IfDef vcmNeedL3}
      procedure Define(const aName   : AnsiString;
                       const aRus    : AnsiString;
                       const anAlien : AnsiString);
        {-}
      {$EndIf vcmNeedL3}
      {$IfDef DesignTimeLibrary}
      procedure WriteRes;
        {-}
      procedure WriteState(Writer: TWriter);
        override;
        {-}
      procedure RegisterEntities;
        {-}
      {$EndIf DesignTimeLibrary}
      function  DoShortCutCommand(aCommand: Word): Boolean;
        {-}
      procedure Cleanup;
        override;
        {-}
    protected
    // protected properties
      {$IfDef DesignTimeLibrary}
      property Module: IOTAModule
        read pm_GetModule;
        {-}
      property Editor: IOTAEditor
        read pm_GetEditor;
        {-}
      property SourceEditor: IOTASourceEditor
        read pm_GetSourceEditor;
        {-}
      {$EndIf  DesignTimeLibrary}
    public
    // public methods
      constructor Create(anOwner: TComponent);
        override;
        {-}
      class function GetModulesCollectionClass: RvcmModulesCollection;
        virtual;
        {-}
      class function GetEntitiesCollectionClass: RvcmBaseCollection;
        override;
        {-}
      procedure OperationExecuteNotify(const aType       : TvcmOperationCallType;
                                       const anOperation : IvcmOperationDef);
        {* - нотификация о выполении операции. Вызывается перед выполением
             операции. При вызове ShortCut, anAction не заполняется, вызывается
             непосредственно операция. Если будет необходимо обязательно
             получать имя операции, то параметр anAction нужно будет переделать
             например на IvcmOperationDef. }
      procedure Loaded;
        override;
        {-}
      procedure RegisterKeywords;
        {-}
      procedure Notification(AComponent: TComponent; Operation: TOperation);
        override;
        {-}
      procedure RegisterModuleInMenu(aForm            : TvcmEntityForm;
                                     const aModuleDef : IvcmModuleDef);
        virtual;
        {* - регистрирует модуль в меню, toolbar'ах, etc. Для перекрытия в потомках. }
      procedure MainCreated(aForm: TvcmEntityForm);
        virtual;
        {-}
      procedure RegisterMainInMenu(aForm: TvcmEntityForm);
        virtual;
        {* - регистрирует основную форму в меню, toolbar'ах, etc. Для перекрытия в потомках. }
      procedure RegisterChildInMenu(aForm: TvcmEntityForm);
        virtual;
        {* - регистрирует дочернюю форму в меню, toolbar'ах, etc. Для перекрытия в потомках. }
      function  GetPopupMenu: TPopupMenu;
        virtual;
        {-}
      function  GetOperationableObjectByID(anID: Integer): TvcmRepEntitiesCollectionItem;
        {-}
      function  GetOperationableObjectByName(const aName : String;
                                             aModule     : Boolean): TvcmRepEntitiesCollectionItem;
        {-}
      procedure RegisterOperation(const aControl : IvcmIdentifiedUserFriendlyControl;
                                  const anOp     : IvcmOperationDef;
                                  anUFHolder     : TObject;
                                  anOpHolder     : TObject);
        {-}
      procedure AddForm(const aForm : IvcmEntityForm);
        {}
      procedure RemoveForm(const aForm: IvcmEntityForm);
        {-}
      procedure ReloadToolbars(const aForm  : IvcmEntityForm);
        virtual;
        {-}
      procedure ReloadAllToolbars;
        {-}
      procedure PostBuild(aForm        : TvcmEntityForm;
                          aFollowDocks : Boolean = False);
        virtual;
        {-}
      procedure LoadShortcuts(aResetToDefault: Boolean = False);
        {-}
      function  MergedToMainForm(aForm: TvcmEntityForm): Boolean;
        virtual;
        {-}
      procedure AddModule(aModule : TvcmModule);
        {-}
      procedure BackupOpStatus;
        virtual;
        {-}
      procedure RestoreOpStatus;
        virtual;
        {-}
      procedure BeginOp;
        virtual;
        {-}
      function  GetOpLock: Boolean;
        virtual;
        {-}
      procedure EndOp;
        virtual;
        {-}
      procedure FastenToolbars;
        virtual;
        {-}
      function  GetFastenMode: Boolean;
        virtual;
        {-}
      function  BuildVirtualForm(aFormClass       : RvcmEntityForm;
                                 out NeedFreeForm : Boolean;
                                 aUserType        : TvcmUserType = vcm_utAny): TvcmEntityForm;
        {-}
(*      {$IfDef DesignTimeLibrary}
      procedure RegisterFormSetFactory(const aFactory : TvcmFormSetFactory);
        {* - регистрирует фабрику сборки. }
      {$Else  DesignTimeLibrary}
      procedure RegisterFormSetFactory(const aFactoryClass : RvcmFormSetFactory);
        {* - устанавливает класс сборки. }
      {$EndIf  DesignTimeLibrary}*)
      function  ObjectByType(anObject           : TvcmObject;
                             const anObjectName : String;
                             const aSubName     : String = '';
                             ForceCreate        : Boolean = false): TvcmBaseCollectionItem;
        virtual;
        {-}
      procedure DefineObjectProp(anObject           : TvcmObject;
                                 const anObjectName : String;
                                 const aSubName     : String;
                                 const aProp        : String;
                                 const aValue       : String);
        {-}
      function OpDefBySelector(const anOp: TvcmOpSelector): IvcmOperationDef;
        {-}
      function BuildAction(const anOp: TvcmOpSelector; const aDefaultAction: TCustomAction = nil): TCustomAction;
        {-}
      function UnlockInProgress: Boolean;
       virtual;
        {-}
      procedure AddControlForUnlockPostBuild(const aCOntrol: IafwMenuUnlockedPostBuild);
        virtual;
        {-}
      procedure ListenerControlDestroying(const aCOntrol: IafwMenuUnlockedPostBuild);
        virtual;
        {-}
    public
    // public properties
      property Strings: TvcmStringCollection
        read f_Strings
        write pm_SetStrings;
        {-}
      property HistoryZones: TvcmEffectiveZoneTypes
        read f_HistoryZones
        write f_HistoryZones
        default vcm_HistoryZones;
        {* - формы зон, которые сохраняются в историю. }
      property SaveFormZones : TvcmEffectiveZoneTypes
        read f_SaveFormZones
        write f_SaveFormZones
        default vcm_SaveFormZones;
        {* - сохранять формы в настройки при изменении родителя если они
             находятся в перечисленных зонах. }
      {$IfDef DesignTimeLibrary}
      property UnitName: String
        read pm_GetUnitName;
        {-}
(*      property UnitPath: String
        read pm_GetUnitPath;
        {-}*)
      {$EndIf DesignTimeLibrary}  
      property Modules: TvcmBaseEntitiesCollection
        read pm_GetModules
        write pm_SetModules;
        {* - коллекция модулей. }
      property AppForms: TvcmFormsCollection
        read f_AppForms
        write pm_SetAppForms;
        {-}
(*      property FormSetFactories : TvcmFormSetFactoriesCollection
        read f_FormSetFactories
        write pm_SetFormFactories;
        {-}*)
      property Messages: TvcmMessagesCollection
        read f_Messages
        write pm_SetMessages;
        {-}
      property SmallImages: TCustomImageList
        read f_SmallImages
        write pm_SetSmallImages;
        {-}
      property LargeImages: TCustomImageList
        read f_LargeImages
        write pm_SetLargeImages;
        {-}
    property ToolbarPopup: TvcmPopupMenuPrim
      read f_ToolbarPopup;
    public
    // Events
      property OnInitCommands: TvcmInitCommandsEvent
        read f_OnInitCommands
        write f_OnInitCommands;
        {-}
      property OnOperationExecuteNotify: TvcmOperationExecuteNotify
        read f_OnOperationExecuteNotify
        write f_OnOperationExecuteNotify;
        {* - событие возникает перед выполением операции. }
  end;//TvcmBaseMenuManager

var
 g_MenuManager : TvcmBaseMenuManager = nil;

procedure _DoInitConstString(var anID: Tl3StringIDEx);
procedure vcmStartupComplete;

implementation

uses
  {$IfNDef DesignTimeLibrary}
  Windows,
  {$IfDef vcmNeedElPack}
  ElPgCtlConsts,
  {$EndIf vcmNeedElPack}
  l3InterfacesMisc,
  {$EndIf  DesignTimeLibrary}
  TypInfo,
  StrUtils,
  Dialogs,

  {$IfDef vcmNeedL3}
  l3String,
  {$EndIf  vcmNeedL3}
  l3ConstStrings,

  afwFacade,

  {$IfNDef DesignTimeLibrary}
  vtUtils,
  {$EndIf  DesignTimeLibrary}

  {$IfDef vcmUseSettings}
  vcmSettings,
  {$EndIf IvcmDispatcher}
  vcmEntities,
  vcmModuleDef,
  vcmForm,
  vcmMainForm,
  vcmTasksPanel,

  vcmBaseEntitiesCollectionItem,
  vcmBaseOperationsCollection,
  vcmBaseOperationState,
  vcmFormsCollectionItem,
  //vcmFormSetFactoriesCollectionItem,
  vcmMessagesCollectionItem,
  vcmModulesCollectionItem,
  vcmRepEntitiesCollection,
  vcmRepOperationsCollection,

  vcmModuleAction,
  vcmEntityAction,

  vcmExportConst,
  vcmContentConst,

  vcmInternalConst,

  vcmOVCCommands,

  l3Base,
  l3LongintList,

  vcmBaseMenuManagerRes

{$IfNDef DesignTimeLibrary}
{$IFNDEF Archi}
  ,
  kwEntityOperation
{$ENDIF Archi}
{$EndIf DesignTimeLibrary}  
  ;

var g_ShortcutProcessingEnabled: Boolean = False;

procedure vcmStartupComplete;
begin
 g_ShortcutProcessingEnabled := True;
end;

{$IfNDef DesignTimeLibrary}

(*type
  TvcmConstStrings = Tl3ConstStringsPrim;

var
 g_ConstStrings : TvcmConstStrings = nil;
 g_ConstStringsSealed : Boolean = false;

procedure FreeConstStrings;
begin
 FreeAndNil(g_ConstStrings);
end;*)
{$EndIf  DesignTimeLibrary}
 
procedure _DoInitConstString(var anID: Tl3StringIDEx);
{$IfNDef DesignTimeLibrary}
                             
(* procedure AddToTempList;
 begin
  if (g_ConstStrings = nil) then
  begin
   g_ConstStrings := TvcmConstStrings.Create;
   l3System.AddExitProc(FreeConstStrings);
  end;//g_ConstStrings = nil
  g_ConstStrings.Add(@anID);
 end;*)

var
 l_Item : TvcmBaseCollectionItem;
{$EndIf  DesignTimeLibrary} 
begin
 Assert((l3StrRefCount(anID.rKey) = -1));
 if not anID.rLocalized then
  Assert((l3StrRefCount(anID.rValue) = -1));
 {$IfDef DesignTimeLibrary}
 Assert(anID.rS = -1);
 anID.rS := Integer(@anID.rValue);
 {$Else  DesignTimeLibrary}
 if (g_MenuManager = nil) then
 begin
(*  Assert(not g_ConstStringsSealed);
  AddToTempList;*)
  Exit;
 end;//g_MenuManager = nil
 with g_MenuManager.Strings do
 begin
  l_Item := FindItemByName(anID.rKey);
  if (l_Item = nil) then
  begin
   l_Item := TvcmBaseCollectionItem(Add);
   l_Item.Name := anID.rKey;
   l_Item.Caption := anID.rValue;
  end//l_Item = nil
  else
   Assert(l_Item.Caption = anID.rValue, 'Локализуемую строковую константу ' + anID.rKey + ' надо править на модели');
  Assert((anID.rS = -1) OR (anID.rS = l_Item.Index));
  anID.rS := l_Item.Index;
 end;//with g_MenuManager.Strings
 {$EndIf  DesignTimeLibrary}
end;

procedure ConstStringsToMenuManager;
{$IfNDef DesignTimeLibrary}
var
 l_Index : Integer;
{$EndIf  DesignTimeLibrary}
begin
 {$IfNDef DesignTimeLibrary}
 if Tl3ConstStrings.Exists then
 begin
  g_l3ConstStringsSealed := true;
  with Tl3ConstStrings.Instance do
  begin
   for l_Index := 0 to Hi do
     _DoInitConstString(Items[l_Index]^);
   Clear;  
  end;//with Tl3ConstStrings.Instance
 end;//Tl3ConstStrings.Exists

(* if (g_ConstStrings <> nil) then
 begin
  g_ConstStringsSealed := true;
  with g_ConstStrings do
   for l_Index := 0 to Hi do
     _DoInitConstString(Items[l_Index]^);
  FreeAndNil(g_ConstStrings);
 end;//g_ConstStrings <> nil*)
 {$EndIf  DesignTimeLibrary}
end;

// start class TvcmBaseMenuManager

constructor TvcmBaseMenuManager.Create(anOwner: TComponent);
  //override;
  {-}
var
 l_Controller : TOvcController;
begin
 if (g_MenuManager <> nil) then
  raise Exception.Create('MenuManager в приложении может быть только один');
 inherited;
 f_SaveFormZones := vcm_SaveFormZones;
 f_HistoryZones := vcm_HistoryZones;
 g_MenuManager := Self;
 f_Modules := GetModulesCollectionClass.Create(Self);
 f_AppForms := TvcmFormsCollection.Create(Self);
(* f_FormSetFactories := TvcmFormSetFactoriesCollection.
  Create(Self);*)
 f_Strings := TvcmStringCollection.Create(Self);
 f_Messages := TvcmMessagesCollection.Create(Self);
 {$IfNDef DesignTimeLibrary}
 f_FormActivateManager := TvcmFormActivateManager.Create(Self);
 {$EndIf DesignTimeLibrary}
 l_Controller := GetDefController;
 if Assigned(l_Controller) then
  with l_Controller.EntryCommands do
  begin
   ExtTableName := c_vcmTableName;
   StopExtTableName := c_vcmStopTableName;
   OnExtCommand := DoShortCutCommand;
   CreateCommandTable(c_vcmStopTableName, true);
  end;//with l_Controller.EntryCommands
 f_ToolbarPopup := TvcmPopupMenuPrim.Create(Self);
end;

procedure TvcmBaseMenuManager.Cleanup;
  //override;
  {-}
begin
 FreeAndNil(f_Messages);
 FreeAndNil(f_Modules);
{$IfNDef DesignTimeLibrary}
 vcmFree(f_FormActivateManager);
{$EndIf DesignTimeLibrary}
 g_MenuManager := nil;
 FreeAndNil(f_AppForms);
// FreeAndNil(f_FormSetFactories);
 inherited;
 FreeAndNil(f_Strings);
end;

procedure TvcmBaseMenuManager.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
 inherited Notification(AComponent, Operation);
 if Operation = opRemove then
  if AComponent = SmallImages then
   SmallImages := nil
  else
   if AComponent = LargeImages then
    LargeImages := nil;
end;

class function TvcmBaseMenuManager.GetModulesCollectionClass: RvcmModulesCollection;
  //virtual;
  {-}
begin
 Result := TvcmModulesCollection;
end;

class function TvcmBaseMenuManager.GetEntitiesCollectionClass: RvcmBaseCollection;
  //override;
  {-}
begin
 Result := TvcmRepEntitiesCollection;
end;

{$IfDef DesignTimeLibrary}
procedure TvcmBaseMenuManager.RegisterEntities;
  {-}
var
 l_MS     : IOTAModuleServices;
 l_M      : IOTAModule;
 l_E      : IOTAEditor;
 l_FE     : IOTAFormEditor;
 l_C      : IOTAComponent;
 l_NC     : INTAComponent;
 l_RC     : TComponent;
 l_MIndex : Integer;
 l_EIndex : Integer;
begin
 l_MS := vcmGetTAModules;
 if (l_MS <> nil) then
 begin
  for l_MIndex := 0 to Pred(l_MS.ModuleCount) do
  begin
   l_M := l_MS.Modules[l_MIndex];
   for l_EIndex := 0 to Pred(l_M.ModuleFileCount) do
   begin
    l_E := l_M.ModuleFileEditors[l_EIndex];
    if Supports(l_E, IOTAFormEditor, l_FE) then
     try
      l_C := l_FE.FindComponent('ENTITIES');
      if Supports(l_C, IOTAComponent, l_NC) then
       try
        l_RC := l_NC.GetComponent;
        if (l_RC Is TvcmCustomEntities) then
         TvcmCustomEntities(l_RC).RegisterInRep;
       finally
        l_NC := nil;
       end;//try..finally
      l_C := l_FE.FindComponent('MODULEDEF');
      if Supports(l_C, IOTAComponent, l_NC) then
       try
        l_RC := l_NC.GetComponent;
        if (l_RC Is TvcmCustomModuleDef) then
         TvcmCustomModuleDef(l_RC).RegisterInRep;
       finally
        l_NC := nil;
       end;//try..finally
     finally
      l_FE := nil;
     end;//try..finally
   end;//for l_EIndex
  end;//for l_MIndex
 end;//l_MS <> nil
end;
{$EndIf DesignTimeLibrary}

function TvcmBaseMenuManager.DoShortCutCommand(aCommand: Word): Boolean;
  {-}
var
 l_Params     : IvcmParams;
 l_EntityForm : IvcmEntityForm;
 l_Op         : TvcmOPID;
 l_MOp        : TvcmMOPID;
 l_CustomForm : TCustomForm;
begin
 Result := false;
{$IfNDef DesignTimeLibrary}
 l_CustomForm := Screen.ActiveForm;
 if (l_CustomForm <> nil) then
  if not (l_CustomForm Is TvcmEntityForm) AND
     (fsModal in l_CustomForm.FormState) then
   Exit;  
 if (vcmDispatcher <> nil) and g_ShortcutProcessingEnabled then
 begin
  with vcmCommandInfo(aCommand) do
   if rIsModule then
   begin
    if l3BQueryInterface(vcmDispatcher.ActiveEntity, IvcmEntityForm, l_EntityForm) then
     try
      if not l_EntityForm.IsModalForm then
      begin
       l_MOp.rMoID := TvcmControlID(rItemID);
       l_MOp.rOpID := TvcmControlID(rOperationID);
       // Вызов операции
       Result := vcmDispatcher.ModuleOperation(l_MOp);
       if Result then
        // Нотификация о вызове горячей клавиши
        OperationExecuteNotify(vcm_octShortCut,
                               TvcmBaseOperationsCollectionItem(
                     TvcmModulesCollectionItem(
                      f_Modules.FindItemByID(l_MOp.rMoID)).
                       Operations.FindItemByID(l_MOp.rOpID)).OperationDef);
      end;//not l_EntityForm.IsModalForm
     finally
      l_EntityForm := nil;
     end;//try..finally
   end//rIsModule
   else
   begin
    l_Op.rEnID := TvcmControlID(rItemID);
    l_Op.rOpID := TvcmControlID(rOperationID);
    // Вызов операции
    Result := vcmDispatcher.EntityOperation(l_Op, vcmParams);
    if Result then
     // Нотификация о вызове горячей клавиши
     OperationExecuteNotify(vcm_octShortCut,
                            TvcmBaseOperationsCollectionItem(
                TvcmBaseEntitiesCollectionItem(
                 Entities.FindItemByID(l_Op.rEnID)).
                  Operations.FindItemByID(l_Op.rOpID)).OperationDef);
   end;//rIsModule
 end;//vcmDispatcher <> nil
{$EndIf  DesignTimeLibrary}
end;

procedure TvcmBaseMenuManager.RegisterModuleInMenu(aForm            : TvcmEntityForm;
                                                   const aModuleDef : IvcmModuleDef);
  //virtual;
  {* - регистрирует модуль в меню, toolbar'ах, etc. }
begin
end;

procedure TvcmBaseMenuManager.MainCreated(aForm: TvcmEntityForm);
  //virtual;
  {-}
begin
 RegisterKeywords;
end;

procedure TvcmBaseMenuManager.RegisterMainInMenu(aForm: TvcmEntityForm);
  //virtual;
  {* - регистрирует основную форму в меню, toolbar'ах, etc. Для перекрытия в потомках. }
begin
end;
  
procedure TvcmBaseMenuManager.RegisterChildInMenu(aForm: TvcmEntityForm);
  //virtual;
  {* - регистрирует дочернюю форму в меню, toolbar'ах, etc. Для перекрытия в потомках. }
begin
end;

function TvcmBaseMenuManager.GetPopupMenu: TPopupMenu;
  //virtual;
  {-}
begin
 Result := nil;
end;

function TvcmBaseMenuManager.GetOperationableObjectByID(anID: Integer): TvcmRepEntitiesCollectionItem;
  {-}
var
 l_CEn : TvcmRepEntitiesCollection;
begin
 if (anID < 0) then
  l_CEn := Modules As TvcmRepEntitiesCollection
 else
 if (anID > 0) then
  l_CEn := Entities As TvcmRepEntitiesCollection
 else
 begin
  l_CEn := nil;
  Assert(False);
 end;//anID > 0
 {$IfDef DesignTimeLibrary}
 Result := l_CEn.FindItemByID(Abs(anID)) As TvcmRepEntitiesCollectionItem;
 {$Else  DesignTimeLibrary}
 Result := l_CEn.Items[Abs(anID) - 1] As TvcmRepEntitiesCollectionItem;
 {$EndIf DesignTimeLibrary}
end;

function TvcmBaseMenuManager.GetOperationableObjectByName(const aName : String;
                                                          aModule     : Boolean): TvcmRepEntitiesCollectionItem;
  {-}
var
 l_CEn : TvcmRepEntitiesCollection;
begin
 if aModule then
  l_CEn := Modules As TvcmRepEntitiesCollection
 else
  l_CEn := Entities As TvcmRepEntitiesCollection;
 Result := l_CEn.FindItemByName(aName) As TvcmRepEntitiesCollectionItem;
 {$If Defined(nsTest) AND not Defined(InsiderTest)}
 if (Result = nil) then
 begin
  Result := TvcmRepEntitiesCollectionItem(l_CEn.Add);
  Result.Name := aName;
 end;//Result = nil
 {$IfEnd}
end;

procedure TvcmBaseMenuManager.RegisterOperation(const aControl : IvcmIdentifiedUserFriendlyControl;
                                                const anOp     : IvcmOperationDef;
                                                anUFHolder     : TObject;
                                                anOpHolder     : TObject);
  {-}
var
 l_Mo        : IvcmModuleDef;
 l_En        : IvcmEntityDef;
 l_CEn       : TvcmRepEntitiesCollection;
 l_IEn       : TvcmRepEntitiesCollectionItem;
 l_IOp       : TvcmRepOperationsCollectionItem;
 {$IfDef DesignTimeLibrary}
 l_M         : IOTAModule;
 {$EndIf DesignTimeLibrary}
 l_Form      : TCustomForm;
begin
 if (Entities <> nil) AND (Modules <> nil) AND
    (aControl <> nil) AND (anOp <> nil) AND
    (anUFHolder <> nil) AND (anOpHolder <> nil) AND
    (aControl.Name <> '') AND (anOp.Name <> '') then
 begin
  if Supports(aControl, IvcmEntityDef, l_En) then
   try
    l_CEn := Entities As TvcmRepEntitiesCollection;
   finally
    l_En := nil;
   end//try..finally
  else
  if Supports(aControl, IvcmModuleDef, l_Mo) then
   try
    l_CEn := Modules As TvcmRepEntitiesCollection;
   finally
    l_Mo := nil;
   end//try..finally
  else
   l_CEn := nil;
  if (l_CEn <> nil) then
  begin
    {$IfDef DesignTimeLibrary}
    if (aControl.ID = 0) then
     l_IEn := l_CEn.FindItemByName(aControl.Name) As TvcmRepEntitiesCollectionItem
    else 
     l_IEn := l_CEn.FindItemByID(aControl.ID) As TvcmRepEntitiesCollectionItem;
    {$Else  DesignTimeLibrary}
    l_IEn := l_CEn.Items[aControl.ID - 1] As TvcmRepEntitiesCollectionItem;
    {$EndIf DesignTimeLibrary}
    if (l_IEn = nil) then
    begin
     l_IEn := TvcmRepEntitiesCollectionItem(l_CEn.Add);
     l_IEn.Name := aControl.Name;
     l_IEn.Caption := vcmStr(aControl.Caption);
    end;//l_IEn = nil
    l_IEn.AddHolder(anUFHolder);
    {$IfDef DesignTimeLibrary}
    l_IOp := l_IEn.Operations.FindItemByID(anOp.ID) As TvcmRepOperationsCollectionItem;
    {$Else  DesignTimeLibrary}
    l_IOp := l_IEn.Operations.Items[anOp.ID - 1] As TvcmRepOperationsCollectionItem;
    {$EndIf DesignTimeLibrary}
    if (l_IOp = nil) then
    begin
     l_IOp := TvcmRepOperationsCollectionItem(l_IEn.Operations.Add);
     with l_IOp do
     begin
      Name := anOp.Name;
      Caption := vcmStr(anOp.Caption);
      GroupID := anOp.GroupID;
      OperationType := anOp.OperationType;
      Hint := vcmStr(anOp.Hint);
      LongHint := vcmStr(anOp.LongHint);
      ShortCut := anOp.ShortCut;
      ImageIndex := anOp.ImageIndex;
      //AutoLock := anOp.AutoLock;
      ExcludeUserTypes := anOp.ExcludeUserTypes;
      //OnTest := anOp.OnTest;
      //OnExecute := anOp.OnExecute;
      //OnContextTest := anOp.OnContextTest;
      //OnContextExecute := anOp.OnContextExecute;
      Options := anOp.Options;
     end;//with l_IOp
    end;//l_IOp = nil
    l_IOp.AddHolder(anOpHolder);
    if (anUFHolder Is TPersistent) then
    begin
     l_Form := afw.GetParentForm(TPersistent(anUFHolder));
     if (l_Form Is TvcmEntityForm) then
      {$IfDef DesignTimeLibrary}
      AppForms.AddForm(TvcmEntityForm(l_Form));
      {$Else  DesignTimeLibrary}
      AppForms.AddForm(RvcmEntityForm(TvcmEntityForm(l_Form).ClassType));
      {$EndIf DesignTimeLibrary}
    end;//anUFHolder Is TPersistent
    {$IfDef DesignTimeLibrary}
    l_M := Module;
    if (l_M <> nil) then
     l_M.MarkModified;
    {$EndIf DesignTimeLibrary} 
  end;//l_CEn <> nil
 end;//aControl <> nil
end;

procedure TvcmBaseMenuManager.AddModule(aModule: TvcmModule);
begin
{$IfNDef DesignTimeLibrary}
 f_FormActivateManager.AddModule(aModule);
{$EndIf DesignTimeLibrary}
end;//AddModule

procedure TvcmBaseMenuManager.AddForm(const aForm : IvcmEntityForm);
begin
{$IfNDef DesignTimeLibrary}
 f_FormActivateManager.AddForm(aForm);
{$EndIf DesignTimeLibrary}
end;//AddForm

procedure TvcmBaseMenuManager.RemoveForm(const aForm: IvcmEntityForm);
  {-}
begin
{$IfNDef DesignTimeLibrary}
 f_FormActivateManager.RemoveForm(aForm);
{$EndIf DesignTimeLibrary}
{$IfDef DesignTimeLibrary}
 if (AppForms <> nil) then
 begin
  if (aForm <> nil) then
   AppForms.RemoveForm(aForm.VCLWinControl As TvcmEntityForm);
 end;//AppForms <> nil
{$EndIf DesignTimeLibrary}
end;//RemoveForm

procedure TvcmBaseMenuManager.ReloadToolbars(const aForm  : IvcmEntityForm);
  //virtual;
  {-}
begin
end;//ReloadToolbars

procedure TvcmBaseMenuManager.ReloadAllToolbars;
var
 l_Index: integer;
 l_Form: IvcmEntityForm;
begin
 with vcmDispatcher do
  with FormDispatcher do
  begin
   for l_Index := 0 to MainFormsCount-1 do
   begin
    if Supports(MainForm[l_Index], IvcmEntityForm, l_Form) then
     ReloadToolbars(l_Form);
   end;

   for l_Index := 0 to EntitiesCount-1 do
   begin
    if Supports(Entity[l_Index], IvcmEntityForm, l_Form) then
     ReloadToolbars(l_Form);
   end;//for l_Index

   for l_Index := 0 to MainFormsCount-1 do
   begin
    if Supports(MainForm[l_Index], IvcmEntityForm, l_Form) then
     if (l_Form.VCLWinControl is TvcmEntityForm) then
      PostBuild(l_Form.VCLWinControl as TvcmEntityForm);
   end;//for l_Index

   for l_Index := 0 to EntitiesCount-1 do
   begin
    if Supports(Entity[l_Index], IvcmEntityForm, l_Form) then
     if (l_Form.VCLWinControl is TvcmEntityForm) then
      PostBuild(l_Form.VCLWinControl as TvcmEntityForm);
   end;//for l_Index
  end;//with FormDispatcher
end;

{$IfDef DesignTimeLibrary}
function TvcmBaseMenuManager.pm_GetEditor: IOTAEditor;
  {-}
var
 l_MS : IOTAModuleServices;
 l_M  : IOTAModule;
begin
 l_MS := vcmGetTAModules;
 if (l_MS <> nil) then
  try
   l_M := l_MS.CurrentModule;
   if (l_M <> nil) then
   begin
    Result := l_M.CurrentEditor;
   end;//l_M <> nil
  finally
   l_MS := nil;
  end;//try..finally
end;

function TvcmBaseMenuManager.pm_GetModule: IOTAModule;
  {-}
begin
 Result := vcmGetTAModule(ChangeFileExt(ExtractFileName(UnitName), ''));
end;

function TvcmBaseMenuManager.pm_GetUnitName: String;
  {-}
var
 l_TI : PTypeData;
begin
 if (Owner = nil) then
  Result := ''
 else 
 begin
  l_TI := GetTypeData(Owner.ClassInfo);
  Result := l_TI.UnitName;
 end;//Owner <> nil
end;

(*function TvcmBaseMenuManager.pm_GetUnitPath: String;
  {-}
var
 l_S : IOTAModuleServices;
 l_M : IOTAModule;
 l_Path : String;
begin
 Result := '';
 if (Owner <> nil) then
 begin
  l_S := vcmGetTAModules;
  if (l_S <> nil) then
  begin
   l_Path := Owner.Name;
   if SameText(l_Path, 'T') then
    System.Delete(l_Path, 1, 1);
   l_M := l_S.FindFormModule(l_Path);
   if (l_M <> nil) then
    Result := ExtractFilePath(l_M.FileName);
  end;//l_S <> nil
 end;//g_MenuManager <> nil
end;*)

function TvcmBaseMenuManager.pm_GetSourceEditor: IOTASourceEditor;
  {-}
var
 l_M      : IOTAModule;
 l_Index  : Integer;
begin
 Result := nil;
 l_M := Module;
 if (l_M <> nil) then
 begin
  for l_Index := 0 to Pred(l_M.ModuleFileCount) do
   if Supports(l_M.ModuleFileEditors[l_Index], IOTASourceEditor, Result) then
    Exit;
 end;//l_M <> nil
end;
{$EndIf DesignTimeLibrary}

(*procedure TvcmBaseMenuManager.pm_SetFormFactories(aValue : TvcmFormSetFactoriesCollection);
  {-}
begin
 f_FormSetFactories.Assign(aValue);
end;*)

procedure TvcmBaseMenuManager.pm_SetAppForms(aValue : TvcmFormsCollection);
  {-}
begin
 f_AppForms.Assign(aValue);
end;

function TvcmBaseMenuManager.pm_GetModules: TvcmBaseEntitiesCollection;
  {-}
begin
 Result := f_Modules;
end;

procedure TvcmBaseMenuManager.pm_SetModules(aValue: TvcmBaseEntitiesCollection);
  {-}
begin
 f_Modules.Assign(aValue);
end;

procedure TvcmBaseMenuManager.pm_SetMessages(aValue: TvcmMessagesCollection);
  {-}
begin
 f_Messages.Assign(aValue);
end;

procedure TvcmBaseMenuManager.pm_SetStrings(aValue: TvcmStringCollection);
  {-}
begin
 f_Strings.Assign(aValue);
end;

procedure TvcmBaseMenuManager.pm_SetLargeImages(Value: TCustomImageList);
  {-}
begin
 if f_LargeImages <> nil then
  f_LargeImages.RemoveFreeNotification(Self);
 f_LargeImages := Value;
 if f_LargeImages <> nil then
  f_LargeImages.FreeNotification(Self);
end;

procedure TvcmBaseMenuManager.pm_SetSmallImages(Value: TCustomImageList);
  //virtual;
  {-}
begin
 if f_SmallImages <> nil then
  f_SmallImages.RemoveFreeNotification(Self);
 f_SmallImages := Value;
 if f_SmallImages <> nil then
  f_SmallImages.FreeNotification(Self);
end;

{$IfDef DesignTimeLibrary}
procedure TvcmBaseMenuManager.WriteRes;
  {-}

const
 c_En = 'en';
 c_Mo = 'mo';
 c_Mo1 = 'mo_';
 c_Op = 'op';
 c_Fs = 'fs';
 c_Fs1 = 'fs_';
 c_ST = 'st';

 function CutPrefix(const aPrefix   : String;
                    const aValue    : String;
                    out   theResult : String) : Boolean;
 begin
  if AnsiStartsText(aPrefix, aValue) then
   theResult := Copy(aValue, Length(aPrefix) + 1, Length(aValue) - Length(aPrefix))
  else
   theResult := aValue;
  Result := aValue <> theResult;
 end;

 function CEN(const aEN : String) : String;
 begin
  CutPrefix(c_En, aEN, Result);
 end;

 function CMo(const aEN: String): String;
 begin
  if not CutPrefix(c_Mo1, aEN, Result) then
   CutPrefix(c_Mo, aEN, Result);
 end;

 function COP(const aOP: String): String;
 begin
  CutPrefix(c_Op, aOP, Result);
 end;

 function CFS(const aFsf : String) : String;
 begin
  if not CutPrefix(c_Fs1, aFsf, Result) then
   CutPrefix(c_Fs, aFsf, Result);
 end;

 function CST(const aSt: String): String;
 begin
  CutPrefix(c_St, aSt, Result);
 end;

const
  cVCMStart = 'const // start VCM generated section';
  cImplementation = 'implementation';

var
 l_SE : IOTASourceEditor;

 function MakeFile: TFileName;
 var
  l_F : TFileStream;

  procedure WriteLn(const aText: String = '');
  const
    cEOL = #13#10;
  begin
   if (aText <> '') then
    l_F.Write(aText[1], Length(aText));
   l_F.Write(cEOL[1], Length(cEOL));
  end;

 const
   cVCMEnd = '// end VCM generated section';

 var
  l_EIndex  : Integer;
  l_OIndex  : Integer;
  l_SIndex  : Integer;
  l_Index   : Integer;
  l_En      : TvcmRepEntitiesCollectionItem;
  l_EnN     : String;
  l_Op      : TvcmRepOperationsCollectionItem;
  l_OpN     : String;
  l_State   : TvcmBaseOperationState;
  l_StateN  : String;
  l_Form    : TvcmFormsCollectionItem;
  l_Message : TvcmMessagesCollectionItem;
  l_Str     : TvcmBaseCollectionItem;
  l_Pref    : String;
 begin
  Result := ChangeFileExt(l_SE.FileName, '.vcm.tmp');
  l_F := TFileStream.Create(Result, fmCreate);
  try
   WriteLn;
   WriteLn(cVCMStart);
   //WriteLn('{$WriteableConst On}');

(*   for l_EIndex := 0 to Pred(Entities.Count) do
   begin
    l_En := TvcmRepEntitiesCollectionItem(Entities.Items[l_EIndex]);
    l_EnN := CEN(l_En.Name);
    if (l_En.Operations <> nil) then
    begin
     for l_OIndex := 0 to Pred(l_En.Operations.Count) do
     begin
      l_Op := TvcmRepOperationsCollectionItem(l_En.Operations.Items[l_OIndex]);
      l_OpN := COP(l_Op.Name);
      if (l_Op.OperationType in vcm_HiddenOperations) then
       continue
       //WriteLn(Format('  xxCxx_op_%s_%s : TvcmOPID = (rEnID : %d; rOpID : %d);', [l_EnN, l_OpN, Succ(l_EIndex), Succ(l_OIndex)]))
      else
       WriteLn(Format('  xxCxx_op_user_%s_%s : TvcmOPID = (rEnID : %d; rOpID : %d);', [l_EnN, l_OpN, Succ(l_EIndex), Succ(l_OIndex)]));
      WriteLn(Format('   // %s -> %s', [l_En.Caption, l_Op.Caption]));
     end;//for l_OIndex
    end;//l_En.Operations <> nil
   end;//for l_EIndex*)

(*   for l_EIndex := 0 to Pred(Modules.Count) do
   begin
    l_En := TvcmRepEntitiesCollectionItem(Modules.Items[l_EIndex]);
    l_EnN := CMo(l_En.Name);
    if (l_En.Operations <> nil) then
    begin
     for l_OIndex := 0 to Pred(l_En.Operations.Count) do
     begin
      l_Op := TvcmRepOperationsCollectionItem(l_En.Operations.Items[l_OIndex]);
      l_OpN := COP(l_Op.Name);
      if (l_Op.OperationType in vcm_HiddenOperations) then
       WriteLn(Format('  mop_%s_%s : TvcmMOPID = (rMoID : %d; rOpID : %d);', [l_EnN, l_OpN, Succ(l_EIndex), Succ(l_OIndex)]))
      else
       WriteLn(Format('  mop_user_%s_%s : TvcmMOPID = (rMoID : %d; rOpID : %d);', [l_EnN, l_OpN, Succ(l_EIndex), Succ(l_OIndex)]));
      WriteLn(Format('   // %s -> %s', [l_En.Caption, l_Op.Caption]));
     end;//for l_OIndex
    end;//l_En.Operations <> nil
   end;//for l_EIndex*)

(*   for l_EIndex := 0 to Pred(Entities.Count) do
   begin
    l_En := TvcmRepEntitiesCollectionItem(Entities.Items[l_EIndex]);
    l_EnN := CEN(l_En.Name);
    if (l_En.Operations <> nil) then
    begin
     for l_OIndex := 0 to Pred(l_En.Operations.Count) do
     begin
      l_Op := TvcmRepOperationsCollectionItem(l_En.Operations.Items[l_OIndex]);
      l_OpN := COP(l_Op.Name);
      for l_SIndex := 0 to Pred(l_Op.States.Count) do
      begin
       l_State := TvcmBaseOperationState(l_Op.States.Items[l_SIndex]);
       l_StateN := CST(l_State.Name);
       if l_StateN = '' then
        l_StateN := IntToStr(l_SIndex);
       if (l_Op.OperationType in vcm_HiddenOperations) then
        WriteLn(Format('  st_%s_%s_%s : TvcmOperationStateIndex = (_rID : %d);', [l_EnN, l_OpN, l_StateN, l_SIndex]))
       else
        WriteLn(Format('  st_user_%s_%s_%s : TvcmOperationStateIndex = (_rID : %d);', [l_EnN, l_OpN, l_StateN, l_SIndex]));
       WriteLn(Format('   // %s -> %s <-> %s', [l_En.Caption, l_Op.Caption, l_State.Caption]));
      end;//for l_SIndex
     end;//for l_OIndex
    end;//l_En.Operations <> nil
   end;//for l_EIndex

   for l_EIndex := 0 to Pred(Modules.Count) do
   begin
    l_En := TvcmRepEntitiesCollectionItem(Modules.Items[l_EIndex]);
    l_EnN := CMo(l_En.Name);
    if (l_En.Operations <> nil) then
    begin
     for l_OIndex := 0 to Pred(l_En.Operations.Count) do
     begin
      l_Op := TvcmRepOperationsCollectionItem(l_En.Operations.Items[l_OIndex]);
      l_OpN := COP(l_Op.Name);
      for l_SIndex := 0 to Pred(l_Op.States.Count) do
      begin
       l_State := TvcmBaseOperationState(l_Op.States.Items[l_SIndex]);
       l_StateN := CST(l_State.Name);
       if l_StateN = '' then
        l_StateN := IntToStr(l_SIndex);
       if (l_Op.OperationType in vcm_HiddenOperations) then
        WriteLn(Format('  mst_%s_%s_%s : TvcmOperationStateIndex = (_rID : %d)', [l_EnN, l_OpN, l_StateN, l_SIndex]))
       else
        WriteLn(Format('  mst_user_%s_%s_%s : TvcmOperationStateIndex = (_rID : %d)', [l_EnN, l_OpN, l_StateN, l_SIndex]));
       WriteLn(Format('   // %s -> %s <-> %s', [l_En.Caption, l_Op.Caption, l_State.Caption]));
      end;//for l_SIndex
     end;//for l_OIndex
    end;//l_En.Operations <> nil
   end;//for l_EIndex*)

   if (AppForms <> nil) AND (AppForms.Count > 0) then
   begin
(*    WriteLn('const // - идентификаторы форм');
    for l_EIndex := 0 to Pred(AppForms.Count) do
    begin
     l_Form := AppForms.Items[l_EIndex];
     WriteLn(Format('  fm_%s : TvcmFormID = (rName : ''%s''; _rID: %d);', [l_Form.Name, l_Form.Name, Succ(l_EIndex)]));
     WriteLn(Format('   // %s', [l_Form.Caption]));
    end;//for l_EIndex*)
    
(*   if false then
    for l_EIndex := 0 to Pred(AppForms.Count) do
    // - генерируем пользовательские типы
    begin
     l_Form := AppForms.Items[l_EIndex];
     if (l_Form.UserTypes <> nil) then
      with TvcmRepUserTypesCollection(l_Form.UserTypes) do
       if (Count > 1{0}) AND not DeprecatedGenerateFromStdRes then
       begin
        WriteLn(Format('type // Пользовательские типы формы "%s"', [l_Form.Caption]));
        WriteLn(Format('  T%sUT = (', [l_Form.Name]));
        for l_OIndex := 0 to Pred(Count) do
        begin
         with Items[l_OIndex] do
          if (l_OIndex = Pred(Count)) then
           WriteLn(Format('           %s  // %s', [Name, Caption]))
          else
           WriteLn(Format('           %s, // %s', [Name, Caption]));
        end;//for l_OIndex
        WriteLn(Format('  ); //T%sUT', [l_Form.Name]));
       end;//Count > 0
    end;//for l_EIndex*)
   end;//AppForms <> nil

(*   if Assigned(f_FormSetFactories) and (f_FormSetFactories.Count > 0) then
   // генерируем идентификаторы сборок
   begin
    WriteLn('const // - идентификаторы сборок');
    for l_EIndex := 0 to Pred(f_FormSetFactories.Count) do
     with f_FormSetFactories.Items[l_EIndex] do
     begin
      WriteLn(Format('  %s%s : _TvcmFormSetID = (rName : ''%s'');',
       [c_Fs1, CFS(FactoryId.rName), FactoryId.rName]));
      WriteLn(Format('   // Сборка форм "%s"', [Caption]));
     end;
   end;//Assigned(f_FormSetFactories)*)

   if (Messages <> nil) AND (Messages.Count > 0) then
   begin
    //WriteLn('const // - идентификаторы сообщений');
    for l_EIndex := 0 to Pred(Messages.Count) do
    begin
     l_Message := TvcmMessagesCollectionItem(Messages.Items[l_EIndex]);
     Case l_Message.DlgType of
      mtWarning:
       l_Pref := 'war';
      mtInformation:
       l_Pref := 'inf';
      mtError:
       l_Pref := 'err';
      mtCustom :
       l_Pref := 'msg';
      mtConfirmation :
       l_Pref := 'qr';
      else
       l_Pref := 'msg';
     end;//Case l_Message.DlgType
     WriteLn(Format('  %s_%s : TvcmMessageID = (rM : %d);', [l_Pref, l_Message.Name, l_EIndex]));
     WriteLn(Format('   // "%s"', [AnsiReplaceStr(
                                   AnsiReplaceStr(
                                                  l_Message.Caption,
                                                  #13, ' '),
                                                  #10, ' ')]));
    end;//for l_EIndex
   end;//Messages <> nil

   if (Strings <> nil) AND (Strings.Count > 0) then
   begin
    WriteLn('const // - идентификаторы строковых констант');
    for l_EIndex := 0 to Pred(Strings.Count) do
    begin
     l_Str := Strings.Items[l_EIndex];
     WriteLn(Format('  str_%s : TvcmStringID = (rS : %d);', [l_Str.Name, l_EIndex]));
     WriteLn(Copy(Format('   // "%s"', [AnsiReplaceStr(
                                   AnsiReplaceStr(
                                                  l_Str.Caption,
                                                  #13, ' '),
                                                       #10, ' ')]),
                  1,
                  1020));
    end;//for l_EIndex
   end;//Strings <> nil

   WriteLn(cVCMEnd);
  finally
   FreeAndNil(l_F);
  end;//try..finally
 end;
 
var
 l_V        : IOTAEditView;
 l_EB       : IOTAEditBlock;
 l_StartRow : Integer;
 l_EndRow   : Integer;
 l_EP       : IOTAEditPosition;
begin
 if (Entities <> nil) AND (Entities.Count > 0) then
 begin
  l_SE := SourceEditor;
  if (l_SE <> nil) then
  begin
   if (l_SE.EditViewCount > 0) then
   begin
    l_V := l_SE.EditViews[0];
    if (l_V <> nil) then
    begin
     l_EP := l_V.Position;
     l_EB := l_V.Block;
     if (l_EP <> nil) AND (l_EB <> nil) then
     begin
      l_StartRow := 0;
      l_EP.Move(1, 1);
      while true do
      begin
       l_EB.BeginBlock;
       l_EP.MoveEOL;
       l_EB.EndBlock;
       if AnsiContainsText(l_EB.Text, cVCMStart) then
       begin
        l_StartRow := l_EP.Row;
       end//cVCMStart
       else
       if AnsiStartsText(cImplementation, TrimLeft(l_EB.Text)) then
       begin
        l_EndRow := l_EP.Row;
        if (l_StartRow <> 0) then
        begin
         l_EP.Move(l_StartRow, 1);
         l_EB.BeginBlock;
         l_EP.Move(l_EndRow, 1);
         l_EB.EndBlock;
         l_EB.Delete;
         l_EP.Move(l_StartRow, 1);
         l_EB.BeginBlock;
         l_EP.MoveEOL;
         l_EB.EndBlock;
         l_EP.Move(l_StartRow -1 , 1);
         l_EP.MoveEOL;
        end//l_StartRow <> 0
        else
        begin
         l_EP.Move(l_EP.Row - 1, 1);
        end;
        l_EP.InsertFile(MakeFile);
        l_SE.Show;
        break;
       end;//cImplementation
       if (l_EP.Row >= l_EP.LastRow) then
        break
       else
       if not l_EP.Move(l_EP.Row + 1, 1) then
        break;
      end;
     end;//l_EP <> nil
    end;//l_V <> nil
   end;//l_SE.EditViewCount > 0
  end;//l_SE <> nil
 end;//Entities <> nil
end;
{$EndIf DesignTimeLibrary}

procedure TvcmBaseMenuManager.OperationExecuteNotify(const aType       : TvcmOperationCallType;
                                                     const anOperation : IvcmOperationDef);
  {* - нотификация о выполении операции. Вызывается перед выполением
       операции. }
begin
 if Assigned(f_OnOperationExecuteNotify) then
  f_OnOperationExecuteNotify(aType, anOperation);
end;

procedure TvcmBaseMenuManager.RegisterKeywords;
  {-}
var
 l_I : Integer;
 l_J : Integer;
 l_En : TvcmBaseEntitiesCollectionItem;
begin
{$IfNDef DesignTimeLibrary}
{$IFNDEF Archi}
 if not f_KeywordsRegistered then
 begin
  f_KeywordsRegistered := true;
  for l_I := 0 to Pred(Entities.Count) do
  begin
   l_En := Entities.Items[l_I] As TvcmBaseEntitiesCollectionItem;
   for l_J := 0 to Pred(l_En.Operations.Count) do
    TkwEntityOperation.Register(l_En, l_En.Operations.Items[l_J] As TvcmBaseOperationsCollectionItem);
  end;//for l_I
 end;//not f_KeywordsRegistered
{$ENDIF Archi}
{$EndIf DesignTimeLibrary}
end;

procedure TvcmBaseMenuManager.Loaded;
  //override;
  {-}
var
 l_Controller : TOvcController;
begin
 inherited;
 {$IfDef DesignTimeLibrary}
 (* Выставим сообщениям сортировку, потому, что она для RunTime-а отключена, в
    целях ускорения загрузки *)
 f_Messages.Sorted := True;
 f_Strings.Sorted := true;
 RegisterEntities;
 {$Else  DesignTimeLibrary}
 {$IfDef InsiderTest}
 //f_Messages.Sorted := True;
 //f_Strings.Sorted := true;
 {$EndIf InsiderTest}
 {$EndIf DesignTimeLibrary}
 ConstStringsToMenuManager;
 l_Controller := GetDefController;
 if Assigned(l_Controller) then
  if Assigned(f_OnInitCommands) then
   f_OnInitCommands(Self, l_Controller.EntryCommands);
 {$IfNDef DesignTimeLibrary}
 RegisterKeywords;
 // - http://mdp.garant.ru/pages/viewpage.action?pageId=290266465
 afw.Application.ApplyActiveLanguage(Self);
 {$EndIf  DesignTimeLibrary}
end;

{$IfDef DesignTimeLibrary}
procedure TvcmBaseMenuManager.WriteState(Writer: TWriter);
  //override;
  {-}
begin
 WriteRes;
 inherited;
end;
{$EndIf DesignTimeLibrary}

procedure TvcmBaseMenuManager.PostBuild(aForm        : TvcmEntityForm;
                                        aFollowDocks : Boolean);
  {-}
begin
 ;
end;

function TvcmBaseMenuManager.MergedToMainForm(aForm: TvcmEntityForm): Boolean;
begin
 Result := False;
end;

{ TvcmOperationManager }

constructor TvcmOperationManager.Create(
  const aForm : IvcmEntityForm;
  aManagers   : TvcmFormActivateManager;
  aFormActivate : TvcmFormActivate;
  aOperation    : TvcmBaseOperationsCollectionItem);
begin
 inherited Create;
 f_Form       := aForm;
 f_Managers   := aManagers;
 FormActivate := aFormActivate;
 Operation    := aOperation;
end;

function TvcmOperationManager.FindForm(const aParams : IvcmContainer;
                                           theForm   : PIvcmEntityForm = nil): Boolean;
begin
 if Assigned(theForm) then
  theForm^ := nil;
 Result := False;
 if (aParams <> nil) then
  Result := aParams.NativeMainForm.HasForm(f_FormID,
   f_FormActivate.ZoneType, True, theForm, f_FormActivate.UserType);
end;

procedure TvcmOperationManager.OnExecute(const aParams: IvcmExecuteParams);
begin
 DoExecute(aParams, f_OldOnExecute);
end;//OnExecute

procedure TvcmOperationManager.OnTest(const aParams: IvcmTestParamsPrim);
begin
 DoTest(aParams, f_OldOnTest);
end;

procedure TvcmOperationManager.Cleanup;
  //override;
begin
 if Assigned(f_Form) then
 begin
  if Assigned(f_Operation.OnTest) then
   f_Operation.OnTest := f_OldOnTest;
  if Assigned(f_Operation.OnExecute) then
   f_Operation.OnExecute := f_OldOnExecute;
  if Assigned(f_Operation.OnContextTest) then
   f_Operation.OnContextTest := f_OldOnContextTest;
  if Assigned(f_Operation.OnContextExecute) then
   f_Operation.OnContextExecute := f_OldOnContextExecute;
  f_Form := nil;
 end;
 inherited;
end;

procedure TvcmOperationManager.SetFormActivate(
  const Value: TvcmFormActivate);
begin
 f_FormActivate := Value;
 f_FormID.rName := Value.Name;
end;

procedure TvcmOperationManager.SetOperation(
  const Value: TvcmBaseOperationsCollectionItem);
begin
 f_Operation := Value;
 { Запомним прежние значения }
 f_OldOnExecute  := Value.OnExecute;
 f_OldOnTest     := Value.OnTest;
 f_OldOnContextExecute := Value.OnContextExecute;
 f_OldOnContextTest     := Value.OnContextTest;
 { Устновим новые значения }
 Value.OnExecute := OnExecute;
 Value.OnTest    := OnTest;
 Value.OnContextExecute := OnContextExecute;
 Value.OnContextTest    := OnContextTest;
end;

procedure TvcmOperationManager.DoExecute(const aParams: IvcmExecuteParams;
  const aHandler: TvcmExecuteEvent);
var
 l_MenuItem: Boolean;

type
 TActivationResult = (arDontExists, arOpened, arClosed);

 function lp_ActivateForm(const anAfterCreate: Boolean = False): TActivationResult;
 var
  l_Form: IvcmEntityForm;
 begin
  Result := arDontExists;
  FindForm(aParams.Container, @l_Form);
  if Assigned(l_Form) then
  try
   Result := arOpened;
   if anAfterCreate then
    l_Form.SetActiveAndShowInParent
   else 
   if (l_Form.VCLWinControl As TvcmEntityForm).IsFloatingStateAndParentNotVisible then
   begin
    (l_Form.VCLWinControl As TvcmEntityForm).MakeFloatingParentVisible;
    l_Form.SetActiveAndShowInParent;
   end//(l_Form.VCLForm As TvcmEntityForm).IsFloatingStateAndParentNotVisible
   else
    if l_MenuItem then
     l_Form.SetActiveInParent
    else
     case f_FormActivate.RepeatedActivationBehaviour of
      { Всегда показывать }
      vcm_rabNone:
       l_Form.SetActiveAndShowInParent;
      { Закрывать если активна }
      vcm_rabClose:
       if l_Form.IsActiveInParent then
       begin
         l_Form.CloseInParent;
         Result := arClosed;
       end
       else
        l_Form.SetActiveAndShowInParent;
      vcm_rabInactivate:
       if l_Form.IsActiveInParent then
        l_Form.SetInactiveInParent
       else
        l_Form.SetActiveAndShowInParent;
     end;//case f_FormActivate.RepeatedActivationBehaviour of
   // При активации закладки устанавливаем в нее фокус (CQ: OIT500021234):
   {$IfNDef DesignTimeLibrary}
   if Result = arOpened then
    vtFocusWinControlEx(l_Form.VCLWinControl);
   {$EndIf  DesignTimeLibrary}
  finally
   l_Form := nil;
  end;{try..finally}
 end;//lp_ActivateForm

begin
 // Выбор произведен из выпадающего меню кнопки:
 l_MenuItem := (aParams.ItemIndex > 0) OR (aParams.CurrentNode <> nil);
 // Управление формой:
 case lp_ActivateForm of
  arOpened:
   if not f_FormActivate.DoExecuteIfExists and
      not l_MenuItem then
    Exit;
  arClosed:
   Exit;
 end;
 // Execute операции:
 if Assigned(aHandler) then
 begin
  if FindForm(aParams.Container) then
  begin
   lp_ActivateForm(True);
   // - сначала активируем, потому что в aHandler может быть создана
   //   и активирована другая форма к которой операция не привязана;
   aHandler(aParams);
  end//if FindForm(aParams) then
  else
  begin
   aHandler(aParams);

   // - формы может не быть сначала ее нужно создать, потом активировать
   lp_ActivateForm(True);
  end;//if FindForm(aParams) then
 end;//if Assigned(aHandler) then
end;

procedure TvcmOperationManager.DoTest(const aParams: IvcmTestParamsPrim;
  const aHandler: TvcmTestEvent);
var
 l_Form   : IvcmEntityForm;
 lCaption : IvcmCString;
begin
 if not Assigned(aParams) then
  Exit;
 lCaption := aParams.Op.Caption;
 { В любом случае выводим Hint показать закладку }
 if (f_Form <> nil) and
    (f_Form.ZoneType = vcm_ztNavigator) then
  aParams.Op.Hint := vcmFmt(str_vcmShowTab.AsCStr, [lCaption]);
 FindForm((aParams As IvcmTestParams).Container, @l_Form);
 if Assigned(l_Form) then
 try
//  По требованию УМ вместо имени формы выводим имя операции
//  lCaption := f_FormActivate.Caption;
//  if l_Form._VCLForm.Caption <> '' then
//   lCaption := l_Form._VCLForm.Caption;
  aParams.Op.Flag[vcm_ofChecked] := l_Form.IsActiveInParent;

  if (l_Form.ZoneType = vcm_ztNavigator) then
  begin
   if aParams.Op.Flag[vcm_ofChecked] then
    if (l_Form.VCLWinControl As TvcmEntityForm).IsFloatingStateAndParentNotVisible then
     aParams.Op.Flag[vcm_ofChecked] := false;
   // - http://mdp.garant.ru/pages/viewpage.action?pageId=297703519  
   if aParams.Op.Flag[vcm_ofChecked] then
    aParams.Op.Hint := vcmFmt(str_vcmHideTab.AsCStr, [lCaption])
   else
    aParams.Op.Hint := vcmFmt(str_vcmShowTab.AsCStr, [lCaption]);
  end;//l_Form.ZoneType = vcm_ztNavigator
 finally
  l_Form := nil;
 end;//try..finally
 if Assigned(aHandler) then
  aHandler(aParams);
end;

procedure TvcmOperationManager.OnContextExecute(
  const aParams: IvcmExecuteParams);
begin
 DoExecute(aParams, f_OldOnContextExecute);
end;

procedure TvcmOperationManager.OnContextTest(
  const aParams: IvcmTestParamsPrim);
begin
 DoTest(aParams, f_OldOnContextTest);
end;

{ TvcmFormActivateManager }

constructor TvcmFormActivateManager.Create(
  aMenuManager: TvcmBaseMenuManager);
begin
 f_MenuManager := aMenuManager;
 f_Managers    := TvcmOperationManagers.Create;
 f_Operations  := TvcmFormActivateOperations.Create(aMenuManager);
end;

procedure TvcmFormActivateManager.Cleanup;
begin
 vcmFree(f_Managers);
 vcmFree(f_Operations);
 inherited;
end;

function TvcmFormActivateManager.GetCount: Integer;
begin
 Result := f_Managers.Count;
end;

function TvcmFormActivateManager.GetItem(
  Index: Integer): TvcmOperationManager;
begin
 Result := f_Managers[Index];
end;

procedure TvcmFormActivateManager.AddForm(const aForm: IvcmEntityForm);
var
 I, J      : Integer;
 l_Entities : TvcmBaseEntitiesCollection;
 l_Entity   : TvcmBaseEntitiesCollectionItem;
begin
 l_Entities := (aForm.VCLWinControl As TvcmEntityForm).Entities.Entities;
 { Сущности формы }
 for I := 0 to Pred(l_Entities.Count) do
 begin
  l_Entity := TvcmBaseEntitiesCollectionItem(l_Entities.Items[I]);
  { Операции сущности }
  for J := 0 to Pred(l_Entity.Operations.Count) do
   { Зарегистируем операцию }
   RegOperation(TvcmBaseOperationsCollectionItem(l_Entity.Operations.Items[J]), aForm);
 end;
end;

procedure TvcmFormActivateManager.RegOperation(
  aOperation    : TvcmBaseOperationsCollectionItem;
  const aForm   : IvcmEntityForm);
var
 l_Form : TvcmFormActivate;
 l_Mgr  : TvcmOperationManager;
// l_OF   : TvcmForm;
begin
 {$IfNDef DesignTimeLibrary}
 { Определим заявлена ли эта операция на управление формой }
 l_Form := f_Operations.GetFormActivate(aOperation);
 { Создаем менеджера }
 if Assigned(l_Form) then
 begin
(*  l_OF := aOperation.OwnerForm;
  if (l_OF <> nil) then
  begin
   Assert(l_OF = aForm.VCLForm);
   if ((l_OF As TvcmEntityForm).FormID.rName = l_Form.Name) then
   // - без этого не открывалась вкладка фильтров
    if ((l_OF As TvcmEntityForm).UserType <> l_Form.UserType) then
    // http://mdp.garant.ru/pages/viewpage.action?pageId=269081712
     Exit;
  end;//l_OF <> nil*)
  // - http://mdp.garant.ru/pages/viewpage.action?pageId=274465921
  l_Mgr := TvcmOperationManager.Create(aForm, Self, l_Form, aOperation);
  try
   f_Managers.Add(l_Mgr);
  finally
   vcmFree(l_Mgr);
  end;//l_Mgr := TvcmOperationManager.
 end;//Assigned(l_Form)
 {$EndIf DesignTimeLibrary}
end;

procedure TvcmFormActivateManager.AddModule(aModule : TvcmModule);
var
 l_Index : Integer;
 l_ModuleDef : TvcmCustomModuleDef;
begin
 l_ModuleDef := aModule.ModuleDef;
 { Зарегистрируем операции модуля }
 if Assigned(l_ModuleDef) then
  for l_Index := 0 to Pred(l_ModuleDef.Operations.Count) do
   RegOperation(TvcmBaseOperationsCollectionItem(l_ModuleDef.Operations.
    Items[l_Index]), nil);
end;

procedure TvcmFormActivateManager.RemoveForm(
  const aForm: IvcmEntityForm);
begin
 f_Managers.Delete(aForm);
end;

{ TvcmOperationManagers }

procedure TvcmOperationManagers.Add(const aManager: TvcmOperationManager);
begin
 {$IfNDef DesignTimeLibrary}
 f_Managers.Add(aManager);
 {$EndIf DesignTimeLibrary}
end;

constructor TvcmOperationManagers.Create;
begin
 inherited Create;
 {$IfNDef DesignTimeLibrary}
 f_Managers := Tl3ProtoObjectRefList.Make;
 {$EndIf DesignTimeLibrary}
end;

procedure TvcmOperationManagers.Cleanup;
begin
 {$IfNDef DesignTimeLibrary}
 vcmFree(f_Managers);
 {$EndIf DesignTimeLibrary}
 inherited;
end;

procedure TvcmOperationManagers.Delete(const aForm: IvcmEntityForm);
var
 l_Index : Integer;
begin
 {$IfNDef DesignTimeLibrary}
 for l_Index := Pred(f_Managers.Count) downto 0 do
  if Items[l_Index].Form = aForm then
   f_Managers.Delete(l_Index);
 {$EndIf DesignTimeLibrary}
end;

function TvcmOperationManagers.GetCount: Integer;
begin
 {$IfNDef DesignTimeLibrary}
 Result := f_Managers.Count;
 {$Else  DesignTimeLibrary}
 Result := 0;
 {$EndIf DesignTimeLibrary}
end;

function TvcmOperationManagers.GetItem(Index: Integer): TvcmOperationManager;
begin
 {$IfNDef DesignTimeLibrary}
 Result := TvcmOperationManager(f_Managers.Items[Index]);
 {$Else  DesignTimeLibrary}
 Result := nil;
 {$EndIf DesignTimeLibrary}
end;

{ TvcmFormActivateOperations }

constructor TvcmFormActivateOperations.Create(aMenuManager : TvcmBaseMenuManager);
begin
 inherited Create;
 f_IsEntitiesLoad := False;
 f_IsModulesLoad  := False;
 f_MenuManager := aMenuManager;
 {$IfNDef DesignTimeLibrary}
 f_Operations := TvcmObjectList.Make;
 {$EndIf DesignTimeLibrary}
end;

function TvcmFormActivateOperations.GetCount: Integer;
begin
 Result := f_Operations.Count;
end;

function TvcmFormActivateOperations.GetFormActivate(
  aOperation: TvcmBaseOperationsCollectionItem): TvcmFormActivate;

  function CheckOwnersAndNames(aDest, aSource : TvcmBaseOperationsCollectionItem) : Boolean;
  begin
   Result := False;
   { Операция модуля }
   if (aSource.Collection.Owner Is TvcmModulesCollectionItem) and
    (TvcmCustomModuleDef(aDest.Collection.Owner).Owner is TvcmModule) then
    Result :=
     (TvcmModulesCollectionItem(aSource.Collection.Owner).Name + aSource.Name) =
     (TvcmModule(TvcmCustomModuleDef(aDest.Collection.Owner).Owner).Name + aDest.Name)
   { Операция сущности }
   else
   if (aSource.Collection.Owner is TvcmRepEntitiesCollectionItem) then
    Result :=
     (TvcmBaseEntitiesCollectionItem(aDest.Collection.Owner).Name + aDest.Name) =
     (TvcmRepEntitiesCollectionItem(aSource.Collection.Owner).Name + aSource.Name);
  end;

var
 l_Index  : Integer;
begin
 Result := nil;

 { Загрузим операции если они не были загружены }
 LoadOperations;

 { Проверим заявлена ли операция на управление формой }
 for l_Index := 0 to Pred(f_Operations.Count) do
 begin
  if CheckOwnersAndNames(aOperation,
   TvcmBaseOperationsCollectionItem(f_Operations[l_Index])) then
  begin
   Result := TvcmRepOperationsCollectionItem(f_Operations[l_Index]).FormActivate;
   Break;
  end;
 end;

end;

procedure TvcmFormActivateOperations.AddOperation(aOperation : TvcmRepOperationsCollectionItem);
begin
 if aOperation.IsFormActivateDefined then
  f_Operations.Add(aOperation);
end;

procedure TvcmFormActivateOperations.Cleanup;
begin
 vcmFree(f_Operations);
 inherited;
end;

function TvcmFormActivateOperations.GetItem(
  Index: Integer): TvcmBaseOperationsCollectionItem;
begin
 Result := TvcmBaseOperationsCollectionItem(f_Operations[Index]);
end;

procedure TvcmFormActivateOperations.LoadOperations;
var
 I, J : Integer;
 l_Module : TvcmBaseEntitiesCollectionItem;
 l_Entity : TvcmBaseEntitiesCollectionItem;
begin

 { Зарегистрируем операции модулей }
 if not f_IsModulesLoad then
 begin
  f_IsModulesLoad := (f_MenuManager.Modules.Count > 0);
  for I := 0 to Pred(f_MenuManager.Modules.Count) do
  begin
   l_Module := TvcmBaseEntitiesCollectionItem(f_MenuManager.Modules.Items[I]);
   for J := 0 to Pred(l_Module.Operations.Count) do
    AddOperation(TvcmRepOperationsCollectionItem(l_Module.Operations.Items[J]));
  end;
 end;

 { Зарегистрируем операции сущностей }
 if not f_IsEntitiesLoad then
 begin
  f_IsEntitiesLoad := (f_MenuManager.Entities.Count > 0);
  for I := 0 to Pred(f_MenuManager.Entities.Count) do
  begin
   l_Entity := TvcmBaseEntitiesCollectionItem(f_MenuManager.Entities.Items[I]);
   for J := 0 to Pred(l_Entity.Operations.Count) do
    AddOperation(TvcmRepOperationsCollectionItem(l_Entity.operations.Items[J]));
  end;
 end;

end;

procedure TvcmBaseMenuManager.BeginOp;
  {-}
begin
 ;
end;

procedure TvcmBaseMenuManager.EndOp;
  {-}
begin
 ;
end;

procedure TvcmBaseMenuManager.FastenToolbars;
  {-}
begin
 ;
end;

function TvcmBaseMenuManager.GetFastenMode: Boolean;
  {-}
begin
 Result := False;
end;

(*{$IfNDef DesignTimeLibrary}
procedure TvcmBaseMenuManager.RegisterFormSetFactory(const aFactoryClass : RvcmFormSetFactory);
  // overload;
  {* - устанавливает класс сборки. }
begin
 //f_FormSetFactories.SetFactoryClass(aFactoryClass);
end;
{$EndIf  DesignTimeLibrary}*)

{$IfDef vcmNeedL3}
procedure TvcmBaseMenuManager.Define(const aName   : AnsiString;
                                     const aRus    : AnsiString;
                                     const anAlien : AnsiString);
  {-}
const
 cTypes : array [TvcmObject] of String =
  (c_vcmModule, c_vcmEntity,
   c_vcmOperation, c_vcmModuleOperation,
   c_vcmControl,
   c_vcmMessage,
   c_vcmForm,
   c_vcmMenuItem,
   c_vcmUserType,
   c_vcmState,
   c_vcmString,
   c_vcmFormSetFactory);
var
 l_Type    : TvcmObject;
 l_Name    : String;
 l_Diff    : Integer;
 l_Prop    : String;
 l_SubName : String;
begin
 if anAlien <> '' then
  for l_Type := Low(l_Type) to High(l_Type) do
  begin
   if ANSIStartsText(cTypes[l_Type], aName) then
   begin
    l_Diff := Length(cTypes[l_Type]) + 1;
    l_Name := Copy(aName, l_Diff + 1, Length(aName) - l_Diff);
    l_Diff := Pos(c_vcmContentSep, l_Name);
    l_SubName := Copy(l_Name, l_Diff + 1, Length(l_Name) - l_Diff);
    l_Name := Copy(l_Name, 1, l_Diff - 1);
    l_Diff := Pos(c_vcmContentSep, l_SubName);
    if (l_Diff > 0) then
    begin
     l_Diff := Length(l_SubName) - Pos(c_vcmContentSep, ReverseString(l_SubName)) + 1;
     l_Prop := Copy(l_SubName, l_Diff + 1, Length(l_SubName) - l_Diff);
     l_SubName := Copy(l_SubName, 1, l_Diff - 1);
    end//l_Diff > 0
    else
    begin
     l_Prop := l_SubName;
     l_SubName := '';
    end;//l_Diff > 0
    DefineObjectProp(l_Type, l_Name, l_SubName, l_Prop, anAlien);
    Exit;
   end;//ANSIStartsText(cTypes[l_Type], aName)
  end;//for l_Type
end;
{$EndIf vcmNeedL3}

function TvcmBaseMenuManager.ObjectByType(anObject           : TvcmObject;
                                          const anObjectName : String;
                                          const aSubName     : String = '';
                                          ForceCreate        : Boolean = false): TvcmBaseCollectionItem;
  //virtual;
  {-}
var
 l_Item : TvcmBaseEntitiesCollectionItem;
 l_Form : TvcmFormsCollectionItem;
begin
 Result := nil;
 l_Item := nil;
 Case anObject of
  vcm_objModule :
   Result := Modules.FindItemByName(anObjectName);
  vcm_objEntity :
   Result := Entities.FindItemByName(anObjectName);
  vcm_objEntityOperation :
   l_Item := Entities.FindItemByName(anObjectName) As TvcmBaseEntitiesCollectionItem;
  vcm_objModuleOperation :
   l_Item := Modules.FindItemByName(anObjectName) As TvcmBaseEntitiesCollectionItem;
  vcm_objControl:
  begin
   if ForceCreate then
    l_Form := AppForms.CheckItemByName(anObjectName) As TvcmFormsCollectionItem
   else
    l_Form := AppForms.FindItemByName(anObjectName) As TvcmFormsCollectionItem;
   if (l_Form <> nil) then
   begin
    if ForceCreate then
     Result := l_Form.Components.CheckItemByName(aSubName)
    else 
     Result := l_Form.Components.FindItemByName(aSubName);
   end;//l_Form <> nil
  end;//vcm_objControl
  vcm_objMessage :
   Result := Messages.FindItemByName(anObjectName);
  vcm_objForm :
   Result := AppForms.FindItemByName(anObjectName) As TvcmFormsCollectionItem;
  vcm_objFormSetFactory :
  begin
   Result := nil;
   Assert(false);
//   Result := FormSetFactories.FindItemByName(anObjectName) As TvcmFormSetFactoriesCollectionItem;
  end;//vcm_objFormSetFactory
  vcm_objUserType :
  begin
   Result := nil;
(*   l_Form := AppForms.FindItemByName(anObjectName) As TvcmFormsCollectionItem;
   if (l_Form <> nil) then
    Result := l_Form.UserTypes.FindItemByName(aSubName);*)
  end;//vcm_objUserType
  vcm_ObjOperationState :
  begin
   {$IfDef vcmNeedL3}
   Result := ObjectByType(vcm_objEntityOperation, anObjectName, ev_psPrefix(aSubName, c_vcmContentSep));
   if (Result <> nil) then
    Result := (Result As TvcmBaseOperationsCollectionItem).States.FindItemByName(ev_psSuffix(aSubName, c_vcmContentSep));
   {$Else   vcmNeedL3}
   Assert(false);
   {$EndIf  vcmNeedL3}
  end;//vcm_ObjOperationState
  vcm_ObjStrings: Result := Strings.FindItemByName(anObjectName);
 end;//Case anObject
 if (Result = nil) AND (l_Item <> nil) then
  Result := l_Item.Operations.FindItemByName(aSubName);
end;

procedure TvcmBaseMenuManager.DefineObjectProp(anObject           : TvcmObject;
                                               const anObjectName : String;
                                               const aSubName     : String;
                                               const aProp        : String;
                                               const aValue       : String);
  {-}
var
 l_Object : TObject;
begin
 l_Object := ObjectByType(anObject, anObjectName, aSubName, true);
 if (l_Object <> nil) then
  if (GetPropInfo(l_Object, aProp) <> nil) then
   SetStrProp(l_Object, aProp, aValue);
end;

(*{$IfDef DesignTimeLibrary}
procedure TvcmBaseMenuManager.RegisterFormSetFactory(const aFactory : TvcmFormSetFactory);
  {* - регистрирует фабрику сборки. }
begin
 f_FormSetFactories.AddFactory(aFactory);
end;
{$EndIf DesignTimeLibrary}*)

function TvcmBaseMenuManager.BuildVirtualForm(aFormClass       : RvcmEntityForm;
                                              out NeedFreeForm : Boolean;
                                              aUserType        : TvcmUserType = vcm_utAny): TvcmEntityForm;
  {-}
var
 l_Index : Integer;
begin
 NeedFreeForm := False;                 
 Result := nil;
 if aFormClass.InheritsFrom(TvcmMainForm) then
  Result := (g_Dispatcher.FormDispatcher.MainForm[0].VCLWinControl As TvcmEntityForm)
 else
  with g_Dispatcher do
   for l_Index := 0 to Pred(EntitiesCount) do
    with Entity[l_Index].AsForm do
     if (aUserType = vcm_utAny) OR (UserType = aUserType) AND
        VCLWinControl.InheritsFrom(aFormClass) then
     begin
      Result := VCLWinControl As TvcmEntityForm;
      break;
     end;//UserType = l_UserType.ID..

 if (Result = nil) then
 begin
  if (aUserType = vcm_utAny) then
   aUserType := 0;
  Result := RvcmEntityForm(aFormClass).Make(vcmMakeParams,
                                            vcm_ztForToolbarsInfo,
                                            aUserType).VCLWinControl As TvcmEntityForm;
  NeedFreeForm := true;
 end;//l_Form = nil
end;

function TvcmBaseMenuManager.GetOpLock : Boolean;
  {-}
begin
 Result := False;
end;


procedure TvcmBaseMenuManager.BackupOpStatus;
begin
 ;
end;

procedure TvcmBaseMenuManager.RestoreOpStatus;
begin
 ;
end;

var
 g_FirstShortCutLoad: Boolean = True;

procedure TvcmBaseMenuManager.LoadShortcuts(aResetToDefault: Boolean);
var
 l_Index    : integer;
 l_OpIndex  : integer;
 l_Name     : string;
 l_OpName   : string;
 l_Shortcut : Cardinal;
 l_SecShort : Il3CString;
 l_List     : TShortCutList;

 procedure l_FreeShortcut(aShortCut: TShortCut);
 var
  i            : Integer;
  l_Key        : Word;
  l_Shift      : TShiftState;
  l_ByteShift  : Byte;
  l_CommandID  : Word;
  l_Controller : TOvcController;
 begin//l_FreeShortcut
  l_CommandID := 0;
  if aShortCut <> 0 then
  begin
   ShortCutToKey(aShortCut, l_Key, l_Shift);
   l_ByteShift := vcmByteShift(l_Shift);
   l_CommandID := 0;
   l_Controller := GetDefController;
   if Assigned(l_Controller) then
    with l_Controller.EntryCommands do
     if GetCommandTableIndex(c_vcmTableName) >= 0 then
      with l_Controller.EntryCommands.GetCommandTable(c_vcmTableName) do
       for i := 0 to Count - 1 do
        with Commands[i] do
         if (Key1 = l_Key) and (SS1 = l_ByteShift) then
         begin
          l_CommandID := Cmd;
          Break;
         end;//(Key1 = l_Key) and (SS1 = l_ByteShift)
  end;
  if (l_CommandID <> 0) then
   with vcmCommandInfo(l_CommandID) do
    if rIsModule then
     with g_MenuManager.GetOperationableObjectByID(-rItemID) as TvcmModulesCollectionItem do
      with Operations.FindItemByID(rOperationID) as TvcmRepOperationsCollectionItem do
       RemoveShortCut(aShortCut)
    else
     with g_MenuManager.GetOperationableObjectByID(rItemID) as TvcmBaseEntitiesCollectionItem do
      with Operations.FindItemByID(rOperationID) as TvcmRepOperationsCollectionItem do
       RemoveShortCut(aShortCut);
 end;//l_FreeShortcut

 procedure l_FreeShortcuts(aShortCut: TShortCut; aSecondaryShortCuts: TShortCutList);
 var
  i : Integer;
 begin//l_FreeShortcuts
  l_FreeShortcut(aShortCut);
  if Assigned(aSecondaryShortCuts) then
   for i := 0 to aSecondaryShortCuts.Count - 1 do
    l_FreeShortcut(aSecondaryShortCuts.ShortCuts[i]);
 end;//l_FreeShortcuts

begin
 {$IfDef vcmUseSettings}
 l_ShortCut := 0;
 l_List := TShortCutList.Create;
 try

  for l_Index := 0 to g_MenuManager.Entities.Count - 1 do
   with g_MenuManager.Entities.Items[l_Index] as TvcmBaseEntitiesCollectionItem do
   begin
    l_Name := Name;
    for l_OpIndex := 0 to Operations.Count - 1 do
     with Operations.Items[l_OpIndex] as TvcmBaseOperationsCollectionItem do
     begin
      l_OpName := Name;
      if g_FirstShortCutLoad then
       StoreDesignTimeShortcuts;
      if aResetToDefault then
       vcmCleanShortcut(l_Name, l_OpName);
      if vcmLoadShortcut(l_Name, l_OpName, l_Shortcut, l_SecShort) then
       l_List.Text := vcmStr(l_SecShort)
      else
      begin
       l_Shortcut := SaveShortcut;
       l_List.Text := SaveSecondaryShortcuts;
      end;//vcmLoadShortcut..
      l_FreeShortcuts(TShortcut(l_ShortCut), l_List);
      ReplaceShortcuts(TShortcut(l_ShortCut), l_List);
     end;//with Operations.Items[l_OpIndex] as TvcmBaseOperationsCollectionItem
   end;//with g_MenuManager.Entities.Items[l_Index] as TvcmBaseEntitiesCollectionItem

  for l_Index := 0 to g_MenuManager.Modules.Count - 1 do
   with g_MenuManager.Modules.Items[l_Index] as TvcmModulesCollectionItem do
   begin
    l_Name := Name;
    for l_OpIndex := 0 to Operations.Count - 1 do
     with Operations.Items[l_OpIndex] as TvcmBaseOperationsCollectionItem do
     begin
      l_OpName := Name;
      if g_FirstShortCutLoad then
       StoreDesignTimeShortcuts;
      if aResetToDefault then
       vcmCleanShortcut(l_Name, l_OpName);
      if vcmLoadShortCut(l_Name, l_OpName, l_Shortcut, l_SecShort) then
       l_List.Text := vcmStr(l_SecShort)
      else
      begin
       l_Shortcut := SaveShortcut;
       l_List.Text := SaveSecondaryShortcuts;
      end;//vcmLoadShortCut..
      l_FreeShortcuts(TShortcut(l_ShortCut), l_List);
      ReplaceShortcuts(TShortcut(l_ShortCut), l_List);
     end;//with Operations.Items[l_OpIndex] as TvcmBaseOperationsCollectionItem
   end;//g_MenuManager.Modules.Items[l_Index] as TvcmModulesCollectionItem

 finally
  l_List.Free;
  g_FirstShortCutLoad := False;
 end;
 {$EndIf vcmUseSettings}
end;

function TvcmBaseMenuManager.BuildAction(const anOp: TvcmOpSelector;
  const aDefaultAction: TCustomAction): TCustomAction;
begin
 Case anOp.rKind of
  vcm_okModule :
   with g_Dispatcher.GetModuleByID(anOp.rMID.rMoID) do
    Result := TvcmModuleAction.Make(ModuleDef, GetOperationByID(anOp.rMID.rOpID));
  vcm_okEntity :
   with TvcmBaseEntitiesCollectionItem(Entities.FindItemByID(anOp.rID.rEnID)) do
    Result := TvcmEntityAction.Make(EntityDef, TvcmBaseOperationsCollectionItem(Operations.FindItemByID(anOp.rID.rOpID)).OperationDef);
  else
   Result := aDefaultAction;
 end;//Case anOp.rKind
end;

function TvcmBaseMenuManager.OpDefBySelector(const anOp: TvcmOpSelector): IvcmOperationDef;
  {-}
begin
 Case anOp.rKind of
  vcm_okModule :
   Result := g_Dispatcher.GetModuleByID(anOp.rMID.rMoID).GetOperationByID(anOp.rMID.rOpID);
  vcm_okEntity :
   with TvcmBaseEntitiesCollectionItem(Entities.FindItemByID(anOp.rID.rEnID)) do
    Result := TvcmBaseOperationsCollectionItem(Operations.FindItemByID(anOp.rID.rOpID)).OperationDef;
  else
   Result := nil;
 end;//Case anOp.rKind
end;

function TvcmBaseMenuManager.UnlockInProgress: Boolean;
begin
 Result := false;
end;

procedure TvcmBaseMenuManager.AddControlForUnlockPostBuild(const aCOntrol: IafwMenuUnlockedPostBuild);
begin
// Do Nothing;
end;

procedure TvcmBaseMenuManager.ListenerControlDestroying(const aCOntrol: IafwMenuUnlockedPostBuild);
begin
// Do Nothing;
end;

end.

