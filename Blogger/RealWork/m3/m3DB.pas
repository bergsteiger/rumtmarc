unit m3DB;
{* Реализация хранилища документов Архивариуса. }

{ Библиотека "M3"         }
{ Автор: Люлин А.В. ©     }
{ Модуль: m3DB -          }
{ Начат: 17.08.2004 19:14 }
{ $Id: m3DB.pas,v 1.169 2013/05/17 16:14:08 voba Exp $ }

// $Log: m3DB.pas,v $
// Revision 1.169  2013/05/17 16:14:08  voba
// - K:455105818
//
// Revision 1.168  2013/05/17 16:04:54  voba
// - K:455105818 для дальнейших разборок
//
// Revision 1.167  2013/04/05 12:04:33  lulin
// - портируем.
//
// Revision 1.166  2012/10/02 08:12:28  narry
// Обновление
//
// Revision 1.165  2012/05/25 13:43:52  lulin
// - чистка кода.
//
// Revision 1.164  2012/05/24 09:05:37  lulin
// - bug fix: не сохранялись списки удалённых и модифицированных при переименовании.
//
// Revision 1.163  2012/05/22 12:52:27  lulin
// {RequestLink:365838449}
//
// Revision 1.162  2012/05/22 11:59:11  lulin
// {RequestLink:365838449}
//
// Revision 1.161  2012/05/05 11:20:48  lulin
// {RequestLink:361038156}
//
// Revision 1.160  2012/05/02 17:43:55  lulin
// {RequestLink:361038156}
//
// Revision 1.159  2011/12/27 12:51:49  lulin
// {RequestLink:324571064}
// - не дело падать в итераторе.
//
// Revision 1.158  2011/09/20 09:25:40  lulin
// - очищаем состояние Filer'а.
//
// Revision 1.157  2010/11/30 14:32:35  lulin
// {RequestLink:244194190}.
//
// Revision 1.156  2010/06/29 12:27:48  narry
// - забытый коммит :(
//
// Revision 1.155  2010/06/29 12:17:50  fireton
// - отслеживаем ошибки итерации "повыше", пишем в лог и продолжаем работу
//
// Revision 1.154  2010/06/02 10:06:29  fireton
// - расширенное логирование (under defines)
//
// Revision 1.153  2010/04/16 12:43:03  fireton
// - не падаем при ошибках в трубе, а продолжаем обрабатывать следующий документ
//
// Revision 1.152  2010/04/16 10:00:00  lulin
// {RequestLink:199590828}.
// - делаем возможность писать в базу из итератора с фильтром.
//
// Revision 1.151  2010/04/15 14:46:18  fireton
// - Range  - список файлов
//
// Revision 1.150  2010/02/08 09:46:21  dinishev
// [$186712161]
//
// Revision 1.149  2009/11/27 12:54:08  lulin
// {RequestLink:172365087}.
//
// Revision 1.148  2009/05/27 14:42:29  lulin
// [$148570764]. №1. Обновление падало на битом документе.
//
// Revision 1.147  2009/04/02 11:11:15  lulin
// [$141918746]. При итерации по переменной части открываем потоки ТОЛЬКО в переменной части.
//
// Revision 1.146  2009/03/31 06:21:23  voba
// - bug fix при апдейте создавались пустые аннотации
//
// Revision 1.145  2009/03/27 15:26:12  lulin
// - сохраняем списка в более правильный момент.
//
// Revision 1.144  2009/03/23 13:38:08  lulin
// [$139441846]. Убираем лишнюю вложенную процедуру.
//
// Revision 1.143  2009/03/23 13:34:37  lulin
// [$139441846]. Ещё раз меняем вложенность локальных функций.
//
// Revision 1.142  2009/03/23 13:28:36  lulin
// [$139441846]. Меняем вложенность локальных функций.
//
// Revision 1.141  2009/03/23 13:22:54  lulin
// [$139441846]. Не получаем документ по нескольку раз.
//
// Revision 1.140  2009/03/23 13:07:10  lulin
// [$139441846]. Переделываем удаление объектов на общий механизм.
//
// Revision 1.139  2009/03/23 12:39:16  lulin
// [$139441846]. Доделываем итерацию по объектам.
//
// Revision 1.138  2009/03/23 12:11:30  lulin
// [$139441846]. Переделал итерацию документов, но без объектов.
//
// Revision 1.137  2009/03/23 11:24:02  lulin
// - используем кошерный конструктор индекса потока документа.
//
// Revision 1.136  2009/03/23 10:21:38  lulin
// - синхронизируем код с моделью.
//
// Revision 1.135  2009/03/23 09:16:13  lulin
// - расставляем директивы условной компиляции.
//
// Revision 1.134  2009/03/23 09:03:21  lulin
// - убираем отладочный вывод в лог.
//
// Revision 1.133  2009/03/23 08:37:25  lulin
// - серьёзно уменьшаем время ожидания залочки и там где надо крутим собственные циклы ожидания - с предварительным отпусканием ресурсов.
//
// Revision 1.132  2009/03/20 13:22:40  lulin
// [$139443100]. Вставляем проверку на существование файла.
//
// Revision 1.131  2009/03/20 13:11:00  lulin
// [$139443100]. bug fix: более младшей перетирали более старшую версию.
//
// Revision 1.130  2009/03/20 11:25:41  lulin
// [$139443674]. Метод открытия потока переносим туда, где ему положено быть.
//
// Revision 1.129  2009/03/19 18:04:58  lulin
// [$139443132].
//
// Revision 1.128  2009/03/19 17:42:23  lulin
// [$139443138].
//
// Revision 1.127  2009/03/19 15:13:17  lulin
// - используем структуру, а не размазанные параметры.
//
// Revision 1.126  2009/03/19 14:29:28  lulin
// - выносим на базу функцию получения списка номеров объектов в документе.
//
// Revision 1.125  2009/03/19 12:49:00  lulin
// - чистка кода.
//
// Revision 1.124  2009/03/19 12:39:33  lulin
// - переносим директиву в правильный файл.
//
// Revision 1.123  2009/03/19 12:31:48  lulin
// - переносим итератор по объектам документа на базу.
//
// Revision 1.122  2009/03/18 15:56:40  lulin
// - итератор по объектам документа сделан локальной процедурой.
//
// Revision 1.121  2009/03/18 15:50:15  lulin
// - итератор по версиям сделан локальной процедурой.
//
// Revision 1.120  2009/03/18 12:07:44  lulin
// - после успешной записи потока переименовываем его в то название по которому пытаемся его писать.
//
// Revision 1.119  2009/03/17 18:47:27  lulin
// - чистка кода.
//
// Revision 1.118  2009/03/17 18:31:14  lulin
// - делаем запись служебной информации о базе и версии документа, ПОСЛЕ УСПЕШНОЙ записи потока.
//
// Revision 1.117  2009/03/17 15:03:17  lulin
// - убираем ненужную виртуальность.
//
// Revision 1.116  2009/03/17 14:07:45  lulin
// - используем локальные процедуры и перемещаем часть методов на объект.
//
// Revision 1.115  2009/03/17 13:10:09  lulin
// - используем локальные процедуры.
//
// Revision 1.114  2009/03/17 12:38:35  lulin
// - переносим итераторы на объект.
//
// Revision 1.113  2009/03/17 11:52:40  lulin
// - убираем ненуждные методы интерфейса.
//
// Revision 1.112  2009/03/16 19:31:43  lulin
// - убираем ненужный параметр.
//
// Revision 1.111  2009/03/16 19:16:19  lulin
// - причёсываем видимость процедур.
//
// Revision 1.109  2009/03/16 18:44:13  lulin
// - расширяем скобки работы с базой.
//
// Revision 1.108  2009/03/16 18:42:29  lulin
// - избавляемся от лишнего списка идентификаторов объектов.
//
// Revision 1.107  2009/03/16 18:39:37  lulin
// - убираем ненужный итератор с части документа.
//
// Revision 1.105  2009/03/16 18:15:33  lulin
// - поправлено форматирование.
//
// Revision 1.104  2009/03/16 17:58:24  lulin
// - избавляемся от ненужного и странного метода.
//
// Revision 1.103  2009/03/16 17:35:04  lulin
// - выделяем идентификатор нового объекта в самом низу.
//
// Revision 1.102  2009/03/16 17:25:38  lulin
// - восстанавливаем возможность рулить отпусканием версий в хранилище.
//
// Revision 1.101  2009/03/16 17:15:42  lulin
// - убираем устаревший метод.
//
// Revision 1.100  2009/03/16 17:11:38  lulin
// - проверяем догадку о том, что нафи не нужно выносить этот метод на базу.
//
// Revision 1.99  2009/03/16 17:03:49  lulin
// - убираем ненужные значения по-умолчанию.
//
// Revision 1.98  2009/03/16 16:59:07  lulin
// - используем человеческий интерфейс, а не кишочки.
//
// Revision 1.97  2009/03/16 16:46:19  lulin
// - убираем ненужные параметры по-умолчанию и вставляем проверку инвариантов.
//
// Revision 1.96  2009/03/16 16:18:52  lulin
// - <K>: 138969458. Убираем ненужный параметр.
//
// Revision 1.95  2009/03/16 13:31:29  lulin
// - вычищаем использование ненужного модуля.
//
// Revision 1.94  2009/03/16 13:28:27  lulin
// - [$139434552].
//
// Revision 1.93  2008/10/22 12:52:19  voba
// - bug fix ошибка с множественной подсветкой найденных
//
// Revision 1.92  2008/07/02 13:30:39  lulin
// - <K>: 90443135.
//
// Revision 1.91  2008/07/02 12:26:56  fireton
// - рефакторинг (mdp-90443135): избавляемся от списков обработанных объектов в объявлении методов
//
// Revision 1.90  2008/06/06 11:57:45  fireton
// - bug fix: утечки
//
// Revision 1.89  2008/05/14 12:16:53  fireton
// - развязал логику итераторов (К 90443149)
//
// Revision 1.88  2008/05/13 11:21:16  lulin
// - вычищен ненужный параметр, <K>: 90443135.
//
// Revision 1.87  2008/05/13 10:15:34  lulin
// - изменения в рамках <K>: 90443135.
//
// Revision 1.86  2008/05/12 14:54:07  lulin
// - <K>: 90443788.
//
// Revision 1.85  2008/05/12 06:57:13  lulin
// - bug fix: не собирался Архивариус, т.к. генерация перетёрла Антошины изменения.
//
// Revision 1.84  2008/05/08 14:04:19  fireton
// - перенос объектов в потоках из ветки
//
// Revision 1.83  2008/04/17 15:14:16  narry
// - в монопольном режиме пишем только в одно хранилище
//
// Revision 1.82  2008/03/20 09:48:42  lulin
// - cleanup.
//
// Revision 1.81  2008/02/29 08:24:14  lulin
// - bug fix: не собирался Архивариус.
//
// Revision 1.80  2008/02/19 11:38:41  lulin
// - восстановил компилируемость Архивариуса.
//
// Revision 1.79  2008/02/14 17:30:34  lulin
// - cleanup.
//
// Revision 1.78  2008/02/13 16:03:16  lulin
// - убраны излишне гибкие методы поиска.
//
// Revision 1.77  2008/02/12 14:39:45  lulin
// - методы для чтения списка переехали на примесь.
//
// Revision 1.76  2008/02/12 11:44:54  lulin
// - методы для сохранения списка переехали на примесь.
//
// Revision 1.75  2008/02/07 14:44:48  lulin
// - класс _Tl3LongintList переехал в собственный модуль.
//
// Revision 1.74  2007/12/21 08:26:10  lulin
// - функции для построения оберток вынесены в отдельный модуль.
//
// Revision 1.73  2007/11/21 18:11:04  lulin
// - убрана ненужная виртуальность.
//
// Revision 1.72  2007/10/29 12:51:53  lulin
// - используем интерфейс, вместо класса.
//
// Revision 1.71  2007/10/26 15:01:31  lulin
// - вычищен ненужный интерфейс.
//
// Revision 1.70  2007/08/21 11:39:54  lulin
// - избавляемся от предупреждений компилятора.
//
// Revision 1.69  2007/08/20 19:06:25  lulin
// - bug fix: возвращали неправильное значение.
//
// Revision 1.68  2007/08/20 18:28:16  lulin
// - делаем вилку для сохранения файлов хранилища.
//
// Revision 1.66  2007/08/20 18:12:53  lulin
// - cleanup.
//
// Revision 1.65  2007/08/20 18:09:22  lulin
// - cleanup.
//
// Revision 1.64  2007/07/23 15:09:25  voba
// - refact. переделал буферезацию удаленных/измененных
//
// Revision 1.63  2007/04/19 12:36:50  voba
// - спасение тверских данных
// - del procedure CheckVersion
//
// Revision 1.62  2006/12/18 15:29:24  lulin
// - cleanup.
//
// Revision 1.61  2006/10/05 09:30:04  fireton
// - более правильное чтение info
//
// Revision 1.60  2006/10/04 08:44:25  voba
// - add кеширование modified и deleted листов в m3DB
//
// Revision 1.59  2006/09/25 14:43:04  voba
// - new beh. загрузка листов без сортировки
//
// Revision 1.58  2006/09/12 12:13:38  fireton
// - подготовка к реализации right management на сервере
//
// Revision 1.57  2006/08/29 11:18:23  fireton
// - поддержка интерфейса хелпера на базе
// - _CopyThrough теперь принимает nil в качестве базы (пропустить через фильтр и никуда не писать)
// - в инфо пишутся и читаются новые поля
//
// Revision 1.56  2006/04/25 09:34:14  lulin
// - cleanup.
//
// Revision 1.55  2006/04/13 15:44:22  fireton
// - bug fix: _CopyThrough - отлинковываем writer от фильтров (чтобы он полностью освободился)
//
// Revision 1.54  2006/04/04 09:58:05  fireton
// - bug fix: _CopyTrough - информацию о документе не надо пропускать через трубу
//
// Revision 1.53  2006/03/27 08:19:47  voba
// - bug fix
//
// Revision 1.52  2006/03/24 14:38:11  fireton
// - add: в _CopyThrough добавлен фильтр, через который пропускается поток
//
// Revision 1.51  2006/03/20 08:56:43  fireton
// - метод _CopyThrough
//
// Revision 1.50  2006/03/16 09:58:17  voba
// - поддержка версий в SimpleDB
//
// Revision 1.49  2006/03/09 09:02:12  voba
// - merge
//
// Revision 1.48.2.3  2006/03/09 08:31:02  voba
// - bug fix
//
// Revision 1.48.2.2  2006/03/02 14:43:36  voba
// - new beh. абстрагирование _Im3DB от структуры базы (продолжение)
//
// Revision 1.48.2.1  2006/03/02 09:41:28  voba
// - new beh. абстрагирование _Im3DB от структуры базы (продолжение)
//
// Revision 1.48  2006/02/22 09:07:19  voba
// - new beh. абстрагирование _Im3DB от структуры базы (продолжение)
//
// Revision 1.47  2006/02/21 12:52:08  voba
// - new beh. абстрагирование _Im3DB от структуры базы (часть 3)
//
// Revision 1.46  2006/02/14 08:41:40  voba
// - new beh. абстрагирование _Im3DB от структуры базы (часть 2)
// - rename
//  Tm3DocumentStream   -> Tm3DocPartSelector
//  Tm3DocumentStreams  -> Tm3DocPartSet
//  m3_defDocStream     -> m3_defDocPart
//  m3_AllDocStreams    -> m3_AllDocParts
//
// Revision 1.45  2006/02/09 15:03:50  voba
// - new beh. абстрагирование _Im3DB от структуры базы
//
// Revision 1.44  2006/02/07 16:38:41  voba
// - new beh. абстрагирование _Im3DB от структуры базы
//
// Revision 1.43  2006/02/06 13:32:18  voba
// - new beh. выпилил поддержку стаго хранилища (часть 2)
//
// Revision 1.42  2006/02/03 07:15:24  voba
// - new beh. выпилил поддержку стаго хранилища
//
// Revision 1.41  2005/05/24 11:07:42  lulin
// - cleanup.
//
// Revision 1.40  2005/04/19 15:41:54  lulin
// - переходим на "правильный" ProcessMessages.
//
// Revision 1.39  2005/02/15 17:46:53  lulin
// - new behavior: при работе с информацией о документе используем стандартную функцию _Open(.. m3_dsInfo).
//
// Revision 1.38  2005/02/15 17:08:46  lulin
// - new const: m3_dsInfo.
//
// Revision 1.37  2005/02/15 16:11:02  lulin
// - cleanup.
//
// Revision 1.36  2005/02/15 16:05:06  lulin
// - спрятал ненужные методы.
//
// Revision 1.35  2005/02/15 15:59:39  lulin
// - new behavior: метод m3IterateVersionsForCompare теперь работает через интерфейс _Im3DB.
//
// Revision 1.34  2005/02/15 15:13:02  lulin
// - обновлена документация.
//
// Revision 1.33  2005/02/15 14:41:25  lulin
// - cleanup.
//
// Revision 1.32  2005/02/15 13:12:36  lulin
// - new prop: _Tm3DBFiler.DocStream,
//
// Revision 1.31  2005/02/15 11:49:15  lulin
// - new behavior: теперь все итераторы могут перебирать составные части документов (main, anno).
//
// Revision 1.30  2005/02/14 16:09:32  lulin
// - new behavior: теперь документы Архивариуса состоят из двух потоков - main (текст) и anno (аннотация).
//
// Revision 1.29  2005/02/14 15:12:01  lulin
// - изменены сигнатуры методов.
//
// Revision 1.28  2005/02/14 14:41:23  lulin
// - new behavior: записываем номер версии базы в хранилище.
//
// Revision 1.27  2005/02/14 13:54:50  lulin
// - new behavior: в хранилище версий документов документ теперь представляется директорией с потоком main.
//
// Revision 1.26  2004/11/10 08:02:43  lulin
// - выключены "лишние" директивы.
//
// Revision 1.25  2004/11/03 17:44:37  lulin
// - remove unit: m3OldBaseTools.
//
// Revision 1.24  2004/11/03 17:33:38  voba
// - new behavior: при неудаче записи в старое хранилище пытаемся записать ТОЛЬКО в новое или выводим exception.
//
// Revision 1.23  2004/11/03 14:29:55  lulin
// - убрал лишний перехват exception'ов.
//
// Revision 1.22  2004/11/03 13:21:09  lulin
// - не поднимаем exception если не смогли открыть файл в старом хранилище.
//
// Revision 1.21  2004/11/02 17:50:48  lulin
// - bug fix: избавляемся от Dealock'а при зеркальном доступе с разных машин к разным компонентам хранилища.
//
// Revision 1.20  2004/11/02 16:54:25  lulin
// - bug fix: при закрытии базы очищаем режимы открытия хранилищ.
//
// Revision 1.19  2004/11/02 15:12:30  lulin
// - bug fix: неправильно указывали режим открытия базы.
//
// Revision 1.18  2004/10/06 13:52:18  lulin
// - теперь метод _Im3DB.Start имеет два ОБЯЗАТЕЛЬНЫХ параметра - режимы открытия частей.
//
// Revision 1.17  2004/10/01 09:08:36  lulin
// - new method: Im3DBDocument._Open.
//
// Revision 1.16  2004/10/01 07:48:28  lulin
// - bug fix: забыл значение параметра по умолчанию.
//
// Revision 1.15  2004/10/01 07:19:44  lulin
// - new behavior: сделана возможность в итераторе и обновлении игнорировать пустые файлы.
//
// Revision 1.14  2004/09/27 12:15:11  lulin
// - new method: _Im3DB.Files.
//
// Revision 1.13  2004/09/27 11:33:01  lulin
// - new method: _Im3DB.SingleDocument.
//
// Revision 1.12  2004/09/24 15:52:52  lulin
// - bug fix: были несбалансированны скобки индикатора.
//
// Revision 1.11  2004/09/24 10:40:00  lulin
// - bug fix: не освобождался файл с резервными копиями.
//
// Revision 1.10  2004/09/24 07:54:51  lulin
// - были несбалансированы скобки индикатора.
//
// Revision 1.9  2004/09/23 14:41:08  lulin
// - bug fix: невовремя создавали "вилку".
//
// Revision 1.8  2004/09/23 14:04:34  lulin
// - bug fix: задавил exception при попытке открытия файла старого хранилища на запись.
//
// Revision 1.7  2004/09/23 12:14:50  lulin
// - new behavior: при записи в новое хранилище сделана запись в резервную часть.
//
// Revision 1.6  2004/09/22 10:43:15  lulin
// - не падаем если не смогли открыть базу.
//
// Revision 1.5  2004/09/21 11:22:27  lulin
// - Release заменил на Cleanup.
//
// Revision 1.4  2004/09/09 16:03:20  voba
// - закоментировали открытие постоянной части на запись?
//
// Revision 1.3  2004/09/09 15:09:03  lulin
// - bug fix: не очищали поле f_Starts (!).
//
// Revision 1.2  2004/09/06 16:28:05  law
// - new define: m3NotUseForkStreamToOldBase.
//
// Revision 1.1  2004/09/02 08:09:47  law
// - cleanup.
//
// Revision 1.85  2004/09/01 16:28:25  law
// - new behavior: не делаем "вилку" при записи в постоянную часть.
//
// Revision 1.84  2004/09/01 15:15:32  voba
// - bug fix несовместимость с консольным режимом
//
// Revision 1.83  2004/08/31 17:17:09  law
// - перевел на лог от l3System.
//
// Revision 1.82  2004/08/31 17:02:24  law
// - cleanup: убраны ненужные параметры.
//
// Revision 1.81  2004/08/31 16:54:59  narry
// - bug fix by Lulin
//
// Revision 1.80  2004/08/31 16:46:47  law
// - в модифицирующих операциях выставляем базе режим ReadWrite.
//
// Revision 1.79  2004/08/31 16:40:32  law
// - при открытии потока в Filer'е указываем режим открытия базы.
//
// Revision 1.78  2004/08/31 16:33:57  law
// - bug fix: в итераторе по старой базе заменил залочку с административной на пользовательскую.
//
// Revision 1.77  2004/08/31 13:59:24  law
// - cleanup.
//
// Revision 1.76  2004/08/31 13:56:33  law
// - bug fix: не учитывали опцию - старая/новая база.
//
// Revision 1.75  2004/08/31 13:52:34  law
// - new method: _Im3DB.Purge.
//
// Revision 1.74  2004/08/31 13:24:03  law
// - сделана возможность в процедуре _Im3DB._CopyTo перезаписывать пустые.
//
// Revision 1.73  2004/08/30 16:16:59  law
// - подавляем ошибки при получении DocInfo для документа из старого хранилища.
//
// Revision 1.72  2004/08/30 15:13:14  voba
// - add function _m3DBDocumentInfo - "делает" Tm3DBDocumentInfo.
//
// Revision 1.71  2004/08/30 13:12:13  voba
// - bug fix: пытались открывать документ с идентификатором 0.
//
// Revision 1.70  2004/08/30 12:45:10  law
// - new behavior: отпускаем ExchangeDirStream перед вызовом подитеративной функции.
//
// Revision 1.69  2004/08/30 10:59:02  law
// - remove class: TmgBasePackageTagFilter.
// - new unit: m3DocumentInfoFilter.
//
// Revision 1.68  2004/08/30 09:32:12  law
// - bug fix: _Tm3DBFiler не учитывал постоянную часть.
//
// Revision 1.67  2004/08/30 08:21:28  law
// - при копировании Info проверяем, что это первая верси.
//
// Revision 1.66  2004/08/30 08:13:38  law
// - new behavior: при создании версии копируем инфо из постоянной части.
//
// Revision 1.65  2004/08/27 15:12:59  voba
// - merge with B_New_Text_Base
//
// Revision 1.64  2004/08/27 14:50:40  law
// - new define: m3UseForkStreamToOldBase.
//
// Revision 1.63.2.1  2004/08/25 16:11:54  law
// - постепенно отказываемся от прямого использования старого хранилища.
//
// Revision 1.63  2004/08/25 14:37:56  law
// - new method: Tm3DB.MakeDef.
//
// Revision 1.62  2004/08/25 12:06:45  law
// - new behavior: _Im3DB.Update и Im3DBRange._CopyTo теперь возвращают код успеха.
//
// Revision 1.61  2004/08/25 11:05:31  law
// - new param: _Im3DB.Start -> aMode.
//
// Revision 1.60  2004/08/25 10:02:44  law
// - bug fix: не падаем на чтении Info из "битых" файлов.
//
// Revision 1.59  2004/08/24 15:22:22  law
// - при индексации нового хранилища читаем список удаленных из "правильного места".
//
// Revision 1.58  2004/08/24 14:22:46  law
// - bug fix: метод Tm3BaseRange.Mul не учитывал f_IndexID.
//
// Revision 1.57  2004/08/24 14:13:35  law
// - bug fix: повисало при индексации новой постоянной части.
// - bug fix: при пропускании документов которые не надо индексировать не рисовался "градусник".
// - new behavior: перебор постоянной части нового хранилища учитывает (_ModifiedFiles).
//
// Revision 1.56  2004/08/24 13:43:29  law
// - bug fix: не туда писалась информация о переменной части.
// - new behavior: ведем список модифицированных файлов.
//
// Revision 1.55  2004/08/24 13:06:36  law
// - new method: Im3DBDocument.Undelete.
//
// Revision 1.54  2004/08/24 10:45:05  law
// - сделана запись об удаленных файлах в новое хранилище.
//
// Revision 1.53  2004/08/24 07:52:24  law
// - new: сделана возможность индексировать в несколько индексов.
//
// Revision 1.52  2004/08/24 06:28:52  law
// - new methods versions: Im3DBRange.Iterate, IterateF.
//
// Revision 1.51  2004/08/24 06:13:21  law
// - new method: Tm3DB.TuneFiler.
//
// Revision 1.50  2004/08/24 06:01:48  law
// - _Tm3DBDocumentPart._Open переведен на использование Filer'а.
//
// Revision 1.49  2004/08/23 16:15:51  law
// - bug fix.
//
// Revision 1.48  2004/08/23 15:29:33  law
// - для старого хранилища возвращаем rIndexID.
//
// Revision 1.47  2004/08/23 15:12:13  law
// - rename prop: Im3DBDocumentPart.ContentType -> Info.
//
// Revision 1.46  2004/08/23 14:56:58  law
// - методы _Open* переехали на интерфейс Im3DBDocumentPart.
//
// Revision 1.45  2004/08/23 13:16:06  law
// - new behavior: копирование документов учитывает ContentType.
//
// Revision 1.44  2004/08/23 12:58:20  law
// - new interface: Im3DBDocumentPart.
//
// Revision 1.43  2004/08/23 12:01:47  law
// - добавлено значение параметра по умолчанию.
//
// Revision 1.42  2004/08/23 11:50:58  law
// - даны более вразумительне названия методам.
//
// Revision 1.41  2004/08/23 11:45:46  law
// - добавлены скобки.
//
// Revision 1.40  2004/08/20 16:28:56  law
// - cleanup.
//
// Revision 1.39  2004/08/20 16:24:19  law
// - new param: Im3DBRange._CopyTo -> aRewrite.
//
// Revision 1.38  2004/08/20 16:20:45  law
// - new method: Im3DBRange._CopyTo.
//
// Revision 1.37  2004/08/20 16:01:53  law
// - метод _Im3DB.Update переведен на рельсы работы с Im3DBDocument.
//
// Revision 1.36  2004/08/20 15:48:41  law
// - открытие документа на запись обновляет информацию о наибольшем и наиментшем индексах.
//
// Revision 1.35  2004/08/20 15:34:34  law
// - реализованы функции Im3DBDocument._Open* и для старой базы тоже.
//
// Revision 1.34  2004/08/20 14:54:12  law
// - вынес константы.
//
// Revision 1.33  2004/08/20 13:57:42  law
// - bug fix: при переборе файлов ExchDirStream открывался только на Read, что приводило к WriteStreamError при вызове LockDirHandle.
//
// Revision 1.32  2004/08/20 12:30:05  law
// - new methods: Im3DBDocument._Open*.
//
// Revision 1.31  2004/08/20 11:48:05  law
// - new method: _Im3DB.GetDocument.
//
// Revision 1.30  2004/08/20 11:29:29  law
// - кешируем файлы нового хранилища.
//
// Revision 1.29  2004/08/20 11:17:10  law
// - new behavior: меряем время уже после закрытия базы.
//
// Revision 1.28  2004/08/20 11:14:14  law
// - new behavior: по завершению процесса закрываем базу.
//
// Revision 1.27  2004/08/20 10:44:24  law
// - new behavior: при обновлении нового хранилища выводим прогресс копирования файла.
//
// Revision 1.26  2004/08/20 08:59:09  law
// - new behavior: итератор по новой базе теперь учитывает и переменную часть тоже (пока на основе ldl-файла).
//
// Revision 1.25  2004/08/20 08:09:17  law
// - new method: Im3DBDocument.Delete.
//
// Revision 1.24  2004/08/20 07:48:16  law
// - new interface: Im3DBDocument.
//
// Revision 1.23  2004/08/20 07:17:27  law
// - new props: Im4DB.FakeIndex, PackedIndex.
//
// Revision 1.22  2004/08/20 06:53:16  law
// - убрал с Tm3DB знания об afw.ProcessMessages.
//
// Revision 1.21  2004/08/20 06:32:52  law
// - время процесса и флаг остановки теперь относятся к _Im3DB.
//
// Revision 1.20  2004/08/20 06:07:17  law
// - new procs: _Im3DB.Start, Finish, LastElapsed.
//
// Revision 1.19  2004/08/20 05:55:30  law
// - Tm3DB.Update для новой базы переведен на итератор по _ModifiedFiles.
//
// Revision 1.18  2004/08/20 05:45:47  law
// - new proc: _Im3DB.Update.
//
// Revision 1.17  2004/08/19 18:20:02  law
// - реализован метод Tm4DB.UpdateIndex.
//
// Revision 1.16  2004/08/19 17:51:47  law
// - new method: Im4DB.UpdateIndex.
//
// Revision 1.15  2004/08/19 17:27:14  law
// - не пользуемся внутренними переменными напрямую.
//
// Revision 1.14  2004/08/19 17:06:12  law
// - new proc: _m3GetVersionsStorage.
//
// Revision 1.13  2004/08/19 16:58:28  law
// - в хранилище версий записываем информацию о верхнем и нижнем индексах хранимых файлов.
//
// Revision 1.12  2004/08/19 16:49:37  law
// - более корректно обращаемся с индикатором общего процесса.
//
// Revision 1.11  2004/08/19 15:37:03  law
// - в нулевом приближении сделана индексация нового хранилища.
//
// Revision 1.10  2004/08/19 12:16:15  law
// - new class: Tm3BaseRange.
//
// Revision 1.9  2004/08/18 17:46:11  law
// - new method version: Im3DBRange.Iterate.
//
// Revision 1.8  2004/08/18 17:37:26  law
// - поправлен заголовок модуля.
//
// Revision 1.7  2004/08/18 17:36:29  law
// - remove method: Im3DBRange.Add.
// - new method: Im3DBRange.Mul.
//
// Revision 1.6  2004/08/18 17:23:25  law
// - new method: Im3DBRange.LastElapsed.
//
// Revision 1.5  2004/08/18 17:20:53  law
// - new method: Im3DBRange.Iterate.
//
// Revision 1.4  2004/08/18 16:51:30  law
// - начал перетаскивать функции работы с базой из глобальных в интерфейс _Im3DB.
//
// Revision 1.3  2004/08/18 15:42:30  law
// - new units.
//
// Revision 1.2  2004/08/17 15:19:00  law
// - убрал лишний inc.
//
// Revision 1.1  2004/08/17 15:16:13  law
// - new unit: m3DB.
//

{$Include m3Define.inc}

interface

uses
  Classes,

  l3Types,
  l3Base,
  l3CacheableBase,
  l3Filer,
  l3LongintList,

  m3Types,
  m3StorageInterfaces,
  m3Interfaces,
  m3DBInterfaces,
  m3PrimDB
  ;

const
 Cm3ConstVersion = High(Longint); // версия документа из постоянной части
 Cm3LastVersion = 0;

type
 Tm3CommonListSelector = (clsDeleted, clsModified);

type
  Tm3CustomDB = class(Tm3PrimDB, Im3DB)
    private
    // internal fields
      f_BaseName         : AnsiString;
      f_DeletedList_Add  : Tl3LongintList;
      f_DeletedList_Del  : Tl3LongintList;
      f_ModifiedList_Add : Tl3LongintList;
      f_ModifiedList_Del : Tl3LongintList;
    protected
    // internal fields
      f_Stopped          : Boolean;
      f_Starts           : Integer;
      f_Elapsed          : TDateTime;
      f_DeletedFiles     : Tl3LongintList;
      f_FileMeter        : Tl3ProgressProc;
      f_FilesMeter       : Tl3ProgressProc;
      f_FilesProcessed   : Tm3FilesProcessed;
      f_FilesProcessedEx : Tm3FilesProcessedEx;
      f_OnYield          : TNotifyEvent;
    protected
    // interface methods
      // Im3DB
      function  IndexedFiles(anIndexID : Integer = 1): Im3DBRange;
        virtual; abstract;
        {-}
      function  ModifiedFiles(aNotEmpty : Boolean = false;
                              aLevel    : Integer = Cm3LastVersion): Im3DBRange;
        virtual; abstract;
        {-}
      function  AllFiles: Im3DBRange; virtual; abstract;
        {-}
      function FilesInList(const aList: Im3StorageElementIDList): Im3DBRange; virtual; abstract;
        {-}
      function  InProcess: Boolean;
        {* - с базой идет процесс. }
      function  Stopped: Boolean;
        {* - предыдущий процесс был остановлен. }
      procedure Stop;
        {* - остановить текущий процесс. }
      function  Purge: Integer;
        virtual;
        abstract;
        {* - удаляет файлы, помеченные как удаленные. }
      function  Update(aNotEmpty: Boolean = true): Boolean;
        virtual;
        abstract;
      procedure FlushLists;
        {* - сбрасывает кеш Modified и Deleted листов.
             Применяется при массовой заливке документов в конце заливки пачки.
             Так же вызывается при уничтожении объекта доступа к базе (Tm3DB)}

        {* - переливает файлы из переменной части в постоянную. }
      function  LastElapsed: TDateTime;
        {* - время последнего процесса с базой. }
      function  GetDocument(anID: Integer): Im3DBDocument;
        virtual;
        abstract;
        {* - возвращает документ по номеру. }

      function OpenList(const aName: AnsiString;
                        aStatStgMode: Integer = m3_saReadWrite;
                        aUseCompression : Boolean = True) : IStream;
        virtual;
        abstract;
        {-}

      procedure LoadList(const aName: AnsiString; aList: Tl3LongintList);
        {-}
      procedure SaveList(const aName: AnsiString; aList: Tl3LongintList);
        {-}

      procedure SetList(aListSelector : Tm3CommonListSelector; anID: Integer; aInsert: Boolean);
        {* - Исправляет список aListSelector.}
      function  MakeCommonList(aListSelector : Tm3CommonListSelector): Tl3LongintList;
        {-}
      function  DeletedFiles: Tl3LongintList;
        {-}
      procedure ModifyDeleted(anID: Integer; aInsert: Boolean);
        {* - Исправляет список удаленных. }
      procedure ModifyModified(anID: Integer);
        override;
        {* - Исправляет список измененных. }
      procedure FreeVersions; virtual; abstract;
        {-}
      procedure DeleteVersion;
        {-}
      procedure DeleteMain;
        {-}
   procedure RenameMain(const aNewName: AnsiString);
   procedure RenameVersion(const aNewName: AnsiString);
   procedure Rename(const aNewName: AnsiString);
    protected
      procedure BeforeRelease;
        override;
        {-}
      procedure Cleanup;
        override;
        {-}
      procedure FreeLists;
        {-}  
      procedure Release;
        override;
        {-}
      procedure Yield;
        {-}
      procedure TuneFiler(aFiler: Tl3CustomFiler);
        {-}
    protected
    // internal properties
      property BaseName: AnsiString
        read f_BaseName;
        {-}
    public
    // public methods
      constructor Create(const aBaseName   : AnsiString;
                         aOnYield          : TNotifyEvent;
                         aFileMeter        : Tl3ProgressProc;
                         aFilesMeter       : Tl3ProgressProc;
                         aFilesProcessed   : Tm3FilesProcessed;
                         aFilesProcessedEx : Tm3FilesProcessedEx);
        reintroduce;
        virtual;
        {* - создает экземпляр класса. }
      class function Make(const aBaseName   : AnsiString;
                          aOnYield          : TNotifyEvent = nil;
                          aFileMeter        : Tl3ProgressProc = nil;
                          aFilesMeter       : Tl3ProgressProc = nil;
                          aFilesProcessed   : Tm3FilesProcessed = nil;
                          aFilesProcessedEx : Tm3FilesProcessedEx = nil): Im3DB;
        reintroduce;
        {* - создает экземпляр класса как интерфейс Im3DB. }
  end;//Tm3CustomDB

  Tm3DB = class(Tm3CustomDB)
   {* Реализация хранилища документов Архивариуса. }
    private
    // internal fields
      {$IFDef m3DBNeedsFork}
      f_BackupVersionsStorage: Im3IndexedStorage;
      {$EndIF m3DBNeedsFork}
      f_MainStorage         : Im3IndexedStorage;
      f_MainStorageMode     : Tm3StoreAccess;
      f_VersionsStorage     : Im3IndexedStorage;
      f_VersionsStorageMode : Tm3StoreAccess;

      procedure pm_SetVersionsStorage(const Value: Im3IndexedStorage);
    protected
    // interface methods
      // Im3DB
      procedure FreeVersions; override;
        {-}
      function  IndexedFiles(anIndexID : Integer = 1): Im3DBRange;
        override;
        {-}
      function  ModifiedFiles(aNotEmpty : Boolean = false;
                              aLevel    : Integer = Cm3LastVersion): Im3DBRange;
        override;
        {-}
      function  AllFiles: Im3DBRange;
        override;
        {-}
      function FilesInList(const aList: Im3StorageElementIDList): Im3DBRange;
        override;
        {-}
      function  Purge: Integer;
        override;
        {* - удаляет файлы, помеченные как удаленные. }
      function  Update(aNotEmpty: Boolean = true): Boolean;
        override;
        {* - переливает файлы из переменной части в постоянную. }
      procedure Start(aOpenMode : Tm3StoreAccess);
        override;
        {* - начинает процесс с базой. }
      procedure Finish;
        override;
        {* - заканчивает процесс с базой. }
      function  GetDocument(anID: Integer): Im3DBDocument;
        override;
        {* - возвращает документ по номеру. }
    protected
    // internal methods
      procedure StartEx(aVersionsMode : Tm3StoreAccess;
                        aConstMode    : Tm3StoreAccess);
        override;                
        {* - начинает процесс с базой. }
      function MainStorage(aMode: Tm3StoreAccess = m3_saRead): Im3IndexedStorage;
        override;
        {-}
      function GetVersionsStorage(aMode: Tm3StoreAccess = m3_saRead): Im3IndexedStorage;
        override;
        {-}
      function GetBackupStorage(aMode: Tm3StoreAccess = m3_saRead): Im3IndexedStorage;
        override;
        {-}
      procedure CloseBase;
        override;
        {* - закрывает открытые файлы. }

      function OpenList(const aName: AnsiString;
                        aStatStgMode: Integer = m3_saReadWrite;
                        aUseCompression : Boolean = True) : IStream;
        override;
        {* - Исправляет список измененных. }
  public
      property VersionsStorage: Im3IndexedStorage read f_VersionsStorage write pm_SetVersionsStorage;
  end;//Tm3DB

  Tm3DBFiler = class(Tl3CustomFiler)
   {* "Парень" для работы с содержимым документа Архивариуса. }
    private
    // internal fields
      f_DB     : Im3DB;
      f_Index: Integer;
      f_Part   : Im3DBDocumentPart;
      f_PartSelector: Tm3DocPartSelector;
    protected
    // internal methods
      function  DoOpen: Boolean;
        override;
        {-}
      procedure DoClose;
        override;
        {-}
      procedure Cleanup;
        override;
        {-}
    public
    // public methods
      constructor Create(const aDB : Im3DB;
                         aHandle   : Integer = Cm3LastVersion;
                         aDocPart  : Tm3DocPartSelector = m3_defDocPart;
                         anIndex   : Integer = 0);
        reintroduce;
        {* - создает экземпляр класса. }
      {$IfDef OpenCloseLog}
      procedure OuttoLog(aProcName : String);
      procedure Open; override;
        {* - открыть поток. }
      procedure Close; override;
        {* - закрыть поток. }
      {$EndIf OpenCloseLog}
    public
      property Index: Integer read f_Index write f_Index;
    // public properties
      property Part: Im3DBDocumentPart
        read f_Part;
        {* - часть открытого документа. }
      property PartSelector: Tm3DocPartSelector
        read f_PartSelector
        write f_PartSelector;
        {* - поток документа. }
  end;//Tm3DBFiler

  Tm3BaseObject = class(Tl3CacheableBase, Im3DBObject)
    private
    // internal fields
      f_DB      : Tm3CustomDB;
    protected
    // interface methods
      // Im3DBObject
      function DB: Im3DB;
        {-}
    protected
    // internal methods
      procedure Cleanup;
        override;
        {-}
    public
    // public methods
      constructor Create(aDB: Tm3CustomDB);
        reintroduce;
        {-}
  end;//Tm3BaseObject

  Tm3DBDocument = class(Tm3BaseObject, Im3DBDocument)
    private
    // interfnal fields
      f_ID : Integer;
    protected
    // interface methods
      // Im3DBDocument
      function  pm_GetID: Integer;
        {-}
      procedure Delete;
        {-}
      function  Undelete: Boolean;
        {-}
      function  GetConst: Im3DBDocumentPart;
        {-}
      function  GetVersion(aLevel: Integer = Cm3LastVersion): Im3DBDocumentPart;
        {-}
      function  Open(aMode   : Tm3StoreAccess = m3_saRead;
                     aDocPart : Tm3DocPartSelector = m3_defDocPart;
                     aIndex   : Integer = 0): IStream;
        {* - открыть документ. }
      function  GetFreeObjectID: Integer;
      procedure DeleteObject(aObjID: Integer);
    public
    // public methods
      constructor Create(aDB  : Tm3CustomDB;
                         anID : Integer);
        reintroduce;
        {-}
      class function Make(aDB  : Tm3CustomDB;
                         anID : Integer): Im3DBDocument;
        reintroduce;
        {-}
  end;//Tm3DBDocument

  Tm3DBDocumentPart = class(Tm3BaseObject, Im3DBDocumentPart)
    private
    // internal fields
      f_Document : Im3DBDocument;
      f_Level    : Integer;
      f_Filer    : Tl3CustomFiler;
    protected
    // interface methods
      // Im3DBDocumentPart
      function  pm_GetDocument: Im3DBDocument;
        {-}
      function  pm_GetInfo: Tm3DBDocumentInfo;
      procedure pm_SetInfo(const aValue: Tm3DBDocumentInfo);
        {-}
      function  Open(aMode   : Tm3StoreAccess = m3_saRead;
                     aDocPart : Tm3DocPartSelector = m3_defDocPart;
                     aIndex   : Integer = 0): IStream;
        {* - открыть документ. }
    protected
    // internal methods
      procedure Cleanup;
        override;
        {-}
    protected
    // internal properties
      property Info: Tm3DBDocumentInfo
        read pm_GetInfo
        write pm_SetInfo;
        {-}
    public
    // public methods
      constructor Create(aDB        : Tm3CustomDB;
                         const aDoc : Im3DBDocument;
                         aLevel     : Integer;
                         aFiler     : Tl3CustomFiler);
        reintroduce;
        {-}
      class function Make(aDB        : Tm3CustomDB;
                          const aDoc : Im3DBDocument;
                          aLevel     : Integer = Cm3LastVersion;
                          aFiler     : Tl3CustomFiler = nil): Im3DBDocumentPart;
        reintroduce;
        {-}
  end;//Tm3DBDocumentPart

implementation

uses
  Windows,
  ActiveX,

  SysUtils,

  ComObj,

  l3Interfaces,
  l3MinMax,
  l3String,
  l3Stream,
  {$IFDEF m3DBNeedsFork}
  l3ForkStream,
  {$ENDIF}

  m2MemLib,
  m2COMLib,

  m3DBActions,
  m3BackupTools,
  m3StorageTools,
  m3StgMgr,
  m3StorageElementIDList,
  m3DBProxyWriteStream,
  m3NewVersionStream,

  k2Interfaces,
  k2TagGen,

  evEvdRd,
  evdCustomNativeWriter
  , evdReader
  {$IfDef OpenCloseLog}
  ,TypInfo
  {$EndIf OpenCloseLog}

  ;

const
 cDeleted = 'deleted';
 cModified = 'modified';
 cVersion  = 'version';

 cCommonListName : array[Tm3CommonListSelector] of AnsiString = (cDeleted, cModified);

type
  Tm3BaseRangeParam = (m3_brpIndexed, m3_brpModified);
  Tm3BaseRangeParams = set of Tm3BaseRangeParam;

  Im3BaseRangeParamsSource = interface(Im3Base)
    ['{99AC6CB3-A7C2-4F40-B013-0D8A23BCBA9E}']
    // property methods
      function  pm_GetParams: Tm3BaseRangeParams;
      procedure pm_SetParams(aValue: Tm3BaseRangeParams);
        {-}
    // public properties
      property Params: Tm3BaseRangeParams
        read pm_GetParams
        write pm_SetParams;
        {-}
  end;//Im3BaseRangeParamsSource

  Tm3BaseRange = class(Tm3BaseObject, Im3DBRange)
    protected
        {-}
      function Iterate(const aFilter : Im3TagGenerator;
                       aNeedWriteToBase : Boolean;
                       aParts  : Tm3DocPartSet = m3_AllDocParts): Integer;
        overload;
      function Iterate(anAction : Tm3DocumentAction;
                       aParts   : Tm3DocPartSet = m3_AllDocParts): Integer;
        overload;
        virtual;
        abstract;
        {-}
      function Iterate(anAction : Tm3FilerAction;
                       aParts   : Tm3DocPartSet = m3_AllDocParts): Integer;
        overload;
        virtual;
        abstract;
        {-}
      function IterateF(anAction : Tm3FilerAction;
                        aParts   : Tm3DocPartSet = m3_AllDocParts): Integer;
        overload;
        {-}
      function  IterateF(anAction : Tm3DocumentAction;
                         aParts   : Tm3DocPartSet = m3_AllDocParts): Integer;
        overload;
        {-}
      function  CopyTo(const aDB : Im3DB;
                       aMode     : Tm3DBCopyMode = m3_cmRewrite;
                       aParts    : Tm3DocPartSet = m3_AllDocParts): Boolean;
        {-}
      function LastElapsed: TDateTime;
        {-}
      function Mul(const aRange: Im3DBRange): Im3DBRange; virtual; abstract;
    public
        {-}
  end;//Tm3BaseRange

  Tm3DocListRange = class(Tm3BaseRange)
  private
   f_List: Im3StorageElementIDList;
  protected
   function Iterate(anAction : Tm3DocumentAction;
                    aParts   : Tm3DocPartSet = m3_AllDocParts): Integer;
     overload;
     override;
     {-}
   function Iterate(anAction : Tm3FilerAction;
                    aParts   : Tm3DocPartSet = m3_AllDocParts): Integer;
     overload;
     override;
     {-}
   function Mul(const aRange: Im3DBRange): Im3DBRange; override;
  public
   constructor Create(aDB: Tm3CustomDB; const aList: Im3StorageElementIDList);
     reintroduce;
     overload;
     {-}
   class function Make(aDB: Tm3CustomDB; const aList: Im3StorageElementIDList): Im3DBRange;
     reintroduce;
     overload;
  end;

  Tm3BaseParametricRange = class(Tm3BaseRange, Im3BaseRangeParamsSource)
   private
    // internal fields
    f_Params  : Tm3BaseRangeParams;
    f_IndexID : Integer;
  protected
    function Iterate(anAction : Tm3DocumentAction; aParts : Tm3DocPartSet = m3_AllDocParts): Integer;
      overload;
      override;
        {-}
    // Im3DBRange
    function Mul(const aRange: Im3DBRange): Im3DBRange; override;
        {-}
    // interface methods
    // Im3BaseRangeParamsSource
    function pm_GetParams: Tm3BaseRangeParams;
    procedure pm_SetParams(aValue: Tm3BaseRangeParams);
  public
    // public methods
    constructor Create(aDB : Tm3CustomDB; aParams : Tm3BaseRangeParams; anIndexID : Integer);
      reintroduce;
      overload;
        {-}
    class function Make(aDB : Tm3CustomDB; aParams : Tm3BaseRangeParams = []; anIndexID : Integer = 1): Im3DBRange;
      reintroduce;
      overload;
  end;

  Tm3BiCompBaseRange = class(Tm3BaseParametricRange)
    private
    // internal fields
      f_NotEmpty : Boolean;
      f_Level    : Integer;
    protected
    // interface methods
      function Iterate(anAction : Tm3FilerAction;
                       aParts   : Tm3DocPartSet = m3_AllDocParts): Integer;
        override;
        {-}
    public
    // public methods
      constructor Create(aDB       : Tm3DB;
                         aParams   : Tm3BaseRangeParams;
                         aNotEmpty : Boolean;
                         aLevel    : Integer);
        overload;
        {-}
      class function Make(aDB       : Tm3DB;
                          aParams   : Tm3BaseRangeParams;
                          aNotEmpty : Boolean;
                          aLevel    : Integer): Im3DBRange;
        overload;
        {-}
  end;//Tm3BiCompBaseRange

function Tm3BaseRange.Iterate(const aFilter : Im3TagGenerator;
                              aNeedWriteToBase : Boolean;
                              aParts  : Tm3DocPartSet = m3_AllDocParts): Integer;
  {-}
var
 l_DocIDSource    : Il3DocIDSource;
 l_EvdReader      : TevdNativeReader;
 l_ProgressSource : Il3ProgressSource;
 l_OutFiler       : Tm3DBFiler;
 {$IFDEF m3LogMemUsage}
 l_LastTimeMemLog : Longword;
 {$ENDIF}
  function DoFiler(aFiler: Tl3CustomFiler; const anIndex : Tm3DBStreamIndex): Boolean;
  var
   l_Num: Integer;
  begin//DoFiler
   Result := true;
   if (l_ProgressSource <> nil) then
   begin
    l_ProgressSource.Progress := aFiler.Indicator;
    l_ProgressSource := nil;
   end;//l_ProgressSource <> ni
   if (l_DocIDSource <> nil) then
    l_DocIDSource.DocID := aFiler.Handle;
   if aNeedWriteToBase then
   begin
    l_OutFiler.PartSelector := anIndex.rPart;
    l_OutFiler.Index        := anIndex.rIdx;
    l_OutFiler.Handle       := anIndex.rID;
    l_OutFiler.Open;
   end;//aNeedWriteToBase
   try
    l_EvdReader.Filer := aFiler;
    try
     try
      l_EvdReader.Execute;
      {$IFDEF m3IteratorReportOK}
      l3System.Msg2Log('[%d:%s] OK', [anIndex.rID, m3_cDocPartName[anIndex.rPart]]);
      {$ENDIF}
      {$IFDEF m3LogMemUsage}
      {
      if GetTickCount - l_LastTimeMemLog > 600000 then // 10 минут
      begin
       l3System.MemUsage2Log;
       l_LastTimeMemLog := GetTickCount;
      end;
      }
      l_Num := l3System.ClassList.IndexOf('TableCellTagClass');
      if l_Num >= 0 then
      begin
       l_Num := Long(l3System.ClassList.Objects[l_Num]);
       if l_Num <> l_LastTimeMemLog then
       begin
        l3System.MemUsage2Log;
        l_LastTimeMemLog := l_Num;
       end;
      end;
      {$ENDIF}
     except
       on E: Exception do
       begin
        l_EvdReader.Generator.Rollback;
        l_EvdReader.Generator.Start;
        l3System.Msg2Log('[%d:%s] ERROR', [anIndex.rID, m3_cDocPartName[anIndex.rPart]]);
        //l3System.Exception2Log(E);
       end;
     end;
    finally
     l_EvdReader.Filer := nil;
    end;//try..finally
   finally
    if aNeedWriteToBase then
     l_OutFiler.Close;
   end;//try..finally
  end;//DoFiler

var
 l_Writer : TevdCustomNativeWriter;
begin
 l_EvdReader := TevdNativeReader.Create;
 try
  Supports(aFilter, Il3DocIDSource, l_DocIDSource);
  l_EvdReader.Generator := aFilter;
  l_OutFiler := nil;
  try
   l_Writer := nil;
   try
    if aNeedWriteToBase then
    begin
     l_Writer := TevdCustomNativeWriter.Create;
     l_OutFiler := Tm3DBFiler.Create(f_DB);
     l_OutFiler.Mode := l3_fmWrite;
     l_Writer.Filer := l_OutFiler;
     {$IFNDEF EverestLite}
     l_Writer.Binary := true;
     {$ENDIF}
     l_EvdReader.Link(l_Writer);
    end;//aNeedWriteToBase
    try
     {$IFDEF m3LogMemUsage}
     l_LastTimeMemLog := 0;
     {$ENDIF}
     l_EvdReader.Start;
     try
      Supports(aFilter, Il3ProgressSource, l_ProgressSource);
      Result := IterateF(m3L2FilerAction(@DoFiler), aParts);
     finally
      l_EvdReader.Finish;
     end;//try..finally
    finally
     l_EvdReader.Unlink(l_Writer);
    end;//try..finally
    l_EvdReader.Generator := nil;
   finally
    FreeAndNil(l_Writer);
   end;//try..finally
  finally
   FreeAndNil(l_OutFiler);
  end;//try..finally
 finally
  l3Free(l_EvdReader);
 end;//try..finally
end;

function Tm3BaseRange.IterateF(anAction : Tm3FilerAction;
                               aParts   : Tm3DocPartSet = m3_AllDocParts): Integer;
  {-}
begin
 try
  Result := Iterate(anAction, aParts);
 finally
  m3FreeFilerAction(anAction);
 end;//try..finally
end;

function Tm3BaseRange.IterateF(anAction : Tm3DocumentAction;
                               aParts   : Tm3DocPartSet = m3_AllDocParts): Integer;
  //overload;
  {-}
begin
 try
  Result := Iterate(anAction, aParts);
 finally
  m3FreeDocumentAction(anAction);
 end;//try..finally
end;

function Tm3BaseRange.CopyTo(const aDB : Im3DB;
                             aMode     : Tm3DBCopyMode = m3_cmRewrite;
                             aParts    : Tm3DocPartSet = m3_AllDocParts): Boolean;
  {-}

var
 l_Done : Boolean absolute Result;

 function DoDoc(const aDocIn : Im3DBDocumentPart;
                      const anIndex : Tm3DBStreamIndex): Boolean;
 var
  l_DocOut    : Im3DBDocumentPart;
  l_Document  : Im3DBDocument;
  l_Stream    : IStream;
  l_VerStream : IStream;
  l_Read      : Int64;
  l_Written   : Int64;
 begin//DoDoc
  Result := true;
  try
(*
 Этот кусок был написан Люлиным А. В. для спасения тверских данных из побитой базы
  if (aDocIn.Document.ID = 1153384) then
   begin
    Result := False;
    Exit;
   end;
*)
   l_Document := aDB.GetDocument(aDocIn.Document.ID);
   if (l_Document <> nil) then
    try
     l_DocOut := l_Document.GetVersion;
     if (aMode <> m3_cmRewrite) then
     begin
      l_Stream := l_DocOut.Open(m3_saRead, anIndex.rPart, anIndex.rIdx);
      if (l_Stream <> nil) then
      begin
       if (aMode = m3_cmRewriteEmpty) then
       begin
        if (m2COMGetSize(l_Stream) = 0) then
         l_Stream := nil
        else
        begin
         l_Stream := nil;
         Exit;
        end;//m2COMGetSize(l_Stream) = 0
       end
       else
       begin
        l_Stream := nil;
        Exit;
       end;//aMode = m3_cmRewriteEmpty
      end;//l_NewStream <> nil
     end;//not aRewrite
     l_Stream := l_DocOut.Open(m3_saReadWrite, anIndex.rPart, anIndex.rIdx);
     if (l_Stream <> nil) then
      try
       l_VerStream := aDocIn.Open(m3_saRead, anIndex.rPart, anIndex.rIdx);
       if (l_VerStream <> nil) then
        try
         l_VerStream.Seek(0, STREAM_SEEK_SET, l_Read);
         l_VerStream.CopyTo(l_Stream, High(Int64), l_Read, l_Written);
        finally
         l_VerStream := nil;
        end;//try..finally
      finally
       l_Stream := nil;
      end;//try..finally
    finally
     l_Document := nil;
    end;//try..finally
  except
   on E: Exception do
   begin
    l_Done := false;
    l3System.Exception2Log(E);
    l3System.Msg2Log(Format('DocID = %d', [aDocIn.Document.ID]));
   end;//on E: Exception
  end;//try..except
 end;//DoDoc

begin
 Result := false;
 if (f_DB <> nil) then
 begin
  if (aDB <> nil) then
  begin
   f_DB.Start(m3_saRead);
   try
    aDB.Start(m3_saReadWrite);
    try
     try
      Result := true;
      // - будем оптимистами
      IterateF(m3L2DocumentAction(@DoDoc), aParts);
     except
      on E: Exception do
      begin
       l3System.Exception2Log(E);
       Result := false;
      end;//on E: Exception
     end;//try..except
    finally
     aDB.Finish;
    end;//try..finally
   finally
    f_DB.Finish;
   end;//try..finally
  end;//aDB <> nil
 end;//f_DB <> nil
end;

function Tm3BaseRange.LastElapsed: TDateTime;
  {-}
begin
 if (f_DB = nil) then
  Result := 0
 else
  Result := f_DB.LastElapsed;
end;

const
  cIterateMsg = 'Перебор файлов';

// start class Tm3NewBaseRange

constructor Tm3BiCompBaseRange.Create(aDB       : Tm3DB;
                                      aParams   : Tm3BaseRangeParams;
                                      aNotEmpty : Boolean;
                                      aLevel    : Integer);
  //overload;
  {-}
begin
 Create(aDB, aParams, 1);
 f_Level := aLevel;
end;

class function Tm3BiCompBaseRange.Make(aDB       : Tm3DB;
                                       aParams   : Tm3BaseRangeParams;
                                       aNotEmpty : Boolean;
                                       aLevel    : Integer): Im3DBRange;
  //overload;
  {-}
var
 l_Part : Tm3BiCompBaseRange;
begin
 l_Part := Create(aDB, aParams, aNotEmpty, aLevel);
 try
  Result := l_Part;
 finally
  l3Free(l_Part);
 end;//try..finally
end;

function Tm3BiCompBaseRange.Iterate(anAction : Tm3FilerAction;
                                 aParts   : Tm3DocPartSet = m3_AllDocParts): Integer;
  //override;
  {-}
var
 l_Filer  : Tl3CustomFiler;
 l_Count  : Integer absolute Result;
 l_Summ   : Tm3BaseSummary;

 procedure IterateDocumentsInBase(const aBase : Im3IndexedStorage);
   {* - перебрать версии всех документов. }

  function DoDocument(const aStoreInfo: Tm3StoreInfo; aDocID: Integer): Boolean;

  var
   l_Doc  : Im3DBDocument;

   function DoDocumentStream(const aStream : IStream;
                             const anIndex : Tm3DBStreamIndex): Boolean;
   var
    l_Size    : Int64;
    l_DocPart : Im3DBDocumentPart;
    l_DoFile  : Boolean;
   begin//DoDocumentStream
    with f_DB do
     if Stopped then
      Result := false
     else
     begin
      l_DoFile := true;
      if (m3_brpIndexed in f_Params) then
      begin
       l_DocPart := nil;
       if (m3_brpModified in f_Params) then
        l_DocPart := l_Doc.GetVersion;
       if (l_DocPart = nil) then
        l_DocPart := l_Doc.GetConst;
       if (l_DocPart.Info.rIndexID <> f_IndexID) then
        l_DoFile := false;
      end;//m3_brpIndexed in f_Params
      if Assigned(f_FilesProcessed) AND (anIndex.rID mod 50 = 0) then
       f_FilesProcessed(anIndex.rID);
      if Assigned(f_FilesProcessedEx) AND (anIndex.rID mod 1000 = 0) then
       f_FilesProcessedEx(anIndex.rID, l_Summ.rMax, LastElapsed);
      if l_DoFile then
      begin
       try
        l_Filer.Handle := anIndex.rID;
        l_Filer.COMStream := aStream;
        try
         l_Size := l_Filer.Size;
         if Assigned(f_FilesMeter) then
          f_FilesMeter(piCurrent,
                       anIndex.rID,
                       IntToStr(anIndex.rID) + '/' + IntToStr(l_Size));
         Yield;

         Result := anAction(l_Filer, anIndex);
         if Result then
          Inc(l_Count);
        finally
         l_Filer.COMStream := nil;
        end;//try..finally
       except
         on E: Exception do
         begin
          l3System.Msg2Log('Error iterating ID = %d (%s)', [anIndex.rID, E.Message]);
          Result := True; // чтобы на этом обработка не останавливалась
         end; 
       end;
      end//l_DoFile
      else
      begin
       if Assigned(f_FilesMeter) then
        f_FilesMeter(piCurrent,
                     anIndex.rID,
                     IntToStr(anIndex.rID) + '/' + IntToStr(0));
       Yield;
       Result := true;
      end;//l_DoFile
     end;//Stopped
    if not Result then
     DoDocument := false;
   end;//DoDocumentStream

  var
   l_StreamSelector : Tm3DocPartSelector;
   l_S              : IStream;
   l_Part           : Im3DBDocumentPart;
  begin//DoDocument
   Result := true;
   l_Doc := f_DB.GetDocument(aDocID);
   try
{.$IFDEF evdCollTechComm}
    try
{.$ENDIF evdCollTechComm}    
    for l_StreamSelector := Low(Tm3DocPartSelector) to High(Tm3DocPartSelector) do
    begin
     if not Result then
      break;
     if (l_StreamSelector in aParts) then
     begin
      if (l_StreamSelector = m3_dsObject) then
      begin
       try
        f_DB.IterateObjectsInDocF(aDocID, false, m3L2DBStreamAction(@DoDocumentStream), m3_brpModified in f_Params)
       except
        on E : Exception do
         l3System.Exception2Log(E);
       end;//try..except
      end//l_StreamSelector = m3_dsObject
      else
      begin
       if (m3_brpModified in f_Params) then
        l_Part := l_Doc.GetVersion;
       try
        if (m3_brpModified in f_Params) then
         l_S := l_Part.Open(m3_saRead, l_StreamSelector)
        else
         l_S := l_Doc.Open(m3_saRead, l_StreamSelector);
        try
         if (l_S <> nil) then
          if not DoDocumentStream(l_S, Tm3DBStreamIndex_C(aDocID, l_StreamSelector)) then
           Result := false;
        finally
         l_S := nil;
        end;//try..finally
       finally
        l_Part := nil;
       end;//try..finally
      end;//l_StreamSelector = m3_dsObject
     end;//l_StreamSelector in aParts
    end;//for l_Part
{.$IFDEF evdCollTechComm}
    except
     on E: Exception do
     begin
      l3System.Exception2Log(E);
      l3System.Msg2Log(Format('DocID = %d', [l_Doc.ID]));
     end;//on E: Exception
    end;
{.$ENDIF evdCollTechComm}
   finally
    l_Doc := nil;
   end;//try..finally
  end;//DoDocument

 begin//IterateDocumentsInBase
  if (aBase <> nil) then
   aBase.IterateF(m3L2SA(@DoDocument));
   // - перебираем хранилища с версиями документов
 end;//IterateDocumentsInBase

var
 l_Versions : Im3IndexedStorage;
 l_Main     : Im3IndexedStorage;
begin
 Result := 0;
 if (f_DB <> nil) then
 begin
  l_Filer := Tl3CustomFiler.Create;
  try
   with f_DB do
   begin
    Start(m3_saRead);
    try
     TuneFiler(l_Filer);
     if (m3_brpModified in f_Params) then
     begin
      l_Versions := GetVersionsStorage;
      try
       m3GetBaseSummary(l_Versions, l_Summ);
       if Assigned(f_FilesMeter) then
        f_FilesMeter(piStart, l_Summ.rMax, cIterateMsg);
       try
        IterateDocumentsInBase(l_Versions);
       finally
        if Assigned(f_FilesMeter) then
         f_FilesMeter(piEnd, 0, '');
       end;//try..finally
      finally
       l_Versions := nil;
      end;//try..finally
     end//m3_brpModified in f_Params
     else
     begin
      l_Main := MainStorage;
      try
       m3GetBaseSummary(l_Main, l_Summ);
       if Assigned(f_FilesMeter) then
        f_FilesMeter(piStart, l_Summ.rMax, cIterateMsg);
       try
        if (l_Main <> nil) then
         IterateDocumentsInBase(l_Main);
       finally
        if Assigned(f_FilesMeter) then
         f_FilesMeter(piEnd, 0, '');
       end;//try..finally
      finally
       l_Main := nil;
      end;//try..finally
     end;//m3_brpModified in f_Params
     Yield;
    finally
     Finish;
    end;//try..finally
   end;//with f_DB
  finally
   l3Free(l_Filer);
  end;//try..finally
 end;//f_DB <> nil
end;

// start class Tm3CustomDB

procedure Tm3CustomDB.BeforeRelease;
  //override;
  {-}
begin
 FlushLists;
 inherited;
end;

procedure Tm3CustomDB.Cleanup;
  //override;
  {-}
begin
 f_Starts := 0;
 CloseBase;
 inherited;
end;

procedure Tm3CustomDB.FreeLists;
  {-}
begin
 l3Free(f_DeletedList_Add);
 l3Free(f_DeletedList_Del);
 l3Free(f_ModifiedList_Add);
 l3Free(f_ModifiedList_Del);
end;

procedure Tm3CustomDB.Release;
begin
 FreeLists;
 Inherited;
end;

procedure Tm3CustomDB.LoadList(const aName: AnsiString; aList: Tl3LongintList);
  {-}
var
 l_Stream : IStream;
begin
 l_Stream := OpenList(aName, m3_saRead, False);
 if (l_Stream <> nil) then
  try
   aList.LoadFromStream(l_Stream, False);
  finally
   l_Stream := nil;
  end;//try..finally
end;

procedure Tm3CustomDB.SaveList(const aName: AnsiString; aList: Tl3LongintList);
  {-}
var
 l_Stream : IStream;
begin
 l_Stream := OpenList(aName, m3_saReadWrite, True);
 if (l_Stream <> nil) then
  try
   aList.SaveToStream(l_Stream);
  finally
   l_Stream := nil;
  end;//try..finally
end;

procedure Tm3CustomDB.SetList(aListSelector : Tm3CommonListSelector; anID: Integer; aInsert: Boolean);

// - все модифицированные (добавленные в f_ModifiedList_Add) подлежат удалению из f_DeletedList
// - все удаленные доки (добавленные в f_DeletedList_Add) подлежат удалению из f_ModifiedList

procedure AddToList(var aList : Tl3LongintList; anID : Integer);
var
 l_Index : Integer;
begin
 if aList = nil then
  aList := Tl3LongintList.MakeSorted;

 if not aList.FindData(anID, l_Index) then
  aList.Insert(l_Index, anID);
end;

procedure DelFromList(aList : Tl3LongintList; anID : Integer);
var
 l_Index : Integer;
begin
 if aList <> nil then
  if aList.FindData(anID, l_Index) then
   aList.Delete(l_Index);
end;

var
 lAddList : ^Tl3LongintList;
 lDelList : ^Tl3LongintList;

begin
 case aListSelector of
  clsDeleted :
   begin
    lAddList := @f_DeletedList_Add;
    lDelList := @f_DeletedList_Del;
   end;

  clsModified :
   begin
    lAddList := @f_ModifiedList_Add;
    lDelList := @f_ModifiedList_Del;
   end;
  else
   begin
    lAddList := nil;
    lDelList := nil;
    Assert(false)
   end;//else
 end;

 if aInsert then
 begin
  AddToList(lAddList^, anID);
  DelFromList(lDelList^, anID);

  // - все удаленные доки (добавленные в f_DeletedList_Add) подлежат удалению из f_ModifiedList
  if aListSelector = clsDeleted then
   SetList(clsModified, anID, False {aInsert});
  // - все модифицированные (добавленные в f_ModifiedList_Add) подлежат удалению из f_DeletedList
  if aListSelector = clsModified then
   SetList(clsDeleted, anID, False {aInsert});
 end
 else
 begin
  AddToList(lDelList^, anID);
  DelFromList(lAddList^, anID);
 end;//aInsert
end;

function Tm3CustomDB.MakeCommonList(aListSelector : Tm3CommonListSelector): Tl3LongintList;
begin
 FlushLists;
 Result := Tl3LongintList.MakeSorted;
 LoadList(cCommonListName[aListSelector], Result);
end;

function Tm3CustomDB.DeletedFiles: Tl3LongintList;
  {-}
begin
 if (f_DeletedFiles = nil) then
  f_DeletedFiles := MakeCommonList(clsDeleted);
 Result := f_DeletedFiles;
end;

procedure Tm3CustomDB.ModifyDeleted(anID: Integer; aInsert: Boolean);
begin
 SetList(clsDeleted, anID, aInsert);
end;

procedure Tm3CustomDB.ModifyModified(anID: Integer);
begin
 SetList(clsModified, anID, true);
end;

const
 cBackupExt = '_bkp';

procedure Tm3CustomDB.DeleteVersion;
  {-}
var
 l_S : AnsiString;
begin
 CloseBase;
 FreeLists;
 l_S := ChangeFileExt(BaseName, m3_cExchangeExt);
 Tm3StorageManager.DeleteStorageFile(l_S);
 l_S := ChangeFileExt(BaseName, cBackupExt + m3_cExchangeExt);
 Tm3StorageManager.DeleteStorageFile(l_S);
end;

procedure Tm3CustomDB.DeleteMain;
  {-}
var
 l_S : AnsiString;
begin
 CloseBase;
 l_S := ChangeFileExt(BaseName, m3_cMainExt);
 Tm3StorageManager.DeleteStorageFile(l_S);
end;

procedure Tm3CustomDB.RenameMain(const aNewName: AnsiString);
var
 l_S1 : AnsiString;
 l_S2 : AnsiString;
begin
 CloseBase;
 l_S1 := ChangeFileExt(BaseName, m3_cMainExt);
 l_S2 := ChangeFileExt(aNewName, m3_cMainExt);
 Tm3StorageManager.RenameStorageFile(l_S1, l_S2);
end;

procedure Tm3CustomDB.RenameVersion(const aNewName: AnsiString);
var
 l_S1 : AnsiString;
 l_S2 : AnsiString;
begin
 FlushLists;
 CloseBase;
 FreeLists;
 l_S1 := ChangeFileExt(BaseName, m3_cExchangeExt);
 l_S2 := ChangeFileExt(aNewName, m3_cExchangeExt);
 Tm3StorageManager.RenameStorageFile(l_S1, l_S2);
 l_S1 := ChangeFileExt(BaseName, cBackupExt + m3_cExchangeExt);
 l_S2 := ChangeFileExt(aNewName, cBackupExt + m3_cExchangeExt);
 Tm3StorageManager.RenameStorageFile(l_S1, l_S2);
end;

procedure Tm3CustomDB.Rename(const aNewName: AnsiString);
var
 l_S : AnsiString;
begin
 l_S := ChangeFileExt(aNewName, '');
 RenameVersion(l_S);
 RenameMain(l_S);
 f_BaseName := l_S;
end;

procedure Tm3CustomDB.FlushLists;

 procedure FlushOneList(aListSelector : Tm3CommonListSelector; aAddList, aDelList : Tl3LongintList);
 var
  l_List     : Tl3LongintList;
  l_ListName : AnsiString;
  //l_Stream   : IStream;
  //l_Position : Int64;
 begin
  l_List := Tl3LongintList.MakeSorted;
  try
   l_ListName := cCommonListName[aListSelector];

   {Пытался устроить чтение-модификация-запись в одном цикле, без "отпускания"  потока
   к сожалению ничего не получилось, (в пакованном потоке m3_saReadWrite не бывает, непакованный поток вообще не пишет ничего ) 
   надо разбираться с  реализацией на нижнем уровне}
   (* l_Stream := OpenList(l_ListName, m3_saReadWrite);
   if (l_Stream <> nil) then
   try
    l_List.LoadFromStream(l_Stream, False);
    *)
    LoadList(l_ListName, l_List);

    if ((aDelList <> nil) and (aDelList.Count > 0)) then
    begin
     //оставим только те элементы, которые действительно были в списке удаленных, они нам потом понадобятся
     if aListSelector = clsDeleted then
      aDelList.IntersectList(l_List); // сейчас aDelList = f_DeletedList_Del

     l_List.DeleteList(aDelList);
    end;

    if ((aAddList <> nil) and (aAddList.Count > 0)) then
     l_List.InsertList(aAddList);

    // если это ModifiedList то нужно добавить в него восстановленные (Undelete) доки
    // (добавленные в f_DeletedList_Del), но только если только они действительно были в списке удаленных
    // !! не совсем корректно, поскольку удалить и потом восстановить можно и не измененный док,
    // !! но ничего страшного не произойдет, отсутствующий в пременной части док не перетирается при апдейте
    if aListSelector = clsModified then
     l_List.InsertList(f_DeletedList_Del);

    SaveList(l_ListName, l_List);
    (*
    l_Stream.Seek(0, Ord(soBeginning), l_Position);
    l_List.SaveToStream(l_Stream);
   finally
    l_Stream := nil;
   end;//try..finally
    *)
  finally
   l3Free(l_List);
  end;//try..finally
 end;

begin
 if ((f_DeletedList_Add <> nil) and (f_DeletedList_Add.Count > 0)) or
    ((f_DeletedList_Del <> nil) and (f_DeletedList_Del.Count > 0)) or
    ((f_ModifiedList_Add <> nil) and (f_ModifiedList_Add.Count > 0)) or
    ((f_ModifiedList_Del <> nil) and (f_ModifiedList_Del.Count > 0)) then
 begin
  Start(m3_saReadWrite);
  try
   // сначала сливаем Deleted, т к там корректируем f_DeletedList_Del
   if ((f_DeletedList_Add <> nil) and (f_DeletedList_Add.Count > 0)) or
      ((f_DeletedList_Del <> nil) and (f_DeletedList_Del.Count > 0)) then
    FlushOneList(clsDeleted, f_DeletedList_Add, f_DeletedList_Del);

   if ((f_ModifiedList_Add <> nil) and (f_ModifiedList_Add.Count > 0)) or
      ((f_ModifiedList_Del <> nil) and (f_ModifiedList_Del.Count > 0)) then
    FlushOneList(clsModified, f_ModifiedList_Add, f_ModifiedList_Del);

   if (f_DeletedList_Add <> nil)  then f_DeletedList_Add.Clear;
   if (f_DeletedList_Del <> nil)  then f_DeletedList_Del.Clear;
   if (f_ModifiedList_Add <> nil) then f_ModifiedList_Add.Clear;
   if (f_ModifiedList_Del <> nil) then f_ModifiedList_Del.Clear;

  finally
   Finish;
  end;//try..finally
 end;
end;

function Tm3CustomDB.InProcess: Boolean;
  {* с базой идет процесс. }
begin
 Result := (f_Starts > 0);
end;

function Tm3CustomDB.Stopped: Boolean;
  {* - предыдущий процесс был остановлен. }
begin
 Result := f_Stopped;
end;

procedure Tm3CustomDB.Stop;
  {* - остановить текущий процесс. }
begin
 f_Stopped := true;
end;

function Tm3CustomDB.LastElapsed: TDateTime;
  {* - время последнего процесса с базой. }
begin
 if (f_Starts = 0) then
  Result := f_Elapsed
 else
  Result := Now - f_Elapsed;
end;

procedure Tm3CustomDB.TuneFiler(aFiler: Tl3CustomFiler);
  {-}
begin
 if (aFiler <> nil) then
 begin
  aFiler.Indicator.NeedProgressProc := true;
  aFiler.Indicator.OnProgressProc := f_FileMeter;
  aFiler.Mode := l3_fmRead;
 end;//aFiler <> nil
end;

procedure Tm3CustomDB.Yield;
  {-}
begin
 if Assigned(f_OnYield) then
  f_OnYield(Self);
end;

constructor Tm3CustomDB.Create(const aBaseName   : AnsiString;
                         aOnYield          : TNotifyEvent;
                         aFileMeter        : Tl3ProgressProc;
                         aFilesMeter       : Tl3ProgressProc;
                         aFilesProcessed   : Tm3FilesProcessed;
                         aFilesProcessedEx : Tm3FilesProcessedEx);
  //reintroduce;
  {-}
begin
 inherited Create;
 f_BaseName := aBaseName;
 f_OnYield := aOnYield;
 f_FileMeter := aFileMeter;
 f_FilesMeter := aFilesMeter;
 f_FilesProcessed := aFilesProcessed;
 f_FilesProcessedEx := aFilesProcessedEx;
end;

class function Tm3CustomDB.Make(const aBaseName   : AnsiString;
                          aOnYield          : TNotifyEvent = nil;
                          aFileMeter        : Tl3ProgressProc = nil;
                          aFilesMeter       : Tl3ProgressProc = nil;
                          aFilesProcessed   : Tm3FilesProcessed = nil;
                          aFilesProcessedEx : Tm3FilesProcessedEx = nil): Im3DB;
  //reintroduce;
  {-}
var
 l_DB : Tm3CustomDB;
begin
 l_DB := Create(aBaseName,
                aOnYield,
                aFileMeter, aFilesMeter,
                aFilesProcessed, aFilesProcessedEx);
 try
  Result := l_DB;
 finally
  l3Free(l_DB);
 end;//try..finally
end;

// start class Tm3DB

procedure Tm3DB.CloseBase;
  //virtual;
  {* - закрывает открытые файлы. }
begin
 f_MainStorageMode := 0;
 f_VersionsStorageMode := 0;
 f_VersionsStorage := nil;
 {$IFDef m3DBNeedsFork}
 f_BackupVersionsStorage := nil;
 {$EndIF m3DBNeedsFork}
 f_MainStorage := nil;
 l3Free(f_DeletedFiles);
 //l3System.Msg2Log('CloseBase');
end;

function Tm3DB.OpenList(const aName: AnsiString;
                        aStatStgMode: Integer = m3_saReadWrite;
                        aUseCompression : Boolean = True) : IStream;
{$IFDEF m3DBNeedsFork}
var
 l_Fork: Tl3ForkStream;
{$ENDIF}
begin
 GetVersionsStorage(aStatStgMode);
 {$IFDEF m3DBNeedsFork}
 if aStatStgMode = m3_saReadWrite then
 begin
  l_Fork := Tl3ForkStream.MakeI(
       m3COMOpenStream(VersionsStorage,
                       l3PCharLen(aName),
                       aStatStgMode,
                       aUseCompression),
       m3COMOpenStream(f_BackupVersionsStorage,
                       l3PCharLen(aName),
                       aStatStgMode,
                       aUseCompression)
  );
  try
   Result := l3Stream2IStream(l_Fork);
  finally
   l3Free(l_Fork);
  end;
 end
 else
 {$ENDIF m3DBNeedsFork}
  Result := m3COMOpenStream(VersionsStorage,
                           l3PCharLen(aName),
                           aStatStgMode,
                           aUseCompression);
end;

procedure Tm3DB.FreeVersions; 
  {-}
begin
 VersionsStorage := nil;
end;

function Tm3DB.IndexedFiles(anIndexID: Integer = 1): Im3DBRange;
  {-}
begin
 Result := Tm3BiCompBaseRange.Make(Self, [m3_brpIndexed], anIndexID);
end;

function Tm3DB.ModifiedFiles(aNotEmpty : Boolean = false;
                             aLevel    : Integer = Cm3LastVersion): Im3DBRange;
  {-}
begin
 Result := Tm3BiCompBaseRange.Make(Self, [m3_brpModified], aNotEmpty, aLevel);
end;

function Tm3DB.AllFiles: Im3DBRange;
  {-}
begin
 Result := Tm3BiCompBaseRange.Make(Self, []);
end;

function Tm3DB.FilesInList(const aList: Im3StorageElementIDList): Im3DBRange;
begin
 Result := Tm3DocListRange.Make(Self, aList);
end;

function Tm3DB.Purge: Integer;
  {* - удаляет файлы, помеченные как удаленные. }
var
 l_Base  : Im3IndexedStorage;
 l_Index : Integer;
begin
 Result := 0;
 StartEx(m3_saRead, m3_saReadWrite);
 try
  l_Base := MainStorage(m3_saReadWrite);
  try
   with DeletedFiles do
   begin
    if Assigned(f_FilesMeter) then
     f_FilesMeter(piStart, Hi, 'Удаление файлов');
    try
     for l_Index := Lo to Hi do
     begin
      if Assigned(f_FilesMeter) then
       f_FilesMeter(piCurrent, l_Index, '');
      if l3IOk(l_Base.DeleteStore(Items[l_Index])) then
       Inc(Result);
     end;//for l_Index
    finally
     if Assigned(f_FilesMeter) then
      f_FilesMeter(piEnd, 0, '');
    end;//try..finally
   end;//with DeletedFiles
  finally
   l_Base := nil;
  end;//try..finally
 finally
  Finish;
 end;//try..finally
end;

function Tm3DB.Update(aNotEmpty: Boolean = true): Boolean;
  {* - переливает файлы из переменной части в постоянную. }

 procedure PurgeDeletedObjects;

 var
  l_MainBase: Im3IndexedStorage;

  procedure IterateDeletedObjects(const aBase : Im3IndexedStorage);

   function DoVersion(const aStoreInfo: Tm3StoreInfo; anIndex: Integer): Boolean;

    function DoObject(const aStream: IStream;
                      const anIndex: Tm3DBStreamIndex): Boolean;
    var
     l_DocBase    : Im3IndexedStorage;
     l_ObjStorage : Im3IndexedStorage;
    begin//DoObject
     Result := True;
     m3COMSafeOpenStorage(l_MainBase, anIndex.rID, m3_saRead, False, l_DocBase);
     if (l_DocBase <> nil) then
      try
       m3COMSafeOpenStorage(l_DocBase, l3PCharLen(PAnsiChar(m3_cObject)), m3_saReadWrite, False, l_ObjStorage);
       if (l_ObjStorage <> nil) then
        try
         l_ObjStorage.DeleteStore(anIndex.rIdx)
        finally
         l_ObjStorage := nil;
        end;//try..finally
      finally
       l_DocBase := nil;
      end;//try..finally
    end;//DoObject 

   begin//DoVersion
    Result := true;
    try
     IterateObjectsInDocF(anIndex, true, m3L2DBStreamAction(@DoObject), true);
    except
     on E: Exception do
     begin
      l3System.Exception2Log(E);
      l3System.Msg2Log(Format('DocID = %d', [anIndex]));
     end;//on E: Exception
    end;//try..except
   end;//DoVersion

  begin//IterateDeletedObjects
   if (aBase <> nil) then
    aBase.IterateF(m3L2SA(@DoVersion));
    // - перебираем хранилища с версиями документов
  end;//IterateDeletedObjects

 var
  l_Versions : Im3IndexedStorage;
 begin//PurgeDeletedObjects
  l_MainBase := MainStorage;
  try
   l_Versions := VersionsStorage;
   if l_Versions <> nil then
    try
     IterateDeletedObjects(l_Versions);
    finally
     l_Versions := nil;
    end;//try..finally
  finally
   l_MainBase := nil;
  end;//try..finally
 end;//PurgeDeletedObjects

var
 l_Done : Boolean absolute Result;

 function DoDoc(const aDocIn : Im3DBDocumentPart;
                const anIndex : Tm3DBStreamIndex): Boolean;
 var
  l_DocOut    : Im3DBDocumentPart;
  l_Document  : Im3DBDocument;
  l_Stream    : IStream;
  l_VerStream : IStream;
  l_Read      : Int64;
  l_Written   : Int64;
 begin//DoDoc
  Result := true;
  try
   l_Document := GetDocument(aDocIn.Document.ID);
   if (l_Document <> nil) then
    try
     l_DocOut := l_Document.GetConst;
     l_Stream := l_DocOut.Open(m3_saReadWrite, anIndex.rPart, anIndex.rIdx);
     if (l_Stream <> nil) then
      try
       l_VerStream := aDocIn.Open(m3_saRead, anIndex.rPart, anIndex.rIdx);
       if (l_VerStream <> nil) then
        try
         l_VerStream.Seek(0, STREAM_SEEK_SET, l_Read);
         l_VerStream.CopyTo(l_Stream, High(Int64), l_Read, l_Written);
        finally
         l_VerStream := nil;
        end;//try..finally
      finally
       l_Stream := nil;
      end;//try..finally
    finally
     l_Document := nil;
    end;//try..finally
  except
   on E: Exception do
   begin
    l_Done := false;
    l3System.Exception2Log(E);
    l3System.Msg2Log(Format('DocID = %d', [aDocIn.Document.ID]));
   end;//on E: Exception
  end;//try..except
 end;//DoDoc

begin
 StartEx(m3_saRead, m3_saReadWrite);
 try
  try
   Result := True;
   ModifiedFiles(aNotEmpty).IterateF(m3L2DocumentAction(@DoDoc));
  except
   on E: Exception do
   begin
    l3System.Exception2Log(E);
    Result := false;
   end;//on E: Exception
  end;//try..except
  PurgeDeletedObjects;
 finally
  Finish;
 end;//try..finally
end;

procedure Tm3DB.Start(aOpenMode : Tm3StoreAccess);
 {* - начинает процесс с базой. }
begin
 if aOpenMode = m3_saRead then
  StartEx(m3_saRead, m3_saRead)
 else
  StartEx(m3_saReadWrite, m3_saRead);
end;

procedure Tm3DB.StartEx(aVersionsMode : Tm3StoreAccess;
                        aConstMode    : Tm3StoreAccess);
  {* - начинает процесс с базой. }
var
 l_TryCount : Integer;
begin
 Inc(f_Starts);
 if (f_Starts = 1) then
 begin
  l_TryCount := 0;
  while (l_TryCount < m3_cMaxTry) do
  begin
   Inc(l_TryCount);
   try
   if (aVersionsMode <> m3_saRead) then
    GetVersionsStorage(aVersionsMode);
   if (aConstMode <> m3_saRead) then
    MainStorage(aConstMode);
   except
    on E: EOleSysError do
    begin
     if (E.ErrorCode = STG_E_LOCKVIOLATION) then
     begin
      CloseBase;
      // - стараемся отпустить всё по-максимуму
      if (l_TryCount >= m3_cMaxTry) then
       raise
      else
      begin
       Sleep(Random(m3_cMaxSleep));
       continue;
      end;//l_TryCount >= m3_cMaxTry
     end//E.ErrorCode = STG_E_LOCKVIOLATION
     else
      raise;
    end;//on E: EOleSysError
   end;//try..excepy
   break;
  end;//while (l_TryCount < m3_cMaxTry)
  f_Stopped := false;
  f_Elapsed := Now;
 end;//f_Starts = 1
end;

procedure Tm3DB.Finish;
  {* - заканчивает процесс с базой. }
begin
 if (f_Starts = 1) then
 begin
  CloseBase;
  f_Elapsed := Now - f_Elapsed;
 end;//f_Starts = 1
 Dec(f_Starts);
end;

function Tm3DB.GetDocument(anID: Integer): Im3DBDocument;
  {* - возвращает документ по номеру. }
begin
 Result := Tm3DBDocument.Make(Self, anID);
end;

function Tm3DB.MainStorage(aMode: Tm3StoreAccess = m3_saRead): Im3IndexedStorage;
  {-}
begin
 if (f_MainStorage = nil) OR
    ((f_MainStorageMode <> m3_saReadWrite) AND (aMode = m3_saReadWrite)) then
 begin
  f_MainStorage := nil;
  f_MainStorage := m3GetMainStorage(BaseName, aMode);
  f_MainStorageMode := aMode;
  //l3System.Msg2Log('Main');
 end;//f_MainStorage = nil..
 Result := f_MainStorage;
end;


function Tm3DB.GetVersionsStorage(aMode: Tm3StoreAccess = m3_saRead): Im3IndexedStorage;
  {-}
begin
 if (VersionsStorage = nil) OR
    ((f_VersionsStorageMode <> m3_saReadWrite) AND (aMode = m3_saReadWrite)) then
 begin
  VersionsStorage := nil;
  {$IFDef m3DBNeedsFork}
  f_BackupVersionsStorage := nil;
  {$ENDIF m3DBNeedsFork}
  VersionsStorage := m3GetVersionsStorage(BaseName, aMode);
  //l3System.Msg2Log('Versions');
  {$IFDef m3DBNeedsFork}
  if (aMode <> m3_saRead) then
  begin
   f_BackupVersionsStorage := m3GetVersionsStorage(BaseName + cBackupExt, aMode);
   //l3System.Msg2Log('Backup');
  end//aMode <> m3_saRead
  else
   f_BackupVersionsStorage := nil;
  {$ENDIF m3DBNeedsFork}
  f_VersionsStorageMode := aMode;
 end;//VersionsStorage = nil..
 Result := VersionsStorage;
end;

function Tm3DB.GetBackupStorage(aMode: Tm3StoreAccess = m3_saRead): Im3IndexedStorage;
  //override;
  {-}
var
 l_Vers : Im3IndexedStorage;
begin
 l_Vers := GetVersionsStorage(aMode);
 l_Vers := nil;
 {$IFDef m3DBNeedsFork}
 Result := f_BackupVersionsStorage;
 {$Else  m3DBNeedsFork}
 Result := nil;
 {$EndIF m3DBNeedsFork}
end;
  
procedure Tm3DB.pm_SetVersionsStorage(const Value: Im3IndexedStorage);
begin
 f_VersionsStorage := Value;
 {$IFDEF m3DBNeedsFork}
 f_BackupVersionsStorage := nil;
 {$ENDIF}
end;

// start class Tm3BaseObject

constructor Tm3BaseObject.Create(aDB: Tm3CustomDB);
  //reintroduce;
  {-}
begin
 inherited Create;
 l3Set(f_DB, aDB);
end;

procedure Tm3BaseObject.Cleanup;
  //override;
  {-}
begin
 l3Free(f_DB);
 inherited;
end;

function Tm3BaseObject.DB: Im3DB;
  {-}
begin
 Result := f_DB;
end;

// start class Tm3DBDocument

constructor Tm3DBDocument.Create(aDB  : Tm3CustomDB;
                                 anID : Integer);
  //reintroduce;
  {-}
begin
 inherited Create(aDB);
 f_ID := anID;
end;

class function Tm3DBDocument.Make(aDB  : Tm3CustomDB;
                                  anID : Integer): Im3DBDocument;
  //reintroduce;
  {-}
var
 l_Doc : Tm3DBDocument;
begin
 l_Doc := Create(aDB, anID);
 try
  Result := l_Doc;
 finally
  l3Free(l_Doc);
 end;//try..finally
end;

function Tm3DBDocument.pm_GetID: Integer;
  {-}
begin
 Result := f_ID;
end;

procedure Tm3DBDocument.Delete;
  {-}
begin
 if (f_DB <> nil) then
  with f_DB do
  begin
   Start(m3_saReadWrite);
   try
    ModifyDeleted(f_ID, true);
    //if ModifyDeleted(f_ID, true) then
    // ModifyModified(f_ID, false);
   finally
    Finish;
   end;//try..finally
  end;//with f_DB
end;

procedure Tm3DBDocument.DeleteObject(aObjID: Integer);
var
 l_ObjStream: IStream;
begin
 // Для удаления надо создать поток объекта с нулевой длиной
 l_ObjStream := Open(m3_saReadWrite, m3_dsObject, aObjID);
 l_ObjStream := nil;
end;

function Tm3DBDocument.Undelete: Boolean;
  {-}
begin
 if (f_DB = nil) then
  Result := false
 else
 begin
  with f_DB do
  begin
   Start(m3_saReadWrite);
   try
    ModifyDeleted(f_ID, false);
    Result := True;

    //Result := ModifyDeleted(f_ID, false);
    //if Result then
    // ModifyModified(f_ID, true);
   finally
    Finish;
   end;//try..finally
  end;//with f_DB
 end;//f_DB = nil
end;

function Tm3DBDocument.GetConst: Im3DBDocumentPart;
  {-}
begin
 Result := Tm3DBDocumentPart.Make(f_DB, Self, Cm3ConstVersion);
end;

function Tm3DBDocument.GetFreeObjectID: Integer;
var
 l_ExistID : Im3StorageElementIDList;
begin
 Result := 0;
 l_ExistID := f_DB.GetDocumentObjectsIDs(f_ID);
 try
  while true do
  begin
   if (l_ExistID.IndexOf(Result) < 0) then
    Exit
   else
    Inc(Result);
  end;//while true
 finally
  l_ExistID := nil;
 end;//try..finally
end;

function Tm3DBDocument.GetVersion(aLevel: Integer = Cm3LastVersion): Im3DBDocumentPart;
  {-}
begin
 Result := Tm3DBDocumentPart.Make(f_DB, Self, aLevel);
end;

function Tm3DBDocument.Open(aMode   : Tm3StoreAccess = m3_saRead;
                            aDocPart : Tm3DocPartSelector = m3_defDocPart;
                            aIndex   : Integer = 0): IStream;
  {* - открыть документ. }
begin
 Result := GetVersion.Open(aMode, aDocPart, aIndex);
 if (aMode = m3_saRead) AND (Result = nil) then
  Result := GetConst.Open(aMode, aDocPart, aIndex);
end;

// start class Tm3DBDocumentPart

constructor Tm3DBDocumentPart.Create(aDB        : Tm3CustomDB;
                                     const aDoc : Im3DBDocument;
                                     aLevel     : Integer;
                                     aFiler     : Tl3CustomFiler);
  //reintroduce;
  {-}
begin
 inherited Create(aDB);
 f_Level := aLevel;
 f_Document := aDoc;
 l3Set(f_Filer, aFiler);
end;

class function Tm3DBDocumentPart.Make(aDB        : Tm3CustomDB;
                                      const aDoc : Im3DBDocument;
                                      aLevel     : Integer = Cm3LastVersion;
                                      aFiler     : Tl3CustomFiler = nil): Im3DBDocumentPart;
  //reintroduce;
  {-}
var
 l_DP : Tm3DBDocumentPart;
begin
 l_DP := Create(aDB, aDoc, aLevel, aFiler);
 try
  Result := l_DP;
 finally
  l3Free(l_DP);
 end;//try..finally
end;

procedure Tm3DBDocumentPart.Cleanup;
  //override;
  {-}
begin
 l3Free(f_Filer);
 f_Document := nil;
 inherited;
end;

function Tm3DBDocumentPart.pm_GetDocument: Im3DBDocument;
  {-}
begin
 Result := f_Document;
end;

function Tm3DBDocumentPart.pm_GetInfo: Tm3DBDocumentInfo;
  {-}
var
 l_ID     : Integer;
 l_Summ   : IStream;
 l_Length : LongInt;
 l_ContentType : AnsiString;
begin
 Result := Tm3DBDocumentInfo_C(0);
 if (f_DB <> nil) then
  with f_DB do
  begin
   Start(m3_saRead);
   try
    l_ID := f_Document.ID;
    l_Summ := Open(m3_saRead, m3_dsInfo);
    //        ^^^^
    if (l_Summ = nil) and (f_Level <> Cm3ConstVersion) {not f_IsConst} then
     l_Summ := f_Document.GetConst.Open(m3_saRead, m3_dsInfo);
    //

    if (l_Summ <> nil) then
    begin
     if (l_Summ.Read(@l_Length, SizeOf(l_Length), nil) = S_False) then
      Exit;
     if (l_Length > 0) then
     begin
      SetLength(l_ContentType, l_Length);
      if (l_Summ.Read(@l_ContentType[1], l_Length, nil) = S_False) then
      begin
       SetLength(l_ContentType, 0);
       Exit;
      end;//l_Summ.Read..
     end;
     l_Summ.Read(@Result.rIndexID, SizeOf(Result.rIndexID), nil);
     if l_Summ.Read(@Result.rRelID, SizeOf(Result.rRelID), nil) = S_False then
      Result.rRelID := 0;
     if l_Summ.Read(@Result.rRightsMask, SizeOf(Result.rRightsMask), nil) = S_False then
      Result.rRightsMask := 0;
     if l_Summ.Read(@Result.rLockedBy, SizeOf(Result.rLockedBy), nil) = S_False then
      Result.rLockedBy := 0;
    end;//l_Summ <> nil
   finally
    Finish;
   end;//try..finally
  end;//with f_DB
end;

procedure Tm3DBDocumentPart.pm_SetInfo(const aValue: Tm3DBDocumentInfo);
  {-}
var
 l_Info   : Tm3DBDocumentInfo;
 l_Summ   : IStream;
 l_Length : LongInt;
 l_ContentType : AnsiString;
begin
 if (f_DB <> nil) then
  with f_DB do
  begin
   if (f_Level = Cm3ConstVersion) then
    raise Exception.Create('pm_SetInfo to ConstPart')
   else
    Start(m3_saReadWrite);
   try
    l_Info := pm_GetInfo;
    if (m2MEMCompare(@l_Info, @aValue, SizeOf(l_Info)) <> 0) then
    begin
     l_Summ := Open(m3_saReadWrite, m3_dsInfo);
     if (l_Summ <> nil) then
     begin
      l_ContentType := '';
      l_Length := Length(l_ContentType);
      l_Summ.Write(@l_Length, SizeOf(l_Length), nil);
      if (l_Length <> 0) then
       l_Summ.Write(@l_ContentType[1], l_Length, nil);
      l_Summ.Write(@aValue.rIndexID, SizeOf(aValue.rIndexID), nil);
      l_Summ.Write(@aValue.rRelID, SizeOf(aValue.rRelID), nil);
      l_Summ.Write(@aValue.rRightsMask, SizeOf(aValue.rRightsMask), nil);
      l_Summ.Write(@aValue.rLockedBy, SizeOf(aValue.rLockedBy), nil);
     end;//l_Summ <> nil
    end;//pm_GetContentType <> aValue
   finally
    Finish;
   end;//try..finally
  end;//with f_DB
end;

function Tm3DBDocumentPart.Open(aMode   : Tm3StoreAccess = m3_saRead;
                                aDocPart : Tm3DocPartSelector = m3_defDocPart;
                                aIndex   : Integer = 0): IStream;
  {* - открыть документ. }

 function OpenStream(anIndex : Tm3DBStreamIndex): IStream;

  function GetVersionForWrite(const aBase: Im3IndexedStorage; aPart: Tm3DBPart): IStream;

  var
   l_DocStorage : Im3IndexedStorage;
   
   function CheckNotExist: Boolean;
   var
    l_S : IStream;
   begin
    l_S := m3COMOpenStream(l_DocStorage,
                           l3PCharLen(m3_cDocPartName[anIndex.rPart]),
                           m3_saRead,
                           false);
    Result := (l_S = nil);
   end;

  var
   l_Storage    : Im3IndexedStorage;
   l_ObjStorage : Im3IndexedStorage;
   l_Stream     : IStream;
   l_Version    : Integer;
  begin
   Result := nil;
   l_Storage := m3COMOpenStorage(aBase,
                                 anIndex.rID,
                                 m3_saReadWrite,
                                 true);
   try
    l_Stream :=  m3COMOpenStream(l_Storage,
                                 0,
                                 m3_saRead,
                                 false);
    try
     if (l_Stream = nil) OR
        (l_Stream.Read(@l_Version, SizeOf(l_Version), nil) = S_False) then
      l_Version := 0;
    finally
     l_Stream := nil;
    end;//try..finally
   except
    l_Version := 0;
   end;//try..except
   if (l_Version > 0) then
   // - пытаемся открыть поток в предыдущей версии
   begin
    l_DocStorage := m3COMOpenStorage(l_Storage, l_Version, m3_saReadWrite, false);
    if (l_DocStorage <> nil) then
     try
      if (anIndex.rPart = m3_dsObject) then
      begin
       l_ObjStorage := m3COMOpenStorage(l_DocStorage,
                                        l3PCharLen(m3_cDocPartNameW[anIndex.rPart]),
                                        m3_saReadWrite,
                                        True);
       if (l_ObjStorage <> nil) then
        try
         Result := m3COMOpenStream(l_ObjStorage,
                                   anIndex.rIdx,
                                   m3_saRead,
                                   false);
         if (Result = nil) then // - не было такого потока
          Result := m3COMOpenStream(l_ObjStorage, // - создаем его
                                    anIndex.rIdx,
                                    m3_saReadWrite,
                                    true)

         else
          Result := nil;
          // - поток был - его перезаписывать не надо
        finally
         l_ObjStorage := nil;
        end;//try..finally
      end//aPartSelector = m3_dsObject
      else
      begin
       if not l_DocStorage.ElementExists(l3PCharLen(m3_cDocPartName[anIndex.rPart])) then
(*       Result := m3COMOpenStream(l_DocStorage,
                                 l3PCharLen(m3_cDocPartName[anIndex.rPart]),
                                 m3_saRead,
                                 false);
       if (Result = nil) then*)
        // - не было такого потока
        Result := m3COMOpenStream(l_DocStorage,
                                  l3PCharLen(m3_cDocPartNameW[anIndex.rPart]),
                                  m3_saReadWrite,
                                  true)
        // - создаем его
       else
        Result := nil;
        // - поток был - его перезаписывать не надо
      end;//aPartSelector = m3_dsObject
     finally
      l_DocStorage := nil;
     end;//try..finally
   end;//l_Version > 0
   if (Result = nil) then
   // - не удалось открыть поток в предыдущей версии
   begin
    Inc(l_Version);
    l_DocStorage := m3COMOpenStorage(l_Storage, l_Version, m3_saReadWrite, true);
    try
     if (anIndex.rPart = m3_dsObject) then
     begin
      l_ObjStorage := m3COMOpenStorage(l_DocStorage, l3PCharLen(m3_cDocPartNameW[anIndex.rPart]), m3_saReadWrite, True);
      try
       Result := Tm3NewVersionStream.Make(m3COMOpenStream(l_ObjStorage,
                                 anIndex.rIdx,
                                 m3_saReadWrite,
                                 true),
                                 f_DB,
                                 Tm3DBStreamIndexEx_CV(
                                 anIndex,
                                 aPart, l_Version));
      finally
       l_ObjStorage := nil;
      end;//try..finally
     end//aPartSelector = m3_dsObject
     else
     begin
      Assert(CheckNotExist, 'Поток ' + m3_cDocPartName[anIndex.rPart] + ' уже существует в ' + IntToStr(anIndex.rID) + '.' + IntToStr(l_Version));
      Result := Tm3NewVersionStream.Make(m3COMOpenStream(l_DocStorage,
                                l3PCharLen(m3_cDocPartNameW[anIndex.rPart]),
                                m3_saReadWrite,
                                true),
                                f_DB,
                                Tm3DBStreamIndexEx_CV(
                                anIndex,
                                aPart, l_Version));
     end;//anIndex.rPart = m3_dsObject
    finally
     l_DocStorage := nil;
    end;//try..finally
   end//Result = nil
   else
   // - удалось открыть поток в предыдущей версии
    Result := Tm3DBProxyWriteStream.Make(Result,
                                         f_DB,
                                         Tm3DBStreamIndexEx_CV(
                                         anIndex,
                                         aPart, l_Version));
    // - надо его завернуть
  end;

  function GetConstStream(const aBase: Im3IndexedStorage): IStream;
  var
   l_DocStorage : Im3IndexedStorage;
   l_ObjStorage : Im3IndexedStorage;
  begin
   m3COMSafeOpenStorage(aBase, anIndex.rID, aMode, aMode <> m3_saRead, l_DocStorage);
   try
    if (l_DocStorage <> nil) then
     if (anIndex.rPart = m3_dsObject) then
     begin
      m3COMSafeOpenStorage(l_DocStorage,
                           l3PCharLen(m3_cDocPartName[anIndex.rPart]),
                           aMode,
                           aMode <> m3_saRead,
                           l_ObjStorage);
      try
       if (l_ObjStorage <> nil) then
        m3COMSafeOpenStream(l_ObjStorage,
                            anIndex.rIdx,
                            aMode,
                            aMode <> m3_saRead,
                            Result);
      finally
       l_ObjStorage := nil;
      end;
     end
     else
      m3COMSafeOpenStream(l_DocStorage,
                          l3PCharLen(m3_cDocPartName[anIndex.rPart]),
                          aMode,
                          aMode <> m3_saRead,
                          Result);
   finally
    l_DocStorage := nil;
   end;//try..finally
  end;

  procedure l_TuneFiler(aFiler: Tl3CustomFiler);
  begin//l_TuneFiler
   f_DB.TuneFiler(aFiler);
   if (aMode <> m3_saRead) then
    aFiler.Mode := l3_fmWrite;
  end;//l_TuneFiler

 var
  l_Filer      : Tl3CustomFiler;
  l_Base       : Im3IndexedStorage;
  {$IFDEF m3DBNeedsFork}
  l_Fork       : Tl3ForkStream;
  l_Bkp        : Im3IndexedStorage;
  {$ENDIF}
  l_TryCount   : Integer;
 begin
  l_TryCount := 0;
  while (l_TryCount < m3_cMaxTry) do
  begin
   Inc(l_TryCount);
   Result := nil;
   try
    l_Filer := Tl3CustomFiler.Create;
    try
     l_Filer.Handle := anIndex.rID;
     l_TuneFiler(l_Filer);
     if (f_Level = Cm3ConstVersion) then
      f_DB.StartEx(m3_saRead, aMode)
     else
      f_DB.StartEx(aMode, m3_saRead);
     try
      if (f_Level = Cm3ConstVersion) then
      begin
       l_Base := f_DB.MainStorage(aMode);
       try
        if (aMode = m3_saRead) then
         l_Filer.COMStream := GetConstStream(l_Base)
        else
         l_Filer.COMStream := Tm3DBProxyWriteStream.Make(
                                GetConstStream(l_Base),
                                f_DB,
                                Tm3DBStreamIndexEx_C(
                                anIndex,
                                m3_bpConst));
       finally
        l_Base := nil;
       end;//try..finally
      end//f_IsConst
      else
      begin
       l_Base := f_DB.GetVersionsStorage(aMode);
       try
        if (aMode = m3_saRead) then
         l_Filer.COMStream := m3GetVersionForRead(l_Base, anIndex.rID, False, anIndex.rPart, anIndex.rIdx, f_Level)
        else
        begin
         {$IFDEF m3DBNeedsFork}
         // делаем форк
         l_Bkp := f_DB.GetBackupStorage(aMode);
         try
          l_Fork := Tl3ForkStream.MakeI(GetVersionForWrite(l_Base, m3_bpVersion),
                                        GetVersionForWrite(l_Bkp, m3_bpBackup));
         finally
          l_Bkp := nil
         end;//try..finally
         try
          l_Filer.Stream := l_Fork;
         finally
          l3Free(l_Fork);
         end;
         {$ELSE}
         l_Filer.COMStream := GetVersionForWrite(l_Base, m3_bpVersion);
         {$ENDIF m3DBNeedsFork}
        end;//aMode = m3_saRead
       finally
        l_Base := nil;
       end;//try..finally
       if (l_Filer.COMStream = nil) then
        Exit;
      end;//f_IsConst
      Supports(l_Filer, IStream, Result);
     finally
      f_DB.Finish;
     end;//try..finally
    finally
     l3Free(l_Filer);
    end;//try..finally
   except
    on E: EOleSysError do
    begin
     if (E.ErrorCode = STG_E_LOCKVIOLATION) then
     begin
      f_DB.CloseBase;
      // - стараемся отпустить всё по-максимуму
      if (l_TryCount >= m3_cMaxTry) then
       raise
      else
      begin
       Sleep(Random(m3_cMaxSleep));
       continue;
      end;//l_TryCount >= m3_cMaxTry
     end//E.ErrorCode = STG_E_LOCKVIOLATION
     else
      raise;
    end;//on E: EOleSysError
   end;//try..excepy
   break;
  end;//while (l_TryCount < m3_cMaxTry)
 end;

begin
 Result := nil;
 if (f_Filer <> nil) then
  Supports(f_Filer, IStream, Result)
 else
 if (f_DB <> nil) then
 begin
  if (aMode <> m3_saRead) then
   if (aDocPart = m3_dsObject) then
   begin
    if (aIndex < 0) then
     aIndex := f_Document.GetFreeObjectID;
    Assert(aIndex >= 0, 'Отрицательных объектов не бывает');
   end;//aDocPart = m3_dsObject
  Result := OpenStream(Tm3DBStreamIndex_C(f_Document.ID, aDocPart, aIndex));
 end;//f_DB <> nil
end;

// start class Tm3DBFiler

constructor Tm3DBFiler.Create(const aDB : Im3DB;
                              aHandle   : Integer = 0;
                              aDocPart : Tm3DocPartSelector = m3_defDocPart;
                              anIndex   : Integer = 0);
  //reintroduce;
  {-}
begin
 inherited Create;
 f_DB := aDB;
 Handle := aHandle;
 f_PartSelector := aDocPart;
 f_Index := anIndex;
end;

procedure Tm3DBFiler.Cleanup;
  //override;
  {-}
begin
 f_Part := nil;
 f_DB := nil;
 inherited;
 f_Index := 0;
 l3FillChar(f_PartSelector, SizeOf(f_PartSelector));
end;

{$IfDef OpenCloseLog}
procedure Tm3DBFiler.OuttoLog(aProcName : String);
begin
 l3System.Msg2Log('%s (Self: %d): DocID: %d (%s)', [aProcName, PLongint(self)^, Handle, GetEnumName(TypeInfo(Tm3DocPartSelector), ord(f_PartSelector))]);
end;

procedure Tm3DBFiler.Open;
begin
 OuttoLog('Tm3DBFiler.Open');
 inherited;
end;

procedure Tm3DBFiler.Close;
begin
 OuttoLog('Tm3DBFiler.Close');
 inherited;
end;
{$EndIf OpenCloseLog}

function Tm3DBFiler.DoOpen: Boolean;
  //override;
  {* - метод для открытия потока. Для перекрытия в потомках. }

 function OpenDocumentStream(const aDoc    : Im3DBDocument;
                             out aPart     : Im3DBDocumentPart;
                             aPartSelector : Tm3DocPartSelector;
                             aIndex        : Integer;
                             aMode         : Tm3StoreAccess;
                             aLevel        : Integer): IStream;
 begin//OpenDocumentStream
  Assert(aDoc <> nil);
  aPart := aDoc.GetVersion(aLevel);
  if (aMode = m3_saRead) then
  begin
   Result := aPart.Open(aMode, aPartSelector, aIndex);
   if (Result = nil) then
   begin
    aPart := nil;
    f_DB.FreeVersions;
    // - сообщаем, что переменную часть уже можно отпустить,
    //   типа - самые умные и можем рулить хранилищем.
    aPart := aDoc.GetConst;
    // - берём постоянную часть
   end//Result = nil
   else
    Exit;
    // - всё уже открыто
  end;//Mode = l3_fmRead
  Result := aPart.Open(aMode, aPartSelector, aIndex);
 end;//OpenDocumentStream

 function FMtoSA(aFileMode : Tl3FileMode) : Tm3StoreAccess;
 begin
  if (aFileMode = l3_fmRead) then
   Result := m3_saRead
  else
   Result := m3_saReadWrite;
 end;

begin
 Result := true;
 if (f_DB <> nil) and (Handle <> 0) then
 begin
  Assert(Handle > 0);
  {$IfDef OpenCloseLog}
  OuttoLog('Tm3DBFiler.RealOpen');
  {$EndIf OpenCloseLog}
  COMStream := OpenDocumentStream(f_DB.GetDocument(Handle),
                                  f_Part,
                                  f_PartSelector,
                                  f_Index,
                                  FMtoSA(Mode),
                                  0);
 end; // (f_DB <> nil) and (Handle <> 0)
 Result := false;
end;

procedure Tm3DBFiler.DoClose;
  //override;
  {-}
begin
 {$IfDef OpenCloseLog}
 OuttoLog('Tm3DBFiler.RealClose');
 {$EndIf OpenCloseLog}
 f_Part := nil;
 Stream := nil;
 // - это ОБЯЗАТЕЛЬНО нужно для сбалансированности скобок индикатора
 inherited;
end;

// start class Tm3BaseRange

constructor Tm3BaseParametricRange.Create(aDB : Tm3CustomDB; aParams : Tm3BaseRangeParams; anIndexID : Integer);
  //reintroduce;
  {-}
begin
 inherited Create(aDB);
 f_Params := aParams;
 f_IndexID := anIndexID;
end;

function Tm3BaseParametricRange.Iterate(anAction : Tm3DocumentAction; aParts : Tm3DocPartSet = m3_AllDocParts): Integer;
  //overload;
  {-}

 function DoFiler(aFiler: Tl3CustomFiler; const anIndex : Tm3DBStreamIndex): Boolean;
 var
  l_Doc : Im3DBDocumentPart;
 const
  cLevelCalc : array[Boolean] of Longint = (Cm3ConstVersion, Cm3LastVersion);
 begin//DoFiler
  l_Doc := Tm3DBDocumentPart.Make(f_DB,
                                  f_DB.GetDocument(aFiler.Handle),
                                  cLevelCalc[m3_brpModified in f_Params], //not (m3_brpModified in f_Params),
                                  aFiler);
  try
   Result := anAction(l_Doc, anIndex);
  finally
    l_Doc := nil;
  end;//try..finally
 end;//DoFiler

begin
 Result := IterateF(m3L2FilerAction(@DoFiler), aParts);
end;

class function Tm3BaseParametricRange.Make(aDB : Tm3CustomDB; aParams : Tm3BaseRangeParams = []; anIndexID : Integer =
    1): Im3DBRange;
  //reintroduce;
  {-}
var
 l_DBR : Tm3BaseRange;
begin
 l_DBR := Create(aDB, aParams, anIndexID);
 try
  Result := l_DBR;
 finally
  l3Free(l_DBR);
 end;//try..finally
end;

function Tm3BaseParametricRange.Mul(const aRange: Im3DBRange): Im3DBRange;
  {-}
var
 l_Params : Im3BaseRangeParamsSource;
begin
 if Supports(aRange, Im3BaseRangeParamsSource, l_Params) then
  try
   Result := Make(f_DB, l_Params.Params + f_Params, f_IndexID);
  finally
   l_Params := nil;
  end
 else
  Result := nil;
end;

function Tm3BaseParametricRange.pm_GetParams: Tm3BaseRangeParams;
  {-}
begin
 Result := f_Params;
end;

procedure Tm3BaseParametricRange.pm_SetParams(aValue: Tm3BaseRangeParams);
  {-}
begin
 f_Params := aValue;
end;


{ Tm3DocListRange }

constructor Tm3DocListRange.Create(aDB: Tm3CustomDB; const aList: Im3StorageElementIDList);
begin
 inherited Create(aDB);
 f_List := aList;
end;

function Tm3DocListRange.Iterate(anAction : Tm3DocumentAction;
                                 aParts   : Tm3DocPartSet = m3_AllDocParts): Integer;

 function DoFiler(aFiler: Tl3CustomFiler; const anIndex : Tm3DBStreamIndex): Boolean;
 var
  l_Doc : Im3DBDocumentPart;
 const
  cLevelCalc : array[Boolean] of Longint = (Cm3ConstVersion, Cm3LastVersion);
 begin//DoFiler
  l_Doc := Tm3DBDocumentPart.Make(f_DB,
                                  f_DB.GetDocument(aFiler.Handle),
                                  Cm3LastVersion,
                                  aFiler);
  try
   Result := anAction(l_Doc, anIndex);
  finally
    l_Doc := nil;
  end;//try..finally
 end;//DoFiler

begin
 Result := IterateF(m3L2FilerAction(@DoFiler), aParts);
end;

function Tm3DocListRange.Iterate(anAction : Tm3FilerAction;
                                 aParts   : Tm3DocPartSet = m3_AllDocParts): Integer;
var
 l_Filer  : Tl3CustomFiler;
 l_Doc    : Im3DBDocument;

 function DoDocumentStream(const aStream : IStream;
                           const anIndex : Tm3DBStreamIndex): Boolean;
 var
  l_Size    : Int64;
 begin//DoDocumentStream
  with f_DB do
   if Stopped then
    Result := false
   else
   begin
     l_Filer.Handle := anIndex.rID;
     l_Filer.COMStream := aStream;
     try
      {
      l_Size := l_Filer.Size;
      if Assigned(f_FilesMeter) then
       f_FilesMeter(piCurrent,
                    anIndex.rID,
                    IntToStr(anIndex.rID) + '/' + IntToStr(l_Size));
      Yield;
      }
      Result := anAction(l_Filer, anIndex);
     finally
      l_Filer.COMStream := nil;
     end;//try..finally
   end;//Stopped
 end;//DoDocumentStream

var
 I : Integer;
 l_DocID  : Tm3StorageElementID;
 l_DocPart: Tm3DocPartSelector;
 l_Stream : IStream;
begin
 Result := 0;
 if (f_DB <> nil) and (f_List <> nil) then
 begin
  l_Filer := Tl3CustomFiler.Create;
  try
   with f_DB do
   begin
    Start(m3_saRead);
    try
     TuneFiler(l_Filer);
     if Assigned(f_FilesMeter) then
      f_FilesMeter(piStart, f_List.Count, cIterateMsg);
     for I := 0 to f_List.Count - 1 do
     begin
      l_DocID := f_List.Items[I];
      l_Doc := f_DB.GetDocument(l_DocID);
      if Assigned(f_FilesMeter) then
      begin
       f_FilesMeter(piCurrent, I+1, Format('%d из %d', [I+1, f_List.Count]));
       Yield;
      end;
      for l_DocPart := Low(Tm3DocPartSelector) to High(Tm3DocPartSelector) do
      begin
       if l_DocPart in aParts then
       begin
        if l_DocPart = m3_dsObject then
         f_DB.IterateObjectsInDocF(l_DocID, False, m3L2DBStreamAction(@DoDocumentStream), False)
        else
        begin
         l_Stream := l_Doc.Open(m3_saRead, l_DocPart);
         if l_Stream <> nil then
          DoDocumentStream(l_Stream, Tm3DBStreamIndex_C(l_DocID, l_DocPart));
        end;
       end;
      end;

      if Assigned(f_FilesProcessed) or Assigned(f_FilesProcessedEx) then
      begin
       if Assigned(f_FilesProcessed) then
        f_FilesProcessed(I+1);
       if Assigned(f_FilesProcessedEx) then
        f_FilesProcessedEx(I+1, f_List.Count, LastElapsed);
       Yield;
      end; // if Assigned(f_FilesProcessed) or Assigned(f_FilesProcessedEx)
     end; // for I := 0 to f_List.Count - 1 do
     if Assigned(f_FilesMeter) then
      f_FilesMeter(piEnd, 0);
    finally
     Finish;
    end; // try..finally
   end; // with f_DB do
  finally
   FreeAndNil(l_Filer);
  end; // try..finally
 end; // if (f_DB <> nil)
end;

class function Tm3DocListRange.Make(aDB: Tm3CustomDB; const aList: Im3StorageElementIDList): Im3DBRange;
var
 l_Range: Tm3DocListRange;
begin
 l_Range := Tm3DocListRange.Create(aDB, aList);
 try
  Result := l_Range;
 finally
  FreeAndNil(l_Range);
 end;
end;

function Tm3DocListRange.Mul(const aRange: Im3DBRange): Im3DBRange;
begin
 Assert(False, 'Tm3DocListRange.Mul is not implemented');
end;


end.

