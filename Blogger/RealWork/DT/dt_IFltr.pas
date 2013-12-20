unit Dt_IFltr;

{ $Id: dt_IFltr.pas,v 1.277 2013/08/23 09:17:02 voba Exp $ }

// $Log: dt_IFltr.pas,v $
// Revision 1.277  2013/08/23 09:17:02  voba
// - K:236721575 (Загрузка и запись атрибутов из тегов EVD)
//
// Revision 1.276  2013/07/11 12:53:23  voba
// - K:463114210
//
// Revision 1.275  2013/05/17 16:02:33  voba
// - K:455105818
//
// Revision 1.274  2013/04/19 13:07:39  lulin
// - портируем.
//
// Revision 1.273  2013/01/17 10:11:56  voba
// - перенес интерфейсы в отдельный модуль
//
// Revision 1.272  2012/08/20 12:52:54  voba
// - bug fix
//
// Revision 1.271  2012/04/20 15:20:01  lulin
// {RequestLink:283610570}
//
// Revision 1.270  2012/03/07 13:55:02  narry
// Старый формат (без Флагов) информации об опубликовании рушил импорт
//
// Revision 1.269  2012/03/06 13:00:34  fireton
// - Слияние с веткой B_archi_base132
//
// Revision 1.268.2.1  2012/02/17 06:25:32  fireton
// - импорт/экспорт Flags у источников опубликования
//
// Revision 1.268  2012/01/13 08:54:40  fireton
// - добавил новый и переименовал старый метод (проверка действий над документами)
//
// Revision 1.267  2011/11/29 07:42:43  narry
// Повторный импорт затирает аннотацию (305961529)
//
// Revision 1.266  2011/11/08 07:15:39  voba
// - k:296632243
//
// Revision 1.265  2011/10/28 13:26:23  fireton
// - bug fix: возвращалось произвольное значение, если элемент словаря не был найден
//
// Revision 1.264  2011/09/08 08:13:56  voba
// - k : 236721575
//
// Revision 1.263  2011/08/30 07:43:02  voba
// - bug fix
//
// Revision 1.262  2011/08/11 11:19:21  voba
// - k : 236721575
//
// Revision 1.261  2011/08/11 11:11:31  voba
// - k : 236721575
//
// Revision 1.260  2011/08/08 10:00:21  voba
// - k : 236721575
//
// Revision 1.259  2011/07/28 08:40:12  voba
// - k : 236721575
//
// Revision 1.258  2011/07/20 07:58:03  voba
// - k : 236721575
//
// Revision 1.257  2011/07/01 09:05:19  narry
// Импорт атрибутов по Handle вместо Name (271761443)
//
// Revision 1.256  2011/06/20 09:55:52  voba
// - k : 236721575
//
// Revision 1.255  2011/06/10 12:49:03  voba
// - DocumentServer сделал функцией function DocumentServer(aFamily : TFamilyID), что бы отдельно Family не присваивать
//
// Revision 1.254  2011/06/07 09:07:48  voba
// - k : 236721575
//
// Revision 1.253  2011/05/31 12:36:58  voba
// - k : 236721575
// - умеет считывать логи из k2_tiSysLogRecords
//
// Revision 1.252  2011/05/06 07:28:44  voba
// - k : 236721575
//
// Revision 1.251  2011/04/22 06:47:24  voba
// - k : 264374454
//
// Revision 1.250  2011/04/08 08:06:56  voba
// - перевел на BufferedFilter
//
// Revision 1.249  2011/04/04 06:51:34  fireton
// - опечатка в имени функции (не собиралось)
//
// Revision 1.248  2010/09/24 12:11:14  voba
// - k : 235046326
//
// Revision 1.247  2010/09/21 11:06:54  fireton
// - переводим деревья с PAnsiChar на Tl3WString
//
// Revision 1.246  2009/12/23 08:33:43  voba
// - bug fix : проблемы с захватом семейства (таблица ctrl)
//
// Revision 1.245  2009/12/14 11:46:49  lulin
// - готовимся к возврату более простых строк.
//
// Revision 1.244  2009/12/01 07:49:20  voba
// - bug fix
//
// Revision 1.243  2009/11/30 13:35:19  voba
// - bug fix ошибка с HLID, когда в фильтре новые ссылки возникают (расставлятор ссылок)
//
// Revision 1.242  2009/09/29 13:01:35  voba
// - нумерация полей для сортировки теперь начинается с 1
//
// Revision 1.241  2009/07/22 11:27:26  narry
// - изменение доступа к DictServer
//
// Revision 1.240  2009/07/20 12:38:48  voba
// - Засунул renum в атрибуты
//
// Revision 1.239  2009/06/23 07:32:59  voba
// - стандартизация доступа к атрибутам
//
// Revision 1.238  2009/05/08 11:10:07  voba
// - заменил TblH на Handle
//
// Revision 1.237  2009/05/06 12:00:37  voba
// - cc
//
// Revision 1.236  2009/04/22 13:59:49  voba
// - 2 раза записывался Handle гиперссылки
// - refact.
//
// Revision 1.235  2009/04/21 08:20:01  voba
// - bu fix: обработка ссылок с DDocID = 0 отвалилась
//
// Revision 1.234  2009/04/13 07:10:58  narry
// - разделение определения типов и реализации
//
// Revision 1.233  2009/04/01 11:22:55  voba
// - убрал лишний вывод в лог
//
// Revision 1.232  2009/03/31 09:02:58  fireton
// - импорт/экспорт атрибута "Комментарий к документу" [$121164344]
//
// Revision 1.231  2009/03/23 11:00:31  voba
// - убрал ненужную запись в лог
//
// Revision 1.230  2009/03/23 08:30:52  lulin
// - аккуратнее чистим ресурсы.
//
// Revision 1.229  2009/03/19 08:52:12  voba
// - bug fix
//
// Revision 1.228  2009/03/18 14:59:50  lulin
// - делаем возможность отката, если во время записи произошло исключение.
//
// Revision 1.227  2009/03/04 16:26:03  lulin
// - <K>: 137470629. Bug fix: не собирался Архивариус.
//
// Revision 1.226  2009/03/02 13:00:06  voba
// -- bug fix
//
// Revision 1.225  2009/03/02 08:24:50  voba
// - заменил function FamTblName и  MainTblName на одну TblName с указанием Family
// - заменил  две verload function TablePassword на одну с указанием Family
//
// Revision 1.224  2009/02/25 15:09:56  voba
// - убрал отладку
//
// Revision 1.223  2009/02/25 14:59:06  voba
// - enh. выпилил из TImportFilter предка (TDBFilter) который занимается укладкой в БД атрибутов
//
// Revision 1.222  2009/02/20 13:27:58  fireton
// - команда !CHANGE (K 77235676)
// - 131 версия базы
//
// Revision 1.221  2009/02/19 16:29:59  voba
// - bug fix (procedure TImportFilter.DoEraseRecords)
//
// Revision 1.220  2009/02/19 09:26:46  voba
// - debug Out убрал под Define
//
// Revision 1.219  2009/02/18 14:47:08  voba
// - удаление игнорирумых атрибутов (KW)  для исчезнувших меток
//
// Revision 1.218  2009/02/06 07:25:58  voba
// - add evant для оповещения об удалении атрибутов
//
// Revision 1.217  2009/01/14 14:06:53  narry
// - татары
//
// Revision 1.216  2008/10/06 13:59:35  narry
// - замена отсутствующих значений Active на граничные
//
// Revision 1.215  2008/09/23 12:17:54  fireton
// - импорт/экспорт номера судебного дела
//
// Revision 1.214  2008/09/17 14:47:47  fireton
// - новая версия базы (130)
// - срочность документа
//
// Revision 1.213  2008/08/14 04:45:49  voba
// - bug fix
//
// Revision 1.212  2008/07/17 10:43:29  voba
// - enh. сокращаем количество функций редактирования словаря
//
// Revision 1.211  2008/07/07 09:40:10  voba
// - refact. выделил объект для работы со словарем (TDictionary)
//
// Revision 1.210  2008/06/07 11:57:48  voba
// - enh. При сохранении адресов гиперссылок меняем 0 на ID текущего
//
// Revision 1.209  2008/06/06 12:00:06  fireton
// - блокируем открытие документа с нулевым ID
//
// Revision 1.208  2008/05/14 11:54:47  narry
// - уменьшение объема выоводимой в лог инфы для регионов
//
// Revision 1.207  2008/05/07 16:05:23  voba
// - Refact. function .GetRelImportNum и GetINumber убил, вместо нех использовать GetExtDocID
//
// Revision 1.206  2008/04/29 14:04:24  voba
// - add property FastAddAttr
//
// Revision 1.205  2008/03/20 09:48:36  lulin
// - cleanup.
//
// Revision 1.204  2008/03/13 14:48:04  narry
// - обновление
//
// Revision 1.203  2008/03/13 12:53:56  voba
// - opt.
//
// Revision 1.202  2008/02/22 18:26:35  lulin
// - доперевёл списки на модель.
//
// Revision 1.201  2008/02/19 16:01:00  narry
// - возможность не отмечать импорт в Журнале
//
// Revision 1.200  2008/02/19 11:38:38  lulin
// - восстановил компилируемость Архивариуса.
//
// Revision 1.199  2008/02/13 16:03:08  lulin
// - убраны излишне гибкие методы поиска.
//
// Revision 1.198  2008/02/08 08:55:31  voba
// - del function StreamToSab
//
// Revision 1.197  2008/02/07 14:44:41  lulin
// - класс _Tl3LongintList переехал в собственный модуль.
//
// Revision 1.196  2008/02/04 13:30:21  lulin
// - базовые списки выделены в отдельные файлы.
//
// Revision 1.195  2007/11/22 14:53:31  fireton
// - недоразрешенный конфликт версий
//
// Revision 1.194  2007/11/22 14:38:58  fireton
// - приводим информацию о всех пользователей, захвативших документ
//
// Revision 1.193  2007/11/12 07:29:43  voba
// - оптимизация скорости в монопольном режиме
//
// Revision 1.192  2007/09/14 15:03:49  voba
// -фильтруем REVISION
//
// Revision 1.191  2007/08/15 11:31:25  voba
// -bug fix
//
// Revision 1.190  2007/08/14 20:25:14  lulin
// - bug fix: не собиралася Архивариус.
//
// Revision 1.189  2007/08/13 14:13:20  voba
// - bug fix от Шуры
//
// Revision 1.188  2007/08/09 17:17:09  lulin
// - bug fix: не собирался Архивариус.
//
// Revision 1.187  2007/08/09 11:19:23  lulin
// - cleanup.
//
// Revision 1.186  2007/07/19 08:55:37  voba
// no message
//
// Revision 1.185  2007/07/19 07:17:34  voba
// no message
//
// Revision 1.184  2007/06/25 13:35:35  narry
// - поддержка команды !SERVICEINFO
//
// Revision 1.183  2007/06/25 12:18:50  narry
// - поддержка команды !SERVICEINFO
//
// Revision 1.182  2007/05/18 12:23:40  fireton
// - реорганизация Большого Брата:
//   * логика перенесена из вызывающего кода в ББ
//   * изничтожен OperationHandle
//
// Revision 1.181  2007/04/25 07:52:37  fireton
// - Рефакторинг. Уходим от прямых упоминаний имен таблиц в пользу перечислимых типов в DT_Types
//
// Revision 1.180  2007/03/26 09:34:03  fireton
// - изменился формат l3System.FreeLocalMem
//
// Revision 1.179  2007/03/23 08:49:52  voba
// - merge with b_archi_BigDictID (повторно)
//
// Revision 1.178.2.2  2007/03/22 14:31:15  voba
// - кеширование Renum записей только в ExclusiveMode
//
// Revision 1.178.2.1  2007/03/21 08:17:52  voba
// - add кеширование Renum записей
//
// Revision 1.178  2007/03/02 09:48:21  voba
// - bug fix htSubSearch Bug
//
// Revision 1.177  2007/02/28 19:33:40  voba
// - work around htSubSearch Bug
//
// Revision 1.176  2007/02/16 16:14:09  voba
// - rename type Condition ->ThtCondition
//
// Revision 1.175  2006/12/21 15:12:31  voba
// no message
//
// Revision 1.174  2006/12/01 11:38:32  voba
// - cc
//
// Revision 1.173  2006/11/23 12:49:08  voba
// - add CachingMode
//
// Revision 1.172  2006/11/16 10:48:31  fireton
// - подготовка к большому UserID
//
// Revision 1.171  2006/11/07 11:24:17  voba
// - cc
//
// Revision 1.170  2006/10/04 08:34:06  voba
// - убрал режимы импорта
// - merge with b_archi_ht64
//
// Revision 1.169.2.1  2006/09/19 08:08:28  voba
// - переход на HTStub
//
// Revision 1.169  2006/08/24 08:37:45  voba
// - del  procedure DelCopiesOfImportedDocs
//
// Revision 1.168  2006/08/23 11:28:34  voba
// - bug fix
//
// Revision 1.167  2006/08/23 08:41:42  voba
// - merge with b_archi_ifltr_opt
//
// Revision 1.166  2006/06/08 15:54:45  fireton
// - подготовка к переходу на большой User ID
//
// Revision 1.165.2.1  2006/06/08 09:08:02  fireton
// - перевод User ID на Longword
//
// Revision 1.165  2006/06/02 14:00:32  narry
// - исправление: путаница с заливкой меток из evd
//
// Revision 1.164  2006/06/02 12:52:37  narry
// - исправление: путаница с заливкой меток из evd
//
// Revision 1.163  2006/04/17 13:23:56  voba
// - refactoring
//
// Revision 1.162  2006/04/13 13:47:54  voba
// no message
//
// Revision 1.161  2006/04/11 07:11:15  voba
// - ren OutOfData -> OutOfDataErr
//
// Revision 1.160  2006/04/11 06:39:16  voba
// - optimize: вынес строки из функций в ResourceString
//
// Revision 1.159  2005/11/16 07:47:36  voba
// - optimization
//
// Revision 1.158  2005/07/26 10:45:11  narry
// - bug fix: проблемы импорта аннотаций
//
// Revision 1.157  2005/07/13 15:14:57  voba
// - improve :изменил алгоритм выдачи свободных номеров для идентификаторов гиперссылок
//
// Revision 1.156  2005/05/17 09:27:38  lulin
// - new unit: evResultFont.
//
// Revision 1.155  2005/05/14 10:33:30  step
// bug fix: TDBFilter.GetSabOnList
//
// Revision 1.154  2005/05/14 10:21:14  step
// bug fix: TDBFilter.GetSabOnList
//
// Revision 1.153  2005/05/03 12:41:03  narry
// - bug fix: не импортировались анноклассы
//
// Revision 1.152  2005/04/19 15:41:49  lulin
// - переходим на "правильный" ProcessMessages.
//
// Revision 1.151  2005/04/14 10:15:56  narry
// - update: проверка повторного импорта аннотаций
//
// Revision 1.150  2005/04/06 12:28:40  narry
// - update: расчет приоритета во время импорта
//
// Revision 1.149  2005/03/28 11:32:25  lulin
// - интерфейсы переехали в "правильный" модуль.
//
// Revision 1.148  2005/03/21 17:02:29  lulin
// - используем правильный тип описателя свойства.
//
// Revision 1.147  2005/03/21 10:05:03  lulin
// - new interface: _Ik2Type.
//
// Revision 1.146  2005/03/18 16:21:55  narry
// - update: заполнение поля HasAnno
//
// Revision 1.145  2005/03/16 13:45:49  narry
// - bug fix: не создавалась пустышка для аннотаций
//
// Revision 1.144  2005/03/14 12:14:52  narry
// - update: фильтрация ссылок в аннотациях
//
// Revision 1.143  2005/03/04 10:03:38  narry
// - обновление: новая константа типа журнальной записи acAnnoWasImported
//
// Revision 1.142  2005/03/02 16:05:50  narry
// - исправление: изменение логики импорта документов в свете аннотаций
//
// Revision 1.141  2005/02/28 18:39:38  step
// скоректированы TDBFilter.DelRewritedAnnos, TDBFilter.DelRewritedDocs
//
// Revision 1.140  2005/02/22 17:40:54  step
// Добавлено поле HasAnno в табл. FILE
//
// Revision 1.139  2005/02/18 17:43:14  step
// добавлена обработка аннотаций
//
// Revision 1.138  2005/02/07 16:26:22  step
// исправлена TDBFilter.DelRewritedDocs (отмена удаления из табл. DT#B)
//
// Revision 1.137  2004/11/15 17:05:57  step
// форматирование
//
// Revision 1.136  2004/11/15 16:15:04  step
// форматирование
//
// Revision 1.135  2004/10/12 09:49:00  voba
// - update: сохранение информации о времени
//
// Revision 1.134  2004/10/12 08:35:09  voba
// - update: сохранение информации о пользователе
//
// Revision 1.133  2004/09/14 10:59:15  narry
// - bug fix: переполнение поля Время для журнальной записи
//
// Revision 1.132  2004/09/07 15:20:48  narry
// - bug fix: дублирование ссылок
//
// Revision 1.131  2004/09/01 13:37:46  narry
// - update: Отключение фильтрации атомов
//
// Revision 1.130  2004/08/03 08:52:47  step
// замена dt_def.pas на DtDefine.inc
//
// Revision 1.129  2004/07/22 14:19:49  voba
// - rename fPriceLevel_Fld ->  fStatus_Fld  PriceLevel ->  Status, который выполняет функцию набора флагов состояния документа (см.dstatChargeFree, dstatNotTM   в  Dt_Const)
//
// Revision 1.128  2004/07/14 13:28:27  step
// продолжительность транзакции задается в StartTA
//
// Revision 1.127  2004/07/13 08:02:34  step
// слияние с веткой b_import_filter_optimization2
//
// Revision 1.126.2.1  2004/07/08 17:18:00  step
// использование встроенного кэша номеров в TPrometTbl
//
// Revision 1.126  2004/07/07 15:40:21  step
// использование TAbsHtTbl.IgnoreDuplicates
//
// Revision 1.125  2004/07/05 15:10:25  narry
// Степанов С.: изменена TDBFilter.AddImpLogRec (Midday --> уник. число :-)
//
// Revision 1.124  2004/07/01 14:14:27  voba
// - merge newCashe
//
// Revision 1.123  2004/06/22 14:41:27  step
// убраны исправления, ошибочно внесенные с ветки
//
// Revision 1.122  2004/06/22 14:04:33  step
// изменен TDBFilter.BeginDocument;
// замена Byte на TSkipDocReason
//
// Revision 1.121.2.2  2004/06/18 14:41:26  step
// замена Buffering на StartCaching/StopCaching
//
// Revision 1.121.2.1  2004/06/17 18:03:49  step
// В методах TAbsHtTbl.AddRec и TAbsHtTbl.UpdRec убран параметр AbsNum.
//
// Revision 1.121.2.2  2004/06/18 14:41:26  step
// замена Buffering на StartCaching/StopCaching
//
// Revision 1.121.2.1  2004/06/17 18:03:49  step
// В методах TAbsHtTbl.AddRec и TAbsHtTbl.UpdRec убран параметр AbsNum.
//
// Revision 1.121  2004/06/02 16:24:57  narry
// - update: изменения в иерархии листов
//
// Revision 1.120  2004/06/01 15:17:59  law
// - удалены конструкторы Tl3VList.MakeLongint, MakeLongintSorted - пользуйтесь _Tl3LongintList.
// - подчистил Archi, за сегодняшними переделками Димона.
//
// Revision 1.119  2004/05/31 13:58:53  narry
// - change: при импорте документов в лог добавляется запись "Импортирован"
//
// Revision 1.118  2004/05/20 14:47:30  step
// Замена fFreeTbl на GlobalHtServer.FreeTbl[fFamily]
//
// Revision 1.117  2004/05/19 12:33:33  narry
// - update: измененный алгоритм вычеркивания диапазона для словарных статей
//
// Revision 1.116  2004/05/14 16:58:47  law
// - new units: k2TagTerminator, k2TagFilter.
//
// Revision 1.115  2004/05/14 14:48:59  law
// - исправлены префиксы у констант.
//
// Revision 1.114  2004/05/14 14:29:05  law
// - change: TevVariant переименован в Tk2Variant и переехал в k2Types.
//
// Revision 1.113  2004/05/13 16:32:18  step
// замена: "TFreeTbl.Create ..." --> "GlobalHtServer.FreeTbl[...]"
//
// Revision 1.112  2004/05/13 13:51:21  step
// замена GlobalHTServer.StartTransactionWithWait на GlobalHTServer.StartTransaction
//
// Revision 1.111  2004/05/06 12:38:16  narry
// - update: поддержка типа документа DictEntry
//
// Revision 1.110  2004/05/06 09:16:07  voba
// merge with adding_diapasons_table_free2
//
// Revision 1.109.8.2  2004/04/12 16:11:40  step
// Изменены методы CheckNumber и CheckFreeNumbers
//
// Revision 1.109.8.1  2004/04/09 16:57:55  step
// Переделан класс TFreeTbl (теперь работает с диапазонами)
//
// Revision 1.109  2004/03/26 14:09:41  voba
// no message
//
// Revision 1.108.2.1  2004/03/19 17:11:56  step
// Исправления, связанные с добавлением поля DT#A.PRIVATE
//
// Revision 1.108  2004/03/10 10:41:05  step
// учтено добавление поля TYP в табл. FILE
//
// Revision 1.107  2004/03/05 16:54:43  step
// чистка кода
//
// Revision 1.106  2004/02/27 15:00:15  narry
// - bug fix: не пропускались данные с источником @ и без даты
//
// Revision 1.105  2004/02/09 15:36:52  step
// bug fix
//
// Revision 1.104  2004/02/09 15:33:49  step
// добавлен поиск по кэшу при записи в Publish
//
// Revision 1.103  2004/02/09 14:39:46  step
// отключен кэш при записи в Publish
//
// Revision 1.102  2004/02/09 14:33:44  step
// отключен кэш при записи в Publish
//
// Revision 1.101  2004/02/03 17:05:52  narry
// - bug fix: AV при добавлении записи о публикации без новых полей Pages и LinkComment
//
// Revision 1.100  2004/02/03 11:05:00  step
// изменена TDBFilter.AddImpPublishRec (возвращена запись поля Comment)
//
// Revision 1.99  2004/02/02 08:45:44  step
// изменена TDBFilter.AddImpPublishRec (отменена запись поля Comment)
//
// Revision 1.98  2004/01/30 18:29:06  step
// изменена TDBFilter.AddImpPublishRec (учтено изменение структуры LNK#B)
//
// Revision 1.97  2004/01/30 11:41:04  narry
// - update: новая структура команды !PUBLISHEDIN
//
// Revision 1.96  2004/01/15 13:13:10  narry
// - new: сообщение о пропуске документа, если у него не задан идентификатор
//
// Revision 1.95  2003/12/29 12:09:13  narry
// - bug fix
//
// Revision 1.94  2003/12/17 11:28:06  narry
// - add: запрос условий удаления для конкретного документа
//
// Revision 1.93  2003/08/19 18:06:38  step
// В словари добавлено поле NameE и удалено поле NameLen
//
// Revision 1.92  2003/07/18 09:32:09  demon
// - bug fix: При создании старой редакции ExternalVerLink не фильтровался и попадал в текст документа.
//
// Revision 1.91  2003/06/25 14:34:01  voba
// - new behavior: добавлена возможность получения указателя на редакцию и справку в виде InternalHandle.
//
// Revision 1.90  2003/03/13 14:44:29  demon
// - new: добавлена поддержка импорта данных ActiveInterval и Alarm
//
// Revision 1.89  2003/03/13 09:47:49  demon
// - new: добавлена обработка нового поля в данных документа - VerLink
//
// Revision 1.88  2003/03/12 10:32:56  demon
// - del: Внесены изменения в связи с удалением полей
// NoActive и PreActive из таблицы File
//
// Revision 1.87  2003/01/27 13:11:19  demon
// - new behavior: расширен формат типа TSkipDocNotify, теперь в нем есть
// возможность передавать идентификатор пользователя, чьи действия привели к ошибке
//
// Revision 1.86  2002/10/18 14:54:54  narry
// - new behavior: изменение логики обновления словарей
//
// Revision 1.85  2002/09/18 08:06:11  voba
// - cleanup: удален параметр IsDefault.
//
// Revision 1.84  2002/05/30 09:57:45  demon
// - new behavior: now TGetClipboardFilter is buffered
//
// Revision 1.83  2002/05/30 06:35:09  demon
// - separate TCacheTblData object in new unit
//
// Revision 1.82  2002/04/15 12:16:59  demon
// - add Free Tbl in all massive transaction.
//
// Revision 1.81  2002/04/01 12:24:58  demon
// - new behavior: add DropTblData before load EqualsClasses
//
// Revision 1.80  2002/03/12 15:18:52  demon
// - spellchecking
//
// Revision 1.79  2001/11/21 12:50:31  demon
// - new: add new doc attribute - _dictionary #F (dlAccGroups)
//
// Revision 1.78  2001/09/17 06:52:18  demon
// - byg fix: before unlock family all other tbls now closed, and after unlock all opened
//
// Revision 1.77  2001/08/23 10:27:44  demon
// - add new Type - TDocType its replaced some constants
//
// Revision 1.76  2001/07/06 14:38:15  demon
// - new behavior: add transactions to all massive operation of Add, Modify and Delete of tbl records
//
// Revision 1.75  2001/05/30 12:23:05  narry
// Update - замена Str2Log на Msg2Log
//
// Revision 1.74  2001/03/16 13:42:45  demon
// - bug fix
//
// Revision 1.73  2001/03/14 13:57:37  demon
// - some changes in evTag Generators & Filtres
//
// Revision 1.72  2001/02/15 09:54:37  demon
// - fixed HyperLink Addres saved in document text now converting to Internal if necessary
//
// Revision 1.71  2001/02/12 14:16:39  demon
// - changed time of imported juror log records to 12-00
//
// Revision 1.70  2001/02/12 10:22:28  demon
// - bug fix
//
// Revision 1.69  2001/02/09 14:29:10  demon
// - bug fix (logbook buffering for ietPacked)
//
// Revision 1.68  2001/02/09 13:16:29  demon
// - bug fix
//
// Revision 1.67  2001/02/09 09:48:38  demon
// - add new Import type - ietPacked,
// for cached import operation in multiuser format
//
// Revision 1.66  2001/02/01 14:12:48  demon
// - fixed freeing of FreeNumList if exception
// - add DeleteConditions property for filtering deleting of equal documents
//
// Revision 1.65  2001/01/24 09:54:56  narry
// - bug fix
//
// Revision 1.64  2001/01/23 13:53:32  demon
// no message
//
// Revision 1.63  2001/01/23 13:26:32  demon
// - now HyperLink Addres saved in document text too
//
// Revision 1.62  2001/01/15 10:24:38  demon
// - small bug fix
//
// Revision 1.61  2001/01/11 10:59:29  demon
// Add MasterUser property for Import procedure
//
// Revision 1.60  2000/12/19 16:05:18  law
// - убраны ненужные директивы компиляции.
//
// Revision 1.59  2000/12/15 15:36:18  law
// - вставлены директивы Log.
//

{$I DtDefine.inc}
{.$Define DebugOut}
interface

uses
     Windows, TypInfo,
     l3Types, l3Base, l3Date, l3RecList, l3DatLst,
     k2Types, k2Tags, k2TagTerminator, k2TagGen,
     HT_const,
     DT_Types, DT_Const, dt_AttrSchema, dt_ImpExpTypes,
     DT_aTbl, DT_Sab,
     DT_Renum, DT_Free, DT_Dict, DT_Log, DT_TblCache, DT_Prior,
     l3ObjectRefArray,
     l3LongintList,
     l3FieldSortRecList,
     k2Interfaces,
     evdBufferedFilter
     ;

type
 //TTblDataArr = array[Low(TCacheType) .. High(TCacheType)] of TPrometTbl;
 //TCacheTblDataArr = Array[Low(TCacheType) .. High(TCacheType)] of TCacheTblData;

 TSameDocReact = (sdrIgnore,sdrDelete);
 TSameDocReactFunc = function(aDocID : TDocID) : TSameDocReact of object;

 TDeleteCondition = (dcAny, dcIfNotModify, dcIfNotVIncluded, dcIfNotHasAnno);
 TDeleteConditionSet = set of TDeleteCondition;

 TGetDeleteConditionEvent = function (aDocID : TDocID): TDeleteConditionSet of object;
 TUpdateDictionaryEvent = function (aDictType: TDLType; aSubID: TSubID;
                                    aName: Tl3CustomString): Boolean of object;

 TUpdateDictionaryLightEvent = function (aDictType: TDLType; aName: Tl3CustomString): Boolean of object;


 TdtOnEraseAttrRecords = procedure (aAttrType : TCacheType; aDictID : TDictID; aDocID : TDocID; aSubID : TSubID) of object;

 TdtSaveMode = (smImport, smSave, smAttrAdd, smAttrDel);

 TDictItemDecoder = class(TevdBufferedFilter {Tk2TagTerminator})
 { - восстанавливает Handle по Name для словарного элемента}
  private
   fFamily : TFamilyID;
   fBasesList,
   fWarningsList,
   fNormsList,
   fAccGroupsList : Tl3StringDataList;
   fDictTrees     : array[dlSources..dlServiceInfo] of TDictRootNode;
   f_OnUpdDict    : TUpdateDictionaryLightEvent;
  protected
   procedure Cleanup; override;
  public
   constructor Create(aFamily : TFamilyID);
   function AddHandle(const aChild: Ik2Tag; aDictType : TDLType) : Boolean;

   property OnUpdateDictionary : TUpdateDictionaryLightEvent
    read f_OnUpdDict
    write f_OnUpdDict;
    {* - Event для отслеживания возможности добавления новых в Dict}

 end;


 TDBFilter = class(TevdBufferedFilter {Tk2TagTerminator})
  private
    FAddNewAnnoAs  : TLogActionType;
    FAddNewAs      : TLogActionType;
    f_AddNewToLog  : Boolean;
    f_DictEntry    : Boolean;
    f_MinDictID    : Integer;
    f_MaxDictID    : Integer;
    f_PriorTable   : TPriorityCash; //TPriorTbl;
    f_SourcesList  : Tl3LongintList;
    f_TypesList    : Tl3LongintList;

    fDelSubList    : Tl3FieldSortRecList;
    fExclusiveMode : Boolean;
    fSaveMode      : TdtSaveMode;
    fDictDecoder   : TDictItemDecoder;
    function AddDocumentAtom(AtomIndex: Long; const Value: Tk2Variant): Boolean;
    //function CheckDocPriority: Boolean;
    procedure TranslateDocExternalHandle(const Value: Tk2Variant);
    procedure ConvToRealID(var aDocID : TDocID);
    procedure FlushRenumList;
    function  IsBaseLocked : Boolean; virtual;
  protected
   fFamily        : TFamilyID;
   fDoNothing     : Boolean; // специальный режим, когда фильтр не обрабатывает атрибуты

   fIntFormat     : Boolean;
   fFastAddAttr   : Boolean;
   fIsAnnoTopic   : Boolean;
   f_OnUpdDict    : TUpdateDictionaryEvent;
   fTblUpd        : Boolean;
   fMasterUser    : TUserID;

   //fLevelSlash    : AnsiString;

   fReNumTbl      : TReNumTbl;
   fLogBook       : TLogBookTbl;

   fRenumList     : Tl3FieldSortRecList;
   fRenumListExists : Tl3FieldSortRecList;

   fCurDocID      : TDocID;
   fFullDocFlag   : Boolean;

   fMainRecordCache : TCacheMainData;
   fCacheAttrData   : Tl3ObjectRefArray;

   fMinDate       : TStDate;
   fImpSubRec     : TImpSubRec;
   fCurSubID      : TSubID;
   fImpDocRec     : TImpDocRec;
   fImpHLAddress  : TGlobalCoordinateRec;

   fImpHLID       : LongInt;
   fNeedSaveHLID  : Boolean;
   fAutoGetHLID   : Boolean;

   //fActiveMaxID   : Byte;
   //fAlarmMaxID    : Byte;

   fNeedSkipDoc   : Boolean;

   fSkipDocNotify : TSkipDocNotify;

   fHLinkCounter  : Cardinal;

   fExcludeMainRec : Boolean;
   fExcludeAttr : TCacheTypeSet;
   fLogActionSet : TLogActionSet; //список лог-записей, которые нужно добавить к доку, используются при SaveMode in [smAttrAdd, smAttrDel]

   fNeedEventforErase : TCacheTypeSet; // need event for this attr

   fOnEraseAttrRecords : TdtOnEraseAttrRecords;

   fCachingDataCnt : integer; // счетчик вызовов  StartCachingData

   procedure   BeforeRelease; override;
   procedure   SetFamily(aValue : TFamilyID);
   procedure   SetIntFormat(aValue : Boolean);
   procedure   SetUpdDict(aValue : TUpdateDictionaryEvent);
   function    DoUpdDict(aDictType: TDLType; aName: Tl3CustomString): Boolean;
   //procedure   SetLevelSlash(aValue : AnsiString);
   function    GetFiltredFlag : Boolean;
   function    GetMasterUser : TUserID;

   function    GetHLID(aCurHLID : Cardinal) : Cardinal;

   procedure   SetNeedEventforErase (aAttrSet : TCacheTypeSet);
   function    GetEfectiveNeedEventforErase : TCacheTypeSet;
   {Initialization functions}
   procedure   InitCacheTblDataArr;
   procedure   InitLists;
   procedure   InitFreeNumsCaches;

   {Finalization functions}
   procedure   DoneCacheTblDataArr;
   procedure   DoneLists;
   procedure   DoneFreeNumsCaches;
   procedure   DoneDelSubList;

   function    GetTblObj(aAttrType : TCacheType) : TPrometTbl;
   function    AttrData(aAttrType : TCacheType) : TCustomCacheAttrData;
   function    IsValidAttribute(aAttrType : TCacheType) : Boolean;
   function    CheckValidAttribute(aAttrType : TCacheType) : Boolean;
   //procedure   AddCurrentRecord(aAttrType : TCacheType);
   procedure   OutOfDataErr(aAttrType : TCacheType);

   {For Packed import, Del all doubled documents and all information
    about annotation classes and log}

   function  TagID2CacheType(aTagId: Integer) : TCacheType;
   function  AddItemToDict(const aChild: Ik2Tag; aDictType   : TDLType) : Integer;

   procedure AddImpDocRec;
   procedure AddImpSubRec(aNeedUndo : Bool);
   procedure AddImpHLRec(aNeedUndo : Bool);
   procedure AddImpDictRec(const aLeaf: Ik2Tag; aCType : TCacheType);
   procedure AddImpDateNumRec(const aLeaf: Ik2Tag);
   procedure AddImpLogRec(const aLeaf: Ik2Tag);
   procedure AddLogRecPrim(aDocID : TDocID;
                            aAction : TLogActionType;
                            aUser  : TDictID = 0;
                            aDate  : TStDate = 0;
                            aTime  : TStTime = BadTime);

   procedure AddImpStageRec(const aLeaf: Ik2Tag);
   procedure AddImpActiveRec(const aLeaf: Ik2Tag);
   procedure AddImpCheckRec(const aLeaf: Ik2Tag);
   procedure AddImpAlarmRec(const aLeaf: Ik2Tag);
   procedure AddImpPublishRec(const aLeaf: Ik2Tag);
   procedure AddDoc2DocLinkRec(const aLeaf: Ik2Tag);

   procedure ClearDataStorage;
   procedure BeginDocument(aNewDocID : TDocID); virtual;
    {* - Start operations with current document}
   procedure DoneDocument;
    {* - End operations with current document}

   procedure NeedSkipCurrDoc;
   procedure SendSkipDocNotify(aID: TDocID; aReason: TSkipDocReason; aUser: LongInt = -1);

   function  ifAddAtomEx(AtomIndex : Long; const Value : Tk2Variant) : boolean;
   procedure ifStartChild(TypeID : Long);
   procedure ifStartTag(TagID : Long);
   procedure DoCloseStructure(aNeedUndo : Bool);

   function  NeedStartBuffering(aID : Integer): Boolean; override;
    {* - Функция, определяющая тип Тегов, для которых будет выполняться буферизация.}
   function  NeedFlushBuffer(const aLeaf: Ik2Tag; aTagId: Integer): Boolean; override;
    {* - Определяет нужно ли сбрасывать Тег в трубу.  }

   procedure AddAtomEx(AtomIndex : Long; const Value : Tk2Variant); override;

   procedure LogSabFilter(aAttrType : TCacheType; var aFoundAttr : SAB);

   procedure DoEraseRecords(aAttrType : TCacheType; const aSab : ISab);

  public
   constructor Create(aOwner : Tk2TagGeneratorOwner); override;

   procedure StartCachingData; virtual;
    {* - выполняется инициализация кеширующих структур}
   procedure DoneCachingData; virtual;
    {* - выполняется сброс кешей в СУБД}

   procedure OpenStream; override;
   procedure CloseStream(aNeedUndo : Boolean); override;

   procedure StartChild(TypeID : Long); override;
   procedure StartTag(TagID : Long); override;

   procedure CloseStructure(aNeedUndo : Boolean); override;

   property Family : TFamilyID read fFamily write SetFamily;
    {* - Current Archi Tables Family,
         Required,
         Unable modified between Start - Finish}

   property InternalFormat : Boolean read fIntFormat write SetIntFormat;
    {* - Show whitch handles may be used until Import - External or Internal,
         Single and Massive default False}

   property FastAddAttr : Boolean read fFastAddAttr write fFastAddAttr;
    {* - быстрое добавление атрибутов в базу. Применяется при заливке в пустую базу
         или когда есть уверенность что в базe нет заливаемых доков (их атрибутов)}

   property OnUpdateDictionary : TUpdateDictionaryEvent
    read f_OnUpdDict
    write SetUpdDict;
    {* - Event для отслеживания возможности добавления новых в Dict}

   property    FinalTblUpdate : Boolean read fTblUpd write fTblUpd;
    {* - if we use shared method of import, this flag show how often we loading records to HT.
         default True}
   property SaveMode : TdtSaveMode read fSaveMode write fSaveMode;
   property ExclusiveMode : Boolean
    read fExclusiveMode
    write fExclusiveMode;
     {* - Мы на базе одни. Можно кешировать любые данные, кроме нас их изменить некому }

   property AddNewAnnoAs: TLogActionType read FAddNewAnnoAs write FAddNewAnnoAs;
   property AddNewAs: TLogActionType read FAddNewAs write FAddNewAs;

   {Sets True if Current Doc, Tag or Child is Filtred}
   property FiltredFlag : Boolean read GetFiltredFlag;
   {Current Document Internal ID}
   property CurDocID : LongInt read fCurDocID write BeginDocument;
   {}
   property SkipDocNotification : TSkipDocNotify read fSkipDocNotify write fSkipDocNotify;

   property MasterUser: TUserID read GetMasterUser write fMasterUser;
    {* - ID of User, who imported documents }

   property AddNewToLog: Boolean read f_AddNewToLog write f_AddNewToLog;
    {* - Нужно ли добавлять запись об импорте}


   property ExcludeMainRec : Boolean read fExcludeMainRec write fExcludeMainRec;

   property ExcludeAttr : TCacheTypeSet write fExcludeAttr;

   property NeedEventforEraseAttrRec : TCacheTypeSet read fNeedEventforErase write SetNeedEventforErase;
   property OnEraseAttrRecords : TdtOnEraseAttrRecords
    read fOnEraseAttrRecords
    write fOnEraseAttrRecords;
 end;

TImportFilter = class(TDBFilter)
 // фильтр для импорта, управляет залочками и логикой добавления (перезаписывания)
 private
  fIsBaseLock : boolean;

  fLckHandleList : Tl3LongintList;
  fLckDocIDList  : Tl3LongintList;

  f_GetDeleteCondition: TGetDeleteConditionEvent;

  fCheckDocs     : Boolean; //проверять доки на наличие в базе
  fSameDocReact  : TSameDocReact;
  fSDR_UserFunc  : TSameDocReactFunc;
  fDelConditions : TDeleteConditionSet;

  {$IfDef ImportTest_K455105818}
   f_DocPass_ImportTest : integer;
  {$EndIf ImportTest_K455105818}

  procedure FreeLockedDocs;
   {* - For Packed import, free all locked documents}

  function GetSameDocReact(CurDoc : TDocID) : TSameDocReact;
   {* - Get Reaction for Current Document}

  function CheckDeleteConditions(CurDoc : TDocID; RelatedFlag : Boolean; var LockID : TDocID) : Boolean;
    {* - Check condition set and answer True if document may overrited}

  procedure BeginDocument(aNewDocID : TDocID); override;

  function  IsBaseLocked : Boolean; override;
  procedure SetLockBase(aValue : Boolean);

 public
   constructor Create(aOwner : Tk2TagGeneratorOwner); override;

   procedure ClearBase;
    {* - Clears All Data in Tables Family, set CheckDocuments flag to False}

   procedure StartCachingData; override;
   procedure DoneCachingData; override;

   property CheckDocuments : Boolean read fCheckDocs write fCheckDocs;
    {* - Check Current document ID in Base,
         if duplicate then reaction in order to SameDocumentReaction flag or SDR_UserFunc,
         Single and Massive default TRUE}

   property SameDocumentReaction : TSameDocReact read fSameDocReact write fSameDocReact;
    {* - Reaction on Same Documents in Base, used for all incoming Documents,
         Single default sdrDelete, Massive default sdrIgnore}

   property SDR_UserFunc : TSameDocReactFunc read fSDR_UserFunc write fSDR_UserFunc;
    {* - User function for geting Reaction on Same Documents in Base,
         default Nil}

   property DeleteConditions : TDeleteConditionSet read fDelConditions write fDelConditions;
     {* - if reaction on Same Document is sdrDelete, then additionally checking this conditions,
         Single default dcIfNotModify, Massive default Empty}

  property OnGetDeleteCondition: TGetDeleteConditionEvent
   read f_GetDeleteCondition
   write f_GetDeleteCondition;
end;

procedure LoadEqualClasses(aFamily : TFamilyID; aFileName : ShortString;
                           aLevelSlash : PAnsiChar; withDropData : boolean = True);

implementation

uses
  SysUtils,
  Forms, DateUtils,
  l3Interfaces,
  l3Const,
  l3String,
  l3Tree_TLB, l3MinMax, l3Filer, l3Nodes, l3Chars,
  k2Base,
  afwFacade,

  HT_Dll,Dt_err,Dt_Lock,Dt_Serv,Dt_Hyper,
  Dt_Link, DT_LinkServ,
  Dt_Doc, Dt_BBLog,
  Dt_Misc, Dt_Table, Dt_User, Dt_Stage, Dt_Active, Dt_Alarm, Dt_Equal,
  Math,
  {$ifDef DebugOut}
  vtDebug,
  {$EndIf}

  PIRec_Const,
  Check_Const,
  Stage_const,
  LogRecord_Const,
  Document_Const,
  Hyperlink_Const,
  Address_Const,
  Sub_Const,
  DocumentSub_Const,
  Block_Const,
  DictRec_Const,
  ActiveInterval_Const,
  Alarm_Const,
  NumAndDate_Const,
  AnnoTopic_Const,
  DictEntry_Const
  , dt_DictConst, dt_DictTypes, dt_DictIntf, l3PrimString;

resourcestring
 rsAddExternalHandleError = 'Не удалось добавить ExternalHandle!';
 rsExternalHandlePass = 'InternalHandle документа не найден до ExternalHandle, последний пропущен!';
 rsInternalHandlePass = 'Handle документа уже найден. InternalHandle пропущен!';
 rsFamilyNotAssigned = 'Не задано семейство таблиц для работы';
 rsAddAttrbutDocHandleNotAssign = 'Попытка добавить данные, когда ID документа еще не задано';
 rsDocHandleNotAssign = 'Не задан Handle текущего документа';
 rsSUBHandleNotAssign = 'Не задан Handle текущего SUB';
 rsAddSubAttrButSubHandleNotAssign = 'Попытка добавить SUB-атрибуты, когда ID SUB еще не задано';
 rsAddSUBbutDocHandleNotAssign = 'Попытка добавить SUB, когда ID документа еще не задано';
 rsEnotherHandleOfSub = 'Handle у гиперссылки уже задан. Новый Handle пропущен!';
 rsEnableLockDoc = 'Не удалось захватить документ в базе для работы. Документ занят. Пропущен!';
 rsDocNotValidDeleteCondition = 'Документ не прошел проверку условий удаления. Пропущен!';
 rsDocIsBusy = 'Не удалось очистить копию документа в базе. Документ занят. Пропущен!';
 rsDocIDDoubling = 'Документ с таким ID уже есть в базе. Пропущен!';
 rsOutOfDataForLogBook = 'Не хватает ключевых данных в LogBookRec';
 rsWronfUserID = 'Идентификатор пользователя не задан';
 rsWrongHyperLinkAddress = 'Попытка сослаться на документ с ID = 0';
 rsWrongFormatOfSUB = 'Попытка добавления информации о SUB до его начала';
 rsTableUpdateFail = 'Обновление таблицы не прошло';
 rsUnknownDictionary = 'Попытка занести данные в несуществующий словарь';
 rsAddRecError = '!CRITICAL ERROR! Не удалось добавить запись в %s';
 rsOutOfData = '!CRITICAL ERROR! Не хватает данных для записи в таблицу %s';
 rsNotValidAttribute = 'Недопустимый атрибут %s в %s DocID = %d';
 rsErrLockDoc = 'TDBFilter.BeginDocument --> LockServer.FullLockDoc --> ';

procedure ConvertErrorEx(TypeKind: Tk2VarKind);
  {-}
begin
 try
  ConvertError(GetEnumName(TypeInfo(Tk2VarKind), Ord(TypeKind)), 'TDBFilter'{ClassName});
 except
  on E: Exception do
  begin
   l3System.Msg2Log(E.Message);
   raise;
  end;//on E: Exception
 end;//try..except
end;

function AsInteger(const aValue : Tk2Variant) : Integer;
begin
 if (aValue.Kind = k2_vkInteger) then
  Result := aValue.AsInteger
 else
  ConvertErrorEx(aValue.Kind);
end;

function AsString(const aValue : Tk2Variant) : Tl3PrimString;
begin
 if (aValue.Kind = k2_vkString) then
  Result := aValue.AsString
 else
  ConvertErrorEx(aValue.Kind);
end;

function GetIntTag(const aItem : Ik2Tag; aTagID : Integer) : integer;
begin
 with aItem do
  if IsValid then
   Result := IntA[aTagID]
  else
   Result := 0;
end;

function GetUserID(const aItem : Ik2Tag) : integer;
begin
 Result := GetIntTag(aItem, k2_tiHandle);
end;

{ TDBFilter }
constructor TDBFilter.Create(aOwner : Tk2TagGeneratorOwner);
begin
 inherited;
 //LevelSlash := '\';
 fNeedSkipDoc := False;
 fMasterUser := 0;
 FAddNewAs := acWasImported;
 FAddNewAnnoAs := acAnnoWasImported;
 f_TypesList := Tl3LongintList.MakeSorted;
 f_SourcesList := Tl3LongintList.MakeSorted;
 f_AddNewToLog := True;

 fFullDocFlag := True;
 fExcludeAttr := [ctKW]; {!! убрать только когда KW из дока читать будем}

 fSaveMode := smImport;
end;

{Protected methods}
procedure TDBFilter.LogSabFilter(aAttrType : TCacheType; var aFoundAttr : SAB);

 function lIsProperLogAction_Doc(aValue: Pointer; fpUser: Pointer) : CFUNC_RET;
 begin
  Result := BoolToCFUNC_RET[not (TLogActionType(PByte(aValue)^) in cAnnoLogActions)];
 end;

 function lIsProperLogAction_Anno(aValue: Pointer; fpUser: Pointer) : CFUNC_RET;
 begin
  Result := BoolToCFUNC_RET[(TLogActionType(PByte(aValue)^) in cAnnoLogActions)];
 end;

var
 lFilteredAttr : SAB;
 lHTStub       : Pointer;
begin
 try
  if aAttrType = ctLog_Doc then
   lHTStub := HTStub2(@lIsProperLogAction_Doc)
  else
   lHTStub := HTStub2(@lIsProperLogAction_Anno);
  try
   htSubSearch(aFoundAttr, lFilteredAttr, GetTblObj(aAttrType).Handle, lgAction_Key, USER_DEF, lHTStub, self);
  finally
   HTStubFree(lHTStub);
  end;
  Ht(lFilteredAttr.nRetCode);
 finally
  htClearResults(aFoundAttr);
  aFoundAttr := lFilteredAttr;
 end;
end;

procedure TDBFilter.BeforeRelease;
begin
 l3Free(f_PriorTable);
 l3Free(f_TypesList);
 l3Free(f_SourcesList);
 inherited;
 Assert(fCachingDataCnt = 0);
end;

procedure TDBFilter.SetFamily(aValue : TFamilyID);
begin
 if fFamily <> aValue then
 begin
  if StreamOpened then {in Process}
   raise EHtErrors.CreateInt(ecNotEnable)
  else
   fFamily := aValue;

  {Initialize External objects}

  if f_PriorTable <> nil then
   l3Free(f_PriorTable);
  f_PriorTable := TPriorityCash.Create(fFamily); // TPriorTbl.Create(fFamily);

  if fLogBook <> Nil then
  begin
   fLogBook.Table.StopCaching;
   fLogBook.Table.IgnoreDuplicates := False;
  end;
  fLogBook := LinkServer(fFamily).LogBook;

  fNeedSkipDoc := False
 end;
end;

procedure TDBFilter.SetIntFormat(aValue : Boolean);
begin
 fIntFormat := aValue;
end;

procedure TDBFilter.SetUpdDict(aValue : TUpdateDictionaryEvent);
begin
 f_onUpdDict:=aValue;
end;

function TDBFilter.DoUpdDict(aDictType: TDLType; aName: Tl3CustomString): Boolean;
begin
 Result := Assigned(f_OnUpdDict) and f_OnUpdDict(aDictType, fCurSubID, aName);
end;

//procedure TDBFilter.SetLevelSlash(aValue : AnsiString);
//begin
// if fLevelSlash = aValue then Exit;
// fLevelSlash := aValue;
//end;

function TDBFilter.GetFiltredFlag : Boolean;
begin
 Result := fNeedSkipDoc;
end;

function TDBFilter.GetMasterUser : TUserID;
begin
 if fMasterUser = 0 then
  fMasterUser := GlobalHtServer.CurUserID;

 Result := fMasterUser;
end;

procedure TDBFilter.InitCacheTblDataArr;
begin
 fMainRecordCache := TCacheMainData.Create(fFamily);

 if ExclusiveMode then
 begin
  fRenumList := Tl3FieldSortRecList.Create(8,
                                           [SizeOf(TDocID), SizeOf(TDocID)], // два поля по SizeOf(TDocID) байт
                                           [2]     // сортировка по второму полю (внешний номер)
                                           );
  fRenumList.Capacity := 64*1024;
  fRenumList.Sorted := True;
 end;
end;

function TDBFilter.GetTblObj(aAttrType : TCacheType) : TPrometTbl;
begin
 Case aAttrType of
  //ctDoc       : Result := DocumentServer.FileTbl;
  ctSour      : Result := LinkServer(fFamily)[atSources].Table;
  ctType      : Result := LinkServer(fFamily)[atTypes].Table;
  ctBase      : Result := LinkServer(fFamily)[atBases].Table;
  ctKW        : Result := LinkServer(fFamily)[atKeyWords].Table;
  ctClass     : Result := LinkServer(fFamily)[atClasses].Table;
  ctAnnoClasses : Result := LinkServer(fFamily)[atAnnoClasses].Table;
  ctHLink     : Result := LinkServer(fFamily)[atHLink].Table;
  ctSub       : Result := LinkServer(fFamily)[atSub].Table;
  ctDateNum   : Result := LinkServer(fFamily)[atDateNums].Table;
  ctWarning   : Result := LinkServer(fFamily)[atWarnings].Table;
  ctStage     : Result := LinkServer(fFamily)[atStages].Table;
  ctActive    : Result := LinkServer(fFamily)[atActiveIntervals].Table;
  ctAlarm     : Result := LinkServer(fFamily)[atAlarms].Table;
  ctCorrects  : Result := LinkServer(fFamily)[atCorrects].Table;
  ctPublisheds: Result := LinkServer(fFamily)[atPublisheds].Table;
  ctPrefix    : Result := LinkServer(fFamily)[atPrefixes].Table;
  ctTerritory : Result := LinkServer(fFamily)[atTerritories].Table;
  ctNorm      : Result := LinkServer(fFamily)[atNorms].Table;
  ctAccGroup  : Result := LinkServer(fFamily)[atAccGroups].Table;
  ctLog_Doc,
  ctLog_Anno  : Result := fLogBook.Table; // GlobalHtServer.LogBook[aFamily];
 end;
end;

procedure TDBFilter.InitLists;
begin
 fDictDecoder := TDictItemDecoder.Create(fFamily);
 fDictDecoder.OnUpdateDictionary := DoUpdDict;
 fLogBook.Table.StartCaching;
 fLogBook.Table.IgnoreDuplicates := True;
end;

procedure TDBFilter.DoneCacheTblDataArr;
begin
 FlushRenumList;
 l3Free(fRenumList);
 l3Free(fRenumListExists);
 l3Free(fMainRecordCache);
 l3Free(fCacheAttrData);
end;

procedure TDBFilter.DoneDelSubList;
type
 PDocSubRec = ^TDocSubRec;
 TDocSubRec = record
  rDocID : TDocID;
  rSubID : TSubID;
 end;

var
 lCurDoc : TDocID;
 lCurInd : Integer;

 lSabOfSub : ISab;
 lAttrSab  : ISab;
 lVSFiller : IValueSetFiller;

 lDictType : TDLType;
 lAttr     : TCacheType;

begin
 if (fDelSubList <> nil) and (fDelSubList.Count > 0) then
 begin
 {$ifDef DebugOut}
  dbgAppendToLogLN(Format('DoneDelSubList SubCount=%d', [fDelSubList.Count]));
 {$EndIf}

  lCurInd := 0;

  while (lCurInd < fDelSubList.Count) do
  begin
   lCurDoc := PDocSubRec(fDelSubList.ItemSlot(lCurInd))^.rDocID;

   lSabOfSub := MakeSab(LinkServer(fFamily)[atSub]);

   lVSFiller := lSabOfSub.MakeValueSetFiller(subSID_fld);
   while (lCurInd < fDelSubList.Count) do
    with PDocSubRec(fDelSubList.ItemSlot(lCurInd))^ do
    begin
     if (lCurDoc <> rDocID) then Break;
     // добавим Sub в список
     lVSFiller.AddValue(rSubID);
    {$ifDef DebugOut}
     dbgAppendToLogLN(Format('Sub: %d.%d', [rDocID, rSubID]));
    {$EndIf}
     Inc(lCurInd);
    end;

   lVSFiller := nil;

   for lAttr := Low(TCacheType) to High(TCacheType) do
    if (lAttr in cctSubDictExpData) and (lAttr in fExcludeAttr) then
    begin
     lAttrSab := MakeSabCopy(lSabOfSub);

     AttrCType2DictType(lAttr, lDictType);
     lAttrSab.TransferToPhoto(lnkSubIDFld, LinkServer(fFamily).Links[lDictType]);
     lAttrSab.RecordsByKey;
     lAttrSab.SubSelect(lnkDocIDFld, lCurDoc);

    {$ifDef DebugOut}
     dbgAppendToLogLN(Format('Del Attr:%s Count:%d', [GetEnumName(TypeInfo(TCacheType), Ord(lAttr)), lAttrSab.Count]));
    {$EndIf}
     if not (lAttrSab.IsEmpty) then
     begin
      // если нужно, вызвать DoEraseRecords
      if (lAttr in NeedEventforEraseAttrRec) then
       DoEraseRecords(lAttr, lAttrSab);

      //Снести накопленное из игнорирумых атрибутов
      lAttrSab.DeleteFromTable;
     end;
    end;
  end;
 end;
 l3Free(fDelSubList);
end;

procedure TDBFilter.DoneLists;
begin
 l3Free(fDictDecoder);
 fLogBook.Table.StopCaching;
 fLogBook.Table.IgnoreDuplicates := False;
 if FinalTblUpdate then
  try
   fLogBook.Table.UpdateTbl;
  except
   msg2Log(rsTableUpdateFail);
  end;
end;

procedure TDBFilter.OutOfDataErr(aAttrType : TCacheType);
begin
 Msg2Log(Format(rsOutOfData, [GetTblObj(aAttrType).TblName]));
end;

procedure TDBFilter.DoEraseRecords(aAttrType : TCacheType; const aSab : ISab);

 function lDictRecAccessProc(aItemPtr : Pointer) : Boolean;
 begin
  Result := True;
  with PDictRec(aItemPtr)^ do
   fOnEraseAttrRecords(aAttrType, rDictID, rDocID, rSubID);
 end;

var
 lNeedSubAttrDelete : boolean;
 lNeedEventCall : boolean;

 function lSubRecAccessProc(aItemPtr : Pointer) : Boolean;
 begin
  Result := True;
  with PSubRec(aItemPtr)^ do
  begin
   if lNeedEventCall then
    fOnEraseAttrRecords(aAttrType, 0, DocID, SubID);

   if lNeedSubAttrDelete then
    fDelSubList.Add(DocID {это начало записи DocID-SubID});
  end;
 end;

var
 lSab        : ISab;
 lRAProcStub : TdtRecAccessProc;

begin
 if aSab.IsEmpty then Exit;

 lRAProcStub := nil;

 if aAttrType = ctSub then
 begin
  lNeedEventCall := (aAttrType in NeedEventforEraseAttrRec) and Assigned(fOnEraseAttrRecords);
  lNeedSubAttrDelete := fExcludeAttr * cctSubDictExpData <> []; // каких-то субатрибутов нет в заливке

  if not (lNeedEventCall or lNeedSubAttrDelete) then Exit;

  if lNeedSubAttrDelete and (fDelSubList = nil) then
   fDelSubList := Tl3FieldSortRecList.Create(SizeOf(TDocID) + SizeOf(TSubID), [SizeOf(TDocID), SizeOf(TSubID)]);

  lRAProcStub := L2RecAccessProc(@lSubRecAccessProc);
  try
   aSab.IterateRecords(lRAProcStub, [subDID_fld, subSID_fld]);
  finally
   FreeRecAccessProc(lRAProcStub);
  end;
 end
 else // aAttrType = ctSub
 begin
  lNeedEventCall := Assigned(fOnEraseAttrRecords);

  if not lNeedEventCall then Exit;

  lRAProcStub := L2RecAccessProc(@lDictRecAccessProc);
  try
   aSab.IterateRecords(lRAProcStub, []);
  finally
   FreeRecAccessProc(lRAProcStub);
  end;
 end;
end;

function TDBFilter.GetEfectiveNeedEventforErase : TCacheTypeSet;
begin
 Result := fNeedEventforErase;
 //если в списке есть субатрибуты, но они в ExcludeAttr, нужно следить за ними через удаление ctSub
 if fExcludeAttr * cctSubDictExpData <> [] then
  Result := Result + [ctSub];
end;

procedure TDBFilter.SetNeedEventforErase(aAttrSet : TCacheTypeSet);
begin
 fNeedEventforErase := aAttrSet;
 // пока не предполагаем, что этот сет меняют по ходу дела, иначе нужно тут перебрать все уже созданнык кеши (TCacheDiffAttrData)
 // и настроить им lAttrData.OnEraseRecords := DoEraseRecords;
 Assert(fCacheAttrData = nil, 'TDBFilter.SetNeedEventforErase');
end;

function TDBFilter.AttrData(aAttrType : TCacheType) : TCustomCacheAttrData;
var
 lAttrData : TCustomCacheAttrData;
begin
 if fCacheAttrData = nil then
  fCacheAttrData := Tl3ObjectRefArray.Create;

 if fCacheAttrData[Ord(aAttrType)] = nil then
 begin
  if not fFastAddAttr then
  begin
   lAttrData := TCacheDiffAttrData.Create(fFamily, aAttrType);
   try
    if (SaveMode = smImport) and (aAttrType in [ctLog_Doc, ctLog_Anno]) then
     (lAttrData as TCacheDiffAttrData).AttrSABFilter := LogSabFilter;
    fCacheAttrData[Ord(aAttrType)] := lAttrData;

    //SaveMode := smImport, smSave, smAttrAdd, smAttrDel);

    if (SaveMode = smAttrAdd) or
       ((SaveMode = smAttrDel) and (aAttrType in [ctLog_Doc, ctLog_Anno])) or // удаления из лога нет, но нужно добавить инфу об изменениях
       ((SaveMode = smImport) and (aAttrType = ctPublisheds)) then
     lAttrData.CachingMode := cmAddOnly
    else
    if (SaveMode = smAttrDel) then
     lAttrData.CachingMode := cmDelete
    else
     lAttrData.CachingMode := cmReplace;
 
    if aAttrType in GetEfectiveNeedEventforErase then
     lAttrData.OnEraseRecords := DoEraseRecords;

   finally
    l3Free(lAttrData);
   end;
  end
  else
  begin
   lAttrData := TCacheDirectAddAttrData.Create(fFamily, aAttrType);
   try
    fCacheAttrData[Ord(aAttrType)] := lAttrData;
   finally
    l3Free(lAttrData);
   end;
  end;
 end;

 Result := fCacheAttrData[Ord(aAttrType)] as TCustomCacheAttrData;
end;

function TDBFilter.IsValidAttribute(aAttrType : TCacheType) : Boolean;
begin
 if SaveMode = smSave then // smSave все храним в доке, ctLog_Anno
  Result := not fIsAnnoTopic and (aAttrType <> ctLog_Anno)
 else
  Result := ((fIsAnnoTopic and (aAttrType in cAttrInAnno)) or
             (not fIsAnnoTopic and (aAttrType in cAttrInDoc))) and
            not (aAttrType in fExcludeAttr);
end;

function TDBFilter.CheckValidAttribute(aAttrType : TCacheType) : Boolean;
const
 cDocClassName : array[False..True] of AnsiString = ('документе', 'аннотации');
begin
 Result := IsValidAttribute(aAttrType);
(* if not Result then
// rsNotValidAttribute = 'Недопустимый атрибут %s в %s DocID = %d';
  l3System.Msg2Log(Format(rsNotValidAttribute, [GetENumName(TypeInfo(TCacheType), Ord(aAttrType)),
                                       cDocClassName[fIsAnnoTopic],
                                       fCurDocID]), l3_msgLevel1);
*)
end;

procedure TDBFilter.AddImpDocRec;
var
 lPriorFlag : Boolean;
begin
 if fIsAnnoTopic then
  fMainRecordCache.AddAnno(fCurDocID)
 else
 begin
  With fImpDocRec do
  begin
   if DocType = 0 then DocType := Byte(dtText);

   lPriorFlag := Priority <> 0;

   if Not lPriorFlag then
    Priority := f_PriorTable.CalcPriorityBy(f_SourcesList, f_TypesList);

   if SortDate = 0 then
    SortDate := fMinDate;

   if not Assigned(Name) then
    Name := ShortName.Use;

   if not Assigned(Comment) then
    Comment := Tl3String.Create;

   if rIsExtVerLink and (VerLink <> 0) then
    ConvToRealID(VerLink);


   //if SaveMode = smSave then
   // rHasAnno := Ord(fHasAnno)
   //else
   // rHasAnno := 0;

   fMainRecordCache.AddRecord([fCurDocID,
                               ShortName,
                               Name,
                               Status,
                               Priority,
                               SortDate,
                               DocType,
                               Ord(UserType),
                               RelHandle,
                               0, //PaperUser_fld
                               PAnsiChar(nil), //fPaperPlace
                               lPriorFlag,
                               0, //StageMask
                               VerLink,
                               rHasAnno,
                               Urgency,
                               Comment
                              ]);


  end;
 end;
 L3Free(fImpDocRec.ShortName);
 L3Free(fImpDocRec.Name);
 L3Free(fImpDocRec.Comment);
 l3FillChar(fImpDocRec,SizeOf(fImpDocRec));
end;

procedure TDBFilter.AddImpSubRec(aNeedUndo : Bool);
begin
 if (fCurSubID = -1) or (fCurSubID = fImpSubRec.ID)  then
 begin
  if not aNeedUndo and CheckValidAttribute(ctSub) then
  begin
   AttrData(ctSub).AddRecord([fCurDocID, fImpSubRec.ID, fImpSubRec.RealFl, fImpSubRec.Name]);
   fCurSubID:=fImpSubRec.ID;
  end;
  L3Free(fImpSubRec.Name);
  l3FillChar(fImpSubRec,SizeOf(fImpSubRec));
 end
 else
  msg2log(rsWrongFormatOfSUB);
end;

function TDBFilter.GetHLID(aCurHLID : Cardinal) : Cardinal;
begin
 if aCurHLID = 0 then
  fAutoGetHLID := True;

 if not fAutoGetHLID then
 begin
  Result := aCurHLID;
  fHLinkCounter := Max(fHLinkCounter, aCurHLID);
 end
 else
 begin
  Inc(fHLinkCounter);
  Result := fHLinkCounter;
  if aCurHLID > Result then
  begin
   Result := aCurHLID;
   fHLinkCounter := aCurHLID;
  end;
  fNeedSaveHLID := True;
 end;
end;

procedure TDBFilter.AddImpHLRec(aNeedUndo : Bool);
begin
 if not fIsAnnoTopic and (fImpHLAddress.Doc <> -1) then
 begin
  if not aNeedUndo and CheckValidAttribute(ctHLink) then
  begin
   if (fImpHLID = 0) then
    fImpHLID := GetHLID(0);

   if fImpHLAddress.Doc = 0 then
    fImpHLAddress.Doc := fCurDocID //  вот этого можно не делать, еcли договориться о поддержке  0 как fCurDocID
   else
    if not fIntFormat then
     ConvToRealID(fImpHLAddress.Doc);

   try
    AttrData(ctHLink).AddRecord([fImpHLID,
                                 fCurDocID,
                                 fImpHLAddress.Doc,
                                 fImpHLAddress.Sub]);
   finally
    Generator.AddIntegerAtom(k2_tiDocID,fImpHLAddress.Doc);
    Generator.AddIntegerAtom(k2_tiSubID,fImpHLAddress.Sub);
   end;
  end;
 end; // not fIsAnnoTopic
 fImpHLAddress.Doc := 0;
 fImpHLAddress.Sub := 0;
end;

function TDBFilter.AddItemToDict(const aChild: Ik2Tag; aDictType : TDLType) : Integer;
 begin
  Result:= 0;
  with aChild do
  begin
   if (aDictType = dlWarnings) or fIntFormat then
    Result := IntA[k2_tiHandle];

   if (aDictType = dlWarnings) then Exit; // у dlWarnings по имени номер не восстанавливаем

   if Result <> 0 then Exit;

   if fDictDecoder.AddHandle(aChild, aDictType) then
    Result := IntA[k2_tiHandle];
  end;
 end;

procedure TDBFilter.AddImpDictRec(const aLeaf: Ik2Tag; aCType : TCacheType);

function GetLogAction(aCType : TCacheType) : TLogActionType;
begin
 case aCType of
  ctClass,
  ctPrefix :
   Result := acClassWork;
  ctKW :
   Result := acKWWork
  else
   Result := acAttrWork;
 end;

end;

var
 I : Integer;
 lHandle : Integer;
 lDictType : TDLType;

begin
 for I := 0 to pred(aLeaf.ChildrenCount) do
 begin
  AttrCType2DictType(aCType, lDictType);
  lHandle := AddItemToDict(aLeaf.Child[I], lDictType);

  if lHandle <> 0 then
  begin
   // добавляем в лист для расчета priority
   case aCType of
    ctSour : f_SourcesList.Add(lHandle);
    ctType : f_TypesList.Add(lHandle);
   end;
   AttrData(aCType).AddRecord([fCurDocID, lHandle, fCurSubID]);
  end; // lHandle <> 0
 end; // for i

 Include(fLogActionSet, GetLogAction(aCType));
end;

procedure TDBFilter.AddImpDateNumRec(const aLeaf: Ik2Tag);
var
 I : Integer;

begin
 if not CheckValidAttribute(ctDateNum) then Exit;

 with aLeaf do
  for I := 0 to pred(ChildrenCount) do
   with Child[I] do
   begin
    {Check}
    if (IntA[k2_tiType] <> Ord(dnMU)) and
     (IntA[k2_tiStart] = 0) and
     (not Attr[k2_tiNumber].IsValid) then
     OutOfDataErr(ctDateNum)
    else
    begin
     AttrData(ctDateNum).AddRecord([fCurDocID,
                                   IntA[k2_tiStart],
                                   Attr[k2_tiNumber].AsObject As Tl3CustomString,
                                   IntA[k2_tiType],
                                   GetIntTag(Attr[k2_tiLinkAddress], k2_tiDocID)
                                   {$ifdef DBver134}
                                   , GetIntTag(Attr[k2_tiLinkAddress], k2_tiSubID)
                                   {$endif}
                                   ]);
     if (IntA[k2_tiStart] <> 0) and (IntA[k2_tiType] = Ord(dnPublish)) and ((fMinDate = 0) or (fMinDate > IntA[k2_tiStart])) then
      fMinDate := IntA[k2_tiStart];

     Include(fLogActionSet, acAttrWork);
    end;
   end;
end;

procedure TDBFilter.AddImpLogRec(const aLeaf: Ik2Tag);
var
 I : Integer;
begin
 with aLeaf do
  for I := 0 to pred(ChildrenCount) do
   with Child[I] do
    if not (IntA[k2_tiType] = Ord(acRevision)) then // acRevision никогда в базу не пишут
     if IntA[k2_tiStart] = 0 then
      msg2log(rsOutOfDataForLogBook)
     else
      AddLogRecPrim(fCurDocID,
                    TLogActionType(IntA[k2_tiType]),
                    GetUserID(Attr[k2_tiUser]),
                    IntA[k2_tiStart],
                    IntA[k2_tiTime]);
end;

procedure TDBFilter.AddLogRecPrim(aDocID : TDocID;
                                  aAction : TLogActionType;
                                  aUser  : TDictID = 0;
                                  aDate  : TStDate = 0;
                                  aTime  : TStTime = BadTime);
var
 lActFlag : Byte;
 lAttrType : TCacheType;
const
 cLogKind : array [False..True] of TCacheType = (ctLog_Doc, ctLog_Anno);
begin
 if not CheckValidAttribute(cLogKind[fIsAnnoTopic]) then Exit;

 if aDate = 0 then
 aDate := CurrentDate;

 if aUser = 0 then
  aUser := MasterUser;

 if aAction in cJurLogActions then
  lActFlag := Byte(acfJuror)
 else
  lActFlag := Byte(acfOrdinal);

 if aTime = BadTime then
  if lActFlag = Byte(acfJuror) then
   aTime := 0
  else
   aTime := SecondOfTheDay(Now);

 if fIsAnnoTopic then
 begin
  if not (aAction in cAnnoLogActions) then Exit;
  lAttrType := ctLog_Anno;
 end
 else
  lAttrType := ctLog_Doc;

 AttrData(lAttrType).AddRecord([aDocID,
                            Ord(aAction),
                            aDate,
                            aTime,
                            lActFlag,
                            PAnsiChar(@GlobalHtServer.CurStationName),
                            aUser]);

end;

procedure TDBFilter.AddImpStageRec(const aLeaf: Ik2Tag);
var
 I : integer;
begin
 with aLeaf do
  for I := 0 to pred(ChildrenCount) do
   with Child[I] do
   begin
    {Check}
    if (IntA[k2_tiType] = Ord(stNone)) or
     (IntA[k2_tiStart] = 0) or
     (GetUserID(Attr[k2_tiUser]) = 0) then
     OutOfDataErr(ctStage)
    else
    begin
     AttrData(ctStage).AddRecord([fCurDocID,
                                  IntA[k2_tiType],
                                  IntA[k2_tiStart],
                                  IntA[k2_tiFinish],
                                  GetUserID(Attr[k2_tiUser])]);
     Include(fLogActionSet, acAttrWork);
    end;
   end;
end;

procedure TDBFilter.AddImpActiveRec(const aLeaf: Ik2Tag);
var
 I : integer;
 lRecID : integer;
begin
 lRecID := 0;
 with aLeaf do
  for I := 0 to pred(ChildrenCount) do
   with Child[I] do
   begin
    {Check}
    (*if (IntA[k2_tiStart] = 0) or
     (IntA[k2_tiFinish] = 0) then
     OutOfDataErr(ctActive)
    else *)
    //if fImpActiveRec.RecID < fActiveMaxID then
    //fImpActiveRec.RecID := fActiveMaxID;
    //fActiveMaxID := Succ(fImpActiveRec.RecID);

     AttrData(ctActive).AddRecord([fCurDocID,
                                  lRecID {fImpActiveRec.RecID},
                                  IntA[k2_tiType],
                                  IfThen(IntA[k2_tiStart] = 0, minActiveDate, IntA[k2_tiStart]),
                                  IfThen(IntA[k2_tiFinish] = 0, maxActiveDate, IntA[k2_tiFinish]),
                                  Attr[k2_tiComment].AsObject As Tl3CustomString]);
     Inc(lRecID);
     Include(fLogActionSet, acAttrWork);
   end;
end;

procedure TDBFilter.AddImpAlarmRec(const aLeaf: Ik2Tag);
var
 I : integer;
 lRecID : integer;
begin
 lRecID := 0;
 with aLeaf do
  for I := 0 to pred(ChildrenCount) do
   with Child[I] do
   begin
    {Check}
    if (IntA[k2_tiStart] = 0) then
     OutOfDataErr(ctAlarm)
    else
     AttrData(ctAlarm).AddRecord([fCurDocID,
                                  lRecID,
                                  IntA[k2_tiStart],
                                  Attr[k2_tiComment].AsObject As Tl3CustomString]);
    Inc(lRecID);
    Include(fLogActionSet, acAttrWork);
   end;
end;

procedure TDBFilter.AddImpCheckRec(const aLeaf: Ik2Tag);
var
 I : integer;
 lRecID : integer;
begin
 lRecID := 0;
 with aLeaf do
  for I := 0 to pred(ChildrenCount) do
   with Child[I] do
   begin
    {Check}
    if (IntA[k2_tiStart] = 0) then
     OutOfDataErr(ctCorrects)
    else
    begin
     AttrData(ctCorrects).AddRecord([fCurDocID,
                                     IntA[k2_tiStart],
                                     IntA[k2_tiSource],
                                     IntA[k2_tiType],
                                     GetUserID(Attr[k2_tiUser]),
                                     Attr[k2_tiComment].AsObject As Tl3CustomString]);
     Inc(lRecID);
     Include(fLogActionSet, acAttrWork);
    end;
   end;
end;

procedure TDBFilter.AddImpPublishRec(const aLeaf: Ik2Tag);
var
 TmpPChar       : PAnsiChar;
 lInt           : Integer;

 lPubID         : LongInt;
 HaveSomeData   : Boolean;
 lCurTblObj     : TPrometTbl;
 l_AlreadyExists: Boolean;

 I : integer;
 lSourceID :  Integer;
 l_Flags: Byte;
begin
 with aLeaf do
  for I := 0 to pred(ChildrenCount) do
   with Child[I] do
   begin
    lCurTblObj := DictServer(fFamily).GroupTbl[dlPublisheds];
    // запись в словарь (или поиск уже имеющегося)
    lCurTblObj.ClearFullRec;

    lSourceID := AddItemToDict(Attr[k2_tiSource], dlCorSources);

    if lSourceID <= 0 then // нет в словаре такого источника, добавлять нельзя
     Continue;
    lCurTblObj.PutToFullRec(piSourFld, lSourceID);

    lInt := IntA[k2_tiStart];
    lCurTblObj.PutToFullRec(piSDateFld, lInt);

    if IntA[k2_tiFinish] = 0 then
    begin
     lInt := IntA[k2_tiStart];
     lCurTblObj.PutToFullRec(piEDateFld, lInt);
    end
    else
    begin
     lInt := IntA[k2_tiFinish];
     lCurTblObj.PutToFullRec(piEDateFld, lInt);
    end;

    TmpPChar := (Attr[k2_tiNumber].AsObject As Tl3CustomString).St;
    lCurTblObj.PutToFullRec(piNumberFld, TmpPChar);
    TmpPChar := (Attr[k2_tiComment].AsObject As Tl3CustomString).St;
    lCurTblObj.PutToFullRec(piCommentFld, TmpPChar);

    if not lCurTblObj.FindByUniqKey(piUniqKeyNum,
                                    (lCurTblObj.FullRecord + lCurTblObj.fldOffset[piSourFld])^,
                                    piIDFld, lPubID) then
     // такой записи  в словаре не оказалось ==> получение нового DictId
    begin
     lPubID := lCurTblObj.GetFreeNum;
     lCurTblObj.PutToFullRec(piIDFld, lPubID);
     lCurTblObj.AddFRec;
    end;

    // запись в "линки"
    if Attr[k2_tiFlags].IsValid then
     l_Flags := Attr[k2_tiFlags].AsLong
    else
     l_Flags:= 0;
    AttrData(ctPublisheds).AddRecord([fCurDocID,
                                      lPubID,
                                      Attr[k2_tiPages].AsObject As Tl3CustomString,
                                      Attr[k2_tiLinkComment].AsObject As Tl3CustomString,
                                      l_Flags]);
   Include(fLogActionSet, acAttrWork);
   end;
end;

procedure TDBFilter.AddDoc2DocLinkRec(const aLeaf: Ik2Tag);
var
 l_RealDocID : TDocID;
 I : integer;
begin
 with aLeaf do
  for I := 0 to pred(ChildrenCount) do
   with Child[I] do
    if (IntA[k2_tiDocID] = 0) then
     OutOfDataErr(ctDoc2DocLink)
    else
    begin
     l_RealDocID := IntA[k2_tiDocID];
     fReNumTbl.GetRNumber(l_RealDocID);

     AttrData(ctDoc2DocLink).AddRecord([fCurDocID,
                                        IntA[k2_tiType],
                                        l_RealDocID]);
    end;
end;

procedure TDBFilter.ClearDataStorage;
begin
 L3Free(fImpDocRec.ShortName);
 L3Free(fImpDocRec.Name);
 l3Free(fImpDocRec.Comment);
 l3FillChar(fImpDocRec,SizeOf(fImpDocRec));

 L3Free(fImpSubRec.Name);
 l3FillChar(fImpSubRec,SizeOf(fImpSubRec));
 fCurSubID:=0;
 fImpHLID:=0;
 fMinDate:=0;
 l3FillChar(fImpHLAddress,SizeOf(fImpHLAddress));
 fCurDocID:=0;

 fFullDocFlag := True;
end;

procedure TDBFilter.BeginDocument(aNewDocID : TDocID);
begin
 if fCurDocID = aNewDocID then Exit;

 fCurDocID := aNewDocID;
 //HLServer.DocID := fCurDocID;
 fImpDocRec.UserType := utNone;
 fHLinkCounter := 0;
 fAutoGetHLID := False;
 fNeedSkipDoc := False;
end;

procedure TDBFilter.NeedSkipCurrDoc;
begin
 fNeedSkipDoc := True;
 fCurDocID := 0;
end;

procedure TDBFilter.DoneDocument;
var
 lCT : TCacheType;
 LA  : TLogActionType;
begin
 if fNeedSkipDoc then Exit;

 if fFullDocFlag and not ExcludeMainRec then
  AddImpDocRec;

 // скинем новые лог-записи в кеш
 if (fLogActionSet <> []) and (SaveMode in [smAttrAdd, smAttrDel]) then
  for LA := low(TLogActionType) to high(TLogActionType) do
   if LA in fLogActionSet then
    AddLogRecPrim(fCurDocID, LA);
 fLogActionSet := [];

 for lCT := Low(TCacheType) to High(TCacheType) do
  if IsValidAttribute(lCT) then
   AttrData(lCT).CloseDoc(fCurDocID);
end;

procedure TDBFilter.SendSkipDocNotify(aID: TDocID; aReason: TSkipDocReason; aUser: LongInt);
var
 l_TmpNum : TDocID;
begin
 if Assigned(fSkipDocNotify) then
 begin
  if not fIntFormat and (aReason <> srNoHandle) then
   l_TmpNum := fReNumTbl.GetExtDocID(aID)
  else
   l_TmpNum := aID;
  fSkipDocNotify(l_TmpNum, aReason, aUser);
 end;
end;

function TDBFilter.ifAddAtomEx(AtomIndex : Long; const Value : Tk2Variant) : boolean;
var
 lValue      : Tk2Variant;
begin
 lValue := Value;

 Result := True;
 if TopType[0].InheritsFrom(k2_idDocument) then {заполнение элементарных полей документа}
  Result := not AddDocumentAtom(AtomIndex, lValue)
 else
  if TopType[0].InheritsFrom(k2_idHyperLink) then {заполнение записи: гипертекстовая ссылка (1)}
  begin
   if (AtomIndex = k2_tiHandle) then
   begin
    fImpHLID := GetHLID(AsInteger(lValue));
    lValue.AsInteger := fImpHLID;

    fNeedSaveHLID := False;
    {if fIntFormat then
    begin
     if (fImpHLID = 0) then
      if (lValue.Kind=k2_vkInteger) then
       fImpHLID:=LongInt(lValue.AsInteger)
      else
       ConvertErrorEx(lValue.Kind)
     else
      msg2log(rsEnotherHandleOfSub);
    end
    else
     Result := False;
   }
   end
  end
  else
   if TopType[1].InheritsFrom(k2_idHyperLink) and  {заполнение записи: гипертекстовая ссылка (2)}
      TopType[0].InheritsFrom(k2_idAddress) then
   begin
    if (AtomIndex = k2_tiDocID) then
    begin
     fImpHLAddress.Doc := TDocID(AsInteger(lValue));
     Result := False;
    end
    else
     if (AtomIndex = k2_tiSubID) then
     begin
      fImpHLAddress.Sub := TSubID(AsInteger(lValue));
      Result := False;
     end;
   end
   else
    if TopType[0].InheritsFrom(k2_idSub) and  {заполнение записи: точка входа (Sub)}
       not TopType[0].InheritsFrom(k2_idDocumentSub) then
    begin
     if (AtomIndex = k2_tiHandle) then
     begin
      fImpSubRec.ID := TSubID(AsInteger(lValue));
      if TopType[0].InheritsFrom(k2_idBlock) then
       fCurSubID := fImpSubRec.ID;
     end
     else
      if (AtomIndex = k2_tiShortName) then
      begin
       l3Set(fImpSubRec.Name, AsString(lValue));
       //fImpSubRec.Name.CodePage:=cp_ANSI;
       fImpSubRec.RealFl := True;
      end
      else
       if (AtomIndex = k2_tiName) then
       begin
        l3Set(fImpSubRec.Name, AsString(lValue));
        //fImpSubRec.Name.CodePage:=cp_ANSI;
        fImpSubRec.RealFl := False;
       end
    end;
end;

procedure TDBFilter.ifStartChild(TypeID : Long);
var
 l_TT : Tk2Type;
 l_TO : Tk2Base;
begin
 if TopType[0].InheritsFrom(k2_idDocument) then
 begin
  fIsAnnoTopic := TopType[0].InheritsFrom(k2_idAnnoTopic);
  if TopType[0].InheritsFrom(k2_idDictEntry) then
  begin
   f_DictEntry:= True;
   fImpDocRec.DocType:= Ord(dtDictEntry);
  end
  else
   f_DictEntry:= False;
  f_TypesList.Clear;
  f_SourcesList.Clear;
 end; // TopType[0].InheritsFrom(k2_idDocument)

 if not fNeedSkipDoc then
  begin
   l_TT := TopType[0];
   if (l_TT <> nil) then
   begin
    if l_TT.InheritsFrom(k2_idSub, [k2_idDocumentSub, k2_idDocument] {- exclude}) then
    begin
     if (fCurDocID > 0) then
     begin
      if (fImpSubRec.ID > 0) then
       AddImpSubRec(False)
      else
       if fCurSubID = -1 then
        msg2log(rsSubHandleNotAssign);
     end
     else
      msg2log(rsAddSubbutDocHandleNotAssign);
     fCurSubID:=-1;
    end;//l_TT.InheritsFrom
   end;//l_TT <> nil
  end;
end;

procedure TDBFilter.ifStartTag(TagID : Long);
begin
 if fFullDocFlag then
  begin
   if (TopType[1].InheritsFrom(k2_idSub) and
      not TopType[1].InheritsFrom(k2_idDocumentSub) and
      not TopType[1].InheritsFrom(k2_idDocument)) and
      ((TagID = k2_tiClasses) or
       (TagID = k2_tiPrefix) or
       (TagID = k2_tiTypes) or
       (TagID = k2_tiKeyWords)) then
    if (fCurDocID > 0) then
     begin

      if (fImpSubRec.ID > 0) then
       fCurSubID := fImpSubRec.ID
       //AddImpSubRec(False)
      else
       if fCurSubID <= 0 then
        msg2log(rsAddSubAttrButSubHandleNotAssign);
     end
    else
     msg2log(rsAddSUBbutDocHandleNotAssign);
  end;
end;

procedure TDBFilter.DoCloseStructure(aNeedUndo : Bool);
begin
 if TopType[0].InheritsFrom(k2_idDocument) then
 begin
  if (fCurDocID > 0) then
   DoneDocument
  else
   if not fNeedSkipDoc then
   begin
    msg2log(rsDocHandleNotAssign);
    SendSkipDocNotify(fCurDocID,srNoHandle);
   end;
  ClearDataStorage;
  fNeedSkipDoc := false;
  fIsAnnoTopic := False;
 end
 else
  if not FiltredFlag then
   if (fCurDocID > 0) then
   begin
    if TopType[0].InheritsFrom(k2_idSub) and
       not TopType[0].InheritsFrom(k2_idDocumentSub) and
       not TopType[0].InheritsFrom(k2_idDocument) then
    begin
     if (fImpSubRec.ID > 0) then
      AddImpSubRec(aNeedUndo)
     else
      if fCurSubID = -1 then
       msg2log(rsSubHandleNotAssign);
     fCurSubID := 0;
    end
    else
     if TopType[0].InheritsFrom(k2_idHyperLink) then
     begin
      if (fImpHLID <> 0) then
       begin
        if fNeedSaveHLID then
         Generator.AddIntegerAtom(k2_tiHandle,fImpHLID);
        fImpHLID := 0;
        fNeedSaveHLID := False;
       end;
     end
     else
      if TopType[0].InheritsFrom(k2_idAddress) and
         TopType[1].InheritsFrom(k2_idHyperLink) then
       AddImpHLRec(aNeedUndo);
   end
   else
    if not fNeedSkipDoc then
     msg2log(rsAddAttrbutDocHandleNotAssign);
end;

{End Protected methods}
{Public methods}

procedure TDBFilter.OpenStream;
begin
  Inherited;
  StartCachingData;
end;

procedure TDBFilter.StartCachingData;

 procedure InitExclusiveMode;
 var
  l_Dict : TDLType;
 begin
  if not IsBaseLocked then Exit;

  GlobalHtServer.FreeTbl[fFamily].ExclusiveUse := True;
  DictServer(fFamily).PO_Begin;

  //if not fIntFormat then
  // fReNumTbl.UpdateInterval := StandartUpdate;

  if Assigned(f_OnUpdDict) then
  begin
   for l_Dict := Low(TDLType) to High(TDLType) do
    if (l_Dict in sUsualDictsForImpEx) then
    begin
     DictServer(fFamily).DictTbl[l_Dict].StartCaching;
     DictServer(fFamily).DictTbl[l_Dict].IgnoreDuplicates := True;
    end;
  end;
 end;

begin
 inc(fCachingDataCnt);
 if fCachingDataCnt > 1 then Exit;

 inherited;
 if (fFamily = 0) then {Family not Assigned}
  begin
   msg2log(rsFamilyNotAssigned);
   raise EHtErrors.CreateInt(ecNotAssigned);
  end;

 f_MaxDictID:= Low(f_MaxDictID);
 f_MinDictID:= High(f_MinDictID);

 if not Assigned(fReNumTbl) then
  fReNumTbl := LinkServer(fFamily).Renum;

 InitCacheTblDataArr;
 InitLists;
 InitFreeNumsCaches;
 InitExclusiveMode;

 //ClearDataStorage;
 GlobalHtServer.BigBrother.LogImport(fFamily);
end;

procedure TDBFilter.CloseStream(aNeedUndo : Boolean);
begin
 Inherited;
 DoneCachingData;
end;

procedure TDBFilter.DoneCachingData;

 procedure DoneExclusiveMode;
 var
  l_Dict : TDLType;
 begin
  if not IsBaseLocked then Exit;
  if Assigned(f_OnUpdDict) then
  begin
   for l_Dict := Low(TDLType) to High(TDLType) do
    if (l_Dict in sUsualDictsForImpEx) then
    begin
     DictServer(fFamily).DictTbl[l_Dict].StopCaching;
     DictServer(fFamily).DictTbl[l_Dict].IgnoreDuplicates := False;
    end;
  end;

  DictServer(fFamily).PO_End;
  GlobalHtServer.FreeTbl[fFamily].ExclusiveUse := False;
 end;

 procedure SaveDicts;
 var
  l_Dict : TDLType;
 begin
  if not Assigned(f_OnUpdDict) then Exit;
  for l_Dict := Low(TDLType) to High(TDLType) do
   if (l_Dict in sUsualDictsForImpEx) then
   begin
    DictServer(fFamily).SaveDict(l_Dict);
    if FinalTblUpdate then
     DictServer(fFamily).DictTbl[l_Dict].UpdateTbl;
   end;
 end;

var
 l_AnnoSAB,
 l_OldAnnoSAB,
 l_NewAnnoSAB: SAB;
begin
 Dec(fCachingDataCnt);
 if fCachingDataCnt <> 0 then Exit;

 try
  try
   DoneCacheTblDataArr;
  finally
   try
    DoneDelSubList;
   finally
    try
     DoneLists;
    finally
     try
      DoneFreeNumsCaches;
     finally
      try
      SaveDicts;
      finally
       try
        DoneExclusiveMode;
       finally
        fMasterUser:=0;
       end;//try..finally
      end;//try..finally
     end;//try..finally
    end;//try..finally
   end;//try..finally
  end;//try..finally
 finally
  inherited;
 end;//try..finally
end;

function  TDBFilter.NeedStartBuffering(aID : Integer): Boolean;
begin
 Result := aID in [k2_tiNumANDDates,
                   k2_tiSources, k2_tiTypes, k2_tiPrefix, k2_tiClasses, k2_tiKeyWords, k2_tiGroups,
                   k2_tiWarnings, k2_tiPublishedIn, k2_tiTerritory, k2_tiNorm,
                   k2_tiAccGroups, k2_tiAnnoClasses, k2_tiServiceInfo,
                   k2_tiChecks, k2_tiAlarms, k2_tiActiveIntervals, k2_tiStages, k2_tiLogRecords, k2_tiSysLogRecords,
                   k2_tiVersions];

 (*cAttr2k2Tag : array[TdtAttribute] of Longint =
                    (0{atNothing},
                     0{atShortName}, 0{atFullName}, 0{atPriceLevel}, 0{atNotTM}, 0{atPriority}, 0{atSortDate},
                     0{atRelated}, {k2_tiInternalVerLink}k2_tiExternalVerLink{atVerLink}, 0{atUrgency}, 0{atComment},
                     k2_tiNumANDDates,
                     k2_tiSources, k2_tiTypes, k2_tiPrefix, k2_tiClasses, k2_tiKeyWords, k2_tiGroups,
                     k2_tiWarnings, k2_tiPublishedIn,k2_tiTerritory, k2_tiNorm,
                     k2_tiAccGroups, k2_tiAnnoClasses, k2_tiServiceInfo,
                     k2_tiChecks, k2_tiAlarms, k2_tiActiveIntervals, k2_tiStages, k2_tiLogRecords, k2_tiSysLogRecords,
                     k2_tiLinkedDocuments {atDoc2DocLink},
                     0{atHLink}, 0{atSub},
                     0{atRenum},
                     0{atVersions}
                     );

 *)
end;


function TDBFilter.TagID2CacheType(aTagId: Integer) : TCacheType;
begin
 case aTagId of
  k2_tiTypes           : Result := ctType;
  k2_tiSources         : Result := ctSour;
  k2_tiClasses         : Result := ctClass;
  k2_tiKeyWords        : Result := ctKW;
  k2_tiPrefix          : Result := ctPrefix;
  k2_tiAnnoClasses     : Result := ctAnnoClasses;
  k2_tiTerritory       : Result := ctTerritory;
  k2_tiGroups          : Result := ctBase;
  k2_tiAccGroups       : Result := ctAccGroup;
  k2_tiNorm            : Result := ctNorm;
  k2_tiWarnings        : Result := ctWarning;
  k2_tiPublishedIn     : Result := ctPublisheds;
  k2_tiServiceInfo     : Result := ctServiceInfo;
  k2_tiNumANDDates     : Result := ctDateNum;
  k2_tiSysLogRecords,
  k2_tiLogRecords      : if fIsAnnoTopic then Result := ctLog_Anno else Result := ctLog_Doc;
  k2_tiStages          : Result := ctStage;
  k2_tiActiveIntervals : Result := ctActive;
  k2_tiChecks          : Result := ctCorrects;
  k2_tiAlarms          : Result := ctAlarm;
  k2_tiLinkedDocuments : Result := ctDoc2DocLink
  else
   Assert(false, 'TDBFilter.TagID2CacheType: invalid tag');
 end;
 {ctHLink, ctSub,
  }
end;

function  TDBFilter.NeedFlushBuffer(const aLeaf: Ik2Tag; aTagId: Integer): Boolean;
var
 I : Integer;
 lCType : TCacheType;
begin
 Result := False;

 if not fFullDocFlag then Exit;
 if aTagId = k2_tiVersions then Exit; // не пишем в базу

 lCType := TagID2CacheType(aTagId);
 if {aNeedUndo and} not CheckValidAttribute(lCType) then
  Exit;

 case aTagId of
  k2_tiNumANDDates :
   AddImpDateNumRec(aLeaf);

  k2_tiTypes,
  k2_tiSources,
  k2_tiClasses,
  k2_tiKeyWords,
  k2_tiPrefix,
  k2_tiAnnoClasses,
  k2_tiTerritory,
  k2_tiGroups,
  k2_tiAccGroups,
  k2_tiNorm,
  k2_tiWarnings,
  k2_tiServiceInfo :
   AddImpDictRec(aLeaf, lCType);

  k2_tiPublishedIn :
   AddImpPublishRec(aLeaf);

  k2_tiSysLogRecords, 
  k2_tiLogRecords :
   AddImpLogRec(aLeaf);

  k2_tiStages :
   AddImpStageRec(aLeaf);

  k2_tiActiveIntervals :
   AddImpActiveRec(aLeaf);

  k2_tiChecks :
   AddImpCheckRec(aLeaf);

  k2_tiAlarms :
   AddImpAlarmRec(aLeaf);

  k2_tiLinkedDocuments :
   AddDoc2DocLinkRec(aLeaf);
 end;
end;

procedure TDBFilter.AddAtomEx(AtomIndex : Long; const Value : Tk2Variant);
begin
 if fDoNothing or (not FiltredFlag and ifAddAtomEx(AtomIndex, Value)) then
  inherited;
end;

procedure TDBFilter.StartChild(TypeID : Long);
begin
 inherited;
 if not (fDoNothing or FiltredFlag) then
  ifStartChild(TypeID);
end;

procedure TDBFilter.StartTag(TagID : Long);
begin
 inherited;
 if not (fDoNothing or FiltredFlag) then
  ifStartTag(TagID);
end;

procedure TDBFilter.CloseStructure(aNeedUndo : Boolean);
begin
 if not (fDoNothing{ or FiltredFlag}) then
  DoCloseStructure(aNeedUndo);
 inherited;
end;

procedure LoadEqualClasses(aFamily : TFamilyID; aFileName : ShortString; aLevelSlash : PAnsiChar;
                           withDropData : boolean);
var
 CurFile  : TevDOSFiler;
 ClTree   : TDictRootNode;
 TmpStr   : Tl3String;
 TmpNode  : Il3Node;
 FirstID  : Longint;
 SecondID : Longint;
 CurEQTbl : TEqualItemsTbl;
begin
 FirstID:=0;
 SecondID:=0;
 CurFile:=TevDOSFiler.Create(Nil);
 CurFile.FileName:=aFileName;
 try
  CurFile.Mode:=l3_fmRead;
  CurFile.Open;
  try
   CurFile.AnalizeCodePage;
   ClTree:=DictServer(aFamily).DictRootNode[dlClasses].Use;
   try
    CurEQTbl:=DictServer(aFamily).DictEqualObj[dlClasses];
    if withDropData then
     CurEQTbl.DropTblData;
    CurEQTbl.StartCaching;
    CurEQTbl.IgnoreDuplicates := True;
    try
     while not CurFile.EOF do
      begin
       TmpStr := Tl3String.Make(CurFile.ReadLn);
       try
        if TmpStr.Len = 0 then Continue;
        TmpStr.CodePage := CP_ACP;
        TmpNode := l3SearchByPath(ClTree, TmpStr.AsWStr, aLevelSlash);
       finally
        l3Free(TmpStr);
       end;
       if TmpNode<>Nil then
        if FirstID=0 then
         FirstID:=TDictID((TmpNode as IDictItem).Handle)
        else
         SecondID:=TDictID((TmpNode as IDictItem).Handle);

       if SecondID<>0 then
        begin
         CurEQTbl.AddEqual(FirstID,SecondID);
         FirstID:=0;
         SecondID:=0;
        end;
      end;
    finally
     CurEQTbl.StopCaching;
     CurEQTbl.IgnoreDuplicates := False;
     CurEQTbl.UpdateTbl;
    end;
   finally
    L3Free(ClTree);
   end;
  finally
   CurFile.Close;
  end;
 finally
  L3Free(CurFile);
 end;
end;

procedure TDBFilter.InitFreeNumsCaches;
const
 c_CacheSize = 100;
begin
 DictServer(fFamily).GroupTbl[dlCorrects].FreeNumsCacheSize := c_CacheSize;
 DictServer(fFamily).GroupTbl[dlDateNums].FreeNumsCacheSize := c_CacheSize;
 DictServer(fFamily).GroupTbl[dlPublisheds].FreeNumsCacheSize := c_CacheSize;

 DictServer(fFamily).DictTbl[dlSources].FreeNumsCacheSize := c_CacheSize;
 DictServer(fFamily).DictTbl[dlTypes].FreeNumsCacheSize := c_CacheSize;
 DictServer(fFamily).DictTbl[dlClasses].FreeNumsCacheSize := c_CacheSize;
 DictServer(fFamily).DictTbl[dlAnnoClasses].FreeNumsCacheSize := c_CacheSize;
 DictServer(fFamily).DictTbl[dlKeyWords].FreeNumsCacheSize := c_CacheSize;
 DictServer(fFamily).DictTbl[dlBases].FreeNumsCacheSize := c_CacheSize;
 DictServer(fFamily).DictTbl[dlWarnings].FreeNumsCacheSize := c_CacheSize;
 DictServer(fFamily).DictTbl[dlCorSources].FreeNumsCacheSize := c_CacheSize;
 DictServer(fFamily).DictTbl[dlPrefixes].FreeNumsCacheSize := c_CacheSize;
 DictServer(fFamily).DictTbl[dlTerritories].FreeNumsCacheSize := c_CacheSize;
 DictServer(fFamily).DictTbl[dlNorms].FreeNumsCacheSize := c_CacheSize;
 DictServer(fFamily).DictTbl[dlAccGroups].FreeNumsCacheSize := c_CacheSize;
end;

procedure TDBFilter.DoneFreeNumsCaches;
begin
 DictServer(fFamily).GroupTbl[dlCorrects].ClearFreeNumsCache;
 DictServer(fFamily).GroupTbl[dlDateNums].ClearFreeNumsCache;
 DictServer(fFamily).GroupTbl[dlPublisheds].ClearFreeNumsCache;

 DictServer(fFamily).DictTbl[dlSources].ClearFreeNumsCache;
 DictServer(fFamily).DictTbl[dlTypes].ClearFreeNumsCache;
 DictServer(fFamily).DictTbl[dlClasses].ClearFreeNumsCache;
 DictServer(fFamily).DictTbl[dlAnnoClasses].ClearFreeNumsCache;
 DictServer(fFamily).DictTbl[dlKeyWords].ClearFreeNumsCache;
 DictServer(fFamily).DictTbl[dlBases].ClearFreeNumsCache;
 DictServer(fFamily).DictTbl[dlWarnings].ClearFreeNumsCache;
 DictServer(fFamily).DictTbl[dlCorSources].ClearFreeNumsCache;
 DictServer(fFamily).DictTbl[dlPrefixes].ClearFreeNumsCache;
 DictServer(fFamily).DictTbl[dlTerritories].ClearFreeNumsCache;
 DictServer(fFamily).DictTbl[dlNorms].ClearFreeNumsCache;
 DictServer(fFamily).DictTbl[dlAccGroups].ClearFreeNumsCache;
end;

function TDBFilter.AddDocumentAtom(AtomIndex: Long; const Value: Tk2Variant): Boolean;
begin
  Result := False;
  if (AtomIndex = k2_tiInternalHandle) then
  begin
   if fIntFormat then
   begin
    if (fCurDocID = 0) then
     CurDocID := TDocID(AsInteger(Value))
    {else
     msg2log(rsInternalHandlePass)};
    Result := CurDocID = 0;
   end
   else
   begin
//         msg2log('Перенумерация задана. InternalHandle пропущен!');
    Result:=True;
   end;
  end
  else
  if (AtomIndex = k2_tiExternalHandle) then
  begin
   TranslateDocExternalHandle(Value);
   Result:=True;
  end
  else
  if (AtomIndex = k2_tiType) then
   begin
    if not f_DictEntry then
    begin
     fImpDocRec.DocType := Byte(AsInteger(Value));
     if fImpDocRec.DocType = Byte(dtRelText) then
     begin
      fFullDocFlag := False;
      if Assigned(fImpDocRec.ShortName) then
       Generator.AddStringAtom(k2_tiShortName, fImpDocRec.ShortName);
     end;
    end;
    Result := False;
   end
  else
  if fFullDocFlag and (AtomIndex = k2_tiShortName) then
  begin
   if fIsAnnoTopic then
    Result := False
   else
   begin
    l3Set(fImpDocRec.ShortName, AsString(Value));
    Result := True;
   end;
  end

  else
  if fFullDocFlag and (AtomIndex = k2_tiName) then
  begin
   if fIsAnnoTopic then
    Result := False
   else
   begin
    l3Set(fImpDocRec.Name, AsString(Value));
    Result := True;
   end
  end
   else
   if fFullDocFlag and (AtomIndex = k2_tiUserType) then
    begin
     fImpDocRec.UserType := TUserType(AsInteger(Value));
     Result := False;
    end

   else
   if fFullDocFlag and (AtomIndex = k2_tiPriceLevel) then
   begin
    fImpDocRec.Status := Word(AsInteger(Value));
    Result:=True;
   end

   else
   if fFullDocFlag and (AtomIndex = k2_tiSortDate) then
   begin
    fImpDocRec.SortDate := TStDate(AsInteger(Value));
    Result := True;
   end

   else
   if fFullDocFlag and (AtomIndex = k2_tiPriority) then
   begin
    fImpDocRec.Priority := Word(AsInteger(Value));
    Result := True;
   end

   else
   if fFullDocFlag and (AtomIndex = k2_tiUrgency) then
   begin
    fImpDocRec.Urgency := Byte(AsInteger(Value));
    Result := True;
   end

   else
   if fFullDocFlag and (AtomIndex = k2_tiNameComment) then
   begin
    l3Set(fImpDocRec.Comment, AsString(Value));
    Result := True;
   end

   else
   if fFullDocFlag and (AtomIndex = k2_tiRelInternalHandle) and fIntFormat then
   begin
    fImpDocRec.RelHandle := TDocID(AsInteger(Value));
    Result := True;
   end

   else
   if fFullDocFlag and (AtomIndex = k2_tiRelExternalHandle) then
   begin
    Result := True;
    if (fImpDocRec.RelHandle = 0) then
    begin
    fImpDocRec.RelHandle := TDocID(AsInteger(Value));
    if not fIntFormat then
     ConvToRealID(fImpDocRec.RelHandle);
    end
   end

   else
   if fFullDocFlag and (AtomIndex = k2_tiInternalVerLink) and fIntFormat then
   begin
    if fIntFormat then
    begin
     fImpDocRec.VerLink := TDocID(AsInteger(Value));
     fImpDocRec.rIsExtVerLink := false;
    end;
    Result := True;
   end

   else
   if fFullDocFlag and (AtomIndex = k2_tiExternalVerLink) then
   begin
    if (fImpDocRec.VerLink = 0) then
    begin
     fImpDocRec.VerLink := TDocID(AsInteger(Value));
     fImpDocRec.rIsExtVerLink := True;
    end;
    Result := True;
   end

   else
   if fFullDocFlag and (AtomIndex = k2_tiHasAnno) then
   begin
    fImpDocRec.rHasAnno := Byte(AsInteger(Value));
    Result := True;
   end;
end;

procedure TDBFilter.TranslateDocExternalHandle(const Value: Tk2Variant);
var
 l_TmpID : Longint;
begin
  l_TmpID := 0;
  l_TmpID := TDocID(AsInteger(Value));
  if f_DictEntry then
  begin
   f_MinDictID:= Min(f_MinDictID, l_TmpID);
   f_MaxDictID:= Max(f_MaxDictID, l_TmpID);
  // GlobalHtServer.FreeTbl[fFamily].CheckNumber(NameDictExternalNumber, TmpID);
  end;
  if not fIntFormat then
  begin
   if (fCurDocID = 0) then
   begin
    ConvToRealID(l_TmpID);
    CurDocID := l_TmpID;
    Generator.AddIntegerAtom(k2_tiInternalHandle, CurDocID);
   end
   else
    msg2log(rsInternalHandlePass);
  end
  else
  begin
   if (fCurDocID <> 0) then
    try
     fReNumTbl.PureUpdateImportNumber(fCurDocID, l_TmpID, True);
    except
     msg2log(rsAddExternalHandleError);
    end
   else
    msg2log(rsExternalHandlePass);
  end;
end;

procedure TDBFilter.FlushRenumList;
begin
 if fRenumList = nil then exit;
 with fRenumList do
 if Count > 0 then
  fReNumTbl.Table.AddRecs(ItemSlot(0), Count);
end;

function TDBFilter.IsBaseLocked : Boolean;
begin
 Result := False;
end;

procedure TDBFilter.ConvToRealID(var aDocID : TDocID);
var
 lIndex  : Integer;
 lIndexExists : Integer;
 lRenumRec : record
  rIntNum : TDocID;
  rExtNum : TDocID;
 end;

 procedure AddToRenumListExists(anIndex: Integer; var lRRec);
 begin
  if (fRenumListExists = nil) then
  begin
   fRenumListExists := Tl3FieldSortRecList.Create(8,
                                                 [SizeOf(TDocID), SizeOf(TDocID)], // два поля по SizeOf(TDocID) байт
                                                 [2]     // сортировка по второму полю (внешний номер)
                                                 );
   fRenumListExists.Capacity := 64*1024;
   fRenumListExists.Sorted := True;
  end;

  fRenumListExists.Insert(anIndex, lRRec);
 end;

begin
 lRenumRec.rExtNum := aDocID;
 lIndex := 0;
 lIndexExists := 0;
 // если есть в кеше существующих, возмем оттуда
 if (fRenumListExists <> nil) and fRenumListExists.Find(lRenumRec, lIndexExists) then
   aDocID := PDocID(fRenumListExists.ItemSlot(lIndexExists))^ //возмем первое поле
 else
  if not ExclusiveMode then
  begin
   fReNumTbl.GetRNumber(aDocID); // добавим в таблицу
   lRenumRec.rIntNum := aDocID;
   AddToRenumListExists(lIndexExists, lRenumRec); // и запишем в кеш существующих
  end
  else
  begin
   // если есть в кеше новых, возмем оттуда
   if fRenumList.Find(lRenumRec, lIndex) then
    aDocID := PDocID(fRenumList.ItemSlot(lIndex))^ //возмем первое поле
   else
   begin
    // поищем в таблице Renum
    aDocID := fReNumTbl.ConvertToRealNumber(lRenumRec.rExtNum);
    if aDocID < 0 then // не нашли
    begin
     // возмем свободный номер
     lRenumRec.rIntNum := DocumentServer(fFamily).FileTbl.GetFreeNum;

     // и добавим в лист новых
     fRenumList.Insert(lIndex, lRenumRec);
     aDocID := lRenumRec.rIntNum;
    end
    else //нашли в таблице Renum
    begin
     lRenumRec.rIntNum := aDocID;
     AddToRenumListExists(lIndexExists, lRenumRec); // и запишем в кеш существующих
    end;
   end;
  end;
end;

{TImportFilter}
constructor TImportFilter.Create(aOwner : Tk2TagGeneratorOwner);
begin
 inherited;
 //fFullDocFlag := True; // в inherited перенес
 {$IfDef ImportTest_K455105818}
  f_DocPass_ImportTest := 0;
 {$EndIf ImportTest_K455105818}
end;

procedure TImportFilter.StartCachingData;
begin
 if ExclusiveMode then
  SetLockBase(True);
 inherited;

 fLckHandleList := Tl3LongintList.MakeSorted;
 fLckDocIDList  := Tl3LongintList.MakeSorted;
end;

procedure TImportFilter.DoneCachingData;
begin
 inherited;
 FreeLockedDocs;
 SetLockBase(False);

 l3Free(fLckHandleList);
 l3Free(fLckDocIDList);
end;

procedure TImportFilter.BeginDocument(aNewDocID : TDocID);
var
 tmpIndex   : LongInt;
 lIsRelated : Boolean;
 lLockID     : TDocID;
 tmpStation : TStationNameArray;
 tmpUserID  : TUserIDArray;
 I : Integer;

 lLockHandle    : TJLHandle;
begin
 if aNewDocID <= 0 then
  aNewDocID := 0;

 if fCurDocID = aNewDocID then
  Exit;

 inherited BeginDocument(aNewDocID);

 if aNewDocID = 0 then
  lLockHandle := -1
 else
 begin
  if fCheckDocs and DocumentServer(fFamily).CheckDoc(aNewDocID, True, lIsRelated) then
   Case GetSameDocReact(aNewDocID) of
   sdrIgnore :
    begin
     msg2log(rsDocIDDoubling);
     SendSkipDocNotify(aNewDocID, srAlreadyExists);
     NeedSkipCurrDoc;
     exit;
    end;

   sdrDelete :
    begin
     try
      if CheckDeleteConditions(aNewDocID, lIsRelated, lLockID) then
      begin
       if not IsBaseLocked and (lLockID <> 0) and not fLckDocIDList.FindData(lLockID, tmpIndex) then
       begin
        try
         {$IfDef ImportTest_K455105818}
         Inc(f_DocPass_ImportTest);
         If f_DocPass_ImportTest > 1 then
          lLockHandle := -1 // делаем вид, что заломить не удалось
         else
        {$EndIf ImportTest_K455105818}
         lLockHandle := LockServer.FullLockDoc(fFamily, lLockID);
        except
         on E: Exception do
          if E is EHtErrors then
          begin
           case (E as EHtErrors).ErrorValue of
            ecAccessDenied:
             SendSkipDocNotify(aNewDocID, srAccessDenied);
            else
             SendSkipDocNotify(aNewDocID, srUnknown);
           end;
           NeedSkipCurrDoc;
           exit;
          end
          else
          begin
           msg2log(rsErrLockDoc + E.Message);
           raise;
          end;
        end; // try-except

        if lLockHandle = -1 then
        begin
         msg2log(rsDocIsBusy);
         LockServer.WhoLockDoc(fFamily, lLockID, tmpStation, tmpUserID);
         for I := Low(tmpUserID) to High(tmpUserID) do
          SendSkipDocNotify(aNewDocID, srBusy, tmpUserID[I]);
         NeedSkipCurrDoc;
         exit;
        end
        else
        begin
         fLckDocIDList.Add(lLockID);       // add to lock Documents list
         fLckHandleList.Add(lLockHandle); // add to lock Handles list
        end;
       end; // if (lLockID <> 0) and not fLckDocIDList.Find(lLockID, tmpIndex) then
      end
      else //if CheckDeleteConditions ...
      begin
       msg2log(rsDocNotValidDeleteCondition);
       SendSkipDocNotify(aNewDocID, srCantBeDeleted);
       NeedSkipCurrDoc;
       exit;
      end;
      if AddNewToLog then
       if fIsAnnoTopic then
        AddLogRecPrim(aNewDocID, AddNewAnnoAs)
       else
        AddLogRecPrim(aNewDocID, AddNewAs);
     except
      msg2log(rsDocIsBusy);
      SendSkipDocNotify(aNewDocID, srUnknown);
      NeedSkipCurrDoc;
      exit;
     end;
    end;
  end // Case ...
  else //if fCheckDocs ...
  begin
   if AddNewToLog then
    if fIsAnnoTopic then
     AddLogRecPrim(aNewDocID, AddNewAnnoAs)
    else
     AddLogRecPrim(aNewDocID, AddNewAs);
  end;

  if not IsBaseLocked and (lLockHandle = -1) then
  begin
   if not fLckDocIDList.FindData(aNewDocID, tmpIndex) then
   begin
    lLockHandle:=LockServer.FullLockDoc(fFamily, aNewDocID);
    if lLockHandle = -1 then
     begin
      msg2log(rsDocIsBusy);
      LockServer.WhoLockDoc(fFamily, lLockID, tmpStation, tmpUserID);
      for I := Low(tmpUserID) to High(tmpUserID) do
       SendSkipDocNotify(aNewDocID, srBusy, tmpUserID[I]);
      NeedSkipCurrDoc;
      exit;
     end
    else
     begin
      fLckDocIDList.Add(aNewDocID);     // add to lock Documents list
      fLckHandleList.Add(lLockHandle); // add to lock Handles list
     end;
   end;
  end;

  if fIntFormat and fCheckDocs then
   GlobalHtServer.FreeTbl[fFamily].CheckNumber(TableName(fFamily, Ord(ftFile)), aNewDocID);
 end;
end;

function TImportFilter.IsBaseLocked : Boolean;
begin
 Result := fIsBaseLock;
end;

procedure TImportFilter.SetLockBase(aValue : Boolean);
begin
 if aValue then
 begin
  if not IsBaseLocked then
   fIsBaseLock := LockServer.LockFamily(fFamily);
 end
 else
 begin
  if IsBaseLocked then
   LockServer.UnLockFamily(fFamily);
  fIsBaseLock := false;
 end;
end;

function TImportFilter.GetSameDocReact(CurDoc : TDocID) : TSameDocReact;
begin
 if Assigned(fSDR_UserFunc) then
  Result := fSDR_UserFunc(CurDoc)
 else
  Result := SameDocumentReaction;
end;

function TImportFilter.CheckDeleteConditions(CurDoc : TDocID; RelatedFlag : Boolean; var LockID : TDocID) : Boolean;
var
 l_DC: TDeleteConditionSet;
begin
 Result := True;

 if RelatedFlag then
  LockID := DocumentServer(fFamily).FileTbl.GetDocIdOnRelated(CurDoc)
 else
  LockID := CurDoc;

 if LockID = 0 then Exit;

 if Assigned(f_GetDeleteCondition) then
  l_DC := f_GetDeleteCondition({CurDoc}LockID)
 else
  l_DC := fDelConditions;

 if (l_DC = []) or (dcAny in l_DC) then
  exit;

 if fIsAnnoTopic then
 begin
  if (dcIfNotHasAnno in l_DC) then
   Result := not DocumentServer(fFamily).FileTbl.GetHasAnno(LockID);
 end
 else
 begin
  if Result and (dcIfNotModify in l_DC) then
   Result:=Result and not fLogBook.IsDocModified(LockID);
  if Result and (dcIfNotVIncluded in l_DC) then
   Result:=Result and not fLogBook.IsDocHadAction(LockID,acIncluded);
 end;
end;

procedure TImportFilter.FreeLockedDocs;
var
 I : LongInt;
begin
 if not Assigned(fLckHandleList) or
    (fLckHandleList.Count = 0) then
  exit;

 for I:=0 to fLckHandleList.Count - 1 do
  LockServer.UnLockDoc(fFamily,TJLHandle(fLckHandleList.Items[I]));

 fLckHandleList.Clear;
end;

procedure TImportFilter.ClearBase;
begin
 if fFamily = 0 then {Family not Assigned}
 begin
  msg2log(rsFamilyNotAssigned);
  raise EHtErrors.CreateInt(ecNotFamilyID);
 end;

 GlobalHTServer.ClearFamilyData(fFamily);
 fCheckDocs := False;
end;

constructor TDictItemDecoder.Create(aFamily : TFamilyID);
var
 l_Dict : TDLType;
begin
 Inherited Create;
 fFamily := aFamily;
 fBasesList:=Tl3StringDataList.CreateSize(DictServer(aFamily).DictTbl[dlBases].IDSize);
 fBasesList.Sorted:=True;
 DictServer(fFamily).DictTbl[dlBases].NameFld:=dtShNameFld;
 DictServer(fFamily).DictTbl[dlBases].GetDictList(fBasesList,True);
 DictServer(fFamily).DictTbl[dlBases].NameFld:=dtNameRFld;
 fBasesList.NeedAllocStr:=True;

 fWarningsList:=Tl3StringDataList.CreateSize(DictServer(fFamily).DictTbl[dlWarnings].IDSize);
 fWarningsList.Sorted:=True;
 DictServer(fFamily).DictTbl[dlWarnings].GetDictList(fWarningsList,True);
 fWarningsList.NeedAllocStr:=True;

 fNormsList:=Tl3StringDataList.CreateSize(DictServer(fFamily).DictTbl[dlNorms].IDSize);
 fNormsList.Sorted:=True;
 DictServer(fFamily).DictTbl[dlNorms].GetDictList(fNormsList,True);
 fNormsList.NeedAllocStr:=True;

 fAccGroupsList:=Tl3StringDataList.CreateSize(DictServer(fFamily).DictTbl[dlAccGroups].IDSize);
 fAccGroupsList.Sorted:=True;
 DictServer(fFamily).DictTbl[dlAccGroups].NameFld:=dtShNameFld;
 DictServer(fFamily).DictTbl[dlAccGroups].GetDictList(fAccGroupsList,True);
 DictServer(fFamily).DictTbl[dlAccGroups].NameFld:=dtNameRFld;
 fAccGroupsList.NeedAllocStr:=True;

 l3FillChar(fDictTrees,SizeOf(fDictTrees));
 For l_Dict := Low(TDLType) to High(TDLType) do
  if l_Dict in sTreeDictsForImpEx then
   fDictTrees[l_Dict] := DictServer(fFamily).DictRootNode[l_Dict].Use;
end;

procedure TDictItemDecoder.Cleanup;
var
 I : TDLType;
begin
 L3Free(fBasesList);
 L3Free(fWarningsList);
 L3Free(fNormsList);
 L3Free(fAccGroupsList);
 for I:= Low(TDLType) to High(TDLType) do
  if I in sTreeDictsForImpEx then
   l3Free(fDictTrees[I]);

 Inherited;
end;

function TDictItemDecoder.AddHandle(const aChild: Ik2Tag; aDictType : TDLType) : Boolean;

 function AddItemToTree(const aChild: Ik2Tag; aDictType : TDLType) : Integer;

 var
  l_Node       : Il3Node;
  l_Name       : Tl3WString;
  l_PartName   : Tl3WString;
  l_EndPos     : Integer;
  //l_IsPrivate: TIsPrivate;
  l_LevelSlash : Tl3WString;
 begin
  Result := 0;
  with aChild do
  begin
   l_Name := (Attr[k2_tiName].AsObject As Tl3CustomString).AsWStr;
   if l_Name.SLen = 0 then Exit;

   l_Node := l3GetPartPath(fDictTrees[aDictType], l_Name, c_LevelSlash);
   if l3IsNil(l_Name) then
   begin
    Result := (l_Node as IDictItem).Handle;
    Exit;
   end;

   if Assigned(f_OnUpdDict) and
      f_OnUpdDict(aDictType, Attr[k2_tiName].AsObject As Tl3CustomString) then
   begin
    l_LevelSlash := l3PCharLen(c_LevelSlashStr);
    repeat
     l_EndPos := l3Pos(l_Name, l_LevelSlash);
     if (l_EndPos > 0) then
      l_PartName := l3Copy(l_Name, 0, l_EndPos)
     else
      l_PartName := l_Name;

     if not l3IsNil(l_PartName) then
     begin
      with DictServer(fFamily).Dict[aDictType] do
       l_Node := AddDictNode(cUndefDictID, l_PartName, l3PCharLen(cEmptyEngName), l3PCharLen, l_Node, IntA[k2_tiPrivate]);
      if l_EndPos <> l3NotFound then
       l_Name := l3Copy(l_Name, l_EndPos + l_LevelSlash.SLen);
     end;
    until l3IsNil(l_Name) or (l_EndPos = l3NotFound);
    Result := (l_Node as IDictItem).Handle;
   end;
  end;
 end;

var
 lDictName : Tl3CustomString;
 lCurList      : Tl3StringDataList;
 lIdx : Integer;
 lDictID : TDictID;
begin
  Result := False;
  // !!VV переносил из TDBFilter
  // както все криво, потом разберусь
  if not (aDictType in [dlBases, dlAccGroups, dlNorms, dlWarnings]) then
  begin
   lDictID := AddItemToTree(aChild, aDictType);
   aChild.IntA[k2_tiHandle] := lDictID;
   Result := lDictID > 0;
   exit;
  end;
 // else

  with aChild do
  begin
   //Result := IntA[k2_tiHandle];
   //if Result <> 0 then Exit;

   Case aDictType of
    dlBases :
     begin
      lCurList := fBasesList;
      lDictName := (Attr[k2_tiShortName].AsObject As Tl3CustomString);
     end;

    dlAccGroups :
     begin
      lCurList := fAccGroupsList;
      lDictName := (Attr[k2_tiShortName].AsObject As Tl3CustomString);
     end;

    dlNorms :
     begin
      lCurList := fNormsList;
      lDictName := (Attr[k2_tiName].AsObject As Tl3CustomString);
     end;

    dlWarnings :
     begin
      lCurList := fWarningsList;
      lDictName := (Attr[k2_tiName].AsObject As Tl3CustomString);
     end;
   end;

   if not Assigned(lDictName) then Exit;

   if lCurList.FindStr(lDictName.St, lIdx) then
   begin
    IntA[k2_tiHandle] := PDictID(lCurList.Data[lIdx])^;
    Result := True;
   end
   else
    if Assigned(f_OnUpdDict) and
       f_OnUpdDict(aDictType, lDictName) then
    begin
     lDictID := DictServer(fFamily).DictTbl[aDictType].GetFreeNum;
     lCurList.InsertData(lIdx, lDictName.St, @lDictID);
     IntA[k2_tiHandle] := lDictID;

     DictServer(fFamily).Dict[aDictType].AddDictNode(lDictID,
               (Attr[k2_tiName].AsObject As Tl3CustomString).AsWStr {fImpDictRec.Name.AsWStr}, l3PCharLen(cEmptyEngName),
               (Attr[k2_tiShortName].AsObject As Tl3CustomString).AsWStr, Nil);
    end;
  end;
end;

end.

