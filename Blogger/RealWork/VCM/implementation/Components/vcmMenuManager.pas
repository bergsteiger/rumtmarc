unit vcmMenuManager;
{* Менеджер меню. }

{ Библиотека "vcm"        }
{ Автор: Люлин А.В. ©     }
{ Модуль: vcmMenuManager - }
{ Начат: 14.03.2003 17:06 }
{ $Id: vcmMenuManager.pas,v 1.513 2013/07/26 10:32:44 morozov Exp $ }

// $Log: vcmMenuManager.pas,v $
// Revision 1.513  2013/07/26 10:32:44  morozov
// {RequestLink: 471774401}
//
// Revision 1.512  2013/07/05 14:34:52  lulin
// - переименовал свойство про возможность редактирования тулбара и немного переделал правки Виктора касательно редактирования тулбаров во внутренней версии.
//
// Revision 1.511  2013/07/01 12:28:52  morozov
// {RequestLink:382416588}
//
// Revision 1.510  2013/05/17 13:47:00  lulin
// - ищем странную ошибку в пачке тестов.
//
// Revision 1.509  2013/04/05 12:02:37  lulin
// - портируем.
//
// Revision 1.508  2013/03/14 16:09:28  kostitsin
// [$432571670]
//
// Revision 1.507  2013/02/08 15:22:56  kostitsin
// [$427755666]
//
// Revision 1.506  2013/01/28 11:27:27  lulin
// - разборки с некомпиляцией бибилиотек.
//
// Revision 1.505  2013/01/28 09:22:45  kostitsin
// [$425042879]
//
// Revision 1.504  2012/11/02 11:01:10  lulin
// - выкидываем лишнее.
//
// Revision 1.503  2012/11/02 08:27:26  lulin
// - правим за собой.
//
// Revision 1.502  2012/11/02 07:48:04  lulin
// - не цепляем лишние файлы.
//
// Revision 1.501  2012/11/01 09:42:22  lulin
// - забыл точку с запятой.
//
// Revision 1.500  2012/11/01 07:44:07  lulin
// - делаем возможность логирования процесса загрузки модулей.
//
// Revision 1.499  2012/11/01 07:00:32  lulin
// - не цепляем лишнее в тестах.
//
// Revision 1.498  2012/11/01 06:48:18  lulin
// - переносим заплатку в другое место, чтобы не перетёрлась при генерации модели.
//
// Revision 1.497  2012/10/22 14:20:47  lulin
// {RequestLink:405474881}
//
// Revision 1.496  2012/10/18 16:51:05  lulin
// {RequestLink:404363289}
//
// Revision 1.495  2012/08/29 09:42:45  kostitsin
// [$378542059]
//
// Revision 1.494  2012/08/16 14:55:01  kostitsin
// [$378542059]
//
// Revision 1.493  2012/07/18 13:18:04  lulin
// {RequestLink:378550793}
//
// Revision 1.492  2012/07/18 08:59:39  lulin
// {RequestLink:378550015}
//
// Revision 1.491  2012/07/17 12:01:29  lulin
// {RequestLink:378541134}
//
// Revision 1.490  2012/07/17 11:52:46  lulin
// {RequestLink:378541134}
//
// Revision 1.489  2012/07/17 11:12:09  lulin
// {RequestLink:378541134}
//
// Revision 1.488  2012/07/12 10:21:20  lulin
// {RequestLink:237994598}
//
// Revision 1.487  2012/05/31 09:52:24  lulin
// {RequestLink:358352284}
//
// Revision 1.486  2012/05/31 09:36:58  lulin
// {RequestLink:358352284}
//
// Revision 1.485  2012/05/30 17:12:01  lulin
// - выделяем класс в отдельный файл.
//
// Revision 1.484  2012/05/30 16:34:14  lulin
// {RequestLink:358352284}
//
// Revision 1.483  2012/04/13 19:00:43  lulin
// {RequestLink:237994598}
//
// Revision 1.482  2012/04/13 14:37:56  lulin
// {RequestLink:237994598}
//
// Revision 1.481  2012/04/09 08:38:58  lulin
// {RequestLink:237994598}
// - думаем о VGScene.
//
// Revision 1.480  2012/04/06 15:57:38  lulin
// {RequestLink:237994598}
//
// Revision 1.479  2012/04/06 08:20:18  lulin
// {RequestLink:237994598}
//
// Revision 1.478  2012/04/04 17:55:41  lulin
// {RequestLink:237994598}
// - разбираемся с упавшими тестами.
//
// Revision 1.477  2012/03/22 06:40:09  lulin
// - чистим код от мусора.
//
// Revision 1.476  2012/03/22 06:04:22  dinishev
// Bug fix: не компилировался АрчиТест
//
// Revision 1.475  2012/03/21 18:08:39  lulin
// {RequestLink:349116364}
//
// Revision 1.474  2012/03/21 17:22:15  lulin
// {RequestLink:349116364}
//
// Revision 1.473  2012/03/15 10:55:27  lulin
// {RequestLink:344754050}                                                
//
// Revision 1.472  2012/03/15 07:27:27  lulin
// {RequestLink:344754050}
// - чистим код.
//
// Revision 1.471  2012/01/20 15:02:36  kostitsin
// http://mdp.garant.ru/pages/viewpage.action?pageId=278854646
//
// Revision 1.470  2012/01/12 08:54:47  kostitsin
// http://mdp.garant.ru/pages/viewpage.action?pageId=293277808
//
// опечатка..
//
// Revision 1.469  2012/01/11 11:04:35  kostitsin
// http://mdp.garant.ru/pages/viewpage.action?pageId=253667544&focusedCommentId=326771397#comment-326771397
//
// Revision 1.468  2012/01/11 08:53:26  kostitsin
// не учел возможность "дочить" тулбары к разным краям окна.
// Исправил.
//
// http://mdp.garant.ru/pages/viewpage.action?pageId=319489610&focusedCommentId=326769863#comment-326769863
//
// Revision 1.467  2012/01/10 14:19:22  kostitsin
// http://mdp.garant.ru/pages/viewpage.action?pageId=319489610&focusedCommentId=326767909#comment-326767909
//
// Revision 1.466  2012/01/10 12:21:40  kostitsin
// http://mdp.garant.ru/pages/viewpage.action?pageId=319489610
//
// Revision 1.465  2011/12/27 13:03:14  kostitsin
// http://mdp.garant.ru/pages/viewpage.action?pageId=319489610
//
// проверяем гипотезу с invalidate
//
// Revision 1.464  2011/12/26 15:58:48  kostitsin
// http://mdp.garant.ru/pages/viewpage.action?pageId=296098743
//
// Revision 1.463  2011/12/23 11:45:52  kostitsin
// http://mdp.garant.ru/pages/viewpage.action?pageId=296098743
//
// Revision 1.462  2011/12/21 11:38:13  gensnet
// http://mdp.garant.ru/pages/viewpage.action?pageId=287214455
//
// Revision 1.461  2011/07/21 14:17:07  vkuprovich
// {RequestLink:272668827}
// реализация менюшных цветовых настроек переносится на уровеньTvcmPopupMenuPrim
//
// Revision 1.460  2011/07/19 18:59:27  vkuprovich
// {RequestLink:271758721}
// переносим освобождение кисти из FreeInstance в деструктор
//
// Revision 1.459  2011/07/19 18:10:33  vkuprovich
// {RequestLink:271758721}
// Фиксим цвет фона для выпадающего меню тулбара
//
// Revision 1.458  2011/07/18 18:26:45  vkuprovich
// {RequestLink:271757829}
// Фиксим цвет фона для тулбара
//
// Revision 1.457  2011/07/18 13:35:03  vkuprovich
// {RequestLink:271757851}
//
// Revision 1.456  2011/05/24 15:21:52  lulin
// {RequestLink:266425290}.
//
// Revision 1.455  2011/05/19 12:21:15  lulin
// {RequestLink:266409354}.
//
// Revision 1.454  2011/05/18 17:45:38  lulin
// {RequestLink:266409354}.
//
// Revision 1.453  2011/03/28 17:20:20  lulin
// {RequestLink:257393788}.
//
// Revision 1.452  2011/01/29 16:35:03  lulin
// {RequestLink:228688602}.
// - вычищаем мусор.
//
// Revision 1.451  2010/10/18 15:19:28  lulin
// {RequestLink:235876230}.
//
// Revision 1.450  2010/09/29 09:19:56  oman
// - fix: {RequestLink:235061704}
//
// Revision 1.449  2010/09/23 09:27:05  oman
// - fix: {RequestLink:235047754}
//
// Revision 1.448  2010/09/17 05:58:39  oman
// - fix: {RequestLink:235047754}
//
// Revision 1.447  2010/09/15 15:11:07  lulin
// {RequestLink:235047275}.
//
// Revision 1.446  2010/09/13 14:49:47  lulin
// {RequestLink:235047275}.
//
// Revision 1.445  2010/09/13 09:51:11  lulin
// {RequestLink:197496539}.
// - №2.
//
// Revision 1.444  2010/07/16 13:50:03  lulin
// {RequestLink:226005144}.
// [$226006522].
//
// Revision 1.443  2010/04/30 15:15:44  lulin
// {RequestLink:207389954}.
// - чистка комментариев.
//
// Revision 1.442  2010/04/27 18:02:24  lulin
// {RequestLink:159352361}.
// - признак возможности закрытия формы переносим на модель.
//
// Revision 1.441  2010/04/15 13:54:06  oman
// - new: Очепятка {RequestLink:203131454}
//
// Revision 1.440  2010/04/15 13:33:16  oman
// - new: Разрешаем PopupMenu для главной формы {RequestLink:203131454}
//
// Revision 1.439  2010/03/10 12:48:43  lulin
// {RequestLink:193826739}.
//
// Revision 1.438  2010/03/09 11:14:55  oman
// - new: {RequestLink:190678009}
//
// Revision 1.437  2010/03/03 17:28:16  lulin
// {RequestLink:193826739}.
//
// Revision 1.436  2010/02/11 10:09:29  oman
// - fix: {RequestLink:190677990}
//
// Revision 1.435  2010/02/11 09:35:18  oman
// - fix: {RequestLink:190677990}
//
// Revision 1.434  2009/11/20 10:27:40  oman
// - fix: {RequestLink:171970140}
//
// Revision 1.433  2009/11/19 12:59:03  oman
// - fix: {RequestLink:171968647}
//
// Revision 1.432  2009/10/19 13:07:56  lulin
// {RequestLink:159360578}. №7.
//
// Revision 1.431  2009/10/16 17:00:44  lulin
// {RequestLink:159360578}. №52.
//
// Revision 1.430  2009/10/15 17:21:57  lulin
// {RequestLink:166856141}. Попытки ещё что-нибудь полечить.
//
// Revision 1.429  2009/10/15 14:42:06  lulin
// {RequestLink:166856141}.
//
// Revision 1.428  2009/10/13 16:02:40  lulin
// - чистка кода.
//
// Revision 1.427  2009/10/05 06:46:07  lulin
// {RequestLink:159360578}. №51.
//
// Revision 1.426  2009/10/01 14:58:30  lulin
// - убираем сферического коня в вакууме.
//
// Revision 1.425  2009/09/30 15:23:00  lulin
// - убираем ненужное приведение ко вполне понятным интерфейсам.
//
// Revision 1.424  2009/09/28 17:12:48  lulin
// {RequestLink:159360578}. №31.
//
// Revision 1.423  2009/09/16 18:06:41  lulin
// {RequestLink:163061744}.
//
// Revision 1.422  2009/09/16 11:27:27  lulin
// - избавляемся от дублирования модулей.
//
// Revision 1.421  2009/08/31 15:40:45  lulin
// - убираем лишний метод.
// - убираем необходимость знать идентификатор сборки - если есть её класс.
// - убираем ненужную связь между раализациями прецедентов.
// - ссылаемся из реализаций прецедентов на используемые прецеденты.
//
// Revision 1.420  2009/08/11 14:24:03  lulin
// {RequestLink:129240934}. №16.
//
// Revision 1.419  2009/02/20 15:19:00  lulin
// - <K>: 136941122.
//
// Revision 1.418  2009/02/19 14:16:33  lulin
// - <K>: 136941122. Убираем локальные интерфейсы.
//
// Revision 1.417  2009/02/12 17:09:15  lulin
// - <K>: 135604584. Выделен модуль с внутренними константами.
//
// Revision 1.416  2009/02/12 16:06:49  lulin
// - <K>: 135604584. Выделен модуль локализации.
//
// Revision 1.415  2009/01/27 13:30:08  oman
// - fix: Не влезали служебные кнопки (К-136252192)
//
// Revision 1.414  2009/01/12 09:41:56  oman
// - new: Готовим интерфейсы для дочерней зоны (К-113508400)
//
// Revision 1.413  2008/09/02 12:38:14  lulin
// - <K>: 88080895.
//
// Revision 1.412  2008/07/14 13:11:51  lulin
// - <K>: 100958843.
//
// Revision 1.411  2008/07/10 11:19:13  lulin
// - <K>: 100958687.
//
// Revision 1.410  2008/07/08 11:26:27  lulin
// - избавился от хранения и выставления свойства IsList.
// - починил выбор в списке пользователей.
//
// Revision 1.409  2008/07/07 14:27:06  lulin
// - подготавливаемся к переименованию.
//
// Revision 1.408  2008/07/02 10:51:05  lulin
// - <K>: 95486333.
//
// Revision 1.407  2008/06/03 07:30:36  lulin
// - <K>: 93260300.
//
// Revision 1.406  2008/05/29 12:26:54  mmorozov
// - new: возможность определить от какого типа использовать панель инструментов (CQ: OIT5-28281).
//
// Revision 1.405  2008/05/15 20:15:21  lulin
// - тотальная чистка.
//
// Revision 1.404  2008/04/07 07:59:47  lulin
// - <K>: 88641266.
//
// Revision 1.403  2008/03/24 14:04:12  lulin
// - <K>: 87591840.
//
// Revision 1.402  2008/03/24 08:48:43  lulin
// - <K>: 87591840.
//
// Revision 1.401  2008/03/24 06:41:48  oman
// - Не собирались
//
// Revision 1.400  2008/03/21 08:01:51  mmorozov
// - фиксируем, что TvcmDockDef не должен существовать без TvcmDockPanel;
//
// Revision 1.399  2008/03/21 07:05:43  mmorozov
// - change: комментарий для TvcmDockPanel;
//
// Revision 1.398  2008/03/20 09:48:19  lulin
// - cleanup.
//
// Revision 1.397  2008/03/19 14:23:44  lulin
// - cleanup.
//
// Revision 1.396  2008/03/18 15:14:36  mmorozov
// - bugfix: панель создавалась по требованию, а должна всегда, т.к. выполняет функции корректировки размера формы (CQ: OIT5-28614);
//
// Revision 1.395  2008/03/11 13:47:06  oman
// - fix: Делаем DockContainer только по необходимости (cq28605)
//
// Revision 1.394  2008/03/11 13:05:39  oman
// - fix: Пряталась медалька (cq28605)
//
// Revision 1.393  2008/03/07 13:18:06  lulin
// - <K>: 86477737.
//
// Revision 1.392  2008/03/07 10:51:29  mmorozov
// - интерфейс в параметрах передаём с ключевым словом const (CQ: OIT5-28340);
//
// Revision 1.391  2008/03/07 09:36:04  mmorozov
// - изменения при работе с обработчиками формы (в рамках CQ: OIT5-28340);
//
// Revision 1.390  2008/02/21 10:55:08  lulin
// - упрощаем наследование.
//
// Revision 1.389  2008/02/20 08:31:05  oman
// - fix: Некорректно подгоняли высоту тулбаров
//
// Revision 1.388  2008/02/19 13:59:13  oman
// - new: Логика с количеством строк в иконках вынесена в тулбарные кнопки (cq10920)
//
// Revision 1.387  2008/02/18 13:46:24  oman
// - new: средний размер кнопок в тулбаре и автопобдор оного размера -
//   предварительный вариант (cq10920)
//
// Revision 1.386  2008/01/31 20:38:03  lulin
// - избавляемся от излишней универсальности списков.
//
// Revision 1.385  2007/12/07 16:22:44  lulin
// - переименовываем файл, чтобы не путать с другой библиотекой.
//
// Revision 1.384  2007/10/15 11:28:14  lulin
// - вычищено устаревшее свойство.
//
// Revision 1.383  2007/09/26 06:18:11  mmorozov
// - change: вместо использования TvcmAction используем IvcmAction + правки ошибок при переходе на использование _SelectedString вместо Caption (в рамках работы над CQ: OIT5-26741 + K<50758978>);
//
// Revision 1.382  2007/09/25 04:51:34  mmorozov
// - библиотека не собиралась;
//
// Revision 1.381  2007/09/25 03:55:35  mmorozov
// - new behaviour: для чтения\изменения текущего выбранного значения для операций типа vcm_otDate, vcm_otCombo, vcm_otEditCombo используем свойство параметров _SelectedString, раньше Caption. Тем самым Caption для этих типов операций стал изменяемым (в рамках работы CQ: OIT5-26741);
//
// Revision 1.380  2007/08/31 11:25:13  mmorozov
// - warning fix;
//
// Revision 1.379  2007/06/28 14:56:13  lulin
// - cleanup.
//
// Revision 1.378  2007/06/06 12:01:29  lulin
// - избавляемся от вредоносного параметра по-умолчанию (<K>-16352239).
//
// Revision 1.377  2007/05/25 14:52:14  mmorozov
// - change: изменения связанные с использованием операции типа дата (vcm_otDate) в панели задач (CQ: OIT5-25342);
//
// Revision 1.376  2007/04/24 07:36:02  oman
// - fix: Не срабатывало условие
//
// Revision 1.375  2007/04/20 12:04:32  lulin
// - bug fix: при хождении по истории опять кнопки не нарезались в несколько строк (CQ OIT5-24967).
//
// Revision 1.374  2007/04/19 11:10:27  lulin
// - если самая краяняя правая кнопка умещается в две строки, то не обрезаем ее текст (CQ OIT5-25091).
//
// Revision 1.373  2007/04/13 15:51:13  lulin
// - для отрисовки используем родную канву.
//
// Revision 1.372  2007/04/12 12:35:06  lulin
// - используем строки с кодировкой.
//
// Revision 1.371  2007/04/12 08:11:51  lulin
// - используем строки с кодировкой.
//
// Revision 1.370  2007/04/12 07:57:09  lulin
// - используем строки с кодировкой.
//
// Revision 1.369  2007/04/12 06:43:43  lulin
// - bug fix: не собиралась библиотека.
//
// Revision 1.368  2007/04/11 12:04:27  lulin
// - для заголовка экшена используем строки с кодировкой.
//
// Revision 1.367  2007/04/11 07:22:10  mmorozov
// - new: выделены методы для создания Action (BuildAction);
//
// Revision 1.366  2007/04/10 13:20:10  lulin
// - используем строки с кодировкой.
//
// Revision 1.365  2007/04/03 11:07:55  lulin
// - убираем ненужную прозрачность кнопок.
//
// Revision 1.364  2007/04/02 05:48:35  lulin
// - теперь длинные заголовки кнопок умеют резаться в несколько строк, если это возможно, а также - обрезаться с многоточием, если в несколько строк не влезают.
//
// Revision 1.363  2007/03/28 19:42:54  lulin
// - ЭлПаковский редактор переводим на строки с кодировкой.
//
// Revision 1.362  2007/03/20 15:26:30  mmorozov
// - hint fix;
//
// Revision 1.361  2007/03/15 12:18:43  lulin
// - cleanup.
//
// Revision 1.360  2007/02/12 16:40:29  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.359  2007/02/07 12:58:11  oman
// - fix: Множество vcm_InternalOperations переименовано в
//  vcm_HiddenOperations и из него выделены собственно
//  vcm_InternalOperations - иначе не выливались Hidden операции
//  (cq24357)
//
// Revision 1.358  2007/01/29 13:50:34  oman
// - fix: Комбобоксы в тулбаре не должны скролироваться в конец
//  текста (cq24179)
//
// Revision 1.357  2007/01/26 08:47:07  oman
// - fix: картинку для checked элемента выпадающего у кнопки меню
//  обрисовываем так же как и в главном меню.
//
// Revision 1.356  2007/01/22 15:30:08  lulin
// - избавляемся от нефиксированных параметров при выполнении пользовательской операции.
//
// Revision 1.355  2007/01/18 13:54:18  oman
// - new: Локализация библиотек - vcm - избавляемся от значений по
//  умолчанию - более радикальный вариант (cq24078)
//
// Revision 1.354  2007/01/16 08:51:07  lulin
// - избавляемся от нефиксированного параметра - текущая нода.
//
// Revision 1.353  2007/01/15 18:33:01  lulin
// - избавляемся от нефиксированного параметра - показывать корень или нет.
//
// Revision 1.352  2007/01/15 17:25:38  lulin
// - cleanup.
//
// Revision 1.351  2007/01/15 17:17:07  lulin
// - cleanup.
//
// Revision 1.350  2007/01/15 14:56:50  lulin
// - при построении меню используем операции модуля из списка строк.
//
// Revision 1.349  2007/01/12 13:14:44  oman
// - fix: Вернул vcm_otMenuButtonCombo - разъехалось меню (cq24113)
//
// Revision 1.348  2007/01/11 12:52:16  lulin
// - теперь список нод создаем только по требованию - когда его реально хотят заполнить.
//
// Revision 1.347  2007/01/11 11:15:06  lulin
// - вводим "родные" ноды.
//
// Revision 1.346  2007/01/10 17:27:41  lulin
// - теперь список строк создаем только по требованию - когда его реально хотят заполнить.
//
// Revision 1.345  2007/01/10 15:56:00  lulin
// - cleanup.
//
// Revision 1.344  2007/01/10 11:57:51  lulin
// - cleanup.
//
// Revision 1.343  2007/01/05 18:17:33  lulin
// - используем базовые ноды для выпадающих списков.
//
// Revision 1.342  2007/01/05 14:14:51  lulin
// - убран лишний тип операции - ибо нечего типом задавать место расположения контрола.
//
// Revision 1.341  2007/01/05 13:53:14  lulin
// - убран лишний тип операции - ибо нечего типом задавать место расположения контрола.
//
// Revision 1.340  2007/01/05 13:32:58  lulin
// - cleanup.
//
// Revision 1.339  2006/12/29 13:09:23  lulin
// - реализуем интерфейс расширенного списка строк.
//
// Revision 1.338  2006/12/27 14:44:59  mmorozov
// - change: механизм объединения панелей инструментов (CQ: OIT5-23903);
//
// Revision 1.337  2006/12/25 09:08:59  mmorozov
// - new behaviour: если у формы определен компонент "строка состояния", то у формы создается контейнер для зон стыковки. Для исключения случая когда панели инструментов попадают под строку состояния (CQ: OIT5-23903);
//
// Revision 1.336  2006/12/19 12:08:27  lulin
// - cleanup.
//
// Revision 1.335  2006/12/15 12:57:33  mmorozov
// - new behaviour: Встраивание панелей навигатора под основной тулбар (CQ: OIT5-21250). Положение главного тулбара определяется директивой vcmUseMainToolbarPanel;
//
// Revision 1.334  2006/12/13 15:13:10  lulin
// - cleanup.
//
// Revision 1.333  2006/12/13 09:22:06  mmorozov
// - new: возможность указывать фиксированный размер для зон стыковки панелей инструментов формы, в рамках работы над CQ: OIT5-13323;
//
// Revision 1.332  2006/11/03 11:00:32  lulin
// - объединил с веткой 6.4.
//
// Revision 1.331.2.3  2006/10/30 11:04:55  oman
// - fix: Блокирование излишней функциональности vcl.
//  Выпадающие меню в английской версии "моргало" (cq23319)
//
// Revision 1.331.2.2  2006/10/18 08:00:31  lulin
// - заголовок для настроек приобрел общее название.
//
// Revision 1.331.2.1  2006/10/17 08:13:18  lulin
// - заголовки контролов вычитываем из загруженных ресурсов.
//
// Revision 1.331  2006/09/20 14:59:16  mmorozov
// - new: событие выполения операции пользователем (в рамках работы журнал работы пользователя);
//
// Revision 1.330  2006/09/20 09:12:57  oman
// - fix: В окне настройки тулбаров Восстановить все не
//  восстанавливало глубину цвета (cq22660)
//
// Revision 1.329  2006/08/29 08:29:35  oman
// - fix: Неправильно вычислялась ширина кнопки для *ButtomPopup,
//  более правильный вариант (cq22390)
//
// Revision 1.328  2006/08/29 06:49:45  oman
// - fix: Неправильно вычислялась ширина кнопки для *ButtomPopup (cq22390)
//
// Revision 1.327  2006/08/25 12:34:18  oman
// - new: Новый тип операции _vcm_otMenuButtonPopup - такой же как
//   _vcm_otButtonPopup, но умеет еще показываться в меню.
//
// Revision 1.326  2006/06/09 11:09:51  oman
// - fix: Правильно обрабатываем Combo Action - были случаи когда
//  обращались к еще некорректному Action.Caption (cq21218)
//
// Revision 1.325  2006/06/08 13:38:00  lulin
// - подготавливаем контролы к обработке числа повторений нажатия клавиши.
//
// Revision 1.324  2006/06/02 12:36:11  oman
// - fix: В настройке тулбара при его смене могли хватать не видимый для пользователя
//
// Revision 1.323  2006/04/14 12:38:11  lulin
// - запрещаем перекрывать деструктор.
//
// Revision 1.322  2006/03/23 14:06:51  lulin
// - добавлена коллекция строковых констант.
//
// Revision 1.321  2006/03/15 12:27:21  lulin
// - cleanup.
//
// Revision 1.320  2006/03/10 18:22:03  lulin
// - работа над заливкой/выливкой строковых ресурсов.
//
// Revision 1.319  2006/01/20 11:33:06  mmorozov
// 1. Нельзя было на панель инструментов положить неколько операций из разных сущностей с одинаковыми именами;
// 2. Если в панели инструментов встречаются операции с одинаковыми названиями, то им автоматически добавляется суффикс в виде названия сущности;
// 3. Появилась возможность указать, что контекстные операции сущности должны показываться в отдельном пункте меню;
// 3.
//
// Revision 1.318  2005/12/20 14:53:17  lulin
// - исправлена ошибка, которую нашел Рома.
//
// Revision 1.317  2005/12/20 11:38:52  oman
// - fix: Докрутил TvcmCustomMenuManager._PostBuild на предмет переезда
//   тулбара на другой док.
//
// Revision 1.316  2005/12/08 13:06:05  oman
// - fix: не учитывалось, что в TvcmCustomMenuManager._PostBuild тулбар может
//   переехать на другой док
//
// Revision 1.315  2005/11/10 17:59:39  lulin
// - bug fix: не становились доступными стрелочки у кнопок с множественным выбором (CQ OIT5-17940).
//
// Revision 1.314  2005/09/13 13:18:22  mmorozov
// - warning fix;
//
// Revision 1.313  2005/07/28 14:29:45  mmorozov
// new: published _FormSetFactories;
//
// Revision 1.312  2005/06/01 09:14:49  mmorozov
// - warning fix;
// new: реализация и объявление TvcmFakeBox обрамлены _vcmUseComboTree;
//
// Revision 1.311  2005/06/01 08:24:28  mmorozov
// new: class TvcmFakeBox (общая функциональность необходимая vcm при использовании TFakeBox);
// change: TvcmEdit и TvcmComboBox наследники от TvcmFakeBox;
//
// Revision 1.310  2005/05/31 14:39:46  mmorozov
// new: TvcmComboBox поддерживает интерфейс ITB97Ctrl;
//
// Revision 1.309  2005/05/12 14:39:15  lulin
// - cleanup: не ходим вкруголя к своему же экземпляру.
//
// Revision 1.308  2005/05/12 14:33:48  lulin
// - new method: Tafw.IsObjectLocked.
//
// Revision 1.307  2005/04/12 13:43:02  mmorozov
// new behaviour: создаем _vcm_dmToolbarMenu после загрузки ресурсов;
//
// Revision 1.306  2005/03/22 11:57:49  mmorozov
// new behaviour: TvcmEdit при получении фокуса выделяет весь текст;
//
// Revision 1.305  2005/03/21 13:12:51  am
// change: вынес _TvcmPopupMenuPrim в vcmMenus
//
// Revision 1.304  2005/03/11 13:24:54  am
// change: выставляем панелям, на которых лежат доки, правильный TabOrder
//
// Revision 1.303  2005/02/25 14:39:11  mmorozov
// new: реализация TvcmDockDef интерфейса IvcmDock;
// new: ведем список dock-ов формы;
//
// Revision 1.302  2005/02/02 09:14:42  lulin
// - расширен шаблон Unknown.
//
// Revision 1.301  2005/01/25 08:49:43  mmorozov
// bugfix: при перегрузке toolbar-ов не перечитывалась глубина цвета;
//
// Revision 1.300  2005/01/21 15:05:34  mmorozov
// new: реакция на изменение Action.Hint для TvcmComboBox;
//
// Revision 1.299  2005/01/21 14:58:03  am
// change: vcm'ный TvcmDateEdit наследуем от TvtDblClickDateEdi
//
// Revision 1.298  2005/01/20 13:25:18  lulin
// - new consts: _vcm_otModuleInternal, _vcm_otFormConstructor.
//
// Revision 1.297  2005/01/14 17:24:19  lulin
// - в _ProcessCommand добавлен параметр aForce - сигнализирующий, что такого ShortCut'а нету в VCM и что не надо умничать с обработкой комманды.
//
// Revision 1.296  2005/01/14 10:42:30  lulin
// - методы Get*ParentForm переехали в библиотеку AFW.
//
// Revision 1.295  2005/01/12 14:01:16  lulin
// - new methods: Tafw.BeginOp/EndOp.
//
// Revision 1.294  2004/12/16 08:15:55  mmorozov
// - форматирование кода;
// - warnings fix;
//
// Revision 1.293  2004/11/25 08:01:02  mmorozov
// bugfix: в TvcmComboBox не выставляем ItemIndex если Action.Caption = '';
//
// Revision 1.292  2004/11/23 10:29:42  am
// change: при поднятии попап меню подменяем ему WndProc с тем, чтобы нормально поднимался хелп.
//
// Revision 1.291  2004/11/18 16:29:55  lulin
// - отвязываем библиотеки от VCM без использования inc'ов.
//
// Revision 1.290  2004/11/17 17:05:34  mmorozov
// bugfix:  если у вновь открытой формы было меньше кнопок чем у предыдущей формы, то кнопка закрыть области dock-а не была видна;
//
// Revision 1.289  2004/11/15 12:50:14  mmorozov
// change: method AdjustIfEmpty -> method UpdateEmpty(aUpdateVisibility : Boolean = True);
//
// Revision 1.288  2004/11/05 14:05:00  am
// change: новый тип - _vcm_otMenuButtonCombo. Полностью такой же, как vcm_otButtonCombo, но умеет показывать себя в меню.
//
// Revision 1.287  2004/10/28 11:17:49  mmorozov
// change: сигнатура TvcmCustomMenuManager.LoadGlyphSize;
// new: method TvcmCustomMenuManager.RestoreGlyphSize;
//
// Revision 1.286  2004/10/26 10:47:21  fireton
// - bug fix: не определялась автоматически глубина цвета для иконок
//
// Revision 1.285  2004/10/21 19:25:23  mmorozov
// new: TvcmDockPanelButton наследник TCustomToolbarButton97;
// new: properties TvcmCustomToolbarButton97 (DockButtonsImageList, BtnCloseImageIndex, BtnOpenImageIndex, BtnOpenNewWindowImageIndex);
// new: иконки области toolbar-а завязаны на новый imagelist;
//
// Revision 1.284  2004/10/21 16:08:56  lulin
// - cleanup: убрана ненужная переменная.
//
// Revision 1.283  2004/10/21 11:46:06  mmorozov
// bugfix: для Ttb97MoreButton размер не определяется;
//
// Revision 1.282  2004/10/21 09:47:29  mmorozov
// bugfix: определение размера toolbar-а и кнопок toolbar-а;
//
// Revision 1.281  2004/10/20 16:41:43  mmorozov
// new behaviour: при входе в компонент (ControlEnter) типа TFakeBox не вызывается TvcmAction(f_FocusControl.Action).LockExecute;
//
// Revision 1.280  2004/10/20 13:44:27  am
// bugfix: при SetFasten на доке дёргаем BeginUpdate\EndUpdate
//
// Revision 1.279  2004/10/20 10:40:43  lulin
// - new behavior: увеличиваем частоту использования пула объектов.
//
// Revision 1.278  2004/10/19 15:04:55  lulin
// - bug fix: не компилировалось.
//
// Revision 1.277  2004/10/19 13:23:27  lulin
// - переделки TvcmCustomMenuManager._f_SaveDockList на _TvcmObjectRefList.
//
// Revision 1.276  2004/10/19 12:04:22  mmorozov
// new: method TvcmCustomMenuManager.ToolbarButtonSize;
// new: устанавливаем TB97Ctls процедуру определения размеров кнопки;
//
// Revision 1.275  2004/10/15 13:39:45  lulin
// - bug fix: не всем кнопкам Toolbar'ов выставлялось свойство AutoSize.
//
// Revision 1.274  2004/10/15 12:39:08  am
// change: Открутил загрузку главного тулбара совместно с текущим
// change: отпала надобность в вычислении "веса" формы в зависимости от её положения в цепочке наследования (GetFormWeight)
//
// Revision 1.273  2004/10/13 16:19:02  mmorozov
// new: published properties _HistoryZones, SaveFormZones (TvcmMenuManager);
//
// Revision 1.272  2004/10/13 15:22:43  am
// bugfix: форма календарика умирала раньше времени
//
// Revision 1.271  2004/10/08 08:10:32  am
// bugfix: при загрузке из настроек иногда неправильно выставлялись индексы операций  в тулбаре
//
// Revision 1.270  2004/10/07 11:49:41  lulin
// - не компилировалось без define _Nemesis.
//
// Revision 1.269  2004/10/05 14:42:05  am
// change: при загрузке операций из настроек, те, для которых нет записей в настройках, помещаем в конец тулбара и отбиваем разделителями, группируя по сущностям
//
// Revision 1.268  2004/10/04 15:15:57  am
// change: прикрутил к _TvcmCalendarForm "правильное" поведение с активизацией после потери фокуса, etc в модальном виде.
//
// Revision 1.267  2004/09/30 10:56:04  mmorozov
// bugfix: при изменении состава кнопок области докинга toolbar содержащий эти кнопки не менял размеры;
//
// Revision 1.266  2004/09/28 10:31:07  am
// change: выставляю всем edit'ам RestrictConsSpace (запрет ввода нескольких пробелов подряд)
//
// Revision 1.265  2004/09/27 11:33:08  fireton
// - bug fix: починка фокуса
//
// Revision 1.264  2004/09/24 10:40:04  am
// change: для combo операций, в случае использования в OnTest'ах (aParams._AsIU[_vcm_opItems] _As XIvcmStrings) - выставляем в комбобоксе  IsList.
//
// Revision 1.263  2004/09/20 12:02:13  mmorozov
// opt: создаём TvcmDockPanelButtonLink по требованию;
//
// Revision 1.262  2004/09/17 11:22:58  lulin
// - параметр vcm_opStrings переименован в _vcm_opItems, и ему изменен тип с _IvcmHolder на IvcmStrings (!).
//
// Revision 1.261  2004/09/15 13:29:02  lulin
// - TvcmAction и TvcmWinControlActionLink переведен на "шаблон" l3Unknown.
//
// Revision 1.260  2004/09/14 09:14:23  lulin
// - cleanup: редко используемые поля убраны под define'ы.
// - упорядочено наследование.
// - поправлены имена.
//
// Revision 1.259  2004/09/13 15:50:27  lulin
// - cleanup: выкинул лишний модуль из Toolbar 97.
// - bug fix: за Мишей - не компилировался VCM.
//
// Revision 1.258  2004/09/13 14:52:39  lulin
// - bug fix: не компилировалось без L3.
// - bug fix: были перекрыты Destroy, а не Cleanup - из-за этого отьезжали Toolbar'ы.
//
// Revision 1.257  2004/09/13 12:17:42  lulin
// - new unit: vcmControl.
//
// Revision 1.256  2004/09/11 12:29:09  lulin
// - cleanup: избавляемся от прямого использования деструкторов.
// - new unit: vcmComponent.
//
// Revision 1.255  2004/09/10 10:39:29  lulin
// - закомментировал вчерашнюю оптимизацию с убиванием Handle, т.к. пока есть проблемы с фокусом.
//
// Revision 1.254  2004/09/09 16:43:30  mmorozov
// change: TvcmCustomMenuManager._RegisterChildInMenu (Удаляем windows окно, чтобы во время долгосрочных операций построения меню и toolbar-ов окна не прорисовывались. Окно формы восстанавливается в _TvcmEntityForm._Make);
//
// Revision 1.253  2004/09/09 13:56:28  lulin
// - эксперименты с уменьшением количества вызовов оконной процедуры в процессе создания новой формы (пока все закоментированно).
//
// Revision 1.252  2004/09/08 07:54:15  mmorozov
// new behaviour: продолжающую линию рисуем для dock-ов с любым Align;
//
// Revision 1.251  2004/09/08 07:36:10  am
// change: лочим тулбары в _MakeToolbarFromSettings точно так же, как в _MakeToolbar
//
// Revision 1.250  2004/09/07 16:19:45  law
// - перевел VCM на кшированные обьекты.
//
// Revision 1.249  2004/09/06 16:31:41  mmorozov
// change: TvcmDockPanel._CreateBtn;
//
// Revision 1.248  2004/09/06 07:06:28  mmorozov
// - не компилировалось, добавлены дефайны;
//
// Revision 1.247  2004/09/03 15:14:27  mmorozov
// new: class TvcmToolbarDockPanel;
// new: method TvcmDockDef.Paint;
// new: global procedure vcmPaintDockBottomLine;
//
// Revision 1.246  2004/09/03 11:44:20  mmorozov
// new: при построении toolbar-а спрашиваем у формы размер иконок, если маленький, то используем список с фиксированным размером;
//
// Revision 1.245  2004/09/03 10:17:39  am
// change: защитил разлочивание доков переменной _f_UnlockInProgress (проявилась ситуация, когда в процессе вызова EndDock, путём сложных манипуляций мы снова входили в Unlock).
//
// Revision 1.244  2004/09/02 17:17:46  mmorozov
// new: при создании первого toolbar-а вычисляем и запоминаем максимальную высоту toolbar-а с маленькими иконками и компонентами TvcmToolButton97, TvcmDateEdit, TvcmEdit;
// new: устанавливаем глобальную переменную TB97Tlbr.g_ToolbarSize для установки фиксированного размера toolbar-а;
// change: у кнопок в области toolbar-а нет рамки;
// change: MenuImages -> SmallImages;
//
// Revision 1.243  2004/09/01 10:32:36  fireton
// - bug fix: чистим _f_SaveDockList при удалении из _g_DockList (CQ00008981)
//
// Revision 1.242  2004/08/27 07:35:30  am
// change: доп параметр в _UserTypeByCaption - искать по Caption'у или _LongCaption'у.
//
// Revision 1.241  2004/08/25 14:25:30  mmorozov
// - не комплировалась библиотека;
//
// Revision 1.240  2004/08/25 09:17:52  am
// change: отложенное удаление тулбаров в ReloadToolbars
//
// Revision 1.239  2004/08/25 06:58:47  am
// change: дефайны для _TvcmCalendarForm
//
// Revision 1.238  2004/08/24 14:34:38  am
// new: _TvcmCalendarForm
//
// Revision 1.237  2004/08/19 13:36:17  fireton
// - добавление выбора глубины цвета для иконок
//
// Revision 1.236  2004/08/19 06:48:29  mmorozov
// bugfix: в специфическом случае кнопка закрытия окна не была прижата вправо, после запуска приложения (не используем AutoSize, считаем сами);
//
// Revision 1.235  2004/08/11 10:28:54  fireton
// - поддержка размера иконок
//
// Revision 1.234  2004/08/09 11:43:43  mmorozov
// bugfix: OnExecute вызывался на закрытие выпадающего окна календаря (без выбора даты);
//
// Revision 1.233  2004/08/06 16:04:13  mmorozov
// bugfix: не компилировалось с директивой _vcmNotNeedOvc;
//
// Revision 1.232  2004/08/06 13:45:01  mmorozov
// new: method TvcmEdit._ProcessCommand;
//
// Revision 1.231  2004/08/04 16:21:13  demon
// - cleanup: remove warnings and hints
//
// Revision 1.230  2004/08/04 12:00:17  am
// change: выставляю в наследнике TvtDateEdit свойство RestrictInvalidDate
//
// Revision 1.229  2004/08/03 12:37:06  am
// change: реализация UpdateAction в vcm-ном наследнике комбобокса
//
// Revision 1.228  2004/07/30 14:25:56  law
// - bug fix: отвалились иконки в контекстном меню.
//
// Revision 1.227  2004/07/30 09:08:40  law
// - bug fix: в контекстном меню остались "большие" иконки.
//
// Revision 1.226  2004/07/28 10:20:49  law
// - new prop: TvcmBaseMenuManager.MenuImages.
//
// Revision 1.225  2004/07/23 12:42:35  am
// change: при создании тулбара прописываем ему вес.
//
// Revision 1.224  2004/07/21 13:46:01  law
// - new event: TvcmBaseMenuManager.OnInitCommands.
//
// Revision 1.223  2004/07/21 13:02:54  am
// bugfix: TvcmDateEdit.CMTextChanged забыли message CM_TextChanged дописать.
//
// Revision 1.222  2004/07/15 11:46:28  am
// change: вынес SetFasten на уровень дока
//
// Revision 1.221  2004/07/14 14:41:53  law
// - optimization: перед созданием меню убиваем Handle окна - это существенно ускоряет процесс открытия нового окна.
//
// Revision 1.220  2004/07/13 11:25:53  am
// change: поменял логику режима "закрепить тулбары". Плавающие теперь можно таскать и дочить, после дока с тулбаром ничего сделать нельзя
//
// Revision 1.219  2004/07/13 07:22:15  am
// change: при сохранении тулбара, независимо от его состояния, сохраняем плавающие координаты
//
// Revision 1.218  2004/07/12 09:16:14  am
// change: при выборе "закрепить тулбары", автоматически дочим плавающие
//
// Revision 1.217  2004/06/17 12:52:16  am
// change: вытащил vcm-ориентированый код из комбобокса
//
// Revision 1.216  2004/06/16 09:35:57  am
// change: перевод TList на листы с подсчётом ссылок
//
// Revision 1.215  2004/06/02 10:20:43  law
// - удален конструктор Tl3VList.MakeIUnknown - пользуйтесь _Tl3InterfaceList._Make.
//
// Revision 1.214  2004/06/01 15:33:56  law
// - удалены конструкторы Tl3VList.MakeLongint, MakeLongintSorted - пользуйтесь _Tl3LongintList.
// - подчистил VCM, за сегодняшними переделками Маркова.
//
// Revision 1.213  2004/06/01 12:22:58  am
// new: чекнутые элементы с иконами в PopupMenu рисуются "вдавленными".
//
// Revision 1.212  2004/05/22 12:08:18  am
// bugfix: BackupOpStatus/RestoreOpStatus
//
// Revision 1.211  2004/05/21 05:47:15  am
// new: обработка сообщений от тулбара
//
// Revision 1.210  2004/05/19 12:55:44  am
// new _TvcmToolbarDef.LockDock - залочить док
// new TvcmCustomMenuManager.BackupOpStatus/RestoreOpStatus - сохранить/восстановить счётчик лока
// new TvcmCustomMenuManager.LockDocks - парная UnlockDocks скобка
//
// Revision 1.209  2004/04/26 07:25:15  mmorozov
// bugfix: при загрузке позиций toolbar-а проверяем что _TvcmEntityForm._UserTypes > 0;
//
// Revision 1.208  2004/04/22 11:03:46  mmorozov
// new behaviour:  если при выходе из компонента редактирования его Text <> TvcmAction.Caption, то устанавливаем Text = TvcmAction.Caption;
//
// Revision 1.207  2004/04/16 14:36:32  am
// change: новый тип TvcmIconTextType - содержит "третье состояние" для IconText - дефолтное. (В этом состоянии операции одного типа соответствуют кнопки с иконками, а другим - с иконками и текстом)
//
// Revision 1.206  2004/04/16 08:49:52  mmorozov
// new: используем hint OnQuery;
//
// Revision 1.205  2004/04/14 12:43:09  mmorozov
// - оформляем код в стиле vcm;
// change: TDockPanel переименован в TvcmDockPanel;
// new: class TvcmDockPanelButtonLink;
// new: class TvcmDockPanelButton;
// new behaviour: при удалении формы с которой связана кнопка сбрасываем обработчики и скрываем кнопку;
//
// Revision 1.204  2004/04/07 06:37:14  am
// change: синтаксис
//
// Revision 1.203  2004/04/02 08:48:24  am
// change: PopupMenu в тулбаре у комбо, edit'ов и т.д.
//
// Revision 1.202  2004/04/01 15:11:34  am
// change: выставляем списковым комбобоксам isList
//
// Revision 1.201  2004/03/30 10:26:02  nikitin75
// не вызываем RefocusEntity из ControlExit - приводило к неправильной обработке _WM_SETFOCUS;
//
// Revision 1.200  2004/03/29 13:06:58  nikitin75
// + для bsDialog и bsSingle форм при изменении размеров  TDockPanel ресайзем форму;
//
// Revision 1.199  2004/03/27 13:19:37  am
// bugfix к предыдушему bugfix: рано присваивал Parent'а плавающему тулбару
//
// Revision 1.198  2004/03/26 10:45:17  am
// change: BeginOp\EndOp прокидываются из TvcmDispatcher'а
// new: поддержка операции "закрепить панели инструментов" (кнопка получила доп. параметр - IconText)
// bugfix: правки, связанные с загрузкой позиций тулбаров и созданием "виртуальных" тулбаров (из диалога настройки)
//
// Revision 1.197  2004/03/24 14:16:47  law
// - bug fix: неправильно перенабирались несохраненные Toolbar'ы формы после настройки одного из них.
//
// Revision 1.196  2004/03/24 13:30:04  law
// - bug fix: неправильно определялся тип Toolbar'а (верхний, нижний, правый, левый).
//
// Revision 1.195  2004/03/23 15:05:06  am
// change: _PostBuild. aFollowDocks - при перезагрузке тулбаров, загрузить не только тулбары формы,
// но и все тулбары в тех доках, которые затронуты изменениями.
// bugfix: не грузим тулбары при "виртуальном" создании.
// bugfix: не прописываем parent'а тулбару при "виртуальном" создании
//
// Revision 1.194  2004/03/22 09:28:22  mmorozov
// new behavior: если toolbar создаётся для формы с ZoneType = vcm_ztForToolbarsInfo, то не создаем кнопки для окна (закрытие окна и т.д.);
//
// Revision 1.193  2004/03/17 15:30:38  am
// change: BeginUpdate\EndUpdate
//
// Revision 1.192  2004/03/16 16:56:04  mmorozov
// bugfix: стал возможен ввод двухсимвольного года в компонент даты;
//
// Revision 1.191  2004/03/16 11:33:16  mmorozov
// new: кнопки управления формой могут быть только в верхнем Dock-е;
//
// Revision 1.190  2004/03/16 09:06:27  am
// bugfix:
//
// Revision 1.189  2004/03/16 08:53:04  am
// new: Сохранение формы плавающего тулбара
// new: _g_DockList
//
// Revision 1.188  2004/03/15 10:43:26  mmorozov
// bugfix: несколько кнопок закрыть на форме;
//
// Revision 1.187  2004/03/12 13:57:38  law
// - bug fix: Toolbar'ы вылезали из модальной формы.
//
// Revision 1.186  2004/03/11 13:51:23  am
// change: поменялась логика сброса SmartAlign
//
// Revision 1.185  2004/03/05 10:33:52  am
// New: выставляем тулбару NearestParent
//
// Revision 1.184  2004/03/05 08:39:27  am
// new: TvcmCustomMenuManager.MergedToMainForm - смержены ли тулбары данной формы в главную форму.
//
// Revision 1.183  2004/03/04 08:04:03  am
// new: сохранение(_TvcmEntityForm.SaveToolbars)/восстановление(TvcmCustomMenuManager._PostBuild) положения, доков, etc.. тулбаров
//
// Revision 1.182  2004/03/03 12:25:14  law
// - bug fix: не очищалось Popup-menu - соответственно неправильно обрабатывались ShortCut'ы.
//
// Revision 1.181  2004/03/02 07:51:08  am
// bugfix: IfDef'ы
//
// Revision 1.180  2004/03/01 14:50:22  am
// new: функции-прокси для объектов, наследующихся не от TB97 (pm_getToolbar, ToolbarCount, etc..)
// change: кэширование создаваемых доков в f_DockList (для сброса SmartAlign и для того, чтобы не съезжали тулбары в процессе загрузки из настроек)
// new: сохранение позиций тулбаров
// change: некоторая чистка.
//
// Revision 1.179  2004/02/27 05:25:37  mmorozov
// - метод GetToolbarParent переименован в GetDockParent;
//
// Revision 1.178  2004/02/26 15:47:47  am
// new: _TvcmToolbarDef.AdjustIfEmpty - прячем тулбар, состоящий только из разделителей
//
// Revision 1.177  2004/02/26 15:00:56  mmorozov
// - чиска кода;
//
// Revision 1.176  2004/02/26 14:59:51  mmorozov
// new: класс TvcmMainToolbarPanel;
// new: method TvcmCustomMenuManager.GetToolbarParent;
// new: Dock на главной форме размещается на TvcmMainToolbarPanel;
//
// Revision 1.175  2004/02/24 12:55:52  am
// new: TvcmEdit теперь наследуется и от TFakeBox.
//
// Revision 1.174  2004/02/20 10:29:25  am
// *** empty log message ***
//
// Revision 1.173  2004/02/20 08:07:03  am
// bugfix: если в глубине тулбара возникает исключение при поиске контрола(OrderControls), то, несмотря на то,
// что оно гасится - в ряде случаев возникает непрорисовка.
//
// Revision 1.172  2004/02/19 14:55:23  am
// bugfix: Непрорисовка из-за показа\прятанья контролов в теле _TvcmToolbarDef.CustomArrangeControls
// (обойдено через посылку сообщения)
//
// Revision 1.171  2004/02/19 07:07:23  am
// change: CustomArrangeControls в _TvcmToolbarDef.
//
// Revision 1.170  2004/02/18 13:15:37  am
// *** empty log message ***
//
// Revision 1.168  2004/02/13 14:22:58  law
// - new behavior: убрано требование необходимости иконки у операции для того, чтобы она попадала в Toolbar.
//
// Revision 1.167  2004/02/13 14:04:14  law
// - new behavior: операции типа vcm_otCombo умеют попадать в меню.
//
// Revision 1.166  2004/02/13 08:57:59  law
// - bug fix: AV при показе Popup-меню.
// - extract method: _vcmMakeComboMenu.
//
// Revision 1.165  2004/02/12 12:15:42  law
// - убран ненужный with.
//
// Revision 1.164  2004/02/12 11:08:30  law
// - bug fix: не собирался пакет без _vcmUseTB97.
//
// Revision 1.163  2004/02/11 17:54:34  law
// - new behavior: возможность выбора Toolbar'а верхний/нижний etc.
//
// Revision 1.162  2004/02/11 14:27:55  law
// - change: задел на множественность Toolbar'ов.
//
// Revision 1.161  2004/02/11 12:18:38  law
// - new behavior: пересоздаем Toollbar'ы для всех заинтересованных форм.
//
// Revision 1.160  2004/02/10 17:09:38  law
// - new: в нулевом приближении сделана настройка Toolbar'ов при выборе объекта из списка.
//
// Revision 1.159  2004/02/10 15:55:30  law
// - new method: TvcmCustomMenuManager._UserTypeByCaption.
//
// Revision 1.158  2004/02/10 14:59:10  law
// - change: вместо пары UserType.Name/Caption используем интерфейс IvcmUserTypeDef.
//
// Revision 1.157  2004/02/10 12:59:49  law
// - change: IvcmUserTypesIterator теперь возвращает IvcmUserTypeDef.
//
// Revision 1.156  2004/02/09 15:19:04  law
// - new behavior: учитываем позиции кнопок, сохраненные в настройках.
//
// Revision 1.155  2004/02/09 14:00:29  law
// - new behavior: читаем из настроек и информацию об операциях модулей тоже.
//
// Revision 1.154  2004/02/09 12:14:12  law
// - new methods: TvcmCustomMenuManager._LoadButtonsFromSettings, _MakeToolbarFromSettings.
//
// Revision 1.153  2004/02/06 12:13:44  law
// - new behavior: сохраняем/читаем необходимость наличия разделителя.
//
// Revision 1.152  2004/02/05 19:40:09  law
// - new behavior: строим Toolbar'ы по сохраненным настройкам. Пока не учитываются разделители, операции модулей, порядок операций и неправильно читается первая копия основного окна. Завтра буду добивать это дело.
//
// Revision 1.151  2004/02/05 17:00:34  law
// - new behavior: вычитываем Toolbar'ы из настроек, но пока плюем на то, что прочитали.
//
// Revision 1.150  2004/02/05 14:50:34  mmorozov
// delete: неиспользуемый модуль в _uses;
//
// Revision 1.149  2004/02/05 14:08:26  mmorozov
// new: функциональность из TvcDateEdit перенесена в TvcmDateEdit;
//
// Revision 1.148  2004/02/04 16:49:16  law
// - new method: TvcmCustomMenuManager._BuildFormToolbars.
//
// Revision 1.147  2004/02/04 15:58:57  law
// - new method version: TvcmCustomMenuManager._BuildToolbar - не зависящий от EntityDef или ModuleDef - для "пользовательских" Toolbar'ов.
//
// Revision 1.146  2004/02/04 14:04:07  law
// - bug fix: разделители между кнопками стали выглядеть пристойно.
//
// Revision 1.145  2004/02/04 13:31:08  am
// new: _TvcmToolbarDef - функции для работы с разделителями
//
// Revision 1.144  2004/02/04 10:45:00  law
// - bug fix: не компилировалось без директивы _vcmUseTB97.
//
// Revision 1.143  2004/02/04 10:28:52  law
// - change: убрана "размазанность" класса _TvcmToolbarDef по разным define.
//
// Revision 1.142  2004/02/04 10:02:25  law
// - new behavior: вставляем разделители между группами кнопок.
//
// Revision 1.141  2004/02/03 14:30:07  mmorozov
// bugfix: пакет не компилировался, добавлены директивы компиляции;
//
// Revision 1.140  2004/02/03 11:56:07  mmorozov
// new behaviour: устанавливаем переменные l_QueryClose, l_QueryMaximized, l_QueryOpen в методе GetParentForDock (method TvcmCustomMenuManager._BuildToolbar);
//
// Revision 1.139  2004/02/03 10:10:16  mmorozov
// new: method TvcmDockDef.SetHandlers (создание и определение событий для кнопокна TvcmDockDef);
//
// Revision 1.138  2004/02/02 18:26:47  law
// - change: "задел" на множественность Toolbar'ов в пределах одного дока, одной формы.
//
// Revision 1.137  2004/02/02 18:20:42  law
// - new method: TvcmCustomMenuManager._MakeToolbar.
//
// Revision 1.136  2004/02/02 18:08:29  law
// - new method: TvcmCustomMenuManager._FillToolbar.
//
// Revision 1.135  2004/02/02 17:37:59  law
// - refactoring: "extract method" (в методеTvcmCustomMenuManager._BuildToolbar).
//
// Revision 1.134  2004/02/02 17:05:20  law
// - new param: TvcmCustomMenuManager._BuildToolbar - anIndex: Integer = 0.
//
// Revision 1.133  2004/02/02 16:58:22  law
// - new behavior: в режиме OneToolbarPerForm берем название Toolbar'а из UserType'а/формы.
//
// Revision 1.132  2004/02/02 16:45:28  law
// - new prop: TvcmCustomMenuManager.OneToolbarPerForm.
//
// Revision 1.131  2004/02/02 16:11:37  law
// - new method: TvcmDockDef._Make - фабричный метод учитывающий СЦЕНАРИЙ построения Toolbar'а.
//
// Revision 1.130  2004/02/02 15:37:52  law
// - bug fix: учитываем множественность Toolbar'ов на одной форме.
//
// Revision 1.129  2004/02/02 13:30:26  am
// new: более одного тулбара у формы
//
// Revision 1.128  2004/01/27 17:02:00  law
// - new prop: TevBaseMenuManager.Messages.
//
// Revision 1.127  2004/01/21 16:16:29  nikitin75
// + не прочищаем лишний раз фон: существенно сокращено моргание тулбара;
//
// Revision 1.126  2004/01/21 13:15:25  mmorozov
// new: property TvcmDateEdit.OnSelectDate;
// new: method TvcmDateEdit.DoCloseUp;
// new: при создании TvcmDateEdit связываем TvcmDateEdit.OnSelectDate с TvcmCustomMenuManager.ControlSelect если используемый тип календаря TvtDateEdit;
//
// Revision 1.125  2004/01/17 13:44:00  am
// change: дефолтные установки для TB97 (CloseMode, DisableAutoAlign)
//
// Revision 1.124  2004/01/16 17:49:47  law
// - new behavior: добавляем в Main Toolbar сначала кнопкиот Main формы, а потом только от модулей.
//
// Revision 1.123  2004/01/16 16:12:10  am
// bugfixes: передача фокуса при уходе с TB97
//
// Revision 1.122  2004/01/16 15:13:04  mmorozov
// new: method TvcmDateEditActionLink.IsCaptionLinked (см. комментарии в методе);
// bugfix: при выходе из компонента если не вызывался Action.UnlockExecute, то вызываем его;
//
// Revision 1.121  2004/01/16 13:26:39  law
// - bug fix: в основной Toolbar не попадали операции основной формы.
//
// Revision 1.120  2004/01/16 10:13:04  am
// change: косметические правки ExecuteHandler
//
// Revision 1.119  2004/01/16 08:04:20  am
// *** empty log message ***
//
// Revision 1.118  2004/01/16 07:40:55  am
// bugfix: зависимость TB97 от vcm
//
// Revision 1.117  2004/01/14 12:42:16  law
// - new behavior: вызываем TvcmWinControlActionLink._ParamsChanged для TvcmDateEdit.
//
// Revision 1.116  2004/01/09 14:48:46  mmorozov
// - по умолчанию тип TvcmDateEdit определяется директивой _vcmUseStdDate;
//
// Revision 1.115  2004/01/09 13:03:37  mmorozov
// no message
//
// Revision 1.114  2004/01/09 12:20:35  law
// - bug fix: Для операций типа vcm_otTyper при создании формы сразу вызывается OnExecute - а это не правильно (CQ OIT5-5803).
//
// Revision 1.113  2004/01/08 19:03:00  mmorozov
// new: директива _vcmUseStdDate - использование TDateTimePicker;
// new: директива _vcmUseStdDate - использование TvtDateEdit;
// new: использование TvtDateEdit в качестве предка TvcmDateEdit;
//
// Revision 1.112  2004/01/06 12:40:35  am
// change: выставляем констрейнт combotree после присвоения parent'а
//
// Revision 1.111  2004/01/06 12:32:25  law
// - change: поправлен комментарий.
//
// Revision 1.110  2003/12/30 13:41:53  law
// - bug fix: не переобновляем Action'ы Popup-Menu привязанного к кнопке, когда это меню открыто.
//
// Revision 1.109  2003/12/30 10:03:55  law
// - optimization: при создании второго Mainf-окна не создаем по новой все формы сущностей (CQ OIT5-5628).
//
// Revision 1.108  2003/12/29 14:55:36  mmorozov
// new: собираем события _TvcmEntityForm OnQueryMaximized, OnQueryOpen при MergeToolbarsToContainer = True;
//
// Revision 1.107  2003/12/26 16:51:17  law
// - new behavior: переделана логика обработки BottonCombo - теперь если меню нету, то и стрелки вниз нету.
// - bug fix: иногда при восстановлении из истории портился Caption главного окна.
//
// Revision 1.106  2003/12/26 06:52:29  am
// new: ограничение каждому комбобоксу
//
// Revision 1.105  2003/12/25 12:00:03  mmorozov
// new: кнопка открыть в области докинга;
//
// Revision 1.104  2003/12/25 07:32:15  mmorozov
// - устанавливаем высоту toolbar-а как у Dock97;
//
// Revision 1.103  2003/12/25 06:46:51  mmorozov
// new: TDockPanel - класс создан для того чтобы toolbar-ы в области Dock97 при изменении размеров последнего учитывали находящиеся в нем кнопки;
//
// Revision 1.102  2003/12/24 16:19:53  law
// - new behavior: выставляем свойство AutoWidth.
//
// Revision 1.101  2003/12/24 15:38:59  law
// - new behavior: отключил задержку (CQ OIT5-5524).
//
// Revision 1.100  2003/12/22 14:47:59  am
// new: AutoSize для тулбаров = False
//
// Revision 1.99  2003/12/16 14:18:12  mmorozov
// - интерфейсная настройка toobar-а для TvcmDockDef;
//
// Revision 1.98  2003/12/16 13:01:06  mmorozov
// - поправлен размер TvcmDockDef при отсутствующих toolbar-ах с кнопками "закрыть", "развернуть";
//
// Revision 1.97  2003/12/16 08:41:21  mmorozov
// + иконы на кнопках в области TvcmDockDef;
//
// Revision 1.96  2003/12/15 19:26:40  mmorozov
// - для кнопок в области Dock97 используется _TToolBar;
// - добавлено создание кнопки "развернуть";
// - удален класс TCloseBtn;
//
// Revision 1.95  2003/12/11 17:59:10  law
// - new const: _vcm_opPlainLevel.
// - new behavior: строим меню "отбитое пробелами (как в Гаранте)" начиная с уровня вложенности _vcm_opPlainLevel (CQ OIT5-5467).
//
// Revision 1.94  2003/12/09 17:35:12  law
// - bug fix: из _uses убрана ссылка на ненужный модуль.
//
// Revision 1.93  2003/12/09 16:56:05  law
// - new behavior: присвоение Root'а повесил на _ParamsChanged.
//
// Revision 1.92  2003/12/09 16:28:21  law
// - bug fix: выставляем ShowRoot раньше CuurrentNode.
//
// Revision 1.91  2003/12/09 16:12:47  law
// - new operation param: vcm_opShowRoot.
//
// Revision 1.90  2003/12/09 15:45:56  law
// - bug fix: в OnTest не подавалась корректная CurrentNode.
//
// Revision 1.89  2003/12/09 14:22:59  law
// - new behavior: выставляем CurrentNode в ComboTree.
//
// Revision 1.88  2003/12/09 10:27:54  law
// - change: восстановлен код для запроса дерева для ComboTree, который закомментировал М. Морозов.
//
// Revision 1.87  2003/12/09 06:19:25  mmorozov
// - закоментирована не работающая часть кода в процедуре _SetStringsFromAction;
//
// Revision 1.86  2003/12/08 15:21:13  am
// *** empty log message ***
//
// Revision 1.85  2003/12/08 13:16:05  am
// new: функция установки рута в combotree - vcmSetRoot.
//
// Revision 1.84  2003/12/05 14:57:52  law
// - bug fix: убран странный префикс vcm - ни SetRoot, ни _Il3Node к vcm'му собственно говоря отношения не имеют.
//
// Revision 1.83  2003/12/05 14:48:47  am
// change: для combotree выставление caption не дублируется итемом в Items.
//
// Revision 1.82  2003/12/03 17:42:11  law
// - bug fix: не создаем "псевдо"-строк при подкладывании дерева.
//
// Revision 1.81  2003/12/03 17:14:53  law
// - change: в процессе разборок с ComboTree избавился от дублирующегося кода.
//
// Revision 1.80  2003/12/02 14:53:53  law
// - bug fix: восстановлена функциональность MDI-приложения.
//
// Revision 1.79  2003/12/02 12:10:00  law
// - new behavior: сделано подкладывание дерева в ComboTree.
//
// Revision 1.78  2003/11/30 14:36:43  law
// - new behavior: добавлена генерация констант для операций модуля.
//
// Revision 1.77  2003/11/28 17:05:26  law
// - bug fix: подточил для использования ComboTree.
//
// Revision 1.76  2003/11/28 16:36:18  law
// - new behavior: используем Combo-Tree в VCM.
//
// Revision 1.75  2003/11/27 18:55:57  law
// - new prop: TvcmBaseMenuManager._AppForms - список всех форм приложения.
//
// Revision 1.74  2003/11/27 15:56:22  law
// - new prop: _TvcmEntityForm.OnNeedUpdateStatus.
//
// Revision 1.73  2003/11/27 11:29:12  law
// - bug fix: защищаем TCustomToolbarButton97.Click от уничтожения собственной формы.
//
// Revision 1.72  2003/11/24 16:30:46  law
// - new behavior: Combo-кнопке если нету списка строк, то строим Popup-меню по узлу дерева.
//
// Revision 1.71  2003/11/21 15:34:03  mmorozov
// - если у TvcmDockDef определена кнопка "Закрыть" и нет ни одного Toolbar-а, то при изменении размеров устанавливается константная высота;
//
// Revision 1.70  2003/11/21 13:23:44  mmorozov
// - исправлена ошибка в названии директивы;
//
// Revision 1.69  2003/11/21 13:10:33  mmorozov
// - реализована возможность использовать компонент TElDateTimePicker для vcm операции типа opDate;
//
// Revision 1.68  2003/11/19 11:38:25  law
// - new behavior: регистрируем все сущности и операции в MenuManager'е для дальнейшей централизации редактирования. Само редактирование пока не доделано.
//
// Revision 1.67  2003/11/18 17:59:42  law
// - new behavior: в параметре _vcm_eopNode передаем выбранный узел дерева.
//
// Revision 1.66  2003/11/18 16:40:31  law
// - new behavior: для Root'а не делаем подменю.
// - bug fix: для компонент связанных в Run-time  с сущностями не присваивалось контекстное меню.
//
// Revision 1.65  2003/11/18 15:21:15  law
// - bug fix: не привязываем Action к подменю.
//
// Revision 1.64  2003/11/18 13:40:20  migel
// - bug fix: не учитывалась вложенность нод.
//
// Revision 1.63  2003/11/17 15:27:56  law
// - new behavior: делаем иерархическое меню у кнопки, для которой определены _SubNodes (нажатие пока не работает).
//
// Revision 1.62  2003/11/13 13:49:09  law
// - bug fix: привел тестовый проект в актуальное состояние.
//
// Revision 1.61  2003/11/13 09:17:09  law
// - новый тип операции - vcm_otTyper, то же что и vcm_otEdit, но с непосредственной раакцией на ввод, на не по Esc/Edit.
//
// Revision 1.60  2003/11/12 13:08:28  law
// - new behavior: сделана возможность определять на форме до 4-х областей докинга.
// - new behavior: сделано рекурсивное объединение toolbar'ов child->container->container ...
//
// Revision 1.59  2003/11/05 15:24:08  law
// - new class: TvcmDateEdit.
//
// Revision 1.58  2003/11/05 15:18:09  law
// - new behavior: добавляем в Toolbar операцию типа vcm_otEdit.
//
// Revision 1.57  2003/10/28 09:57:48  law
// - new behavior: пункты основного меню строятся на основе MainMenuItems.
//
// Revision 1.56  2003/10/28 09:07:35  law
// - new prop: TvcmCustomMenuManager.MainMenuItems.
//
// Revision 1.55  2003/10/27 10:46:41  law
// - change: заплатка для Эвереста и Архивариуса.
//
// Revision 1.54  2003/10/22 16:05:52  mmorozov
// - добавлена возможность использования ElToolbar (define _vcmUseElPack);
//
// Revision 1.53  2003/10/17 15:37:34  mmorozov
// - TCloseBtn наследник от TCustomControl;
//
// Revision 1.52  2003/10/16 15:04:43  mmorozov
// no message
//
// Revision 1.51  2003/10/16 12:47:15  mmorozov
// + компонент TCloseSpeedButton который отрисовывает стандартную кнопку закрытия окна;
// + методы в TvcmDockDef (PlaceCloseBtn, Resize, _CreateCloseBtn);
// - в методе TvcmCustomMenuManager._BuildToolbar проверяется являетс я ли форма, для которой создается Toolbar, _TvcmEntityForm и выполняется ли _TvcmEntityForm._CanClose = vcm_ccEnable, если да то в зоне докинга создается кнопка закрытия окна;
//
// Revision 1.50  2003/10/08 11:14:12  law
// - new directive: _vcmUseElCombo.
//
// Revision 1.49  2003/10/03 09:13:59  law
// - bug fix: очищаем PopupMenu в подходящий момент.
//
// Revision 1.48  2003/10/02 17:41:53  law
// - bug fix: убрал очистку меню, т.к. оказалось, что отъехала обработка операций. Будем по новой разбираться.
//
// Revision 1.47  2003/10/02 15:59:14  law
// - new class: _TvcmPopupMenu.
// - bug fix: очищаем Popup-Menu сразу после его вызова.
//
// Revision 1.46  2003/09/05 15:05:01  law
// - new behavior: уменьшен размер поля для ввода даты.
//
// Revision 1.45  2003/09/03 16:00:42  law
// - new operation type: _vcm_otButtonPopup.
//
// Revision 1.44  2003/09/03 07:50:21  law
// - new behavior: для vcm_otButtonCombo в первый параметр OnExecute кладем номер выбранной строки (0 - сама кнопка, 1..N - пункт меню).
//
// Revision 1.43  2003/09/02 17:10:40  law
// - new behavior: для vct_otButtonCombo сделано заполнение выпадающего меню.
//
// Revision 1.42  2003/09/02 16:12:24  law
// - new const: vcm_otButtonCombo.
//
// Revision 1.41  2003/09/01 12:51:16  law
// - new const: vcm_otEditCombo.
// - new behavior: теперь есть возможность разделять редактируемые и нередактируемые выпадающие списки.
//
// Revision 1.40  2003/08/01 11:46:08  law
// - bug fix: не "залипали" кнопки.
//
// Revision 1.39  2003/08/01 09:36:17  law
// - new behavior: при настройке toolbar'ов убраны лишние разделители.
//
// Revision 1.38  2003/07/28 12:27:14  law
// - new behavior: учитывае разделители при настройке Toolbar'ов.
//
// Revision 1.37  2003/07/28 11:42:25  law
// - new behavior: в форму настройки Toolbar'ов выводим список пользовательских типов объектов.
//
// Revision 1.36  2003/07/25 17:51:57  law
// - new behavior: начал получать список UserType'ов.
//
// Revision 1.35  2003/07/25 14:12:26  law
// - new behavior: разрешено пользователю вставлять кнопки без иконок в toolbar.
//
// Revision 1.34  2003/07/25 13:39:24  law
// - new behavior: toolbar'ы обновляются после настройки.
//
// Revision 1.33  2003/07/25 12:11:10  law
// - new behavior: в форму настроек передаем менеджер меню.
//
// Revision 1.32  2003/07/24 16:04:09  law
// - new behavior: набираем список доступных операций.
//
// Revision 1.31  2003/07/24 13:07:15  law
// - new prop: IvcmOperationDef._ExcludeUserTypes.
//
// Revision 1.30  2003/07/24 12:19:02  law
// - new behavior: сделана возможность выводить текст на кнопках (vcm_otTextButton).
//
// Revision 1.29  2003/07/24 11:46:58  law
// - bug fix: били по памяти.
//
// Revision 1.28  2003/07/24 11:35:09  law
// - new prop: _TvcmEntityForm._ToolbarPos.
//
// Revision 1.27  2003/07/23 15:36:31  law
// - new behavior: теперь у toolbar'а вызывается форма настройки (она пока ничего не делает).
//
// Revision 1.26  2003/07/17 14:06:34  law
// - new behavior: при использовании Toolbar 97 восстановлена нормальная логика Docking'а.
//
// Revision 1.25  2003/07/17 12:55:53  law
// - new behavior: избавляемся от дырок между toolbar'ами, при пропадании кнопок.
//
// Revision 1.24  2003/07/17 08:52:38  nikitin75
// _uses ExtCtrls перенес в interface секцию;
//
// Revision 1.23  2003/07/16 18:32:25  law
// - change: вчерне прикрутил Toolbar97 к VCM.
//
// Revision 1.22  2003/07/07 18:02:05  demon
// - bug fix: FormChange дергался уже когда MenuManager был уничтожен - был AV.
//
// Revision 1.21  2003/04/30 12:18:49  law
// - bug fix: объединенные Toolbar'ы не "вдочивались" обратно.
//
// Revision 1.20  2003/04/29 12:00:45  law
// - new prop: _TvcmEntityForm.MergeToolbarsToContainer.
//
// Revision 1.19  2003/04/24 15:47:26  law
// - new behavior: привязал кнопки дочернего окна только к сущностям этого окна, а не к сущностям текущей формы.
//
// Revision 1.18  2003/04/24 14:53:53  law
// - новая сборка dll.
// - изменилися формат вызова eeGetGenerator, eeGetFileGenerator.
//
// Revision 1.17  2003/04/24 14:29:48  law
// - новая сборка dll.
// - изменилися формат вызова eeGetGenerator, eeGetFileGenerator.
//
// Revision 1.16  2003/04/22 19:02:06  law
// - new behavior: отказываемся от MDI форм при включенном флаге _SDI.
//
// Revision 1.15  2003/04/22 18:20:53  law
// - bug fix: оттестировано свойство TvcmMainForm._SDI.
//
// Revision 1.14  2003/04/22 17:33:42  law
// - new prop: TvcmMainForm._SDI.
//
// Revision 1.13  2003/04/22 15:00:30  law
// - bug fix: оттестировал вставку форм в контейнер.
//
// Revision 1.12  2003/04/22 14:03:00  law
// - new behavior: сделана обработка операций, описанных на основной форме.
//
// Revision 1.11  2003/04/09 15:52:34  law
// - new operation type: vcm_otDate.
//
// Revision 1.10  2003/04/09 14:51:33  law
// - new behavior: сделал обработку списка строк у ComboBox'а.
//
// Revision 1.9  2003/04/09 13:08:13  law
// - new behavior: в нулевом приближении сделал обработку операции с типом vcm_otCombo.
//
// Revision 1.8  2003/04/09 08:57:34  law
// - экспериментируем с ComboBox в Toolbar'е.
//
// Revision 1.7  2003/04/08 12:34:46  law
// - new prop: IvcmOperationDef.Options.
// - new prop: TvcmOperationsCollectionItem.Options.
//
// Revision 1.6  2003/04/07 15:10:48  law
// - bug fix: сделано, чтобы компилировалось под Builder'ом.
//
// Revision 1.5  2003/04/07 14:16:15  law
// - new behavior: не показываем Toolbar'ы без кнопок.
//
// Revision 1.4  2003/04/07 14:05:57  law
// - new behavior: сделана возможность иметь Toolbar'ы в дочерних окнах.
//
// Revision 1.3  2003/04/04 15:37:59  law
// - new behavior: сделаны Toolbar'ы.
//
// Revision 1.2  2003/04/04 13:51:04  law
// - new prop: TvcmMenuManger.MenuOptions.
//
// Revision 1.1  2003/04/01 12:54:44  law
// - переименовываем MVC в VCM.
//
// Revision 1.9  2003/03/26 14:58:05  law
// - change: добавляем ActionList по умолчанию для всей библиотеки.
//
// Revision 1.8  2003/03/20 12:30:01  law
// - new behavior: сделана обработка контекстных операций.
//
// Revision 1.7  2003/03/19 17:11:15  law
// - new behavior: операции контекстного меню привязываем именно к сущности того управляющего элемента, над которым меню вызвали.
//
// Revision 1.6  2003/03/19 16:31:51  law
// - new behavior: сделана более интеллектуальная сборка контекстного меню.
//
// Revision 1.5  2003/03/19 12:46:43  law
// - new behavior: более интеллектуальное поведение TvcmCustomMemoryManager.
//
// Revision 1.4  2003/03/18 13:40:41  law
// - new property: TvcmCustomMenuManager.NeedContextEntitiesMenu.
//
// Revision 1.3  2003/03/18 13:31:56  law
// - new behavior: теперь MainForm не надо ставить FormStyle в fsMDIForm.
//
// Revision 1.2  2003/03/17 12:24:50  law
// - new behavior: в нулевом приближении сделана автоматическая сборка контекстного меню.
//
// Revision 1.1  2003/03/14 14:55:46  law
// - new units: vcmBaseMenuManager, vcmMenuManager.
//

{ Объявления:
    _vcmUseElPack  - использовать компоненты ElPack;
    _vcmUseTB97    - использовать компоненты Toolbar97;
    _vcmUseStd     - использовать стандартные компоненты Delphi;
    _vcmUseVTDate  - использовать календарь TvtDateEdit;
    _vcmUseStdDate - использовать календарь TDateTimePicker; }

{$Include vcmDefine.inc }

interface

uses
  vcmToolbar,
  Windows,
  Classes,
  Menus,
  ActnList,
  Controls,
  Forms,
  ComCtrls,
  ExtCtrls,
  Messages,
  ImgList,
  vcmUtils,

  l3Interfaces,
  l3SimpleObjectRefList,
  l3Types,
  l3Base,

  afwInterfaces,
  IafwMenuUnlockedPostBuildPtrList,

  vtDateEdit,

  tb97,
  tb97ctls,
  tb97tlbr,
  tb97vt,
  TB97ExtInterfaces,

  evButton,

  vcmExternalInterfaces,
  vcmUserControls,
  vcmInterfaces,
  vcmBase,

  vcmBaseMenuManager,
  vcmEntityForm,
  vcmMenus,

  vcmAction,
  vcmBaseCollectionItem,
  vcmMenuItemsCollection,

  vcmLocalInterfaces,
  vcmForm,
  vcmControl,

  vcmToolbarMenuRes,
  vcmPopupMenuPrim,
  vcmEntitiesDefIteratorForContextMenu
  ;

type
  TvcmDockDef = vcmToolbar.TvcmDockDef;
  TvcmDockPanel = vcmToolbar.TvcmDockPanel;
  TvcmDockPanelButton = vcmToolbar.TvcmDockPanelButton;
  TvcmToolbarDockPanel = vcmToolbar.TvcmToolbarDockPanel;
  TvcmToolbar = vcmToolbar.TvcmToolbar;
  TvcmToolbarDef = vcmToolbar.TvcmToolbarDef;
  TvcmSeparatorDef = vcmToolbar.TvcmSeparatorDef;

  TvcmDockContainer = class(TPanel)
  {* Панель используемая для размещения главной панели инструментов формы. }
  public
  // public
    constructor Create(AOwner : TComponent);
      override;
      {-}
  end;//TvcmDockContainer

  {$IfDef vcmUseSettings}
  TvcmButtonDef = record
   rPos       : Cardinal;
   rEn        : IvcmOperationalIdentifiedUserFriendlyControl;
   rOp        : IvcmOperationDef;
   rOptions   : TvcmOperationOptions;
   rNeedSep   : Boolean;
   rIconText  : Boolean;
   rLoaded    : Boolean;
  end;//TvcmButtonDef
  TvcmButtonDefs = array of TvcmButtonDef;
  {$EndIf vcmUseSettings}
  
  TvcmToolButtonDefActionLink = class(TevCustomButtonActionLink, IvcmActionLink)
    protected
    // interface methods
      // IvcmActionLink
      procedure ParamsChanged(const anAction: IvcmAction);
        {-}
      procedure ParamsChanging(const anAction: IvcmAction);
        {-}
    public
      destructor Destroy;
        override;
        {-}
  end;//TvcmToolButtonDefActionLink

  TvcmToolButtonDef = class(TevButton)
    protected
    // internal methods
      function  HackCheck: Boolean;
        override;
        {-}
      function  NeedAutoDown: Boolean;
        override;
        {-}
      function  AutoAllUp: Boolean;
        override;
        {-}
      function GetActionLinkClass: TControlActionLinkClass;
        override;
        {-}
    public
      function isIconText: Boolean;
        {-}
  end;//TvcmToolButtonDef

  TvcmMenuOption = (vcm_moEntitiesInMainMenu, vcm_moEntitiesInTopMainMenu,
                    vcm_moEntitiesInChildMenu, vcm_moEntitesInContextMenu);
    {-}
  TvcmMenuOptions = set of TvcmMenuOption;
    {-}
  TvcmToolbarOption = (vcm_toModulesInMainToolbar, vcm_toEntitiesInMainToolbar,
                       vcm_toEntitiesInChildToolbar);
    {-}
  TvcmToolbarOptions = set of TvcmToolbarOption;
    {-}

const
  vcm_DefaultMenuOptions = [vcm_moEntitiesInMainMenu, vcm_moEntitiesInTopMainMenu];
  vcm_DefaultToolbarOptions = [vcm_toModulesInMainToolbar, vcm_toEntitiesInMainToolbar];

type
  TvcmIconTextType = (vcm_itDefault, vcm_itIcon, vcm_itIconText);
  TvcmGlyphColordepth = (vcm_gcAuto, vcm_gc16, vcm_gc256, vcm_gcTrueColor);

  TvcmPopupMenu = class(TvcmPopupMenuPrim)
    private
    // private fields
      f_InPopup : Boolean;
    public
    // public methods
      procedure Popup(X, Y: Integer);
        override;
        {-}
     function IsShortCut(var Message: TWMKey): Boolean;
       override;
        {-}
     procedure ClearInPopup;
       {-}
  end;//TvcmPopupMenu

  TvcmButtonPopupMenu = class(TvcmPopupMenuPrim)
  end;//TvcmButtonPopupMenu

  TvcmCustomMenuManager = class(TvcmBaseMenuManager)
    private
    // internal fields
      f_MenuOptions                : TvcmMenuOptions;
      f_ToolbarOptions             : TvcmToolbarOptions;
      f_Popup                      : TvcmPopupMenu;
      f_PopupForm                  : TvcmEntityForm;
      f_Actions                    : TCustomActionList;
      f_FocusControl               : TWinControl;
      f_InEnter                    : Boolean;
      f_WasDrop                    : Boolean;
      f_UserTypes                  : TvcmInterfaceList;
      f_MainMenuItems              : TvcmMenuItemsCollection;
      f_TickCount                  : Cardinal;
      f_UserTypesLoaded            : Boolean;
      f_IsUnlockExecute            : Boolean;
      f_OneToolbarPerForm          : Boolean;
      f_SaveDockList               : Tl3SimpleObjectRefList;
      f_SaveLockCounter            : TvcmLongintList;
      f_LockCounter                : Integer;
      f_UnlockInProgress           : Integer;
      f_FastenToolbars             : Integer;
      f_GlyphColordepth            : TvcmGlyphColordepth;
      f_SmallToolbarSize           : Integer;
      f_MaxControlToolbarSize      : Integer;
      f_DiffSize                   : Integer; // К убиению
        {* - разница между размером компонента с максимальной высотой и
             toolbar-ом. }
      f_ButtonHeight               : Integer;
      f_OnGlyphSizeChanged         : TNotifyEvent;
      f_OnGlyphColordepthChanged   : TNotifyEvent;
      f_GlyphSize                  : TvcmGlyphSize;
      f_DockButtonsImageList       : TCustomImageList;
      f_BtnCloseImageIndex         : TImageIndex;
      f_BtnOpenImageIndex          : TImageIndex;
      f_BtnOpenNewWindowImageIndex : TImageIndex;
      f_LockList: TIafwMenuUnlockedPostBuildPtrList;
      {$IfDef vcmUseSettings}
      f_MainToolbarDefs   : array [TvcmEffectiveToolBarPos] of record
       rVisibleLoaded : Boolean;
       rVisible       : Boolean;
       rButtons       : TvcmButtonDefs;
       rUserType      : IvcmUserTypeDef;
       rToolbarName   : String;
      end;
      {$EndIf vcmUseSettings}
    private
    // private methods
      procedure OverridePopupMenu(const aForm: TCustomForm);
        {-}
    protected
    // property methods
      procedure pm_SetDockButtonsImageList(const Value : TCustomImageList);
        {-}
      procedure pm_SetActions(anActions: TCustomActionList);
        {-}
      procedure pm_SetMainMenuItems(aValue: TvcmMenuItemsCollection);
        {-}
      procedure pm_SetGlyphSize(const Value: TvcmGlyphSize);
        {-}
      procedure pm_SetGlyphColordepth(const Value: TvcmGlyphColordepth);
        {-}
    protected
    // internal methods
      function ToolbarButtonSize(aToolbarButton : TCustomToolbarButton97;
                                 var aSize      : Integer) : Boolean;
        overload;
        {* - по параметрам кнопки определяет её высоту. }
      procedure ToolbarButtonSize(aToolbarButton : TCustomToolbarButton97);
        overload;
        {* - устанавливает ширину и высоту кнопки. }
      procedure ToolbarSize(aToolbar  : TCustomToolbar97;
                            var aSize : Integer);
        {* - определяет размер toolbar-а. }
      procedure RefocusEntity;
        {-}
      procedure RestoreControlText(Sender: TObject);
        {-}
      procedure ChangeEntityText(Sender: TObject);
        {-}
      procedure ChangeTyperText(Sender: TObject);
        {-}
      procedure ControlKeyDown(Sender  : TObject;
                               var Key : Word;
                               Shift   : TShiftState);
        {-}                     
      procedure ControlEnter(Sender: TObject);
        {-}
      procedure ControlExit(Sender: TObject);
        {-}
      procedure ControlDown(Sender: TObject);
        {-}
      procedure DateDown(Sender: TObject);
        {-}
      procedure ComboDown(Sender: TObject);
        {-}
      procedure ControlSelect(Sender: TObject);
        {-}
      procedure FormChange(Sender: TObject);
        {-}
      procedure DoPopup(Sender: TObject);
        {-}
      function  CheckPopup(const anEntityDef: IvcmEntityDef): IvcmEntity;
        {-}
      function  GetToolbarName(aForm      : TvcmEntityForm;
                               const aDef : IvcmOperationalIdentifiedUserFriendlyControl;
                               anIndex    : Integer): String;
        {-}
      {$IfNDef DesignTimeLibrary}
      function  BuildToolbar(aForm      : TvcmEntityForm;
                             const aDef : IvcmOperationalIdentifiedUserFriendlyControl;
                             anIndex    : Integer
                             // - порядковый номер Toolbar'а (для огранизации нескольких Toolbar'ов в одном доке)
                             ): TvcmToolbarDef;
        overload;
        {-}
      {$EndIf DesignTimeLibrary}  
      procedure FillToolbar(aForm              : TvcmEntityForm;
                            var  aToolBar      : TvcmToolbarDef;
                            const aHolder      : IvcmOperationalIdentifiedUserFriendlyControl;
                            const anOperations : IvcmOperationsDefIterator;
                            const anOptions    : TvcmOperationOptions);
        {-}
      procedure CheckToolbar(var  aToolBar      : TvcmToolbarDef);
        {-}
      {$IfNDef DesignTimeLibrary}
      function  MakeToolbar(aForm           : TvcmEntityForm;
                            const aHolder   : IvcmOperationalIdentifiedUserFriendlyControl;
                            const anOptions : TvcmOperationOptions;
                            anExcludePoses  : TvcmEffectiveToolBarPoses): Boolean;
        {-}
      {$EndIf DesignTimeLibrary}
      {$IfNDef DesignTimeLibrary}
      procedure BuildEntitiesToolbars(aForm            : TvcmEntityForm;
                                      const anEntities : IvcmEntitiesDefIterator;
                                      const anOptions  : TvcmOperationOptions;
                                      anExcludePoses   : TvcmEffectiveToolBarPoses);
        {-}
      {$EndIf DesignTimeLibrary}  
      {$IfDef vcmUseSettings}
      function  LoadButtonsFromSettings(const aUserType : IvcmUserTypeDef;
                                        const aToolbar  : String;
                                        AddUnsavedButton: Boolean;
                                        var theButton   : TvcmButtonDef;
                                        var theButtons  : TvcmButtonDefs): Boolean;
        {-}
      procedure MakeToolbarFromSettings(aForm                  : TvcmEntityForm;
                                        const aToolbarName     : String;
                                        aPos                   : TvcmEffectiveToolBarPos;
                                        const anOptions        : TvcmOperationOptions;
                                        const theButtons       : TvcmButtonDefs);
        {-}
      procedure MakeMainToolbarFromSettings(aForm : TvcmEntityForm);
        {-}
      {$EndIf vcmUseSettings}
      {$IfNDef DesignTimeLibrary}
      procedure BuildFormToolbars(aForm            : TvcmEntityForm;
                                  const anOptions  : TvcmOperationOptions);
        {-}
      {$EndIf DesignTimeLibrary}  
      {$IfNDef DesignTimeLibrary}
      procedure BuildMainToolbars(aForm            : TvcmEntityForm;
                                  const aModuleDef : IvcmModuleDef);
        {* - создает Toolbar'ы основной формы. }
      {$EndIf DesignTimeLibrary}  
      procedure CheckUserTypes;
        {-}
      procedure BuildUserTypes(const aModuleDef : IvcmModuleDef);
        {-}
      procedure ToolbarsGetSiteInfo(Sender      : TObject;
                                    DockClient  : TCustomToolWindow97;
                                    var CanDock : Boolean);
        {-}
      procedure Cleanup;
        override;
        {-}
    public
    // public methods
      constructor Create(anOwner: TComponent);
        override;
        {-}
    function UnlockInProgress: Boolean; override;
      procedure BackupOpStatus;
        override;
        {-}
      procedure RestoreOpStatus;
        override;
        {-}
      procedure FastenToolbars;
        override;
        {-}
      function GetFastenMode: Boolean;
        override;
        {-}
      procedure BeginOp;
        override;
        {-}
      procedure EndOp;
        override;
        {-}
      function GetOpLock: Boolean;
        override;
        {-}
      //function MergedToMainForm(aForm: TvcmEntityForm): Boolean;
        //override;
        {-}
      procedure PostBuild(aForm        : TvcmEntityForm;
                          aFollowDocks : Boolean);
        override;
        {-}
      {$IfNDef DesignTimeLibrary}
      procedure RegisterModuleInMenu(aForm            : TvcmEntityForm;
                                     const aModuleDef : IvcmModuleDef);
        override;
        {* - регистрирует модуль в меню, toolbar'ах, etc. }
      {$EndIf DesignTimeLibrary}
      {$IfNDef DesignTimeLibrary}
      procedure MainCreated(aForm: TvcmEntityForm);
        override;
        {-}
      {$EndIf DesignTimeLibrary}  
      procedure RegisterMainInMenu(aForm: TvcmEntityForm);
        override;
        {* - регистрирует основную форму в меню, toolbar'ах, etc. }
      {$IfNDef DesignTimeLibrary}
      procedure RegisterChildInMenu(aForm: TvcmEntityForm);
        override;
        {* - регистрирует дочернюю форму в меню, toolbar'ах, etc. Для перекрытия в потомках. }
      {$EndIf DesignTimeLibrary}  
      function  BuildButton(aForm             : TvcmEntityForm;
                            aToolBar          : TvcmToolbarDef;
                            const aModuleDef  : IvcmModuleDef;
                            const anEntityDef : IvcmEntityDef;
                            const anOp        : IvcmOperationDef;
                            const anOptions   : TvcmOperationOptions;
                            const anIconText  : TvcmIconTextType = vcm_itDefault): TControl;
        overload;
        {-}
      function  BuildButton(aForm             : TvcmEntityForm;
                            aToolBar          : TvcmToolbarDef;
                            const aModuleDef  : IvcmModuleDef;
                            const anEntityDef : IvcmEntityDef;
                            const anOp        : IvcmOperationDef;
                            const anOpOptions : TvcmOperationOptions;
                            const anOptions   : TvcmOperationOptions;
                            const anIconText  : TvcmIconTextType = vcm_itDefault): TControl;
        overload;
        {-}
      function  BuildButton(aForm             : TvcmEntityForm;
                            aToolBar          : TvcmToolbarDef;
                            const aHolder     : IvcmOperationalIdentifiedUserFriendlyControl;
                            const anOp        : IvcmOperationDef;
                            const anOpOptions : TvcmOperationOptions;
                            const anOptions   : TvcmOperationOptions;
                            const anIconText  : TvcmIconTextType = vcm_itDefault): TControl;
        overload;
        {-}
      function  BuildButton(aForm             : TvcmEntityForm;
                            aToolBar          : TvcmToolbarDef;
                            const aHolder     : IvcmOperationalIdentifiedUserFriendlyControl;
                            const anOp        : IvcmOperationDef;
                            const anOptions   : TvcmOperationOptions;
                            const anIconText  : TvcmIconTextType = vcm_itDefault): TControl;
        overload;
        {-}
      function BuildAction(const aModuleDef : IvcmModuleDef;
                           const anOpDef    : IvcmOperationDef): TCustomAction;
        overload;
        {-}
      function BuildAction(const anOwner     : TComponent;
                           const anEntity    : IvcmEntity;
                           const anEntityDef : IvcmEntityDef;
                           const anOpDef     : IvcmOperationDef;
                                 anOptions   : TvcmOperationOptions): TCustomAction;
        overload;
        {-}
      function  BuildSeparator(aToolBar: TvcmToolbarDef): TControl;
        {-}
      function  GetPopupMenu: TPopupMenu;
        override;
        {-}
      function  UserTypeByCaption(const aCaption: AnsiString;
                                      aFormClass: TClass = nil): IvcmUserTypeDef;
        {-}
      function  GetOneToolbarPerFormName(aForm   : TvcmEntityForm;
                                         aPos    : TvcmEffectiveToolBarPos;
                                         anIndex : Integer): String;
        {-}
      procedure ReloadToolbars(const aForm  : IvcmEntityForm);
        override;
        {-}
      {$IfNDef DesignTimeLibrary}
      function  BuildToolbar(aForm          : TvcmEntityForm;
                             const aName    : String;
                             const aCaption : IvcmCString;
                             aPos           : TvcmEffectiveToolBarPos): TvcmToolbarDef;
        overload;
        {-}
      function  BuildToolbar(aForm : TvcmEntityForm;
                             aPos  : TvcmEffectiveToolBarPos): TvcmToolbarDef;
        overload;
        {-}
      {$EndIf DesignTimeLibrary}  
      procedure CleanupSaveDockList(anItem: TvcmDockDef);
        {-}
      function GetDockParent(aForm : TCustomForm): TWinControl;
        {-}
      procedure LoadGlyphSize(aDefault : Boolean = False);
        {-}
      procedure LoadGlyphColordepth(aDefault : Boolean = False);
        {-}
      procedure UnlockDocks;
        {-}
      procedure LockDocks;
        {-}
      procedure StoreGlyphSize;
        {-}
      procedure RestoreGlyphSize;
        {-}
      procedure StoreGlyphColordepth;
        {-}
      procedure RestoreGlyphColordepth;
        {-}
      procedure InitToolbarMetrics(const aForm: TCustomForm);
        {* - определить метрики панели инструментов. Компоненты, которые могут
             быть помещены в панель, могут иметь разные размеры, чтобы высота
             панелей была одинаковой, считаем максимальную высоту и используем
             её для всех панелей. }
      function  ObjectByType(anObject           : TvcmObject;
                             const anObjectName : String;
                             const aSubName     : String = '';
                             ForceCreate        : Boolean = False): TvcmBaseCollectionItem;
        override;
        {-}
      procedure AddControlForUnlockPostBuild(const aCOntrol: IafwMenuUnlockedPostBuild);
        override;
        {-}
      procedure ListenerControlDestroying(const aCOntrol: IafwMenuUnlockedPostBuild);
        override;
        {-}
      function FillPopupMenu(aPopupPoint : TPoint;
                             aPopupComponent : TComponent): TvcmPopupMenu;
        {-}
    public
    // public properties
      property DockButtonsImageList : TCustomImageList
        read f_DockButtonsImageList
        write pm_SetDockButtonsImageList;
        {* - imagelist используемый для кнопок области dock-а. }
      property BtnCloseImageIndex : TImageIndex
        read f_BtnCloseImageIndex
        write f_BtnCloseImageIndex
        default -1;
        {-}
      property BtnOpenImageIndex : TImageIndex
        read f_BtnOpenImageIndex
        write f_BtnOpenImageIndex
        default -1;
        {-}
      property BtnOpenNewWindowImageIndex : TImageIndex
        read f_BtnOpenNewWindowImageIndex
        write f_BtnOpenNewWindowImageIndex
        default -1;
        {-}
      property Actions: TCustomActionList
        read f_Actions
        write pm_SetActions;
        {-}
      property GlyphSize: TvcmGlyphSize
        read f_GlyphSize
        write pm_SetGlyphSize
        default vcm_gs16x16;
        {-}
      property GlyphColordepth: TvcmGlyphColordepth
        read f_GlyphColordepth
        write pm_SetGlyphColordepth
        default vcm_gcAuto;
        {-}
      property MainMenuItems: TvcmMenuItemsCollection
        read f_MainMenuItems
        write pm_SetMainMenuItems;
        {-}
      property MenuOptions: TvcmMenuOptions
        read f_MenuOptions
        write f_MenuOptions
        default vcm_DefaultMenuOptions;
        {-}
      property ToolbarOptions: TvcmToolbarOptions
        read f_ToolbarOptions
        write f_ToolbarOptions
        default vcm_DefaultToolbarOptions;
        {-}
      property UserTypes: TvcmInterfaceList
        read f_UserTypes;
        {-}
      property SmallToolbarSize : Integer
        read f_SmallToolbarSize;
        {* - размер toolbar-а в котором находятся кнопки с маленькими иконками,
             компонентами TvcmEdit и TvcmDateEdit. }
      property MaxControlToolbarSize : Integer
        read f_MaxControlToolbarSize;
        {* - максимальная высота компонента находящегося в toolbar-е }
      property OneToolbarPerForm: Boolean
        read f_OneToolbarPerForm
        write f_OneToolbarPerForm
        default true;
        {-}
      property OnGlyphSizeChanged: TNotifyEvent
        read f_OnGlyphSizeChanged
        write f_OnGlyphSizeChanged;
        {-}
      property OnGlyphColordepthChanged: TNotifyEvent
        read f_OnGlyphColordepthChanged
        write f_OnGlyphColordepthChanged;
        {-}
  end;//TvcmCustomMenuManager

  TvcmMenuManager = class(TvcmCustomMenuManager)
  {-}
    published
    // published properties
      property Strings;
        {-}
      property DockButtonsImageList;
        {-}
      property BtnCloseImageIndex;
        {-}
      property BtnOpenImageIndex;
        {-}
      property BtnOpenNewWindowImageIndex;
        {-}
      property HistoryZones;
        {-}
      property SaveFormZones;
        {-}
      property Actions;
        {-}
      property SmallImages;
        {-}
      property LargeImages;
        {-}
      property MainMenuItems;
        {-}
      property MenuOptions;
        {-}
      property ToolbarOptions;
        {-}
      property Modules;
        {-}
      property Entities;
        {-}
      //property AppForms;
        {-}
      //property FormSetFactories;
        {-}
      property Messages;
        {-}
      property OneToolbarPerForm;
        {-}
      property OnInitCommands;
        {-}
      property OnGlyphSizeChanged;
        {-}
      property OnGlyphColordepthChanged;
        {-}
      property OnOperationExecuteNotify;
        {-}
  end;//TvcmMenuManager

{$R *.res}

implementation

uses
  vcmToolbarUtils,
  SysUtils,
  TypInfo,
  StdCtrls,
  Math,
  {$IfDef XE}
  VCL.ToolWin,
  System.Actions,
  {$Else}
  ToolWin,
  {$EndIf}
  Graphics,

  l3String,
  {$IfDef vcmNeedL3}
  l3TreeInterfaces,
  l3InternalInterfaces,
  l3ScreenIC,
  {$EndIf vcmNeedL3}
  afwFacade,
  {$IfDef Nemesis}
  l3Defaults,
  afwDrawing,
  {$EndIf}

  //l3String,
  ctTypes,
  FakeBox,

  OvcConst,

  vcmMessages,
  vcmMainForm,
  vcmModuleAction,
  vcmEntityAction,
  vcmOperationAction,
  vcmStyle
  {$IfNDef DesignTimeLibrary}
  ,
  vcmFormHandler
  {$EndIf DesignTimeLibrary}

  ,
  vcmMenuItemsCollectionItem,
  vcmMainMenuAction,
  vcmWinControlActionLink,

  {$IfDef vcmUseSettings}
  vcmSettings,
  {$EndIf vcmUseSettings}

  vcmInternalConst,
  vcmMenuManagerRes

  {$IfNDef DesignTimeLibrary}
  ,
  tfwClassRef
  {$EndIf  DesignTimeLibrary}

  {$If (not Defined(nsTest) OR Defined(InsiderTest)) AND not Defined(nsTool) AND Defined(Nemesis) AND not Defined(NewGen)}
  ,
  nscTasksPanelView
  {$IfEnd}
  ;

const
  c_vcmCloseBmpName        = 'CLOSEBTN_DOCK97';
  c_vcmMaximizedBmpName    = 'MAXIMIZEDBTN_DOCK97';
  c_vcmOpenBmpName         = 'OPENBTN_DOCK97';
  c_vcmCloseImageIndex     = 0;
  c_vcmMaximizedImageIndex = 1;
  c_vcmOpenImageIndex      = 2;
  c_vcmDockContainerName   = 'vcmDockContainer';

  c_GlyphSizeMap: array [TvcmGlyphSize] of Cardinal = (
   2, // vcm_gsAutomatic,
   0, // vcm_gs16x16,
   3, // vcm_gs24x24,
   1 // vcm_gs32x32
  );

{ TvcmDockContainer }

constructor TvcmDockContainer.Create(AOwner : TComponent);
//override;
begin
 inherited Create(AOwner);
 Assert(AOwner.FindComponent(c_vcmDockContainerName) = nil,
  Format('В ''%s'' уже есть компонент с именем ''%s'';', [AOwner.Name,
  c_vcmDockContainerName]));
 Name := c_vcmDockContainerName;
 Caption := '';
 BevelInner := bvNone;
 BevelOuter := bvNone;
end;

// start internal ComboBox classes

type
  TvcmFakeBox = class(TFakeBox, ITB97Ctrl)
  {* - общая функциональность необходимая vcm при использовании TFakeBox. }
  private
  // private fields ( ITB97Ctrl )
    f_MinWidth   : Integer;
  private
  // private methods ( ITB97Ctrl )
    function  pm_GetFullWidth : Integer;
      {-}
    function  pm_GetIsSizeable : Boolean;
      {-}
    function  pm_GetMinWidth : Integer;
      {-}
    procedure DoFitToWidth(aWidth: Integer);
      {-}
    procedure DoUnFitToWidth(aWidth: Integer);
      {-}
    procedure Expand;
      {-}
  public
  // public methods
    constructor Create(AOwner : TComponent);
      override;
      {-}
  end;//TvcmFakeBox

{ TvcmFakeBox }

function TvcmFakeBox.pm_GetFullWidth : Integer;
  {-}
begin
 Result := FullWidth;
end;

function TvcmFakeBox.pm_GetIsSizeable : Boolean;
  {-}
begin
 Result := True;
end;

function TvcmFakeBox.pm_GetMinWidth : Integer;
  {-}
var
 l_CN : Il3InfoCanvas;
begin
 if f_MinWidth < 0 then
 begin
  l_CN := l3CrtIC;
  l_CN.Font.AssignFont(Font);
  f_MinWidth := ButtonWidth + l_CN.LP2DP(l_CN.TextExtent(vcmWStr('WWW'))).X;
 end;
 Result := f_MinWidth;
end;

procedure TvcmFakeBox.DoFitToWidth(aWidth: Integer);
  {-}
begin
 Width := aWidth;
end;

procedure TvcmFakeBox.DoUnFitToWidth(aWidth: Integer);
  {-}
begin
 Width := aWidth;
end;

procedure TvcmFakeBox.Expand;
  {-}
begin
 Width := pm_GetFullWidth;
end;

constructor TvcmFakeBox.Create(AOwner : TComponent);
// override;
{-}
begin
 inherited;
 f_MinWidth := -1;
 SmartOnResize:=false;
 SetToBeginOnTreeSelect := True;
end;

type
  TvcmComboBox = class;

  TvcmComboBoxActionLink = class(TvcmWinControlActionLink)
    protected
    // internal methods
      procedure SetCaption(const Value: string);
        override;
        {-}
      procedure ParamsChanged(const anAction: IvcmAction);
        override;
        {-}
      procedure ParamsChanging(const anAction: IvcmAction);
        override;
        {-}
  end;//TvcmComboBoxActionLink

  TvcmComboBox = class(TvcmFakeBox)

    private
     f_InUpdateCation: Boolean;
    protected
    // internal methods
      procedure ActionChange(Sender: TObject; CheckDefaults: Boolean);
        override;
        {-}
      function GetActionLinkClass: TControlActionLinkClass;
        override;
        {-}
      procedure DropDown;
        override;
        {-}
      procedure SetCaptionFromAction(anAction       : TvcmOperationAction;
                                     anUpdateIndex  : Boolean);
        {-}
      function SetStringsFromAction(const anAction: IvcmAction): Boolean;
        {-}
      procedure ActionExecuteHandler;
        override;
        {-}
      procedure LocalUpdateAction;
        override;
        {-}
      procedure CMTBMouseQuery(var Msg: TMessage);
        message CM_TBMOUSEQUERY;
        {-}

      procedure CMTBCheckControl(var Msg: TMessage);
        message CM_TBCHECKCONTROL;
        {-}
    public
    // public methods
      constructor Create(anOwner: TComponent);
        override;
        {-}
  end;//TvcmComboBox

// start class TvcmComboBoxActionLink

procedure TvcmComboBoxActionLink.SetCaption(const Value: string);
  //override;
  {-}
begin
 inherited;
 if (FClient Is TvcmComboBox) AND (Action Is TvcmOperationAction) then
  TvcmComboBox(FClient).SetCaptionFromAction(TvcmOperationAction(Action), true);
end;

procedure TvcmComboBoxActionLink.ParamsChanging(const anAction: IvcmAction);
  //override;
  {-}
begin
 inherited;
 if (FClient Is TvcmComboBox) then
 begin
  if (anAction.SubNodes <> nil) then
  begin
   with anAction.SubNodes do
   begin
    Current := TvcmComboBox(FClient).CurrentNode;
    ShowRoot := TvcmComboBox(FClient).ShowRoot;
   end;//anAction.SubNodes
  end;//anAction.SubNodes <> nil
 end;//FClient Is TvcmComboBox
end;

procedure TvcmComboBoxActionLink.ParamsChanged(const anAction: IvcmAction);
  //override;
  {-}
begin
 inherited;
 if (FClient Is TvcmComboBox) then
 begin
  with TvcmComboBox(FClient) do
  begin
   if (anAction.SubNodes <> nil) then
    ShowRoot := anAction.SubNodes.ShowRoot;
   SetStringsFromAction(anAction);
   {$IfNDef DesignTimeLibrary}
   if (anAction.SubNodes <> nil) then
    vcmSetCurrent(anAction.SubNodes.Current);
   {$EndIf  DesignTimeLibrary} 
   Hint := vcmStr(anAction.Hint);
  end;//with TvcmComboBox(FClient)
 end;//FClient Is TvcmComboBox
end;

// start class TvcmComboBox

constructor TvcmComboBox.Create(anOwner: TComponent);
  //override;
  {-}
begin
 inherited;
 AutoWidth := awCurrent;
end;

procedure TvcmComboBox.ActionChange(Sender: TObject; CheckDefaults: Boolean);
  //override;
  {-}
begin
 if (Sender Is TvcmOperationAction) then
  SetCaptionFromAction(TvcmOperationAction(Sender), False);
 inherited;
end;

function TvcmComboBox.GetActionLinkClass: TControlActionLinkClass;
  //override;
  {-}
begin
 Result := TvcmComboBoxActionLink;
end;

procedure TvcmComboBox.DropDown;
  //override;
  {-}
var
 l_Action: IvcmAction;
begin
 if Supports(Action, IvcmAction, l_Action) then
 try
  SetStringsFromAction(l_Action);
  inherited;
 finally
  l_Action := nil;
 end//try..finally
 else
  inherited;
end;

function TvcmComboBox.SetStringsFromAction(const anAction: IvcmAction): Boolean;
  {-}
var
 l_Strings : IvcmStrings;
begin
 Result := False;
 l_Strings := anAction.SubItems;
 if (l_Strings = nil) OR (l_Strings.Count = 0) then
 begin
  Result := vcmSetRoot(anAction.SubNodes);
  if (anAction.SubNodes = nil) or (anAction.SubNodes.Count = 0) then
   if anAction.IsSelectedStringChanged then
   //if not l3Same(Text, anAction.SelectedString) then
    Text := anAction.SelectedString;
 end//l_Strings = nil
 else
 begin
  Result := true;
  if (Action Is TvcmOperationAction) AND
   (TvcmOperationAction(Action).OpDef.OperationType = vcm_otCombo) then
  begin
   Items.Assign(l_Strings.Items);
   if not vcmIsNil(anAction.SelectedString) then
    ItemIndex := Items.IndexOf(anAction.SelectedString);
  end//anAction Is TvcmOperationAction
  else
  begin
   Items.Assign(l_Strings.Items);
   if anAction.IsSelectedStringChanged then
   begin
    if not l3Same(Text, anAction.SelectedString) then
    begin
     Text := anAction.SelectedString;
     //AdjustWidth;
     //// ^ http://mdp.garant.ru/pages/viewpage.action?pageId=100958843
     // КОСТЫЛЬ ПЕРЕЕХАЛ В TctButtonEdit.pm_SetText из-за K278854646
    end;//not l3Same(Text, anAction.SelectedString)
   end;//not vcmSame(f_SelectedString, anAction.SelectedString)
  end;//anAction Is TvcmOperationAction
 end;//l_Strings = nil..
end;

procedure TvcmComboBox.SetCaptionFromAction(anAction       : TvcmOperationAction;
                                            anUpdateIndex  : Boolean);
  {-}
var
 l_Action: IvcmAction;
begin
 if not f_InUpdateCation and (anAction.OpDef.OperationType = vcm_otCombo) then
 begin
  f_InUpdateCation := True;
  try
   if Supports(anAction, IvcmAction, l_Action) then
   try
    if not SetStringsFromAction(anAction) then
    begin
(*     {$IfNDef vcmUseComboTree}
     Items.Clear;
     Items.Add(vcmStr(l_Action.SelectedString));
     if anUpdateIndex then
      ItemIndex := Items.IndexOf(vcmStr(l_Action.SelectedString));
     {$EndIf vcmUseComboTree}*)
    end;//not SetStringsFromAction(anAction)
   finally
    l_Action := nil;
   end;//try..finally
  finally
   f_InUpdateCation := False;
  end;//try..finally
 end;//not f_InUpdateCation and (anAction.OpDef.OperationType = vcm_otCombo)
end;//SetCaptionFromAction

procedure TvcmComboBox.ActionExecuteHandler;
var
 l_LockCount : Integer;
 l_Action    : IvcmAction;

 procedure lp_SaveLock;
 begin
  l_LockCount:=0;
  while l_Action.IsExecuteLocked do
  begin
   l_Action.UnlockExecute;
   inc(l_LockCount);
  end;//while l_Action.IsExecuteLocked do
 end;//lp_SaveLock

 procedure lp_RestoreLock;
 begin
  while l_LockCount > 0 do
  begin
   l_Action.LockExecute;
   dec(l_LockCount);
  end;//while l_LockCount > 0 do
 end;//lp_RestoreLock

begin
 if Supports(Action, IvcmAction, l_Action) then
 try
  Action.ActionComponent := self;
  l_Action.SelectedString := Text;
  l_Action.LockUpdate;
  try
   lp_SaveLock;
   try
    Action.Execute;
   finally
    lp_RestoreLock;
   end;//try..finally
  finally
   l_Action.UnlockUpdate;
  end;//try..finally
 finally
  l_Action := nil;
 end;//try..finally
end;//ActionExecuteHandler

procedure TvcmComboBox.LocalUpdateAction;
var
 l_Action: IvcmAction;
begin
 if Supports(Action, IvcmAction, l_Action) then
 try
  l_Action.SelectedString := Text;
 finally
  l_Action := nil;
 end;//try..finally
end;//LocalUpdateAction

procedure TvcmComboBox.CMTBMouseQuery(var Msg: TMessage);
begin
 if InnerPoint(Point(Integer(Msg.WParam), Integer(Msg.LParam))) then
  Msg.Result := 1
 else
  Msg.Result := 0;
end;

procedure TvcmComboBox.CMTBCheckControl(var Msg: TMessage);
begin
 if IsInnerControl(HWND(Msg.WParam)) then
  Msg.Result := 1
 else
  Msg.Result := 0;
end;

// start class TvcmEditActionLink

type
  TvcmEditActionLink = class(TvcmWinControlActionLink)
  end;//TvcmEditActionLink

// start class TvcmEdit

type
  TvcmEdit = class(TvcmFakeBox)
      constructor Create(AOwner: TComponent);
        override;
    protected
    // internal methods
      function  DoProcessCommand(Cmd    : Tl3OperationCode;
                                 aForce : Boolean;
                                 aCount : Integer): Boolean;
        override;
        {* - вызывается orpheus-ом при обработке shortcut-ов. }
      procedure ActionChange(Sender: TObject; CheckDefaults: Boolean);
        override;
        {-}
      function GetActionLinkClass: TControlActionLinkClass;
        override;
        {-}
  end;//TvcmEdit


constructor TvcmEdit.Create(AOwner: TComponent);
begin
 inherited;
 Width := 121;
 // При установке фокуса выделяем весь текст
 AutoSelect := True;
end;

function TvcmEdit.DoProcessCommand(Cmd    : Tl3OperationCode;
                                   aForce : Boolean;
                                   aCount : Integer): Boolean;
//override
begin
 Result := inherited DoProcessCommand(Cmd, aForce, aCount);
 if not Result then
 begin
  Tag := 0;
  case Cmd of
   ccNewLine:
   begin
    Tag := Integer(Cmd);
    with Action do
    begin
     ActionComponent := Self;
     Execute;
    end;
    Result := True;
   end;
  end;
 end;
end;

procedure TvcmEdit.ActionChange(Sender: TObject; CheckDefaults: Boolean);
  //override;
  {-}
var
 l_Action: IvcmAction;
begin
 if Supports(Sender, IvcmAction,  l_Action) then
 try
  l_Action.LockExecute;
  try
   inherited;
  finally
   l_Action.UnlockExecute;
  end;//try..finally
 finally
  l_Action := nil;
 end//try..finally
 else
  inherited;
end;

function TvcmEdit.GetActionLinkClass: TControlActionLinkClass;
  //override;
  {-}
begin
 Result := TvcmEditActionLink;
end;

// start class TvcmDateEdit

type
  TvcmDateEdit = class(TvtDblClickDateEdit)
    private
      f_OnSelectDate : TNotifyEvent;
      procedure CMTextChanged(var Message: TMessage); message CM_TEXTCHANGED;
    protected
      procedure DoExecute;
        override;
        {-}
      procedure DoCloseUp(Accept: Boolean);
        override;
        {-}
      procedure ActionChange(Sender: TObject; CheckDefaults: Boolean);
        override;
        {-}
    // internal methods
      function GetActionLinkClass: TControlActionLinkClass;
        override;
        {-}
    public
      constructor Create(AOwner: TComponent); override;
      property OnSelectDate : TNotifyEvent read f_OnSelectDate write f_OnSelectDate;
  end;//TvcmDateEdit

  TvcmDateEditActionLink = class(TvcmWinControlActionLink)
  protected
  // protected methods
   function IsCaptionLinked: Boolean;
     override;
     {-}
   procedure ParamsChanged(const anAction: IvcmAction);
     override;
     {-}
  end;//TvcmDateEditActionLink

procedure TvcmDateEditActionLink.ParamsChanged(const anAction: IvcmAction);
  // override;
  {-}
begin
 inherited;
 if anAction.IsSelectedStringChanged and (FClient is TvcmDateEdit) then
  TvcmDateEdit(FClient).Text := vcmStr(anAction.SelectedString);
end;//ParamsChanged

function TvcmDateEditActionLink.IsCaptionLinked: Boolean;
begin
 Result :=
  False
   // - реагировать на изменение Caption мы не можем, потому как он может
   //   меняться, значение же храниться в параметре SelectedString (K<50758978>);
  ;
end;

function TvcmDateEdit.GetActionLinkClass: TControlActionLinkClass;
  //override;
  {-}
begin
 Result := TvcmDateEditActionLink;
end;

procedure TvcmDateEdit.DoExecute;
 //override;
begin
 inherited;
end;

procedure TvcmDateEdit.CMTextChanged(var Message: TMessage);
begin
 inherited;
 { Если маска установлена поле не может быть пустым }
 if (EditMask <> '') and (EditText = '') then
  Clear;
end;


constructor TvcmDateEdit.Create(AOwner: TComponent);
begin
 inherited;
 RestrictInvalidDate := true;
end;

procedure TvcmDateEdit.ActionChange(Sender: TObject; CheckDefaults: Boolean);
  // override;
  {-}
var
 l_Action: IvcmAction;
begin
 inherited;
 // После смены Action текст будет равен названию операции поэтому после смены
 // нужно установить текущее значение:
 if Supports(Action, IvcmAction, l_Action) then
 try
  l_Action.LockExecute;
  try
   Text := vcmStr(l_Action.SelectedString);
  finally
   l_Action.UnlockExecute;
  end;//try..finally
 finally
  l_Action := nil;
 end;//try..finally
end;//ActionChange

procedure TvcmDateEdit.DoCloseUp(Accept: Boolean);
 //override;
 {-}
begin
 inherited DoCloseUp(Accept);
 if Assigned(f_OnSelectDate) and Accept then
  f_OnSelectDate(Self);
end;

// start class TvcmCustomMenuManager

var
 g_InternalButton : TvcmToolButtonDef = nil;

constructor TvcmCustomMenuManager.Create(anOwner: TComponent);
  //override;
  {-}
var
 l_Form : TCustomForm;
begin
 inherited;
 MenuOptions := vcm_DefaultMenuOptions;
 ToolbarOptions := vcm_DefaultToolbarOptions;
 if not (csDesigning in ComponentState) then begin
  l_Form := afw.GetParentForm(Self);
  if (l_Form Is TForm) then
   if (l_Form Is TvcmMainForm) AND not TvcmMainForm(l_Form).SDI then
    TForm(l_Form).FormStyle := fsMDIForm;
  Screen.OnActiveFormChange := FormChange;
 end;//not (csDesigning in ComponentState)
 f_MainMenuItems := TvcmMenuItemsCollection.Create(Self);
 f_TickCount := Cardinal(-1);
 OneToolbarPerForm := true;
 f_FastenToolbars := -1;
 f_SaveDockList := Tl3SimpleObjectRefList.Make;
 f_BtnCloseImageIndex := -1;
 f_BtnOpenImageIndex := -1;
 f_BtnOpenNewWindowImageIndex := -1;
 f_SaveLockCounter := TvcmLongintList.Make;
 f_LockCounter := 0;
 f_UnlockInProgress := 0;
 f_GlyphSize := vcm_gs16x16;
 f_SmallToolbarSize := 0;
end;

function TvcmCustomMenuManager.UnlockInProgress: Boolean;
begin
 Result := (f_UnlockInProgress > 0);
end;

procedure TvcmCustomMenuManager.Cleanup;
  //override;
  {-}
var
 l_MyEvent  : TNotifyEvent;
 l_MyMethod : TMethod absolute l_MyEvent;
 l_Event    : TNotifyEvent;
 l_Method   : TMethod absolute l_Event;
begin
 TB97Tlbr.g_ToolbarSize := nil;
 {$IfDef vcmUseSettings}
 Finalize(f_MainToolbarDefs);
 {$EndIf vcmUseSettings}
 l_Event := Screen.OnActiveFormChange;
 l_MyEvent := FormChange;
 if (l_Method.Code = l_MyMethod.Code) AND (l_Method.Data = l_MyMethod.Data) then
  Screen.OnActiveFormChange := nil;
 vcmFree(f_MainMenuItems);
 vcmFree(f_Popup);
 vcmFree(f_SaveLockCounter);
 vcmFree(f_LockList);

 vcmFree(f_SaveDockList);
 Actions := nil;
 vcmFree(f_UserTypes);
 inherited;
end;

type
  THackWinControl = class(TWinControl);

{$IfNDef DesignTimeLibrary}
procedure TvcmCustomMenuManager.RegisterModuleInMenu(aForm            : TvcmEntityForm;
                                                     const aModuleDef : IvcmModuleDef);
  //override;
  {* - регистрирует модуль в меню, toolbar'ах, etc. }
var
 l_Main : TMenuItem;
 l_Item : TMenuItem;
begin
// if (aForm = Application.MainForm) OR (Application.MainForm = nil) then begin
 if (aForm Is TvcmMainForm) then begin
  THackWinControl(aForm).DestroyHandle;
  // - это здесь ОБЯЗАТЕЛЬНО нужно иначе окно открывается в РАЗЫ медленнее
  l_Main := vcmGetMainMenu(aForm);
  l_Item := vcmMakeModuleMenu(l_Main, aModuleDef, [vcm_ooShowInMainMenu], true);
  if (vcm_moEntitiesInMainMenu in MenuOptions) then begin
   if (vcm_moEntitiesInTopMainMenu in MenuOptions) then
    vcmMakeEntitiesMenus(l_Main, aModuleDef.EntitiesDefIterator, [vcm_ooShowInMainMenu])
   else
    vcmMakeEntitiesMenus(l_Item, aModuleDef.EntitiesDefIterator, [vcm_ooShowInMainMenu]);
  end else
   vcmMakeEntitiesMenus(l_Item, aModuleDef.EntitiesDefIterator, [vcm_ooShowInMainMenu], False, vcm_icSameAsParent);
  if (f_UserTypes = nil) then
  begin
   CheckUserTypes;
   aForm.GetUserTypes(f_UserTypes);
  end;//f_UserTypes = nil
  BuildMainToolbars(aForm, aModuleDef);
  BuildUserTypes(aModuleDef);
 end;//aForm = Application.MainForm
end;
{$EndIf DesignTimeLibrary}

procedure TvcmCustomMenuManager.CheckUserTypes;
  {-}
begin
 if (f_UserTypes = nil) then
  f_UserTypes := TvcmInterfaceList.Make;
end;

procedure TvcmCustomMenuManager.BuildUserTypes(const aModuleDef : IvcmModuleDef);
  {-}
var
 l_UserTypes : IvcmUserTypesIterator;
 l_UserType  : IvcmUserTypeDef;
begin
 if not f_UserTypesLoaded then
 begin
  l_UserTypes := aModuleDef.UserTypesIterator;
  if (l_UserTypes <> nil) then
  begin
   CheckUserTypes;
   while true do
   begin
    l_UserType := l_UserTypes.Next;
    if (l_UserType = nil) then
     break;
    f_UserTypes.Add(l_UserType);
   end;//while true
 //  while DoEntity(l_Entities.Next) do ;
  end;//l_UserTypes <> nil
 end;//not f_UserTypesLoaded
end;

{$IfNDef DesignTimeLibrary}
procedure TvcmCustomMenuManager.MainCreated(aForm: TvcmEntityForm);
  //override;
  {-}
var
 l_Menu  : TMenuItem;
 l_Index : Integer;
 l_MMI   : TvcmMenuItemsCollectionItem;
begin
 inherited;
 if not (csDesigning in ComponentState) then
 begin
  OverridePopupMenu(aForm);
  if (aForm Is TvcmMainForm) AND not TvcmMainForm(aForm).SDI then
   TForm(aForm).FormStyle := fsMDIForm;
  l_Menu := vcmGetMainMenu(aForm);
  for l_Index := 0 to Pred(MainMenuItems.Count) do
  begin
   l_MMI := TvcmMenuItemsCollectionItem(MainMenuItems.Items[l_Index]);
   TvcmMainMenuAction.MakeForMenu(vcmAddCategoryItem(l_Menu, l_MMI.Caption), l_MMI.OnTest);
  end;//for l_Index
  if (vcm_toEntitiesInMainToolbar in ToolbarOptions) then
   BuildFormToolbars(aForm, [vcm_ooShowInMainToolbar]);
 end;//not (csDesigning in ComponentState)
end;
{$EndIf DesignTimeLibrary}

{$IfDef vcmUseSettings}
procedure TvcmCustomMenuManager.MakeMainToolbarFromSettings(aForm        : TvcmEntityForm);
  {-}
var
 l_Pos : TvcmEffectiveToolBarPos;
begin
 for l_Pos := Low(TvcmEffectiveToolBarPos) to High(TvcmEffectiveToolBarPos) do
 begin
  with f_MainToolbarDefs[l_Pos] do
  begin
   if rVisible AND (rButtons <> nil) then
   begin
    MakeToolbarFromSettings(aForm, rToolbarName, l_Pos,
                            [vcm_ooShowInMainToolbar], rButtons);
    rButtons := nil;
   end;//rButtons <> nil
  end;//with f_MainToolbarDefs[l_Pos]
 end;//for l_Pos
end;
{$EndIf vcmUseSettings}

procedure TvcmCustomMenuManager.RegisterMainInMenu(aForm: TvcmEntityForm);
  //override;
  {* - регистрирует основную форму в меню, toolbar'ах, etc. }
var
 l_Item  : TMenuItem;
 l_Child : TMenuItem;
 l_Index : Integer;
begin
 if not (csDesigning in ComponentState) then
 begin
  LoadGlyphSize;
  LoadGlyphColordepth;
  l_Item := vcmGetMainMenu(aForm);
  vcmMakeEntitiesMenus(l_Item, aForm.GetEntitiesDefIterator, [vcm_ooShowInMainMenu]);
  l_Index := 0;
  while (l_Index < l_Item.Count) do
  begin
   l_Child := l_Item.Items[l_Index];
   if (l_Child.Count <= 0) then
    l_Item.Remove(l_Child)
   else
    Inc(l_Index);
  end;//while (l_Index < l_Item.Count)
  {$IfDef vcmUseSettings}
  MakeMainToolbarFromSettings(aForm);
  {$EndIf vcmUseSettings}
  f_UserTypesLoaded := true;
 end;//not (csDesigning in ComponentState)
end;

procedure TvcmCustomMenuManager.RefocusEntity;
  {-}
//var
 //l_Active : IvcmEntity;
 //l_Form   : IvcmEntityForm;
begin
 // Раньше мы запоминали активную Entity, а теперь она ищется по фокусу (см. vcmDispatcher.ActiveEntity)
 // Так что эта процедура теряет весь свой сакральный смысл и по-хорошему ее надо удалить
 // оставленные части ждут удаления
 if (f_FocusControl <> nil) AND (Application.MainForm <> nil) then
 begin
  f_InEnter := False;
  {
  Application.MainForm.DefocusControl(f_FocusControl, true);
  f_FocusControl := nil;
  l_Active := vcmDispatcher.ActiveEntity;
  if (l_Active <> nil) then
   if Succeeded(l_Active.QueryInterface(IvcmEntityForm, l_Form)) then
    try
     with l_Form.VCLForm do begin
      Windows.SetFocus(Handle);
      if (ActiveControl <> nil) then
       Windows.SetFocus(ActiveControl.Handle);
     end;//with l_Form.VCLForm
    finally
     l_Form := nil;
    end;//try..finally
    }
 end;//f_FocusControl <> nil
end;

procedure TvcmCustomMenuManager.RestoreControlText(Sender: TObject);
  {-}
var
 l_Control : TWinControl;
 l_TC      : IafwTextControl;
 l_Action  : IvcmAction;
begin
 l_Control := (Sender As TWinControl);
 if Supports(l_Control.Action, IvcmAction, l_Action) then
 try
  if Supports(l_Control, IafwTextControl, l_TC) then
   l_TC.CCaption := l_Action.Caption
  else
   THackWinControl(l_Control).Text := vcmStr(l_Action.Caption);
 finally
  l_Action := nil;
 end;//try..finally
end;//RestoreControlText

procedure TvcmCustomMenuManager.ChangeEntityText(Sender: TObject);
  {-}
var
 l_Control : TWinControl;
 l_TC      : IafwTextControl;
 l_Action  : IvcmAction;
begin
 l_Control := (Sender As TWinControl);
 if Supports(l_Control.Action, IvcmAction, l_Action) then
 try
  with l_Action do
  begin
   if Supports(l_Control, IafwTextControl, l_TC) then
    SelectedString := l_TC.CCaption
   else
    SelectedString := vcmCStr(THackWinControl(l_Control).Text);
   LockUpdate;
   try
    if (f_FocusControl = l_Control) then
    begin
     UnlockExecute;
     f_IsUnlockExecute := True;
    end;
    l_Control.Action.Execute;
   finally
    UnLockUpdate;
   end;//try..finally
  end;//with TCustomAction(l_Control.Action)
 finally
  l_Action := nil;
 end;//try..finally
end;//ChangeEntityText

procedure TvcmCustomMenuManager.ChangeTyperText(Sender: TObject);
  {-}
var
 l_TickCount : Cardinal;
begin
 l_TickCount := GetTickCount;
// if (f_TickCount = Cardinal(-1)) OR (l_TickCount - f_TickCount >= 300) then
  ChangeEntityText(Sender);
 f_TickCount := l_TickCount;
end;
  
procedure TvcmCustomMenuManager.ControlKeyDown(Sender  : TObject;
                                               var Key : Word;
                                               Shift   : TShiftState);
  {-}
begin
 if (Shift = []) then begin
  if (Key = vk_Escape) then begin
   RestoreControlText(Sender);
   RefocusEntity;
   Key := 0;
   //Key = vk_Escape
  end else if (Key = vk_Return) then begin
   ChangeEntityText(Sender);
   RefocusEntity;
   Key := 0;
  end;//Key = vk_Enter
 end;//Shift = []
end;

procedure TvcmCustomMenuManager.ControlEnter(Sender: TObject);
  {-}
var
 l_Action: IvcmAction;
begin
 if not (Sender Is TvcmComboBox) then
  f_WasDrop := False;
 f_InEnter := true;
 f_FocusControl := (Sender As TWinControl);
 if Supports(f_FocusControl.Action, IvcmAction, l_Action) then
 try
  (* при входе в обязательном порядке вызываем OnTest *)
  // TvcmAction(f_FocusControl.Action).Update;
  if not (f_FocusControl is TFakeBox) then

    (* Нет необходимости защищать Execute, потому что по TControl.Click
       TAction.Execute не вызывается.

       Предистория:

         1. Находимся в дереве;
         2. Нажимаем клавиши, включается быстрый поиск;
         3. В TvcmEdit на toolbar-е передаётся текст;
         4. Устанавливаем фокус в TvcmEdit, получается что выполнение
            TAction.Execute запрещено;
         5. Нажимаем Enter, который транслируется в команду и обрабатывается в
            TvcmEdit.ProcessCommand в обход ControlKeyDown (в котором
            сбрасывается UnlockExecute) и ничего не происходит; *)
         
   l_Action.LockExecute;
     (* Это нужно сделать потому, что при входе в компонент по TControl.Click
        вызовется TAction.Execute, а в компоненте может быть не валидная
        информация *)
  f_IsUnlockExecute := False;
    (* Устанавливаем флаг чтобы по выходу сбросить блокировку если мы ничего не
       вызывали *)
 finally
  l_Action := nil;
 end;//try..finally
end;//ControlEnter

procedure TvcmCustomMenuManager.ControlExit(Sender: TObject);
  {-}
var
 l_TC     : IafwTextControl;
 l_Action : IvcmAction;
begin
 if not f_IsUnlockExecute then
 begin
  f_FocusControl := TWinControl(Sender);
  if Supports(f_FocusControl.Action, IvcmAction, l_Action) then
  try
   // если пользователь поредактировал и вышел без нажатия на Enter, то
   // возвращаем предыдущее значение
   if Supports(f_FocusControl, IafwTextControl, l_TC) then
   begin
    if not vcmSame(l_TC.CCaption, l_Action.Caption) then
     l_TC.CCaption := l_Action.Caption;
   end//Supports(f_FocusControl, IafwTextControl, l_TC)
   else
    with THackWinControl(f_FocusControl) do
     if not vcmSame(Text, l_Action.SelectedString) then
      Text := vcmStr(l_Action.SelectedString);
   l_Action.UnlockExecute;
  finally
   l_Action := nil;
  end;//f_FocusControl.Action Is TvcmAction
 end;//not f_IsUnlockExecute
// RefocusEntity; //приходим сюда во время обработки WM_SETFOCUS другого
// контрола; RefocusEntity приводила к повторному WM_SETFOCUS;
// это приводило к тому, что фокус до контрола не доходил;
end;

procedure TvcmCustomMenuManager.ComboDown(Sender: TObject);
  {-}
begin
 ControlDown(Sender);
end;

procedure TvcmCustomMenuManager.ControlSelect(Sender: TObject);
  {-}
begin
 if f_WasDrop then begin
  f_WasDrop := False;
 ChangeEntityText(Sender);
  RefocusEntity;
 end;//f_WasDrop
end;

procedure TvcmCustomMenuManager.ControlDown(Sender: TObject);
  {-}
begin
 f_WasDrop := true;
 f_InEnter := true;
 f_FocusControl := (Sender As TWinControl);
end;

procedure TvcmCustomMenuManager.DateDown(Sender: TObject);
  {-}
begin
 ControlDown(Sender);
end;

procedure TvcmCustomMenuManager.FormChange(Sender: TObject);
  {-}
begin
 if f_InEnter then
  f_InEnter := False
 else
  RefocusEntity;
end;

function TvcmCustomMenuManager.BuildButton(aForm             : TvcmEntityForm;
                                           aToolBar          : TvcmToolbarDef;
                                           const aModuleDef  : IvcmModuleDef;
                                           const anEntityDef : IvcmEntityDef;
                                           const anOp        : IvcmOperationDef;
                                           const anOptions   : TvcmOperationOptions;
                                           const anIconText  : TvcmIconTextType): TControl;
  //overload;
  {-}
begin
 if (anOp = nil) then
  Result := nil
 else
  Result := BuildButton(aForm, aToolbar, aModuleDef, anEntityDef, anOp,
                        anOp.Options, anOptions, anIconText);
end;

function TvcmCustomMenuManager.BuildAction(const aModuleDef : IvcmModuleDef;
                                           const anOpDef    : IvcmOperationDef): TCustomAction;
  //overload;
  {-}
begin
 Assert(aModuleDef <> nil);
 Assert(anOpDef <> nil);
 Result := TvcmModuleAction.Make(aModuleDef, anOpDef);
end;//BuildAction

function TvcmCustomMenuManager.BuildAction(const anOwner     : TComponent;
                                           const anEntity    : IvcmEntity;
                                           const anEntityDef : IvcmEntityDef;
                                           const anOpDef     : IvcmOperationDef;
                                                 anOptions   : TvcmOperationOptions): TCustomAction;
  //overload;
  {-}
var
 l_Form: IafwMainForm;
begin
 Assert(anEntityDef <> nil);
 Assert(anOpDef <> nil);
 if (vcm_ooShowInChildToolbar in anOptions) or (
     (vcm_ooShowInMainToolbar in anOptions) and 
     (anEntity <> nil) and 
     Supports(anEntity, IafwMainForm, l_Form))
       //or: http://mdp.garant.ru/pages/viewpage.action?pageId=296098743
       // Actions главной формы не зависят от фокуса
 then
 begin
  if anEntity <> nil then
   Result := TvcmActiveEntityActionEx.Create(anOwner,
                                             anEntity,
                                             anEntityDef,
                                             anOpDef)
  else
   Result := nil;
 end
 else
  Result := TvcmEntityAction.Make(anEntityDef, anOpDef);
end;//BuildAction

function TvcmCustomMenuManager.BuildButton(aForm             : TvcmEntityForm;
                                           aToolBar          : TvcmToolbarDef;
                                           const aModuleDef  : IvcmModuleDef;
                                           const anEntityDef : IvcmEntityDef;
                                           const anOp        : IvcmOperationDef;
                                           const anOpOptions : TvcmOperationOptions;
                                           const anOptions   : TvcmOperationOptions;
                                           const anIconText  : TvcmIconTextType): TControl;
  //overload;
  {-}

 function lp_Images: TCustomImageList;

   function lp_MakeImages(const aSize: TvcmImageSize): TCustomImageList;
   begin
    Result := nil;
    case aSize of
     isSmall:
      Result := SmallImages;
     isLarge:
      Result := LargeImages;
    end;//case aSize of
   end;//lp_MakeImage

 begin
  Result := nil;
  with aForm.Style.Toolbars do
   case aToolbar.Pos of
    vcm_tbpTop:
     Result := lp_MakeImages(Top.ImageSize);
    vcm_tbpBottom:
     Result := lp_MakeImages(Bottom.ImageSize);
    vcm_tbpLeft:
     Result := lp_MakeImages(Left.ImageSize);
    vcm_tbpRight:
     Result := lp_MakeImages(Right.ImageSize);
   end;//case aToolbar.DockPos of
 end;//lp_Image

var
 l_ButtonName : String;
 l_EntityName : String;
 l_Entity     : IvcmEntity;
begin
 Result := nil;
 if (anOp <> nil) then
 begin
  if (anOp.OperationType in vcm_HiddenOperations) OR
     (anOpOptions * anOptions = []) OR
     ((aForm Is TvcmEntityForm) AND
      (TvcmEntityForm(aForm).UserType in anOp.ExcludeUserTypes)) then
   Result := g_InternalButton
  else
  begin
   // Имя формируется из сущности + имя операции
   if Assigned(aModuleDef) then
    l_EntityName := aModuleDef.Name
   else
    if Assigned(anEntityDef) then
     l_EntityName := anEntityDef.Name;
   // Сформируем имя. Отрежем префикс "op" у операции
   l_ButtonName := 'bt_' + l_EntityName + '_' + anOp.Name;
   Result := aToolBar.FindComponent(l_ButtonName) As TControl;
   if (Result = nil) then
   begin
    Case anOp.OperationType of
     vcm_otButton,
     vcm_otButtonCombo,
     vcm_otMenuButtonCombo,
     vcm_otButtonPopup,
     vcm_otTextButton,
     vcm_otCheck,
     vcm_otRadio :
     begin
      Result := TvcmToolButtonDef.Create(aToolBar);
      TvcmToolButtonDef(Result).DropdownCombo := (anOp.OperationType in
       [vcm_otButtonCombo, vcm_otMenuButtonCombo]);
      if (anOp.OperationType in [vcm_otButtonPopup]) then
       TvcmToolButtonDef(Result).DropDownAlways := True;
     end;//vcm_otRadio
     vcm_otCombo,
     vcm_otEditCombo : begin
      Result := TvcmComboBox.Create(aToolbar);
      if (anOp.OperationType = vcm_otEditCombo) then
       TvcmComboBox(Result).Style := csDropDown
      else
       TvcmComboBox(Result).Style := csDropDownList;
      TvcmComboBox(Result).OnEnter := ControlEnter;
      TvcmComboBox(Result).OnExit := ControlExit;
      TvcmComboBox(Result).OnDropDown := ComboDown;
      TvcmComboBox(Result).OnSelect := ControlSelect;
      TvcmComboBox(Result).OnKeyDown := ControlKeyDown;
      {$IfDef vcmUseSettings}
      TvcmEdit(Result).PopupMenu := Self.ToolbarPopup;
      {$EndIf vcmUseSettings}
     end;//vcm_otCombo
     vcm_otEdit,
     vcm_otTyper :
     begin
      Result := TvcmEdit.Create(aToolbar);
      TvcmEdit(Result).OnEnter := ControlEnter;
      TvcmEdit(Result).OnExit := ControlExit;
      TvcmEdit(Result).OnKeyDown := ControlKeyDown;
      TvcmEdit(Result).ComboStyle := ct_cbEdit;
      TvcmEdit(Result).CEmptyHint := anOp.Hint;
      {$IfDef vcmUseSettings}
      TvcmEdit(Result).PopupMenu := Self.ToolbarPopup;
      {$EndIf vcmUseSettings}
      if (anOp.OperationType = vcm_otTyper) then
       TvcmEdit(Result).OnChange := ChangeTyperText;
     end;//vcm_otEdit
     vcm_otDate : begin
      Result := TvcmDateEdit.Create(aToolbar);
      TvcmDateEdit(Result).Width := TvcmDateEdit(Result).Width div 2;
      TvcmDateEdit(Result).OnEnter := ControlEnter;
      TvcmDateEdit(Result).OnExit := ControlExit;
      TvcmDateEdit(Result).OnKeyDown := ControlKeyDown;
      { ElDateTimePicker }
      { TDateTimePicker }
      TvcmDateEdit(Result).OnSelectDate := ControlSelect;
      TvcmDateEdit(Result).OnDropDown := DateDown;
     end;//vcm_otDate
     else begin
      Result := g_InternalButton;
      Exit;
     end;//else
    end;//Case anOpOperationType
    Result.Parent := aToolbar;
    Result.Name := l_ButtonName;
    if Result is TvcmDateEdit then
     with TvcmDateEdit(Result) do
      AutoResize;

    { проблема в том, что нельзя сделать это(присвоение Constraint)
      до присвоения Parent (Handle не существует) }
//    Case anOp.OperationType of
//     vcm_otCombo, vcm_otEditCombo :
//       TvcmComboBox(Result).Constraints.MaxWidth:=200;
//    end;

    if (aModuleDef <> nil) then
     Result.Action := BuildAction(aModuleDef, anOp)
    else
     if (anEntityDef <> nil) then
     begin
      Supports(aToolBar.Owner, IvcmEntity, l_Entity);
      try
       Result.Action := BuildAction(Result,
                                    l_Entity,
                                    anEntityDef,
                                    anOp,
                                    anOptions);
      finally
       l_Entity := nil;
      end;//try..finally
     end;//anEntityDef <> nil
    // Сформируем уникальное название компоненту, т.к. в разных сущностях
    // могут быть операции с одинаковыми названиями. Например форма "Список":
    // Печать..., Печать...(Документы), Печать...(Выделенные документы)
    with Result do
     if vcmSame(anOp.Hint, anOp.Caption) then
      Result.Hint := vcmStr(vcmMakeCaption(anEntityDef, anOp));
    Result.ShowHint := true;
    if (Result Is TvcmToolButtonDef) then
    begin
     if (Result.Action <> nil) then
     begin
      with TvcmToolButtonDef(Result) do
      begin
       Images := lp_Images;
       if Images = nil then
        Images := ((Result.Action As TContainedAction).Actionlist As TCustomActionList).Images;
      end;//with TvcmToolButtonDef(Result) do
     end;//if (Result.Action <> nil) then
     if ((anOp.OperationType = vcm_otTextButton) and (anIconText = vcm_itDefault)) or
        (anIconText = vcm_itIconText) then
     begin
      TvcmToolButtonDef(Result).DisplayMode := dmBoth;
      TvcmToolButtonDef(Result).WordWrap := true;
     end//anOp.OperationType = vcm_otTextButton
     else
     if (anOp.ImageIndex >= 0) then
     // раньше был dmGlyph, но из-за http://mdp.garant.ru/pages/viewpage.action?pageId=287214455
     // пришлось добавить новый тип dmGlyphAndFakeText, чтобы в других проектах не отъехал dmGlyph
      TvcmToolButtonDef(Result).DisplayMode := dmGlyphAndFakeText
     else
     begin
      TvcmToolButtonDef(Result).DisplayMode := dmTextOnly;
      TvcmToolButtonDef(Result).WordWrap := true;
     end;//anOp.ImageIndex >= 0
     TvcmToolButtonDef(Result).AutoSize := true;
     TvcmToolButtonDef(Result).Opaque := false;
    end;//Result Is TvcmToolButtonDef
    aToolBar.Width := aToolBar.Width + Result.Width;
   end;//Result = nil
  end;//anOp.OperationType in vcm_HiddenOperations..
 end;//anOp <> nil
end;

function TvcmCustomMenuManager.BuildSeparator(aToolBar: TvcmToolbarDef): TControl;
  {-}
begin
 if aToolbar.CanAddSeparator then
 begin
  Result := TvcmSeparatorDef.Create(aToolbar);
  with Result do
   Parent := aToolbar;
 end//aToolbar.CanAddSeparator
 else
  Result := nil;
end;

function TvcmCustomMenuManager.GetPopupMenu: TPopupMenu;
  //override;
  {-}
begin
 Result := f_Popup;
end;

function  TvcmCustomMenuManager.UserTypeByCaption(const aCaption: AnsiString;
                                      aFormClass: TClass = nil): IvcmUserTypeDef;
var
 l_Index       : Integer;
 l_UserType    : IvcmUserTypeDef;
 l_UTCaption : IvcmCString;
begin
 Result := nil;
 if (f_UserTypes <> nil) then
  with f_UserTypes do
   for l_Index := Lo to Hi do
   begin
    l_UserType := IvcmUserTypeDef(Items[l_Index]);
    l_UTCaption := vcmCStr(l_UserType.SettingsCaption);
    if vcmSame(l_UTCaption, aCaption, true) AND
    // http://mdp.garant.ru/pages/viewpage.action?pageId=471774401
     ((l_UserType.FormClass = aFormClass) OR (aFormClass = nil)) then
     if TvcmUserTypeInfo.AllowCustomizeToolbars(l_UserType) then
     begin
      Result := l_UserType;
      break;
     end;//ANSISameText
   end;//for l_Index
end;

procedure TvcmCustomMenuManager.ToolbarsGetSiteInfo(Sender      : TObject;
                                                    DockClient  : TCustomToolWindow97;
                                                    var CanDock : Boolean);
  {-}
begin
 if not (DockClient Is TvcmToolbar) OR not (Sender Is TvcmDockDef) then
  CanDock := False
 else
  if (TvcmDockDef(Sender).Parent <> TvcmToolbar(DockClient).DockDef.Parent) then
   CanDock := False;
end;

procedure TvcmCustomMenuManager.LockDocks;
begin
 inc(f_LockCounter);
end;

procedure TvcmCustomMenuManager.UnlockDocks;
var
 l_Index: Integer;
 l_Dock: TvcmDockDef;
 l_DockList: TvcmObjectList;
begin
 Dec(f_LockCounter);
 Assert(f_LockCounter >= 0);
 if TvcmToolbarDockListManager.Exists
  then l_DockList := TvcmToolbarDockListManager.Instance.DockList
  else l_DockList := nil;
 if Assigned(l_DockList) and
    (l_DockList.Count > 0) and
    (f_LockCounter = 0) and
    (f_UnlockInProgress = 0) then
 begin
  Inc(f_UnlockInProgress);
  try
   for l_Index := l_DockList.Count - 1 downto 0 do
   begin
    l_Dock := TvcmDockDef(l_DockList[l_Index]);
    l_Dock.EndUpdate;
    l_Dock.SmartAlign := False;
   end;//for l_Index
   l_DockList.Clear;
  finally
   Dec(f_UnlockInProgress);
  end;
  if (f_UnlockInProgress = 0) and Assigned(f_LockList) then
  begin
   for l_Index := f_LockList.Count - 1 downto 0 do
    f_LockList[l_Index].MenuUnlockedFixUp;
   f_LockList.Clear; 
  end;
 end;
end;

procedure TvcmCustomMenuManager.AddControlForUnlockPostBuild(const aCOntrol: IafwMenuUnlockedPostBuild);
begin
 if f_LockList = nil then
  f_LockList := TIafwMenuUnlockedPostBuildPtrList.MakeSorted;
 f_LockList.Add(aControl);
end;

procedure TvcmCustomMenuManager.ListenerControlDestroying(const aCOntrol: IafwMenuUnlockedPostBuild);
begin
 if Assigned(f_LockList) then
  f_LockList.Remove(aCOntrol);
end;

function TvcmCustomMenuManager.ObjectByType(anObject           : TvcmObject;
                                            const anObjectName : String;
                                            const aSubName     : String = '';
                                            ForceCreate        : Boolean = False): TvcmBaseCollectionItem;
  //override;
  {-}
begin
 Result := nil;
 Case anObject of
  vcm_objMainMenuItem :
   if (MainMenuItems <> nil) then
    Result := MainMenuItems.FindItemByName(anObjectName);
  else
   Result := inherited ObjectByType(anObject, anObjectName, aSubName, ForceCreate);
 end;//Case anObject
end;

const
 cTBName : array [TvcmEffectiveToolBarPos] of string =
  ('Top', 'Bottom', 'Left', 'Right');

function TvcmCustomMenuManager.ToolbarButtonSize(aToolbarButton   : TCustomToolbarButton97;
                                                 var aSize        : Integer) : Boolean;
// overload;
begin
 Result := False;
 with aToolbarButton do
 begin
  if Assigned(Images) then
   if Images.Height > 16 then
   begin
    aSize := Max(aSize, Height);
    Result := aToolbarButton.DisplayMode = dmBoth;
   end;
 end;
end;

procedure TvcmCustomMenuManager.ToolbarButtonSize(aToolbarButton : TCustomToolbarButton97);
// overload;
var
 l_Size : Integer;
begin
 l_Size := f_MaxControlToolbarSize;
 ToolbarButtonSize(aToolbarButton, l_Size);
 aToolbarButton.Height := l_Size;
 aToolbarButton.Width := Max(l_Size, aToolbarButton.Width);
end;

procedure TvcmCustomMenuManager.ToolbarSize(aToolbar  : TCustomToolbar97;
                                            var aSize : Integer);
var
 l_Index : Integer;
begin
 aSize := f_MaxControlToolbarSize;
 for l_Index := 0 to Pred(aToolbar.ControlCount) do
  if aToolbar.Controls[l_Index] is TCustomToolbarButton97 then
   (* выходим, максимальный размер получен *)
   if ToolbarButtonSize(TCustomToolbarButton97(aToolbar.Controls[l_Index]), aSize) then
    Break;
end;

procedure TvcmCustomMenuManager.InitToolbarMetrics(const aForm: TCustomForm);
var
 l_Toolbar   : TvcmToolbar;
 l_Dock      : TvcmDockDef;
 l_Button    : TToolbarButton97;
 l_Date      : TvcmDateEdit;
 l_Edit      : TvcmEdit;
begin
 if (f_MaxControlToolbarSize = 0) and Assigned(SmallImages) and
  (SmallImages.Count > 0) then
 begin
  l_Dock := TvcmDockDef.Create(aForm);
  try
   l_Dock.Parent := aForm;
   l_Toolbar := TvcmToolbar.Create(l_Dock, l_Dock);
   try
    l_Toolbar.Parent := l_Dock;
    l_Toolbar.BevelEdges := [beBottom, beLeft, beRight, beTop];
    // TToolbarButton97:
    l_Button := TToolbarButton97.Create(l_Toolbar);
    with l_Button do
    begin
     Parent := l_Toolbar;
     Images := SmallImages;
     ImageIndex := 0;
    end;//with l_Button do
    // TvcmEdit:
    l_Date := TvcmDateEdit.Create(l_Toolbar);
    l_Date.Parent := l_Toolbar;
    // TvcmDateEdit:
    l_Edit := TvcmEdit.Create(l_Toolbar);
    l_Edit.Parent := l_Toolbar;
    // Вычислим:
    l_Dock.ArrangeToolbars(False);
    // f_MaxControlToolbarSize:
    f_ButtonHeight := l_Button.Height;
    f_MaxControlToolbarSize := Max(l_Button.Height, f_MaxControlToolbarSize);
    f_MaxControlToolbarSize := Max(l_Date.Height,   f_MaxControlToolbarSize);
    f_MaxControlToolbarSize := Max(l_Edit.Height,   f_MaxControlToolbarSize);
    // f_SmallToolbarSize:
    f_SmallToolbarSize := l_Toolbar.Height;
    // f_DiffSize:
    f_DiffSize := f_SmallToolbarSize - f_MaxControlToolbarSize;
    // Процедура определения размера toolbar-а:
    TB97Tlbr.g_ToolbarSize := ToolbarSize;
    TB97Ctls.g_tbToolbarButtonSize := ToolbarButtonSize;
   finally//l_Toolbar := TvcmToolbar.Create(l_Panel, nil);
    vcmFree(l_Toolbar);
   end;{try..finally}
  finally//l_Dock := TvcmDockDef.Create(l_Panel);
   vcmFree(l_Dock);
  end;{try..finally}
 end;//if (f_MaxControlToolbarSize = 0)
 if aForm is TvcmMainForm then
  TvcmMainForm(aForm).SmallToolbarSize(f_SmallToolbarSize);
end;//InitToolbarMetrics

function TvcmCustomMenuManager.GetDockParent(aForm : TCustomForm) : TWinControl;

 function lp_FindDockContainer: TvcmDockContainer;
 var
  l_Component: TComponent;
 begin
  l_Component := aForm.FindComponent(c_vcmDockContainerName);
  if l_Component <> nil then
  begin
   Assert(l_Component is TvcmDockContainer);
   Result := TvcmDockContainer(l_Component);
  end//if Assigned(l_Component) then
  else
   Result := nil;
 end;//lp_FindDockContainer

 {$IfDef vcmUseMainToolbarPanel}
 function lp_MakeMainFormDockParent: TWinControl;
 var
  l_Index       : Integer;
  l_FormControl : TWinControl;
 begin
  Result := lp_FindDockContainer;
  if Result <> nil then
   Exit;
  for l_Index := 0 to Pred(aForm.ControlCount) do
  begin
   if aForm.Controls[l_Index] is TWinControl then
   begin
    l_FormControl := TWinControl(aForm.Controls[l_Index]);
    if l_FormControl.Align = alClient then
    begin
     Result := TvcmDockContainer.Create(aForm);
     Result.Parent := aForm;
     l_FormControl.Parent := Result;
     Result.Align := alClient;
     Break;
    end;//if (l_Component is TWinControl)
   end;//if aForm.Controls[l_Index] is TWinControl then
  end;//for l_Index := 0 to Pred(aForm.ComponentCount) do
 end;//lp_MakeMainFormDockParent
 {$EndIf vcmUseMainToolbarPanel}

 function lp_HasAlwaysOnTopControl: Boolean;
 var
  l_Index     : Integer;
 begin
  Result := True;
  for l_Index := Pred(aForm.ControlCount) downto 0 do
   if Supports(aForm.Controls[l_Index], IafwAlwaysOnTopControl) then
    Exit;
  Result := False;
 end;

 function lp_MakeDockContainer: TWinControl;
 var
  l_Index     : Integer;
  l_Control   : TControl;
 begin
  Result := nil;
  if (aForm is TvcmEntityForm) and lp_HasAlwaysOnTopControl then
  begin
   Result := lp_FindDockContainer;
   if Result = nil then
   begin
    Result := TvcmDockContainer.Create(aForm);
    Result.Parent := aForm;
    for l_Index := Pred(aForm.ControlCount) downto 0 do
    begin
     l_Control := aForm.Controls[l_Index];
     if (l_Control <> Result) and not Supports(l_Control, IafwAlwaysOnTopControl) then
      l_Control.Parent := Result;
    end;//for l_Index :=
    Result.Align := alClient;
   end;//if Result = nil then
  end;//if (aForm is TvcmEntityForm) and
 end;//lp_MakeDockContainer

begin
 {$IfDef vcmUseMainToolbarPanel}
  if aForm is TvcmMainForm then
  begin
   Result := lp_MakeMainFormDockParent;
   // Если контейнер для доков не был создан, то проверим наличие строки
   // состояния и создадим контейнер при необходимости:
   if Result = nil then
    Result := lp_MakeDockContainer;
  end;//if aForm is TvcmMainForm then
 {$Else vcmUseMainToolbarPanel}
  Result := lp_MakeDockContainer;
 {$EndIf vcmUseMainToolbarPanel}
 if Result = nil then
  Result := aForm;
end;//GetDockParent

{$IfNDef DesignTimeLibrary}
function TvcmCustomMenuManager.BuildToolbar(aForm          : TvcmEntityForm;
                                            const aName    : String;
                                            const aCaption : IvcmCString;
                                            aPos           : TvcmEffectiveToolBarPos): TvcmToolbarDef;
  //overload;
  {-}

var
 l_lnkMaximized : IvcmFormHandler;
 l_lnkOpen      : IvcmFormHandler;
 l_lnkClose     : IvcmFormHandler;

 function lp_GetParentForDock(aForm: TvcmEntityForm): TvcmEntityForm;

  function lp_DockButton(var aFormHandler : IvcmFormHandler;
                         const aForm      : TvcmEntityForm;
                         const aHandler   : TNotifyEvent;
                         const aHint      : Il3CString): Boolean;
  begin
   if Assigned(aHandler) then
   begin
    aFormHandler := TvcmFormHandler.Make(aForm, aHandler, aHint);
    Result := True;
   end//Assigned(aHandler)
   else
    Result := False;
  end;//lp_DockButton

 begin//lp_GetParentForDock
  Result := aForm.DefineDockContainer(aPos);
  // Определим обработчики кнопок dock-а формы:
  if not (aForm.ZoneType = vcm_ztForToolbarsInfo) then
  begin
   with TvcmEntityForm(Result) do
   begin
    // Close:
    if (CanClose = vcm_ccEnable) then
    begin
     lp_DockButton(l_lnkClose, Result, DefaultQueryClose,
      str_vcmCloseHint.AsCStr);
    end;//CanClose = vcm_ccEnable
    // Maximized:
    if not lp_DockButton(l_lnkMaximized, Result, OnQueryMaximized,
      str_vcmMaximizedHint.AsCStr) and
      (TvcmEntityForm(Result) <> aForm) then
     lp_DockButton(l_lnkMaximized, aForm, aForm.OnQueryMaximized,
      str_vcmMaximizedHint.AsCStr);
    // Open:
    if not lp_DockButton(l_lnkOpen, Result, OnQueryOpen,
     str_vcmOpenHint.AsCStr) and
      (TvcmEntityForm(Result) <> aForm) then
     lp_DockButton(l_lnkOpen, aForm, aForm.OnQueryOpen,
      str_vcmOpenHint.AsCStr);
   end;//with TvcmEntityForm(Result) do
  end;//if not (aForm.ZoneType = vcm_ztForToolbarsInfo) then
 end;//lp_GetParentForDock

 function GetFormWeight(aForm : TvcmEntityForm): Integer;
 begin//GetFormWeight
  if not (aForm is TvcmMainForm) then
   Result := 1
  else
   Result := 0;
 end;//GetFormWeight

 function lp_FindHandlersPublisher(const aControl: TWinControl): IvcmFormHandlersPublisher;
 var
  l_Parent: TWinControl;
 begin
  Result := nil;
  l_Parent := aControl;
  while (l_Parent <> nil) and
    not Supports(l_Parent, IvcmFormHandlersPublisher, Result) do
   l_Parent := l_Parent.Parent;
 end;//lp_FindHandlersPublisher

 function lp_FindHandlerWatcher(const aControl: TWinControl): IvcmCloseFormHandlerWatcher;
 var
  l_Parent: TWinControl;
 begin
  Result := nil;
  l_Parent := aControl;
  while (l_Parent <> nil) and
    not Supports(l_Parent, IvcmCloseFormHandlerWatcher, Result) do
   l_Parent := l_Parent.Parent;
 end;//lp_FindHandlerWatcher

var
 l_DockName          : String;
 l_Dock              : TvcmDockDef;
 l_NewDock           : TvcmDockDef;
 l_ParentForm        : TCustomForm;
 l_Index             : TvcmEffectiveToolbarPos;
 l_DockParent        : TWinControl;
 l_HandlersPublisher : IvcmFormHandlersPublisher;
 l_HandlerWatcher    : IvcmCloseFormHandlerWatcher;
begin
 l_lnkMaximized := nil;
 l_lnkOpen := nil;
 l_lnkClose := nil;
 l_ParentForm := lp_GetParentForDock(aForm);
 Result := aForm.FindComponent(aName) As TvcmToolbarDef;
 if (Result = nil) then
 begin
  l_Dock := nil;
  { Получим родителя для Dock }
  l_DockParent := GetDockParent(l_ParentForm);
  for l_Index := Low(TvcmEffectiveToolbarPos) to High(TvcmEffectiveToolbarPos) do
  begin
   if true{(l_Index in l_Poses)} then
   begin
    l_DockName := cTBName[l_Index] + 'Dock';
    l_NewDock := l_DockParent.FindComponent(l_DockName) As TvcmDockDef;
    if (l_NewDock = nil) then
    begin
     l_NewDock := TvcmDockDef.Make(l_DockParent, l_DockName, l_Index);
     l_NewDock.SetFasten(GetFastenMode);
       {$IfDef vcmUseSettings}
      //{$IfDef vcmCustomizeDock} чьё? зачем?
       l_NewDock.PopupMenu := Self.ToolbarPopup;
      //{$EndIf vcmCustomizeDock}
       {$EndIf vcmUseSettings}
        //l_NewDock.OnRequestDock := ToolbarsGetSiteInfo;
     aForm.AddDock(l_NewDock);
    end;//l_NewDock = nil
    if (aPos = l_Index) then
     l_Dock := l_NewDock;
   end;//l_Index in l_Poses
  end;//for l_Index

  if (l_Dock <> nil) then
  begin
   // Установим обработчики кнопок для Dock-а, в случае если не предусмотрен
   // публикатор кнопок:
   if (l_Dock.Align = alTop) then
   begin
    l_HandlersPublisher := lp_FindHandlersPublisher(l_DockParent);
    if (l_HandlersPublisher = nil) then
     l_Dock.SetHandlers(l_lnkMaximized, l_lnkOpen, l_lnkClose)
    else
    if (l_lnkClose <> nil) then
    begin
     Assert((l_lnkMaximized = nil) and (l_lnkOpen = nil));
     l_HandlersPublisher.Publish(l_lnkClose);
    end;//l_lnkClose <> nil
    if Assigned(l_lnkClose) then
    begin
     l_HandlerWatcher := lp_FindHandlerWatcher(l_DockParent);
     if Assigned(l_HandlerWatcher) then
      l_HandlerWatcher.SetWatch(l_lnkClose);
    end;//Assigned(l_lnkClose)
   end;//if (l_Dock.Align = alTop) then
   l_Dock.BeginUpdate;
   try
    Result := TvcmToolbar.Create(aForm, l_Dock);
    with Result do
    begin
     if not (aForm.ZoneType = vcm_ztForToolbarsInfo) then
      Parent := l_Dock; // может ещё что-то не нужно делать при "виртуальном" создании?
     Name := aName;
     Caption := vcmStr(aCaption);
      Weight := GetFormWeight(aForm);
      CloseMode := cmBackOnToolbar;
      DockGroup := Integer(l_DockParent);
      Collapsible := true;
      HideExtraSeparators := true;
      NearestParent := true;
      //{$IfNDef vcmCustomizeDock}
       {$IfDef vcmUseSettings}
       PopupMenu := Self.ToolbarPopup;
       {$EndIf vcmUseSettings}
      //{$EndIf  vcmCustomizeDock}
      //AutoSize := true;
     DragKind := dkDock;
     DragMode := dmManual;
    end;//with Result
   finally
    l_Dock.EndUpdate;
   end;//try..finally
  end;//l_Dock <> nil
 end;//l_Toolbar = nil
end;

function TvcmCustomMenuManager.BuildToolbar(aForm : TvcmEntityForm;
                                            aPos  : TvcmEffectiveToolBarPos): TvcmToolbarDef;
  //overload;
  {-}
var
 l_ToolbarName : String;
begin
 Assert(OneToolbarPerForm);
 Assert(aForm.CurUserTypeDef <> nil);
 if true{(aPos in aForm.Toolbars)} then
 begin
  l_ToolbarName := GetOneToolbarPerFormName(aForm, aPos, 0);
  Result := BuildToolbar(aForm, l_ToolbarName, aForm.CurUserTypeDef.Caption, aPos) ;
 end//aPos in aForm.Toolbars
 else
  Result := nil;
end;
{$EndIf DesignTimeLibrary}
  
function TvcmCustomMenuManager.GetOneToolbarPerFormName(aForm   : TvcmEntityForm;
                                                        aPos    : TvcmEffectiveToolBarPos;
                                                        anIndex : Integer): String;
  {-}
begin
 Result := 'tb' + aForm.FormID.rName + cTBName[aPos];
 if (anIndex > 0) then
  Result := Result + IntToStr(anIndex);
end;

procedure TvcmCustomMenuManager.ReloadToolbars(const aForm  : IvcmEntityForm);
  //override;
  {-}
{$IfDef vcmUseSettings}
var
 l_Form  : TvcmEntityForm;
 l_Index : Integer;
{$EndIf vcmUseSettings}
{$IfDef vcmNeedL3}
var
 l_List  : TvcmLongintList;
{$EndIf vcmNeedL3}
begin
 {$IfDef vcmUseSettings}
 LockDocks;
 try
  LoadGlyphSize;
  LoadGlyphColordepth;
  {$IfDef vcmNeedL3}
  l_Form := aForm.VCLWinControl As TvcmEntityForm;
  l_List := TvcmLongintList.Create;
  try
   with l_Form do
   begin
    for l_Index := 0 to Pred(ComponentCount) do
     if (Components[l_Index] Is TvcmToolbarDef) then
     begin
      TvcmToolbarDef(Components[l_Index]).Hide;
      l_List.Add(longint(Components[l_Index]));
     end;
    for l_Index := 0 to l_List.Count - 1 do
    begin
     RemoveComponent(TvcmToolbarDef(l_List[l_Index]));
     TvcmToolbarDef(l_List[l_Index]).Parent := nil;
     if (Application.MainForm <> nil) and Application.MainForm.HandleAllocated then
      PostMessage(Application.MainForm.Handle, vcm_msgFreeComponent, 0, LParam(l_List[l_Index]))
     else
      TvcmToolbarDef(l_List[l_Index]).Free;
    end;
   end;
  finally
   vcmFree(l_List);
  end;
  {$EndIf vcmNeedL3}
  if (l_Form Is TvcmMainForm) then
  begin
   BuildFormToolbars(l_Form, [vcm_ooShowInMainToolbar]);
   with vcmDispatcher do
    for l_Index := 0 to Pred(ModulesCount) do
     BuildMainToolbars(l_Form, Module[l_Index].ModuleDef);
   MakeMainToolbarFromSettings(l_Form);
  end
  else
   BuildFormToolbars(l_Form, [vcm_ooShowInChildToolbar]);
  if aForm.ZoneType <> vcm_ztForToolbarsInfo then
  begin
   PostBuild(l_Form, true);
  end;
 finally
  UnlockDocks;
 end;
 {$EndIf vcmUseSettings}
end;

function TvcmCustomMenuManager.GetToolbarName(aForm      : TvcmEntityForm;
                                              const aDef : IvcmOperationalIdentifiedUserFriendlyControl;
                                              anIndex    : Integer): String;
  {-}
begin//GetToolbarName
 if OneToolbarPerForm then
  Result := GetOneToolbarPerFormName(aForm, aDef.ToolbarPos, anIndex)
 else
 begin
  Result := aDef.Name;
  Result := 'tb' + Result + cTBName[aDef.ToolBarPos];
  if (anIndex > 0) then
   Result := Result + IntToStr(anIndex);
 end;//OneToolbarPerForm
end;//GetToolbarName

{$IfNDef DesignTimeLibrary}
function TvcmCustomMenuManager.BuildToolbar(aForm      : TvcmEntityForm;
                                            const aDef : IvcmOperationalIdentifiedUserFriendlyControl;
                                            anIndex    : Integer): TvcmToolbarDef;
  {-}
var
 l_ToolbarName : String;
 l_Pos         : TvcmEffectiveToolBarPos;
 l_Caption     : IvcmCString;
begin
 if (aDef = nil) then
  Result := nil
 else
 begin
  l_Pos := aDef.ToolbarPos;
  l_ToolbarName := GetToolbarName(aForm, aDef, anIndex);
  if OneToolbarPerForm then
  begin
   if (aForm.UserTypes <> nil) AND
      (aForm.UserTypes.Count > 0) then
    l_Caption := vcmCStr(aForm.CurUserType.Caption)
   else
    l_Caption := aForm.CCaption;
  end//OneToolbarPerForm
  else
   l_Caption := aDef.Caption;
  Result := BuildToolbar(aForm, l_ToolbarName, l_Caption, l_Pos);
 end;//aDef = nil
end;
{$EndIf DesignTimeLibrary}

{$IfNDef DesignTimeLibrary}
procedure TvcmCustomMenuManager.BuildMainToolbars(aForm            : TvcmEntityForm;
                                                  const aModuleDef : IvcmModuleDef);
  {* - создает Toolbar'ы основной формы. }
var
 l_ExcludePoses : TvcmEffectiveToolBarPoses;
{$IfDef vcmUseSettings}
 l_Len          : Integer;
 l_Pos          : TvcmEffectiveToolBarPos;
 l_BtDef        : TvcmButtonDef;
{$EndIf vcmUseSettings}
begin
 l_ExcludePoses := [];
 {$IfDef vcmUseSettings}
 if OneToolbarPerForm AND (vcm_toModulesInMainToolbar in ToolbarOptions)then
 begin
  for l_Pos := Low(TvcmEffectiveToolBarPos) to High(TvcmEffectiveToolBarPos) do
  begin
   with f_MainToolbarDefs[l_Pos] do
   begin
    if rVisibleLoaded then
    begin
     Include(l_ExcludePoses, l_Pos);
     if rVisible then
     begin
      l_Len := Length(rButtons);
      if (l_Len = 0) then
       l_BtDef.rPos := 0
      else
       l_BtDef.rPos := rButtons[Pred(l_Len)].rPos;
      l_BtDef.rEn := aModuleDef;
      LoadButtonsFromSettings(rUserType, rToolbarName, True, l_BtDef, rButtons);
     end;//rVisible
    end;//rVisibleLoaded
   end;//with f_MainToolbarDefs[l_Pos]
  end;//for l_Pos
 end;//OneToolbarPerForm
 {$EndIf vcmUseSettings}
  if (vcm_toModulesInMainToolbar in ToolbarOptions) then
   MakeToolbar(aForm, aModuleDef, [vcm_ooShowInMainToolbar], l_ExcludePoses);
  if (vcm_toEntitiesInMainToolbar in ToolbarOptions) then
   BuildEntitiesToolbars(aForm, aModuleDef.EntitiesDefIterator, [vcm_ooShowInMainToolbar], l_ExcludePoses);
end;
{$EndIf DesignTimeLibrary}

{$IfNDef DesignTimeLibrary}
function TvcmCustomMenuManager.MakeToolbar(aForm           : TvcmEntityForm;
                                           const aHolder   : IvcmOperationalIdentifiedUserFriendlyControl;
                                           const anOptions : TvcmOperationOptions;
                                           anExcludePoses  : TvcmEffectiveToolBarPoses): Boolean;
  {-}
var
 l_Toolbar    : TvcmToolbarDef;
 l_Operations : IvcmOperationsDefIterator;
begin
 LockDocks;
 try
  if (aHolder = nil) then
   Result := False
  else
  begin
   //Assert(aForm.CurUserType <> nil);
   // - http://mdp.garant.ru/pages/viewpage.action?pageId=378550015
   if (aForm.CurUserType <> nil) AND
      not aForm.CurUserType.CanHaveToolbars then
   begin
    Result := false;
    Exit;
   end;//not aForm.CurUserType.VisibleToUser
   Result := true;
   // - видимо где-то здесь можно "приструячить" цикл по Toolbar'ам формы
   l_Operations := aHolder.OperationsDefIterator;
   if (l_Operations <> nil) then begin
    l_Toolbar := BuildToolbar(aForm, aHolder, 0);
    if GetOpLock and (l_Toolbar <> nil) and (l_Toolbar.DockedTo <> nil) then
     begin
     if TvcmToolbarDockListManager.Instance.DockList.IndexOf(l_Toolbar.DockedTo) < 0 then
     begin
      TvcmToolbarDockListManager.Instance.DockList.Add(l_Toolbar.DockedTo);
      l_Toolbar.DockedTo.BeginUpdate;
     end;
     l_Toolbar.DockedTo.SmartAlign := true;
    end;
    if (l_Toolbar <> nil) AND not (l_Toolbar.Pos in anExcludePoses) then
     FillToolbar(aForm, l_Toolbar, aHolder, l_Operations, anOptions);
   end;//l_Operations <> nil
  end;//aHolder = nil
 finally
  UnlockDocks;
 end;//try..finally
end;
{$EndIf DesignTimeLibrary}

function TvcmCustomMenuManager.BuildButton(aForm             : TvcmEntityForm;
                                           aToolBar          : TvcmToolbarDef;
                                           const aHolder     : IvcmOperationalIdentifiedUserFriendlyControl;
                                           const anOp        : IvcmOperationDef;
                                           const anOpOptions : TvcmOperationOptions;
                                           const anOptions   : TvcmOperationOptions;
                                           const anIconText  : TvcmIconTextType): TControl;
  //overload;
  {-}
var
 l_Module : IvcmModuleDef;
 l_Entity : IvcmEntityDef;
begin
 Supports(aHolder, IvcmModuleDef, l_Module);
 Supports(aHolder, IvcmEntityDef, l_Entity);
 Result := BuildButton(aForm, aToolbar, l_Module, l_Entity, anOp, anOpOptions, anOptions, anIconText)
end;

function TvcmCustomMenuManager.BuildButton(aForm             : TvcmEntityForm;
                                           aToolBar          : TvcmToolbarDef;
                                           const aHolder     : IvcmOperationalIdentifiedUserFriendlyControl;
                                           const anOp        : IvcmOperationDef;
                                           const anOptions   : TvcmOperationOptions;
                                           const anIconText  : TvcmIconTextType): TControl;
  //overload;
  {-}
begin
 if (anOp = nil) then
  Result := nil
 else
  Result := BuildButton(aForm, aToolbar, aHolder, anOp, anOp.Options, anOptions, anIconText)
end;

procedure TvcmCustomMenuManager.CheckToolbar(var  aToolBar: TvcmToolbarDef);
  {-}
begin
 with aToolbar do
  vcmDeleteLastIfSeparator;
 // - удаляем лишний разделитель
 if (aToolBar.ButtonCount <= 0) then
  vcmFree(aToolBar);
end;

//function TvcmCustomMenuManager.MergedToMainForm(aForm: TvcmEntityForm): Boolean;
  //override;
  {-}
//begin
// Result := GetParentForDock(aForm as TvcmEntityForm) is TvcmMainForm;
//end;//MergedToMainForm

procedure TvcmCustomMenuManager.PostBuild(aForm        : TvcmEntityForm;
                                          aFollowDocks : Boolean);
  //override;
  {-}
{$IfDef vcmUseSettings}
var
 l_Index, l_BarIndex : Integer;
 l_Toolbar           : TvcmToolbarDef;
 l_Point             : TPoint;
 //l_TopDock           : TvcmDockDef;
 //l_Form              : TCustomForm;
 l_FollowToolbar     : TvcmToolbarDef;
 l_List              : TList;

 function GetDockName(aDockPos: Cardinal): string;
 begin
  Result:='';
  case TDockPosition(aDockPos) of
   dpTop: Result := cTBName[vcm_tbpTop];
   dpBottom: Result := cTBName[vcm_tbpBottom];
   dpLeft: Result := cTBName[vcm_tbpLeft];
   dpRight: Result := cTBName[vcm_tbpRight];
  end;
  Result := Result+'Dock';
 end;
 {$EndIf vcmUseSettings}

 {$IfDef vcmUseSettings}
 function LoadAndPlaceToolbar(const aUTName  : String;
                              const aToolbar : TvcmToolbarDef): Boolean;
 var
  l_ToolbarPos : TvcmToolbarPositions;
  l_Dock       : TvcmDockDef;
  l_DockParent : TWinControl;
 begin
  Result := vcmLoadToolbarPos(aUTName, aToolbar.Name, l_ToolbarPos);
  l_DockParent := GetDockParent(aForm.DefineDockContainer(aToolbar.Pos));
  if Result then
  begin
   l_Dock := l_DockParent.FindComponent(GetDockName(l_ToolbarPos.rDock)) as TvcmDockDef;
   if (l_Dock <> nil) then
   begin
    if l_ToolbarPos.rFloating {and not GetFastenMode} then
    begin
     l_Point.X := l_ToolbarPos.rFloatX;
     l_Point.Y := l_ToolbarPos.rFloatY;
     aToolbar.FloatingPosition := l_Point;
     aToolbar.DockPos := l_ToolbarPos.rPos;
     aToolbar.DockRow := l_ToolbarPos.rRow;
     aToolbar.FloatingWidth := l_ToolbarPos.rFloatingWidth;
     aToolbar.Parent := l_Dock;
     aToolbar.DockedTo := nil;
    end//if l_ToolbarPos.rFloating
    else
    begin
     l_Dock.BeginUpdate;
     l_Dock.SmartAlign := False;
     aToolbar.Parent := l_Dock;
     l_Point.X := l_ToolbarPos.rFloatX;
     l_Point.Y := l_ToolbarPos.rFloatY;
     aToolbar.FloatingPosition := l_Point;
     aToolbar.DockPos := l_ToolbarPos.rPos;
     aToolbar.DockRow := l_ToolbarPos.rRow;
     aToolbar.FloatingWidth := l_ToolbarPos.rFloatingWidth;
     l_Dock.EndUpdate;
    end;//if l_ToolbarPos.rFloating
   end;//if (l_Dock <> nil) then
  end;//if Result then
 end;//LoadAndPlaceToolbar
 {$EndIf vcmUseSettings}

begin
 inherited;
 {$IfDef vcmUseSettings} 
 LockDocks;
 try
  if (aForm.UserTypes.Count > 0) then
  begin
   l_Index := 0;
   while l_Index < aForm.ComponentCount do
   begin
    if aForm.Components[l_Index] is TvcmToolbarDef then
    begin
     l_Toolbar := aForm.Components[l_Index] as TvcmToolbarDef;
     if GetOpLock and (l_Toolbar.DockedTo <> nil) then
      if TvcmToolbarDockListManager.Instance.DockList.IndexOf(l_Toolbar.DockedTo) < 0 then
      begin
       TvcmToolbarDockListManager.Instance.DockList.Add(l_Toolbar.DockedTo);
       l_Toolbar.DockedTo.BeginUpdate;
      end;
     if aFollowDocks and (l_Toolbar.DockedTo <> nil) then
     begin
      //for l_BarIndex := 0 to l_Toolbar.DockedTo.ToolbarCount-1 do
      //видимо, при установленном BeginUpdate, DockVisibleList(и, как следствие, TOolbarCount)
      //не обновляются.

      // Делаем через временный список, т.к. в Conotols входят и кнопки, которые
      // перекладываются вместе с тулбаром на другой док и изменение ConotolCount
      // может быть более чем на 1...
      l_List := TList.Create;
      try
       for l_BarIndex := l_Toolbar.DockedTo.ControlCount-1 downto 0 do
        if l_Toolbar.DockedTo.Controls[l_BarIndex] is TvcmToolbarDef then
         l_List.Add(l_Toolbar.DockedTo.Controls[l_BarIndex]);
       for l_BarIndex := l_List.Count-1 downto 0 do
       begin
        l_FollowToolbar := TvcmToolbarDef(l_List[l_BarIndex]);
        if l_FollowToolbar.Owner is TvcmEntityForm and
          (TvcmEntityForm(l_FollowToolbar.Owner).UserTypes.Count > 0) then
         LoadAndPlaceToolbar((l_FollowToolbar.Owner as TvcmEntityForm).
          UserTypes[(l_FollowToolbar.Owner as TvcmEntityForm).UserType].Name,
           l_FollowToolbar);
       end;
      finally
       l_List.Free;
      end;
 {
      //Делаем задом наперед - поскольку тулбар может переехать на другой док
      for l_BarIndex := l_Toolbar.DockedTo.ControlCount-1 downto 0 do
       if l_Toolbar.DockedTo.Controls[l_BarIndex] is TvcmToolbarDef then
       begin
        l_FollowToolbar := l_Toolbar.DockedTo.Controls[l_BarIndex] as TvcmToolbarDef;
        if l_FollowToolbar.Owner is TvcmEntityForm and
          (TvcmEntityForm(l_FollowToolbar.Owner).UserTypes.Count > 0) then
         LoadAndPlaceToolbar((l_FollowToolbar.Owner as TvcmEntityForm).
          UserTypes[(l_FollowToolbar.Owner as TvcmEntityForm).UserType].Name,
           l_DockParent, l_FollowToolbar);
       end;}
     end
     else
      LoadAndPlaceToolbar(aForm.UserTypes[aForm.UserType].Name, l_Toolbar);
    end;
    inc(l_Index);
   end;
 (*
    Открутил пока загрузку главного тулбара совместно с текущим
    l_Form := aForm._NativeMainForm.asForm.VCLForm;
    // отсекаем формы, тулбары которых не мержатся в главную форму
    if MergedToMainForm(aForm as TvcmEntityForm) then
    begin
     l_DockParent := GetDockParent(GetParentForDock(l_Form as TvcmEntityForm));
     for l_Index := 0 to l_Form.ComponentCount - 1 do
     begin
      if l_Form.Components[l_Index] is TvcmToolbarDef then
      begin
       l_Toolbar := l_Form.Components[l_Index] as TvcmToolbarDef;

       if not LoadAndPlaceToolbar(aForm.UserTypes[aForm.UserType].Name, l_DockParent, l_Toolbar) then
       begin
       // дефолтное размещение главного тулбара
        l_TopDock := l_DockParent.FindComponent(cTBName[vcm_tbpTop]+'Dock') as TvcmDockDef;
        if l_TopDock <> nil then
        begin
         l_TopDock.BeginUpdate;
         {$EndIf vcmUseTB97}
         l_Toolbar.DockPos := 0;
         l_Toolbar.DockRow := 0;
         l_Toolbar.Parent := l_TopDock;
         {$IfDef vcmUseTB97}
         l_TopDock.EndUpdate;
        end;
       end;
      end;
     end;
    end;
 *)   
  end;

 finally
  UnlockDocks;
 end;
 {$EndIf vcmUseSettings}
end;

procedure TvcmCustomMenuManager.RestoreOpStatus;
var
 l_Index : Integer;
 l_List  : TvcmObjectList;
begin
 inherited;
 BeginOp;
 assert((f_SaveLockCounter.Count > 0) and (f_SaveDockList.Count > 0));
 f_LockCounter := f_SaveLockCounter[f_SaveLockCounter.Count - 1];
 f_SaveLockCounter.Delete(f_SaveLockCounter.Count - 1);

 l_List := TvcmObjectList(f_SaveDockList[f_SaveDockList.Count - 1]).Use;
 try
  f_SaveDockList.Delete(f_SaveDockList.Count - 1);
  TvcmToolbarDockListManager.Instance.DockList.Clear;
  TvcmToolbarDockListManager.Instance.DockList.JoinWith(l_List);
 finally
  vcmFree(l_List);
 end;//try..finally
 for l_Index := 0 to TvcmToolbarDockListManager.Instance.DockList.Count - 1 do
  TvcmDockDef(TvcmToolbarDockListManager.Instance.DockList[l_Index]).BeginUpdate;
end;

function TvcmCustomMenuManager.GetOpLock: Boolean;
begin
 Result := f_LockCounter > 0;
end;

procedure TvcmCustomMenuManager.BackupOpStatus;
var
 l_List: TvcmObjectList;
begin
 f_SaveLockCounter.Add(f_LockCounter);
 l_List:= TvcmObjectList.Make;
 try
  l_List.JoinWith(TvcmToolbarDockListManager.Instance.DockList);
  f_SaveDockList.Add(l_List);
 finally
  vcmFree(l_List);
 end;//try..finally
 f_LockCounter := 1;
 EndOp;
 inherited;
end;

procedure TvcmCustomMenuManager.BeginOp{(aControl: TObject; aStr: string)};
begin
 inherited;
 LockDocks;
end;

procedure TvcmCustomMenuManager.EndOp{(aControl: TObject; aStr: string)};
begin
 UnlockDocks;
 inherited;
end;

function TvcmCustomMenuManager.GetFastenMode: Boolean;
begin
 Result := False;
 {$IfDef vcmUseSettings}
 if f_FastenToolbars = -1 then
  vcmLoadFastenMode(Result)
 else
  Result := f_FastenToolbars = 0;
 {$EndIf vcmUseSettings}

 if Result then
  f_FastenToolbars := 0
 else
  f_FastenToolbars := 1;
end;

procedure TvcmCustomMenuManager.FastenToolbars;

 procedure lp_ChangeToolbarsMode(const aForm      : IvcmEntityForm;
                                 const aCheckMain : Boolean = False);
 var
  l_Count     : Integer;
  l_Index     : Integer;
  l_Container : TvcmDockContainer;
 begin
  //if (aForm.VCLWinControl is TvcmEntityForm) then
   for l_Count := 0 to aForm.VCLWinControl.ComponentCount - 1 do
   begin
    if aForm.VCLWinControl.Components[l_Count] is TvcmDockDef then
     (aForm.VCLWinControl.Components[l_Count] as TvcmDockDef).SetFasten(GetFastenMode)
    else
    if aCheckMain and (aForm.VCLWinControl.Components[l_Count] is TvcmDockContainer) then
    begin
     l_Container := aForm.VCLWinControl.Components[l_Count] as TvcmDockContainer;
     for l_Index := 0 to l_Container.ComponentCount - 1 do
      if l_Container.Components[l_Index] is TvcmDockDef then
       (l_Container.Components[l_Index] as TvcmDockDef).SetFasten(GetFastenMode)
    end;//if aCheckMain
   end;//for l_Count := 0
 end;//lp_ChangeToolbarsMode

 procedure lp_InvertFastenMode;
 begin//lp_InvertFastenMode
  if f_FastenToolbars = -1 then
   GetFastenMode;
  if f_FastenToolbars = 0 then
   f_FastenToolbars := 1
  else
   f_FastenToolbars := 0;
 end;//lp_InvertFastenMode

var
 l_Index : Integer;
 l_Form  : IvcmEntityForm;
begin
 lp_InvertFastenMode;
 with vcmDispatcher do
  for l_Index := 0 to EntitiesCount - 1 do
   if Supports(Entity[l_Index], IvcmEntityForm, l_Form) then
    lp_ChangeToolbarsMode(l_Form);
 with vcmDispatcher do
  for l_Index := 0 to FormDispatcher.MainFormsCount - 1 do
   if Supports(FormDispatcher.MainForm[l_Index], IvcmEntityForm, l_Form) then
    lp_ChangeToolbarsMode(l_Form, True);
 {$IfDef vcmUseSettings}
 vcmSaveFastenMode(GetFastenMode);
 {$EndIf vcmUseSettings}
end;

procedure TvcmCustomMenuManager.FillToolbar(aForm              : TvcmEntityForm;
                                            var aToolBar       : TvcmToolbarDef;
                                            const aHolder      : IvcmOperationalIdentifiedUserFriendlyControl;
                                            const anOperations : IvcmOperationsDefIterator;
                                            const anOptions    : TvcmOperationOptions);
  {-}
begin
 if (aToolBar <> nil) then
 begin
  if OneToolbarPerForm then
   BuildSeparator(aToolbar);
  aToolbar.BeginUpdate;
  try
   while (BuildButton(aForm, aToolbar, aHolder, anOperations.Next, anOptions) <> nil) do ;
  finally
   aToolbar.EndUpdate;                                                                             
  end;//try..finally
  CheckToolbar(aToolbar);
 end;//aToolBar <> nil
end;

  {$IfDef vcmUseSettings}
function TvcmCustomMenuManager.LoadButtonsFromSettings(const aUserType : IvcmUserTypeDef;
                                                       const aToolbar  : String;
                                                       AddUnsavedButton: Boolean;
                                                       var theButton   : TvcmButtonDef;
                                                       var theButtons  : TvcmButtonDefs): Boolean;

 procedure l_AddButton;

 var
  l_Len : Integer;

  procedure l_InsertButton(anIndex: Integer);
  var
   l_Index      : Integer;
   l_NewButtons : TvcmButtonDefs;
   l_MaxPos     : Integer;
  begin//l_InsertButton
   if not theButtons[anIndex].rLoaded then
    l_MaxPos := theButton.rPos
   else
    l_MaxPos := -1;

   SetLength(l_NewButtons, Succ(l_Len));
   for l_Index := 0 to Pred(anIndex) do
    l_NewButtons[l_Index] := theButtons[l_Index];

   for l_Index := anIndex to Pred(l_Len) do
   begin
    l_NewButtons[l_Index + 1] := theButtons[l_Index];
    if l_MaxPos > -1 then
     l_NewButtons[l_Index + 1].rPos := l_MaxPos + l_Index - anIndex + 1;
   end;
   l_NewButtons[anIndex] := theButton;   
   theButtons := l_NewButtons;
  end;//l_InsertButton

 var
  l_Index : Integer;
 begin//l_AddButton
  l_Len := Length(theButtons);
  if theButton.rLoaded then
   for l_Index := 0 to Pred(l_Len) do
    if (theButtons[l_Index].rPos > theButton.rPos) or
       (not theButtons[l_Index].rLoaded) then
    begin
     l_InsertButton(l_Index);
     Exit;
    end;//theButtons[l_Index].rPos > theButton.rPos
  SetLength(theButtons, Succ(l_Len));
  theButtons[l_Len] := theButton;
  if (not theButton.rLoaded) and
     (l_Len > 0) then
   theButtons[l_Len].rPos := theButtons[l_Len - 1].rPos + 1;   
 end;//l_AddButton

var
 l_Operations       : IvcmOperationsDefIterator;
 l_Bt               : TvcmButtonParams;
 l_NotLoadedNeedSep : Boolean;
begin
 if (theButton.rEn = nil) then
  Result := False
 else
 begin
  Result := true;
  l_NotLoadedNeedSep := true;

  theButton.rNeedSep := true;
  theButton.rIconText := False;
  // - каждая сущность по умолчанию открывает группу
  l_Operations := theButton.rEn.OperationsDefIterator;
  if (l_Operations <> nil) then
  begin
   while true do
   begin
    theButton.rOp := l_Operations.Next;
    if (theButton.rOp = nil) then
     break;
    if (theButton.rOp.OperationType in vcmToolbarOpTypes) then
    begin
     if vcmLoadButtonParams(aUserType.Name, aToolbar,
                            theButton.rEn.Name, theButton.rOp.Name, l_Bt) then
     begin
      if l_Bt.rVisible then
      begin
       if (l_Bt.rPos = High(Cardinal)) then
        theButton.rPos := Succ(theButton.rPos)
       else
        theButton.rPos := l_Bt.rPos;
       theButton.rOptions := vcm_AllOperationOptions;
       // - показываем независимо от настроек по умолчанию
       theButton.rNeedSep := l_Bt.rNeedSep;
       theButton.rIconText := l_Bt.rIconText;
       theButton.rLoaded := True;
       // - это тоже надо из настроек читать
      end//l_Bt.rVisible
      else
       continue;
      end//vcmLoadButtonParams
     else
     begin
      if not AddUnsavedButton then
       Continue;
      if l_NotLoadedNeedSep then
      begin
       theButton.rNeedSep := True;      
       l_NotLoadedNeedSep := False;
      end;
      theButton.rPos := Succ(theButton.rPos);
      theButton.rOptions := theButton.rOp.Options;
      theButton.rIconText := theButton.rOp.OperationType = vcm_otTextButton;
      theButton.rLoaded := False;
     end;//vcmLoadButtonParams
     l_AddButton;
     theButton.rNeedSep := False;
     // - скидываем флаг по умолчанию
    end;//theButton.rOp.OperationType in vcmToolbarOpTypes
   end;//while true
  end;//l_Operations <> nil
 end;//theButton.rEn = nil
end;

procedure TvcmCustomMenuManager.MakeToolbarFromSettings(aForm                  : TvcmEntityForm;
                                                        const aToolbarName     : String;
                                                        aPos                   : TvcmEffectiveToolBarPos;
                                                        const anOptions        : TvcmOperationOptions;
                                                        const theButtons       : TvcmButtonDefs);
  {-}
var
 l_Index: Integer;
 l_Toolbar: TvcmToolbarDef;
begin
 if (Length(theButtons) > 0) then
 // http://mdp.garant.ru/pages/viewpage.action?pageId=235876230&focusedCommentId=236718542#comment-236718542
 begin
  l_Toolbar := BuildToolbar(aForm, aToolbarName, aForm.CurUserTypeDef.Caption, aPos);
  if (l_Toolbar <> nil) and
     (l_Toolbar.DockedTo <> nil) and
     GetOpLock and
     (TvcmToolbarDockListManager.Instance.DockList.IndexOf(l_Toolbar.DockedTo) < 0) then
  begin
   TvcmToolbarDockListManager.Instance.DockList.Add(l_Toolbar.DockedTo);
   l_Toolbar.DockedTo.BeginUpdate;
  end;

  for l_Index := Low(theButtons) to High(theButtons) do
  begin
   with theButtons[l_Index] do
   begin
    if rNeedSep then
     BuildSeparator(l_Toolbar);
    if rIconText then
     BuildButton(aForm, l_Toolbar, rEn, rOp, rOptions, anOptions, vcm_itIconText)
    else
     BuildButton(aForm, l_Toolbar, rEn, rOp, rOptions, anOptions, vcm_itIcon)
   end;//with theButtons[l_Index]
  end;//for l_Index
  CheckToolbar(l_Toolbar);
 end;//Length(l_BtDefs) > 0
end;
{$EndIf vcmUseSettings}

{$IfNDef DesignTimeLibrary}
procedure TvcmCustomMenuManager.BuildFormToolbars(aForm            : TvcmEntityForm;
                                                  const anOptions  : TvcmOperationOptions);
  {-}
var
 l_ExcludePoses : TvcmEffectiveToolBarPoses;
{$IfDef vcmUseSettings}
 l_ToolbarName      : String;
 l_UserType         : IvcmUserTypeDef;
 l_Pos              : TvcmEffectiveToolBarPos;
 //l_Poses            : TvcmToolbarPoses;
 l_Entities         : IvcmEntitiesDefIterator;
 l_BtDef            : TvcmButtonDef;
 l_BtDefs           : TvcmButtonDefs;
 l_ToolbarVis       : Boolean;
{$EndIf vcmUseSettings}
begin
 LockDocks;
 try
  l_ExcludePoses := [];
  {$IfDef vcmUseSettings}
  if OneToolbarPerForm then
  begin
   // - проверка бредовая, просто я пока не понимаю как грузить несколько Toolbar'ов
   l_UserType := aForm.CurUseToolbarOfUserType;
   if (l_UserType <> nil) then
   begin
    if not vcmIsNil(l_UserType.Caption) then
    begin
     //l_Poses := aForm.Toolbars;
     for l_Pos := Low(TvcmEffectiveToolBarPos) to High(TvcmEffectiveToolBarPos) do
     begin
      if (aForm Is TvcmMainForm) then
      begin
       with f_MainToolbarDefs[l_Pos] do
       begin
        rVisibleLoaded := False;
        rVisible := False;
        rUserType := l_UserType;
       end;//with f_MainToolbarDefs[l_Pos]
      end;
      if true{(l_Pos in l_Poses)} then
      begin
       l_ToolbarName := GetOneToolbarPerFormName(aForm, l_Pos, 0);
       if (aForm Is TvcmMainForm) then
       begin
        with f_MainToolbarDefs[l_Pos] do
        begin
         rToolbarName := l_ToolbarName;
        end;//with f_MainToolbarDefs[l_Pos]
       end;//aForm Is TvcmMainForm
       if vcmLoadToolbarVisible(l_UserType.Name, l_ToolbarName, l_ToolbarVis) then
       begin
        if (aForm Is TvcmMainForm) then
        begin
         with f_MainToolbarDefs[l_Pos] do
         begin
          rVisibleLoaded := true;
          rVisible := l_ToolbarVis;
         end;//with f_MainToolbarDefs[l_Pos]
        end;//aForm Is TvcmMainForm
        Include(l_ExcludePoses, l_Pos);
        if l_ToolbarVis then
        begin
         l_BtDef.rPos := 0;
         l_Entities := aForm.GetEntitiesDefIterator;
         if (l_Entities <> nil) then
         begin
          while true do
          begin
           l_BtDef.rEn := l_Entities.Next;
           if not LoadButtonsFromSettings(l_UserType,
                                          l_ToolbarName,
                                          Assigned(l_BtDef.rEn) and (l_Pos = l_BtDef.rEn.ToolBarPos),
                                          l_BtDef,
                                          l_BtDefs) then
            break;
          end;//while true
          if (aForm Is TvcmMainForm) then
           f_MainToolbarDefs[l_Pos].rButtons := l_BtDefs
          else
           MakeToolbarFromSettings(aForm, l_ToolbarName, l_Pos, anOptions, l_BtDefs);
          l_BtDefs := nil;
         end;//l_Entities <> nil
        end;//l_ToolbarVis
       end;//vcmToolbarVisible
      end;//l_Pos in l_Poses
     end;//for l_Pos
    end;//not vcmIsNil(l_UserType.Caption)
   end;//l_UserType <> nil
  end;//OneToolbarPerForm
  {$EndIf vcmUseSettings}
  BuildEntitiesToolbars(aForm, aForm.GetEntitiesDefIterator, anOptions, l_ExcludePoses);
 finally
  UnlockDocks;
 end;//try..finally
end;
{$EndIf DesignTimeLibrary}

procedure TvcmCustomMenuManager.OverridePopupMenu(const aForm: TCustomForm);

 procedure lp_SetComponentPopup(aComponent: TComponent);
 var
  l_PropInfo : PPropInfo;
 begin//SetComponentPopup
  l_PropInfo := GetPropInfo(aComponent, 'PopupMenu');
  if (l_PropInfo <> nil) then begin
   if (GetObjectProp(aComponent, l_PropInfo) = nil) then begin
    // - не затираем чужое меню
    if (f_Popup  = nil) then begin
     f_Popup := TvcmPopupMenu.Create(Self);
     f_Popup.AutoHotkeys := maManual;
     {$IfNDef DesignTimeLibrary}
     {$IfDef l3HackedVCL}
     f_Popup.DrawGraphicChecks := true;
     {$EndIf l3HackedVCL}
     {$EndIf DesignTimeLibrary}
     f_Popup.OnPopup := DoPopup;
     f_Popup.AutoLineReduction := maAutomatic;
     if (Self.SmallImages <> nil) then
      f_Popup.Images := Self.SmallImages
     else
     if (Actions <> nil) then
      f_Popup.Images := Actions.Images;
    end;//f_Popup  = nil
    SetObjectProp(aComponent, l_PropInfo, f_Popup);
    l_PropInfo := GetPropInfo(aComponent, 'AutoPopup');
    if (l_PropInfo <> nil) then
     SetOrdProp(aComponent, l_PropInfo, Ord(true));
   end;//GetObjectProp(aComponent, l_PropInfo) = nil
  end;//l_PropInfo <> nil
 end;//SetComponentPopup

var
 l_Index : Integer;
begin
 with aForm do
  for l_Index := 0 to Pred(ComponentCount) do
   lp_SetComponentPopup(Components[l_Index]);
end;

{$IfNDef DesignTimeLibrary}
procedure TvcmCustomMenuManager.BuildEntitiesToolbars(aForm            : TvcmEntityForm;
                                                      const anEntities : IvcmEntitiesDefIterator;
                                                      const anOptions  : TvcmOperationOptions;
                                                      anExcludePoses   : TvcmEffectiveToolBarPoses);
  {-}
begin
 if (anEntities <> nil) then
  while MakeToolbar(aForm, anEntities.Next, anOptions, anExcludePoses) do ;
end;
{$EndIf DesignTimeLibrary}

{$IfNDef DesignTimeLibrary}
procedure TvcmCustomMenuManager.RegisterChildInMenu(aForm: TvcmEntityForm);
  //override;
  {* - регистрирует дочернюю форму в меню, toolbar'ах, etc. Для перекрытия в потомках. }

 procedure BuildMainMenu;
 var
  l_Item       : TMenuItem;
  l_Main       : TMenuItem;
  l_GroupIndex : Integer;
 begin//BuildMainMenu
  if not (vcm_moEntitiesInMainMenu in MenuOptions) AND
    (vcm_moEntitiesInChildMenu in MenuOptions) then begin
   l_Main := vcmGetMainMenu(Application.MainForm);
   with l_Main do
    l_GroupIndex := Items[Pred(Count)].GroupIndex;
   l_Item := vcmGetMainMenu(aForm);
   vcmMakeEntitiesMenus(l_Item, aForm.GetEntitiesDefIterator, [vcm_ooShowInChildMenu], False, vcm_icNotFound, l_Main);
   l_Item.Items[0].GroupIndex := Succ(l_GroupIndex);
  end;//not NeedMainEntitiesMenu
 end;//BuildMainMenu

begin
 (* Удаляем windows окно, чтобы во время долгосрочных операций построения меню и
    toolbar-ов окна не прорисовывались. Окно формы восстанавливается в
    TvcmEntityForm.Make *)
 //THackWinControl(aForm).DestroyHandle;
 OverridePopupMenu(aForm);
 BuildMainMenu;
 if (vcm_toEntitiesInChildToolbar in ToolbarOptions) then
  BuildFormToolbars(aForm, [vcm_ooShowInChildToolbar]);
end;
{$EndIf DesignTimeLibrary}

procedure TvcmCustomMenuManager.pm_SetActions(anActions: TCustomActionList);
  {-}
begin
 if (f_Actions <> anActions) then begin
  f_Actions := anActions;
  vcmMenus.vcmSetActionList(f_Actions);
 end;//f_Actions <> anActions
end;

procedure TvcmCustomMenuManager.pm_SetDockButtonsImageList(const Value : TCustomImageList);
begin
 f_DockButtonsImageList := Value;
end;

procedure TvcmCustomMenuManager.pm_SetMainMenuItems(aValue: TvcmMenuItemsCollection);
  {-}
begin
 f_MainMenuItems.Assign(aValue);
end;

procedure TvcmCustomMenuManager.DoPopup(Sender: TObject);
  {-}
var
 l_Form : TCustomForm;
begin
 l_Form := afw.GetParentForm(f_Popup.PopupComponent);
 if (l_Form Is TvcmEntityForm) then
 begin
  f_PopupForm := TvcmEntityForm(l_Form);
  f_Popup.Items.Clear;
  vcmMakeEntitiesMenus(f_Popup.Items,
                       TvcmEntitiesDefIteratorForContextMenu.Make(f_PopupForm.GetEntitiesDefIterator),
                       [vcm_ooShowInContextMenu],
                       not (vcm_moEntitesInContextMenu in MenuOptions),
                       vcm_icExternal,
                       nil,
                       CheckPopup);
 end;//l_Form Is TvcmEntityForm
end;

type
  THackPopupMenu = class(TMenu)
  private
    FPopupPoint: TPoint;
  end;//THackPopupMenu

  THackControl = class(TControl);
  
function TvcmCustomMenuManager.FillPopupMenu(aPopupPoint : TPoint;
                                             aPopupComponent : TComponent): TvcmPopupMenu;
  {-}
begin
 Result := f_Popup;
 if (aPopupComponent is TControl) then
  if PtInRect(TControl(aPopupComponent).ClientRect, aPopupPoint) then
   THackPopupMenu(Result).FPopupPoint := TControl(aPopupComponent).ClientToScreen(aPopupPoint)
  else
  begin
   repeat
    with aPopupPoint, TControl(aPopupComponent) do
    begin
     X := X + Left;
     Y := Y + Top;
     aPopupComponent := Parent;
    end;
   until Assigned(aPopupComponent) and (aPopupComponent is TControl) and (THackControl(aPopupComponent).GetPopupMenu <> nil);
   FillPopupMenu(aPopupPoint, aPopupComponent);
   Exit;
  end
 else
  THackPopupMenu(Result).FPopupPoint := aPopupPoint;
 f_Popup.PopupComponent := aPopupComponent;
 DoPopup(f_Popup);
 {$IfNDef DesignTimeLibrary}
 {$IfDef l3HackedVCL}
 f_Popup.Items.CallInitiateActions;
 {$EndIf l3HackedVCL}
 {$EndIf  DesignTimeLibrary}
 f_Popup.Items.RethinkHotkeys;
 f_Popup.Items.RethinkLines;
end;

function TvcmCustomMenuManager.CheckPopup(const anEntityDef: IvcmEntityDef): IvcmEntity;
  {-}
begin
 with f_Popup, f_PopupForm do
  if (PopupComponent Is TControl) then
   with TControl(PopupComponent).ScreenToClient(PopupPoint) do
    Result := GetInnerForControl(anEntityDef.ID, PopupComponent, X, Y)
  else
   Result := GetInnerForControl(anEntityDef.ID, PopupComponent);
end;

procedure TvcmCustomMenuManager.CleanupSaveDockList(anItem: TvcmDockDef);
var
 I: Integer;
 lList: TvcmObjectList;
begin
 for I := 0 to f_SaveDockList.Count-1 do
 begin
  if f_SaveDockList[I] is TvcmObjectList then
  begin
   lList := TvcmObjectList(f_SaveDockList[I]);
   lList.Remove(anItem);
  end;
 end;
end;

procedure TvcmCustomMenuManager.LoadGlyphSize(aDefault : Boolean = False);
var
 l_Size: Cardinal;
 l_IDX: TvcmGlyphSize;
begin
 {$IfDef vcmUseSettings}
 if vcmLoadCardinalParam([vcmPathPair('GlyphSize')], l_Size, aDefault) then
  for l_IDX := Low(TvcmGlyphSize) to High(TvcmGlyphSize) do
   if c_GlyphSizeMap[l_IDX] = l_Size then
   begin
    GlyphSize := l_IDX;
    Break;
   end;
 {$EndIf}
end;

procedure TvcmCustomMenuManager.LoadGlyphColordepth(aDefault : Boolean = False);
var
 l_Size: Cardinal;
begin
 {$IfDef vcmUseSettings}
 if vcmLoadCardinalParam([vcmPathPair('GlyphColordepth')], l_Size, aDefault) then
  GlyphColordepth := TvcmGlyphColordepth(l_Size);
 {$EndIf}
end;

procedure TvcmCustomMenuManager.pm_SetGlyphSize(const Value: TvcmGlyphSize);
begin
 if f_GlyphSize <> Value then
 begin
  f_GlyphSize := Value;
  if Assigned(f_OnGlyphSizeChanged) then
   f_OnGlyphSizeChanged(Self);
 end;
end;

procedure TvcmCustomMenuManager.pm_SetGlyphColordepth(const Value: TvcmGlyphColordepth);
begin
 // Присваиваем всегда. Это делается для того, чтобы работало автоопределение.
 f_GlyphColordepth := Value;
 if Assigned(f_OnGlyphColordepthChanged) then
  f_OnGlyphColordepthChanged(Self);
end;

procedure TvcmCustomMenuManager.RestoreGlyphSize;
begin
 LoadGlyphSize(True);
end;

procedure TvcmCustomMenuManager.RestoreGlyphColordepth;
begin
 LoadGlyphColordepth(True);
end;

procedure TvcmCustomMenuManager.StoreGlyphSize;
begin
 {$IfDef vcmUseSettings}
 vcmSaveCardinalParam([vcmPathPair('GlyphSize')], c_GlyphSizeMap[GlyphSize]);
 {$EndIf}
end;

procedure TvcmCustomMenuManager.StoreGlyphColordepth;
begin
 {$IfDef vcmUseSettings}
 vcmSaveCardinalParam([vcmPathPair('GlyphColordepth')], Ord(GlyphColordepth));
 {$EndIf}
end;


// start class TvcmToolButtonDef

function TvcmToolButtonDef.HackCheck: Boolean;
  //override;
  {-}
begin
 Result := False;
end;

function TvcmToolButtonDef.NeedAutoDown: Boolean;
  //override;
  {-}
begin
 Result := False;
end;

function TvcmToolButtonDef.AutoAllUp: Boolean;
  //override;
  {-}
begin
 Result := true;
end;

function TvcmToolButtonDef.GetActionLinkClass: TControlActionLinkClass;
  //override;
  {-}
begin
 Result := TvcmToolButtonDefActionLink;
end;

function TvcmToolButtonDef.IsIconText: Boolean;
  {-}
begin
 Result := DisplayMode= dmBoth;
end;

// start class TvcmToolButtonDefActionLink

destructor TvcmToolButtonDefActionLink.Destroy;
  //override;
begin
 inherited;
end;

procedure RequestClearPopup(aPopup : TPopupMenu);
begin
 if (Application.MainForm <> nil) then
  PostMessage(Application.MainForm.Handle, vcm_msgClearPopup, 0, LParam(aPopup));
end;

procedure TvcmToolButtonDefActionLink.ParamsChanged(const anAction: IvcmAction);
  {-}
  
 procedure DoButtonPopup(aButton: TvcmToolButtonDef);
   {-}
 var
  l_Popup : TPopupMenu;
 begin
  with aButton do
  begin
   l_Popup := DropdownMenu;
   if not anAction.HasInfoForCombo then
   begin
    if (l_Popup <> nil) then
    begin
     DropdownMenu := nil;
     if (l_Popup.Owner <> nil) then
      l_Popup.Owner.RemoveComponent(l_Popup);
     RequestClearPopup(l_Popup);
    end;//l_Popup <> nil
    Exit;
   end;//not anAction.HasInfoForCombo
   if (l_Popup = nil) then
   begin
    l_Popup := TvcmButtonPopupMenu.Create(aButton);
    {$IfNDef DesignTimeLibrary}
    {$IfDef l3HackedVCL}
    l_Popup.DrawGraphicChecks := true;
    {$EndIf l3HackedVCL}
    {$EndIf DesignTimeLibrary}
    DropdownMenu := l_Popup;
   end;//l_Popup = nil
  end;//with aButton
  l_Popup.Items.Clear;
  vcmMakeComboMenu(TvcmAction(Action), l_Popup.Items);
 end;

var
 l_Form : TafwCustomForm;
 l_MF   : IvcmEntityForm;
begin
 if not vcmDispatcher.InOp(true) AND
    (Action Is TvcmOperationAction) AND
    (TvcmOperationAction(Action).OpDef.OperationType in vcm_ComboOperations) AND
    (Action.ActionComponent = nil) then
 begin
  l_Form := afw.GetTopParentForm(FClient);
  if (l_Form <> nil) then
  begin
   l_MF := vcmDispatcher.FormDispatcher.CurrentMainForm;
   if (l_MF.VCLWinControl = l_Form) then
    try
     DoButtonPopup(FClient As TvcmToolButtonDef);
    except
     FClient := nil;
     try
      l3System.Msg2Log('TvcmToolButtonDefActionLink.ParamsChanged fail');
      l3System.Msg2Log(TvcmOperationAction(Self.Action).Caption);
      l3System.Msg2Log(Self.Action.Name);
     except
      l3System.Msg2Log('TvcmToolButtonDefActionLink.ParamsChanged info fail');
     end;//try..except
    end;//try..except
  end;//l_Form <> nil
 end;//not vcmDispatcher.InOp(true)
end;

procedure TvcmToolButtonDefActionLink.ParamsChanging(const anAction: IvcmAction);
  {-}
begin
end;

// start class TvcmPopupMenu

procedure TvcmPopupMenu.ClearInPopup;
  {-}
begin
 f_InPopup := false;
end;
  
procedure TvcmPopupMenu.Popup(X, Y: Integer);
  //override;
  {-}
begin
 f_InPopup := true;
 inherited;
 RequestClearPopup(Self);
end;

function TvcmPopupMenu.IsShortCut(var Message: TWMKey): Boolean;
  //override;
   {-}
begin
 if f_InPopup then
  Result := inherited IsShortCut(Message)
 else
 begin
  Result := false;
  RequestClearPopup(Self);
 end;//f_InPopup 
end;

initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\gui\Garant\VCM\implementation\Components\vcmMenuManager.pas initialization enter'); {$EndIf}
 {$IfNDef DesignTimeLibrary}
 TtfwClassRef.Register(TvcmToolbar);
 TtfwClassRef.Register(Ttb97MoreButton);
 TtfwClassRef.Register(TvcmComboBox);
 {$If (not Defined(nsTest) OR Defined(InsiderTest)) AND not Defined(nsTool) AND Defined(Nemesis) AND not Defined(NewGen)}
 TtfwClassRef.Register(TnscTasksPanelTreeView);
 {$IfEnd}
 {$EndIf DesignTimeLibrary}
 g_InternalButton := TvcmToolButtonDef.Create(nil);

{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\gui\Garant\VCM\implementation\Components\vcmMenuManager.pas initialization leave'); {$EndIf}
finalization
 vcmFree(g_InternalButton);

end.

