//..........................................................................................................................................................................................................................................................
unit ddAppConfigTypes;
{ Базовые классы для работы с настройками приложения }

{ $Id: ddAppConfigTypes.pas,v 1.191 2013/09/02 15:52:04 lulin Exp $ }
// $Log: ddAppConfigTypes.pas,v $
// Revision 1.191  2013/09/02 15:52:04  lulin
// - правим за Мишей.
//
// Revision 1.190  2013/08/30 17:08:35  kostitsin
// [$476838236]
//
// Revision 1.189  2013/08/30 13:40:57  kostitsin
// [$479400533]
//
// Revision 1.188  2013/08/30 08:48:08  kostitsin
// [$476838236]
//
// Revision 1.187  2013/08/29 18:22:07  kostitsin
// [$476838236] - пока вручную. Осталось поправить модель.
//
// Revision 1.186  2013/08/29 08:47:31  kostitsin
// [$476838236]
//
// Revision 1.185  2013/08/28 09:41:06  kostitsin
// [$477644969]
//
// Revision 1.184  2013/08/28 05:14:09  fireton
// - не собиралось
//
// Revision 1.183  2013/08/27 15:29:21  kostitsin
// [$476838236]
//
// Revision 1.182  2013/08/23 12:58:41  lulin
// {RequestLink:414849897}
//
// Revision 1.181  2013/08/22 12:16:18  kostitsin
// [$476838236]
//
// Revision 1.180  2013/08/21 17:29:06  kostitsin
// [$476838236]
//
// Revision 1.179  2013/08/21 17:16:34  lulin
// {RequestLink:414849897}
// - делаем возможность вкладывать в значения настроек другие настройки.
//
// Revision 1.178  2013/08/20 10:04:45  kostitsin
// [$414849897] - (+) TddRadioConfigItem
//
// Revision 1.177  2013/06/24 11:00:44  fireton
// - немного форматирования
//
// Revision 1.176  2013/06/21 11:19:39  fireton
// - приведение не к тому типу (K 461711572)
//
// Revision 1.175  2013/05/31 09:27:49  kostitsin
// [$457092525]
//
// Revision 1.174  2013/05/14 09:46:33  lulin
// - разборки с упавшими тестами.
//
// Revision 1.173  2013/05/13 17:23:54  lulin
// - разборки с упавшими тестами.
//
// Revision 1.172  2013/04/26 16:50:26  lulin
// - диагностика.
//
// Revision 1.171  2013/04/25 13:20:26  morozov
// {$RequestLink:363571639}
//
// Revision 1.170  2013/04/24 09:35:37  lulin
// - портируем.
//
// Revision 1.169  2013/04/19 13:10:10  lulin
// - портируем.
//
// Revision 1.168  2013/04/18 08:33:11  fireton
// - при переключении контейнера не запоминалось состояние зависимых элементов
//
// Revision 1.167  2013/04/17 14:01:47  narry
// Обновление
//
// Revision 1.166  2013/04/16 09:09:54  narry
// Обновление
//
// Revision 1.165  2013/04/11 16:46:26  lulin
// - отлаживаем под XE3.
//
// Revision 1.164  2013/03/28 10:20:03  narry
// GroupItem не выставлялся Changed при изменении одного из детей
//
// Revision 1.163  2013/02/04 13:08:46  narry
// Уехали элементы окна Настройка конфигурации (425280144)
//
// Revision 1.162  2013/02/04 12:52:59  narry
// Уехали элементы окна Настройка конфигурации (425280144)
//
// Revision 1.161  2013/02/04 11:45:36  narry
// Уехали элементы окна Настройка конфигурации (425280144)
//
// Revision 1.160  2013/02/04 11:20:20  narry
// Уехали элементы окна Настройка конфигурации (425280144)
//
// Revision 1.159  2013/01/28 11:40:27  narry
// Уточнение Автовыливки  (425270949)
//
// Revision 1.158  2013/01/22 15:51:55  kostitsin
// [$424399029]
//
// Revision 1.157  2012/10/29 08:29:41  fireton
// - реагируем на UseProjectDefine
//
// Revision 1.156  2011/10/31 10:46:20  narry
// Не работает расстановка меток (296617417)
//
// Revision 1.155  2011/10/21 13:11:59  narry
// Накопившиеся изменения
//
// Revision 1.154  2011/07/13 17:48:01  vkuprovich
// {RequestLink:271757301}
// Надо использовать для Nemesis TvtPanel
//
// Revision 1.153  2011/07/13 17:27:50  vkuprovich
// {RequestLink:271757301}
// Устанавливаем цвет фона для диалога настроек Nemesis-а
//
// Revision 1.152  2011/04/22 11:42:58  narry
// Реакция на кнопку (262636470)
//
// Revision 1.151  2011/04/13 16:13:28  lulin
// - чистим очевидное.
//
// Revision 1.150  2010/03/19 14:00:31  narry
// - криво читались, писались элементы вложенных списков
//
// Revision 1.149  2010/03/16 11:42:22  narry
// - корректная запись вложенных заданий
//
// Revision 1.148  2010/03/15 18:08:41  lulin
// {RequestLink:196969151}.
//
// Revision 1.147  2010/01/26 10:49:42  narry
// - обновление
//
// Revision 1.146  2009/05/15 15:12:47  narry
// - не сохранялись параметры задания
//
// Revision 1.145  2009/03/13 15:10:16  narry
// - рефакторинг установки значения
// - связь между элементами
//
// Revision 1.144  2009/02/10 14:05:38  narry
// - обновление
//
// Revision 1.143  2009/01/30 11:38:39  lulin
// - используем кошерные группы.
//
// Revision 1.142  2009/01/29 10:04:23  narry
// - поправлена отрисовка DividerItem
//
// Revision 1.141  2009/01/29 09:21:44  oman
// - fix: обрамляем заголовок группы пробелами (К-136253952)
//
// Revision 1.140  2009/01/23 15:50:51  narry
// - коррекция методов расчета ширина элементов
//
// Revision 1.139  2009/01/20 17:02:58  lulin
// - bug fix: <K> 135600354.
//
// Revision 1.138  2009/01/20 14:38:15  narry
// - рефакторинг и исправление ошибок
//
// Revision 1.137  2009/01/20 13:21:42  oman
// - fix: Боремся с последствиями изменения шрифтов (К-135600723)
//
// Revision 1.136  2008/11/18 15:02:26  narry
// - обновление
//
// Revision 1.135  2008/10/23 09:41:31  narry
// - Элемент-контейнер
// - префикс для шифрованных строк
//
// Revision 1.134  2008/10/15 09:05:26  fireton
// - кодируем зашифорованные строки в base64 (иначе в ini может записаться каша)
//
// Revision 1.133  2008/10/03 08:54:12  narry
// - не отрисовывались метки при использовании XPManifest
//
// Revision 1.132  2008/10/03 07:06:14  narry
// - рефакторинг
//
// Revision 1.131  2008/08/19 13:04:28  narry
// - исправлено выравнивание по ширине метке для IntegerItem
// - исправлена ширина элемента выбора шрифта
//
// Revision 1.130  2008/07/28 09:55:15  fireton
// - автоподстановка периодичности заданий
// - required типы заданий
//
// Revision 1.129  2008/07/25 12:34:39  narry
// - уточнение незаполненного параметра
//
// Revision 1.128  2008/07/24 15:06:18  narry
// - развитие работы с Required элементами
//
// Revision 1.127  2008/07/23 14:14:38  narry
// - дополнительный метод обработки узла по окончании редактирования
//
// Revision 1.126  2008/07/16 16:09:12  narry
// - заготовка рефакторинга
//
// Revision 1.125  2008/05/14 10:40:30  narry
// - новый элемент - разделитель
//
// Revision 1.124  2008/04/23 07:27:19  narry
// - переделки для сервиса
//
// Revision 1.123  2008/03/13 14:41:59  narry
// - рефакторинг
//
// Revision 1.122  2008/03/03 20:06:00  lulin
// - <K>: 85721135.
//
// Revision 1.121  2008/03/03 13:04:10  narry
// - исправлены ошибки отрисовки
//
// Revision 1.120  2008/02/19 16:03:31  narry
// - возможность задать положение метки для всей закладки
//
// Revision 1.119  2008/02/14 09:40:33  lulin
// - удалён ненужный класс.
//
// Revision 1.118  2008/02/13 20:20:06  lulin
// - <TDN>: 73.
//
// Revision 1.117  2008/02/12 12:53:15  lulin
// - избавляемся от излишнего метода на базовом классе.
//
// Revision 1.116  2008/02/06 15:37:00  lulin
// - каждому базовому объекту по собственному модулю.
//
// Revision 1.115  2008/02/06 09:30:50  lulin
// - базовые списки объектов выделяем в отдельные файлы.
//
// Revision 1.114  2008/02/05 09:57:59  lulin
// - выделяем базовые объекты в отдельные файлы и переносим их на модель.
//
// Revision 1.113  2008/02/01 15:14:44  lulin
// - избавляемся от излишней универсальности списков.
//
// Revision 1.112  2008/01/30 08:53:32  oman
// - fix: Не освобождали списки (cq28323)
//
// Revision 1.111  2008/01/28 15:21:37  lulin
// - используем "кошерный" список.
//
// Revision 1.110  2007/12/06 12:14:53  lulin
// - используем стандартный контрол выбора цвета.
//
// Revision 1.109  2007/12/06 11:40:57  lulin
// - _cleanup.
//
// Revision 1.108  2007/11/16 08:22:56  narry
// - обновление
//
// Revision 1.107  2007/09/28 05:35:16  narry
// - элемент список строк
//
// Revision 1.106  2007/08/14 19:31:52  lulin
// - оптимизируем очистку памяти.
//
// Revision 1.105  2007/08/14 14:30:05  lulin
// - оптимизируем перемещение блоков памяти.
//
// Revision 1.104  2007/07/25 10:43:34  narry
// - Элементы, вложенные в группу не сохраняли изменения
//
// Revision 1.103  2007/04/11 12:59:26  oman
// - fix: IsItem не учитывала группирующие элементы
//
// Revision 1.102  2007/04/09 06:37:22  lulin
// - используем родные метки.
//
// Revision 1.101  2007/04/06 15:01:23  lulin
// - используем родные панели.
//
// Revision 1.100  2007/04/06 14:37:13  lulin
// - используем родное дерево.
//
// Revision 1.99  2007/04/05 10:22:26  lulin
// - избавляемся от лишних преобразований строк.
//
// Revision 1.98  2007/02/28 10:31:50  narry
// - обновление
//
// Revision 1.97  2007/02/12 16:40:34  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.96  2007/02/10 13:25:47  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.95  2007/02/07 19:36:25  lulin
// - переводим мапы на строки с кодировкой.
//
// Revision 1.94  2007/02/07 19:13:26  lulin
// - переводим мапы на строки с кодировкой.
//
// Revision 1.93  2007/02/07 17:48:45  lulin
// - избавляемся от копирования строк при чтении из настроек.
//
// Revision 1.92  2007/02/05 09:07:07  lulin
// - _cleanup.
//
// Revision 1.91  2007/01/19 14:35:22  oman
// - new: Локализация библиотек - dd (cq24078)
//
// Revision 1.90  2006/10/26 07:11:15  narry
// - неправильно создавался элемент выбора шрифта
//
// Revision 1.89  2006/09/13 12:37:48  oman
// - fix: При первичной инициализации комбобоксов, если значение
//  в комобоксе отсутствует - сбросим его в значение по умолчанию -
//  как в 6.3. (cq22547)
//
// Revision 1.88  2006/09/06 09:41:25  oman
// - fix: Не умели сохранять, если не было создано контролов.
//
// Revision 1.87  2006/06/20 11:43:01  oman
// - fix: Текст сообщения (cq21401)
// Revision 1.87.2.3  2006/10/26 06:56:28  narry
// - неправильно создавался элемент выбора шрифта
//
// Revision 1.87.2.2  2006/07/26 11:09:24  narry
// - обновление
//
// Revision 1.87.2.1  2006/06/22 11:32:45  narry
// - рефакторинг
//
// Revision 1.86  2006/04/26 14:27:39  oman
// - fix: некорректно формировался BooleanValue для комбобокс (cq20708)
//
// Revision 1.85  2006/04/24 06:06:31  oman
// - fix: Неправильно определялась доступность подчиненных контролов
//  от мастер-комбобокса (cq20602)
//
// Revision 1.84  2006/04/03 11:58:30  oman
// - new beh: Поддержка механизма мап "строка для отображения в UI"-<нечто>
//  при редактировании настроек.
//
// Revision 1.83  2005/12/07 12:26:43  narry
// - исправление: TddMasterSlaveConfigItem некорректно обновлял данные
//
// Revision 1.82  2005/12/07 10:21:17  narry
// - исправление: попытка сделать правильный расчет размеров формы
//
// Revision 1.81  2005/12/01 11:33:10  narry
// - обновление
//
// Revision 1.80  2005/06/15 06:54:22  mmorozov
// change: у компонента UpDown отключена отбивка пробелами тысяч, иначе проблемы при валидации;
//
// Revision 1.79  2005/03/09 12:44:12  am
// new: интерфейс IddMasterItem. Теперь, если какой-то Item решит быть мастером, ему нужно поддержать этот интерфейс
//
// Revision 1.78  2005/02/08 16:41:43  narry
// - bug fix: Range check при создании элемента редактирования числового значения
//
// Revision 1.77  2005/01/30 16:18:32  mmorozov
// bugfix: благодаря взаимоотношениям _TEdit и TUpDown (IntegerItem) у редактируемой конфигурации устанавливось Changed, хотя руками ничего не меняли;
//
// Revision 1.76  2005/01/26 13:35:22  mmorozov
// bugfix: при вычислении отступа для числовых элементов, не учитывалось, что они могут находится внутри группы;
//
// Revision 1.75  2005/01/21 13:39:13  mmorozov
// new behaviour: при вычислении ширины формы не учитывалась ширина кнопок выстроенных в линию (они могли не влезть);
//
// Revision 1.74  2005/01/20 14:42:32  mmorozov
// bugfix: при использовании _TEdit и TUpDown значением нужно инициализировать обо компонента;
//
// Revision 1.73  2005/01/20 14:18:18  mmorozov
// bugfix: не устанавливалось значение для номеров;
//
// Revision 1.72  2005/01/20 12:42:48  mmorozov
// change: для настройки типа число используются другие компоненты;
// new: контроль правильности введенных значений, вывод сообщения пользователю, позиционирование фокуса в компоненте с неверным значением;
//
// Revision 1.71  2005/01/19 17:01:05  lulin
// - в очередной раз вычищен ненужный модуль.
//
// Revision 1.70  2005/01/17 11:02:36  mmorozov
// - warnings fix;
//
// Revision 1.69  2005/01/17 09:52:18  mmorozov
// - реализован TddMasterSlaveConfigItem;
//
// Revision 1.68  2005/01/14 17:21:26  mmorozov
// - реализация MasterSlaveConfigItem;
//
// Revision 1.67  2005/01/14 09:45:24  mmorozov
// remove: TddMasterSlaveConfigItem.AddCaptionElement;
//
// Revision 1.66  2005/01/14 09:20:56  narry
// - update: рефакторинг в преддверии добавления нового класса
//
// Revision 1.65  2005/01/08 09:20:19  mmorozov
// TddBaseConfigNode:
// - new: propety ScrollBars;
// - new: property IsVerticalScrollBar;
// - new: property IsHorizontalScrollBar;
//
// Revision 1.64  2004/12/28 11:54:35  mmorozov
// - bug fix: избыточная минимальная ширина IntegerItem
//
// Revision 1.63  2004/12/23 08:40:38  lulin
// - вычищен ненужный модуль.
//
// Revision 1.62  2004/11/04 16:28:55  fireton
// - bug fix: integer overflow
//
// Revision 1.61  2004/10/25 15:08:28  mmorozov
// new: const _ddMaxInt, _ddMinInt;
// change: инициализация MinValue, MaxValue;
//
// Revision 1.60  2004/09/21 12:21:04  lulin
// - Release заменил на _Cleanup.
//
// Revision 1.59  2004/09/15 12:58:02  fireton
// - bug fix: правильный рассчет координат для кнопок
//
// Revision 1.58  2004/09/10 14:29:46  narry
// - bug fix: AV при создании ListItem без адаптера данных
// - update: ButtonItem выключен, если ему не присвоен OnClick
// - update: несколько ButtonItem, созданных подряд, располагаются в ряд
//
// Revision 1.57  2004/08/24 09:10:22  mmorozov
// new: method TddBaseConfigItem.DoEnabled;
// new behaviour: после создания компонентов ноды выставляем запомненное Enabled;
//
// Revision 1.56  2004/08/06 11:36:43  demon
// - _cleanup: remove hints
//
// Revision 1.55  2004/07/12 07:39:16  mmorozov
// change: GetStringValue - виртуальный;
//
// Revision 1.54  2004/07/12 04:42:37  mmorozov
// new: TddBaseConfigItem properties (DefaultStringValue, DefaultBooleanValue, DefaultDateTimeValue, DefaultObjectValue, DefaultIntegerValue);
//
// Revision 1.53  2004/07/10 12:48:41  mmorozov
// new: отображение Hint-а;
//
// Revision 1.52  2004/07/09 09:40:25  mmorozov
// new: property TddComboBoxConfigItem.DropDownCount;
// new: method TddComboBoxConfigItem.DoExit;
//
// Revision 1.51  2004/07/08 14:36:47  mmorozov
// new: property TddComboBoxConfigItem.ComboBoxStyle;
//
// Revision 1.50  2004/07/06 13:49:34  mmorozov
// bugfix: TddComboBoxConfigItem.ConstructControl;
//
// Revision 1.49  2004/07/01 13:07:56  narry
// - update: присвоение значения элементу взводит состояние измененности
//
// Revision 1.48  2004/06/21 15:24:08  mmorozov
// change: сигнатура TddBaseConfigNode.SetChanged;
//
// Revision 1.47  2004/06/21 15:09:37  narry
// - update: добавление функциональности узлу и конфигуратору (поле Changed у узла)
//
// Revision 1.46  2004/06/21 12:57:31  narry
// - bug fix: не присваивалось свойство PasswordChar строке ввода
//
// Revision 1.45  2004/06/11 07:12:43  mmorozov
// new: overload method TMapValues.IndexOf;
// bugfix: установка мапированного значения;
//
// Revision 1.44  2004/06/10 16:09:34  narry
// - bug fix: неправильное выравнивание IntegerItem
// - update
//
// Revision 1.43  2004/06/10 14:11:52  mmorozov
// - размещение компонентов TddButtonConfigItem;
//
// Revision 1.42  2004/06/09 14:16:34  mmorozov
// new: объявлены абстрактные методы родителя TddButtonConfigItem;
// bugfix: установка сaption для TddButtonConfigItem;
//
// Revision 1.41  2004/06/09 06:32:27  mmorozov
// bugfix: флаг Changed;
//
// Revision 1.40  2004/06/08 14:03:54  narry
// - update
//
// Revision 1.39  2004/06/08 07:30:49  narry
// - bug fix: флаг Changed для группы элементов всегда был False
//
// Revision 1.38  2004/06/07 14:26:57  mmorozov
// bugfix: загрузка данных в TddComboBoxConfigItem;
// bugfix: в TddConfigValue можно хранить только один тип данных;
//
// Revision 1.37  2004/06/07 11:20:52  narry
// - change: сохраняются лишь измененные значения
//
// Revision 1.34  2004/06/02 06:05:04  mmorozov
// new: class TddButtonConfigItem;
//
// Revision 1.33  2004/06/01 10:24:24  mmorozov
// delete: поле fComboBox;
//
// Revision 1.32  2004/05/31 18:14:46  demon
// - warning fix
//
// Revision 1.31  2004/05/31 14:53:42  mmorozov
// new: class TMapValue;
// new class TMapValues;
// new: class TddMapValueConfigItem;
// new: TddComboBoxConfigItem наследник от TddMapValueConfigItem;
// bugfix: TddComboBoxConfigItem.ControlHeight;
//
// Revision 1.30  2004/05/29 13:01:27  mmorozov
// new: class TddComboBoxConfigItem;
// bugfix: перед записью alias в качестве ComponentName проверяем, что это допустимое значение;
//
// Revision 1.29  2004/05/18 13:39:08  narry
// - update: вызов стандартного диалога выбора папки без _RxLibrary
//
// Revision 1.28  2004/05/07 10:14:38  narry
// - bug fix: неправильное вычисление размера при AutoSize
//
// Revision 1.27  2004/04/29 15:20:41  narry
// - update and bug fix
//
// Revision 1.26  2004/04/29 13:22:24  narry
// - update and bug fix
//
// Revision 1.25.2.5  2004/04/28 13:40:20  narry
// - update and bug fix
//
// Revision 1.25.2.4  2004/04/21 15:43:54  narry
// - update
// - bug fix: не "выключались" дополнительные элементы строковых элементов
//
// Revision 1.25.2.1  2004/03/16 16:58:41  narry
// - update: переделка с _TPanel на TFrame
//
// Revision 1.23  2004/03/12 16:49:46  narry
// - bug fix
//
// Revision 1.22  2004/03/12 10:20:22  narry
// - new: поддержка двойного клика в списке
//
// Revision 1.21  2004/03/11 14:15:29  narry
// - bug fix: AV при закрытии окна конфигурации по кнопке ОК
// - bug fix: неправильная длина элемента IntegerConfigItem
//
// Revision 1.20  2004/03/10 15:33:15  narry
// - update: замена содержимым ветки
//
// Revision 1.18.2.8  2004/03/10 15:21:52  narry
// - update: завершение рефакторинга
//
// Revision 1.18.2.6  2004/03/05 15:04:26  narry
// - update: восстановлен TRadioGroup, снято ограничение с размера формы в режиме AutoSize
//
// Revision 1.18.2.5  2004/03/04 17:53:52  narry
// - update: продолжение рефакторинга, на 80% восстановлена былая функциональность
//
// Revision 1.18.2.3  2004/02/26 14:54:47  narry
// - update
//
// Revision 1.18.2.2  2004/02/26 14:52:49  narry
// - update: внесение изменений из основной ветки
//
// Revision 1.18.2.1  2004/02/26 12:12:11  narry
// - update: расчленение ConfigItem
//
// Revision 1.19  2004/02/26 14:42:47  narry
// - bug fix: некорректное присваивание значения dd_citInteger
//
// Revision 1.18  2004/02/24 14:28:43  narry
// - update
//
// Revision 1.17  2004/02/24 13:35:43  narry
// - new: использование PasswordChar для ввода "секретных" строк
//
// Revision 1.16  2004/02/20 16:42:26  narry
// - add: новый тип элемента dd_citFont
//
// Revision 1.15  2004/02/19 17:43:16  narry
// - add: подгонка ширины элемента редактирования чисел при задании максимального возможного значения
//
// Revision 1.14  2004/02/19 13:12:28  narry
// - add: свойства элемента LabelTop, MinValue, MaxValue
//
// Revision 1.13  2004/02/18 15:29:20  narry
// - update:
//
// Revision 1.12  2004/02/18 14:06:51  narry
// - update: продолжение документирования классов
//
// Revision 1.11  2004/02/17 15:08:12  narry
// - update: первое приближение свойства AutoSize
//
// Revision 1.10  2004/02/16 11:11:45  narry
// - new: новые типы элементов - цвет и имя шрифта
// - _cleanup
//
// Revision 1.9  2004/02/13 11:03:55  narry
// - new: класс адаптера данных для хранение списка строк
//
// Revision 1.8  2004/02/09 09:16:39  narry
// - update
//
// Revision 1.7  2004/02/09 09:11:45  narry
// - new: добавление элементов без создания узла означает создание невизуальных элементов, которые не отображаются в окне настройки и сохраняются
//
// Revision 1.6  2004/02/06 17:11:47  narry
// - bug fix: не сохранялились и не загружались значения для типа dd_citRadio
// - add: новый тип элемента dd_citRadioGroup
//
// Revision 1.5  2004/02/04 14:23:40  narry
// - new: значение по умолчанию
//
// Revision 1.4  2004/02/04 12:23:00  narry
// - update: очередной шаг к совершенству
//
// Revision 1.3  2004/01/22 17:58:20  narry
// - update: начало реализации редактирования элементов списка
//
// Revision 1.2  2003/12/01 15:20:34  narry
// - _cleanup
// - bug fix: Integer overflow при формировании номера блока глубокой вложенности
// -change: переименование пункта "Произвольно" в "Больше пяти уровней" и перенос его в конец списка
//
// Revision 1.1  2003/11/19 17:55:19  narry
// - new: хранение и отображение настроек приложения
//

{$Include ddDefine.inc}

{$IFDEF UseProjectDefine}
 {$I ProjectDefine.inc}
{$ENDIF}

interface

uses
  ddAppConfigTypesModelPart,
  Controls,
  Contnrs,
  IniFiles,
  SysUtils,
  Classes,
  StdCtrls,
  Forms,
  Types,
  ComCtrls,
  l3Interfaces,
  l3Base,
  l3ObjectRefList,
  l3ObjectList,
  ddConfigStorages,
  vtLabel,
  ddAppConfigConst,
  vtComboBoxQS,
  l3VCLStrings;

type
  TddRadioConfigItem = class(TddVisualConfigItem, IddMasterItem)
  protected
    procedure DoOnChange(Sender: TObject);
    function ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl; override;
    function pm_GetBooleanValue: Boolean;
  public
    constructor Create(const aAlias, aCaption: AnsiString; const aDefaultValue: TddConfigValue;
            aMasterItem: TddBaseConfigItem = nil); overload; override;
    constructor Create(const aAlias, aCaption: String; aDefaultValue: Boolean;
            aMasterItem: TddBaseConfigItem = nil); overload;
    function ControlHeight(aParent: TWinControl): Integer; override;
    procedure GetValueFromControl; override;
    function MinWidth(aParent: TWinControl): Integer; override;
    procedure SetValueToControl(aDefault: Boolean); override;
  end;//TddIntegerConfigItem
  
  TddMapValueConfigItem = class(TddVisualConfigItem)
  private
   f_ValueMap: Il3ValueMap;
   f_ValueKind: TddValueKind;
  private
    procedure SetItem(const aValue: String);
    function DisplayNameToValue(const aName: Il3CString): TddConfigValue;
  protected
    fMapValues: TMapValues;
    function CalcValue(const aName: Il3CString): TddConfigValue;
    function CalcDisplayName(const aValue: TddConfigValue): String;
    function IsSet: Boolean;
    function DisplayNameContainer: Tl3Strings; overload; virtual; abstract;
    property ValueMap: Il3ValueMap read f_ValueMap;
  public
    constructor Create(const aAlias, aCaption: AnsiString; const aDefaultValue:
            TddConfigValue; aValueMap: Il3ValueMap = nil; aMasterItem: TddBaseConfigItem = nil);
      reintroduce;
    procedure AddMapValue(const aCaption : String; aValue : TddConfigValue); overload;
    procedure AddMapValue(const aCaption : String; aValue : Integer); overload;
    procedure AddMapValue(const aCaption : String; aValue : String); overload;
   procedure Assign(P : TPersistent); override;
    procedure Cleanup; override;
        {* - функция сравнения объекта с другим объектом.  Для перекрытия в потомках. }
   function Clone(anOwner: TObject = nil): Pointer; override;
    procedure LoadValue(const aStorage: IddConfigStorage); override;
    procedure SaveValue(const aStorage: IddConfigStorage); override;
    property Item: String write SetItem;
  end;//TddMapValueConfigItem

  TddComboBoxConfigItem = class(TddMapValueConfigItem, IddMasterItem)
  private
    FMasterIndex: Integer;
    FComboBoxStyle: TComboBoxStyle;
    FDropDownCount: Integer;
    procedure CheckLoadItems;
    procedure OnExit(Sender : TObject);
    procedure SelectValue(const aValue : Integer);
    procedure SetComboBoxStyle(const Value: TComboBoxStyle);
    procedure SetDropDownCount(const Value: Integer);
  protected
    function pm_GetBooleanValue: Boolean; override;
    function DisplayNameContainer: Tl3Strings; overload; override;
    function ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl; override;
    procedure DoExit; virtual;
    procedure DoOnChange(Sender: TObject);
  public
    constructor Create(const aAlias, aCaption: String; aDefaultValue: TddConfigValue;
                       aValueMap: Il3ValueMap = nil; aMasterItem: TddBaseConfigItem = nil; aMasterIndex: Integer = -1);
      reintroduce;
      virtual;
        {* - функция сравнения объекта с другим объектом.  Для перекрытия в потомках. }
    function Clone(anOwner: TObject = nil): Pointer; override;
    function ControlHeight(aParent: TWinControl): Integer; override;
    procedure GetValueFromControl; override;
    procedure SetValueToControl(aDefault : Boolean); override;
    property ComboBoxStyle: TComboBoxStyle read FComboBoxStyle write
            SetComboBoxStyle;
    property DropDownCount: Integer read FDropDownCount write SetDropDownCount;
  end;//TddComboBoxConfigItem

  TddButtonConfigItem = class(TddVisualConfigItem)
  private
    FOnClick: TNotifyEvent;
    FPlace: TddButtonPlace;
    procedure SetOnClick(const Value: TNotifyEvent);
    procedure ButtonSize(aParent : TWinControl; out aSize : TSize);
  protected
    function ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl; override;
    function MayBeRequired: Boolean; override;
    function pm_GetRequired: Boolean; override;
  public
    constructor Create(const aAlias, aCaption: String; aDefaultValue:
            TddConfigValue; aClick: TNotifyEvent; aMasterItem:
            TddBaseConfigItem = nil); reintroduce;
    procedure Assign(P: TPersistent); override;
    function ControlHeight(aParent: TWinControl): Integer; override;
    procedure GetValueFromControl; override;
    procedure LoadValue(const aStorage: IddConfigStorage); override;
    procedure SaveValue(const aStorage: IddConfigStorage); override;
    procedure SetValueToControl(aDefault: Boolean); override;
    function MinWidth(aParent: TWinControl): Integer; override;
    property OnClick: TNotifyEvent read FOnClick write SetOnClick;
    property Place: TddButtonPlace read FPlace write FPlace;
  end;//TddButtonConfigItem

  {1 Раздел конфигурации. Визуально представляет собой закладку. }
  {{
  Необходима только для создания иерархии
  параметров - как визуальной (в окне),
  так и для сохранения
  }
  TddAppConfigNode = class(TddCustomConfigNode)
  private
    f_Items: Tl3ObjectRefList;
    f_LabelTop: Boolean;
    function GetCount: Integer;
    function GetItem(Index: Integer): TddVisualConfigItem;
    function GetItemByIndex(Index: Integer): TddVisualConfigItem;
    function pm_GetAsBoolean(const anAlias: String): Boolean;
    function pm_GetAsDateTime(const anAlias: String): TDateTime;
    function pm_GetAsInteger(const anAlias: String): Integer;
    function pm_GetAsObject(const anAlias: String): TObject;
    function pm_GetAsString(anAlias: String): String;
    function pm_GetItemByAlias(anAlias: String): TddBaseConfigItem;
    procedure pm_SetAsBoolean(const anAlias: String; const aValue: Boolean);
    procedure pm_SetAsDateTime(const anAlias: String; const aValue: TDateTime);
    procedure pm_SetAsInteger(const anAlias: String; const aValue: Integer);
    procedure pm_SetAsObject(const anAlias: String; const aValue: TObject);
    procedure pm_SetAsString(anAlias: String; const aValue: String);
    procedure pm_SetItems(const Value: Tl3ObjectRefList);
    procedure pm_SetLabelTop(const aValue: Boolean);
  protected
    procedure Cleanup; override;
    function pm_GetChanged: Boolean; override;
    procedure pm_SetChanged(aValue: Boolean); override;
  public
    constructor Create(const aAlias, aCaption: AnsiString); reintroduce; overload;
    function AddItem(aItem: TddBaseConfigItem): TddBaseConfigItem; overload;
    procedure Assign(P: TPersistent); override;
    function DoIsItem(aItem : TObject) : Boolean; override;
    procedure DoClearControls; override;
        {* - функция сравнения объекта с другим объектом.  Для перекрытия в потомках. }
    function Clone(anOwner: TObject = nil): Pointer; override;
    function DoCreateFrame(aOwner: TComponent; aTag: Integer): TCustomFrame; override;
    procedure DoFrameSize(aParent: TWinControl; out aHeight, aWidth: Integer);
            override;
    procedure DoGetControlValues; override;
    function HasValue(const anAlias: AnsiString; out theItem: TddBaseConfigItem): Boolean; override;
    function IsRequired(out aMessage: AnsiString): Boolean; override;
    procedure LoadValue(const aStorage: IddConfigStorage); override;
    procedure DoResetToDefault; override;
    procedure SaveValue(const aStorage: IddConfigStorage); override;
    procedure DoSetControlValues(aDefault: Boolean); override;
    property AsBoolean[const anAlias: String]: Boolean read pm_GetAsBoolean write pm_SetAsBoolean;
    property AsDateTime[const anAlias: String]: TDateTime read pm_GetAsDateTime write pm_SetAsDateTime;
    property AsInteger[const anAlias: String]: Integer read pm_GetAsInteger write pm_SetAsInteger;
    property AsObject[const anAlias: String]: TObject read pm_GetAsObject write pm_SetAsObject;
    property AsString[anAlias: String]: String read pm_GetAsString write pm_SetAsString;
    property Count: Integer read GetCount;
    property Items[Index: Integer]: TddVisualConfigItem read GetItem;
    property ItemByAlias[anAlias: String]: TddBaseConfigItem read pm_GetItemByAlias; default;
    property ItemByIndex[Index: Integer]: TddVisualConfigItem read
            GetItemByIndex;
    property Items_: Tl3ObjectRefList read f_Items write pm_SetItems;
    property LabelTop: Boolean read f_LabelTop write pm_SetLabelTop;
  end;

  TddBooleanConfigItem = class(TddVisualConfigItem, IddMasterItem)
  private
    procedure OnClick(Sender: TObject);
  protected
    function ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl; override;
    function pm_GetBooleanValue: Boolean; override;
    function pm_GetFullControlHeight(aParent: TWinControl): Integer; override;
    function MayBeRequired: Boolean; override;

    function pm_GetRequired: Boolean; override;
    procedure pm_SetRequired(aValue: Boolean); override;
  public
    constructor Create(const aAlias, aCaption: AnsiString; const aDefaultValue:
            TddConfigValue; aMasterItem: TddBaseConfigItem = nil); override;
    function ControlHeight(aParent: TWinControl): Integer; override;
    procedure GetValueFromControl; override;
    procedure LoadValue(const aStorage: IddConfigStorage); override;
    function MinWidth(aParent: TWinControl): Integer; override;
    procedure SaveValue(const aStorage: IddConfigStorage); override;
    procedure SetValueToControl(aDefault: Boolean); override;
  end;//TddBooleanConfigItem

  TddRadioGroupConfigItem = class(TddIntegerConfigItem)
  private
    FItems: TStrings;
    f_MaxCount: Integer;
    procedure pm_SetMaxCount(const Value: Integer);
  protected
    procedure Cleanup; override;
    function ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl; override;
    procedure pm_SetLabelTop(aValue: Boolean); override;
    procedure DoOnChange(Sender: TObject); override;
  public
    constructor Create(const aAlias, aCaption: AnsiString; const aDefaultValue:
            TddConfigValue; aMasterItem: TddBaseConfigItem = nil); override;
    procedure Add(aItem: String);
    procedure Assign(P: TPersistent); override;
    function ControlHeight(aParent: TWinControl): Integer; override;
    procedure GetValueFromControl; override;
    procedure SetValueToControl(aDefault: Boolean); override;
    property MaxCount: Integer read f_MaxCount write pm_SetMaxCount;
  end;//TddRadioGroupConfigItem

  TddGroupConfigItem = class(TddVisualConfigItem)
  private
    FSubItems: TObjectList;
    f_ShowCaption: Boolean;
    function GetCount: Integer;
    function GetSubItem(Index: Integer): TddVisualConfigItem;
    procedure pm_SetEnabled(aValue: Boolean); override;
    procedure DoOnChange(Sender: TObject);
  protected
    function HeaderHeight(aParent : TWinControl) : Integer; virtual;
    procedure Cleanup; override;
    function ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl; override;
    function pm_GetFullControlHeight(aParent: TWinControl): Integer; override;
    procedure Reset; override;
    function IsSame(anItem: TObject): Boolean; override;
    function MayBeRequired: Boolean; override;
    function pm_GetChanged: Boolean; override;
  public
    constructor Create(const aAlias, aCaption: AnsiString; const aDefaultValue:
            TddConfigValue; aMasterItem: TddBaseConfigItem = nil); override;
    constructor Make(aAlias, aCaption: String; aMasterItem: TddBaseConfigItem = nil);
    function ItemsLabelWidth(aParent: TWinControl; var aLeftLabeled: Integer): Integer;
    function Add(aItem: TddBaseConfigItem): TddBaseConfigItem; virtual;
    procedure Assign(P: TPersistent); override;
    procedure ClearControl; override;
    function ControlHeight(aParent: TWinControl): Integer; override;
    procedure GetValueFromControl; override;
    function HasValue(const anAlias: AnsiString; out theItem: TddBaseConfigItem): Boolean; override;
    function LabelWidth(aParent: TWinControl): Integer; override;
    procedure LoadValue(const aStorage: IddConfigStorage); override;
    function MinWidth(aParent: TWinControl): Integer; override;
    procedure SaveValue(const aStorage: IddConfigStorage); override;
    procedure SetValueToControl(aDefault: Boolean); override;
    property Count: Integer read GetCount;
    property ShowCaption: Boolean read f_ShowCaption write f_ShowCaption;
    property SubItem[Index: Integer]: TddVisualConfigItem read GetSubItem;
    property SubItems: TObjectList read FSubItems;
  end;//TddGroupConfigItem
  
  TddFontConfigItem = class(TddVisualConfigItem)
  private
    procedure FontButtonClick(Sender: TObject);
    procedure pm_SetEnabled(aValue: Boolean); override;
  protected
    procedure AfterConstruct(var aLeft, aMaxLeft, aTop: Integer; theControl:
            TControl; theLabel: TvtLabel); override;
    function ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl; override;
  public
    constructor Create(const aAlias, aCaption: AnsiString; const aDefaultValue:
            TddConfigValue; aMasterItem: TddBaseConfigItem = nil); override;
    function ControlHeight(aParent: TWinControl): Integer; override;
    procedure GetValueFromControl; override;
    procedure LoadValue(const aStorage: IddConfigStorage); override;
    function MinWidth(aParent: TWinControl): Integer; override;
    procedure SaveValue(const aStorage: IddConfigStorage); override;
    procedure SetValueToControl(aDefault: Boolean); override;
  end;//TddFontConfigItem
  
  TddColorConfigItem = class(TddIntegerConfigItem)
  protected
    function ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl; override;
    procedure DoOnChange(Sender: TObject); override;
  public
    procedure GetValueFromControl; override;
    procedure SetValueToControl(aDefault: Boolean); override;
  end;//TddColorConfigItem

  TddMasterSlaveConfigItem = class(TddGroupConfigItem)
  private
    fCaptions  : TStrings;
    fListItems : Tl3ObjectRefList;
    fComboBox  : TvtComboBoxQS;
    fPrevIndex : Integer;
  private
    function CheckItem(const aAlias : String) : Boolean;
    procedure OnChange(aSender : TObject);
    procedure UpdateDataItems(aItemIndex : Integer);
    function FirstItem(aItemIndex : Integer) : Integer;
    procedure ChangeItem;
    procedure AssignDataFromDetail;
  protected
    function HeaderHeight(aParent : TWinControl) : Integer; override;
    procedure Cleanup; override;
    function ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl; override;
  public
    constructor Create(const aAlias, aCaption: AnsiString; const aDefaultValue:
            TddConfigValue; aMasterItem: TddBaseConfigItem = nil); override;
    procedure AddStructureItem(aItem: TddBaseConfigItem);
    procedure AddCaption(const aCaption, aAliasPrefix: String);
    function AddAlias(const aAlias: String): TddBaseConfigItem;
    procedure SetValueToControl(aDefault: Boolean); override;
    procedure LoadValue(const aStorage: IddConfigStorage); override;
    procedure SaveValue(const aStorage: IddConfigStorage); override;
  end;//TddMasterSlaveConfigItem

 TddCheckListConfigItem = class(TddRadioGroupConfigItem)
 private
  f_Columns: Integer;
 protected
  function ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent:
      TWinControl): TControl; override;
 public
  constructor Create(const aAlias, aCaption: AnsiString; const aDefaultValue:
      TddConfigValue; aMasterItem: TddBaseConfigItem = nil); override;
  procedure Assign(P: TPersistent); override;
  function ControlHeight(aParent: TWinControl): Integer; override;
  procedure GetValueFromControl; override;
  procedure SetValueToControl(aDefault: Boolean); override;
  property Columns: Integer read f_Columns write f_Columns;
 end;

 TddDividerConfigItem = class(TddVisualConfigItem)
 protected
  function ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl; override;
  function MayBeRequired: Boolean; override;
 public
  constructor Create(const aAlias, aCaption: AnsiString; const aDefaultValue: TddConfigValue; aMasterItem: TddBaseConfigItem =
      nil); override;
  procedure SaveValue(const aStorage: IddConfigStorage); override;
  procedure LoadValue(const aStorage: IddConfigStorage); override;
  function ControlHeight(aParent: TWinControl): Integer; override;
  procedure GetValueFromControl; override;
  function LabelWidth(aParent: TWinControl): Integer; override;
  function MinWidth(aParent: TWinControl): Integer; override;
  procedure SetValueToControl(aDefault: Boolean); override;
 end;

 TddContainerConfigItem = class(TddGroupConfigItem)
 private
  f_InCreate: Boolean;
  f_Left: Integer;
  f_MaxLeft: Integer;
  f_LastIndex: Integer;
  function GetCaseIndex: Integer;
  procedure ConstructSubItems(aLeft, aMaxLeft: Integer);
  procedure DestroySubItems;
  procedure OnClick(Sender: TObject);
  procedure SetValueToSubitems(aDefault: Boolean);
 protected
  procedure AfterConstruct(var aLeft, aMaxLeft, aTop: Integer; theControl: TControl; theLabel: TvtLabel); override;
  procedure BeforeConstruct(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl); override;
  function ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl; override;
  function pm_GetBooleanValue: Boolean; override;
  function pm_GetLabeled: Boolean; override;
  function MayBeRequired: Boolean; override;
 public
  constructor Create(const aAlias, aCaption: AnsiString; const aDefaultValue: TddConfigValue; aMasterItem: TddBaseConfigItem =
      nil); override;
  procedure AddCase(aCaption: String);
  function Add(aItem: TddBaseConfigItem): TddBaseConfigItem; override;
  function ControlHeight(aParent: TWinControl): Integer; override;
  procedure GetValueFromControl; override;
  function LabelWidth(aParent: TWinControl): Integer; override;
  procedure LoadValue(const aStorage: IddConfigStorage); override;
  procedure SaveValue(const aStorage: IddConfigStorage); override;
  procedure SetValueToControl(aDefault: Boolean); override;
 end;


implementation

uses
 Math, Graphics, ExtCtrls, Dialogs, FileCtrl, DateUtils, StrUtils, CheckLst,
 l3Types, l3Bits,
 l3ValueMap,
 l3String,
 {$IfDef Nemesis}
 l3Defaults,
 {$EndIf}

 {$IfDef ddUseVTSpin}
 vtSpin,
 {$ELSE}
 Spin,
 {$EndIf ddUseVTSpin}

 {$IFDEF RxLibrary}
 RxCombos,
 rxDialogs,
 {$ENDIF}

 ddUtils,
 vtPanel,
 vtRadioButton,
 ddStreamUtils,
 ddAppConfig,
 ddAppConfigRes,
 vtGroupBox,
 ddAppConfigTypesRes,

 l3CBase,
 vtCheckBox,
 vtButton,
 ctTypes,
 Windows;

{
******************************* TddAppConfigNode *******************************
}
constructor TddAppConfigNode.Create(const aAlias, aCaption: AnsiString);
begin
  inherited;
  f_Items := Tl3ObjectRefList.Make;
  f_LabelTop := True;
end;

function TddAppConfigNode.AddItem(aItem: TddBaseConfigItem): TddBaseConfigItem;
begin
 Result := aItem;
 REsult.OnChange := ItemChanged;
 if (Result is TddVisualConfigItem) then
  TddVisualConfigItem(Result).LabelTop := LabelTop;
 f_Items.Add(Result);
 FreeAndNil(aItem);
end;

procedure TddAppConfigNode.Assign(P: TPersistent);
var
  l_AC: TddAppConfigNode absolute P;
  i: Integer;
  l_Item: TddBaseConfigItem;
begin
 if P is TddAppConfigNode then
 begin
  inherited;
  f_Items.Clear;
  for i := 0 to Pred(l_AC.Count) do
  begin
   l_Item := l_AC.Items[i].Clone;
   try
    f_Items.Add(l_Item);
   finally
    FreeAndNil(l_Item);
   end;
  end
 end
 else
  inherited;
end;

procedure TddAppConfigNode.Cleanup;
begin
  FreeAndNil(f_Items);
  inherited;
end;

procedure TddAppConfigNode.DoClearControls;
var
  i: Integer;
begin
  for i := 0 to Pred(Count) do
   Items[i].ClearControl;
  for i := 0 to Pred(ChildrenCount) do
   IddConfigNode(Children[i]).ClearControls;
end;

function TddAppConfigNode.Clone(anOwner: TObject = nil): Pointer;
  {virtual;}
  {-}
begin
 Result := TddAppConfigNode.Create(Alias, Caption);
 TddAppConfigNode(Result).Assign(Self);
end;

function TddAppConfigNode.DoCreateFrame(aOwner: TComponent; aTag: Integer):
    TCustomFrame;
var
  l_MaxLeft: Integer;
  l_Top: Integer;
  l_Left: Integer;
  j, l_LJCount: Integer;
  l_CI: TddVisualConfigItem;
  l_Control, l_PrevControl: TControl;
  l_ButtonLeft: Integer;
  l_ButtonHeight: Integer;
  l_I: TddBaseConfigItem;
  //l_P: TvtPanel;
  l_ScrollBox: TScrollBox;
  l_FirstButton: Boolean; 

//  procedure CheckHeight(aHeight : Integer);
//  begin
//   if not IsVerticalScrollBar and (aHeight > Result.ClientHeight) then
//    ScrollBars := ssVertical;
//    raise EddConfigError.CreateFmt('Элемент "%s" (%s) выходит за границу формы',
//     [l_CI.Alias, l_CI.Caption]);
//  end;

begin
  Result := TFrame.Create(aOwner);
  Result.Name := Alias;
  Result.Parent := aOwner as TWinControl;
  Result.Align := alClient;
  Result.Tag := aTag;
  Result.HelpContext := HelpContext;

//  l_P := TvtPanel.Create(aOwner);
//  Result.InsertControl(l_P);
//  l_P.Align := alClient;
//  l_P.BorderStyle := bsNone;
//  l_P.BevelOuter := bvNone;
//  l_P.BevelInner := bvNone;
//  {$IfDef Nemesis}
//  l_P.Color := cGarant2011BackColor;
//  {$EndIf};
  l_ScrollBox := TScrollBox.Create(aOwner);
  Result.InsertControl(l_ScrollBox);
  with l_ScrollBox do
  begin
   Align := alClient;
   BorderStyle := bsNone;
   {$IfDef Nemesis}
   Color := cGarant2011BackColor;
   {$EndIf};
  end;

  l_ButtonLeft := Result.ClientWidth;
  l_ButtonHeight := 0;
  l_MaxLeft := RequiredSignWidth(Result);
  l_LJCount := 0;
  for j := 0 to Pred(Count) do
  begin
   l_CI := Items[j];
   if l_CI is TddGroupConfigItem then
    l_MaxLeft := Max(l_MaxLeft, TddGroupConfigItem(l_CI).ItemsLabelWidth(Result, l_LJCount))
   else
   if l_CI.Labeled and not l_CI.LabelTop then
   begin
    l_MaxLeft := Max(l_MaxLeft, l_CI.LabelWidth(Result));
    if not l_CI.LabelTop then
     Inc(l_LJCount);
   end;
  end;
  { TODO -oДмитрий Дудко -cОшибка :
  Выравнивать элементы по ширине метки нужно только в том случае,
  если есть несколько элементов с горизонтальным расположением элемента }
    if l_LJCount < 2 then
     l_MaxLeft := 0
    else
     Inc(l_MaxLeft, ConfigItemLeft);

  // Здесь добавляем контролы
  l_FirstButton := True;
  l_Top:= ConfigItemTop;
  l_PrevControl := nil;
  for j := 0 to Pred(Count) do
  begin
   l_CI := Items[j];
   l_Left := ConfigItemLeft;
   l_I := l_CI.MasterItem;
   while l_I <> nil do
   begin
    Inc(l_Left, ConfigItemLeft);
    l_I := l_I.MasterItem;
   end;
   if l_CI.Visible then // Правильнее засунуть это внутрь CreateControl
    l_Control := l_CI.CreateControl(l_Left, l_MaxLeft, l_Top, l_ScrollBox{l_P}{Result})
   else
    l_Control := nil;
   if l_Control <> nil then
   begin
    if l_Control.HelpContext = 0 then
     l_Control.HelpContext := HelpContext;
    // кнопка в правом нижнем
    if (l_CI is TddButtonConfigItem) then       
    begin
     if (TddButtonConfigItem(l_CI).Place = dd_bpBottomRight) then
     begin
      l_Control.Top := Result.ClientHeight - l_Control.Height - ConfigItemTop;
      if (l_Control.Parent is TScrollBox) and l_FirstButton
       then l_Control.Left := l_ButtonLeft - l_Control.Width - 2 * ConfigItemTop - c_ScrollBarWidth
       else l_Control.Left := l_ButtonLeft - l_Control.Width - 2 * ConfigItemTop;
      l_FirstButton := False;
      l_ButtonLeft := l_Control.Left;
      l_ButtonHeight := l_Control.Height + ConfigItemTop;
     end
     else
     begin
      if (l_PrevControl <> nil) and (l_PrevControl is TvtButton) then
      begin
       l_Control.Top := l_PrevControl.Top;
       l_Control.Left := l_PrevControl.Left + l_PrevControl.Width + ConfigItemTop;
       l_Top := l_Control.Height + l_Control.Top;
       Inc(l_Top, ConfigItemTop);
      end;
     end;
    end
    else // остальные компоненты
    begin
     l_Top := l_CI.ControlHeight(l_ScrollBox{l_P}) + l_Control.Top;
     Inc(l_Top, ConfigItemTop);
    end;
    l_PrevControl := l_Control;
   end;
   //CheckHeight(l_ButtonHeight + l_Top);
  end; // for j

  for j := 0 to Pred(Count) do
  begin
   l_CI := Items[j];
   l_Control := l_CI.Control;

   if l_Control <> nil then
    if (l_CI is TddButtonConfigItem) then
     if (TddButtonConfigItem(l_CI).Place = dd_bpBottomRight) then
      l_Control.Top := Max(l_Control.Top, l_Top + ConfigItemTop);
  end;
end;

procedure TddAppConfigNode.DoFrameSize(aParent: TWinControl; out aHeight, aWidth:
        Integer);
var
  I              : Integer;
  l_ButtonHeight : Integer;
  l_ButtonWidth  : Integer;

  procedure _ItemSize(aCI: TddVisualConfigItem; out aH, aW: Integer);
  var
   l_LW, l_CW: Integer;
   l_Delta: Integer;
   l_I: TddBaseConfigItem;
  begin
   l_Delta := 0;
   l_I := aCI.MasterItem;
   while l_I <> nil do // Вычисляем сдвиг относительно Хозяина
   begin
    Inc(l_Delta, ConfigItemLeft);
    l_I := l_I.MasterItem;
   end; // while l_I <> nil

    l_LW := IfThen(aCI.Labeled, aCI.LabelWidth(aParent), 0); // метка

    l_CW := aCI.MinWidth(aParent) + RequiredSignWidth(aParent); // контрол

   if aCI.Labeled and (not aCI.LabelTop) then
    Inc(l_CW, l_LW+ConfigItemLeft);

   aW := Max(aW, l_CW);

   Inc(aW, l_Delta);
   Inc(aH, aCI.FullControlHeight[aParent]);
  end;

begin
  l_ButtonHeight := 0;
  l_ButtonWidth := 0;
  aHeight := 0;
  aWidth := 0;

  for i := 0 to Pred(Count) do
  begin
   // учитываем кнопки в правом нижнем
   if (Items[i] is TddButtonConfigItem) and
    (TddButtonConfigItem(Items[i]).Place = dd_bpBottomRight) then
   begin
    // учитываем только первую, потому что кнопки размещаются на одной линии
    if (l_ButtonHeight = 0) then
    begin
     l_ButtonHeight := Items[i].ControlHeight(aParent) + ConfigItemTop;
     Inc(aHeight, l_ButtonHeight);
    end;
    // ширина вытянутых в линию кнопок
    Inc(l_ButtonWidth, Items[i].MinWidth(aParent) + ConfigItemLeft);
   end
   // все остальные
   else
   begin
    _ItemSize(Items[i], aHeight, aWidth);
    Inc(aHeight, ConfigItemTop);
   end;
  end; // for i
  aHeight := aHeight + 2*ConfigItemTop;
  aWidth := Max(aWidth, l_ButtonWidth);
end;

function TddAppConfigNode.DoIsItem(aItem : TObject) : Boolean;
// override;
var
 lIndex : Integer;
begin
 Result := False;
 for lIndex := 0 to Pred(Count) do
  if Items[lIndex].IsSame(aItem) then
  begin
   Result := True;
   Break;
  end;
end;

procedure TddAppConfigNode.DoGetControlValues;
var
 I: Integer;
 l_Item: TddVisualConfigItem;
begin
  for i := 0 to Pred(Count) do
  begin
   with Items[i]do
   begin
    if Visible then
    begin
     Lock;
     GetValueFromControl;
     UnLock;
    end
   end
  end; // for i
  for i := 0 to Pred(ChildrenCount) do
   IddConfigNode(Children[i]).GetControlValues;
end;

function TddAppConfigNode.GetCount: Integer;
begin
  Assert(f_Items <> nil);
  Result := f_Items.Count
end;

function TddAppConfigNode.GetItem(Index: Integer): TddVisualConfigItem;
begin
  Result := TddVisualConfigItem(f_Items.Items[index]);
end;

function TddAppConfigNode.GetItemByIndex(Index: Integer): TddVisualConfigItem;
var
  i: Integer;
  l_Item: TddVisualConfigItem;
begin
  Result := nil;
  for i := 0 to Pred(f_Items.Count) do
  begin
   l_Item := TddVisualConfigItem(f_Items.Items[i]);
   if l_Item.AbsoluteIndex = Index then
   begin
    Result := l_Item;
    break;
   end;
  end;
end;

function TddAppConfigNode.HasValue(const anAlias: AnsiString; out theItem: TddBaseConfigItem): Boolean;
var
 i: Integer;
begin
 Result := AnsiCompareStr(Alias, anAlias) = 0;
 if Result then
  theItem := Self
 else
 begin
  for i := 0 to Pred(Count) do
  begin
   Result := Items[i].HasValue(anAlias, theItem);
   if Result then
    break;
  end;
  if not Result then
   for i := 0 to Pred(ChildrenCount) do
   begin
    Result := Children[i].HasValue(anAlias, theItem);
    if Result then
     break;
   end;
 end;
end;

function TddAppConfigNode.IsRequired(out aMessage: AnsiString): Boolean;
var
 i: Integer;
begin
 Result := False;
 aMessage := '';
 for i := 0 to Pred(Count) do
 begin
  if Items[i].IsRequired then
  begin
   Result := True;
   aMessage := aMessage + Items[i].Caption;
  end;
 end;
end;

function TddAppConfigNode.pm_GetAsBoolean(const anAlias: String): Boolean;
begin
 Result := ItemByAlias[anAlias].Value.AsBoolean;
end;

function TddAppConfigNode.pm_GetAsDateTime(const anAlias: String): TDateTime;
begin
 Result := ItemByAlias[anAlias].Value.AsDateTime;
end;

function TddAppConfigNode.pm_GetAsInteger(const anAlias: String): Integer;
begin
 Result := ItemByAlias[anAlias].Value.AsInteger;
end;

function TddAppConfigNode.pm_GetAsObject(const anAlias: String): TObject;
begin
 Result := ItemByAlias[anAlias].Value.AsObject;
end;

function TddAppConfigNode.pm_GetAsString(anAlias: String): String;
begin
 Result := ItemByAlias[anAlias].Value.AsString;
end;

function TddAppConfigNode.pm_GetItemByAlias(anAlias: String): TddBaseConfigItem;
var
 l_Obj: TddBaseConfigItem;
begin
 if HasValue(anAlias, l_Obj) then
  Result := l_Obj
 else
  raise EddConfigError.CreateFmt(str_PropertyAbsent.AsStr, [anAlias]);;
end;

procedure TddAppConfigNode.pm_SetAsBoolean(const anAlias: String; const aValue: Boolean);
var
 l_Value: TddConfigValue;
 l_Item: TddBaseConfigItem;
begin
 l_Item := ItemByAlias[anAlias];
 l_Value := l_Item.Value;
 if l_Value.Kind = dd_vkBoolean then
 begin
  l_Value.AsBoolean := aValue;
  l_Item.Value := l_Value;
 end
 else
  EddConfigError.CreateFmt(str_DifferentType.AsStr, [Alias]);
end;

procedure TddAppConfigNode.pm_SetAsDateTime(const anAlias: String; const aValue: TDateTime);
var
 l_Value: TddConfigValue;
 l_Item: TddBaseConfigItem;
begin
 l_Item := ItemByAlias[anAlias];
 l_Value := l_Item.Value;
 if l_Value.Kind = dd_vkDateTime then
 begin
  l_Value.AsDateTime := aValue;
  l_Item.Value := l_Value;
 end
 else
  EddConfigError.CreateFmt(str_DifferentType.AsStr, [Alias]);

end;

procedure TddAppConfigNode.pm_SetAsInteger(const anAlias: String; const aValue: Integer);
var
 l_Value: TddConfigValue;
 l_Item: TddBaseConfigItem;
begin
 l_Item := ItemByAlias[anAlias];
 l_Value := l_Item.Value;
 if l_Value.Kind = dd_vkInteger then
 begin
  l_Value.AsInteger := aValue;
  l_Item.Value := l_Value;
 end
 else
  EddConfigError.CreateFmt(str_DifferentType.AsStr, [Alias]);
end;

procedure TddAppConfigNode.pm_SetAsObject(const anAlias: String; const aValue: TObject);
var
 l_Value: TddConfigValue;
 l_Item: TddBaseConfigItem;
begin
 l_Item := ItemByAlias[anAlias];
 l_Value := l_Item.Value;
 if l_Value.Kind = dd_vkObject then
 begin
  l_Value.AsObject := aValue;
  l_Item.Value := l_Value;
 end
 else
  EddConfigError.CreateFmt(str_DifferentType.AsStr, [Alias]);
end;

procedure TddAppConfigNode.pm_SetAsString(anAlias: String; const aValue: String);
var
 l_Value: TddConfigValue;
 l_Item: TddBaseConfigItem;
begin
 l_Item := ItemByAlias[anAlias];
 l_Value := l_Item.Value;
 if l_Value.Kind = dd_vkString then
 begin
  l_Value.AsString := aValue;
  l_Item.Value := l_Value;
 end
 else
  EddConfigError.CreateFmt(str_DifferentType.AsStr, [Alias]);
end;

procedure TddAppConfigNode.pm_SetItems(const Value: Tl3ObjectRefList);
begin
  f_Items.Assign(Value);
end;

procedure TddAppConfigNode.pm_SetLabelTop(const aValue: Boolean);
var
 i: Integer;
begin
 if f_LabelTop <> aValue then
 begin
  f_LabelTop := aValue;
  for i := 0 to Pred(Count) do
   Items[i].LabelTop := f_LabelTop;
 end; // f_LabelTop <> aValue
end;

procedure TddAppConfigNode.pm_SetChanged(aValue: Boolean);
var
 i: Integer;
begin
 inherited;
 for i := 0 to Pred(Count) do
  Items[i].Changed := aValue;
end;

function TddAppConfigNode.pm_GetChanged: Boolean;
var
 i: Integer;
begin
 Result := inherited pm_GetChanged;
 if not Result then
  for i := 0 to Pred(Count) do
   if Items[i].Changed then
   begin
    Result := true;
    break
   end;
end;


procedure TddAppConfigNode.DoResetToDefault;
var
  i: Integer;
begin
  for i := 0 to Pred(f_Items.Count) do
   TddVisualConfigItem(f_Items.Items[i]).ResetToDefault;
  for i := 0 to Pred(ChildrenCount) do
    IddConfigNode(Children[i]).ResetToDefault;
end;

procedure TddAppConfigNode.LoadValue(const aStorage: IddConfigStorage);
var
  i: Integer;
begin
  for i := 0 to Pred(Count) do
  begin
   aStorage.Section := Alias;
   Items[i].Load(aStorage);
  end; // for i
  for i := 0 to Pred(ChildrenCount) do
   Children[i].Load(aStorage);
end;

procedure TddAppConfigNode.SaveValue(const aStorage: IddConfigStorage);
var
  i: Integer;
begin
  for i := 0 to Pred(f_Items.Count) do
  begin
    aStorage.Section := Alias;
    Items[i].Save(aStorage);
  end; // for i
  for i := 0 to Pred(ChildrenCount) do
    Children[i].Save(aStorage);
end;

procedure TddAppConfigNode.DoSetControlValues(aDefault: Boolean);
var
  I: Integer;
  l_Item: TddVisualConfigItem;
begin
  for i := 0 to Pred(Count) do
  begin
   l_Item := Items[i];
   if l_Item.Control <> nil then
   begin
    l_Item.Lock;
    l_Item.SetValueToControl(aDefault);
    l_Item.UnLock;
   end; // l_Item.Control <> nil
  end;
  for i := 0 to Pred(ChildrenCount) do
   IddConfigNode(Children[i]).SetControlValues(aDefault);
end;

{
***************************** TddBooleanConfigItem *****************************
}
constructor TddBooleanConfigItem.Create(const aAlias, aCaption: AnsiString; const aDefaultValue: TddConfigValue;
 aMasterItem: TddBaseConfigItem = nil);
begin
  inherited Create(aAlias, aCaption, aDefaultValue, aMasterItem);
  f_Value.Kind := dd_vkBoolean;
  Labeled := False;
end;

function TddBooleanConfigItem.ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl;
{1 Переключатель }
begin
  Result := TvtCheckBox.Create(aParent);
  TvtCheckBox(Result).Caption := Caption;
  Result.Parent := aParent;
  Result.Left := aLeft;
  Result.Top := aTop;
  Result.Width := MinWidth(aParent); //aParent.ClientWidth - aLeft -2*ConfigItemLeft;
  if Hint <> '' then
  begin
   TvtCheckBox(Result).Hint := Hint;
   TvtCheckBox(Result).ShowHint := True;
  end;
  TvtCheckBox(Result).OnClick := OnClick;
end;

function TddBooleanConfigItem.ControlHeight(aParent: TWinControl): Integer;
begin
  with TvtCheckBox.Create(nil) do
  try
   Parent := aParent;
   Result := Height;
  finally
   Free;
  end;
end;

function TddBooleanConfigItem.pm_GetBooleanValue: Boolean;
begin
  if Control <> nil then
  begin
   assert(Control Is TvtCheckBox, Control.ClassName);
   Result := (Control as TvtCheckBox).Checked
  end 
  else
   Result := inherited pm_GetBooleanValue;
end;

function TddBooleanConfigItem.pm_GetFullControlHeight(aParent: TWinControl):
        Integer;
begin
  Result := ControlHeight(aParent);
end;

procedure TddBooleanConfigItem.GetValueFromControl;
begin
  assert(Control Is TvtCheckBox, Control.ClassName);
  BooleanValue := (Control as TvtCheckBox).Checked;
end;

procedure TddBooleanConfigItem.LoadValue(const aStorage: IddConfigStorage);
begin
  BooleanValue := aStorage.ReadBool(Alias, DefaultValue.AsBoolean);
end;

function TddBooleanConfigItem.MayBeRequired: Boolean;
begin
 Result := False;
end;

function TddBooleanConfigItem.MinWidth(aParent: TWinControl): Integer;
var
 l_Form: TForm;
begin
  if Caption = '' then
   Result := 40
  else
  begin
   Result := 40 + GetCanvas(aParent).TextWidth(Caption)+ConfigItemLeft;
  end; 
end;

procedure TddBooleanConfigItem.OnClick(Sender: TObject);
begin
  assert(Sender Is TvtCheckBox, Sender.ClassName);
  ChangeSlaveStatus((Sender as TvtCheckBox).Checked);
  if inherited pm_GetBooleanValue <> (Sender as TvtCheckBox).Checked then
   Changed := True;
end;

function TddBooleanConfigItem.pm_GetRequired: Boolean;
begin
 Result := False;
end;

procedure TddBooleanConfigItem.pm_SetRequired(aValue: Boolean);
begin
 raise EddConfigError.CreateFmt('Значение элемента %s не может быть обязательно к заполнению', [ClassName]);
end;

procedure TddBooleanConfigItem.SaveValue(const aStorage: IddConfigStorage);
begin
  aStorage.WriteBool(Alias, BooleanValue);
end;

procedure TddBooleanConfigItem.SetValueToControl(aDefault: Boolean);
begin
  assert(Control Is TvtCheckBox, Control.ClassName);
  if aDefault then
   (Control as TvtCheckBox).Checked := DefaultValue.AsBoolean
  else
   (Control as TvtCheckBox).Checked := Value.AsBoolean;
  { TODO -oNarry -cРазвитие : нужно реагировать на доступность повелителя }
  ChangeSlaveStatus(BooleanValue);
end;

{
*************************** TddRadioGroupConfigItem ****************************
}
constructor TddRadioGroupConfigItem.Create(const aAlias, aCaption: AnsiString; const aDefaultValue: TddConfigValue;
 aMasterItem: TddBaseConfigItem = nil);
begin
  inherited Create(aAlias, aCaption, aDefaultValue, aMasterItem);
  FItems := TStringList.Create;
  LabelTop := True;
  Labeled := False;
  f_MaxCount := 32;
end;

procedure TddRadioGroupConfigItem.Add(aItem: String);
begin
 if FItems.Count < f_MaxCount then
  FItems.Add(aItem)
 else
  raise EListError.CreateFmt('Превышен размер списка (%d)', [f_MaxCount]);
end;

procedure TddRadioGroupConfigItem.Assign(P: TPersistent);
begin
 if P is TddRadioGroupConfigItem then
  begin
   inherited;
   Self.FItems.Assign(TddRadioGroupConfigItem(P).FItems);
  end
 else
  inherited;
end;

procedure TddRadioGroupConfigItem.Cleanup;
begin
  FreeAndNil(FItems);
  inherited;
end;

function TddRadioGroupConfigItem.ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl;
begin
  Result := TRadioGroup.Create(aParent);
  Result.Parent := aParent as TWinControl;
  Result.Left := aLeft;
  Result.Top := aTop;
  if aParent is TScrollBox
   then Result.Width := aParent.ClientWidth - aLeft - ConfigItemRight - c_ScrollBarWidth
   else Result.Width := aParent.ClientWidth - aLeft - ConfigItemRight;
  Result.Height := ControlHeight(aParent);
  TRadioGroup(Result).Items := FItems;
  TRadioGroup(Result).Caption := Caption;
  TRadioGroup(Result).OnClick := DoOnChange;
end;

function TddRadioGroupConfigItem.ControlHeight(aParent: TWinControl): Integer;
begin
  Result := GetCanvas(aParent).TextHeight('A');
  Inc(Result, (FItems.Count+2)*Result);
end;

procedure TddRadioGroupConfigItem.GetValueFromControl;
begin
  IntegerValue := TRadioGroup(Control).ItemIndex;
end;

procedure TddRadioGroupConfigItem.pm_SetLabelTop(aValue: Boolean);
begin
  f_LabelTop := aValue
end;

procedure TddRadioGroupConfigItem.pm_SetMaxCount(const Value: Integer);
begin
 f_MaxCount := Min(32, Value);
end;

procedure TddRadioGroupConfigItem.SetValueToControl(aDefault: Boolean);
var
  I: Integer;
begin
  if aDefault then
   i := DefaultValue.AsInteger
  else
   i := IntegerValue;
  TRadioGroup(Control).ItemIndex := i;
end;

procedure TddRadioGroupConfigItem.DoOnChange(Sender: TObject);
begin
 Changed := True;
end;

{
****************************** TddGroupConfigItem ******************************
}
constructor TddGroupConfigItem.Create(const aAlias, aCaption: AnsiString; const aDefaultValue: TddConfigValue;
 aMasterItem: TddBaseConfigItem = nil);
begin
 inherited Create(aAlias, aCaption, aDefaultValue, aMasterItem);
 FSubItems := TObjectList.Create;
 Labeled := False;
 ShowCaption := True;
end;

function TddGroupConfigItem.ItemsLabelWidth(aParent: TWinControl; var aLeftLabeled: Integer): Integer;
var
 lIndex, l_Index2 : Integer;
 lItem  : TddVisualConfigItem;
begin
 Result := 0;
 for lIndex := 0 to Pred(FSubItems.Count) do
 begin
  lItem := TddVisualConfigItem(FSubItems[lIndex]);
  if lItem is TddGroupConfigItem then
   Result := Max(Result, TddGroupConfigItem(lItem).ItemsLabelWidth(aParent, aLeftLabeled))
  else
   if lItem.Labeled and not lItem.LabelTop then
   begin
    Result := Max(Result, ConfigItemLeft+lItem.LabelWidth(aParent));
    Inc(aLeftLabeled);
   end;
 end;
end;

function TddGroupConfigItem.Add(aItem: TddBaseConfigItem): TddBaseConfigItem;
begin
 FSubItems.Add(aItem);
 aItem.OnChange := DoOnChange;
 if (aItem is TddVisualConfigItem) then
  TddVisualConfigItem(aItem).LabelTop := LabelTop;
 Result := aItem;
end;

procedure TddGroupConfigItem.Cleanup;
begin
  FreeAndNil(FSubItems);
  inherited;
end;

procedure TddGroupConfigItem.ClearControl;
var
  i: Integer;
begin
  for i := 0 to Pred(Count) do
   SubItem[i].ClearControl;
  inherited;
end;

function TddGroupConfigItem.HeaderHeight(aParent : TWinControl) : Integer;
var
  l_Label: TStaticText;
begin
  {$IFNDEF Nemesis}
  if (Caption = '') or not ShowCaption then
   Result := 14 // magicHeight
  {$ELSE}
  if (Caption = '') then
   Result := 14
  {$ENDIF}
  else
  begin
   l_Label := TStaticText.Create(nil);
   try
    l_Label.Parent := aParent;
    l_Label.Caption := Caption;
    Result := l_Label.Height + ConfigItemTop;
   finally
    FreeAndNil(l_Label);
   end;
  end;
end;

function TddGroupConfigItem.ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl;
var
  I: Integer;
  l_Height: Integer;

 function lp_FixCaption(const aCaption: String): String;
 begin
  Result := aCaption;
  if Result <> '' then
  begin
   if Result[1] <> ' ' then
    Insert(' ', Result, 1);
   if Result[Length(Result)] <> ' ' then
    Result := Result + ' ';
  end;
 end;

begin
 if Count > 0 then
 begin
  Result := TvtGroupBox.Create(aParent);
  {$IFNDEF Nemesis}  
  if ShowCaption then
   TvtGroupBox(Result).Caption := lp_FixCaption(Caption)
  else
   TvtGroupBox(Result).Caption := '';
  {$ELSE} 
  TvtGroupBox(Result).Caption := lp_FixCaption(Caption);
  {$ENDIF}
  aParent.InsertControl(Result);
  Result.Left := aLeft;
  Result.Top := aTop;
  if aParent is TScrollBox
   then Result.Width := aParent.ClientWidth - ConfigItemRight - aLeft - c_ScrollBarWidth
   else Result.Width := aParent.ClientWidth - ConfigItemRight - aLeft;
  Result.Height := ControlHeight(aParent);
  aTop := HeaderHeight(aParent);
  if aMaxLeft < aLeft then
   aMaxLeft := aLeft;
  for i := 0 to Pred(Count) do
  begin
   SubItem[i].CreateControl(ConfigItemLeft, aMaxLeft-aLeft, aTop, Result as TWinControl);
   Inc(aTop, SubItem[i].FullControlHeight[Result as TWinControl]+ConfigItemTop);
  end;// for i
 end
 else
  Result := nil;
end;

function TddGroupConfigItem.ControlHeight(aParent: TWinControl): Integer;
var
  I: Integer;
begin
 Result := HeaderHeight(aParent) + ConfigItemTop;

 for i := 0 to Pred(Count) do
  Inc(Result, SubItem[i].FullControlHeight[aParent]+ ConfigItemTop);
end;

function TddGroupConfigItem.pm_GetChanged: Boolean;
var
 i: Integer;
begin
 Result := inherited pm_GetChanged;
 if not Result then
  for i := 0 to Pred(Count) do
   if SubItem[i].Changed then
   begin
    Result := True;
    break
   end;
end;


function TddGroupConfigItem.GetCount: Integer;
begin
  if (fSubItems = nil) then
   Result := 0
  else
   Result := FSubItems.Count;
end;

function TddGroupConfigItem.pm_GetFullControlHeight(aParent: TWinControl): Integer;
begin
  Result := ControlHeight(aParent);
end;

function TddGroupConfigItem.GetSubItem(Index: Integer): TddVisualConfigItem;
begin
  Assert(FSubItems <> nil);
  Result := TddVisualConfigItem(FSubItems.Items[Index]);
end;

procedure TddGroupConfigItem.GetValueFromControl;
var
  I: Integer;
begin
  for i := 0 to Pred(Count) do
  begin
   SubItem[i].Lock;
   SubItem[i].GetValueFromControl;
   SubItem[i].Unlock;
   if SubItem[i].Changed then
    Changed := True;
  end; // for i
end;

function TddGroupConfigItem.LabelWidth(aParent: TWinControl): Integer;
var
  I: Integer;
  l_MI: TddBaseConfigItem;
begin
  Result := 0;
  for i := 0 to Pred(Count) do
   if SubItem[i].Labeled then
    Result := Max(Result, SubItem[i].LabelWidth(aParent));
  l_MI := MasterItem;
  while l_MI <> nil do
  begin
   Inc(Result, ConfigItemLeft);
   l_MI := l_MI.MasterItem;
  end; // while l_MI <> nil
  { TODO -oNarry -cРазвитие : По идее нужно создать TvtGroupBox и считать ширину метки именно на нем }
end;

procedure TddGroupConfigItem.LoadValue(const aStorage: IddConfigStorage);
var
  i: Integer;
begin
  for i := 0 to Pred(Count) do
   SubItem[i].Load(aStorage);
end;

function TddGroupConfigItem.MinWidth(aParent: TWinControl): Integer;
var
  i: Integer;
begin
 Result := High(Integer);
 for i := 0 to Pred(Count) do
  Result := Min(Result, SubItem[i].MinWidth(aParent));
end;


procedure TddGroupConfigItem.Reset;
var
  I: Integer;
begin
  for i := 0 to Pred(Count) do
   SubItem[i].Reset;
end;

procedure TddGroupConfigItem.SaveValue(const aStorage: IddConfigStorage);
var
  i: Integer;
begin
  for i := 0 to Pred(Count) do
   SubItem[i].Save(aStorage);
end;

procedure TddGroupConfigItem.pm_SetEnabled(aValue: Boolean);
var
  I: Integer;
begin
  inherited;
  if FSubItems <> nil then
   for i := 0 to Pred(Count) do
    SubItem[i].Enabled := aValue;
end;

procedure TddGroupConfigItem.SetValueToControl(aDefault: Boolean);
var
  I: Integer;
begin
  for i := 0 to Pred(Count) do
  begin
   SubItem[i].Lock;
   SubItem[i].SetValueToControl(aDefault);
   SubItem[i].Unlock;
  end;
end;

{
****************************** TddFontConfigItem *******************************
}
constructor TddFontConfigItem.Create(const aAlias, aCaption: AnsiString; const aDefaultValue: TddConfigValue;
 aMasterItem: TddBaseConfigItem = nil);
begin
  inherited Create(aAlias, aCaption, aDefaultValue, aMasterItem);
  // Создать объект для шрифта
  f_Value.Kind := dd_vkObject;
  f_Value.AsObject := TFont.Create;
end;

procedure TddFontConfigItem.AfterConstruct(var aLeft, aMaxLeft, aTop: Integer;
        theControl: TControl; theLabel: TvtLabel);
begin
  inherited AfterConstruct(aLeft, aMaxLeft, aTop, theControl, theLabel);
  (theControl as TvtPanel).CCaption := nil;
end;

function TddFontConfigItem.ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl;
var
  l_Panel: TvtPanel;
  l_Button: TvtButton;
begin
  Result := TvtPanel.Create(aParent);
  Result.Parent := aParent as TwinControl;
  Result.Left := aLeft;
  Result.Top := aTop;
  Result.Height := ControlHeight(aParent);
  if aParent is TScrollBox
   then Result.Width := aParent.ClientWidth - 2 * ConfigItemRight - c_ScrollBarWidth
   else Result.Width := aParent.ClientWidth - 2 * ConfigItemRight;
  (Result as TvtPanel).BevelOuter := bvNone;
  (Result as TvtPanel).CCaption := nil;

  l_Button := TvtButton.Create(Result);
  l_Button.Parent := Result as TWinControl;
  l_Button.Top := 2;
  l_Button.Left := Result.ClientWidth - l_Button.Width;
  (l_Button as TvtButton).Caption := str_ddcmSelectButton.AsStr;
  l_Button.Tag := AbsoluteIndex;
  l_Button.Name := Alias + '_Button';
  (l_Button as TvtButton).OnClick := FontButtonClick;

  l_Panel := TvtPanel.Create(Result);
  l_Panel.Parent := Result as TWinControl;
  l_Panel.Name := Alias + '_Example';
  l_Panel.Top := 2;
  l_Panel.Color := clWindow;
  l_Panel.Height := Result.Height-4;
  l_Panel.Width := Result.ClientWidth - l_Button.Width - ConfigItemLeft;
  l_Panel.BevelOuter := bvRaised;
  l_Panel.BevelInner := bvLowered;
  l_Panel.CCaption := str_ddcmFontExample.AsCStr;
end;

function TddFontConfigItem.ControlHeight(aParent: TWinControl): Integer;
begin
  with TvtButton.Create(aParent) do
  try
   Parent := aParent;
   Result := Height;
  finally
   Free;
  end;
  Inc(Result, 4); // Два пикселя сверху и снизу кнопки
end;

procedure TddFontConfigItem.FontButtonClick(Sender: TObject);
begin
  with TFontDialog.Create(nil) do
  try
   Font := ((Control as TvtPanel).Controls[1] as TvtPanel).Font;
   if Execute then
   begin
    ((Control as TvtPanel).Controls[1] as TvtPanel).Font := Font;
    Changed := True;
   end;
  finally
   Free;
  end;
end;

procedure TddFontConfigItem.GetValueFromControl;
var
 i: Integer;
 l_C: TControl;
begin
 for i := 0 to (Control as TvtPanel).ControlCount-1 do
  if (Control as TvtPanel).Controls[i] is TvtPanel then
  begin
   l_C := (Control as TvtPanel).Controls[i];
   break;
  end;
  TFont(ObjectValue).Assign((l_C as TvtPanel).Font);
  { TODO -oДимка -cРазвитие : Придумать как сравнивать шрифты }
  Changed := True;
end;

procedure TddFontConfigItem.LoadValue(const aStorage: IddConfigStorage);
begin
  with TFont(f_Value.AsObject), aStorage do
  begin
    Name := l3Str(ReadString(Alias+'.Name', TFont(DefaultValue.AsObject).Name));
    CharSet := ReadInteger(Alias+'.CharSet', TFont(DefaultValue.AsObject).CharSet);
    Color := ReadInteger(Alias+'.Color', TFont(DefaultValue.AsObject).Color);
    Size := ReadInteger(Alias+'.Size', TFont(DefaultValue.AsObject).Size);
    if ReadBool(Alias+'.Bold', fsBold in TFont(DefaultValue.AsObject).Style) then
     Style := Style + [fsBold];
    if ReadBool(Alias+'.Italic', fsItalic in TFont(DefaultValue.AsObject).Style) then
     Style := Style + [fsItalic];
    if ReadBool(Alias+'.Underline', fsUnderline in TFont(DefaultValue.AsObject).Style) then
     Style := Style + [fsUnderline];
    if ReadBool(Alias+'.Strikeout', fsStrikeout in TFont(DefaultValue.AsObject).Style) then
     Style := Style + [fsStrikeout];
  end;
end;

function TddFontConfigItem.MinWidth(aParent: TWinControl): Integer;
begin
  Result := 150;
end;

procedure TddFontConfigItem.SaveValue(const aStorage: IddConfigStorage);
begin
  with TFont(f_Value.AsObject), aStorage do
  begin
    WriteString(Alias+'.Name', Name);
    WriteInteger(Alias+'.CharSet', CharSet);
    WriteInteger(Alias+'.Color', Color);
    WriteInteger(Alias+'.Size', Size);
    WriteBool(Alias+'.Bold', fsBold in Style);
    WriteBool(Alias+'.Italic', fsItalic in Style);
    WriteBool(Alias+'.Underline', fsUnderline in Style);
    WriteBool(Alias+'.Strikeout', fsStrikeout in Style);
  end;
end;

procedure TddFontConfigItem.pm_SetEnabled(aValue: Boolean);
begin
  inherited;
end;

procedure TddFontConfigItem.SetValueToControl(aDefault: Boolean);
var
 i: Integer;
 l_C: TControl;
begin
 for i := 0 to (Control as TvtPanel).ControlCount-1 do
  if (Control as TvtPanel).Controls[i] is TvtPanel then
  begin
   l_C := (Control as TvtPanel).Controls[i];
   break;
  end;
  if aDefault then
   (l_C as TvtPanel).Font := TFont(DefaultValue.AsObject)
  else
   (l_C as TvtPanel).Font := TFont(ObjectValue);
end;

{
****************************** TddColorConfigItem ******************************
}
function TddColorConfigItem.ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl;
begin
  {$IFDEF RxLibrary}
  Result := TColorBox.Create(aParent);
  (Result as TColorBox).OnChange := DoOnChange;
  {$ELSE}
  { TODO -oДудко Дмитрий -cРазвитие : Создать связку из двух контролов - ComboBox и rкнопки }
  Result := nil;
  raise EddConfigError.Create('К сожалению, ColorConfigItem не реализован');
  {$ENDIF}
  Result.Parent := aParent as TWinControl;
  Result.Top := aTop;
  Result.Left := aLeft;
  if aParent is TScrollBox
   then Result.Width := aParent.ClientWidth - aLeft - ConfigItemRight - c_ScrollBarWidth
   else Result.Width := aParent.ClientWidth - aLeft - ConfigItemRight;
  {$IFDEF RxLibrary}
  (Result as TColorBox).Style := [cbStandardColors,cbExtendedColors,cbIncludeDefault];
  {$ENDIF}
end;

procedure TddColorConfigItem.GetValueFromControl;
begin
  {$IFDEF RxLibrary}
  IntegerValue := (Control as TColorBox).Selected;
  {$Else}
  Assert(false);
  {$ENDIF}
end;

procedure TddColorConfigItem.SetValueToControl(aDefault: Boolean);
begin
  {$IFDEF RxLibrary}
  if aDefault then
   (Control as TColorBox).Selected := DefaultValue.AsInteger
  else
   (Control as TColorBox).Selected := IntegerValue;
  {$Else}
  Assert(false);
  {$ENDIF}
end;

procedure TddColorConfigItem.DoOnChange(Sender: TObject);
begin
 Changed := True;
end;

{
*************************** TddMasterSlaveConfigItem ***************************
}
function TddMasterSlaveConfigItem.ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl;
var
 lLabel : TvtLabel;
begin
 Result := inherited ConstructControl(aLeft, aMaxLeft, aTop, aParent);
 if Assigned(Result) then
 begin
  // Удалим caption
  TvtGroupBox(Result).Caption := '';
  // Метка
  lLabel := TvtLabel.Create(Result);
  lLabel.Parent := TWinControl(Result);
  if Caption <> '' then
  lLabel.CCaption := l3CStr(' '+ Caption + ' ');
  lLabel.Left := ConfigItemLeft;
  // Список
  fComboBox := TvtComboBoxQS.Create(Result);
  with fComboBox do
  begin
   Parent := TWinControl(Result);
   Left := lLabel.Left + lLabel.Width + ConfigItemLeft;
   Width := Result.ClientRect.Right - Left - ConfigItemRight;
   Style := csDropDownList;
   OnChange := Self.OnChange;
   if fCaptions.Count > 0 then
   begin
    Items.Assign(fCaptions);
    ItemIndex := 0;
   end;
   ChangeItem;
  end;
 end;
end;

function TddMasterSlaveConfigItem.HeaderHeight(aParent : TWinControl): Integer;
var
 lComboBox : TvtComboBoxQS;
begin
 lComboBox := TvtComboBoxQS.Create(aParent);
 try
  lComboBox.Parent := aParent;
  Result := lComboBox.Height + ConfigItemTop;
 finally
  FreeAndNil(lComboBox);
 end;
end;

procedure TddMasterSlaveConfigItem.LoadValue(const aStorage: IddConfigStorage);
var
 lIndex : Integer;
begin
 // Прочитаем
 for lIndex := 0 to Pred(fListItems.Count) do
  TddBaseConfigItem(fListItems[lIndex]).LoadValue(aStorage);
end;

procedure TddMasterSlaveConfigItem.SaveValue(const aStorage: IddConfigStorage);
var
 lIndex : Integer;
begin
 // Запишием значения из визуальных элементов в элементы списка
 if fComboBox <> nil then
  UpdateDataItems(fComboBox.ItemIndex);
 // Сохраним
 for lIndex := 0 to Pred(fListItems.Count) do
  TddBaseConfigItem(fListItems[lIndex]).SaveValue(aStorage);
end;

function TddMasterSlaveConfigItem.FirstItem(aItemIndex : Integer) : Integer;
begin
 Result := aItemIndex * SubItems.Count;
end;

procedure TddMasterSlaveConfigItem.UpdateDataItems(aItemIndex : Integer);
var
 lSource : TddVisualConfigItem;
 lDest   : TddBaseConfigItem;
 lItem   : Integer;
 lIndex  : Integer;
begin
 if (aItemIndex = -1) or (aItemIndex > Pred(fComboBox.Items.Count)) then
  Exit;
 lItem := FirstItem(aItemIndex);
 for lIndex := 0 to Pred(fSubItems.Count) do
 begin
  lSource := SubItem[lIndex];
  lSource.GetValueFromControl;
  lDest := TddBaseConfigItem(fListItems[lIndex + lItem]);
  lDest.AssignValue(lSource.Value, True);
 end;
end;

procedure TddMasterSlaveConfigItem.ChangeItem;
begin
 UpdateDataItems(fPrevIndex);
 fPrevIndex := fComboBox.ItemIndex;
 AssignDataFromDetail;
end;

procedure TddMasterSlaveConfigItem.AssignDataFromDetail;
var
 lItem   : Integer;
 lIndex  : Integer;
 lDest   : TddVisualConfigItem;
 lSource : TddBaseConfigItem;
begin
 if fComboBox.ItemIndex = -1 then
  Exit;
 lItem := FirstItem(fComboBox.ItemIndex);
 for lIndex := 0 to Pred(SubItems.Count) do
 begin
  // Визуальный элемент
  lDest := TddVisualConfigItem(SubItems[lIndex]);
  // Элемент данных
  lSource := TddBaseConfigItem(fListItems[lIndex + lItem]);
  // Установим
  lDest.AssignValue(lSource.Value, True);
  // Отобразим
  lDest.SetValueToControl(False);
 end;
end;

procedure TddMasterSlaveConfigItem.OnChange(aSender: TObject);
begin
 ChangeItem;
end;

constructor TddMasterSlaveConfigItem.Create(const aAlias, aCaption: AnsiString; const aDefaultValue: TddConfigValue;
 aMasterItem: TddBaseConfigItem = nil);
begin
 inherited Create(aAlias, aCaption, aDefaultValue, aMasterItem);
 fListItems := Tl3ObjectRefList.Make;
 fCaptions := TStringList.Create;
 fPrevIndex := -1;
end;

function TddMasterSlaveConfigItem.CheckItem(const aAlias : String) : Boolean;
var
 lIndex : Integer;
begin
 Result := True;
 for lIndex := 0 to Pred(fListItems.Count) do
  if TddBaseConfigItem(fListItems[lIndex]).Alias = aAlias then
  begin
   Result := False;
   Break;
  end;
end;

function TddMasterSlaveConfigItem.AddAlias(const aAlias: String) : TddBaseConfigItem;
var
 lIndex : Integer;
 lTemp  : TddBaseConfigItem;
begin
 // Не определен ни один StructureItem
 if SubItems.Count = 0 then
  raise EddConfigError.Create('Прежде чем добавлять очередной идентификатор ' +
   'настройки нужно создать хотя бы один элемент в группе AddStructureItem.');
 // Проверим на уникальность
 if not CheckItem(aAlias) then
  raise EddConfigError.CreateFmt('Элемент и именем %s уже существует.',
   [aAlias]);
 // Проверим, что добавляемый элемент не выходит за пределы StructureItems
 lIndex := Succ(fListItems.Count mod SubItems.Count);
 if lIndex > SubItems.Count then
  raise EddConfigError.CreateFmt('Добавляемый элемент является %d, всего ' +
   'StructureItems определено %d.', [lIndex, SubItems.Count]);
 // Добавим новый элемент
 Result := TddBaseConfigItem.Create(aAlias, '', ddEmptyValue);
 // Скопируем параметры
 Result.Assign(TddBaseConfigItem(SubItems.Items[Pred(lIndex)]));
 Result.Alias := aAlias;
 // Добавим в список
 fListItems.Add(Result);
 // Уменьшим счетчик ссылок
 lTemp := Result;
 FreeAndNil(lTemp);
end;

procedure TddMasterSlaveConfigItem.AddCaption(const aCaption, aAliasPrefix:
        String);
{1 Задел на будущее. }
{{
На самом деле, можно предусмотреть возможность, 
когда добавление элемента в список автоматически
создает набор элементов по маске, это позволит
создавать и редактировать однотипные наборы свойств.
}
var
 lIndex : Integer;
begin
 // Проверим на уникальность
 lIndex := fCaptions.IndexOf(aCaption);
 if lIndex <> -1 then
  raise EddConfigError.CreateFmt('Элемент с именем %s уже существует.',
   [aCaption]);
 // Добавим в список
 fCaptions.Add(aCaption);
end;

procedure TddMasterSlaveConfigItem.AddStructureItem(aItem: TddBaseConfigItem);
{1 Добавляет элемент в SubItems }
{{
Каждый добавленный элемент является мнимым, 
т.е. не попадает в список конфигуратора и к нему нельзя обратиться 
по Alias (это свойство у них пусто)
}
begin
 SubItems.Add(aItem);
end;

procedure TddMasterSlaveConfigItem.Cleanup;
begin
 FreeAndNil(fCaptions);
 FreeAndNil(fListItems);
 inherited;
end;

procedure TddMasterSlaveConfigItem.SetValueToControl(aDefault: Boolean);
begin
  inherited;
  AssignDataFromDetail;
end;

{
**************************** TddComboBoxConfigItem *****************************
}
constructor TddComboBoxConfigItem.Create(const aAlias, aCaption: String;
        aDefaultValue: TddConfigValue; aValueMap: Il3ValueMap;
        aMasterItem: TddBaseConfigItem; aMasterIndex: Integer);
var
 l_Caption : AnsiString;
begin
  l_Caption := aCaption;
  if (aMasterItem <> nil) then
   if (aMasterItem.Caption = l_Caption) OR
      (aMasterItem.Caption = l_Caption + ':') then
    l_Caption := '';
  inherited Create(aAlias, l_Caption, aDefaultValue, aValueMap, aMasterItem);
  if f_ValueKind = dd_vkBoolean then
   Assert((aMasterIndex=-1),'Unsupported params');
  FDropDownCount := 8;
  FComboBoxStyle := csDropDownList;
  FMasterIndex := aMasterIndex;
  Labeled := True;
end;

function TddComboBoxConfigItem.pm_GetBooleanValue: Boolean;
begin
 if (f_ValueKind = dd_vkBoolean) or (FMasterIndex = -1) then
  Result := inherited pm_GetBooleanValue
 else
  if Control <> nil then
  begin
   Assert(Control Is TvtComboBoxQS, Control.ClassName);
   Result := TvtComboBoxQS(Control).ItemIndex <> FMasterIndex;
  end
  else
   Result := false;
end;

procedure TddComboBoxConfigItem.CheckLoadItems;
var
  lIndex : Integer;
  lItems : Il3StringsEx;
begin
 Assert(Control Is TvtComboBoxQS, Control.ClassName); 
 if (f_ValueMap <> nil) then
 begin
  if (TvtComboBoxQS(Control).Items.Count = 0) then
  begin
   // загрузим значения
   lItems := Tl3Strings.Make;
   try
    f_ValueMap.GetDisplayNames(lItems);
    try
     TvtComboBoxQS(Control).Items.Assign(lItems.Items);
     SetValueToControl(false);
    except
     on El3ValueMapValueNotFound do
     begin
      Value := DefaultValue;
      SetValueToControl(false);
     end;//on El3ValueMapValueNotFound
    end;//try..except
   finally
    lItems := nil;
   end;//try..finally
  end//TvtComboBoxQS(Control).Items.Count = 0
 end//f_ValueMap <> nil
 else
  // первая загрузка
 if (TvtComboBoxQS(Control).Items.Count = 0) and (fMapValues.Count > 0) then
 begin
  // загрузим значения
  for lIndex := 0 to Pred(fMapValues.Count) do
   TvtComboBoxQS(Control).Items.Add(l3CStr(fMapValues[lIndex].Caption));
  // установим текущее значение
  TvtComboBoxQS(Control).ItemIndex := TvtComboBoxQS(Control).Items.IndexOf(CalcDisplayName(Value));
 end;//TvtComboBoxQS(Control).Items.Count = 0
end;

function TddComboBoxConfigItem.Clone(anOwner: TObject = nil): Pointer;
  {virtual;}
  {-}
begin
 Result := TddComboBoxConfigItem.Create(Alias, Caption, DefaultValue, ValueMap, MasterItem, FMasterIndex);
 TddComboBoxConfigItem(Result).Assign(Self);
end;

function TddComboBoxConfigItem.ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl;
begin
 Control := TvtComboBoxQS.Create(aParent);
 with TvtComboBoxQS(Control) do
 begin
  Style := FComboBoxStyle;
  Parent := aParent;
  Top := aTop;
  Left := aLeft;
  if aParent is TScrollBox
   then Width := aParent.ClientWidth - aLeft - ConfigItemRight - c_ScrollBarWidth
   else Width := aParent.ClientWidth - aLeft - ConfigItemRight;
  OnChange := DoOnChange;
  CheckLoadItems;
  OnExit := Self.OnExit;
  DropDownCount := FDropDownCount;
 end;
 Result := Control;
end;

function TddComboBoxConfigItem.ControlHeight(aParent: TWinControl): Integer;
var
  lComboBox: TvtComboBoxQS;
begin
  lComboBox := TvtComboBoxQS.Create(nil);
  try
   lComboBox.Parent := aParent;
   Result := lComboBox.Height;
  finally
   FreeAndNil(lComboBox);
  end;
end;

procedure TddComboBoxConfigItem.DoExit;
begin
end;

procedure TddComboBoxConfigItem.GetValueFromControl;
begin
 Assert(Control Is TvtComboBoxQS, Control.ClassName); 
 Value := CalcValue(TvtComboBoxQS(Control).Text);
end;

procedure TddComboBoxConfigItem.OnExit(Sender : TObject);
begin
  DoExit;
end;

procedure TddComboBoxConfigItem.SelectValue(const aValue : Integer);
begin
 Assert(Control Is TvtComboBoxQS, Control.ClassName); 
 TvtComboBoxQS(Control).ItemIndex := aValue;
end;

procedure TddComboBoxConfigItem.SetComboBoxStyle(const Value: TComboBoxStyle);
begin
  FComboBoxStyle := Value;
  if Assigned(Control) then
  begin
   Assert(Control Is TvtComboBoxQS, Control.ClassName);
   TvtComboBoxQS(Control).Style := Value;
  end;//Assigned(Control)
end;

procedure TddComboBoxConfigItem.SetDropDownCount(const Value: Integer);
begin
  FDropDownCount := Value;
(*  if Assigned(Control) then
   TvtComboBoxQS(Control).DropDownCount := Value;*)
end;

procedure TddComboBoxConfigItem.SetValueToControl(aDefault : Boolean);
var
 l_Index: Integer;
 l_Name: String;
begin
 if aDefault then
  l_Name := CalcDisplayName(DefaultValue)
 else
  l_Name := CalcDisplayName(Value);
 Assert(Control Is TvtComboBoxQS, Control.ClassName); 
 l_Index := TvtComboBoxQS(Control).Items.IndexOf(l3CStr(l_Name));
 if l_Index <> -1 then
  SelectValue(l_Index)
 else
  TvtComboBoxQS(Control).Text := l3CStr(l_Name);
end;

procedure TddComboBoxConfigItem.DoOnChange(Sender: TObject);
begin
  if Control <> nil then
  begin
   Assert(Control Is TvtComboBoxQS, Control.ClassName); 
   ChangeSlaveStatus(TvtComboBoxQS(Control).ItemIndex <> FMasterIndex);
  end;
  Changed := True;
end;

function TddComboBoxConfigItem.DisplayNameContainer: Tl3Strings;
begin
 if Assigned(Control) then
 begin
  Assert(Control Is TvtComboBoxQS, Control.ClassName); 
  Result := TvtComboBoxQS(Control).Items;
 end
 else
  Result := nil;
end;

{ TddMapValueConfigItem }

{
**************************** TddMapValueConfigItem *****************************
}
constructor TddMapValueConfigItem.Create(const aAlias, aCaption: AnsiString; const aDefaultValue: TddConfigValue;
 aValueMap: Il3ValueMap = nil; aMasterItem: TddBaseConfigItem = nil);
begin
 inherited Create(aAlias, aCaption, aDefaultValue, aMasterItem);
 f_ValueMap := aValueMap;
 f_ValueKind := aDefaultValue.Kind;
 f_Value.Kind := aDefaultValue.Kind;
 fMapValues := TMapValues.Create(f_ValueKind);
end;

procedure TddMapValueConfigItem.AddMapValue(const aCaption : String; aValue : TddConfigValue);
begin
 Assert(f_ValueMap=Nil,'Il3ValueMap assigned. Use of AddMapValue disabled');
 fMapValues.AddMapValue(aCaption, aValue);
end;

procedure TddMapValueConfigItem.AddMapValue(const aCaption : String; aValue : String);
var
 l_Value : TddConfigValue;
begin
 with l_Value do
 begin
  Kind := dd_vkString;
  AsString := aValue;
 end;
 AddMapValue(aCaption, l_Value);
end;

procedure TddMapValueConfigItem.AddMapValue(const aCaption : String; aValue : Integer);
var
 l_Value : TddConfigValue;
begin
 with l_Value do
 begin
  Kind := dd_vkInteger;
  AsInteger := aValue;
 end;
 AddMapValue(aCaption, l_Value);
end;

procedure TddMapValueConfigItem.Assign(P : TPersistent);
// override;
begin
 if P is TddMapValueConfigItem then
  with TddMapValueConfigItem(P) do
  begin
   inherited Assign(P);
   Self.f_ValueMap := f_ValueMap;
   Self.FMapValues.Assign(fMapValues);
   Self.f_ValueKind := f_ValueKind;
  end;
end;

procedure TddMapValueConfigItem.Cleanup;
begin
  f_ValueMap := nil;
  FreeAndNil(fMapValues);
  inherited;
end;

function TddMapValueConfigItem.IsSet: Boolean;
begin
  Result := Assigned(f_ValueMap) or (fMapValues.Count > 0);
end;


function TddMapValueConfigItem.DisplayNameToValue(const aName: Il3CString): TddConfigValue;
begin
 Result.Kind := FMapValues.MapKind;
 case f_ValueKind of
  dd_vkString: Result.AsString := l3Str(aName);
 else
  raise EddInvalidValue.Create(str_ddcmInvalidMapValue.AsStr);
 end;
end;

function TddMapValueConfigItem.CalcDisplayName(
  const aValue: TddConfigValue): String;
begin
 if Assigned(f_ValueMap) then
  Case f_ValueKind of
   dd_vkString:  Result := l3Str((f_ValueMap as Il3StringValueMap).ValueToDisplayName(l3CStr(aValue.AsString)));
   dd_vkInteger: Result := l3Str((f_ValueMap as Il3IntegerValueMap).ValueToDisplayName(aValue.AsInteger));
   dd_vkBoolean: Result := l3Str((f_ValueMap as Il3IntegerValueMap).ValueToDisplayName(ord(aValue.AsBoolean)));
  else
   Result := '';
   Assert(False, 'Unsupported combobox value type');
  end
 else
  Result := fMapValues.Items[fMapValues.IndexOfValue(aValue)].Caption;
end;

function TddMapValueConfigItem.CalcValue(const aName: Il3CString): TddConfigValue;
var
 l_Index: Integer;
begin
 Result.Kind := f_ValueKind;
 if (f_ValueMap <> nil) then
  Case f_ValueKind of
   dd_vkString: Result.AsString := l3Str((f_ValueMap as Il3StringValueMap).DisplayNameToValue(aName));
   dd_vkInteger: Result.AsInteger := (f_ValueMap as Il3IntegerValueMap).DisplayNameToValue(aName);
   dd_vkBoolean: Result.AsBoolean := Boolean((f_ValueMap as Il3IntegerValueMap).DisplayNameToValue(aName));
  else
   Result := DefaultValue;
   Assert(False, 'Unsupported combobox value type');
  end
 else
 begin
  l_Index := fMapValues.IndexOfCaption(aName);
  if l_Index <> -1 then
   Result := fMapValues.Items[l_Index].Value
  else
   Result := DisplayNameToValue(aName);
 end;//f_ValueMap <> nil
end;

function TddMapValueConfigItem.Clone(anOwner: TObject = nil): Pointer;
  {virtual;}
  {-}
begin
 Result := TddMapValueConfigItem.Create(Alias, Caption, DefaultValue, ValueMap, MasterItem);
 TddMapValueConfigItem(Result).Assign(Self);
end;

procedure TddMapValueConfigItem.LoadValue(const aStorage: IddConfigStorage);
begin
 // установим текущее значение
 case f_ValueKind of
  dd_vkString: StringValue := l3Str(aStorage.ReadString(Alias, DefaultValue.AsString));
  dd_vkInteger: IntegerValue := aStorage.ReadInteger(Alias, DefaultValue.AsInteger);
  dd_vkBoolean : BooleanValue := aStorage.ReadBool(Alias, DefaultValue.AsBoolean);
  dd_vkDateTime : DateTimeValue := aStorage.ReadDateTime(Alias, DefaultValue.AsDateTime);
 else
  raise EddConfigError.Create('Неподдерживаемый тип map-value');
 end;
end;

procedure TddMapValueConfigItem.SaveValue(const aStorage: IddConfigStorage);
begin
 case f_ValueKind of
  dd_vkString: aStorage.WriteString(Alias, Value.AsString);
  dd_vkInteger: aStorage.WriteInteger(Alias, IntegerValue);
  dd_vkBoolean : aStorage.WriteBool(Alias, BooleanValue);
  dd_vkDateTime : aStorage.WriteDateTime(Alias, DateTimeValue);
 else
  raise EddConfigError.Create('Неподдерживаемый тип map-value');
 end;
end;

procedure TddMapValueConfigItem.SetItem(const aValue: String);
begin
 AddMapValue(aValue, aValue);
end;

{ TddButtonConfigItem }

{
***************************** TddButtonConfigItem ******************************
}
constructor TddButtonConfigItem.Create(const aAlias, aCaption: String;
        aDefaultValue: TddConfigValue; aClick: TNotifyEvent; aMasterItem:
        TddBaseConfigItem = nil);
begin
  inherited Create(aAlias, aCaption, aDefaultValue, aMasterItem);
  FOnClick := aClick;
  FPlace := dd_bpAsDefine;
  Labeled := False;
  Enabled := Assigned(FOnClick);
end;

procedure TddButtonConfigItem.Assign(P: TPersistent);
begin
 if P is TddButtonConfigItem then
 begin
  inherited;
  Place := TddButtonConfigItem(P).Place;
  OnClick := TddButtonConfigItem(P).OnClick;
  end
 else
  inherited;
end;

function TddButtonConfigItem.ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl;
begin
  Result := TvtButton.Create(aParent);
  Result.Parent := aParent;
  Result.Left := aLeft;
  Result.Top := aTop;
  Result.Width := GetCanvas(aParent).TextWidth(Caption) + 2 * ConfigItemLeft;
  with Result as TvtButton do
  begin
   Caption := Self.Caption;
   OnClick := FOnClick;
  end;
end;

procedure TddButtonConfigItem.ButtonSize(aParent : TWinControl; out aSize : TSize);
var
 lButton: TvtButton;
begin
  lButton := TvtButton.Create(aParent);
  try
   lButton.Parent := aParent;
   lButton.Width := GetCanvas(aParent).TextWidth(Caption) + 2*ConfigItemLeft;
   with aSize, lButton do
   begin
    cx := Width;
    cy := Height;
   end;
  finally
   FreeAndNil(lButton);
  end;
end;

function TddButtonConfigItem.ControlHeight(aParent: TWinControl): Integer;
var
  lSize : TSize;
begin
 ButtonSize(aParent, lSize);
 Result := lSize.cy;
end;

procedure TddButtonConfigItem.GetValueFromControl;
begin
end;

procedure TddButtonConfigItem.LoadValue(const aStorage: IddConfigStorage);
begin
end;

function TddButtonConfigItem.MayBeRequired: Boolean;
begin
 Result := False;
end;

procedure TddButtonConfigItem.SaveValue(const aStorage: IddConfigStorage);
begin
end;

procedure TddButtonConfigItem.SetOnClick(const Value: TNotifyEvent);
begin
 FOnClick := Value;
 if Assigned(Control) then
 begin
  Assert(Control Is TvtButton, Control.ClassName);
  TvtButton(Control).OnClick := Value;
 end;
 Enabled := Assigned(FOnClick);
end;

function TddButtonConfigItem.MinWidth(aParent : TWinControl): Integer;
// override;
var
 lSize : TSize;
begin
 ButtonSize(aParent, lSize);
 Result := lSize.cx;
end;

function TddButtonConfigItem.pm_GetRequired: Boolean;
begin
 Result := False;
end;

procedure TddButtonConfigItem.SetValueToControl(aDefault: Boolean);
begin
end;

constructor TddGroupConfigItem.Make(aAlias, aCaption: String; aMasterItem: TddBaseConfigItem = nil);
begin
 Create(aAlias, aCaption, ddEmptyValue, aMasterItem);
end;

procedure TddGroupConfigItem.Assign(P: TPersistent);
var
 i: Integer;
 l_Obj: TddVisualConfigItem;
begin
 if P is TddGroupConfigItem then
 begin
  inherited;
  // клонируем элементы в P.SubItems
  FSubItems.Clear;
  for i := 0 to TddGroupConfigItem(P).Count-1 do
    FSubItems.Add(TddGroupConfigItem(P).SubItem[i].Clone(nil));
 end
 else
  inherited;
end;

function TddGroupConfigItem.HasValue(const anAlias: AnsiString; out theItem: TddBaseConfigItem): Boolean;
var
 i: Integer;
begin
 Result := inherited HasValue(anAlias, theItem);
 if not Result then
 begin
  for i := 0 to Pred(Count) do
  begin
   Result := SubItem[i].HasValue(anAlias, theItem);
   if Result then
    break;
  end;
 end;
end;

function TddGroupConfigItem.IsSame(anItem: TObject): Boolean;
var
 l_Idx: Integer;
begin
 Result := Inherited IsSame(anItem);
 if not Result then
  for l_Idx := 0 to Count - 1 do
   if SubItem[l_Idx].IsSame(anItem) then
   begin
    Result := True;
    Exit;
   end;
end;

function TddGroupConfigItem.MayBeRequired: Boolean;
begin
 Result := False;
end;

procedure TddGroupConfigItem.DoOnChange(Sender: TObject);
begin
 Changed := (Sender as TddBaseConfigItem).Changed;
end;

{
*************************** TddRadioGroupConfigItem ****************************
}
constructor TddCheckListConfigItem.Create(const aAlias, aCaption: AnsiString; const aDefaultValue: TddConfigValue;
 aMasterItem: TddBaseConfigItem = nil);
begin
 inherited Create(aAlias, aCaption, aDefaultValue, aMasterItem);
 Labeled := True;
 Columns := 1;
end;

procedure TddCheckListConfigItem.Assign(P: TPersistent);
begin
 if P is TddCheckListConfigItem then
  begin
   inherited;
   Self.Columns := TddCheckListConfigItem(P).Columns;
  end
 else
  inherited;
end;

function TddCheckListConfigItem.ConstructControl(var aLeft, aMaxLeft, aTop:
    Integer; aParent: TWinControl): TControl;
begin
  Result := TCheckListBox.Create(aParent);
  Result.Parent := aParent as TWinControl;
  Result.Left := aLeft;
  Result.Top := aTop;
  if aParent is TScrollBox
   then Result.Width := aParent.ClientWidth - aLeft - ConfigItemRight - c_ScrollBarWidth
   else Result.Width := aParent.ClientWidth - aLeft - ConfigItemRight;
  Result.Height := ControlHeight(aParent);
  TCheckListBox(Result).Items := FItems;
  TCheckListBox(Result).Columns := Columns;
  TCheckListBox(Result).OnClick := DoOnChange;
end;

function TddCheckListConfigItem.ControlHeight(aParent: TWinControl): Integer;
begin
 Result := GetCanvas(aParent).TextHeight('A');
 Inc(Result, (FItems.Count div Columns + IfThen(FItems.Count mod Columns <> 0, 1, 0))*Result);
end;

procedure TddCheckListConfigItem.GetValueFromControl;
var
 l_Value, i: Integer;
begin
 l_Value := 0;
 for i := 0 to Pred(TCheckListBox(Control).Items.Count) do
  if TCheckListBox(Control).Checked[i] then
   l3SetBit(l_Value, i);
  IntegerValue := l_Value;
end;

procedure TddCheckListConfigItem.SetValueToControl(aDefault: Boolean);
var
  I, l_Value: Integer;
begin
  if aDefault then
   l_Value := DefaultValue.AsInteger
  else
   l_Value := IntegerValue;
  for i := 0 to Pred(TCheckListBox(Control).Count) do
   TCheckListBox(Control).Checked[i] := l3TestBit(l_Value, i);
end;

constructor TddDividerConfigItem.Create(const aAlias, aCaption: AnsiString; const aDefaultValue: TddConfigValue; aMasterItem:
    TddBaseConfigItem = nil);
begin
 inherited Create(aAlias, aCaption, aDefaultValue, aMasterItem);
 f_LabelTop := False;
 Labeled := False;
end;

function TddDividerConfigItem.ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl;
var
 l_Bevel: TBevel;
begin
 Result := TvtLabel.Create(aParent);
 Result.Parent := aParent;
 Result.Left := aLeft;
 TvtLabel(Result).Caption := Caption;
 TvtLabel(Result).Font.Style := [fsBold];
 Result.Top := aTop;
 l_Bevel := TBevel.Create(aParent);
 l_Bevel.Parent := aParent as TWinControl;
 l_Bevel.Left := Result.Width + aLeft + ConfigItemLeft;
 l_Bevel.Top := aTop + Result.Height div 2;
 if aParent is TScrollBox
  then l_Bevel.Width := aParent.ClientWidth - l_Bevel.Left - ConfigItemRight - c_ScrollBarWidth
  else l_Bevel.Width := aParent.ClientWidth - l_Bevel.Left - ConfigItemRight;
 l_Bevel.Height := 2;
end;

function TddDividerConfigItem.ControlHeight(aParent: TWinControl): Integer;
begin
  with TvtLabel.Create(nil) do
  try
   Parent := aParent;
   Result := Height + ConfigItemTop;
  finally
   Free;
  end;
end;

procedure TddDividerConfigItem.GetValueFromControl;
begin
 // TODO -cMM: TddDivider.GetValueFromControl default body inserted
end;

function TddDividerConfigItem.LabelWidth(aParent: TWinControl): Integer;
var
 l_Label: TvtLabel;
begin
 l_Label := TvtLabel.Create(nil);
 try
  l_Label.Parent := aParent;
  l_Label.CCaption := l3CStr(Caption);
  Result := l_Label.Width + ConfigItemLeft;
 finally
  FreeAndNil(l_Label);
 end;
end;

function TddDividerConfigItem.MayBeRequired: Boolean;
begin
 Result := False;
end;

function TddDividerConfigItem.MinWidth(aParent: TWinControl): Integer;
begin
  Result := LabelWidth(aParent) + 50;
end;

procedure TddDividerConfigItem.SetValueToControl(aDefault: Boolean);
begin
 // TODO -cMM: TddDivider.SetValueToControl default body inserted
end;


{
****************************** TddGroupConfigItem ******************************
}
constructor TddContainerConfigItem.Create(const aAlias, aCaption: AnsiString; const aDefaultValue: TddConfigValue; aMasterItem:
    TddBaseConfigItem = nil);
var
 l_Value : TddConfigValue;
begin
 f_LastIndex := -1;
 with l_Value do
 begin
  Kind := dd_vkInteger;
  AsInteger := aDefaultValue.AsInteger;
 end;
 inherited Create(aAlias, aCaption, l_Value, aMasterItem);
 Labeled := False;
 ShowCaption := False;
end;

procedure TddContainerConfigItem.AddCase(aCaption: String);
var
 l_Group: TddGroupConfigItem;
begin
 l_Group := TddGroupConfigItem.Make(Alias+IntToStr(SubItems.Count), aCaption);
 l_Group.ShowCaption := False;
 l_Group.LabelTop := False;
 SubItems.Add(l_Group);
end;

function TddContainerConfigItem.Add(aItem: TddBaseConfigItem): TddBaseConfigItem;
begin
 if SubItems.Count = 0 then
  AddCase(''{Caption});
 TddGroupConfigItem(SubItems.Items[Pred(SubItems.Count)]).Add(aItem)
end;

function TddContainerConfigItem.GetCaseIndex: Integer;
begin
 if Count = 1 then
  Result := 0
 else
  Result := TvtComboBoxQS(Control).ItemIndex;
end;

procedure TddContainerConfigItem.AfterConstruct(var aLeft, aMaxLeft, aTop: Integer; theControl: TControl; theLabel:
    TvtLabel);
begin
 inherited;
 f_InCreate := False;
 f_LastIndex := -1;
end;


procedure TddContainerConfigItem.BeforeConstruct(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl);
begin
 inherited;
 f_InCreate := True;
end;

function TddContainerConfigItem.ConstructControl(var aLeft, aMaxLeft, aTop: Integer; aParent: TWinControl): TControl;
var
  I: Integer;
  l_Height: Integer;
begin
 f_Left := aLeft; f_MaxLeft := aMaxLeft;
 if Count > 0 then
 begin
  if Count = 1 then
  begin
   // Добавляем TvtCheckBox
   Result := TvtCheckBox.Create(aParent);
   aParent.InsertControl(Result);
   TvtCheckBox(Result).Caption := Caption;
   TvtCheckBox(Result).OnClick := OnClick;
  end
  else
  begin
   // Добавляем TvtComboBoxQS
   Result := TvtComboBoxQS.Create(aParent);
   aParent.InsertControl(Result);
   TvtComboBoxQS(Result).Style := csDropDownList;
   for i := 0 to Pred(SubItems.Count) do
    TvtComboBoxQS(Result).Items.Add(TddGroupConfigItem(SubItems.Items[i]).Caption);
   TvtComboBoxQS(Result).OnChange := OnClick;
  end;
  Result.Left := aLeft;
  Result.Top := aTop;
  if aParent is TScrollBox
   then Result.Width := aParent.ClientWidth - ConfigItemRight - aLeft - c_ScrollBarWidth
   else Result.Width := aParent.ClientWidth - ConfigItemRight - aLeft;

  if Hint <> '' then
  begin
   Result.Hint := Hint;
   Result.ShowHint := True;
  end;
 end
 else
  Result := nil;
end;

procedure TddContainerConfigItem.ConstructSubItems(aLeft, aMaxLeft: Integer);
var
 I: Integer;
 l_Top: Integer;
begin
 l_Top := Control.Top + Control.Height;
 if aMaxLeft < aLeft then
  aMaxLeft := aLeft;
 SubItem[GetCaseIndex].CreateControl(aleft,aMaxLeft, l_Top, Control.Parent);
 // Нужно установить значения элементам. Кроме себя самого
 SetValueToSubitems(False);
end;

function TddContainerConfigItem.ControlHeight(aParent: TWinControl): Integer;
var
 I: Integer;
 l_Max: Integer;
begin
 with TvtCheckBox.Create(nil) do
 try
  Parent := aParent;
  Result := Height;
 finally
  Free;
 end;
 // Нужно перебрать все наборы и выбрать самый высокий
 l_Max := 0;
 for i := 0 to Pred(Count) do
  l_Max := Max(l_Max, SubItem[i].FullControlHeight[aParent]+ ConfigItemTop);
 Inc(Result, ConfigItemTop+l_Max);
end;

procedure TddContainerConfigItem.DestroySubItems;
var
 i: Integer;
begin
 i := GetCaseIndex;
 for i := 0 to Pred(Count) do
  if SubItem[i].Control <> nil then
  begin
   Control.Parent.RemoveControl(SubItem[i].Control);
   SubItem[i].Control.Free;
   SubItem[i].Control := nil;
   SubItem[i].ClearControl;
  end;
end;

function TddContainerConfigItem.pm_GetBooleanValue: Boolean;
begin
  if Control <> nil then
  begin
   if Count = 1 then
   begin
    assert(Control Is TvtCheckBox, Control.ClassName);
    Result := (Control as TvtCheckBox).Checked;
   end 
   else
   begin
    assert(Control Is TvtComboBoxQS, Control.ClassName);
    Result := (Control as TvtComboBoxQS).ItemIndex <> -1
   end; 
  end
  else
   Result := inherited pm_GetBooleanValue;
end;

function TddContainerConfigItem.MayBeRequired: Boolean;
begin
 Result := True;
end;

procedure TddContainerConfigItem.GetValueFromControl;
var
  I: Integer;
begin
 if Control is TvtCheckBox then
  IntegerValue := Ord(TvtCheckBox(Control).Checked)
 else
 begin
  assert(Control Is TvtComboBoxQS, Control.ClassName);
  IntegerValue := TvtComboBoxQS(Control).ItemIndex;
 end; 
 if BooleanValue then
 begin
  i := GetCaseIndex;
  if SubItem[I].Control <> nil then
  begin
  SubItem[I].GetValueFromControl;
  if SubItem[I].Changed then
   Changed := True;
 end;
end;
end;

function TddContainerConfigItem.LabelWidth(aParent: TWinControl): Integer;
var
 l_Label: TvtLabel;
 l_P, l_S: AnsiString;
 i, j: Integer;
 l_SI: TddGroupConfigItem;
begin
 SplitCaption(Caption, l_P, l_S);
 if l_P = '' then
  Result := 0
 else
 begin
  l_Label := TvtLabel.Create(nil);
  try
   l_Label.Parent := aParent;
   l_Label.Caption := l_P;
   Result := l_Label.Width + ConfigItemLeft;
  finally
   FreeAndNil(l_Label);
  end;
 end;
 for i := 0 to Pred(Count) do
 begin
  l_SI := SubItem[i] as TddGroupConfigItem;
  for j := 0 to Pred(l_SI.Count) do
   if l_SI.SubItem[j].Labeled then
   if l_SI.SubItem[j] is TddContainerConfigItem then
   begin
    l_Label := TvtLabel.Create(nil);
    try
     l_Label.Parent := aParent;
     l_Label.Caption := l_SI.SubItem[j].Caption;
     Result := Max(Result, (l_Label.Width + ConfigItemLeft));
    finally
     FreeAndNil(l_Label);
    end;
   end
   else
    Result := Max(Result, l_SI.SubItem[j].LabelWidth(aParent));
 end;
end;

procedure TddContainerConfigItem.LoadValue(const aStorage: IddConfigStorage);
var
 i: Integer;
begin
 IntegerValue := aStorage.ReadInteger(Alias, DefaultValue.AsInteger);
 BooleanValue := Boolean(IntegerValue);
 for i := 0 to Pred(Count) do
  SubItem[i].Load(aStorage);
end;

procedure TddContainerConfigItem.OnClick(Sender: TObject);
var
 l_True: Boolean;
begin
 Lock;
 try
  l_True := pm_GetBooleanValue;
  ChangeSlaveStatus(l_True);
  if inherited pm_GetBooleanValue <> l_True then
   Changed := True;
  if l_True then
  begin
   if f_LastIndex <> -1 then
    SubItem[f_LastIndex].GetValueFromControl;
   DestroySubItems;
   ConstructSubItems(f_Left, f_MaxLeft);
   f_LastIndex := GetCaseIndex;
  end
  else
  begin
   DestroySubItems;
   f_LastIndex := -1;
  end;
 finally
  Unlock;
 end;
end;

function TddContainerConfigItem.pm_GetLabeled: Boolean;
var
 i, j: Integer;
 l_SI: TddGroupConfigItem;
begin
 if f_InCreate then
  Result := Count > 1
 else
 begin
  Result := False;
  for i := 0 to Pred(Count) do
  begin
   l_SI := SubItem[i] as TddGroupConfigItem;
   for j := 0 to Pred(l_SI.Count) do
   if l_SI.SubItem[j].Labeled then
   begin
    Result := True;
    break;
   end;
   if Result then
    break;
  end;
 end;
end;

procedure TddContainerConfigItem.SaveValue(const aStorage: IddConfigStorage);
var
  i: Integer;
begin
 aStorage.WriteInteger(Alias, IntegerValue);
  for i := 0 to Pred(Count) do
   SubItem[i].Save(aStorage);
end;

procedure TddContainerConfigItem.SetValueToControl(aDefault: Boolean);
var
 I: Integer;
 l_CheckBox: TvtCheckBox;
begin
 if Count = 1 then
 begin
  l_CheckBox := (Control as TvtCheckBox);
  l_CheckBox.Checked := Boolean(IntegerValue)
 end
 else
  (Control as TvtComboBoxQS).ItemIndex := IntegerValue;
 OnClick(Self);
 SetValueToSubitems(aDefault);
end;

procedure TddContainerConfigItem.SetValueToSubitems(aDefault: Boolean);
var
 I: Integer;
begin
 if BooleanValue then
 begin
  i := GetCaseIndex;
  SubItem[i].Lock;
  SubItem[i].SetValueToControl(aDefault);
  SubItem[i].Unlock;
 end;
end;

procedure TddDividerConfigItem.SaveValue(const aStorage: IddConfigStorage);
begin
end;

procedure TddDividerConfigItem.LoadValue(const aStorage: IddConfigStorage);
begin
end;

{ TddRadioConfigItem }

function TddRadioConfigItem.ConstructControl(var aLeft, aMaxLeft,
  aTop: Integer; aParent: TWinControl): TControl;
begin
 Result := TvtRadioButton.Create(aParent);
 Result.Parent := aParent;
 Result.Left := aLeft;
 Result.Top := aTop;
 Result.Width := GetCanvas(aParent).TextWidth(Caption) + 2 * ConfigItemLeft;
 with Result as TvtRadioButton do
 begin
  Caption := Self.Caption;
  OnChange := DoOnChange;
 end;
end;

function TddRadioConfigItem.ControlHeight(aParent: TWinControl): Integer;
begin
 with TvtRadioButton.Create(nil) do
 try
  Parent := aParent;
  Result := Height;
 finally
  Free;
 end;
end;

constructor TddRadioConfigItem.Create(const aAlias, aCaption: AnsiString; const aDefaultValue: TddConfigValue;
 aMasterItem: TddBaseConfigItem = nil);
begin
 inherited Create(aAlias, aCaption, aDefaultValue, aMasterItem);
 if (f_Value.Kind = dd_vkString) then
  f_Value.Kind := dd_vkBoolean;
 Assert(f_Value.Kind in [dd_vkBoolean, dd_vkInteger]); 
 Labeled := False;
end;

constructor TddRadioConfigItem.Create(const aAlias, aCaption: String; 
  aDefaultValue: Boolean; aMasterItem: TddBaseConfigItem);
var
 l_Value : TddConfigValue;
begin
 with l_Value do
 begin
  Kind := dd_vkBoolean;
  AsBoolean := aDefaultValue;
 end;
 Create(aAlias, aCaption, l_Value, aMasterItem);
end;

procedure TddRadioConfigItem.GetValueFromControl;
begin
 BooleanValue := TvtRadioButton(Control).Checked;
end;

function TddRadioConfigItem.MinWidth(aParent: TWinControl): Integer;
begin
 with TvtRadioButton.Create(nil) do
 try
  Parent := aParent;
  Caption := Self.Caption;
  Result := Width + ConfigItemLeft;
 finally
  Free;
 end;
end;

function TddRadioConfigItem.pm_GetBooleanValue: Boolean;
begin
 Result := BooleanValue;
end;

procedure TddRadioConfigItem.SetValueToControl(aDefault: Boolean);
begin
 with TvtRadioButton(Control) do
  if aDefault
   then Checked := DefaultValue.AsBoolean
   else Checked := BooleanValue;
end;

procedure TddRadioConfigItem.DoOnChange(Sender: TObject);
begin
 GetValueFromControl;
 ChangeSlaveStatus(BooleanValue);
end;

end.

