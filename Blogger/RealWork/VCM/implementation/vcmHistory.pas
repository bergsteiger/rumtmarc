unit vcmHistory;
{* Объект, реализующий работу с историей приложения. }

{ Библиотека "vcm"        }
{ Автор: Люлин А.В. ©     }
{ Модуль: vcmHistory -    }
{ Начат: 06.06.2003 15:58 }
{ $Id: vcmHistory.pas,v 1.185 2012/10/26 14:14:26 lulin Exp $ }

// $Log: vcmHistory.pas,v $
// Revision 1.185  2012/10/26 14:14:26  lulin
// {RequestLink:406489593}
//
// Revision 1.184  2012/09/29 15:24:43  lulin
// {RequestLink:397301416}
//
// Revision 1.183  2012/09/29 10:20:53  lulin
// {RquestLink:397279284}
//
// Revision 1.182  2012/09/29 09:13:43  lulin
// - чистка кода.
//
// Revision 1.181  2012/07/11 18:25:09  lulin
// {RequestLink:237994598}
//
// Revision 1.180  2012/07/10 12:27:03  lulin
// {RequestLink:237994598}
//
// Revision 1.179  2012/07/04 15:22:31  lulin
// - переименовываем безликое поле, чтобы хоть как-то было понятно.
//
// Revision 1.178  2012/05/29 14:28:44  lulin
// {RequestLink:367212011}
//
// Revision 1.177  2012/04/13 14:37:25  lulin
// {RequestLink:237994598}
//
// Revision 1.176  2012/04/09 08:38:54  lulin
// {RequestLink:237994598}
// - думаем о VGScene.
//
// Revision 1.175  2012/02/08 15:06:50  lulin
// - защищаемся от падений при очистки истории в тестах.
//
// Revision 1.174  2012/02/01 17:25:10  lulin
// {RequestLink:332566811}
//
// Revision 1.173  2012/02/01 16:20:23  lulin
// {RequestLink:332566005}
//
// Revision 1.172  2012/01/27 17:49:44  lulin
// {RequestLink:321989072}
//
// Revision 1.171  2012/01/25 18:31:40  lulin
// {RequestLink:326773370}
// - вставляем Assert в странную ветку логики.
//
// Revision 1.170  2012/01/25 16:43:02  lulin
// {RequestLink:326773370}
//
// Revision 1.169  2012/01/24 16:30:02  lulin
// {RequestLink:330139744}
// - вставляем диагностику на предмет того, что формы не могут иметь одинаковые идентификаторы.
// - избавляемся от нетипизированных списков.
//
// Revision 1.168  2011/10/24 10:12:00  gensnet
// http://mdp.garant.ru/pages/viewpage.action?pageId=268347831
//
// Revision 1.167  2011/09/28 09:19:23  lulin
// {RequestLink:284164589}.
//
// Revision 1.166  2011/06/15 12:15:26  lulin
// {RequestLink:267324195}.
//
// Revision 1.165  2011/04/21 13:06:04  lulin
// {RequestLink:236719181}.
//
// Revision 1.164  2011/03/28 17:19:55  lulin
// {RequestLink:257393788}.
//
// Revision 1.163  2011/03/25 17:28:53  lulin
// {RequestLink:259168102}.
//
// Revision 1.162  2010/06/21 11:09:39  lulin
// {RequestLink:219121927}.
// - неправильная логика - это не повод для падений.
//
// Revision 1.161  2010/04/30 15:15:42  lulin
// {RequestLink:207389954}.
// - чистка комментариев.
//
// Revision 1.160  2010/03/10 12:48:39  lulin
// {RequestLink:193826739}.
//
// Revision 1.159  2010/03/04 12:13:52  lulin
// {RequestLink:193826739}.
//
// Revision 1.158  2010/02/02 16:09:43  lulin
// {RequestLink:185828256}. Попытка анализа ситуации.
//
// Revision 1.157  2009/10/20 17:30:06  lulin
// {RequestLink:159360578}. №4.
//
// Revision 1.156  2009/10/16 15:14:24  lulin
// {RequestLink:159360578}. №52.
//
// Revision 1.155  2009/10/16 11:19:53  lulin
// - вычищаем очередного коня в вакууме.
//
// Revision 1.154  2009/10/01 15:59:30  lulin
// {RequestLink:159360578}. №47.
//
// Revision 1.153  2009/09/30 15:22:58  lulin
// - убираем ненужное приведение ко вполне понятным интерфейсам.
//
// Revision 1.152  2009/08/13 13:38:54  lulin
// - вставляем assert на ненужные данные.
//
// Revision 1.151  2009/08/12 12:09:48  lulin
// - правильнее определяем зону формы.
//
// Revision 1.150  2009/08/06 16:08:13  lulin
// {RequestLink:159352843}.
//
// Revision 1.149  2009/05/20 10:27:22  migel
// - add: обрезание истории при шаге назад.
//
// Revision 1.148  2009/04/21 12:47:49  lulin
// [124453728]. Обрабатываем Back/Forward.
//
// Revision 1.147  2009/03/24 14:19:47  oman
// - fix: Боремся с историей и оптимизацией создания сборок - [$140281380]
//
// Revision 1.146  2009/03/06 10:01:40  oman
// - fix: При утилизации форм не сообщали об укладке в историю (К-138547424)
//
// Revision 1.145  2009/02/20 15:18:56  lulin
// - <K>: 136941122.
//
// Revision 1.144  2009/02/20 10:08:34  lulin
// - чистка комментариев.
//
// Revision 1.143  2009/02/16 12:59:41  lulin
// - <K>: 135604584.
//
// Revision 1.142  2009/02/12 16:06:46  lulin
// - <K>: 135604584. Выделен модуль локализации.
//
// Revision 1.141  2009/02/12 12:26:37  lulin
// - <K>: 135604584. Выделен новый интерфейсный модуль.
//
// Revision 1.140  2009/02/10 10:05:36  oman
// - fix: При утилизации форм сносим им сначала ds (К-136262540)
//
// Revision 1.139  2009/01/30 13:51:32  lulin
// - чистка кода.
//
// Revision 1.138  2008/12/12 19:19:23  lulin
// - <K>: 129762414.
//
// Revision 1.137  2008/05/14 12:46:24  mmorozov
// - new behaviour: при возврате по истории проверяем необходимость показа вкладки предупреждения (CQ: OIT5-29048);
//
// Revision 1.136  2008/03/20 09:48:17  lulin
// - cleanup.
//
// Revision 1.135  2008/03/19 14:23:42  lulin
// - cleanup.
//
// Revision 1.134  2008/02/07 19:13:02  lulin
// - избавляемся от излишне универсальных методов базовых списков.
//
// Revision 1.133  2008/02/07 15:41:24  lulin
// - базовый класс списков переехал в отдельный модуль.
//
// Revision 1.132  2008/01/31 18:53:32  lulin
// - избавляемся от излишней универсальности списков.
//
// Revision 1.131  2007/12/21 07:34:33  mmorozov
// - new: подписка на уведомление об обновлении данных (CQ: OIT5-27823);
//
// Revision 1.130  2007/07/17 08:28:23  oman
// - fix: Некорректная обработка vcmParams.ItemIndex (cq25684)
//
// Revision 1.129  2007/06/28 14:56:11  lulin
// - cleanup.
//
// Revision 1.128  2007/06/22 13:09:42  mmorozov
// - new behaviour: на время нахождения сборки в истории запрещаем выполнять обновление представления, при этот все поступающие запросы на обновление регистрируются и будут выполнены когда сборку откроют из истории, после загрузки всех форм (в рамках CQ: OIT5-25280, по плану изменений описанному в K<7438844>);
//
// Revision 1.127  2007/05/21 13:33:16  lulin
// - cleanup.
//
// Revision 1.126  2007/05/08 14:18:37  demon
// - new: property IvcmHistory.InProcess - история находится в процессе сохранения (между сколбками _Start-Finish)
//
// Revision 1.125  2007/04/10 13:29:07  lulin
// - bug fix: не собиралась библиотека.
//
// Revision 1.124  2007/03/20 07:50:38  lulin
// - теперь у формы заголовок поддерживает различные кодировки (отрисовка пока не изменена).
//
// Revision 1.123  2007/03/12 12:36:18  lulin
// - cleanup.
//
// Revision 1.122  2007/02/12 16:40:27  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.121  2007/02/02 12:25:37  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.120  2007/01/20 19:11:34  lulin
// - запрещаем править поле с данными у параметров.
//
// Revision 1.119  2007/01/20 15:31:07  lulin
// - разделяем параметры операции для выполнения и для тестирования.
//
// Revision 1.118  2007/01/18 11:47:38  oman
// - new: Локализация библиотек - vcm (cq24078)
//
// Revision 1.117  2007/01/17 18:47:31  lulin
// - сужаем список параметров для тестирования операции.
//
// Revision 1.116  2007/01/10 13:58:44  lulin
// - от параметра по индексу переходим к свойству в параметрах операции.
//
// Revision 1.115  2007/01/10 11:57:50  lulin
// - cleanup.
//
// Revision 1.114  2006/12/10 16:35:34  lulin
// - cleanup.
//
// Revision 1.113  2006/11/03 11:00:29  lulin
// - объединил с веткой 6.4.
//
// Revision 1.112.2.1  2006/10/19 08:49:08  oman
// warning fix
//
// Revision 1.112  2006/07/14 13:48:32  mmorozov
// - new: реализация элемента истории - _TvcmObjectWithDataHistoryItem;
// - new: сохрение в истории данных бизнес объекта прецедента;
// - new behaviour: при записи в историю форм с изменившимися _DataSource также пишем закрытые формы сборки;
// - bugfix: не к меcту выполненный абстрактный метод (CQ: OIT500021865);
//
// Revision 1.111  2006/07/13 13:28:51  mmorozov
// - change: IvcmHistoryItem перенесен в vcmInterfaces;
// - new: у бизнес объекта прецедента появилось понятие данные;
//
// Revision 1.110  2006/07/11 14:16:37  mmorozov
// - change: базывый элемент IvcmHistoryItem попилен на два, появился _IvcmFormHistoryItem;
// - change: один из методов Back теперь _HasInPreviousStep;
//
// Revision 1.109  2006/06/19 11:55:31  oman
// - fix: Откат предыдущих изменений по (CQ: OIT500021332), которые точно приводили к AV в КЗ
//  внутри сборки и появлению ряда скользких мест (cq21369)
//
// Revision 1.108  2006/06/16 08:36:10  mmorozov
// - new behaviour: при выгрузке формы из истории сначала устанавливаем источник данных потом грузим данные формы и контролов (CQ: OIT500021332);
//
// Revision 1.107  2006/02/02 14:48:48  mmorozov
// new: вычисление модуля в котором зарегистрирована формы, по классу формы;
// change: убрано указание модуля при создании формы;
//
// Revision 1.106  2005/11/17 08:37:52  mmorozov
// - bugfix: при определенной ситуации были проблемы с элементами истории связанными со сборкой, сделан контейнер, который правильным образом активирует элементы истории;
//
// Revision 1.105  2005/11/01 15:20:35  mmorozov
// bugfix: формирование идентификатора формы элемента истории (класс формы не используется, т.к. для закрытых форм он не определен);
//
// Revision 1.104  2005/10/21 14:23:41  mmorozov
// change: переименована функция;
//
// Revision 1.103  2005/10/18 08:29:51  mmorozov
// new: методы истории расширены параметром aSubUserType, который используется при поиске/инициализации формы;
// bugfix: не правильно инициализировался TvcmHistoryItemPrim в TvcmHistory._SaveClose;
//
// Revision 1.102  2005/09/28 18:16:23  mmorozov
// new: в ChangedDataSource подается параметр aFromHistory;
//
// Revision 1.101  2005/09/28 16:00:15  mmorozov
// - bugfix;
//
// Revision 1.100  2005/09/28 13:31:14  mmorozov
// new behaviour: если форма входит в сборку, то для поиска используется троица UserType, ZoneType, _FormId;
//
// Revision 1.99  2005/09/23 10:10:19  lulin
// - bug fix: при шагании по истории не изменялся _DataSource формы.
//
// Revision 1.98  2005/09/22 14:13:54  mmorozov
// - не компилировался пакет;
//
// Revision 1.97  2005/09/22 11:06:00  mmorozov
// - работа с историей в контексте сборок;
//
// Revision 1.96  2005/08/25 12:52:29  lulin
// - new behavior: по возможности используем не имена, а индексы форм.
//
// Revision 1.95  2005/08/25 10:24:09  lulin
// - new behavior: теперь в историю сохраняется _DataSource от формы.
//
// Revision 1.94  2005/04/28 15:03:52  lulin
// - переложил ветку B_Tag_Box в HEAD.
//
// Revision 1.93  2005/04/26 07:24:21  dinishev
// Merge с веткой
//
// Revision 1.92  2005/04/22 13:26:48  dinishev
// new function: IsLast
//
// Revision 1.91.10.2  2005/04/25 11:37:16  dinishev
// Bug fix: небыло инициализации флага множественного прохода + флаг выставляется и при переходе по истории вперед.
//
// Revision 1.91.10.1  2005/04/25 09:03:41  lulin
// - объединил с HEAD.
//
// Revision 1.92  2005/04/22 13:26:48  dinishev
// new function: IsLast
//
// Revision 1.91  2005/01/18 13:28:11  lulin
// - new behavior: вызовы _SaveState/LoadState при смене контента стали парными (CQ OIT5-10983).
//
// Revision 1.90  2005/01/18 12:16:01  lulin
// - обновлена документация.
//
// Revision 1.89  2005/01/18 11:18:07  lulin
// - убрано ненужное исключение.
//
// Revision 1.88  2005/01/18 10:58:39  lulin
// - спрятаны ненужные пользователю методы.
//
// Revision 1.87  2005/01/18 10:13:46  lulin
// - поправлено форматирование.
//
// Revision 1.86  2005/01/18 10:06:32  lulin
// - cleanup: убран ненужный закомментированный код.
//
// Revision 1.85  2005/01/14 10:42:27  lulin
// - методы Get*ParentForm переехали в библиотеку AFW.
//
// Revision 1.84  2004/12/23 07:27:54  lulin
// - перевел обработку статусной строки на библиотеку AFW.
//
// Revision 1.83  2004/12/07 14:56:45  mmorozov
// - не компилировалась библиотека;
//
// Revision 1.82  2004/12/07 11:54:17  lulin
// - new method: _Tl3LongintList.IndexOf.
//
// Revision 1.81  2004/10/13 16:20:47  mmorozov
// new: в _NeedSaveForm используется g_MenuManager._HistoryZones;
//
// Revision 1.80  2004/10/08 14:30:33  lulin
// - задел на вымещение истории на диск.
//
// Revision 1.79  2004/10/05 11:35:05  am
// change: TvcmHistory.Back(aFormClass, UserType) стала функцией и теперь возвращает bool признак: удалось ли откатиться по истории, пропустив формы, переданные в параметрах.
//
// Revision 1.78  2004/10/01 08:37:26  lulin
// - new behavior: количество шагов истории теперь ограничен переменной g_vcmHistoryLimit.
//
// Revision 1.77  2004/09/30 15:24:22  lulin
// - new var: g_vcmHistoryLimit - пока ни на что не влияет.
//
// Revision 1.76  2004/09/27 14:08:22  am
// new: IvcmHistory.Back(aFormClass: _TvcmFormID; aUserType: TvcmUserType = vcm_utAny) - сделать шаг по истории назад и идти, пока FormClass и UserType совпадают с соотв. свойствами форм в истории
//
// Revision 1.75  2004/09/17 11:22:54  lulin
// - параметр vcm_opStrings переименован в _vcm_opItems, и ему изменен тип с _IvcmHolder на IvcmStrings (!).
//
// Revision 1.74  2004/09/07 16:19:41  law
// - перевел VCM на кшированные обьекты.
//
// Revision 1.73  2004/09/01 14:48:53  demon
// - new behavior: из операций IvcmDispatcher BeginOp/EndOp убраны вызовы _StoreFocus/_RestoreFocus. Где требовалось сохранение фокуса эти вызовы вставлены явно.
//
// Revision 1.72  2004/07/12 17:20:30  law
// - bug fix: не освобождался интерфейс.
//
// Revision 1.71  2004/06/02 12:18:56  law
// - change: список форм сделан сортированным.
//
// Revision 1.70  2004/06/02 11:45:38  nikitin75
// в истории запоминаем/восстанавливаем фокус
//
// Revision 1.69  2004/06/02 10:20:37  law
// - удален конструктор Tl3VList.MakeIUnknown - пользуйтесь _Tl3InterfaceList._Make.
//
// Revision 1.68  2004/06/01 14:56:31  law
// - удалены конструкторы Tl3VList.MakeLongint, MakeLongintSorted - пользуйтесь _Tl3LongintList.
//
// Revision 1.67  2004/05/24 12:32:56  law
// - new behavior: если форма находится в списке добавленных и руками дернули ее сохранение, то сохраняем ее независимо от того в какой зоне она находится (CQ OIT5-6887).
//
// Revision 1.66  2004/04/01 13:44:37  law
// - bug fix: поиск по истории при _MakeSingleChild не учитывал GUID формы (CQ OIT5-6957).
//
// Revision 1.65  2004/03/31 14:19:13  law
// - new behavior: при создании формы из истории, если есть контейнер, то используем _MakeSingleChild.
//
// Revision 1.64  2004/03/25 08:56:41  law
// - change: изменен тип параметра anOwner.
//
// Revision 1.63  2004/03/23 13:43:49  mmorozov
// bugfix;
//
// Revision 1.62  2004/03/22 12:37:38  law
// - bug fix: по Back не сохранялись дополнительные формы (Навигатор и т.п.) (CQ OIT5-6094).
//
// Revision 1.61  2004/02/26 14:35:30  demon
// - new: реализация операции Reset в TvcmHistoryItemRec (дополнительно перебираем _f_Children и f_Docked)
//
// Revision 1.60  2004/02/25 12:15:47  demon
// - new: реализация интерфейса IvcmDataReset и метода Reset на IvcmHistory
//
// Revision 1.59  2004/01/10 14:28:38  law
// - new behavior: Обрезание названий списков в истории (CQ OIT5-4706).
//
// Revision 1.58  2003/12/26 16:51:15  law
// - new behavior: переделана логика обработки BottonCombo - теперь если меню нету, то и стрелки вниз нету.
// - bug fix: иногда при восстановлении из истории портился _Caption главного окна.
//
// Revision 1.57  2003/12/26 11:05:37  law
// - change: добавлен комментарий.
//
// Revision 1.56  2003/12/26 10:57:27  law
// - bug fix: неправильно работала история с ППР (CQ OIT5-5685).
//
// Revision 1.55  2003/12/25 15:56:06  law
// - new behavior: вставил _Lock/Unlock в Back/Forward.
//
// Revision 1.54  2003/12/24 11:41:23  law
// - bug fix: разобрался с бардаком History и MainForm (CQ IOT5-5526).
//
// Revision 1.53  2003/12/04 15:54:43  law
// - new event: _TvcmEntityForm.OnGetStatus.
//
// Revision 1.52  2003/11/26 17:33:41  law
// - bug fix: учитвыаем, что _Container не может быть = nil, а может быть IsNull.
//
// Revision 1.51  2003/11/11 17:09:16  law
// - new behavior: для закрываемой формы сохраняем Content, а не Position.
//
// Revision 1.50  2003/10/27 15:22:59  law
// - new behavior: при записи формы в историю, не спрашиваем CloseQuery - так ка сделан механизм отложеннного удаления форм.
//
// Revision 1.49  2003/10/23 16:24:25  law
// - bug fix: запись не в ту историю.
//
// Revision 1.48  2003/10/23 15:09:49  law
// - new behavior: History теперь знает про MainForm, что более правильно.
//
// Revision 1.47  2003/10/22 15:37:00  law
// - new behavior: вызываем BeginOp/EndOp при обработке Back/Forward (проблема с отложенным удалением форм).
//
// Revision 1.46  2003/10/08 12:06:09  law
// - new param: IvcmDispatcher.UpdateStatus - aSender.
//
// Revision 1.45  2003/09/23 10:32:03  law
// - bug fix: автоматические формы писались в историю, хотя больше ничего не менялось (OIT5-4743).
//
// Revision 1.44  2003/09/22 12:32:38  law
// - bug fix: теперь форма при смене контента сохраняет все свои дочерние формы.
//
// Revision 1.43  2003/09/22 10:20:19  law
// - change: реструкторизовал иерархию записей истории.
//
// Revision 1.42  2003/09/22 09:33:16  law
// - bug fix: переключение между закладками в синхронном просмотре сохраняло мусор в историю.
//
// Revision 1.41  2003/09/18 14:27:01  law
// - bug fix: изменен порядок сохранения/восстановления форм (теперь дочерние формы восстанавливаются после родительской).
//
// Revision 1.40  2003/09/17 16:08:58  law
// - new behavior: создаем форму, если не нашли ее при восстановлении Content.
//
// Revision 1.39  2003/09/17 14:31:29  law
// - bug fix: в историю записывался неправильный _Caption (OIT5-4654).
//
// Revision 1.38  2003/09/17 11:39:34  law
// - new behavior: корректно автосохраняются формы.
//
// Revision 1.37  2003/09/17 09:07:06  law
// - bug fix: был неправильный _Caption после автоматического сохранения форм.
//
// Revision 1.36  2003/09/17 08:56:59  law
// - new behavior: автоматически сохраняем указанные формы.
//
// Revision 1.35  2003/09/16 17:05:12  law
// - new methods: IvcmHistory.AddForm, _RemoveForm (пока только добавляют,удпляют формы, но не записывают их при _Start).
//
// Revision 1.34  2003/09/16 11:37:12  law
// - new behavior: убрана проверка необходимости записи формы в историю внутри операторных скобок.
//
// Revision 1.33  2003/09/15 17:09:12  law
// - new behavior: реализована функциональность методов _Start и Finish.
//
// Revision 1.32  2003/09/15 15:31:27  law
// - new methods: IvcmHistory._Start, Finish (пока ничего не делают).
//
// Revision 1.31  2003/09/12 16:38:15  law
// - bug fix: при Back/Forward проверяем возможность закрытия формы.
//
// Revision 1.30  2003/09/12 13:44:51  demon
// - bug fix: вставлено место для проверки возможности закрытия формы.
//
// Revision 1.29  2003/09/10 13:09:15  law
// - bug fix: не компилировалось без опции _vcmNeedL3.
//
// Revision 1.28  2003/09/08 14:46:34  law
// - new behavior: сделано обрезание длины строк истории и их количества.
//
// Revision 1.27  2003/09/04 10:11:07  law
// - bug fix: при путешествии по истории неправильно восстанавливались названия форм.
//
// Revision 1.26  2003/09/03 14:04:30  law
// - change: добавлен тип TvcmStateType (задел на сохранение перехода по локальным ссылкам).
//
// Revision 1.25  2003/09/03 09:53:45  law
// - new behavior: реализован список истории по _Caption'ам форм.
//
// Revision 1.24  2003/09/03 08:07:38  law
// - new methods versions: IvcmHistory.Back, Forward.
//
// Revision 1.23  2003/09/03 07:36:59  law
// - new: реализованы операции IvcmHistory.GetBackStrings, GetForwardStrings (пока вместо _Caption выводятся цифры).
//
// Revision 1.22  2003/09/02 17:21:13  law
// - new method: IvcmHistory.GetBacLines (пока fake).
//
// Revision 1.21  2003/07/24 13:07:12  law
// - new prop: IvcmOperationDef._ExcludeUserTypes.
//
// Revision 1.20  2003/07/21 13:31:09  law
// - bug fix: не обрезался "хвост" истории.
//
// Revision 1.19  2003/07/15 16:19:45  law
// - new behavior: строка статуса очищается при удалении формы, которая записывается в историю.
//
// Revision 1.18  2003/07/02 15:20:08  law
// - new prop: IvcmEntityForm.UserType - поле, которое характеризует некий тип формы и записывается в историю.
//
// Revision 1.17  2003/07/01 14:16:57  law
// - new method: IvcmHistory._SaveState.
//
// Revision 1.16  2003/06/30 15:39:40  law
// - cleanup: удаление возможности подмены Owner'а у _TvcmEntityForm.
//
// Revision 1.15  2003/06/27 14:25:06  law
// - new prop: TvcmMainForm._HistoryZones.
// - new behavior: не восстанавливаем по новой формы, которые уже восстановили (почему они два раза пишутся в историю - надо разбираться отдельно).
//
// Revision 1.14  2003/06/23 15:31:35  law
// - cleanup.
//
// Revision 1.13  2003/06/23 15:14:36  law
// Задел на восстановление Owner'а форм при операциях Back/Forward:
// - remove method: IvcmFormDispatcher.FindContainer.
// - new method: IvcmFormDispatcher._FindForm.
//
// Revision 1.12  2003/06/23 15:03:21  law
// - change: свойство IvcmContainer.GUID переехало в IvcmEntityForm.GUID - теперь каждая форма имеет свой идентификатор.
// - remove interface: IvcmGUIDSetter.
// - new param: конструктор _TvcmEntityForm._Make имее еще один параметр - aGUID - для восстановления идентификатора формы при операциях Back/Forward.
//
// Revision 1.11  2003/06/23 14:27:04  law
// - new behavior: теперь контейнер восстанавливает свой GUID при операциях Back/Forward.
//
// Revision 1.10  2003/06/23 13:54:17  law
// - bug fix: не очищалось поле _f_Container.
//
// Revision 1.9  2003/06/23 13:45:10  law
// - new prop: IvcmEntityForm._Module.
//
// Revision 1.8  2003/06/23 13:37:27  law
// - new behavior: сделано запоминание контейнера при операциях Back/Forward.
//
// Revision 1.7  2003/06/23 12:37:12  law
// - new behavior: восстанавливаем агрегацию при операциях Back/Forward.
//
// Revision 1.6  2003/06/23 11:52:46  law
// - bug fix: не работала история (Back/Forward). Пока не запоминается аггрегация и насильно установленный контейнер.
//
// Revision 1.5  2003/06/19 11:46:00  law
// - bug fix: не работала история навигации. До конца не починено - сейчас восстанавливается только самая верхняя форма.
//
// Revision 1.4  2003/06/09 14:01:01  law
// - new behavior: история запоминает зону, куда была вставлена уничтожаемая форма.
//
// Revision 1.3  2003/06/06 15:49:51  law
// - new methods: IvcmHistory.CanBack, CanForward.
//
// Revision 1.2  2003/06/06 14:22:44  law
// - new methods: Back, Forward.
//
// Revision 1.1  2003/06/06 12:56:27  law
// - new prop: IvcmDispathcher.History.
// - new behavior: сохранение форм в истории по их закрытии (пока до конца не доделано).
//

{$Include vcmDefine.inc }


interface

{$IfNDef NoVCM}
uses
  l3IID,

  l3Interfaces,
  
  vcmExternalInterfaces,
  vcmUserControls,
  vcmInterfaces,
  vcmBase,
  vcmIEntityFormPtrList
  ;

type
  IvcmFormHistoryItem = interface(IvcmHistoryItem)
  ['{E222914E-C670-4076-B662-9CB403B711EB}']
  {* Элемент истории для хранения данных формы. }
    // property methods
      function pm_GetFormClass: TvcmFormId;
        {-}
      function pm_GetUserType: TvcmUserType;
        {-}
      function pm_GetItemType : TvcmHistoryItemType;
        {* - тип элемента истории. }
    // public properties
      property FormClass: TvcmFormId
        read pm_GetFormClass;
        {* - класс формы, который содержит данный элемент. }
      property UserType: TvcmUserType
        read pm_GetUserType;
        {* - пользовательский тип формы, который содержит данный элемент. }
      property ItemType : TvcmHistoryItemType
        read pm_GetItemType;
        {* - тип элемента истории. }
  end;//IvcmFormHistoryItem

  IvcmContainerHistoryItem = interface(IvcmHistoryItem)
   {* Элемент истории приложения, состоящий из нескольких подзаписей. }
    ['{A8ABFC1F-E4A9-4B26-BB55-28C9427B6124}']
    // public methods
      function  Add(const anItem: IvcmHistoryItem; aDelta: Integer): Boolean;
        {* - добавляет подзапись. }
      function  IsEmpty: Boolean;
        {* - есть ли в контейнере записи. }
      function  ItemsCount: Integer;
        {* - количество записей в контейнере. }
      function  GetItem(anIndex: Integer): IvcmHistoryItem;
        {* - элемент контейнера. }
  end;//IvcmContainerHistoryItem

  IvcmInternalHistory = interface(IvcmHistory)
   {* Внутренний интерфес для доступа к истории приложения. }
    ['{E27F90D6-DAA3-4227-AB8B-B56D4D251553}']
    // public methods
      function  SaveState(const aForm      : IvcmEntityForm;
                          aStateType : TvcmStateType;
                          InDestroy  : Boolean;
                          aForceSave : Boolean = False): Boolean;
        overload;
        {* - сохраняет уничтожаемую форму. }
  end;//IvcmInternalHistory

  TvcmHistory = class(TvcmCacheableBase, IvcmHistory, IvcmInternalHistory)
   {* Объект, реализующий работу с историей приложения. }
    private
    // internal fields
      f_History   : TvcmInterfaceList;
      f_Last      : Boolean;
      {* - признак того, что вызов последний. }
      f_Multy     : Boolean;
      {* - скобки для множественного вызова Back из одноименной процедуры. }
      f_Current   : Integer;
      f_InBF      : Boolean;
      f_InBack    : Boolean;
      f_Starts    : Integer;
      f_ForceSave : Boolean;
      f_ContainerItem : IvcmContainerHistoryItem;
      f_Forms     : TvcmIEntityFormPtrList;
      f_Delta     : Integer;
      f_MainForm  : Pointer;
    protected
    // property methods
      function  pm_GetMainForm: IvcmEntityForm;
        {-}
    protected
    // interface methods
      // IvcmHistory
      function pm_GetInBF: Boolean;
        {-}
      function InBack: Boolean;
        {-}
      function pm_GetInProcess: Boolean;
        {-}
      function  NeedSaveForm(const aForm : IvcmEntityForm;
                             InDestroy   : Boolean): Boolean;
        {* - нужно ли сохранять заданную форму. }
      procedure BeforeFormDestroy(const aForm: IvcmEntityForm);
        {* - сохраняет уничтожаемую форму. }
      function  CheckAnother(const aForm    : IvcmEntityForm;
                             out theHistory : IvcmHistory): Boolean;
        {* - проверяет от этой ли формы история, и если не от этой, то возвращает правильную историю. }
      function  ForceSaveState(const aForm      : IvcmEntityForm;
                               aStateType : TvcmStateType = vcm_stContent): Boolean;
        {* - сохранение без проверки необходимости сохранения формы. }
      function  SaveState(const aForm      : IvcmEntityForm;
                          aStateType : TvcmStateType = vcm_stContent): Boolean;
        overload;
        {* - сохраняет форму. }
      function  SaveState(const aForm      : IvcmEntityForm;
                          aStateType : TvcmStateType;
                          InDestroy  : Boolean;
                          aForceSave : Boolean = False): Boolean;
        overload;
        {* - сохраняет уничтожаемую форму. }
      procedure SaveClose(const aForm        : IvcmEntityForm;
                          const aFormId      : TvcmFormId;
                          aUserType    : TvcmUserType;
                          aZoneType    : TvcmZoneType;
                          aSubUserType : TvcmUserType);
        {* - форма которая должна быть закрыта при переходе по истории. }
      function  Back(aTruncate: Boolean = False): Boolean;
        overload;
        {* - назад по истории. }
      function  Forward: Boolean;
        overload;
        {* - вперед по истории. }
      function HasInPreviousStep(const aFormClass : TvcmFormID;
                                 aUserType  : TvcmUserType = vcm_utAny): Boolean;
        {* Если мы дошли до формы, не удовлетворяющей переданным параметрам, возвращает True. }
      procedure Back(const aParams: IvcmExecuteParamsPrim; aTruncate: Boolean = False);
        overload;
        {* - назад по истории на N шагов. N лежит в 0-м параметре aParams. }
      procedure Forward(const aParams: IvcmExecuteParamsPrim);
        overload;
        {* - вперед по истории на N шагов. N лежит в 0-м параметре aParams. }
      function  CanBack: Boolean;
        {* - можно ли двигаться по истории назад. }
      function  CanForward: Boolean;
        {* - можно ли двигаться по истории вперед. }
      procedure GetBackStrings(const aParams: IvcmTestParamsPrim);
        {* - возвращает список шагов истории назад. }
      procedure GetForwardStrings(const aParams: IvcmTestParamsPrim);
        {* - возвращает список шагов истории вперед. }
   function GetBackCount: Integer;
   function GetForwardCount: Integer;
   function GetBackItem(anIndex: Integer): Il3CString;
   function GetForwardItem(anIndex: Integer): Il3CString;
      function  GetCaption(anIndex: Integer): IvcmCString;
        {* - возвращает название одного шага истории. }
      procedure Start(const aSender  : IvcmEntityForm;
                      const aCaption : IvcmCString = nil;
                      aFormSet : Boolean = False);
        {* - начинает процесс записи в историю (работает как скобка). }
      procedure Finish(const aSender  : IvcmEntityForm);
        {* - заканчмвает процесс записи в историю (работает как скобка). }
      function Add(const anItem: IvcmHistoryItem): Boolean;
        {* - добавляет запись в историю. }
      procedure AddForm(const aForm: IvcmEntityForm);
        {* - регистрирует форму для автоматической записи в историю. }
      procedure RemoveForm(const aForm: IvcmEntityForm);
        {* - дерегистрирует форму для автоматической записи в историю. }
      function IsLast: Boolean;
        {* - проверка, является ли функция конечной. }
      procedure Clear(aHeedCheckCurrent : Boolean = true);
        {-}
      procedure DeleteBackItem;
        {-}  
    protected
    // internal methods
      procedure Cleanup;
        override;
        {-}
    public
    // public methods
      constructor Create(const aMainForm: IvcmEntityForm);
        reintroduce;
        {* - создает объект истории. }
    public
    // public properties
      property MainForm: IvcmEntityForm
        read pm_GetMainForm;
        {* - главная форма приложения, к которой привязан данный объект истории. }
  end;//TvcmHistory

(*  IvcmObjectWithDataHistoryItem = interface
   ['{A3A15899-9BD4-46BB-9F83-87918A8EC5BC}']
  end;//IvcmObjectWithDataHistoryItem*)
  // Это всё попытки залечить http://mdp.garant.ru/pages/viewpage.action?pageId=267324195
  // но дело оказалось не в этом

  TvcmObjectWithDataHistoryItem = class(TvcmBase, IvcmHistoryItem
(*  , IvcmObjectWithDataHistoryItem*)
  // Это всё попытки залечить http://mdp.garant.ru/pages/viewpage.action?pageId=267324195
  // но дело оказалось не в этом
  )
  private
  // internal fields
   f_Object : IvcmObjectWithData;
   f_Data   : IvcmData;
  private
  // internal methods
    procedure DoActivate;
      {-}
  private
  // IvcmHistoryItem
    function pm_GetCaption: IvcmCString;
      {-}
    procedure Activate(const aMainForm : IvcmEntityForm);
      overload;
      {* - активизирет данные элемента в приложении. }
    procedure Activate(const aMainForm : IvcmEntityForm;
                       const anOwner   : IvcmEntityForm);
      overload;
      {* - активизирет данные элемента в приложении. }
    function  Drop: Boolean;
      {* - сбросить запись на диск. }
  public
  // methods
    constructor Create(const aObject : IvcmObjectWithData;
                       const aData   : IvcmData);
      reintroduce;
      {-}
    class function Make(const aObject : IvcmObjectWithData;
                        const aData   : IvcmData): IvcmHistoryItem;
      {-}
(*      function COMQueryInterface(const IID: Tl3GUID; out Obj): Tl3HResult;
        override;
        {-}*)
  // Это всё попытки залечить http://mdp.garant.ru/pages/viewpage.action?pageId=267324195
  // но дело оказалось не в этом
  end;//TvcmObjectWithDataHistoryItem

var
 g_vcmHistoryLimit : Integer = High(Integer);
  {* Лимит количества записей в истории приложения. }
 g_LockHistory : Integer = 0; 
{$EndIf  NoVCM}

implementation

{$IfNDef NoVCM}
uses
  Windows,
  Classes,
  SysUtils,
  Controls,
  Forms,

  l3MinMax,
  l3Base,
  l3String,

  afwFacade,

  vcmInternalInterfaces,
  vcmExcept,
  vcmAggregate,
  vcmEntityForm,
  vcmForm,
  vcmMainForm,
  vcmBaseMenuManager,
  vcmUtils,
  vcmTaskPanelInterfaces,
  vcmHistoryRes
  ;

// start class TvcmHistoryItemBase

type
  TvcmHistoryItemBase = class(TvcmCacheableBase, IvcmFormHistoryItem)
    private
    // internal fields
      f_FormClass   : RvcmEntityForm;
      f_FormId      : TvcmFormId;
      f_Caption     : IvcmCString;
      f_Focused     : String;
      f_FormData    : IvcmBase;
      f_FormGUID    : TGUID;
      f_ZoneType    : TvcmZoneType;
      f_Aggregate   : PGUID;
      f_ContainerGUID   : PGUID;
      f_Owner       : PGUID;
      f_UserType    : TvcmUserType;
      f_DataSource  : IvcmFormDataSource;
      f_ItemType    : TvcmHistoryItemType;
      f_SubUserType : TvcmUserType;
    protected
    // interface methods
      //  IvcmFormHistoryItem
      function pm_GetCaption: IvcmCString;
        {-}
      function pm_GetFormClass: TvcmFormId;
        {-}
      function pm_GetUserType: TvcmUserType;
        {-}
      function pm_GetItemType : TvcmHistoryItemType;
        {* - тип элемента истории. }
      procedure Activate(const aMainForm : IvcmEntityForm);
        overload;
        {-}
      procedure Activate(const aMainForm : IvcmEntityForm;
                         const anOwner   : IvcmEntityForm);
        overload;
        {-}
      procedure DoActivate(const aMainForm : IvcmEntityForm;
                           const anOwner   : IvcmEntityForm);
        virtual;
        abstract;
        {-}
      function  Drop: Boolean;
        {* - сбросить запись на диск. }
      procedure UpdateContainer(const aForm: IvcmEntityForm);
        {* - устанавливает контейнер формы. }
      procedure UpdateOwner(const aForm: IvcmEntityForm);
        {* - устанавливает владельца формы. }
      procedure UpdateAggregate(const aForm: IvcmEntityForm);
        {* - меняет агрегацию формы. }
      procedure UpdateFormInfo(const aForm: IvcmEntityForm);
        {* - обновляет информацию формы. }
      procedure FreeContainer;
        {-}
      procedure FreeOwner;
        {-}
      procedure FreeAggregate;
        {-}
      function Container(const aMainForm: IvcmEntityForm): IvcmContainer;
        {-}
    protected
    // internal methods
      procedure Cleanup;
        override;
        {-}
      function  MakeForm(const aMainForm   : IvcmEntityForm;
                         const anOwner     : IvcmEntityForm;
                         const aDataSource : IvcmFormDataSource): IvcmEntityForm;
        {-}
      procedure StoreFocused(const aForm : IvcmEntityForm);
        {-}
      procedure RestoreFocused(const aForm : IvcmEntityForm);
        {-}
    public
    // public methods
      constructor Create(const aForm      : IvcmEntityForm;
                         const aStateType : TvcmStateType;
                         const aFormId    : TvcmFormId;
                         const aUserType  : TvcmUserType;
                         const aZoneType  : TvcmZoneType;
                         const aItemType  : TvcmHistoryItemType;
                         const aSubUserType : TvcmUserType);
        reintroduce;
        virtual;
        {-}
      class function Make(const aForm      : IvcmEntityForm;
                          const aStateType : TvcmStateType): IvcmFormHistoryItem;
        overload;
        {-}
      class function Make(const aForm        : IvcmEntityForm;
                          const aStateType   : TvcmStateType;
                          const aFormId      : TvcmFormId;
                          const aUserType    : TvcmUserType;
                          const aZoneType    : TvcmZoneType;
                          const aItemType    : TvcmHistoryItemType;
                          const aSubUserType : TvcmUserType): IvcmFormHistoryItem;
        overload;
        {-}
      function COMQueryInterface(const IID: Tl3GUID; out Obj): Tl3HResult;
        override;
        {-}
  end;//TvcmHistoryItemBase

procedure TvcmHistoryItemBase.UpdateContainer(const aForm: IvcmEntityForm);
begin
 if not aForm.Container.IsNull then
 begin
  if not Assigned(f_ContainerGUID) then
   New(f_ContainerGUID);
  f_ContainerGUID^ := aForm.Container.AsForm.GUID;
 end//not l_Container.IsNull
 else
  FreeContainer;
end;

procedure TvcmHistoryItemBase.UpdateOwner(const aForm: IvcmEntityForm);
var
 l_Owner: TComponent;
begin
 l_Owner := aForm.VCLWinControl.Owner;
 if (l_Owner Is TvcmEntityForm) then
 begin
  if not Assigned(f_Owner) then
   New(f_Owner);
  f_Owner^ := TvcmEntityForm(l_Owner).As_IvcmEntityForm.GUID;
 end//l_Owner Is TvcmEntityForm
 else
  FreeOwner;
end;

procedure TvcmHistoryItemBase.FreeContainer;
begin
 if Assigned(f_ContainerGUID) then
 begin
  Dispose(f_ContainerGUID);
  f_ContainerGUID := nil;
 end;
end;

procedure TvcmHistoryItemBase.FreeOwner;
begin
 if Assigned(f_Owner) then
 begin
  Dispose(f_Owner);
  f_Owner := nil;
 end;
end;

function TvcmHistoryItemBase.Container(const aMainForm: IvcmEntityForm): IvcmContainer;
  {-}
var
 l_Form: IvcmEntityForm;
begin
 if (f_ContainerGUID = nil) then
  Result := aMainForm.AsContainer
 else
 if g_Dispatcher.FormDispatcher.FindForm(f_ContainerGUID^, l_Form) then
 begin
  Assert(not l_Form.VCMClosing);
  // - если форма УЖЕ закрывается, то её наверное повторно использовать НЕЛЬЗЯ
  Result := l_Form.AsContainer
 end//g_Dispatcher.FormDispatcher.FindForm(f_ContainerGUID^, l_Form)
 else
 begin
  Result := aMainForm.AsContainer;
  Assert(false, Format('А возможна ли такая ситуация, что у формы "%s" не нашёлся контейнер, который запомнили. И правильная ли она? http://mdp.garant.ru/pages/viewpage.action?pageId=326773370&focusedCommentId=330698389#comment-330698389',
                       [f_FormClass.ClassName]));
 end;//g_Dispatcher.FormDispatcher.FindForm(f_ContainerGUID^, l_Form)
end;

procedure TvcmHistoryItemBase.FreeAggregate;
begin
 if Assigned(f_Aggregate) then
 begin
  Dispose(f_Aggregate);
  f_Aggregate := nil;
 end;//Assigned(f_Aggregate)
end;

procedure TvcmHistoryItemBase.UpdateAggregate(const aForm: IvcmEntityForm);
begin
 if Assigned(aForm.Aggregate) then
 begin
  if not Assigned(f_Aggregate) then
   New(f_Aggregate);
  f_Aggregate^ := aForm.Aggregate.GUID;
 end//aForm.Aggregate <> nil
 else
  FreeAggregate;
end;

procedure TvcmHistoryItemBase.UpdateFormInfo(const aForm: IvcmEntityForm);
begin
 if Assigned(aForm) then
 begin
  f_FormClass := RvcmEntityForm(aForm.VCLWinControl.ClassType);
  f_Caption := aForm.{VCLForm.}MainCaption;
  f_FormGUID := aForm.GUID;
  f_DataSource := aForm.DataSource;
  UpdateAggregate(aForm);
  UpdateContainer(aForm);
  UpdateOwner(aForm);
 end;//Assigned(aForm)
end;

type
 EvcmFormWasClosedInSave = class(Exception)
 end;//EvcmFormWasClosedInSave

constructor TvcmHistoryItemBase.Create(const aForm        : IvcmEntityForm;
                                       const aStateType   : TvcmStateType;
                                       const aFormId      : TvcmFormId;
                                       const aUserType    : TvcmUserType;
                                       const aZoneType    : TvcmZoneType;
                                       const aItemType    : TvcmHistoryItemType;
                                       const aSubUserType : TvcmUserType);
  // reintroduce;
  // overload;
  // virtual;
  {-}
var
 l_PrevVCMClosing : Boolean;
 l_NowVCMClosing : Boolean;
begin
 inherited Create;
 f_ZoneType := aZoneType;
 f_UserType := aUserType;
 f_FormId   := aFormId;
 f_ItemType := aItemType;
 f_SubUserType := aSubUserType;
 StoreFocused(aForm);
 if Assigned(aForm) then
 begin
  UpdateFormInfo(aForm);
  l_PrevVCMClosing := aForm.VCMClosing;
  if not aForm.SaveState(f_FormData, aStateType) then
  begin
   l_NowVCMClosing := aForm.VCMClosing;
   if l_NowVCMClosing then
   begin
    Assert(not l_PrevVCMClosing);
    f_FormClass := nil;
   end;//aForm.VCMClosing
   f_FormData := nil;
   if l_NowVCMClosing then
    raise EvcmFormWasClosedInSave.Create('Форма была закрыта во время сохранения');
  end;//not aForm.SaveState(f_FormData, aStateType)
 end;//if Assigned(aForm) then
end;

function TvcmHistoryItemBase.COMQueryInterface(const IID: Tl3GUID; out Obj): Tl3HResult;
  //override;
        {-}
var
 l_FormSet: IvcmFormSet;
begin
 Result := inherited COMQueryInterface(IID, Obj);
 if Result.Fail then
 begin
  if IID.EQ(IvcmFormSet) and vcmInFormSet(f_DataSource, @l_FormSet) then
  begin
   IvcmFormSet(Obj) := l_FormSet;
   Result.SetOK;
  end//if IID.EQ(IvcmFormSet)
  else
   Result.SetNOINTERFACE;
 end;//if l3IFail(Result) then
end;

class function TvcmHistoryItemBase.Make(const aForm        : IvcmEntityForm;
                                        const aStateType   : TvcmStateType;
                                        const aFormId      : TvcmFormId;
                                        const aUserType    : TvcmUserType;
                                        const aZoneType    : TvcmZoneType;
                                        const aItemType    : TvcmHistoryItemType;
                                        const aSubUserType : TvcmUserType): IvcmFormHistoryItem;
  // overload;
  {-}
var
 lTemp: TvcmHistoryItemBase;
begin
 lTemp := Create(aForm, aStateType, aFormId, aUserType, aZoneType, aItemType,
  aSubUserType);
 try
  Result := lTemp;
 finally
  FreeAndNil(lTemp);
 end;//try..finally
end;

(*class function TvcmHistoryItemBase.Make(const aFormId      : TvcmFormId;
                                        const aUserType    : TvcmUserType;
                                        const aZoneType    : TvcmZoneType;
                                        const aItemType    : TvcmHistoryItemType;
                                        const aSubUserType : TvcmUserType): IvcmFormHistoryItem;
  // overload;
  {-}
begin
 Result := Make(nil, vcm_stContent, aFormId, aUserType, aZoneType, aItemType,
  aSubUserType);
end;*)

class function TvcmHistoryItemBase.Make(const aForm      : IvcmEntityForm;
                                        const aStateType : TvcmStateType): IvcmFormHistoryItem;
  {-}
var
 l_Form : TvcmEntityForm;
begin
 l_Form := (aForm.VCLWinControl As TvcmEntityForm);
 Result := Make(aForm,
                aStateType,
                l_Form.FormID,
                l_Form.UserType,
                l_Form.ZoneType,
                vcm_hitNone,
                l_Form.SubUserType);
end;

procedure TvcmHistoryItemBase.Cleanup;
  //override;
  {-}
begin
 f_DataSource := nil;
 f_FormData := nil;
 f_Caption := nil;
 FreeContainer;
 FreeOwner;
 FreeAggregate;
 inherited;
end;

function TvcmHistoryItemBase.MakeForm(const aMainForm   : IvcmEntityForm;
                                      const anOwner     : IvcmEntityForm;
                                      const aDataSource : IvcmFormDataSource): IvcmEntityForm;
  {-}
var
 l_Container : IvcmContainer;
 l_Aggregate : IvcmAggregate;
 l_Owner     : IvcmEntityForm;
begin
 Result := nil;
 // Если элемента не было до этого, то при переходе назад он должен быть удален
 f_ItemType := vcm_hitClose;

 (*if (f_FormData = nil) then
  Result := nil
 else*)
 // !!! - закомментрировал, т.к. иначе неправильно сохранялись формы-контейнеры
 begin
  l_Container := Container(aMainForm);
  if (f_Aggregate = nil) then
   l_Aggregate := nil
  else
   l_Aggregate := TvcmAggregate.Make(f_Aggregate);
  if (anOwner = nil) then
  begin
   if (f_Owner = nil) then
    l_Owner := nil
   else
   begin
    if g_Dispatcher.FormDispatcher.FindForm(f_Owner^, l_Owner) then
     Assert(not l_Owner.VCMClosing);
     // - если форма УЖЕ закрывается, то её наверное повторно использовать НЕЛЬЗЯ
   end;//f_Owner = nil
  end//anOwner = nil
  else
   l_Owner := anOwner;
  if (l_Container <> nil) AND not l_Container.IsNull then
   Result := f_FormClass.MakeSingleChild(l_Container,
                                         vcmMakeParams(l_Aggregate,
                                                   l_Container,
                                                   l_Owner.VCLWinControl),
                                         f_ZoneType,
                                         f_UserType,
                                         @f_FormGUID,
                                         aDataSource,
                                         f_SubUserType)
  else
   Result := f_FormClass.Make(vcmMakeParams(l_Aggregate,
                                        l_Container,
                                        l_Owner.VCLWinControl),
                              f_ZoneType,
                              f_UserType,
                              @f_FormGUID,
                              aDataSource,
                              f_SubUserType);
 end;//f_FormData = nil
end;

procedure TvcmHistoryItemBase.StoreFocused(const aForm : IvcmEntityForm);
  {-}
var
 l_Form,
 l_Parent,
 l_Control : TWinControl;
begin
 f_Focused := '';
 if Assigned(aForm) and Assigned(aForm.VCLWinControl) then
 begin
  l_Form := aForm.VCLWinControl;
  l_Control := FindControl(Windows.GetFocus);
  if Assigned(l_Control) then
  begin
   l_Parent := l_Control.Parent;
   while Assigned(l_Parent) do
    if l_Parent = l_Form then
    begin
     f_Focused := l_Control.Name;
     break;
    end
    else if l_Parent is TCustomForm then
     break
    else
     l_Parent := l_Parent.Parent;
  end;
 end;
end;

procedure TvcmHistoryItemBase.RestoreFocused(const aForm : IvcmEntityForm);
  {-}
var
 l_Control : TWinControl;
begin
 if (f_Focused <> '') and Assigned(aForm) and Assigned(aForm.VCLWinControl) then
 begin
  l_Control := aForm.VCLWinControl.FindComponent(f_Focused) as TWinControl;
  if Assigned(l_Control) then
   g_Dispatcher.StoreFocused(l_Control.Handle);
 end;//f_Focused <> ''..
end;

procedure TvcmHistoryItemBase.Activate(const aMainForm : IvcmEntityForm);
  //overload;
  {-}
begin
 Activate(aMainForm, nil);
end;

procedure TvcmHistoryItemBase.Activate(const aMainForm : IvcmEntityForm;
                                       const anOwner   : IvcmEntityForm);
  //overload;
  {-}
var
 l_SaveSelf : IUnknown;
begin
 l_SaveSelf := Self;
 try
  DoActivate(aMainForm, anOwner);
 finally
  l_SaveSelf := nil;
 end;//try..finally
end;

function TvcmHistoryItemBase.Drop: Boolean;
  {* - сбросить запись на диск. }
begin
 Result := False;
end;

function TvcmHistoryItemBase.pm_GetCaption: IvcmCString;
  {-}
begin
 Result := f_Caption;
end;

// start class TvcmHistoryItemRec

type
  TvcmHistoryItemRec = class(TvcmHistoryItemBase)
    private
    // internal fields
      f_Children   : TvcmInterfaceList;
      f_Docked     : TvcmInterfaceList;
    protected
    // internal methods
      procedure Cleanup;
        override;
        {-}
      function  MakeChild(const aForm : IvcmEntityForm;
                          aStateType  : TvcmStateType): IvcmFormHistoryItem;
        virtual;
        abstract;
        {-}
      procedure SaveOwned(const aForm : IvcmEntityForm;
                          aStateType  : TvcmStateType;
                          out aList   : TvcmInterfaceList);
        {-}
      procedure SaveDocked(const aForm : IvcmEntityForm;
                           aStateType  : TvcmStateType;
                           out aList   : TvcmInterfaceList);
        {-}
      procedure ActivateList(const aMainForm  : IvcmEntityForm;
                             const aForm      : IvcmEntityForm;
                             aList            : TvcmInterfaceList;
                             const aInFormSet : Boolean);
        {-}
    public
    // public methods
      constructor Create(const aForm        : IvcmEntityForm;
                         const aStateType   : TvcmStateType;
                         const aFormId      : TvcmFormId;
                         const aUserType    : TvcmUserType;
                         const aZoneType    : TvcmZoneType;
                         const aItemType    : TvcmHistoryItemType;
                         const aSubUserType : TvcmUserType);
        override;
        {-}
  end;//TvcmHistoryItemRec

constructor TvcmHistoryItemRec.Create(const aForm        : IvcmEntityForm;
                                      const aStateType   : TvcmStateType;
                                      const aFormId      : TvcmFormId;
                                      const aUserType    : TvcmUserType;
                                      const aZoneType    : TvcmZoneType;
                                      const aItemType    : TvcmHistoryItemType;
                                      const aSubUserType : TvcmUserType);
  //reintroduce;
  {-}
begin
 try
  inherited Create(aForm, aStateType, aFormId, aUserType, aZoneType, aItemType,
   aSubUserType);
 except
  on EvcmFormWasClosedInSave do
  // - форму закрыли в процессе сохранения
  //   Например БП из-за:
  //    http://mdp.garant.ru/pages/viewpage.action?pageId=321989072&focusedCommentId=330698655#comment-330698655
  begin
   f_Caption := aForm.MainCaption;
   FreeAndNil(f_Children);
   FreeAndNil(f_Docked);
   f_ItemType := vcm_hitClose;
  end;//on EvcmFormWasClosedInSave
 end;//try..except
 if Assigned(aForm) then
 begin
  f_Caption := aForm.MainCaption;
  FreeAndNil(f_Children);
  FreeAndNil(f_Docked);
  SaveOwned(aForm, aStateType, f_Children);
  SaveDocked(aForm, aStateType, f_Docked);
 end;//Assigned(aForm)
end;

procedure TvcmHistoryItemRec.Cleanup;
  //override;
  {-}
begin
 FreeAndNil(f_Children);
 FreeAndNil(f_Docked);
 inherited;
end;

procedure TvcmHistoryItemRec.SaveOwned(const aForm : IvcmEntityForm;
                                       aStateType  : TvcmStateType;
                                       out aList   : TvcmInterfaceList);
  {-}

 procedure l_SaveOwned(aControl: TComponent);
 var
  l_Index : Integer;
  l_Child : TComponent;
  l_Form  : IvcmEntityForm;
 begin//SaveOwned
  with aControl do
   for l_Index := 0 to Pred(ComponentCount) do
   begin
    l_Child := Components[l_Index];
    if (l_Child Is TCustomForm) AND
       Supports(l_Child, IvcmEntityForm, l_Form) then
     try
      if (aList = nil) then
       aList := TvcmInterfaceList.Make;
      aList.Add(MakeChild(l_Form, aStateType));
     finally
      l_Form := nil;
     end;//try..finally
   end;//for l_Index
 end;//l_SaveOwned

var
 l_OwnerForm : TWinControl;
begin
 aList := nil;
 if not Assigned(aForm.FormSet) and (aStateType = vcm_stContent) then
 begin
  l_OwnerForm := aForm.VCLWinControl;
  l_SaveOwned(l_OwnerForm);
 end;//aStateType = vcm_stContent
end;

procedure TvcmHistoryItemRec.SaveDocked(const aForm : IvcmEntityForm;
                                        aStateType  : TvcmStateType;
                                        out aList   : TvcmInterfaceList);
  {-}

var
 l_OwnerForm  : TWinControl;

 procedure l_SaveDocked(aControl: TWinControl);
 var
  l_Index : Integer;
  l_Child : TControl;
  l_Form  : IvcmEntityForm;
 begin//l_SaveDocked
  with aControl do
   for l_Index := 0 to Pred(ControlCount) do
   begin
    l_Child := Controls[l_Index];
    if (l_Child Is TCustomForm) AND (l_Child.Owner <> l_OwnerForm) AND
       Supports(l_Child, IvcmEntityForm, l_Form) then
     try
      if (aList = nil) then
       aList := TvcmInterfaceList.Make;
      aList.Add(MakeChild(l_Form, aStateType));
     finally
      l_Child := nil;
     end;//try..finally
    if (l_Child Is TWinControl) then
     l_SaveDocked(TWinControl(l_Child));
   end;//for l_Index
 end;//l_SaveDocked

begin
 aList := nil;
 if not Assigned(aForm.FormSet) and (aStateType = vcm_stContent) then
 begin
  l_OwnerForm := aForm.VCLWinControl;
  l_SaveDocked(l_OwnerForm);
 end;//aStateType = vcm_stContent
end;

procedure TvcmHistoryItemRec.ActivateList(const aMainForm  : IvcmEntityForm;
                                          const aForm      : IvcmEntityForm;
                                          aList            : TvcmInterfaceList;
                                          const aInFormSet : Boolean);
  {-}
var
 l_Index : Integer;
begin
 if not aInFormSet and (aList <> nil) then
  with aList do
   for l_Index := Lo to Hi do
    IvcmFormHistoryItem(Items[l_Index]).Activate(aMainForm, aForm);
end;

// start class TvcmHistoryItemPrim

type
  TvcmHistoryItemPrim = class(TvcmHistoryItemRec)
    private
    // internal fields
      f_StateType : TvcmStateType;
    protected
    // interface methods
      procedure DoActivate(const aMainForm : IvcmEntityForm;
                           const anOwner   : IvcmEntityForm);
        override;
        {-}
      function  MakeChild(const aForm : IvcmEntityForm;
                          aStateType  : TvcmStateType): IvcmFormHistoryItem;
        override;
        {-}
    public
    // public methods
      constructor Create(const aForm        : IvcmEntityForm;
                         const aStateType   : TvcmStateType;
                         const aFormId      : TvcmFormId;
                         const aUserType    : TvcmUserType;
                         const aZoneType    : TvcmZoneType;
                         const aItemType    : TvcmHistoryItemType;
                         const aSubUserType : TvcmUserType);
        override;
        {-}
  end;//TvcmHistoryItemPrim

constructor TvcmHistoryItemPrim.Create(const aForm        : IvcmEntityForm;
                                       const aStateType   : TvcmStateType;
                                       const aFormId      : TvcmFormId;
                                       const aUserType    : TvcmUserType;
                                       const aZoneType    : TvcmZoneType;
                                       const aItemType    : TvcmHistoryItemType;
                                       const aSubUserType : TvcmUserType);
  //reintroduce;
  {-}
begin
 inherited Create(aForm, aStateType, aFormId, aUserType, aZoneType, aItemType,
  aSubUserType);
 f_StateType := aStateType;
end;

function TvcmHistoryItemPrim.MakeChild(const aForm : IvcmEntityForm;
                                       aStateType  : TvcmStateType): IvcmFormHistoryItem;
  //override;
  {-}
begin
 Result := Make(aForm, aStateType);
end;

procedure TvcmHistoryItemPrim.DoActivate(const aMainForm : IvcmEntityForm;
                                         const anOwner   : IvcmEntityForm);
  //overload;
  {-}

 function lpFindForm(out aForm: IvcmEntityForm): Boolean;
 begin//lpFindForm
  if vcmInFormSet(f_DataSource) then
  begin
   Result := Container(aMainForm).HasForm(f_FormId,
                                          f_ZoneType,
                                          True,
                                          @aForm,
                                          f_UserType,
                                          nil,
                                          f_SubUserType);
   if Result then                                       
    Assert(not aForm.VCMClosing);
    // - если форма УЖЕ закрывается, то её наверное повторно использовать НЕЛЬЗЯ
  end//vcmInFormSet(f_DataSource)
  else
  begin
   Result := g_Dispatcher.FormDispatcher.FindForm(f_FormGUID, aForm);
   if Result then
   begin
    //Assert(not aForm.VCMClosing);
    if aForm.VCMClosing then
    // - если форма УЖЕ закрывается, то её наверное повторно использовать НЕЛЬЗЯ
    begin
     g_Dispatcher.FormDispatcher.RemoveForm(aForm);
     // - удалить её надо из диспетчера, чтобы больше не находилась
     aForm := nil;
     Result := false;
    end;//aForm.VCMClosing 
   end;//Result
  end;//vcmInFormSet(f_DataSource)
 end;//lpFindForm

 function lp_SameUseCase(const aForm: IvcmEntityForm): Boolean;
 begin//lp_SameUseCase
  Result := true;
  if Assigned(f_DataSource) and Assigned(f_DataSource.UseCaseController) and
     Assigned(aForm.DataSource) and Assigned(aForm.DataSource.UseCaseController) then
      Result := vcmIEQ(f_DataSource.UseCaseController, aForm.DataSource.UseCaseController);
 end;//lp_SameUseCase

var
 l_FormData   : IvcmBase;
 l_Form       : IvcmEntityForm;
 l_Caption    : IvcmCString;
 l_Children   : TvcmInterfaceList;
 l_Docked     : TvcmInterfaceList;
 l_DataSource : IvcmFormDataSource;
 l_UtilizeForm: Boolean;
begin
 // Форма должна быть закрыта
 if f_ItemType = vcm_hitClose then
 begin
  aMainForm.AsContainer.HasForm(f_FormId,
                                       f_ZoneType,
                                       True,
                                       @l_Form,
                                       f_UserType,
                                       nil,
                                       f_SubUserType);

  if Assigned(l_Form) then
  try
   f_ItemType := vcm_hitContent;
   UpdateFormInfo(l_Form);
   if not l_Form.SaveState(l_FormData, f_StateType) then
    l_FormData := nil;
   f_FormData := l_FormData;
   l_Form.SafeClose;
  finally
   l_Form := nil;
  end;//try..finally
 end//if f_StateType = vcm_stMissing then
 // Создадим форму из истории
 else
 begin
  l_Children := nil;
  l_Docked := nil;
  try
   l_FormData := f_FormData;
   // Форма ничего не знает про тип
   if lpFindForm(l_Form) then
   begin
    // Форма была открыта в процессе работы
    l_UtilizeForm := True;
    if (f_ItemType = vcm_hitContent) then
     f_ItemType := vcm_hitNone;
    SaveOwned(l_Form, f_StateType, l_Children);
    SaveDocked(l_Form, f_StateType, l_Docked);
    if not l_Form.SaveState(l_FormData, f_StateType) then
     // - сохраняем данные, для симметричности вызовов SaveState/LoadState.
     l_FormData := nil;
   end//lpFindForm(l_Form)
   else
   begin
    l_Form := MakeForm(aMainForm, anOwner, f_DataSource);
    if (l_Form = nil) then
     Exit;
    l_Children := nil;
    l_Docked := nil;
    // Форма должна быть закрыта
    f_ItemType := vcm_hitClose;
    l_UtilizeForm := False;
   end;//lpFindForm(l_Form)
   l_Caption := l_Form.{VCLForm.}MainCaption;
   //l_Form.DataSource := f_DataSource;
   // ^Если ты бля такой умный и хочешь переставить эту строчку сюда,
   //  то читай внимательно - http://mdp.garant.ru/pages/viewpage.action?pageId=267324195&focusedCommentId=269072024#comment-269072024
   l_Form.LoadState(f_FormData, f_StateType);
   l_Form.Caption := f_Caption;
   RestoreFocused(l_Form);
   f_Caption := l_Caption;
   // Только для форм без сборки, сборка сама контролирует запись в историю
   ActivateList(aMainForm, l_Form, f_Children, Assigned(l_Form.FormSet));
   ActivateList(aMainForm, nil, f_Docked, Assigned(l_Form.FormSet));
   l_DataSource := l_Form.DataSource;
   // Если утилизируем форму снесем ей сначала DataSource
   // чтоб эмулировать удаление/создание K-136262540
   if l_UtilizeForm then
   begin
    if l_Form.IsMainInFormSet and not lp_SameUseCase(l_Form) then
     l_Form.FormSet.PopToHistory;
    l_Form.DataSource := nil;
   end;//l_UtilizeForm
   l_Form.DataSource := f_DataSource;
   f_DataSource := l_DataSource;
   f_FormData := l_FormData;
   // - устанавливаем новые данные формы
   vcmSet(f_Children, l_Children);
   // - устанавливаем информацию о новых детях
   vcmSet(f_Docked, l_Docked);
   // - устанавливаем информацию о новых подчиненных
   if (f_ItemType = vcm_hitContent) then
    f_ItemType := vcm_hitClose;
  finally
   FreeAndNil(l_Children);
   FreeAndNil(l_Docked);
  end;//try..finally
 end;//if f_StateType = vcm_stMissing then
end;

// start class TvcmHistoryItem

type
  TvcmHistoryItem = class(TvcmHistoryItemRec)
    protected
    // interface methods
      //  IvcmFormHistoryItem
      procedure DoActivate(const aMainForm : IvcmEntityForm;
                           const anOwner   : IvcmEntityForm);
        override;
        {-}
    protected
    // internal methods
      function  MakeChild(const aForm : IvcmEntityForm;
                          aStateType  : TvcmStateType): IvcmFormHistoryItem;
        override;
        {-}
    public
    // public methods
      class function Make(const aForm : IvcmEntityForm;
                          aStateType  : TvcmStateType;
                          InDestroy   : Boolean): IvcmFormHistoryItem;
        reintroduce;
        {-}
  end;//TvcmHistoryItem

class function TvcmHistoryItem.Make(const aForm : IvcmEntityForm;
                                    aStateType  : TvcmStateType;
                                    InDestroy   : Boolean): IvcmFormHistoryItem;
  {-}
var
 l_Item : TvcmHistoryItem;
begin
 if InDestroy then
 begin
  g_Dispatcher.UpdateStatus;
  with (aForm.VCLWinControl As TvcmEntityForm) do
   l_Item := Self.Create(aForm, aStateType, FormId, UserType, ZoneType,
    vcm_hitNone, SubUserType);
  try
   Result := l_Item;
  finally
   FreeAndNil(l_Item);
  end;//try..finally
 end//InDestroy
 else
  Result := TvcmHistoryItemPrim.Make(aForm, aStateType);
end;

function TvcmHistoryItem.MakeChild(const aForm : IvcmEntityForm;
                                   aStateType  : TvcmStateType): IvcmFormHistoryItem;
  //override;
  {-}
begin
 Result := Make(aForm, aStateType, true);
end;

procedure TvcmHistoryItem.DoActivate(const aMainForm : IvcmEntityForm;
                                     const anOwner   : IvcmEntityForm);
  //overload;
  {-}
var
 l_Form       : IvcmEntityForm;
 l_Caption    : IvcmCString;
 l_DataSource : IvcmFormDataSource;
begin
 if g_Dispatcher.FormDispatcher.FindForm(f_FormGUID, l_Form) then
 begin
  //Assert(not l_Form.VCMClosing);
  // - если форма УЖЕ закрывается, то её наверное повторно использовать НЕЛЬЗЯ
  if not l_Form.VCMClosing then
  // -  например это ОДНО ОМ уже ЗАКРЫВАЕТСЯ, а хочется создать НОВОЕ
  // http://mdp.garant.ru/pages/viewpage.action?pageId=332566005
   Exit
  // - форма уже восстановлена
  else
   g_Dispatcher.FormDispatcher.RemoveForm(l_Form);
   // - удалить её надо из диспетчера, чтобы больше не находилась
 end;//g_Dispatcher.FormDispatcher.FindForm(f_FormGUID, l_Form)
 l_Form := MakeForm(aMainForm, anOwner, nil);
 if (f_FormClass <> nil) then
  Assert(l_Form <> nil,
         Format('А может ли тут быть такое, что форма не создана? FormClass = %s Caption = %s',
                [f_FormClass.ClassName, l3Str(f_Caption)]));
 if (l_Form = nil) then
  Exit;
 l_Caption := l_Form.{VCLForm.}MainCaption;
 l_Form.LoadState(f_FormData, vcm_stContent);
 l_Form.Caption := f_Caption;
 l_DataSource := l_Form.DataSource;
 l_Form.DataSource := f_DataSource;
 f_DataSource := l_DataSource;
 RestoreFocused(l_Form);
 f_Caption := l_Caption;
 ActivateList(aMainForm, l_Form, f_Children, Assigned(l_Form.FormSet));
 ActivateList(aMainForm, nil, f_Docked, Assigned(l_Form.FormSet));
end;//DoActivate

// start class TvcmHistory

constructor TvcmHistory.Create(const aMainForm: IvcmEntityForm);
  //reintroduce;
  {-}
begin
 inherited Create;
 f_MainForm := Pointer(aMainForm);
 f_Last := True;
end;//Create

procedure TvcmHistory.Cleanup;
  //override;
  {-}
begin
 f_ContainerItem := nil;
 f_MainForm := nil;
 f_Current := 0;
 FreeAndNil(f_History);
 FreeAndNil(f_Forms);
 inherited;
end;//Cleanup

function TvcmHistory.pm_GetMainForm: IvcmEntityForm;
  {-}
begin
 Result := IvcmEntityForm(f_MainForm);
end;//pm_GetMainForm

function TvcmHistory.pm_GetInBF: Boolean;
  {-}
begin
 Result := f_InBF;
end;//pm_GetInBF

function TvcmHistory.InBack: Boolean;
  {-}
begin
 Result := f_InBack;
end;

function TvcmHistory.pm_GetInProcess: Boolean;
  {-}
begin
 Result := (f_Starts <> 0);
end;

function TvcmHistory.NeedSaveForm(const aForm : IvcmEntityForm;
                                  InDestroy   : Boolean) : Boolean;
  {-}
var
 l_Main      : IvcmEntityForm;
 l_VMain     : TvcmMainForm;
 l_Container : IvcmContainer;
 l_Form      : IvcmEntityForm;
begin
 Result := False;
 if (aForm = nil) then
  Exit;
 if f_ForceSave AND not InDestroy then
 begin
  Result := true;
  Exit;
 end;//f_ForceSave..
 l_Main := MainForm;
 if (l_Main = nil) then
  Exit;
 try
  l_VMain := (l_Main.VCLWinControl As TvcmMainForm);
  l_Form := aForm;
  l_Container := aForm.Container;
  while true do
  begin
   if (l_Container = nil) then
    Exit;
   if (l_Container.AsForm.VCLWinControl = l_VMain) then
    if (l_Form.ZoneType in g_MenuManager.HistoryZones) then
     break
    else
     Exit;
   l_Form := l_Container.AsForm;
   l_Container := l_Container.AsForm.Container;
  end;//while true
  Result := true;
 finally
  // - если форма находится в списке добавленных и руками дернули ее сохранение
  if not Result AND (f_Forms <> nil) then
   Result := (f_Forms.IndexOf(aForm) >= 0);
 end;//try..finally
end;//NeedSaveForm

var g_LockBeforeFormDestroy : Integer = 0;

procedure TvcmHistory.BeforeFormDestroy(const aForm: IvcmEntityForm);
  {-}
begin
 // Только для форм без сборки (сборка сама занимается сохранением)
 if not Assigned(aForm.FormSet) then
  SaveState(aForm, vcm_stContent, true)
 else
 if aForm.IsMainInFormSet then
  if (g_LockBeforeFormDestroy = 0) then
   with aForm.FormSet do
   begin
    PopToHistory;
    SaveHistory;
   end;//if aForm.IsMainInFormSet then
end;//BeforeFormDestroy

function TvcmHistory.CheckAnother(const aForm    : IvcmEntityForm;
                                  out theHistory : IvcmHistory): Boolean;
  {-}
var
 l_Form     : TCustomForm;
 l_MainForm : IvcmMainForm;
 l_History  : IvcmHistory;
begin
 Result := False;
 if (aForm <> nil) then
 begin
  l_Form := (aForm.VCLWinControl As TCustomForm);
  while (l_Form <> nil) do
  begin
   if Supports(l_Form, IvcmMainForm, l_MainForm) then
    try
     l_History := l_MainForm.History;
     if not vcmIEQ(Self, l_History) then
     begin
      Result := true;
      theHistory := l_History;
     end;//not vcmIEQ(Self, l_History)
     break;
    finally
     l_MainForm := nil;
    end;//try..finally
    l_Form := afw.GetAnotherParentForm(l_Form);
  end;//while true
 end;//aForm = nil
end;//CheckAnother

function TvcmHistory.SaveState(const aForm      : IvcmEntityForm;
                               aStateType : TvcmStateType): Boolean;
  {-}
begin
 Result := SaveState(aForm, aStateType, False);
end;

procedure TvcmHistory.SaveClose(const aForm        : IvcmEntityForm;
                                const aFormId      : TvcmFormId;
                                aUserType    : TvcmUserType;
                                aZoneType    : TvcmZoneType;
                                aSubUserType : TvcmUserType);
  {* - форма которая должна быть закрыта при переходе по истории. }
var
 l_History : IvcmHistory;
begin
 if CheckAnother(aForm, l_History) then
  (l_History As IvcmInternalHistory).SaveClose(aForm,
                                               aFormId,
                                               aUserType,
                                               aZoneType,
                                               aSubUserType)
 else
  Add(TvcmHistoryItemPrim.Make(aForm,
                               vcm_stContent,
                               aFormId,
                               aUserType,
                               aZoneType,
                               vcm_hitClose,
                               aSubUserType));
end;

function  TvcmHistory.ForceSaveState(const aForm      : IvcmEntityForm;
                                     aStateType : TvcmStateType = vcm_stContent): Boolean;
  {* - сохранение без проверки необходимости сохранения формы. }
begin
 Result := SaveState(aForm, aStateType, False, True);
end;

function TvcmHistory.SaveState(const aForm      : IvcmEntityForm;
                               aStateType : TvcmStateType;
                               InDestroy  : Boolean;
                               aForceSave : Boolean = False): Boolean;
  //overload;
  {-}
var
 l_History : IvcmHistory;
begin
 if (g_LockHistory > 0) then
  Result := false
 else 
 if CheckAnother(aForm, l_History) then
  Result := (l_History As IvcmInternalHistory).SaveState(aForm, aStateType, InDestroy)
 else
 begin
  if aForceSave or NeedSaveForm(aForm, InDestroy) then
  begin
   if InDestroy then
    Start(aForm);
   try
    Result := Add(TvcmHistoryItem.Make(aForm, aStateType, InDestroy));
   finally
    if InDestroy then
     Finish(aForm);
   end;//try..finally
  end//NeedSaveForm
  else
   Result := False;
 end;//CheckAnother(aForm, l_History)
end;

function TvcmHistory.Add(const anItem: IvcmHistoryItem): Boolean;
  {-}
var
 l_Index : Integer;  
begin
 if (f_ContainerItem <> nil) then
 begin
  Result := f_ContainerItem.Add(anItem, f_Delta);
 end//f_ContainerItem <> nil
 else
 begin
  if (f_History = nil) then
   f_History := TvcmInterfaceList.Make;
  if (f_Current >= f_History.Count) then
   Result := (f_History.Add(anItem) >=0)
  else
  begin
   Result := true;
   f_History[f_Current] := anItem;
   if not f_InBF then
    f_History.Count := Succ(f_Current);
  end;
  if not f_InBF then
  begin
   l_Index := 0;
   while (f_History.Count - l_Index > g_vcmHistoryLimit) do
   begin
    if IvcmHistoryItem(f_History[l_Index]).Drop then
     // - удалось выместить на диск
     Inc(l_Index)
    else
    begin
     f_History.Delete(l_Index);
     Dec(f_Current);
    end;//IvcmHistoryItem(f_History[l_Index]).Drop
   end;//f_History.Count > g_vcmHistoryLimit
  end;//not f_InBF
  Inc(f_Current);
 end;//f_ContainerItem <> nil
end;//Add

function TvcmHistory.Back(aTruncate: Boolean): Boolean;
  {-}
var
 l_Current : Integer;
 l_Item    : IvcmHistoryItem;
begin
 Result := CanBack;
 if not f_Multy then 
  f_Last := True;
 if Result then
 begin
  g_Dispatcher.FormDispatcher.Lock;
  try
   g_Dispatcher.StoreFocus;
   try
    g_Dispatcher.BeginOp;
    try
     Dec(f_Current);
     l_Current := f_Current;
     f_InBF := true;
     try
      f_InBack := true;
      l_Item := IvcmHistoryItem(f_History[l_Current]);
      l_Item.Activate(MainForm);
      //
      if aTruncate AND (l_Current >= 0) then
       f_History.Count := l_Current;
     finally
      f_InBF := False;
     end;//try..finally
     f_Current := l_Current;
    finally
     g_Dispatcher.EndOp;
    end;//try..finally
   finally
    g_Dispatcher.RestoreFocus;
   end;//try..finally
  finally
   g_Dispatcher.FormDispatcher.Unlock;
  end;//try..finally
 end;//f_Current > 0
end;

function TvcmHistory.Forward: Boolean;
  {-}
var
 l_Current : Integer;
 l_Item    : IvcmHistoryItem;
begin
 Result := CanForward;
 if not f_Multy then
  f_Last := True;
 if Result then
 begin
  g_Dispatcher.FormDispatcher.Lock;
  try
   g_Dispatcher.StoreFocus;
   try
    g_Dispatcher.BeginOp;
    try
     l_Current := f_Current;
     f_InBF := true;
     try
      f_InBack := false;
      l_Item := IvcmHistoryItem(f_History[l_Current]);
      l_Item.Activate(MainForm);
     finally
      f_InBF := False;
     end;//try..finally
     f_Current := Succ(l_Current);
    finally
     g_Dispatcher.EndOp;
    end;//try..finally
   finally
    g_Dispatcher.RestoreFocus;
   end;//try..finally
  finally
   g_Dispatcher.FormDispatcher.Unlock;
  end;//try..finally
 end;//f_Current >= 0
end;

procedure TvcmHistory.Back(const aParams: IvcmExecuteParamsPrim; aTruncate: Boolean);
  //overload;
  {-}
var
 l_To : Integer;
begin
 l_To := aParams.ItemIndex;
 if (l_To <= 0) then
  l_To := 1;
 f_Multy := True;
 try
  f_Last := l_To = 1;
  while (l_To > 0) AND Back(aTruncate) do
  begin
   Dec(l_To);
   f_Last := l_To = 1;
  end;
 finally
  f_Multy := False;
  f_Last := True;
 end;
end;

procedure TvcmHistory.Forward(const aParams: IvcmExecuteParamsPrim);
  //overload;
  {-}
var
 l_To : Integer;
begin
 l_To := aParams.ItemIndex;
 if (l_To <= 0) then
  l_To := 1;
 f_Multy := True;
 f_Last := l_To = 1;
 try
  while (l_To > 0) AND Forward do
  begin
   Dec(l_To);
   f_Last := l_To = 1;
  end;
 finally
  f_Multy := False;
  f_Last := True; 
 end; 
end;

function TvcmHistory.CanBack: Boolean;
  {-}
begin
 Result := (f_History <> nil) AND
           (f_Current > 0) AND (f_Current <= f_History.Count);
end;

function TvcmHistory.CanForward: Boolean;
  {-}
begin
 Result := (f_History <> nil) AND
           (f_Current >= 0) AND (f_Current < f_History.Count);
end;

const
 cMaxCount = 10;

procedure TvcmHistory.GetBackStrings(const aParams: IvcmTestParamsPrim);
  {-}
var
 l_Index : Integer;
begin
 with aParams.Op.SubItems do
 begin
  Clear;
  if (f_History <> nil) then
   for l_Index := Pred(f_Current) downto  Max(f_Current - cMaxCount, 0) do
    Add(GetCaption(l_Index));
 end;//with aParams.Op.SubItems
end;

procedure TvcmHistory.GetForwardStrings(const aParams: IvcmTestParamsPrim);
  {-}
var
 l_Index : Integer;
begin
 with aParams.Op.SubItems do
 begin
  Clear;
  if (f_History <> nil) then
   for l_Index := f_Current to Pred(Min(f_Current + cMaxCount, f_History.Count)) do
    Add(GetCaption(l_Index));
 end;//with aParams.Op.SubItems
end;

function TvcmHistory.GetBackCount: Integer;
begin
 Result := Max(f_Current, 0);
end;

function TvcmHistory.GetForwardCount: Integer;
begin
 Result := Max(f_History.Count - f_Current, 0);
end;

function TvcmHistory.GetBackItem(anIndex: Integer): Il3CString;
begin
 Result := GetCaption(GetBackCount - anIndex - 1);
end;

function TvcmHistory.GetForwardItem(anIndex: Integer): Il3CString;
begin
 Result := GetCaption(GetBackCount + anIndex);
end;

function TvcmHistory.GetCaption(anIndex: Integer): IvcmCString;
  {-}
const
 cCont = '...';
 cLen = 73;
var
 l_Res : String; 
begin
 if (f_History = nil) OR (anIndex < 0) OR (anIndex >= f_History.Count) then
  Result := str_vcmWrongHistoryElement.AsCStr
 else
 begin
  Result := IvcmHistoryItem(f_History[anIndex]).Caption;
  if vcmIsNil(Result) then
   Result := vcmCStr(IntToStr(Succ(anIndex)));
 end;//f_History = nil..
 if (vcmLen(Result) > cLen) then
 begin
  l_Res := vcmStr(Result);
  SetLength(l_Res, cLen - Length(cCont));
  Result := vcmCStr(l_Res + cCont);
 end;//Length(Result)
end;

type
  TvcmContainerHistoryItem = class(TvcmInterfaceList, IvcmHistoryItem, IvcmContainerHistoryItem)
    private
    // internal fields
      f_Caption : IvcmCString;
    private
    // interface methods
      // IvcmHistoryItem
      function pm_GetCaption: IvcmCString;
        {-}
      procedure Activate(const aMainForm : IvcmEntityForm);
        overload;
        {-}
      procedure Activate(const aMainForm : IvcmEntityForm;
                         const anOwner   : IvcmEntityForm);
        overload;
        virtual;
        {-}
      function  Drop: Boolean;
        {* - сбросить запись на диск. }
      // IvcmContainerHistoryItem
      function Add(const anItem: IvcmHistoryItem; aDelta: Integer): Boolean;
        reintroduce;
        {-}
      function IsEmpty: Boolean;
        {-}
      function ItemsCount: Integer;
        {-}
      function GetItem(anIndex: Integer): IvcmHistoryItem;
        reintroduce;
        {-}
      procedure Cleanup;
        override;
        {-}
    public
    // public methods
      constructor Create(const aCaption: IvcmCString);
        reintroduce;
        {-}
      class function Make(const aCaption : IvcmCString): IvcmContainerHistoryItem;
        {-}
  end;//TvcmContainerHistoryItem

  TvcmContainerFormSetHistoryItem = class(TvcmContainerHistoryItem)
  {* - контейнер для хранения элементов истории сборки. }
  private
  // private methods
    procedure Activate(const aMainForm : IvcmEntityForm;
                       const anOwner   : IvcmEntityForm);
      overload;
      override;
      {-}
  end;//TvcmContainerFormSetHistoryItem

constructor TvcmContainerHistoryItem.Create(const aCaption: IvcmCString);
  //reintroduce;
  {-}
begin
 inherited Make;
 f_Caption := aCaption;
end;

class function TvcmContainerHistoryItem.Make(const aCaption : IvcmCString): IvcmContainerHistoryItem;
  {-}
var
 l_Item : TvcmContainerHistoryItem;
begin
 l_Item := Create(aCaption);
 try
  Result := l_Item;
 finally
  FreeAndNil(l_Item);
 end;//try..finally
end;

procedure TvcmContainerHistoryItem.Cleanup;
  //override;
  {-}
begin
 f_Caption := nil;
 inherited;
end;

function TvcmContainerHistoryItem.pm_GetCaption: IvcmCString;
  {-}
var
 l_Index : Integer;
begin
 Result := f_Caption;
 l_Index := 0;
 while vcmIsNil(Result) AND (l_Index < ItemsCount) do
 begin
  Result := GetItem(l_Index).Caption;
  Inc(l_Index);
 end;//while (Result = '')
end;

procedure TvcmContainerHistoryItem.Activate(const aMainForm : IvcmEntityForm);
  //overload;
  {-}
begin
 Activate(aMainForm, nil);
end;

procedure TvcmContainerHistoryItem.Activate(const aMainForm : IvcmEntityForm;
                                            const anOwner   : IvcmEntityForm);
  //overload;
  {-}
var
 l_SaveSelf : IUnknown;
 l_Index    : Integer;
begin
 l_SaveSelf := Self;
 try
  if not IsEmpty then
    for l_Index := Lo to Hi do
    IvcmHistoryItem(Items[l_Index]).Activate(aMainForm);
 finally
  l_SaveSelf := nil;
 end;//try..finally
end;

function TvcmContainerHistoryItem.Drop: Boolean;
  {* - сбросить запись на диск. }
begin
 Result := False;
end;

function TvcmContainerHistoryItem.Add(const anItem: IvcmHistoryItem; aDelta: Integer): Boolean;
  {-}
begin
 if (anItem = nil) then
  Result := False
 else
 begin
  Insert(Count - aDelta, IUnknown(anItem));
  Result := true;
 end;//anItem = nil
end;

function TvcmContainerHistoryItem.IsEmpty: Boolean;
  {-}
begin
 Result := Empty;
end;

function TvcmContainerHistoryItem.ItemsCount: Integer;
  {-}
begin
 Result := Count;
end;

function TvcmContainerHistoryItem.GetItem(anIndex: Integer): IvcmHistoryItem;
  {-}
begin
 Result := IvcmHistoryItem(Items[anIndex]);
end;

procedure TvcmHistory.Start(const aSender  : IvcmEntityForm;
                            const aCaption : IvcmCString = nil;
                            aFormSet : Boolean = False);
  {-}
var
 l_Index   : Integer;
 l_Delta   : Integer;
 l_History : IvcmHistory;
 l_Form    : IvcmEntityForm;
begin
 if CheckAnother(aSender, l_History) then
  l_History.Start(aSender)
 else
 begin
  if (f_Starts = 0) then
  begin
   Assert(aCaption = nil);
   // - проверяем необходимомсть параметра
   if not aFormSet then
    f_ContainerItem := TvcmContainerHistoryItem.Make(aCaption)
   else
    f_ContainerItem := TvcmContainerFormSetHistoryItem.Make(aCaption);
  end;//f_Starts = 0
  Inc(f_Starts);
  if (f_Starts = 1) then
  begin
   f_Delta := 0;
   if (f_Forms <> nil) then
   begin
    f_ForceSave := true;
    try
     l_Delta := 0;
     with f_Forms do
     begin
      l_Index := 0;
      while (l_Index < Count) do
      begin
       l_Form := Items[l_Index];
       if l_Form.InClose then
       begin
        if SaveState(l_Form, vcm_stContent) then
         Inc(l_Delta);
       end//l_Form.InClose
       else
       begin
        if SaveState(l_Form, vcm_stPosition) then
         Inc(l_Delta);
       end;//l_Form.InClose
       Inc(l_Index);
      end;//while (l_Index < Count)
     end;//with f_Forms
     f_Delta := l_Delta;
    finally
     f_ForceSave := False;
    end;//try..finally
   end;//f_Forms <> nil
  end;//f_Starts = 1
 end;//CheckAnother(aForm, l_History)
end;

procedure TvcmHistory.Finish(const aSender  : IvcmEntityForm);
  {-}
var
 l_Container : IvcmContainerHistoryItem;
 l_History   : IvcmHistory;
begin
 if CheckAnother(aSender, l_History) then
  l_History.Finish(aSender)
 else
 begin
  Dec(f_Starts);
  if (f_Starts = 0) then
  begin
   l_Container := f_ContainerItem;
   f_ContainerItem := nil;
   if (l_Container <> nil) AND
      not l_Container.IsEmpty AND
      (l_Container.ItemsCount > f_Delta) then
   begin
    if (l_Container.ItemsCount > 1) then
     Add(l_Container)
    else
     Add(l_Container.GetItem(0));
   end;//not l_Container.IsEmpty
  end;//f_Starts = 0
 end;//CheckAnother(aSender, l_History)
end;

procedure TvcmHistory.AddForm(const aForm: IvcmEntityForm);
  {-}
var
 l_History : IvcmHistory;
begin
 if CheckAnother(aForm, l_History) then
  l_History.AddForm(aForm)
 else
 begin
  if (f_Forms = nil) then
   f_Forms := TvcmIEntityFormPtrList.MakeSorted;
  f_Forms.Add(aForm);
 end;//CheckAnother(aForm, l_History)
end;

procedure TvcmHistory.RemoveForm(const aForm: IvcmEntityForm);
  {-}
var
 l_History : IvcmHistory;
begin
 if CheckAnother(aForm, l_History) then
 begin
  if (l_History <> nil) then // здесь эта проверка нужна !!!
   l_History.RemoveForm(aForm)
 end
 else
 begin
  if (f_Forms <> nil) then
   f_Forms.Remove(aForm);
 end;//CheckAnother(aForm, l_History)
end;

function TvcmHistory.HasInPreviousStep(const aFormClass : TvcmFormID;
                                       aUserType  : TvcmUserType = vcm_utAny): Boolean;
var
 l_ContItem : IvcmContainerHistoryItem;
 l_Check    : Boolean;
 l_Index    : Integer;

 function Check(const aItem: IvcmHistoryItem): Boolean;
 var
  l_FormItem : IvcmFormHistoryItem;
 begin//Check
  Result := Supports(aItem, IvcmFormHistoryItem,
   l_FormItem) and not l_FormItem.FormClass.EQ(aFormClass) and
   ((aUserType = vcm_utAny) or (l_FormItem.UserType = aUserType));
 end;//Check

begin
 l_Check := true;
 while (f_Current > 0) do
 begin
  if Supports(f_History[f_Current - 1], IvcmContainerHistoryItem, l_ContItem) then
  begin
   l_Check := False;
   for l_Index := 0 to l_ContItem.ItemsCount - 1 do
    if Check(l_ContItem.GetItem(l_Index)) then
    begin
     l_Check := true;
     break;
    end;//Check(l_ContItem.GetItem(l_Index))
  end//Supports(f_History[f_Current - 1], IvcmContainerHistoryItem, l_ContItem)
  else
   l_Check := Check(IvcmHistoryItem(f_History[f_Current - 1]));

  Back;
  if not l_Check then
   break;
 end;//while (f_Current > 0)

 Result := not l_Check;
end;//Back

function TvcmHistoryItemBase.pm_GetFormClass: TvcmFormId;
begin
 Result := f_FormId;
end;//pm_GetFormClass

function TvcmHistoryItemBase.pm_GetItemType : TvcmHistoryItemType;
  {* - тип элемента истории. }
begin
 Result := f_ItemType;
end;//pm_GetItemType

function TvcmHistoryItemBase.pm_GetUserType: TvcmUserType;
begin
 Result := f_UserType;
end;//pm_GetUserType

function TvcmHistory.IsLast: Boolean;
begin
 Result := f_Last;
end;//IsLast

procedure TvcmHistory.Clear(aHeedCheckCurrent : Boolean = true);
  {-}
begin
 Assert(not f_InBF);
 Assert({$IfDef nsTest}not aHeedCheckCurrent OR {$EndIf}(f_Starts <= 0));
 f_Starts := 0;
 f_Current := 0;
 if (f_History <> nil) then
  f_History.Clear;
end;

procedure TvcmHistory.DeleteBackItem;
  {-}
begin
 Assert(not f_InBF);
 Assert(f_Starts <= 0);
 Assert(f_Current > 0);
 Assert(f_Current <= f_History.Count);
 Dec(f_Current);
 f_History.Delete(f_Current);
end;

{ TvcmContainerFormSetHistoryItem }

procedure TvcmContainerFormSetHistoryItem.Activate(const aMainForm : IvcmEntityForm;
                                                   const anOwner   : IvcmEntityForm);
var
 l_SaveSelf : IUnknown;
 l_Index    : Integer;
 l_List     : TvcmInterfaceList;
 l_FormItem : IvcmFormHistoryItem;
 l_FormSet  : IvcmFormSet;
 l_MainObjectForm : IvcmEntityForm;
 l_NeedLock : Boolean;
begin
 l_SaveSelf := Self;
 try
  if not IsEmpty then
  begin
   l_NeedLock := false;
   if aMainForm.AsContainer.HasForm(vcm_ztMainObjectForm, true, @l_MainObjectForm) then
   begin
    if not l_MainObjectForm.IsMainInFormSet then
     l_MainObjectForm := l_MainObjectForm.Container.AsForm;
    if (l_MainObjectForm <> nil) then
     if (l_MainObjectForm.IsMainInFormSet) then
     begin
      l_NeedLock := true;
      g_Dispatcher.History.BeforeFormDestroy(l_MainObjectForm);
     end;//l_MainObjectForm.IsMainInFormSet
   end;//aMainForm.AsContainer.HasForm(vcm_ztMainObjectForm
   if l_NeedLock then
    Inc(g_LockBeforeFormDestroy);
   try
    l_List := TvcmInterfaceList.Make;
    try
     // Нам нужно получить FormSet до того как мы начнем активировать элементы,
     // т.к. в процессе активации данные элементов будут замененны:
     l_FormSet := nil;
     if (Hi >= 0) then
      Supports(Items[0], IvcmFormSet, l_FormSet);
     // Формы которые должны быть закрыты. Сохраняем сначала, поэтому что была
     // ситуация, когда в текущем и предыдущем шаге разные формы находились в
     // одном контейнере, при создании Формы1 существующая Форма2 удалялась и
     // когда доходили до элемента истории связанного с Формой2 он не заполнялся,
     // поскольку Формы2 уже не было (cq 00018103). Поэтому сначала сохраняются
     // формы, которые должны быть закрыты, потом создаются новые, или
     // перегружаются существующие.
     //
     for l_Index := Hi downto Lo do
      // for l_Index := Hi downto Lo do
      //   - потому, что формы из сборки записываются рекурсивным обходом дерева
      //     сборки и нам нужно сначала закрыть детей потом родителей, в которые
      //     они вложены.
      if Supports(Items[l_Index], IvcmFormHistoryItem, l_FormItem) then
      begin
       with l_FormItem do
        if ItemType = vcm_hitClose then
         Activate(aMainForm)
        else
         // l_List.Insert(0, Items[l_Index]) -
         //   - с точностью до наоборот, создаем родителей, потом детей.
         l_List.Insert(0, Items[l_Index]);
      end//Supports(Items[l_Index], IvcmFormHistoryItem, l_FormItem)
 (*     else
      if Supports(Items[l_Index], IvcmObjectWithDataHistoryItem) then
       IvcmHistoryItem(Items[l_Index]).Activate(aMainForm)*)
   // Это всё попытки залечить http://mdp.garant.ru/pages/viewpage.action?pageId=267324195
   // но дело оказалось не в этом
      ;
     // Формы которые должны быть созданы
     for l_Index := l_List.Lo to l_List.Hi do
      with IvcmHistoryItem(l_List.Items[l_Index]) do
        Activate(aMainForm);
     // Сообщим, что можно обновлять представление сборки:
     if l_FormSet <> nil then
      l_FormSet.PushFromHistory;
    finally
     FreeAndNil(l_List);
    end;//try..finally
   finally
    if l_NeedLock then
     Dec(g_LockBeforeFormDestroy);
   end;//try..finally
  end;//if not IsEmpty then
 finally
  l_SaveSelf := nil;
 end;//try..finally
end;

{ TvcmObjectWithDataHistoryItem }

procedure TvcmObjectWithDataHistoryItem.Activate(const aMainForm: IvcmEntityForm);
  // overload;
  {* - активизирет данные элемента в приложении. }
begin
 DoActivate;
end;

procedure TvcmObjectWithDataHistoryItem.Activate(const aMainForm : IvcmEntityForm;
                                                 const anOwner   : IvcmEntityForm);
  // overload;
  {* - активизирет данные элемента в приложении. }
begin
 DoActivate;
end;

constructor TvcmObjectWithDataHistoryItem.Create(const aObject : IvcmObjectWithData;
                                                 const aData   : IvcmData);
begin
 inherited Create;
 f_Object := aObject;
 f_Data := aData;
end;

procedure TvcmObjectWithDataHistoryItem.DoActivate;
var
 l_Temp: IvcmData;
begin
 l_Temp := f_Object.DataForSave;
 f_Object.DataForSave := f_Data;
 f_Data := l_Temp;
end;

function TvcmObjectWithDataHistoryItem.Drop: Boolean;
  {* - сбросить запись на диск. }
begin
 Result := False;
end;

class function TvcmObjectWithDataHistoryItem.Make(const aObject: IvcmObjectWithData;
                                                  const aData: IvcmData): IvcmHistoryItem;
var
 l_Class: TvcmObjectWithDataHistoryItem;
begin
 l_Class := Create(aObject, aData);
 try
  Result := l_Class;
 finally
  FreeAndNil(l_Class);
 end;
end;

function TvcmObjectWithDataHistoryItem.pm_GetCaption: IvcmCString;
begin
 Result := nil;
end;

(*function TvcmObjectWithDataHistoryItem.COMQueryInterface(const IID: Tl3GUID; out Obj): Tl3HResult;
  //override;
  {-}
var
 l_DS : IvcmFormSetDataSource;
begin
 Result := inherited COMQueryInterface(IID, Obj);
 if Result.Fail then
 begin
  if IID.EQ(IvcmObjectWithData) then
  begin
   IvcmObjectWithData(Obj) := f_Object;
   Result.SetOK;
  end//IID.EQ(IvcmObjectWithData)
  else
  if IID.EQ(IvcmFormSetDataSource) then
  begin
   if Supports(f_Object, IID.IID, Obj) then
    Result.SetOK;
  end//if IID.EQ(IvcmFormSetDataSource)
  else
  if IID.EQ(IvcmFormSet) then
  begin
   if Supports(f_Object, IvcmFormSetDataSource, l_DS) then
   begin
    IvcmFormSet(Obj) := l_DS.FormSet;
    if (IvcmFormSet(Obj) <> nil) then
     Result.SetOK;
   end;//Supports(f_Object, IvcmFormSetDataSource, l_DS)
  end//IID.EQ(IvcmFormSet)
  else
   Result.SetNOINTERFACE;
 end;//if l3IFail(Result) then
end;*)
  // Это всё попытки залечить http://mdp.garant.ru/pages/viewpage.action?pageId=267324195
  // но дело оказалось не в этом
{$EndIf  NoVCM}

end.

