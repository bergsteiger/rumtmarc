{$IfNDef _Tag_Declared}

{ Библиотека "Эверест"    }
{ Начал: Люлин А.В.       }
{ Модуль: k2Tag.int -     }
{ Начат: 20.04.2005 19:29 }
{ $Id: k2Tag.imp.pas,v 1.88 2013/05/31 04:58:27 lulin Exp $ }

// $Log: k2Tag.imp.pas,v $
// Revision 1.88  2013/05/31 04:58:27  lulin
// - портируем под XE4.
//
// Revision 1.87  2013/04/08 18:03:18  lulin
// - пытаемся отладиться под XE.
//
// Revision 1.86  2013/04/04 11:21:38  lulin
// - портируем.
//
// Revision 1.85  2012/10/26 19:41:55  lulin
// - вычищаем поддержку ветки редактора.
//
// Revision 1.84  2012/10/26 16:44:14  lulin
// - вычищаем поддержку ветки редактора.
//
// Revision 1.83  2012/07/12 18:33:22  lulin
// {RequestLink:237994598}
//
// Revision 1.82  2011/12/20 11:07:26  lulin
// - меняем тип параметра.
//
// Revision 1.81  2011/10/07 12:40:22  lulin
// {RequestLink:290272689}.
//
// Revision 1.80  2011/07/29 16:38:33  lulin
// {RequestLink:209585097}.
// - аккуратнее обрабатываем словарные теги.
//
// Revision 1.79  2011/07/11 17:48:11  lulin
// {RequestLink:228688745}.
//
// Revision 1.78  2011/07/07 19:54:50  lulin
// {RequestLink:228688745}.
//
// Revision 1.77  2011/05/06 14:28:14  lulin
// - правим IfDef'ы.
//
// Revision 1.76  2011/04/27 14:23:59  lulin
// {RequestLink:265391680}.
//
// Revision 1.75  2010/11/25 14:16:28  lulin
// {RequestLink:238945411}.
// - по-другому обрабатываем флаги модифицированности.
//
// Revision 1.74  2010/11/25 12:25:04  lulin
// {RequestLink:238945411}.
// - подготавливаем инфраструктуру для сохранения комментариев.
//
// Revision 1.73  2010/11/24 20:16:32  lulin
// {RequestLink:238945411}.
//
// Revision 1.72  2010/11/24 11:12:24  lulin
// {RequestLink:238945411}.
//
// Revision 1.71  2010/11/23 13:40:36  lulin
// {RequestLink:238945411}.
// - подготавливаем инфраструктуру.
//
// Revision 1.70  2010/11/03 16:20:04  lulin
// {RequestLink:238947629}.
// - правим ошибку клонирования свойства тега, которая приводила к кривизне схемы и зависанию.
//
// Revision 1.69  2010/08/20 09:41:05  lulin
// {RequestLink:232100720}.
// - рисуем базовую ноду.
//
// Revision 1.68  2010/04/14 10:31:20  lulin
// {RequestLink:203129522}.
//
// Revision 1.67  2010/04/12 14:53:52  lulin
// {RequestLink:203129570}.
// - убираем ненужный тип подитеративной функции.
//
// Revision 1.66  2010/04/12 14:16:31  lulin
// {RequestLink:203129570}.
//
// Revision 1.65  2010/04/09 16:02:39  lulin
// {RequestLink:201493388}.
//
// Revision 1.64  2010/03/30 17:50:30  lulin
// {RequestLink:198672902}.
// - учимся обрабатывать вложенные вызовы итераторов.
//
// Revision 1.63  2010/03/19 13:13:49  lulin
// {RequestLink:197497243}.
// - залечиваем падение, когда значение по-умолчанию не определено.
//
// Revision 1.62  2010/03/19 12:21:01  dinishev
// [$197952988]
//
// Revision 1.61  2010/03/17 16:30:00  lulin
// {RequestLink:195758030}.
// - bug fix: брался не тот источник данных.
//
// Revision 1.60  2010/03/17 15:57:16  lulin
// {RequestLink:195758030}.
// - добавил комментарий.
//
// Revision 1.59  2010/03/17 15:49:26  lulin
// {RequestLink:195758030}.
// - добавил комментарий.
//
// Revision 1.58  2010/03/17 15:32:14  lulin
// {RequestLink:195758030}.
// - правильнее присваиваем "пустые" свойства, которые для разных типов параграфов трактуются по-разному.
//
// Revision 1.57  2010/01/11 13:15:01  lulin
// {RequestLink:175967380}. Сосредотачиваем сравнение тега с целым значением в одном месте. Чтобы можно было в дальнейшем перекрывать ОДИН метод, а не два.
//
// Revision 1.56  2009/09/02 10:58:03  lulin
// {RequestLink:159357691}.
//
// Revision 1.55  2009/07/27 12:11:23  lulin
// {RequestLink:158335420}. Два раза итерировали детей. В итоге получалась полная ерунда.
//
// Revision 1.54  2009/07/23 16:29:45  lulin
// - при записи объекта контроллируем его тип.
// - при установке мощности коробки с детьми учитываем, что детей уже может быть больше.
//
// Revision 1.53  2009/07/22 17:16:40  lulin
// - оптимизируем использование счётчика ссылок и преобразование к интерфейсам при установке атрибутов тегов.
//
// Revision 1.52  2009/07/22 13:13:05  lulin
// {RequestLink:157909474}.
//
// Revision 1.51  2009/07/22 12:29:56  lulin
// - пытаемся оптимизировать установку атомарных тегов.
//
// Revision 1.50  2009/07/21 18:23:16  lulin
// - подготавливаемся к уменьшению преобразования типов при записи атрибутов.
//
// Revision 1.49  2009/07/21 13:34:27  lulin
// - bug fix: не падаем на присвоении списков.
//
// Revision 1.48  2009/07/21 10:59:00  lulin
// - bug fix: не собирался Архивариус в ветке.
//
// Revision 1.47  2009/07/21 09:55:47  lulin
// - генерируем классы реализации тегов с модели.
//
// Revision 1.46  2009/07/20 16:44:08  lulin
// - убираем из некоторых листьевых параграфов хранение типа конкретного тега, вместо этого "плодим" под каждый тип тега свой тип класса.
//
// Revision 1.45  2009/07/20 11:22:16  lulin
// - заставляем работать F1 после - {RequestLink:141264340}. №7, 32, 33.
//
// Revision 1.44  2009/07/17 13:47:23  lulin
// - bug fix: неправильно обрабатывали удаление дочерних тегов.
//
// Revision 1.43  2009/07/17 12:42:02  lulin
// {RequestLink:141264340}. №7, 32, 33.
//
// Revision 1.42  2009/07/16 12:58:18  lulin
// - подготавливаемся к объединения списков параграфов с листами.
//
// Revision 1.41  2009/07/16 12:48:13  lulin
// - подготавливаемся к объединения списков параграфов с листами.
//
// Revision 1.40  2009/07/16 12:07:00  lulin
// - вставлена проверка типа.
//
// Revision 1.39  2009/07/15 16:15:28  lulin
// - избавляемся от лишней виртуальности.
//
// Revision 1.38  2009/07/15 15:12:26  lulin
// - удалено ненужное свойство списков параграфов.
//
// Revision 1.37  2009/07/15 13:26:06  lulin
// - рамкам таблиц прописываем значение по-умолчанию.
//
// Revision 1.36  2009/07/15 12:12:59  lulin
// - не пишем маленькие количества детей.
//
// Revision 1.35  2009/07/15 10:23:52  lulin
// - написан комментарий.
//
// Revision 1.34  2009/07/15 10:20:44  lulin
// - bug fix: неправильно писались атрибуты в виде "стилей".
//
// Revision 1.33  2009/07/10 15:04:49  lulin
// - избавляемся от лишнего дёрганья счётчиков ссылок.
//
// Revision 1.32  2009/07/10 13:56:01  lulin
// - избавляемся от лишнего виртуального метода.
//
// Revision 1.31  2009/07/10 13:03:31  lulin
// - чистка кода.
//
// Revision 1.30  2009/07/09 16:33:38  lulin
// - для ветки тоже правильно пишем рамки.
//
// Revision 1.29  2009/07/09 15:28:27  lulin
// - чистим конекст.
//
// Revision 1.28  2009/07/09 14:54:29  lulin
// {RequestLink:140837386}. №3.
//
// Revision 1.27  2009/07/07 16:54:42  lulin
// - уменьшаем число дёрганий счётчика ссылок.
//
// Revision 1.26  2009/07/07 08:58:27  lulin
// - вычищаем ненужное.
//
// Revision 1.25  2009/07/06 15:36:19  lulin
// - возвращаемся от интерфейсов к объектам.
//
// Revision 1.24  2009/07/06 14:29:58  lulin
// - возвращаемся от интерфейсов к объектам.
//
// Revision 1.23  2009/07/06 13:32:12  lulin
// - возвращаемся от интерфейсов к объектам.
//
// Revision 1.22  2009/07/03 16:24:13  lulin
// - шаг к переходу от интерфейсов к объектам.
//
// Revision 1.21  2009/07/01 15:26:10  lulin
// - убрана ненужная функциональность.
//
// Revision 1.20  2009/06/24 15:53:23  lulin
// {RequestLink:140286381}.
//
// Revision 1.19  2009/04/22 17:04:51  lulin
// [$145097458]. Недовычистил обращение к процессору.
//
// Revision 1.18  2009/04/16 15:55:31  lulin
// [$143396720]. №5. Убираем доступ к ненужному свойству.
//
// Revision 1.17  2009/04/07 16:09:48  lulin
// [$140837386]. №13.
//
// Revision 1.16  2009/03/05 15:43:24  lulin
// - <K>: 137470629. Убран ненужный метод.
//
// Revision 1.15  2009/02/26 12:25:11  lulin
// - <K>: 137465982. №1
//
// Revision 1.14  2009/02/25 12:44:16  lulin
// - <K>: 90441983. Чистка кода для переноса на модель.
//
// Revision 1.13  2009/02/25 12:04:15  lulin
// - <K>: 90441983. Чистка кода для переноса на модель.
//
// Revision 1.12  2009/01/15 09:50:03  lulin
// - выводим имя типа.
//
// Revision 1.11  2008/09/16 11:51:55  lulin
// - переносим TnevParaList на модель.
//
// Revision 1.10  2008/06/25 14:47:59  lulin
// - сделана возможность использовать предопределённые значения для рамок.
//
// Revision 1.9  2008/05/08 14:04:15  fireton
// - перенос объектов в потоках из ветки
//
// Revision 1.8  2008/04/15 09:09:06  lulin
// - перекладываем исключение.
//
// Revision 1.7  2008/04/15 09:03:23  lulin
// - правим название директив - чтобы соответствовали смыслу.
//
// Revision 1.6  2008/04/15 08:25:46  dinishev
// Восстанавливаем старый редактор
//
// Revision 1.5  2008/02/22 15:33:42  lulin
// - избавляемся от виртуальности.
//
// Revision 1.4  2008/02/21 13:48:21  lulin
// - cleanup.
//
// Revision 1.3  2008/02/20 14:06:39  lulin
// - удалены избыточные операции сравнения.
//
// Revision 1.2  2008/02/20 12:39:14  lulin
// - определены методы сравнения тега.
//
// Revision 1.1  2008/02/14 19:32:38  lulin
// - изменены имена файлов с примесями.
//
// Revision 1.108  2008/02/14 17:09:12  lulin
// - cleanup.
//
// Revision 1.107  2008/02/12 12:53:20  lulin
// - избавляемся от излишнего метода на базовом классе.
//
// Revision 1.106  2008/02/11 16:12:18  lulin
// - неправильно искали тег в списке (в частности <CQ>: 28417).
//
// Revision 1.105  2008/02/08 19:52:43  lulin
// - продолжаем санацию списков.
//
// Revision 1.104  2008/02/08 17:59:19  lulin
// - теперь теги в списках храним как теги, а не как объекты.
//
// Revision 1.103  2008/02/08 17:06:20  lulin
// - класс _Tk2TagObject переехал на модель.
//
// Revision 1.102  2008/02/05 18:20:40  lulin
// - удалено ненужное свойство строк.
//
// Revision 1.101  2008/02/05 12:49:23  lulin
// - упрощаем базовые объекты.
//
// Revision 1.100  2008/02/01 15:14:52  lulin
// - избавляемся от излишней универсальности списков.
//
// Revision 1.99  2008/01/31 20:09:58  lulin
// - избавляемся от излишней универсальности списков.
//
// Revision 1.98  2007/12/05 12:35:08  lulin
// - вычищен условный код, составлявший разницу ветки и Head'а.
//
// Revision 1.97  2007/09/14 13:26:19  lulin
// - объединил с веткой B_Tag_Clean.
//
// Revision 1.96.2.14  2007/09/13 15:55:23  lulin
// - убрана ненужная виртуальность.
//
// Revision 1.96.2.12  2007/09/13 15:12:47  lulin
// - в первом приближении реализован атомарный тег.
//
// Revision 1.96.2.11  2007/09/13 13:59:29  lulin
// - добавлен прототип атомарных тегов.
//
// Revision 1.96.2.10  2007/09/13 12:36:00  lulin
// - переименовано свойство.
//
// Revision 1.96.2.9  2007/09/12 20:23:52  lulin
// - возвращаем булевский результат, а не какой-то там код ошибки, который нафиг никому не нужен.
//
// Revision 1.96.2.8  2007/09/12 20:10:07  lulin
// - используем объект вместо интерфейса.
//
// Revision 1.96.2.7  2007/09/12 20:07:56  lulin
// - используем объект вместо интерфейса.
//
// Revision 1.96.2.6  2007/09/12 18:37:48  lulin
// - с интерфейса удален ненужный метод.
//
// Revision 1.96.2.5  2007/09/12 17:19:06  lulin
// - убран ненужный параметр.
//
// Revision 1.96.2.4  2007/09/12 17:02:07  lulin
// - убран ненужный параметр по-умолчанию.
//
// Revision 1.96.2.3  2007/09/12 16:36:20  lulin
// - переименовано свойство.
//
// Revision 1.96.2.2  2007/09/12 16:14:12  lulin
// - убран ненужный параметр по-умолчанию.
//
// Revision 1.96.2.1  2007/09/12 15:23:11  lulin
// - избавляемся от метода, дублирующего функциональность получения атрибута.
//
// Revision 1.96  2007/09/12 13:02:11  lulin
// - cleanup.
//
// Revision 1.94  2007/09/12 12:42:09  lulin
// - удален ненужный параметр.
//
// Revision 1.93  2007/09/12 12:09:02  lulin
// - перенесена проверка наличия атрибута.
//
// Revision 1.92  2007/09/11 18:50:04  lulin
// - удален ненужный параметр.
//
// Revision 1.91  2007/09/11 15:03:33  lulin
// - выделяем метод установки потока.
//
// Revision 1.90  2007/09/10 10:19:27  lulin
// - удален ненужный метод.
//
// Revision 1.89  2007/09/07 19:02:14  lulin
// - удален ненужный параметр.
//
// Revision 1.88  2007/09/07 18:50:54  lulin
// - удалены ненужные значения по-умолчанию.
//
// Revision 1.87  2007/09/07 16:23:41  lulin
// - сразу получаем список в который надо добавить объект.
//
// Revision 1.86  2007/09/07 13:53:28  lulin
// - удалены ненужные вызовы пустых методов.
//
// Revision 1.85  2007/09/07 13:46:24  lulin
// - удалены ненужные методы тегов.
//
// Revision 1.84  2007/09/07 12:53:16  lulin
// - удален ненужный параметр.
//
// Revision 1.83  2007/09/07 11:59:15  lulin
// - используем объект, вместо интерфейса.
//
// Revision 1.82  2007/09/07 08:27:33  lulin
// - теперь тегам можно устанавливать свойства в виде объектов.
//
// Revision 1.81  2007/09/06 15:21:28  lulin
// - переименовано свойство.
//
// Revision 1.80  2007/09/06 09:37:45  lulin
// - переименовано свойство.
//
// Revision 1.79  2007/09/05 18:14:37  lulin
// - убираем накладные расходы.
//
// Revision 1.78  2007/09/05 18:08:17  lulin
// - убираем накладные расходы.
//
// Revision 1.76  2007/09/04 18:06:22  lulin
// - cleanup.
//
// Revision 1.75  2007/09/04 17:44:55  lulin
// - cleanup.
//
// Revision 1.74  2007/09/04 17:27:43  lulin
// - убран ненужный параметр.
//
// Revision 1.73  2007/09/04 16:01:30  lulin
// - cleanup.
//
// Revision 1.72  2007/09/04 15:15:29  lulin
// - убран ненужный параметр.
//
// Revision 1.71  2007/09/04 14:24:59  lulin
// - убран ненужный параметр.
//
// Revision 1.70  2007/09/03 10:46:48  lulin
// - уменьшаем число параметров.
//
// Revision 1.69  2007/08/21 11:39:50  lulin
// - избавляемся от предупреждений компилятора.
//
// Revision 1.68  2007/08/10 08:30:14  lulin
// - избавляемся от излишнего использования интерфейсов, т.к. переносимость может быть достигнута другими методами.
//
// Revision 1.67  2007/07/23 05:20:43  oman
// warning fix
//
// Revision 1.66  2007/05/24 11:37:38  lulin
// - new behavior: в тегах возможна комплексная сортировка, пока не более 4-х полей. Адреса гиперссылок теперь проверяются на дубликаты.
//
// Revision 1.65  2006/11/03 11:00:44  lulin
// - объединил с веткой 6.4.
//
// Revision 1.64.6.1  2006/10/26 09:10:21  lulin
// - используем "родную" директиву.
//
// Revision 1.64  2006/04/11 17:55:28  lulin
// - оптимизируем при помощи вынесения строк (по следам того как Вован наиграл в фильтрах 20% производительности).
//
// Revision 1.63  2006/04/11 16:35:37  lulin
// - оптимизируем при помощи вынесения строк (по следам того как Вован наиграл в фильтрах 20% производительности).
//
// Revision 1.62  2006/03/31 14:23:40  voba
// - bug fix Шура сказал "Надо внимательно посмотреть почему _TagType = nil осле Undo операции преобразования в таблицу"
//
// Revision 1.61  2006/03/28 12:39:34  lulin
// - bug fix: сообщение об ошибке само по себе приводило к ошибке.
//
// Revision 1.60  2006/01/25 09:09:59  lulin
// - bug fix: не держим пустой поток - чтобы не возникало проблем с разбором формата картинки (CQ OIT5-19279).
//
// Revision 1.59  2006/01/18 15:27:24  lulin
// - new behavior: сделана возможность ограничивать количество дочерних тегов.
//
// Revision 1.58  2006/01/18 10:38:20  lulin
// - bug fix: не компилировалось тестовое приложение.
//
// Revision 1.57  2006/01/18 08:54:36  lulin
// - изыскания на тему прямой установки целочисленных атрибутов, без преобразования их к тегам.
//
// Revision 1.56  2006/01/17 15:10:41  lulin
// - выделен метод установки атрибута тега.
//
// Revision 1.55  2006/01/17 14:22:20  lulin
// - тип значения вынесен в общий модуль.
//
// Revision 1.54  2006/01/16 18:43:47  lulin
// - cleanup.
//
// Revision 1.53  2006/01/16 18:32:52  lulin
// - cleanup: не возвращаем ненужное значение.
//
// Revision 1.52  2006/01/16 17:56:42  lulin
// - cleanup.
//
// Revision 1.51  2006/01/16 16:41:44  lulin
// - сделана возможность работать со строками без теговых оберток (почему-то на производительность не повлияло).
//
// Revision 1.50  2006/01/16 11:31:08  lulin
// - убран метод удаления параграфа, т.к. для этих целей полностью подходит метод удаления тега.
//
// Revision 1.49  2006/01/13 12:59:10  lulin
// - bug fix: в Undo-буфер попадала лишняя запись (CQ OIT5-19077).
//
// Revision 1.48  2006/01/12 14:26:39  lulin
// - bug fix: при вставке комментария в извлечениях у него появлялась паразитная нижняя рамка.
//
// Revision 1.47  2005/12/28 12:54:28  lulin
// - bug fix: не компилировалось.
//
// Revision 1.46  2005/12/26 13:26:54  lulin
// - bug fix: не всегда отображалось изменение комментариев (CQ OIT5-18865).
//
// Revision 1.45  2005/12/21 14:27:10  lulin
// - new behavior: сделана синхронизация редактирования комментариев в различных копиях текста.
//
// Revision 1.44  2005/12/14 10:08:01  lulin
// - убрал лишний параметр, из-за которого не компилировался HEAD.
//
// Revision 1.43  2005/12/12 14:50:20  lulin
// - детализируем сообщение об ошибке.
//
// Revision 1.42  2005/12/12 14:17:08  lulin
// - bug fix: неправильно выводилось сообщение об ошибке.
//
// Revision 1.41  2005/12/12 12:38:12  lulin
// - bug fix: комментарии не добавлялись в дерево.
//
// Revision 1.40  2005/12/09 16:36:41  lulin
// - убрано лишнее заворачивание параграфа в комментарий.
//
// Revision 1.39  2005/12/09 15:44:17  lulin
// - bug fix: слишком поздно корректировали стиль параграфов в комментарии (CQ OIT5-18487).
//
// Revision 1.38  2005/12/09 13:01:42  lulin
// - при вставке дочернего тега учитываем, что он может быть вставлен не в родителя, а в его атрибут.
//
// Revision 1.37  2005/12/02 22:03:51  lulin
// - запрос валидности операции посылается теперь через базовые объекты, а не шаманскими методами.
//
// Revision 1.36  2005/12/02 18:23:36  lulin
// - обрабока нотфификации об удалении/добавлении параграфа практически полностью перенесена на процессор.
//
// Revision 1.35  2005/12/02 13:31:23  lulin
// - установкой/сбрасыванием родительского тега управляем в базовых методах.
//
// Revision 1.34  2005/12/02 12:36:51  lulin
// - выделен шаблон для тегов, которые имеют владельца.
//
// Revision 1.33  2005/11/22 11:31:49  lulin
// - для курсора сделал рекурсивное сохранение тегов.
//
// Revision 1.32  2005/11/21 11:02:51  lulin
// - bug fix: при уходе документа в историю не сохранялись комментарии.
//
// Revision 1.31  2005/11/18 13:26:32  lulin
// - в процедуру конца модификации теперь можно подавать пачку операций.
//
// Revision 1.30  2005/11/07 12:30:26  lulin
// - bug fix: не форматировались напрогруженные, но отображаемые параграфы.
//
// Revision 1.29  2005/11/03 16:33:49  lulin
// - optimization: при переформатировании документа итерируем только непрогруженные параграфы.
//
// Revision 1.28  2005/10/27 08:39:56  lulin
// - bug fix: был AV при итерировании свойств - если какое-то свойство не определено.
//
// Revision 1.27  2005/10/26 10:34:47  lulin
// - bug fix: не добавлялись потоковые атомы, если у них позиция была ненулевая.
//
// Revision 1.26  2005/10/20 10:16:03  lulin
// - тегам добавлены скобки _Changing/_Changed.
//
// Revision 1.25  2005/10/20 07:53:36  lulin
// - вставляем скобки _Changing/_Changed.
//
// Revision 1.24  2005/10/20 07:47:23  lulin
// - обрамляем пачки модификакции тегов скобками _Changing/_Changed.
//
// Revision 1.23  2005/10/20 05:41:35  lulin
// - подготовили почву для записи изменений в комментариях.
//
// Revision 1.22  2005/10/18 07:19:46  lulin
// - new behavior: теперь методы вставки и добавления дочерних тегов могут подменять вставляемые теги.
//
// Revision 1.21  2005/10/17 12:54:50  lulin
// - new behavior: задел на удаление нод из дерева при редактировании комментариев.
//
// Revision 1.20  2005/10/14 20:21:36  lulin
// - методы для добавления дочерних тегов сделаны виртуальными.
//
// Revision 1.19  2005/10/06 13:04:36  lulin
// - подготавливаем параграфы к тому, чтобы форматирование не хранилось вместе с данными.
//
// Revision 1.18  2005/09/30 07:35:16  lulin
// - bug fix: непрогруженные документы сохранялись неполностью.
//
// Revision 1.17  2005/08/31 13:02:50  lulin
// - спрятаны методы, которые не нужны в ветке.
//
// Revision 1.16  2005/08/29 15:03:07  lulin
// - cleanup.
//
// Revision 1.15  2005/08/29 14:43:20  lulin
// - new behavior: при вставке нескольких текстовых параграфов вставляем несколько контролов.
//
// Revision 1.14  2005/08/29 13:40:30  lulin
// - new behavior: запрещаем вставлять в ячейку с контролами что-нибудь отличное от контролов.
//
// Revision 1.13  2005/07/27 19:25:45  lulin
// - избавился от глобальных объектов для КЗ - теперь с каждым редактором связана своя обвязка для карточки запроса.
//
// Revision 1.12  2005/07/04 12:36:15  lulin
// - дан доступ к методу _SetSubAtom.
// - bug fix: был AV когда тег не преобразовывался к объекту.
//
// Revision 1.11  2005/05/19 13:18:53  lulin
// - remove unit: evFont.
//
// Revision 1.10  2005/04/28 15:04:09  lulin
// - переложил ветку B_Tag_Box в HEAD.
//
// Revision 1.9.2.34  2005/04/28 10:46:57  lulin
// - для Design-time убрано лишнее.
//
// Revision 1.9.2.33  2005/04/27 11:27:29  lulin
// - после построения Preview оставались неосвобожденные объекты.
//
// Revision 1.9.2.32  2005/04/27 10:50:40  lulin
// - bug fix: не удалялись комментарии (CQ OIT5-13601).
//
// Revision 1.9.2.31  2005/04/27 07:17:35  lulin
// - bug fix: параметры не сбрасывались при выставлении стиля.
//
// Revision 1.9.2.30  2005/04/26 16:07:10  lulin
// - уменьшаем число лишних вызовов.
//
// Revision 1.9.2.29  2005/04/26 08:11:25  lulin
// - уменьшено количество вызовов QueryInterface.
//
// Revision 1.9.2.28  2005/04/25 16:26:19  lulin
// - не пытаемся запросить собственный интерфейс когда не надо.
//
// Revision 1.9.2.27  2005/04/25 15:25:33  lulin
// - не сигнализируем никому, если свойство реалтно не поменялось.
//
// Revision 1.9.2.26  2005/04/25 13:10:16  lulin
// - избавился от попадания в Assert.
// - раньше проверяем маппируемое значение - без преобразования к тегу.
//
// Revision 1.9.2.25  2005/04/25 11:40:21  lulin
// - bug fix: избавился от остающегося объекта.
//
// Revision 1.9.2.24  2005/04/25 11:21:00  lulin
// - борьба с остающимся объектом (пока неудачно).
//
// Revision 1.9.2.23  2005/04/25 09:36:54  lulin
// - bug fix: нашлась ситуация в которой Assert оказался вреден.
//
// Revision 1.9.2.22  2005/04/25 08:22:45  lulin
// - cleanup: убрал сообщение о присваивании тега с обертки.
//
// Revision 1.9.2.21  2005/04/23 17:14:01  lulin
// - cleanup.
//
// Revision 1.9.2.20  2005/04/23 17:09:45  lulin
// - обходимся без лишних преобразований.
//
// Revision 1.9.2.19  2005/04/23 17:04:12  lulin
// - new const: vtStr.
//
// Revision 1.9.2.18  2005/04/23 16:56:31  lulin
// - уменьшаем число преобразований к тегу.
//
// Revision 1.9.2.17  2005/04/23 16:23:02  lulin
// - remove prop: _Ik2Tag.AttrWP.
//
// Revision 1.9.2.16  2005/04/23 16:07:35  lulin
// - удален временный интерфейс Ik2TagBox.
//
// Revision 1.9.2.15  2005/04/23 15:19:26  lulin
// - remove method: _Ik2Tag._SetSubAtom - как сложный и ведущий к неоптимальному коду.
//
// Revision 1.9.2.14  2005/04/23 13:32:20  lulin
// - new define: k2BoxIsList.
//
// Revision 1.9.2.13  2005/04/23 13:28:39  lulin
// - new define: k2TagUseDefaultValue.
//
// Revision 1.9.2.12  2005/04/23 12:44:13  lulin
// - cleanup.
//
// Revision 1.9.2.11  2005/04/23 11:54:37  lulin
// - уменьшено количество преобразований. Чуть чуть выиграл время.
//
// Revision 1.9.2.10  2005/04/23 10:38:01  lulin
// - избавился от динамического преобразования типов.
//
// Revision 1.9.2.9  2005/04/23 09:42:49  lulin
// - уменьшено количество изменений счетчиков ссылок интерфейсов.
//
// Revision 1.9.2.8  2005/04/22 12:14:29  lulin
// - remove interface: Ik2PropertyBag.
//
// Revision 1.9.2.7  2005/04/22 11:20:55  lulin
// - new directive: _k2TagUseMapping.
//
// Revision 1.9.2.6  2005/04/22 10:40:30  lulin
// - cleanup: убраны ненужные параметры.
//
// Revision 1.9.2.5  2005/04/22 09:04:37  lulin
// - cleanup: убраны ненужные параметры.
//
// Revision 1.9.2.4  2005/04/21 17:28:16  lulin
// - cleanup.
//
// Revision 1.9.2.3  2005/04/21 16:30:20  lulin
// - избавился от лишних оберточных классов.
//
// Revision 1.9.2.2  2005/04/21 15:36:42  lulin
// - окончательно избавился от необходимости обертки.
//
// Revision 1.9.2.1  2005/04/21 14:47:02  lulin
// - избавляемся от обертки над тегами - теперь объекты посредством шаблонов сами реализуют интерфейс _Ik2Tag.
//
// Revision 1.9  2005/04/21 06:53:43  lulin
// - функция сравнения перенесена в шаблон.
//
// Revision 1.8  2005/04/21 06:42:31  lulin
// - cleanup.
//
// Revision 1.7  2005/04/21 06:17:39  lulin
// - два шаблона объединены в один.
//
// Revision 1.6  2005/04/21 05:49:12  lulin
// - подготовка к объединению шаблонов.
//
// Revision 1.4  2005/04/21 05:27:04  lulin
// - в шаблонах объединил интерфейс и реализацию - чтобы удобнее читать/править было.
//
// Revision 1.3  2005/04/21 05:11:48  lulin
// - используем _Box (пока из-за постоянных преобразований туда и обратно - по скорости стало только хуже).
//
// Revision 1.2  2005/04/20 17:40:57  lulin
// - избавился от промежуточного интерфейса Ik2TagBoxQT.
//
// Revision 1.1  2005/04/20 16:31:20  lulin
// - добавлен шаблон для реализации собственно тега.
//

// interface
 {.$If Declared(_Parent_)}

 {$Define _Tag_Declared}

 _k2OwnedObject_Parent_ = _k2Tag_Parent_;
 {$Include k2OwnedObject.imp.pas}
 _k2Tag_ = {mixin} class(_k2OwnedObject_, Ik2Tag)
    private
    // property fields
      {$IfNDef _Box_}
      {$IfNDef k2Tag_No_f_TagType}
      f_TagType : Tk2Type;
      {$EndIf  k2Tag_No_f_TagType}
      {$EndIf  _Box_}
    protected
    // internal fields
      {$IfDef k2TagIsAtomic}
      f_Value : Integer;
      {$EndIf k2TagIsAtomic}
    protected
    // interface methods
      {$IfNDef _Box_}
      procedure SetSubAtom(var aProp    : _PropIn_;
                           const aValue );
        virtual;
        {-}
      {$IfNDef k2TagIsAtomic}
      function  IterateInnerChildrenOnWrite: Boolean;
        virtual;
        {-}
      {$EndIf  k2TagIsAtomic}
      {$EndIf  _Box_}
    protected
    // interface methods
      // Ik2Tag
      function  pm_GetTagType: Tk2TypePrim;
        {-}
      function  pm_GetAttr(anIndex : Integer): Ik2Tag;
      procedure pm_SetAttr(anIndex: Integer; const aValue : Ik2Tag);
        {-}
      procedure pm_SetAttrW(anIndex  : Integer;
                            const aContext : Ik2Op;
                            const aValue   : Ik2Tag);
        {-}
      function  pm_GetBoolA(anIndex  : Integer): Boolean;
      procedure pm_SetBoolA(anIndex  : Integer;
                            aValue   : Boolean);
        {-}
      function  pm_GetIntA(anIndex  : Integer): Integer;
      procedure pm_SetIntA(anIndex  : Integer;
                           aValue   : Integer);
        {-}
      function  pm_GetStrA(anIndex  : Integer): AnsiString;
      procedure pm_SetStrA(anIndex  : Integer;
                           const aValue   : AnsiString);
        {-}
      procedure pm_SetBoolW(anIndex  : Integer;
                             const aContext : Ik2Op;
                             aValue   : Boolean);
        {-}
      procedure pm_SetIntW(anIndex  : Integer;
                            const aContext : Ik2Op;
                            aValue   : Integer);
        {-}
      procedure pm_SetObjW(anIndex  : Integer;
                           const aContext : Ik2Op;
                           aValue         : TObject);
        {-}
      procedure pm_SetStrW(anIndex  : Integer;
                            const aContext : Ik2Op;
                            const aValue   : AnsiString);
        {-}
      function  pm_GetPCharLenA(anIndex      : Integer): Tl3PCharLen;
      procedure pm_SetPCharLenA(anIndex      : Integer;
                                const aValue : Tl3PCharLen);
        {-}
      procedure pm_SetPCharLenW(anIndex  : Integer;
                                 const aContext : Ik2Op;
                                 const aValue   : Tl3WString);
        {-}
      function  pm_GetChildrenCount: Integer;
        {$IfNDef _Box_}
        {$IfNDef k2TagIsAtomic}
        {$IfNDef k2TagIsList}
        virtual;
        {$EndIf  k2TagIsList}
        {$EndIf  k2TagIsAtomic}
        {$EndIf _Box_}
        {-}
      procedure Set_ChildrenCapacity(aValue: Integer);
        {-}
      function  pm_GetChild(anIndex: Integer): Ik2Tag;
        {$IfNDef _Box_}
        {$IfNDef k2TagIsAtomic}
        {$IfNDef k2TagIsList}
        virtual;
        {$EndIf  k2TagIsList}
        {$EndIf  k2TagIsAtomic}
        {$EndIf _Box_}
        {-}
      function  IsNull: Boolean;
        {* - псевдо-инструмент? }
      function  IsValid: Boolean;
        {-}
      function  IsTransparent: Boolean;
        {* - тег "прозрачный"? }
      function  IsOrd: Boolean;
        {* - тег атомарного типа? }
      function  IsStream(out theStream: IStream): Boolean;
        {-}
      function  Box: Ik2Tag;
        {* - ссылка на тег - для сохранения. }
      function  InheritsFrom(ID: Integer): Boolean;
        overload;
        {* - проверяет наследование данного типа от типа с идентификатором ID. }
      function  InheritsFrom(const anIDs : array of Integer): Boolean;
        overload;
        {* - проверить наследование. }
      function  InheritsFrom(anAtomTypeID  : Integer;
                             const Exclude : array of Integer): Boolean;
        overload;
        {* - проверить наследование. }
      function  rLong(anIndex  : Integer;
                      aDefault : Integer): Integer;
        {-}
      function  rBool(anIndex  : Integer;
                      aDefault : Boolean): Boolean;
        {-}
      function  IsSame(const aTag: Ik2Tag): Boolean;
        reintroduce;
        {$IfNDef k2TagIsAtomic}
        virtual;
        {$EndIf  k2TagIsAtomic}
        {* - указывает, что инструменты работают с одним и тем же тегом. }
      function  IntRef: Integer;
        {-}
      function  GetOwnInterface(const IID: TGUID; out Obj): Boolean;
        {* - возвращает интерфейс НЕПОСРЕДСТВЕННО поддерживаемый реализацией
             инструмента. }
      function  GetLinkedInterface(const IID: TGUID; out Obj): Boolean;
        {-}
      procedure CheckSort(aProp: Tk2ArrayPropertyPrim);
        {-}
      function  AsObject: TObject;
        {-}
      function  AsLong: Integer;
        {-}
      function  AsBool: Boolean;
        {* - преобразовать к Boolean. }
      {$IfNDef k2TagIsString}
      function  pm_GetAsString: AnsiString;
        {-}
      function  pm_GetAsPCharLen: Tl3PCharLen;
        {* - преобразовать к Tl3PCharLen. }
      {$EndIf  k2TagIsString}
      procedure SetIntRef(out aRef: Integer);
        {-}
      procedure ClearAtoms;
        virtual;
        {-}  
      function  AssignTag(const Source  : Ik2Tag;
                          AssignMode    : Tk2AssignModes = k2_amAll;
                          const Context : Ik2Op = nil): Boolean;
        {$IfNDef _Box_}
        {$IfNDef k2TagIsAtomic}
        virtual;
        {$EndIf  k2TagIsAtomic}
        {$EndIf  _Box_}
        {-}
      function  CloneTag: Ik2Tag;
        {-}
      function  HasSubAtom(anIndex: Integer): Boolean;
        {-}
      function  rOwnAtom(anIndex: Integer): Ik2Tag;
        {-}
      function  rAtomEx(const aPath : array of Integer;
                        theIndex    : PLong = nil): Ik2Tag;
        {* - вернуть подтег. }
      function  cAtom(anIndex        : Integer;
                      const aContext : Ik2Op = nil;
                      anAtomType: Tk2TypePrim = nil): Ik2Tag;
        {* - проверить существование подтега и создать его при необходимости. }
      function  cAtomEx(const aPath    : array of Integer;
                        const aContext : Ik2Op;
                        theIndex       : PLong = nil): Ik2Tag;
        {* - проверить существование подтега и создать его при необходимости. }
      procedure AssignCloneParams(const aSource : Ik2Tag;
                                  AssignMode    : Tk2AssignModes = k2_amAll;
                                  const Context : Ik2Op = nil);
        {-}
      {$IfNDef _Box_}
      {$IfNDef k2TagIsAtomic}
      function  CanAssignParam(const aProp: _PropIn_): Boolean;
        virtual;
        {-}
      {$EndIf  k2TagIsAtomic}  
      {$EndIf  _Box_}
      procedure IterateProperties(Action : Ik2Tag_IterateProperties_Action;
                                  All    : Boolean);
        {$IfNDef _Box_}
        virtual;
        {$EndIf  _Box_}
        {-}
   {iterator} procedure IteratePropertiesF(anAction: Ik2Tag_IterateProperties_Action;
    anAll: Boolean
    {* Перебирать все возможные свойства или только РЕАЛЬНО заданные});
     {* перебирает все существующие свойства }
      function CompareWithInt(aValue: Integer;
       anIndex: Integer): Integer;
        {$IfNDef _Box_}
        virtual;
        {$EndIf  _Box_}
        {* Сравнивает тег с целым. }
   function CompareWithTag(const aTag: Ik2Tag;
    aSortIndex: Tl3SortIndex): Integer;
        {$IfNDef _Box_}
        virtual;
        {$EndIf  _Box_}
      {$IfNDef _Box_}
      procedure CheckChildInsert(var anIndex : Integer;
                                 var aChild  : Ik2Tag;
                                 const anOp  : Ik2Op);
        virtual;
        {-}
      {$EndIf  _Box_}
      function  AddChild(var aChild     : Ik2Tag;
                         const aContext : Ik2Op = nil): Integer;
        {$IfNDef _Box_}
        virtual;
        {$EndIf  _Box_}
        {* - добавить ребенка. }
    {$If not defined(_Box_)}
    {$IfNDef k2TagIsList}
   function HackChildren: TObject;
    {$EndIf k2TagIsList}
    {$IfEnd} //not _Box_
      function  IterateChildrenF(Action : Ik2Tag_IterateChildrenF_Action;
                                 aLo    : Tl3Index = l3MinIndex;
                                 aHi    : Tl3Index = l3MaxIndex;
                                 aLoadedOnly : Boolean = false): Integer;
        {* - перебрать детей с освобождением заглушки. }
      function  IterateChildrenBackF(Action : Ik2Tag_IterateChildrenBack_Action;
                                     aHi    : Tl3Index = l3MaxIndex;
                                     aLo    : Tl3Index = l3MinIndex;
                                     aLoadedOnly : Boolean = false): Integer;
        {* - перебрать детей с освобождением заглушки. }
      function  DeleteChild(Index         : Integer;
                            const Context : Ik2Op;
                            out theChild  : Ik2Tag): Boolean;
        overload;
        {* - удалить ребенка. }
      function  DeleteChild(Index         : Integer;
                            const Context : Ik2Op = nil): Boolean;
        overload;
        {* - удалить ребенка. }
      {$IfNDef _Box_}
      function  DeleteChildPrim(Index         : Integer;
                                const aChild  : Ik2Tag;
                                const Context : Ik2Op): Boolean;
        virtual;
        {* - удалить ребенка. }
      {$EndIf  _Box_}
      function  DeleteChild(const aChild  : Ik2Tag;
                            const Context : Ik2Op = nil): Boolean;
        overload;
        {* - удалить ребенка. }
      procedure DeleteChildren(const Context: Ik2Op = nil);
        {* - удалить всех детей. }
      procedure InsertChild(anIndex        : Integer;
                            var aChild     : Ik2Tag;
                            const aContext : Ik2Op = nil);
        {$IfNDef _Box_}
        virtual;
        {$EndIf  _Box_}
        {* - вставить ребенка. }
      procedure Write(const G : Ik2TagGenerator;
                      Flags   : Tk2StorePropertyFlags = l3_spfAll;
                      Exclude : TByteSet = []);
        {* - записать тег в генератор. }
      procedure ForceStore;
        {$IfDef _Box_}
        virtual;
        {$EndIf _Box_}
        {-}
      procedure DoLoad;
        {$IfNDef k2TagIsAtomic}
        virtual;
        {$EndIf  k2TagIsAtomic}
        {-}
      function  MarkModified: Boolean;
        {$IfNDef k2TagIsAtomic}
        virtual;
        {$EndIf  k2TagIsAtomic}
        {-}
    protected
    // internal properties
      property AttrW[anIndex  : Integer;
                     const aContext : Ik2Op]: Ik2Tag
        write pm_SetAttrW;
        {-}
      property BoolW[anIndex  : Integer;
                     const aContext : Ik2Op]: Boolean
        write pm_SetBoolW;
        {* - изменить значение. }
      property IntW[anIndex  : Integer;
                    const aContext : Ik2Op]: Integer
        write pm_SetIntW;
        {* - изменить значение. }
      property IntA[anIndex: Integer]: Integer
        read pm_GetIntA
        write pm_SetIntA;
        {* - изменить значение. }
      property BoolA[anIndex  : Integer]: Boolean
        read pm_GetBoolA
        write pm_SetBoolA;
        {* - изменить значение. }
      property StrA[anIndex: Integer]: AnsiString
        read pm_GetStrA
        write pm_SetStrA;
        {-}
      property StrW[anIndex  : Integer;
                    const aContext : Ik2Op]: AnsiString
        write pm_SetStrW;
        {-}
      property PCharLenW[anIndex  : Integer;
                         const aContext : Ik2Op]: Tl3WString
        write pm_SetPCharLenW;
        {-}
    protected
    // internal properties    
      property Attr[anIndex: Integer]: Ik2Tag
        read pm_GetAttr
        write pm_SetAttr;
        {-}
    protected
    // internal methods
      {$IfNDef _Box_}
      {$IfNDef k2TagIsAtomic}
      function  GetHasSubAtom(aProp : Tk2Prop): Boolean;
        virtual;
        {-}
      {$EndIf  k2TagIsAtomic}  
      function  GetSubAtom(aProp : Tk2Prop;
                           out Data    : Integer): Boolean;
        virtual;
        {-}
      function  DoSetAtom(const aProp  : _PropIn_;
                          const aValue ): Boolean;
        {-}
      function  SetAtomPrim(const aProp    : _PropIn_;
                            var V          : Tk2Values): Boolean;
        virtual;
        abstract;
        {-}
      function  GetOwnAttrValue(const aProp  : Tk2Prop;
                                out theValue : Integer): Boolean;
        {-}
      function  GetAttrValue(const aProp  : Tk2Prop;
                             out theValue : Integer;
                             out theAttr  : Ik2Tag): Boolean;
        {-}
      function  CheckAttr(const aPath    : array of Integer;
                          const aContext : Ik2Op;
                          DoCheck        : Boolean;
                          theIndex       : PLong = nil): Ik2Tag;
        {-}
      procedure ChildAdded(const aProp    : Tk2ArrayProperty;
                           const aChild   : Ik2Tag;
                           anIndex        : Integer;
                           aTotal         : Integer;
                           const anOpPack : Ik2Op);
        {* - нотификация о добавлении "ребенка". }
      {$EndIf  _Box_}
    protected
    // internal methods
      function  DoQT(const IID        : TGUID;
                     out Obj          ;
                     const aProcessor : Ik2Processor = nil): Boolean;
        virtual;
        {* - созвращает инструмент для работы с тегом,
             к которому привязан исходный инструмент. }
      {$IfNDef _Box_}
      procedure Cleanup;
        override;
        {-}
      {$EndIf  _Box_}  
    protected
    // internal properties
      {$IfDef _Box_}
      property TagType: Tk2TypePrim
        read pm_GetTagType;
        {-}
      {$EndIf  _Box_}
    {$IfDef _Box_}
    public
    // public methods
    {$Else  _Box_}
    protected
    // interface methods
    {$EndIf _Box_}
      // Ik2Tag
      function  QT(const IID        : TGUID;
                   out Obj          ;
                   const aProcessor : Ik2Processor = nil): Boolean;
        {* - созвращает инструмент для работы с тегом,
             к которому привязан исходный инструмент. }
    {$IfDef _Box_}
    protected
    {$Else  _Box_}
    {$IfDef k2TagIsList}
    public
    {$Else  k2TagIsList}
    protected
    {$EndIf k2TagIsList}
    {$EndIf _Box_}
    // public methods
      function  IterateChildrenBack(Action : Ik2Tag_IterateChildrenBack_Action;
                                    aHi    : Tl3Index = l3MaxIndex;
                                    aLo    : Tl3Index = l3MinIndex;
                                    aLoadedOnly : Boolean = false): Integer;
        virtual;
        {* - перебрать детей. }
      function  IndexOfChild(const aChild: Ik2Tag): Integer;
        {-}
      function  DoIterateChildrenF(Action : Ik2Tag_IterateChildrenF_Action;
                                 aLo    : Tl3Index;
                                 aHi    : Tl3Index;
                                 aLoadedOnly : Boolean): Integer;
        virtual;
      function  FindChild(anAtom         : Integer;
                          aValue         : Integer;
                          const aContext : Ik2Op = nil;
                          aNeedCreate    : Boolean = false;
                          theIndex       : PLong = nil): Ik2Tag;
        {-}
      property Child[anIndex: Integer]: Ik2Tag
        read pm_GetChild;
        {-}
    public
      {$IfDef _Box_}
      function  GetRedirect: PIk2Tag;
        {-}
      {$EndIf _Box_}
    public
    // public properties
      {$IfNDef _Box_}
      {$IfNDef k2Tag_No_f_TagType}
      property TagType: Tk2Type
        read f_TagType
        write f_TagType;
        {-}
      {$EndIf  k2Tag_No_f_TagType}  
      {$EndIf _Box_}
  end;//_k2Tag_

{$Else _Tag_Declared}

type _k2OwnedObject_R_ = _k2Tag_;

{$Include k2OwnedObject.imp.pas}

// implementation

// start class _k2Tag_

{$IfNDef _Box_}
procedure _k2Tag_.Cleanup;
  //override;
  {-}
begin
 {$IfNDef k2Tag_No_f_TagType}
 f_TagType := nil;
 {$EndIf  k2Tag_No_f_TagType}
 inherited;
end;
{$EndIf  _Box_}

{$IfDef _Box_}
function _k2Tag_.GetRedirect: PIk2Tag;
  {-}
begin
 Result := @Redirect;
 if (Result = nil) OR (Result^ = nil) then
  Result := k2NullTagPlace;
end;
{$EndIf _Box_}

procedure _k2Tag_.IterateProperties(Action : Ik2Tag_IterateProperties_Action;
                                  All    : Boolean);
  //virtual;
  {-}
begin
 {$IfDef _Box_}
 GetRedirect.IterateProperties(Action, All);
 {$Else  _Box_}
 {$IfDef k2TagIsList}
 if not All then
  Action(Self, Tk2CustomProperty(_Instance_R_(Self).TagType.Prop[k2_tiChildren]));
 {$EndIf k2TagIsList}
 {$EndIf _Box_}
end;

{iterator} procedure _k2Tag_.IteratePropertiesF(anAction: Ik2Tag_IterateProperties_Action;
  anAll: Boolean
  {* Перебирать все возможные свойства или только РЕАЛЬНО заданные});
var
 Hack : Pointer absolute anAction;
begin
 try
  IterateProperties(anAction, anAll);
 finally
  l3FreeLocalStub(Hack);
 end;//try..finally
end;

function _k2Tag_.CompareWithInt(aValue: Integer;
 anIndex: Integer): Integer;
  {* Сравнивает тег с целым. }
begin
 {$IfDef _Box_}
 Result := GetRedirect.CompareWithInt(aValue, anIndex);
 {$Else  _Box_}
 Result := _Instance_R_(Self).TagType.CompareTagWithInt(Self, aValue, anIndex);
(* if (anIndex < 0) then
 begin
  Assert(false);
  Result := -1;
 end//anIndex < 0
 else
 if (anIndex >= k2_tiComplexBase) then
 begin
  Assert(false);
  Result := -1;
 end//anIndex >= k2_tiComplexBase
 else
  Result := IntA[anIndex] - aValue;*)
 {$EndIf _Box_}
end;

function _k2Tag_.CompareWithTag(const aTag: Ik2Tag;
 aSortIndex: Tl3SortIndex): Integer;

(* {$IfNDef _Box_}
 function ComplexCompare(anIndex : Integer): Integer;
   {-}
 var
  l_Index : Integer;
  l_B     : array [0..3] of Byte absolute anIndex;
  l_T     : Integer;
 begin
  Result := 0;
  for l_Index := 0 to 3 do
  begin
   l_T := l_B[l_Index];
   if (l_T = 0) then
    break;
   Dec(l_T);
   Result := Self.IntA[l_T] - aTag.IntA[l_T];
   if (Result <> 0) then
    break;
  end;//for l_Index
 end;
 {$EndIf  _Box_}*)

begin
 {$IfDef _Box_}
 Result := GetRedirect.CompareWithTag(aTag, aSortIndex);
 {$Else  _Box_}
 Result := _Instance_R_(Self).TagType.CompareTags(Self, aTag, aSortIndex);
(* if (aSortIndex < 0) then
 begin
  Assert(false);
  Result := -1;
 end//aSortIndex < 0
 else
 begin
  if (Self = aTag.AsObject) then
   Result := 0
  else
  if (aSortIndex >= k2_tiComplexBase) then
   Result := ComplexCompare(aSortIndex)
  else
   Result := CompareWithInt(aTag.IntA[aSortIndex], aSortIndex);
 end;//aSortIndex < 0*)
 {$EndIf _Box_}
end;

{$IfNDef _Box_}
{$IfNDef k2TagIsAtomic}
function _k2Tag_.GetHasSubAtom(aProp : Tk2Prop): Boolean;
  //virtual;
  {-}
begin
 {$IfDef k2TagIsList}
 Result := (aProp.TagIndex = k2_tiChildren);
 {$Else  k2TagIsList}
 Result := false;
 {$EndIf k2TagIsList}
end;
{$EndIf  k2TagIsAtomic}

function _k2Tag_.GetSubAtom(aProp : Tk2Prop;
                          out Data    : Integer): Boolean;
  //virtual;
  {-}
begin
 Data := 0;
 Result := false;
end;

function _k2Tag_.GetOwnAttrValue(const aProp  : Tk2Prop;
                               out theValue : Integer): Boolean;
  {-}
begin
 Assert(aProp <> nil);
 {$IfDef k2TagIsList}
 if (aProp.TagIndex = k2_tiChildren) then
 begin
  theValue := Integer(Self);
  Result := true;
 end//aProp.TagIndex = k2_tiChildren
 else
 {$EndIf k2TagIsList}
  Result := GetSubAtom(aProp, theValue);
end;

function _k2Tag_.GetAttrValue(const aProp  : Tk2Prop;
                            out theValue : Integer;
                            out theAttr  : Ik2Tag): Boolean;
  {-}
{$IfDef k2TagUseMapping}
var
 l_MI       : Integer;
 l_TgO      : Ik2Tag;
{$EndIf k2TagUseMapping}
{$IfDef k2TagUseDefaultValue}
var
 l_PropType : Tk2TypePrim;
 l_VT       : Tl3Dictionary;
{$EndIf k2TagUseDefaultValue}
begin
 Result := false;
 Assert(aProp <> nil);
 {$IfDef k2TagIsList}
 if (aProp.TagIndex = k2_tiChildren) then
 begin
  theValue := Integer(Self);
  Result := true;
 end//aProp.TagIndex = k2_tiChildren
 else
 {$EndIf k2TagIsList}
 if GetSubAtom(aProp, theValue) then
  Result := true
 else
 begin
  {$IfDef k2TagUseMapping}
  l_MI := aProp.EmptyMapping;
  if (l_MI <> k2_tiMask) then
  begin
   Assert(l_MI <> aProp.TagIndex);
   // - защита от зацикливания при кривой схеме документа
   l_TgO := Attr[l_MI];
   if not l_TgO.IsSame(Self) then
   begin
    theAttr := l_TgO.Attr[aProp.TagIndex];
    if theAttr.IsNull then
     theAttr := nil
    else
    begin
     Result := true;
     Exit;
    end//IsNull
   end;//not l_TgO.IsSame(Self)
  end;//l_MI <> k2_tiMask
  {$EndIf k2TagUseMapping}
  {$IfDef k2TagUseDefaultValue}
  l_PropType := Tk2TypePrim(aProp.AtomType);
  theValue := aProp.DefaultValue;
  if (theValue <> l3NilLong) then
  begin
   if l_PropType.IsOrd then
    Result := true
   else
   begin
    theAttr := Tk2Type(l_PropType).IntToTag(theValue);
    if theAttr.IsNull then
     Result := false
    else
    begin
     theValue := theAttr.AsLong;
     Result := true;
    end;//theAttr.IsNull
   end;//l_PropType.IsOrd
  end//l_Data <> l3NilLong
  else
  begin
   l_VT := Tk2Type(l_PropType).ValueTable;
   if (l_VT <> nil) then
   begin
    Result := true;
    theValue := Integer(l_VT.Default);
   end;//l_VT <> nil
  end;//l_Data <> l3NilLong
  {$EndIf k2TagUseDefaultValue}
 end;//GetSubAtom(aProp, theValue)
end;

function _k2Tag_.CheckAttr(const aPath    : array of Integer;
                         const aContext : Ik2Op;
                         DoCheck        : Boolean;
                         theIndex       : PLong = nil): Ik2Tag;
  {-}
var
 l_Index      : Integer;
 l_Prop       : Tk2CustomProperty;
 l_SaveResult : Ik2Tag;
begin
 Result := Self;
 try
  l_Index := Low(aPath);
  while (l_Index <= High(aPath)) do
  begin
   if (Result = nil) then
    Exit
   else
   if Result.IsNull then
    Exit;
   l_Prop := Tk2CustomProperty(Result.TagType.Prop[aPath[l_Index]]);
   if (l_Prop = nil) OR l_Prop.IsNull then
   begin
    Result := nil;
    Exit;
   end;//l_Prop = nil
   l_SaveResult := Result;

   Result := nil;
   with l_SaveResult do
   begin
    Result := rOwnAtom(l_Prop.TagIndex);
    if DoCheck AND Result.IsNull then
    begin
     Result := Tk2Type(l_Prop.AtomType).MakeTag;
     AttrW[l_Prop.TagIndex, aContext] := Result;
    end;//DoCheck AND Result.IsNull
   end;//with l_SaveResult

   if (l_Index < High(aPath)) then
   begin
    if l_Prop.IsArray AND Result.IsValid then
    begin
     if (l_Index = Pred(High(aPath))) then k2ListError(l_Index);
     Result := Result.FindChild(aPath[l_Index + 1],
                                aPath[l_Index + 2],
                                aContext, DoCheck, theIndex);
     Inc(l_Index, 2);
    end;//l_Prop.IsArray AND Result.IsValid
   end;//l_Index < High(aPath)
   Inc(l_Index);
  end;//while (l_Index <= High(aPath))
 finally
  if (Result = nil) then
   Result := k2NullTag;
 end;//try..finally
end;

procedure _k2Tag_.ChildAdded(const aProp    : Tk2ArrayProperty;
                           const aChild   : Ik2Tag;
                           anIndex        : Integer;
                           aTotal         : Integer;
                           const anOpPack : Ik2Op);
  {* - нотификация о добавлении "ребенка". }
begin
 aProp.DoAfterChildAdded(Self, aChild, anOpPack, anIndex, aTotal);
end;
{$EndIf  _Box_}

function _k2Tag_.IterateChildrenBack(Action : Ik2Tag_IterateChildrenBack_Action;
                                   aHi    : Tl3Index = l3MaxIndex;
                                   aLo    : Tl3Index = l3MinIndex;
                                   aLoadedOnly : Boolean = false): Integer;
  //virtual;
  {* - перебрать детей. }
{$IfNDef _Box_}
 {$IfNDef k2TagIsAtomic}
 {$IfDef k2TagIsList}
 
  function DoChild(aChild: PIk2Tag; anIndex: Long): Boolean;
  begin//DoChild
   Result := Action(aChild^, anIndex);
  end;//DoChild

 {$Else  k2TagIsList}
 var
  l_List : Tk2List;
 {$EndIf k2TagIsList}
 {$EndIf  k2TagIsAtomic}
{$EndIf  _Box_}
begin
 {$IfDef _Box_}
 Result := GetRedirect.IterateChildrenBack(Action, aHi, aLo, aLoadedOnly);
 {$Else  _Box_}
 {$IfNDef k2TagIsAtomic}
 {$IfDef k2TagIsList}
 Result := IterateBackF(aHi, aLo, l3L2IA(@DoChild));
 {$Else  k2TagIsList}
 l_List := Tk2List(HackChildren);
 if (l_List = nil) then
  Result := -1
 else
  Result := l_List.IterateChildrenBack(Action, aHi, aLo, aLoadedOnly);
// Result := Attr[k2_tiChildren].IterateChildrenBack(Action, aHi, aLo, aLoadedOnly);
 {$EndIf k2TagIsList}
 {$Else   k2TagIsAtomic}
 Result := -1;
 {$EndIf  k2TagIsAtomic}
 {$EndIf _Box_}
end;

function _k2Tag_.pm_GetTagType: Tk2TypePrim;
  {-}
begin
 {$IfDef _Box_}
 Result := GetRedirect.TagType;
 {$Else  _Box_}
 Result := _Instance_R_(Self).TagType;
 {$EndIf _Box_}
end;

procedure _k2Tag_.pm_SetAttr(anIndex: Integer; const aValue : Ik2Tag);
  {-}
begin
 AttrW[anIndex, nil] := aValue;
end;

procedure _k2Tag_.pm_SetAttrW(anIndex        : Integer;
                            const aContext : Ik2Op;
                            const aValue   : Ik2Tag);
  {* - изменить значение. }
{$IfNDef _Box_}
var
 l_PropType  : Tk2TypePrim;
 l_Prop      : _PropLoc_;

 procedure SetObj;
 var
  l_Obj : TObject;
 begin//SetObj
  if Tk2Type(l_PropType).IsSame(aValue.TagType) then
   SetSubAtom(_PropIn_(l_Prop), aValue)
  else
  begin
   l_Obj := aValue.AsObject;
(*   if (l_Obj <> nil) AND l_Obj.InheritsFrom(Tk2Type(l_PropType).AtomClass) then
    SetSubAtom(_PropIn_(l_Prop), aValue)
   else*)
   // - проверку закомментировал, т.к. она вроде внутри делается
   begin
    l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rVT := vtObj;
    SetSubAtom(_PropIn_(l_Prop), l_Obj);
   end;//l_Obj <> nil
  end;//l_PropType.IsSame(aValue.TagType)
 end;//SetObj

var
 l_inStream  : IStream;

 procedure SetStream;
 var
  l_outStream : IStream;
  l_Read      : Large;
  l_Written   : Large;
  l_Position  : Large;
  l_Nil       : Ik2Tag;
 begin//SetStream
  if Supports(l_inStream, Ik2RawData) then
   SetObj
  else
  if Supports(cAtom(l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.TagIndex, aContext), IStream, l_outStream) then
  try
   l_inStream.Seek(0, STREAM_SEEK_SET, l_Position);
   l_inStream.CopyTo(l_outStream, High(Large), l_Read, l_Written);
   l_outStream.Seek(0, STREAM_SEEK_CUR, l_Position);
   l_outStream.SetSize(l_Position);
   if (l_Position = 0) then
    SetSubAtom(_PropIn_(l_Prop), l_Nil);
  finally
   l_outStream := nil;
  end//try..finally
  else
   Assert(false);
 end;//SetStream

var
 l_Int : Integer;
{$EndIf  _Box_}
begin
 {$IfDef _Box_}
 GetRedirect.AttrW[anIndex, aContext] := aValue;
 {$Else  _Box_}
 l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp := Tk2Prop(_Instance_R_(Self).TagType.Prop[anIndex]);
 if (l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp = nil) then
  Exit;
 l_Prop.rOp := Pointer(aContext);
 l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rDeleteMapped := true;
 l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rVT := vtTag;
 if (aValue = nil) then
  SetSubAtom(_PropIn_(l_Prop), aValue)
 else
 begin
  l_PropType := Tk2TypePrim(l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.AtomType);
  if aValue.IsNull then
   SetSubAtom(_PropIn_(l_Prop), aValue)
  else
  if aValue.IsOrd then
  begin
   if l_PropType.IsOrd then
    SetSubAtom(_PropIn_(l_Prop), aValue)
   else
   begin
    l_Int := aValue.AsLong;
    l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rVT := vtInt;
    SetSubAtom(_PropIn_(l_Prop), l_Int);
   end;//l_PropType.IsOrd
  end//aValue.IsOrd
  else
  if aValue.IsTransparent then
   SetSubAtom(_PropIn_(l_Prop), aValue)
  else
  if aValue.IsStream(l_inStream) then
  begin
   try
    SetStream;
   finally
    l_inStream := nil;
   end;//try..finally
  end//aValue.IsStream
  else
   SetObj;
 end;//aValue = nil
 {$EndIf _Box_}
end;

function _k2Tag_.pm_GetBoolA(anIndex : Integer): Boolean;
  {-}
{$IfNDef _Box_}
var
 l_Prop  : Tk2Prop;
 l_Value : Integer;
 l_Attr  : Ik2Tag;
 l_AT    : Tk2TypePrim;
{$EndIf  _Box_}
begin
 {$IfDef _Box_}
 Result := GetRedirect.BoolA[anIndex];
 {$Else  _Box_}
 l_Prop := Tk2Prop(_Instance_R_(Self).TagType.Prop[anIndex]);
 if (l_Prop <> nil) AND GetAttrValue(l_Prop, l_Value, l_Attr) then
 begin
  if (l_Attr = nil) then
  begin
   l_AT := Tk2TypePrim(l_Prop.AtomType);
   if l_AT.IsOrd then
    Result := (l_Value <> 0)
   else
    Result := Tk2Type(l_AT).TagFromIntRef(l_Value).AsBool;
  end//l_Attr = nil
  else
   Result := l_Attr.AsBool;
 end//GetAttrValue
 else
  Result := false;
 {$EndIf _Box_}
end;

procedure _k2Tag_.pm_SetBoolA(anIndex      : Integer;
                              aValue : Boolean);
  {-}
begin
 BoolW[anIndex, nil] := aValue;
end;

function _k2Tag_.pm_GetIntA(anIndex  : Integer): Integer;
  {-}
{$IfNDef _Box_}
var
 l_Prop  : Tk2Prop;
 l_Value : Integer;
 l_Attr  : Ik2Tag;
 l_AT    : Tk2TypePrim;
{$EndIf  _Box_}
begin
 {$IfDef _Box_}
 Result := GetRedirect.IntA[anIndex];
 {$Else  _Box_}
 l_Prop := Tk2Prop(_Instance_R_(Self).TagType.Prop[anIndex]);
 if (l_Prop <> nil) AND GetAttrValue(l_Prop, l_Value, l_Attr) then
 begin
  if (l_Attr = nil) then
  begin
   l_AT := Tk2TypePrim(l_Prop.AtomType);
   if l_AT.IsOrd then
    Result := l_Value
   else
    Result := Tk2Type(l_AT).TagFromIntRef(l_Value).AsLong;
  end//l_Attr = nil
  else
   Result := l_Attr.AsLong;
 end//GetAttrValue
 else
  Result := 0;
 {$EndIf _Box_}
end;

procedure _k2Tag_.pm_SetIntA(anIndex  : Integer;
                           aValue   : Integer);
  {-}
begin
 IntW[anIndex, nil] := aValue;
end;

function _k2Tag_.pm_GetStrA(anIndex  : Integer): AnsiString;
  {-}
begin
 Result := Attr[anIndex].AsString;
end;

procedure _k2Tag_.pm_SetStrA(anIndex      : Integer;
                           const aValue : AnsiString);
  {-}
begin
 StrW[anIndex, nil] := aValue;
end;

procedure _k2Tag_.pm_SetBoolW(anIndex        : Integer;
                             const aContext : Ik2Op;
                             aValue   : Boolean);
  {-}
{$IfNDef _Box_}
var
 l_Prop : _PropLoc_;
{$EndIf  _Box_}
begin
 {$IfDef _Box_}
 GetRedirect.BoolW[anIndex, aContext] := aValue;
 {$Else  _Box_}
 l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp := Tk2Prop(_Instance_R_(Self).TagType.Prop[anIndex]);
 if (l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp <> nil) then
 begin
  l_Prop.rOp := Pointer(aContext);
  l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rDeleteMapped := true;
  l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rVT := vtBool;
  SetSubAtom(_PropIn_(l_Prop), aValue);
 end;//l_Prop <> nil
 {$EndIf _Box_}
end;

procedure _k2Tag_.pm_SetIntW(anIndex        : Integer;
                            const aContext : Ik2Op;
                            aValue   : Integer);
  {-}
{$IfNDef _Box_}
var
 l_Prop : _PropLoc_;
{$EndIf  _Box_}
begin
 {$IfDef _Box_}
 GetRedirect.IntW[anIndex, aContext] := aValue;
 {$Else  _Box_}
 l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp := Tk2Prop(_Instance_R_(Self).TagType.Prop[anIndex]);
 if (l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp <> nil) then
 begin
  l_Prop.rOp := Pointer(aContext);
  l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rDeleteMapped := true;
  l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rVT := vtInt;
  SetSubAtom(_PropIn_(l_Prop), aValue);
 end;//l_Prop.rProp <> nil
 {$EndIf _Box_}
end;

procedure _k2Tag_.pm_SetObjW(anIndex  : Integer;
                           const aContext : Ik2Op;
                           aValue         : TObject);
  {-}
{$IfNDef _Box_}
var
 l_Prop : _PropLoc_;
{$EndIf  _Box_}
begin
 {$IfDef _Box_}
 GetRedirect.ObjW[anIndex, aContext] := aValue;
 {$Else  _Box_}
 l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp := Tk2Prop(_Instance_R_(Self).TagType.Prop[anIndex]);
 if (l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp <> nil) then
 begin
  l_Prop.rOp := Pointer(aContext);
  l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rDeleteMapped := true;
  l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rVT := vtObj;
  SetSubAtom(_PropIn_(l_Prop), aValue);
 end;//l_Prop.rProp <> nil
 {$EndIf _Box_}
end;

procedure _k2Tag_.pm_SetStrW(anIndex  : Integer;
                            const aContext : Ik2Op;
                            const aValue   : AnsiString);
  {* - изменить значение. }
{$IfNDef _Box_}
var
 l_Prop : _PropLoc_;
{$EndIf  _Box_}
begin
 {$IfDef _Box_}
 GetRedirect.StrW[anIndex, aContext] := aValue;
 {$Else  _Box_}
 l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp := Tk2Prop(_Instance_R_(Self).TagType.Prop[anIndex]);
 if (l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp <> nil) then
 begin
  l_Prop.rOp := Pointer(aContext);
  l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rDeleteMapped := true;
  l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rVT := vtStr;
  SetSubAtom(_PropIn_(l_Prop), aValue);
 end;//l_Prop.rProp <> nil
 {$EndIf _Box_}
end;

function _k2Tag_.pm_GetPCharLenA(anIndex      : Integer): Tl3PCharLen;
  {-}
{$IfDef _Box_}
{$Else  _Box_}
var
 l_Attr  : Ik2Tag;
 l_Prop  : Tk2Prop;
 l_Value : Integer;
{$EndIf _Box_}
begin
 {$IfDef _Box_}
 Result := GetRedirect.PCharLenA[anIndex];
 {$Else  _Box_}
 l_Prop := Tk2Prop(_Instance_R_(Self).TagType.Prop[anIndex]);
 if (l_Prop <> nil) AND GetAttrValue(l_Prop, l_Value, l_Attr) then
 begin
  if (l_Attr = nil) then
   Tl3WString(Result) := Tl3PrimString(l_Value).AsWStr
  else
   Result := l_Attr.AsPCharLen;
 end//GetAttrValue
 else
  l3AssignNil(Result);
 //Result := Attr[anIndex].AsPCharLen;
 {$EndIf _Box_}
end;

procedure _k2Tag_.pm_SetPCharLenA(anIndex      : Integer;
                                const aValue : Tl3PCharLen);
  {-}
begin
 PCharLenW[anIndex, nil] := aValue;
end;

procedure _k2Tag_.pm_SetPCharLenW(anIndex  : Integer;
                                 const aContext : Ik2Op;
                                 const aValue   : Tl3WString);
  {-}
var
 l_Prop : Tk2Prop;
begin
 l_Prop := Tk2Prop(_Instance_R_(Self).TagType.Prop[anIndex]);
 if (l_Prop <> nil) then
  AttrW[l_Prop.TagIndex, aContext] := Tk2Type(l_Prop.AtomType).PCharLenToTag(Tl3PCharLen(aValue));
end;

function _k2Tag_.pm_GetChildrenCount: Integer;
  //virtual;
  {-}
{$IfNDef _Box_}
 {$IfNDef k2TagIsAtomic}
 {$IfNDef k2TagIsList}
 var
  l_List : Tk2List;
 {$EndIf  k2TagIsList}
 {$EndIf  k2TagIsAtomic}
{$EndIf  _Box_}
begin
 {$IfDef _Box_}
 Result := GetRedirect.ChildrenCount;
 {$Else  _Box_}
 {$IfNDef k2TagIsAtomic}
 {$IfDef k2TagIsList}
 Result := Count;
 {$Else  k2TagIsList}
 l_List := Tk2List(HackChildren);
 if (l_List = nil) then
  Result := 0
 else
  Result := l_List.Count;
 //Result := Attr[k2_tiChildren].ChildrenCount;
 {$EndIf k2TagIsList}
 {$Else   k2TagIsAtomic}
 Result := 0;
 {$EndIf  k2TagIsAtomic}
 {$EndIf _Box_}
end;

procedure _k2Tag_.Set_ChildrenCapacity(aValue: Integer);
  //virtual;
  {-}
{$IfNDef _Box_}
 {$IfNDef k2TagIsAtomic}
 {$IfNDef k2TagIsList}
 var
  l_List : Tk2List;
 {$EndIf  k2TagIsList}
 {$EndIf  k2TagIsAtomic}
{$EndIf  _Box_}
begin
 {$IfDef _Box_}
 GetRedirect.ChildrenCapacity := aValue;
 {$Else  _Box_}
 {$IfNDef k2TagIsAtomic}
 {$IfDef k2TagIsList}
 if (Count < aValue) then
  Capacity := aValue;
 {$Else  k2TagIsList}
 l_List := Tk2List(HackChildren);
 if (l_List <> nil) then
  if (l_List.Count < aValue) then
   l_List.Capacity := aValue;
 //Result := Attr[k2_tiChildren].ChildrenCount;
 {$EndIf k2TagIsList}
 {$Else   k2TagIsAtomic}
 Assert(false);
 {$EndIf  k2TagIsAtomic}
 {$EndIf _Box_}
end;

function _k2Tag_.pm_GetChild(anIndex: Integer): Ik2Tag;
  //virtual;
  {-}
{$IfNDef _Box_}
 {$IfNDef k2TagIsAtomic}
 {$IfNDef k2TagIsList}
 var
  l_List : Tk2List;
 {$EndIf  k2TagIsList} 
 {$EndIf  k2TagIsAtomic}
{$EndIf  _Box_}
begin
 {$IfDef _Box_}
 Result := GetRedirect.Child[anIndex];
 {$Else  _Box_}
 {$IfNDef k2TagIsAtomic}
 {$IfDef k2TagIsList}
 Result := Items[anIndex];
 {$Else  k2TagIsList}
 l_List := Tk2List(HackChildren);
 if (l_List = nil) then
  Result := k2NullTag
 else
  Result := l_List.Child[anIndex];
 //Result := Attr[k2_tiChildren].Child[anIndex];
 {$EndIf k2TagIsList}
 {$Else   k2TagIsAtomic}
 Result := k2NullTag;
 {$EndIf  k2TagIsAtomic}
 {$EndIf _Box_}
end;

function _k2Tag_.IsNull: Boolean;
  {-}
begin
 {$IfDef _Box_}
 Result := GetRedirect.IsNull;
 {$Else  _Box_}
 Result := false;
 {$EndIf _Box_}
end;

function _k2Tag_.IsValid: Boolean;
  {-}
begin
 {$IfDef _Box_}
 Result := GetRedirect.IsValid;
 {$Else  _Box_}
 Result := (_Instance_R_(Self).TagType <> nil);
 {$EndIf _Box_}
end;

function _k2Tag_.IsTransparent: Boolean;
  {* - тег "прозрачный"? }
begin
 {$IfDef _Box_}
 Result := GetRedirect.IsTransparent;
 {$Else  _Box_}
 Result := false;
 {$EndIf _Box_}
end;

function _k2Tag_.IsOrd: Boolean;
  {* - тег атомарного типа? }
begin
 {$IfDef _Box_}
 Result := GetRedirect.IsOrd;
 {$Else  _Box_}
 {$IfNDef k2TagIsAtomic}
 Result := false;
 {$Else   k2TagIsAtomic}
 Result := true;
 {$EndIf  k2TagIsAtomic}
 {$EndIf _Box_}
end;

function _k2Tag_.IsStream(out theStream: IStream): Boolean;
  {-}
begin
 {$IfDef _Box_}
 Result := GetRedirect.IsStream(theStream);
 {$Else  _Box_}
 Result := false;
 {$EndIf _Box_}
end;

function _k2Tag_.Box: Ik2Tag;
  {* - ссылка на тег - для сохранения. }
begin
 {$IfDef _Box_}
 Result := GetRedirect.Box;
 {$Else  _Box_}
 Result := Self;
 {$EndIf _Box_}
end;

function _k2Tag_.InheritsFrom(ID: Integer): Boolean;
  //overload;
  {* - проверяет наследование данного типа от типа с идентификатором ID. }
begin
 Result := _Instance_R_(Self).TagType.InheritsFrom(ID);
end;

function _k2Tag_.InheritsFrom(const anIDs : array of Integer): Boolean;
  //overload;
  {* - проверить наследование. }
begin
 Result := _Instance_R_(Self).TagType.InheritsFrom(anIDs);
end;

function _k2Tag_.InheritsFrom(anAtomTypeID  : Integer;
                            const Exclude : array of Integer): Boolean;
  //overload;
  {* - проверить наследование. }
begin
 Result := _Instance_R_(Self).TagType.InheritsFrom(anAtomTypeID, Exclude);
end;

function _k2Tag_.rLong(anIndex  : Integer;
                     aDefault : Integer): Integer;
  {-}
{$IfNDef _Box_}
var
 l_Prop  : Tk2Prop;
 l_Value : Integer;
 l_Attr  : Ik2Tag;
 l_AT    : Tk2TypePrim;
{$EndIf  _Box_}
begin
 {$IfDef _Box_}
 Result := GetRedirect.rLong(anIndex, aDefault);
 {$Else  _Box_}
 l_Prop := Tk2Prop(_Instance_R_(Self).TagType.Prop[anIndex]);
 if (l_Prop <> nil) AND GetAttrValue(l_Prop, l_Value, l_Attr) then
 begin
  if (l_Attr = nil) then
  begin
   l_AT := Tk2TypePrim(l_Prop.AtomType);
   if l_AT.IsOrd then
    Result := l_Value
   else
    Result := Tk2Type(l_AT).TagFromIntRef(l_Value).AsLong;
  end//l_Attr = nil
  else
   Result := l_Attr.AsLong;
 end//GetAttrValue
 else
  Result := aDefault;
 {$EndIf _Box_}
end;

function _k2Tag_.rBool(anIndex  : Integer;
                     aDefault : Boolean): Boolean;
  {-}
{$IfNDef _Box_}
var
 l_Prop  : Tk2Prop;
 l_Value : Integer;
 l_Attr  : Ik2Tag;
 l_AT    : Tk2TypePrim;
{$EndIf  _Box_}
begin
 {$IfDef _Box_}
 Result := GetRedirect.rBool(anIndex, aDefault);
 {$Else  _Box_}
 l_Prop := Tk2Prop(_Instance_R_(Self).TagType.Prop[anIndex]);
 if (l_Prop <> nil) AND GetAttrValue(l_Prop, l_Value, l_Attr) then
 begin
  if (l_Attr = nil) then
  begin
   l_AT := Tk2TypePrim(l_Prop.AtomType);
   if l_AT.IsOrd then
    Result := (l_Value <> 0)
   else
    Result := Tk2Type(l_AT).TagFromIntRef(l_Value).AsBool;
  end//l_Attr = nil
  else
   Result := l_Attr.AsBool;
 end//GetAttrValue
 else
  Result := aDefault;
 {$EndIf _Box_}
end;

function _k2Tag_.QT(const IID        : TGUID;
                  out Obj          ;
                  const aProcessor : Ik2Processor = nil): Boolean;
  {* - созвращает инструмент для работы с тегом,
       к которому привязан исходный инструмент. }
begin
 {$IfDef _Box_}
 if GetLinkedInterface(IID, Obj) then
  Result := true
 else
 {$EndIf _Box_}
  Result := DoQT(IID, Obj, aProcessor);
end;

function _k2Tag_.DoQT(const IID        : TGUID;
                    out Obj          ;
                    const aProcessor : Ik2Processor = nil): Boolean;
  //virtual;
  {* - созвращает инструмент для работы с тегом,
       к которому привязан исходный инструмент. }
var
 l_Type    : Tk2Type;
 l_Factory : Ik2TagToolFactory;
begin
 Result := false;
 Pointer(Obj) := nil;
 l_Type := {$IfDef _Box_}Tk2Type{$EndIf}(_Instance_R_(Self).TagType);
 if (l_Type <> nil) then
 begin
  l_Factory := l_Type.ToolFactory;
  if (l_Factory <> nil) then
   try
    Result := l_Factory.QueryTool(Self, IID, Obj, aProcessor);
   finally
    l_Factory := nil;
   end;{try..finally}
 end;//l_Type <> nil
end;

function _k2Tag_.IsSame(const aTag: Ik2Tag): Boolean;
  {* - указывает, что инструменты работают с одним и тем же тегом. }
begin
 {$IfDef _Box_}
 Result := (Ik2Tag(Self) = aTag);
 if not Result then
  Result := GetRedirect.IsSame(aTag);
 {$Else  _Box_}
 if (aTag = nil) OR not aTag.IsValid then
  Result := false
 else
  Result := (Integer(Self) = aTag.IntRef) AND _Instance_R_(Self).TagType.IsSame(aTag.TagType);
 {$EndIf _Box_}
end;

function _k2Tag_.IntRef: Integer;
  {-}
begin
 {$IfDef _Box_}
 Result := GetRedirect.IntRef;
 {$Else  _Box_}
 {$IfNDef k2TagIsAtomic}
 Result := Integer(Self);
 {$Else   k2TagIsAtomic}
 Result := f_Value;
 {$EndIf  k2TagIsAtomic}
 {$EndIf _Box_}
end;

function _k2Tag_.GetOwnInterface(const IID: TGUID; out Obj): Boolean;
  {* - возвращает интерфейс НЕПОСРЕДСТВЕННО поддерживаемый реализацией
       инструмента. }
begin
 Result := GetInterface(IID, Obj);
end;

function _k2Tag_.GetLinkedInterface(const IID: TGUID; out Obj): Boolean;
  {-}
begin
 Result := GetInterface(IID, Obj);
 {$IfDef _Box_}
 if not Result then
  Result := GetRedirect.GetLinkedInterface(IID, Obj);
 {$EndIf _Box_}
end;

type
  THackTagTool = class(Tk2ToolPrim);

procedure _k2Tag_.CheckSort(aProp: Tk2ArrayPropertyPrim);
  {-}
begin
 {$IfDef _Box_}
 GetRedirect.CheckSort(aProp);
 {$Else  _Box_}
 {$IfDef k2TagIsList}
 if (aProp <> nil) AND (Tk2ArrayProperty(aProp).SortIndex <> k2_tiSelfID) then
 begin
  SortIndex := Tk2ArrayProperty(aProp).SortIndex;
  Duplicates := Tk2ArrayProperty(aProp).Duplicates;
 end;//aProp.SortIndex <> k2_tiSelfID
 {$EndIf k2TagIsList} 
 {$EndIf _Box_}
end;

function _k2Tag_.AsObject: TObject;
  {-}
begin
 {$IfDef _Box_}
 Result := GetRedirect.AsObject;
 {$Else  _Box_}
 {$IfNDef k2TagIsAtomic}
 Result := Self;
 {$Else  k2TagIsAtomic}
 Result := nil;
 {$EndIf k2TagIsAtomic}
 {$EndIf _Box_}
end;

function _k2Tag_.AsLong: Integer;
  {-}
begin
 {$IfDef _Box_}
 Result := GetRedirect.AsLong;
 {$Else  _Box_}
 {$IfNDef k2TagIsAtomic}
 Result := _Instance_R_(Self).TagType.Wrapper.AsLong(Self);
 {$Else   k2TagIsAtomic}
 Result := f_Value;
 {$EndIf  k2TagIsAtomic}
 {$EndIf _Box_}
end;

function _k2Tag_.AsBool: Boolean;
  {* - преобразовать к Boolean. }
begin
 {$IfDef _Box_}
 Result := GetRedirect.AsBool;
 {$Else  _Box_}
 {$IfNDef k2TagIsAtomic}
 Result := _Instance_R_(Self).TagType.Wrapper.AsBool(Self);
 {$Else   k2TagIsAtomic}
 Result := (f_Value <> 0);
 {$EndIf  k2TagIsAtomic}
 {$EndIf _Box_}
end;

{$IfNDef k2TagIsString}
function _k2Tag_.pm_GetAsString: AnsiString;
  {-}
begin
 {$IfDef _Box_}
 Result := GetRedirect.AsString;
 {$Else  _Box_}
 Result := _Instance_R_(Self).TagType.Wrapper.AsString(Self);
 {$EndIf _Box_}
end;

function _k2Tag_.pm_GetAsPCharLen: Tl3PCharLen;
  {* - преобразовать к Tl3PCharLen. }
begin
 {$IfDef _Box_}
 Result := GetRedirect.AsPCharLen;
 {$Else  _Box_}
 l3AssignNil(Result);
 {$EndIf _Box_}
end;
{$EndIf  k2TagIsString}

procedure _k2Tag_.SetIntRef(out aRef: Integer);
  {-}
begin
 {$IfDef _Box_}
 GetRedirect.SetIntRef(aRef);
 {$Else  _Box_}
 {$IfNDef k2TagIsAtomic}
 TObject(aRef) := Use;
 {$Else   k2TagIsAtomic}
 aRef := f_Value;
 {$EndIf  k2TagIsAtomic}
 {$EndIf _Box_}
end;

procedure _k2Tag_.ClearAtoms;
  //virtual;
  {-}
begin
end;
  
function _k2Tag_.AssignTag(const Source  : Ik2Tag;
                         AssignMode    : Tk2AssignModes = k2_amAll;
                         const Context : Ik2Op = nil): Boolean;
  {-}

{$IfNDef _Box_}

{$IfDef k2TagComplexAssign}
 function AssignProperty(const aSourceAtom: Ik2Tag; aProp: Tk2CustomPropertyPrim): Boolean;
 var
  l_DstProp : _PropLoc_;

  function AssignChild(const aSourceChild: Ik2Tag; Index: Integer): Boolean; far;
  var
   DstChild : Ik2Tag;
  begin//AssignChild
   DstChild := Tk2Type(aSourceChild.TagType).MakeTag;
   try
    DstChild.AssignTag(aSourceChild, AssignMode, Context);
    try
     Self.AddChild(DstChild, Context);
    except
     on Ek2CannotAddChild do ;
    end;//try..except
   finally
    DstChild := nil;
   end;{try..finally}
   Result := true;
  end;//AssignChild

 var
  A : Ik2Tag;
  l_IDI : Integer;
 begin//AssignProperty
  Result := true;
  l_DstProp.rOp := Pointer(Context);
  l_DstProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rDeleteMapped := false;
  l_DstProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp := Tk2Prop(_Instance_R_(Self).TagType.Prop[aProp.TagIndex]);
  l_DstProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rVT := vtTag;
  if (l_DstProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp <> nil) AND
      not l_DstProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.ReadOnly AND
      CanAssignParam(_PropIn_(l_DstProp)) then
  // - если свойство ReadOnly, то его присваивать не надо.
  begin
   if Tk2Prop(aProp).GetStored(Source, aSourceAtom, Context) then
   begin
    if aSourceAtom.IsNull then
    begin
     if (k2_amNull in AssignMode) then
     begin
      A := nil;
      Self.SetSubAtom(_PropIn_(l_DstProp), A);
     end//k2_amNull in AssignMode
     else
      Exit;
    end//aSourceAtom.IsNull
    else
    if (aProp.TagIndex = k2_tiChildren) then
    begin
     {$IfNDef k2TagIsList}
     A := Tk2Type(l_DstProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.AtomType).MakeTag;
     try
      Self.SetSubAtom(_PropIn_(l_DstProp), A);
     {$EndIf  k2TagIsList}
      aSourceAtom.IterateChildrenF(k2L2TIA(@AssignChild));
     {$IfNDef k2TagIsList}
     finally
      A := nil;
     end;//try..finally}
     {$EndIf  k2TagIsList}
    end//SrcProp.TagIndex = k2_tiChildren
    else
    begin
     if aSourceAtom.IsTransparent AND not (k2_amTransparent in AssignMode) then
      Exit;
     if aProp.Shared then
      Self.SetSubAtom(_PropIn_(l_DstProp), aSourceAtom)
     else
     begin
      if l_DstProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.AtomType.IsOrd then
       Self.SetSubAtom(_PropIn_(l_DstProp), aSourceAtom)
      else
      begin
       l_IDI := Tk2Type(l_DstProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.TagType).IDIndex;
       if (l_IDI <> k2_tiSelfID) AND (l_IDI <> k2_tiMask) AND
        aSourceAtom.HasSubAtom(l_IDI) then
        Self.SetSubAtom(_PropIn_(l_DstProp), aSourceAtom)
       else
       begin
        A := Self.rOwnAtom(l_DstProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.TagIndex);
        if A.IsValid then
         A.AssignTag(aSourceAtom, AssignMode, Context)
        else
        begin
         A := Tk2Type(l_DstProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.AtomType).MakeTag;
         try
          A.AssignTag(aSourceAtom, AssignMode, Context);
          Self.SetSubAtom(_PropIn_(l_DstProp), A);
         finally
          A := nil;
         end;//try..finally
        end;//A.IsValid
       end;//l_IDI <> k2_tiSelfID..
      end;//l_DstProp.AtomType.IsOrd
     end;//SrcProp.Shared
    end;//SrcProp.TagIndex = k2_tiChildren
   end//SrcProp.GetStored(Source, aSourceAtom, Context)
   else
   begin
    A := nil;
    Self.SetSubAtom(_PropIn_(l_DstProp), A);
   end;//aProp.GetStored
   AssignTag := true;
  end;//not l_DstProp.ReadOnly
  // - хотя бы один атом был присвоен
 end;//AssignProperty

var
 l_All : Boolean;
{$EndIf k2TagComplexAssign}
{$EndIf  _Box_}
begin
 {$IfDef _Box_}
 Result := GetRedirect.AssignTag(Source, AssignMode, Context);
 {$Else  _Box_}
 {$IfDef k2TagComplexAssign}
 Result := false;
 l_All := (AssignMode = k2_amAll) OR (AssignMode = [k2_amNull]);
(* if (k2_amNull in AssignMode) AND not l_All then
  Self.ClearAtoms;
  {&&& !!! &&& для k2ArrayAtom}*)
 Source.IteratePropertiesF(L2Ik2TagIteratePropertiesAction(@AssignProperty), l_All);
 {$Else  k2TagComplexAssign}
 {$IfNDef k2TagIsAtomic}
 Result := true;
 Assign(Source.AsObject As TPersistent);
 {$Else  k2TagIsAtomic}
 Assert(false, 'Пытаемся присвоить атомарный тип: ' +  TagType.AsString);
 Result := false;
 {$EndIf k2TagIsAtomic}
 {$EndIf k2TagComplexAssign}
 {$EndIf _Box_}
end;

function _k2Tag_.CloneTag: Ik2Tag;
  {-}
begin
 {$IfDef _Box_}
 Result := GetRedirect.CloneTag;
 {$Else  _Box_}
 {$IfNDef k2TagIsAtomic}
 Result := _Instance_R_(Self).TagType.MakeTag;
 Result.AssignTag(Self);
 {$Else  k2TagIsAtomic}
 Result := Self;
 {$EndIf k2TagIsAtomic}
 {$EndIf _Box_}
end;

function _k2Tag_.HasSubAtom(anIndex: Integer): Boolean;
  {-}
{$IfNDef _Box_}
var
 l_Prop : Tk2Prop;
{$EndIf  _Box_}
begin
 {$IfDef _Box_}
 Result := GetRedirect.HasSubAtom(anIndex);
 {$Else  _Box_}
 {$IfNDef k2TagIsAtomic}
 l_Prop := Tk2Prop(_Instance_R_(Self).TagType.Prop[anIndex]);
 if (l_Prop = nil) then
  Result := false
 else
  Result := GetHasSubAtom(l_Prop);
 {$Else   k2TagIsAtomic}
 Result := false;
 {$EndIf  k2TagIsAtomic}
 {$EndIf _Box_}
end;

function _k2Tag_.rOwnAtom(anIndex: Integer): Ik2Tag;
  {-}
{$IfNDef _Box_}
var
 l_Value : Integer;
 l_Prop  : Tk2Prop;
{$EndIf  _Box_}
begin
 {$IfDef _Box_}
 Result := GetRedirect.rOwnAtom(anIndex);
 {$Else  _Box_}
 l_Prop := Tk2Prop(_Instance_R_(Self).TagType.Prop[anIndex]);
 if (l_Prop <> nil) AND GetOwnAttrValue(l_Prop, l_Value) then
  Result :=
   {$IfDef _Box_}
   l_Prop.AtomType
   {$Else  _Box_}
   Tk2Type(l_Prop.AtomType)
   {$EndIf _Box_}
    .TagFromIntRef(l_Value)
 else
  Result := k2NullTag;
 {$EndIf _Box_}
end;

function _k2Tag_.pm_GetAttr(anIndex : Integer): Ik2Tag;
  //overload;
  {-}
{$IfNDef _Box_}
var
 l_Value : Integer;
 l_Attr  : Ik2Tag;
 l_Prop  : Tk2Prop;
{$EndIf  _Box_}
begin
 {$IfDef _Box_}
 Result := GetRedirect.Attr[anIndex];
 {$Else  _Box_}
 l_Prop := Tk2Prop(_Instance_R_(Self).TagType.Prop[anIndex]);
 if (l_Prop <> nil) AND GetAttrValue(l_Prop, l_Value, l_Attr) then
 begin
  if (l_Attr = nil) then
   Result :=
    {$IfDef _Box_}
    l_Prop.AtomType
    {$Else  _Box_}
    Tk2Type(l_Prop.AtomType)
    {$EndIf _Box_}
     .TagFromIntRef(l_Value)
  else
   Result := l_Attr;
 end//l_Prop <> nil..
 else
  Result := k2NullTag;
 {$EndIf _Box_}
end;

function _k2Tag_.rAtomEx(const aPath : array of Integer;
                       theIndex    : PLong = nil): Ik2Tag;
  //overload;
  {* - вернуть подтег. }
begin
 {$IfDef _Box_}
 Result := GetRedirect.rAtomEx(aPath, theIndex);
 {$Else  _Box_}
 Result := CheckAttr(aPath, nil, false, theIndex);
 {$EndIf _Box_}
end;

function _k2Tag_.cAtom(anIndex        : Integer;
                     const aContext : Ik2Op = nil;
                     anAtomType: Tk2TypePrim = nil): Ik2Tag;
  {* - проверить существование подтега и создать его при необходимости. }
{$IfNDef _Box_}
var
 l_Prop  : _PropLoc_;
 l_Value : Integer;
{$EndIf  _Box_}
begin
 {$IfDef _Box_}
 Result := GetRedirect.cAtom(anIndex, aContext, anAtomType);
 {$Else  _Box_}
 {$IfDef k2TagIsList}
 if (anIndex = k2_tiChildren) then
 begin
  Result := Self;
  Exit;
 end;//anIndex = k2_tiChildren
 {$EndIf k2TagIsList}
 l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp := Tk2Prop(_Instance_R_(Self).TagType.Prop[anIndex]);
 if (l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp = nil) then
  Result := k2NullTag
 else
 begin
  if GetOwnAttrValue(Tk2Prop(l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp), l_Value) then
   Result :=
    Tk2Type(l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.AtomType)
     .TagFromIntRef(l_Value)
  else
  begin
   if (anAtomType = nil) then
    Result := Tk2Type(l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.AtomType).MakeTag
   else
    Result := Tk2Type(anAtomType).MakeTag;
   l_Prop.rOp := Pointer(aContext);
   l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rDeleteMapped := true;
   l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rVT := vtTag;
   SetSubAtom(_PropIn_(l_Prop), Result);
  end;//Result.IsNull
 end;//l_Prop = nil
 {$EndIf _Box_}
end;

function _k2Tag_.cAtomEx(const aPath    : array of Integer;
                       const aContext : Ik2Op;
                       theIndex       : PLong = nil): Ik2Tag;
  {* - проверить существование подтега и создать его при необходимости. }
begin
 {$IfDef _Box_}
 Result := GetRedirect.cAtomEx(aPath, aContext, theIndex);
 {$Else  _Box_}
 Result := CheckAttr(aPath, aContext, true, theIndex);
 {$EndIf _Box_}
end;

{$IfNDef _Box_}
function  _k2Tag_.DoSetAtom(const aProp  : _PropIn_;
                          const aValue ): Boolean;
  {-}
var
 l_V : Tk2Values;
begin
 l_V.Init(aProp, aValue, Self);
 try
  if Tk2CustomProperty(aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp).DoBeforeChange(l_V, aProp.rOp) then
  begin
   Result := true;
   l_V.CheckSort;
   if SetAtomPrim(aProp, l_V) then
   begin
    if (aProp.rOp <> nil) AND
        aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.NeedMarkModified
       AND not aProp.rOp.InIOProcess then
     aProp.rOp.MarkModified(Ik2Tag(Self));
    Tk2CustomProperty(aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp).DoAfterChange(l_V, aProp.rOp);
   end;//SetAtomPrim
  end//aProp.DoBeforeChange(l_V, aProp.rOp)
  else
   Result := false;
 finally
  l_V.Free;
 end;//try..finally
end;
  
procedure _k2Tag_.SetSubAtom(var aProp    : _PropIn_;
                           const aValue );
  {-}
  
 procedure SetAtom(const aProp    : _PropIn_;
                   const aValue );
   {-}

  {$IfDef k2TagUseMapping}
  procedure DeleteMapped;
    //override;
    {-}
  var
   MT : Integer;

   function DeleteAtom(Prop: Pk2CustomProperty; BitNum: Longint): Boolean;
   begin//DeleteAtom
    Result := true;
    if (BitNum <> aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.TagIndex) AND
       (Prop^.EmptyMapping = aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.TagIndex) then
    begin
     if not Prop^.ReadOnly then
      Self.AttrW[Prop^.TagIndex, aProp.rOp] := nil;
     Dec(MT);
     if (MT <= 0) then Result := false;
    end;//BitNum <> _Prop.TagIndex
   end;//DeleteAtom

  begin//DeleteMapped
   if (aProp.rOp <> nil) AND
       not Tk2CustomProperty(aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp).IsArray AND
      aProp.rOp.DeleteMapped AND not aProp.rOp.InUndo then
   begin
    MT := aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.MappingTarget;
    if (MT > 0) then
     _Instance_R_(Self).TagType.IteratePropertiesF(l3L2IA(@DeleteAtom));
   end;//aDeleteMapped..
  end;//DeleteMapped
  {$EndIf k2TagUseMapping}

  procedure RaiseReadOnly;
  begin//RaiseReadOnly
   raise Ek2ReadOnlyProperty.CreateFmt(k2_errReadOnly,
                                       [aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.AsString, _Instance_R_(Self).TagType.AsString])
  end;//RaiseReadOnly

 begin//SetAtom
  if aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.ReadOnly then
   RaiseReadOnly
  else
  begin
   if DoSetAtom(aProp, aValue) then
   begin
    {$IfDef k2TagUseMapping}
    if aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rDeleteMapped then
     DeleteMapped;
    {$EndIf k2TagUseMapping}
   end;//DoSetAtom..
  end;//aProp.ReadOnly
 end;//SetAtom

 procedure DeleteAtom;
 var
  l_Nil : Ik2Tag;
 begin//DeleteAtom
  aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rVT := vtTag;
  SetAtom(aProp, l_Nil);
 end;//DeleteAtom

const
 cCheckMapping = [vtBool, vtObj, vtTag];
{$IfDef k2TagUseDefaultValue}
var
 l_DefaultValue : Integer;
{$EndIf k2TagUseDefaultValue}
{$IfDef k2TagUseMapping}
var
 l_Mapping      : Integer;
{$EndIf k2TagUseMapping}
var
 l_Result : Ik2Tag;
begin
 {$IfDef k2TagIsList}
 Assert(aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.TagIndex <> k2_tiChildren);
 {$EndIf k2TagIsList}
 Case aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rVT of
  vtInt :
  begin
   {$If Defined(k2TagUseMapping) OR Defined(k2TagUseDefaultValue)}
   if (aProp.rOp = nil) OR aProp.rOp.Optimize then
   begin
    if aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.AtomType.IsOrd then
    begin
     {$IfDef k2TagUseMapping}
     l_Mapping := aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.EmptyMapping;
     if (l_Mapping <> k2_tiMask) then
     begin
      // - здесь проверяем не совпадает ли новое значение с мапируемым значением
      with Attr[l_Mapping] do
       if IsValid AND not IsSame(Self) then
        if (IntA[aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.TagIndex] = Integer(aValue)) then
        begin
         DeleteAtom;
         Exit;
        end;//IntA[aProp.TagIndex] = Integer(aValue)..
     end//l_Mapping <> k2_tiMask
     else
     {$EndIf k2TagUseMapping}
     {$IfDef k2TagUseDefaultValue}
     begin
      // - здесь проверяем не совпадает ли новое значение со значением по умолчанию
      l_DefaultValue := aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.DefaultValue;
      if (l_DefaultValue <> l3NilLong) AND
         (Integer(aValue) = l_DefaultValue) then
      begin
       DeleteAtom;
       Exit;
      end;//l_DefaultValue <> l3NilLong..
     end;//l_Mapping <> k2_tiMask
     {$EndIf k2TagUseDefaultValue}
    end//aProp.AtomType.IsOrd
    else
    begin
     {$IfDef k2TagUseDefaultValue}
     begin
      // - здесь проверяем не совпадает ли новое значение со значением по умолчанию
      l_DefaultValue := aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.DefaultValue;
      if (l_DefaultValue <> l3NilLong) AND
         (Integer(aValue) = l_DefaultValue) then
      begin
       DeleteAtom;
       Exit;
      end;//l_DefaultValue <> l3NilLong..
     end;//l_Mapping <> k2_tiMask
     {$EndIf k2TagUseDefaultValue}
    end;//aProp.AtomType.IsOrd
   end;//Context = nil..
   {$IfEnd}
   SetAtom(aProp, aValue);
   Exit;
  end;//vtInt
  vtBool :
   l_Result := Tk2Type(aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.AtomType).BoolToTag(Boolean(aValue));
  vtStr :
   if (AnsiString(aValue) = '') then
   begin
    DeleteAtom;
    Exit;
   end//AnsiString(aValue) = ''
   else
    l_Result := Tk2Type(aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.AtomType).StrToTag(AnsiString(aValue));
  vtObj :
  begin
   if (TObject(aValue) = nil) then
   begin
    DeleteAtom;
    Exit;
   end//TObject(aValue) = nil
   else
   if aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.AtomType.IsOrd then
    l_Result := Tk2Type(aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.AtomType).ObjToTag(TObject(aValue))
   else
   begin
    if TObject(aValue).InheritsFrom(Tk2Type(aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.AtomType).AtomClass) then
    begin
     SetAtom(aProp, aValue);
     Exit;
    end
    else
     l_Result := Tk2Type(aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.AtomType).ObjToTag(TObject(aValue))
   end;//aProp.rProp.AtomType.IsOrd
  end;//vtObj
  vtTag :
  begin
   l_Result := Ik2Tag(aValue);
   if (l_Result = nil) then
   begin
    DeleteAtom;
    Exit;
   end;//l_Result = nil
  end;//vtTag
  else
   Assert(false);
 end;//Case aVT
 if l_Result.IsNull then
  DeleteAtom
 else
 begin
  {$If Defined(k2TagUseMapping) OR Defined(k2TagUseDefaultValue)}
  if (aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rVT in cCheckMapping) AND ((aProp.rOp = nil) OR aProp.rOp.Optimize) then
  begin
   if aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.AtomType.IsOrd then
   begin
    {$IfDef k2TagUseMapping}
    l_Mapping := aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.EmptyMapping;
    if (l_Mapping <> k2_tiMask) then
    begin
     // - здесь проверяем не совпадает ли новое значение с мапируемым значением
     with Attr[l_Mapping] do
      if IsValid AND not IsSame(Self) then
       with Attr[aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.TagIndex] do
        if IsValid AND IsSame(l_Result) then
        begin
         DeleteAtom;
         Exit;
        end;//IsValid
    end//l_Mapping <> k2_tiMask
    else
    {$EndIf k2TagUseMapping}
    {$IfDef k2TagUseDefaultValue}
    begin
     // - здесь проверяем не совпадает ли новое значение со значением по умолчанию
     l_DefaultValue := aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.DefaultValue;
     if (l_DefaultValue <> l3NilLong) AND
        (l_Result.AsLong = l_DefaultValue) then
     begin
      DeleteAtom;
      Exit;
     end;//l_DefaultValue <> l3NilLong..
    end;//l_Mapping <> k2_tiMask
    {$EndIf k2TagUseDefaultValue}
   end;//aProp.AtomType.IsOrd
  end;//Context = nil..
  {$IfEnd}
  aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rVT := vtTag;
  SetAtom(aProp, l_Result);
 end;//Result.IsNull
end;
{$EndIf _Box_}

{$IfNDef _Box_}
{$IfNDef k2TagIsAtomic}
function _k2Tag_.CanAssignParam(const aProp: _PropIn_): Boolean;
  //virtual;
  {-}
begin
 Result := true;
end;
{$EndIf  k2TagIsAtomic}
{$EndIf  _Box_}

procedure _k2Tag_.AssignCloneParams(const aSource : Ik2Tag;
                                  AssignMode    : Tk2AssignModes = k2_amAll;
                                  const Context : Ik2Op = nil);
  {-}
{$IfNDef _Box_}
{$IfNDef k2TagIsAtomic}
var
 i       : Integer;
 l_Prop  : _PropLoc_;
 SrcAtom : Ik2Tag;
 A       : Ik2Tag;
 l_Path  : TLongArray;
 l_DV    : Integer;
 l_P     : Tk2Prop;
{$EndIf  k2TagIsAtomic}
{$EndIf  _Box_}
begin
 {$IfDef _Box_}
 GetRedirect.AssignCloneParams(aSource, AssignMode, Context);
 {$Else  _Box_}
 {$IfNDef k2TagIsAtomic}
 l_Prop.rOp := Pointer(Context);
 l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rDeleteMapped := false;
 l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rVT := vtTag;
 l_Path := _Instance_R_(Self).TagType.ParamsForClone;
 for i := Low(l_Path) to High(l_Path) do
 begin
  l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp := Tk2Prop(_Instance_R_(Self).TagType.Prop[l_Path[i]]);
  if (l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp <> nil) AND
      not l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.ReadOnly then
  // - не пытаемся присваивать ReadOnly свойства.
  begin
   if CanAssignParam(_PropIn_(l_Prop)) then
   begin
    with aSource do
     SrcAtom := rOwnAtom(l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.TagIndex);
    if SrcAtom.IsNull then
    begin
     if (k2_amNull in AssignMode) then
     begin
      // begin http://mdp.garant.ru/pages/viewpage.action?pageId=195758030
      // Хотя та конкретная ошибка починена по-другому.
      // Там в Memo был SimpelTextPara а в Edit - TextPara.
      // Теперь они стали одинаковые, так что если этот код будет мешать, то
      // его можно запросто убрать.
      //
      // Особенно учитывая кусок из TevTextParaCursor.DoJoinWith:
      //  if (l_FirstPara.Owner <> nil) and l_FirstPara.Owner.InheritsFrom(k2_idTableCell) then
      //   l_Style := l_FirstPara.IntA[k2_tiStyle]
      //  else
      //   l_Style := ev_saEmpty;
      // и последующее восстановление стиля.
      if l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.Shared AND
         not _Instance_R_(Self).TagType.IsSame(aSource.TagType) then
      begin
       l_P := Tk2Prop(aSource.TagType.Prop[l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.TagIndex]);
       if (l_P <> nil) then
       begin
        l_DV := l_P.DefaultValue;
        if (l_DV <> High(Integer)) AND
           (l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.DefaultValue <> l_DV) then
         IntW[l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.TagIndex, Context] := l_DV
        else
         AttrW[l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.TagIndex, Context] := nil;
       end//l_P <> nil
       else
        AttrW[l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.TagIndex, Context] := nil;
      end//l_Prop.rProp.Shared
      else
      // end http://mdp.garant.ru/pages/viewpage.action?pageId=195758030
       AttrW[l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.TagIndex, Context] := nil;
     end;//k2_amNull in AssignMode
    end//SrcAtom.IsNull
    else
    begin
     if (k2_amTransparent in AssignMode) OR not SrcAtom.IsTransparent then
     begin
      if l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.Shared then
       SetSubAtom(_PropIn_(l_Prop), SrcAtom)
      else
      if SrcAtom.IsOrd then
       SetSubAtom(_PropIn_(l_Prop), SrcAtom)
      else
      begin
       A := Tk2Type(l_Prop{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.AtomType).MakeTag;
       try
        A.AssignTag(SrcAtom, AssignMode);
        SetSubAtom(_PropIn_(l_Prop), A);
       finally
        A := nil;
       end;//try..finally
      end;//l_Prop.Shared
     end;//[k2_amTransparent in AssignMode]..
    end;//SrcAtom.IsNull
   end;//CanAssignParam..
  end;//not l_Prop.IsReadOnly
 end;//for i..
 {$EndIf  k2TagIsAtomic}
 {$EndIf _Box_}
end;

function _k2Tag_.IndexOfChild(const aChild: Ik2Tag): Integer;
  {-}
{$IfNDef _Box_}
 {$IfNDef k2TagIsAtomic}
 {$IfNDef k2TagIsList}
 var
  l_List : Tk2List;
 {$EndIf  k2TagIsList} 
 {$EndIf  k2TagIsAtomic}
{$EndIf  _Box_}
begin
 {$IfDef _Box_}
 Result := GetRedirect.IndexOfChild(aChild);
 {$Else  _Box_}
 {$IfNDef k2TagIsAtomic}
 {$IfDef k2TagIsList}
 Result := IndexOf(aChild);
 {$Else  k2TagIsList}
 l_List := Tk2List(HackChildren);
 if (l_List = nil) then
  Result := -1
 else
  Result := l_List.IndexOfChild(aChild);
//  Result := Attr[k2_tiChildren].IndexOfChild(aChild);
 {$EndIf k2TagIsList}
 {$Else   k2TagIsAtomic}
 Result := -1;
 {$EndIf  k2TagIsAtomic}
 {$EndIf _Box_}
end;

{$IfNDef _Box_}
procedure _k2Tag_.CheckChildInsert(var anIndex : Integer;
                                   var aChild  : Ik2Tag;
                                   const anOp  : Ik2Op);
  //virtual;
  {-}
begin
end;  
{$EndIf  _Box_}

function _k2Tag_.AddChild(var aChild     : Ik2Tag;
                        const aContext : Ik2Op = nil): Integer;
  {* - добавить ребенка. }
{$IfNDef _Box_}

 procedure RaiseNoChildren;
 begin//RaiseNoChildren
  raise Ek2CannotAddChild.CreateFmt(k2_errNoChildren,
                                    [_Instance_R_(Self).TagType.AsString, aChild.TagType.AsString])
 end;//RaiseNoChildren

var
 l_Prop  : Tk2ArrayProperty;
 
 procedure RaiseBadChild;
 begin//RaiseBadChild
  raise Ek2CannotAddChild.CreateFmt(k2_errBadChild,
                                    [_Instance_R_(Self).TagType.AsString, aChild.TagType.AsString, l_Prop.ChildType.AsString]);
 end;//RaiseBadChild
                                    
var
 l_Path  : TLongArray;
 {$IfDef k2TagIsList}
 {$Else  k2TagIsList}
 l_CList : TObject;
 {$EndIf k2TagIsList}
 l_Cnt   : Integer;
{$EndIf  _Box_}
begin
 assert(aChild <> nil);
 {$IfDef _Box_}
 Result := GetRedirect.AddChild(aChild, aContext);
 {$Else  _Box_}
 l_Prop := _Instance_R_(Self).TagType.ArrayProp[k2_tiChildren];
 if (l_Prop = nil) then
 begin
  l_Path := _Instance_R_(Self).TagType.FindChildPath(aChild.TagType);
  Result := -1;
  if (l_Path = nil) then
   RaiseNoChildren
  else
   cAtomEx(l_Path, aContext).AddChild(aChild, aContext);
 end//l_Prop = nil
 else
 if not l_Prop.ValidateChild(Self, aChild, aContext, High(Integer)) then
 begin
  Result := -1;
  l_Path := _Instance_R_(Self).TagType.FindChildPath(aChild.TagType);
  if (l_Path = nil) then
   RaiseBadChild
  else
   cAtomEx(l_Path, aContext).AddChild(aChild, aContext);
 end//not l_Prop.ValidateChild(Self, aChild)
 else
 begin
  {$IfDef k2TagIsList}
  {$Else  k2TagIsList}
  l_CList := cAtom(k2_tiChildren, aContext).AsObject;
  Assert(l_CList Is Tk2TagList);
  {$EndIf k2TagIsList}
  l_Cnt := {$IfDef k2TagIsList}
           Count
           {$Else  k2TagIsList}
           Tk2TagList(l_CList).Count
           {$EndIf k2TagIsList};
  if (l_Cnt < l_Prop.MaxChildrenCount) then
  begin
   CheckChildInsert(l_Cnt, aChild, aContext);
   with Tk2Type(aChild.TagType) do
    if HasProperty[k2_tiChildren] then
     aChild.CheckSort(ArrayProp[k2_tiChildren]);
   Result := {$IfNDef k2TagIsList}
             Tk2TagList(l_CList).
             {$EndIf  k2TagIsList}Add(aChild.Box);
   {$IfDef k2TagIsList}
   ChildAdded(l_Prop, aChild, Result, Count, aContext);
   {$Else  k2TagIsList}
   ChildAdded(l_Prop, aChild, Result, Tk2TagList(l_CList).Count, aContext);
   {$EndIf k2TagIsList}
  end//Tk2TagList(l_CList).Count < l_Prop.MaxChildrenCount
  else
   Result := -1;
 end;//not l_Prop.ValidateChild(Self, aChild)
 {$EndIf _Box_}
end;

{$If not defined(_Box_)}
{$IfNDef k2TagIsList}
function _k2Tag_.HackChildren: TObject;
//#UC START# *4A5368F400F7_4A5368DC0050_var*
{$IfDef k2TagIsList}
{$Else  k2TagIsList}
var
 l_Attr  : Ik2Tag;
 l_Prop  : Tk2Prop;
 l_Value : Integer;
{$EndIf k2TagIsList}
//#UC END# *4A5368F400F7_4A5368DC0050_var*
begin
//#UC START# *4A5368F400F7_4A5368DC0050_impl*
 {$IfDef k2TagIsList}
 Result := Self;
 {$Else  k2TagIsList}
 l_Prop := Tk2Prop(_Instance_R_(Self).TagType.Prop[k2_tiChildren]);
 if (l_Prop <> nil) AND GetAttrValue(l_Prop, l_Value, l_Attr) then
 begin
  if (l_Attr = nil) then
   Result := TObject(l_Value)
  else
  begin
   Assert(false);
   Result := l_Attr.AsObject;
  end;//l_Attr = nil
  Assert((Result = nil) OR (Result Is Tk2List));
 end//GetAttrValue
 else
  Result := nil;
 {$EndIf k2TagIsList}
//#UC END# *4A5368F400F7_4A5368DC0050_impl*
end;//_k2Tag_.HackChildren
{$EndIf k2TagIsList}
{$IfEnd} //not _Box_

function _k2Tag_.DoIterateChildrenF(Action : Ik2Tag_IterateChildrenF_Action;
                                aLo    : Tl3Index;
                                aHi    : Tl3Index;
                                aLoadedOnly: Boolean): Integer;
  {* - перебрать детей с освобождением заглушки. }
{$IfNDef _Box_}
 {$IfNDef k2TagIsAtomic}
 {$IfDef k2TagIsList}
  function DoChild(aChild: PIk2Tag; anIndex: Long): Boolean;
  begin//DoChild
   Result := Action(aChild^, anIndex);
  end;//DoChild
 {$Else  k2TagIsList}
 var
  l_List : Tk2List;
 {$EndIf  k2TagIsList} 
 {$EndIf  k2TagIsAtomic}
{$EndIf  _Box_}
begin
 {$IfDef _Box_}
 Result := GetRedirect.IterateChildrenF(Action, aLo, aHi, aLoadedOnly);
 {$Else  _Box_}
 {$IfNDef k2TagIsAtomic}
 {$IfDef k2TagIsList}
 try
  Result := IterateF(aLo, aHi, l3L2IA(@DoChild));
 finally
  k2FreeTIA(Action);
 end;//try..finally
 {$Else  k2TagIsList}
 l_List := Tk2List(HackChildren);
 if (l_List = nil) then
 begin
  Result := -1;
  k2FreeTIA(Action);
 end//l_List = nil
 else
  Result := l_List.DoIterateChildrenF(Action, aLo, aHi, aLoadedOnly);
 //Result := Attr[k2_tiChildren].IterateChildrenF(Action, aLo, aHi, aLoadedOnly);
 {$EndIf k2TagIsList}
 {$Else   k2TagIsAtomic}
 Result := -1;
 k2FreeTIA(Action);
 {$EndIf  k2TagIsAtomic}
 {$EndIf _Box_}
end;

function _k2Tag_.IterateChildrenF(Action : Ik2Tag_IterateChildrenF_Action;
                                aLo    : Tl3Index = l3MinIndex;
                                aHi    : Tl3Index = l3MaxIndex;
                                aLoadedOnly : Boolean = false): Integer;
  {* - перебрать детей с освобождением заглушки. }
begin
 Result := DoIterateChildrenF(Action, aLo, aHi, aLoadedOnly);
end;

function _k2Tag_.IterateChildrenBackF(Action : Ik2Tag_IterateChildrenBack_Action;
                                    aHi    : Tl3Index = l3MaxIndex;
                                    aLo    : Tl3Index = l3MinIndex;
                                    aLoadedOnly : Boolean = false): Integer;
  {* - перебрать детей с освобождением заглушки. }
begin
 try
  Result := IterateChildrenBack(Action, aHi, aLo, aLoadedOnly);
 finally
  k2FreeTIA(Ik2Tag_IterateChildrenF_Action(Action));
 end;//try..finally
end;

function _k2Tag_.FindChild(anAtom         : Integer;
                         aValue         : Integer;
                         const aContext : Ik2Op = nil;
                         aNeedCreate    : Boolean = false;
                         theIndex       : PLong = nil): Ik2Tag;
  {-}
{$IfNDef _Box_}
 {$IfDef k2TagIsList}
 var
  l_FoundIndex : Integer;

  function Seek(const aChild: Ik2Tag; Index: Long): Bool;
  begin//Seek
   if (aChild.IntA[anAtom] = aValue) then
   begin
    FindChild := aChild;
    l_FoundIndex := Index;
    Result := false;
   end//aChild.IntA[anAtom] = aValue
   else
    Result := true;
  end;//Seek

 var
  l_ArrayProp  : Tk2ArrayProperty;
  l_ChildType  : Tk2Type;
 {$Else  k2TagIsList}
 {$IfNDef k2TagIsAtomic}
 var
  l_List : Tk2List;
 {$EndIf  k2TagIsAtomic}
 {$EndIf k2TagIsList}
{$EndIf  _Box_}
begin
 {$IfDef _Box_}
 Result := Attr[k2_tiChildren].FindChild(anAtom, aValue, aContext, aNeedCreate, theIndex);
 {$Else  _Box_}
 {$IfNDef k2TagIsAtomic}
 {$IfDef k2TagIsList}
 Result := nil;
 // - для порядку
 l_ArrayProp := _Instance_R_(Self).TagType.ArrayProp[k2_tiChildren];
(* if (f_Parent <> nil) then
  l_ChildType := f_ArrProp.GetChildTypeForParent(f_Parent)
 else*)
  l_ChildType := l_ArrayProp.GetChildTypeForParent(Self);
 if (anAtom = k2_tiByIndex) then
 begin
  l_FoundIndex := High(Integer);
  if (aValue >= 0) AND (aValue < Count) then
  begin
   Result := Child[aValue];
   if (theIndex <> nil) then
    theIndex^ := aValue;
  end;//aValue >= 0
 end//anAtom = k2_tiByIndex
 else
 begin
  if (SortIndex = anAtom) then
  begin
   if FindData(aValue, l_FoundIndex, anAtom) then
    Result := Child[l_FoundIndex];
  end//SortIndex = anAtom
  else
  begin
   l_FoundIndex := 0;
   IterateChildrenF(k2L2TIA(@Seek));
  end;//SortIndex = anAtom
  if (theIndex <> nil) then
   theIndex^ := l_FoundIndex;
 end;//anAtom = k2_tiByIndex
 if aNeedCreate AND
    //(anAtom <> k2_tiByIndex) AND
    // - !!! ни в коем случае НЕЛЬЗЯ это раскомментировать, т.к. есть варианты
    //   использования, когда таким образом создаются дочерние объекты.
    ((Result = nil) OR Result.IsNull) then
 begin
  Result := l_ChildType.MakeTag;
  try
   if (anAtom <> k2_tiByIndex) then
    Result.IntW[anAtom, aContext] := aValue;
(*   if (f_Parent <> nil) then
    l_FoundIndex := f_Parent.AddChild(Result, aContext, f_ArrProp, l_FoundIndex)
   else*)
   if (l_FoundIndex = High(Integer)) then
    l_FoundIndex := AddChild(Result, aContext)
   else 
    InsertChild(l_FoundIndex, Result, aContext);
   Result := Child[l_FoundIndex];
   if (theIndex <> nil) then
    theIndex^ := l_FoundIndex;
  except
   Result := nil;
   raise;
  end;//try..finally
 end;//aNeedCreate
 if (Result = nil) then
  Result := k2NullTag;
 {$Else  k2TagIsList}
 l_List := Tk2List(HackChildren);
 if (l_List = nil) then
  Result := k2NullTag
 else
  Result := l_List.FindChild(anAtom, aValue, aContext, aNeedCreate, theIndex);
 //Result := Attr[k2_tiChildren].FindChild(anAtom, aValue, aContext, aNeedCreate, theIndex);
 {$EndIf k2TagIsList}
 {$Else   k2TagIsAtomic}
 Result := k2NullTag;
 {$EndIf  k2TagIsAtomic}
 {$EndIf _Box_}
end;

function _k2Tag_.DeleteChild(Index         : Integer;
                      const Context : Ik2Op = nil): Boolean;
  //overload;
  {* - удалить ребенка. }
var
 l_Child : Ik2Tag;
begin
 Result := DeleteChild(Index, Context, l_Child);
end;

function _k2Tag_.DeleteChild(Index         : Integer;
                           const Context : Ik2Op;
                           out theChild      : Ik2Tag): Boolean;
  //overload;
  {* - удалить ребенка. }
begin
 {$IfDef _Box_}
 Result := GetRedirect.DeleteChild(Index, Context, theChild);
 {$Else  _Box_}
 theChild := Child[Index];
 if (Context <> nil) AND not Context.InUndo AND not Context.InIOProcess then
  Context.Processor.CheckDelete(Ik2Tag(Self), theChild, Index);
 Result := DeleteChildPrim(Index, theChild, Context);
 {$EndIf _Box_}
end;

{$IfNDef _Box_}
function  _k2Tag_.DeleteChildPrim(Index         : Integer;
                                const aChild  : Ik2Tag;
                                const Context : Ik2Op): Boolean;
  //virtual;
  {* - удалить ребенка. }
{$IfDef k2TagIsList}
var
 {$IfNDef l3Items_NoSort}
 l_Remove : Bool;
 {$EndIf l3Items_NoSort}
 l_Prop   : Tk2ArrayProperty;
 l_Child  : PIk2Tag;
 {$IfNDef k2Tag_No_f_TagType}
 {$If (Defined(Nemesis) AND (not Defined(nsTest) OR Defined(InsiderTest)))}
 l_Owner  : Ik2Tag;
 // - это для заплатки удаления комментариев - http://mdp.garant.ru/pages/viewpage.action?pageId=157909474
 //   когда переделаю контейнерные ноды документа на Tk2ParentedTypedListTag,
 //   то можно быдет убрать.
 {$IfEnd}
 {$EndIf  k2Tag_No_f_TagType}
{$Else  k2TagIsList}
var
 l_List  : Ik2Tag;
{$EndIf k2TagIsList}
begin
 {$IfDef k2TagIsList}
 Result := true;
 l_Prop := _Instance_R_(Self).TagType.ArrayProp[k2_tiChildren];
 Assert(l_Prop <> nil);
 {$IfNDef l3Items_NoSort}
 l_Remove := not aChild.IsNull;
 if l_Remove then
  l_Child := @aChild
 else
  l_Child := PIk2Tag(ItemSlot(Index));
 {$Else  l3Items_NoSort} 
 if not aChild.IsNull then
  l_Child := @aChild
 else
  l_Child := ItemSlot(Index);
 {$EndIf l3Items_NoSort}
 {$IfNDef k2Tag_No_f_TagType}
 {$If (Defined(Nemesis) AND (not Defined(nsTest) OR Defined(InsiderTest)))}
 if (Context <> nil) AND not Context.InIOProcess then
 begin
  if _Instance_R_(Self).TagType.AtomClass.InheritsFrom(Tk2List) then
   l_Owner := l_Child.Owner
  else
   l_Owner := nil;
 end;//Context <> nil
 {$IfEnd}
 {$EndIf k2Tag_No_f_TagType}
 l_Child.Owner := nil;
 {$IfNDef l3Items_NoSort}
 if l_Remove then
 begin
  if not Sorted then
   l_Remove := false;
 end;//l_Remove
 {$EndIf  l3Items_NoSort}
 k2.SignalEvent(l_Prop, k2_eidChildrenDeleted, Self, Context, Index, 1, Count - 1);
 if (Context <> nil) AND not Context.InIOProcess then
 begin
  if not Context.InIOProcess then
   {$IfNDef k2Tag_No_f_TagType}
   {$If (Defined(Nemesis) AND (not Defined(nsTest) OR Defined(InsiderTest)))}
   if (l_Owner <> nil) AND l_Owner.IsValid then
   begin
    if l_Prop.NeedMarkModified then
     Context.MarkModified(l_Owner);
    Context.Processor.NotifyDelete(l_Owner, l_Prop, l_Child^, Index, Context)
   end//l_Owner <> nil..
   else
   {$IfEnd}
   {$EndIf k2Tag_No_f_TagType}
   begin
    if l_Prop.NeedMarkModified then
     Context.MarkModified(Ik2Tag(Self));
    Context.Processor.NotifyDelete(Ik2Tag(Self), l_Prop, l_Child^, Index, Context);
   end;//l_Owner <> nil..
 end;//Context <> nil
 {$IfNDef l3Items_NoSort}
 if l_Remove then
  Remove(aChild)
 else
  Delete(Index);
 {$Else  l3Items_NoSort}
 Delete(Index);
 {$EndIf l3Items_NoSort}
 {$Else  k2TagIsList}
 l_List := Attr[k2_tiChildren];
 if l_List.IsValid then
 begin
  if (aChild <> nil) AND aChild.IsValid then
   Result := l_List.DeleteChild(aChild, Context)
  else
   Result := l_List.DeleteChild(Index, Context);
 end//l_List.IsValid
 else
 begin
  Result := false;
  k2ListError(Index);
 end;//l_List
 {$EndIf k2TagIsList}
end;
{$EndIf  _Box_}

function _k2Tag_.DeleteChild(const aChild  : Ik2Tag;
                           const Context : Ik2Op = nil): Boolean;
  //overload;
  {* - удалить ребенка. }
var
 l_Index : Integer;
begin
 l_Index := IndexOfChild(aChild);
 if (l_Index >= 0) then
  Result := DeleteChild(l_Index, Context)
 else
  Result := false; 
end;

procedure _k2Tag_.DeleteChildren(const Context: Ik2Op = nil);
  {* - удалить всех детей. }
{$IfNDef _Box_}
var
 AL         : Ik2Tag;
 l_Prop     : Tk2ArrayProperty;

 function DoChild(aChild: PIk2Tag; anIndex: Integer): Boolean;
 begin//
  Result := true;
  Context.Processor.NotifyDelete(AL, l_Prop, aChild^, anIndex, Context);
 end;//DoChild

{$IfNDef k2TagIsList}
var
 l_List : Tk2TagList;
{$EndIf k2TagIsList} 
{$EndIf  _Box_}
begin
 {$IfDef _Box_}
 GetRedirect.DeleteChildren(Context);
 {$Else  _Box_}
 l_Prop := _Instance_R_(Self).TagType.ArrayProp[k2_tiChildren];
 if (l_Prop <> nil) then
 begin
  AL := Attr[l_Prop.TagIndex];
  if AL.IsValid then
  begin
   {$IfNDef k2TagIsList}
   l_List := AL.AsObject As Tk2TagList;
   {$EndIf  k2TagIsList}
   if (Context <> nil) then
   begin
    if not Context.InIOProcess then
     if l_Prop.NeedMarkModified then
      Context.MarkModified(Ik2Tag(Self));
    IterateChildrenBackF(k2L2TIA(@DoChild));
   end;//(Context <> nil)..
   {$IfDef k2TagIsList}
   Clear;
   {$Else  k2TagIsList}
   l_List.Clear;
   {$EndIf k2TagIsList}
  end;//AL.IsValid
 end;//l_Prop <> nil
 {$EndIf _Box_}
end;

procedure _k2Tag_.InsertChild(anIndex        : Integer;
                            var aChild     : Ik2Tag;
                            const aContext : Ik2Op = nil);
  {* - вставить ребенка. }
{$IfNDef _Box_}
var
 l_Prop : Tk2ArrayProperty;

 procedure RaiseNoChildren;
 begin//RaiseNoChildren
  raise Ek2CannotAddChild.CreateFmt(k2_errNoChildren,
                                    [_Instance_R_(Self).TagType.AsString, aChild.TagType.AsString]);
 end;//RaiseNoChildren

 procedure RaiseBadChild;
 begin//RaiseBadChild
  raise Ek2CannotAddChild.CreateFmt(k2_errBadChild,
                                    [_Instance_R_(Self).TagType.AsString, aChild.TagType.AsString, l_Prop.ChildType.AsString])
 end;//RaiseBadChild

var 
 l_Path : TLongArray;
 {$IfDef k2TagIsList}
 {$Else  k2TagIsList}
 l_List : TObject;
 {$EndIf k2TagIsList}
{$EndIf _Box_}
begin
 {$IfDef _Box_}
 GetRedirect.InsertChild(anIndex, aChild, aContext);
 {$Else  _Box_}
 l_Prop := _Instance_R_(Self).TagType.ArrayProp[k2_tiChildren];
 if (l_Prop = nil) then
 begin
  l_Path := _Instance_R_(Self).TagType.FindChildPath(aChild.TagType);
  if (l_Path = nil) then
   RaiseNoChildren
  else
   cAtomEx(l_Path, aContext).AddChild(aChild, aContext);
 end//l_Prop = nil
 else
 if not l_Prop.ValidateChild(Self, aChild, aContext, anIndex) then
 begin
  l_Path := _Instance_R_(Self).TagType.FindChildPath(aChild.TagType);
  if (l_Path = nil) then
   RaiseBadChild
  else
   cAtomEx(l_Path, aContext).AddChild(aChild, aContext);
 end//not l_Prop.ValidateChild(Self, aChild)
 else
 begin
  CheckChildInsert(anIndex, aChild, aContext);
  //aChild.Owner := Self;
  // - это вроде не нужно, это в ChildAdded делается
  {$IfDef k2TagIsList}
  {$Else  k2TagIsList}
  l_List := cAtom(k2_tiChildren, aContext).AsObject;
  Assert(l_List Is Tk2TagList);
  {$EndIf k2TagIsList}
  {$IfNDef k2TagIsList}Tk2TagList(l_List).
  {$EndIf  k2TagIsList}Insert(anIndex, aChild.Box);
  {$IfDef k2TagIsList}
  ChildAdded(l_Prop, aChild, anIndex, Count, aContext);
(*  ChildAdded(l_Prop, Items[anIndex], anIndex, Count, aContext);
  // http://mdp.garant.ru/pages/viewpage.action?pageId=265391680
  // учитываем ИСКРИВЛЕНИЕ ПРОСТРАНСТВА*)
  // не понадобилось
  {$Else  k2TagIsList}
  ChildAdded(l_Prop, aChild, anIndex, Tk2TagList(l_List).Count, aContext);
(*  ChildAdded(l_Prop, Tk2TagList(l_List).Items[anIndex], anIndex, Tk2TagList(l_List).Count, aContext);
  // http://mdp.garant.ru/pages/viewpage.action?pageId=265391680
  // учитываем ИСКРИВЛЕНИЕ ПРОСТРАНСТВА*)
  // не понадобилось
  {$EndIf k2TagIsList}
 end;//not l_Prop.ValidateChild(Self, aChild, aContext, anIndex)
 {$EndIf _Box_}
end;

{$IfNDef _Box_}
{$IfNDef k2TagIsAtomic}
function _k2Tag_.IterateInnerChildrenOnWrite: Boolean;
  //virtual;
  {-}
begin
 Result := true;
end;
{$EndIf  k2TagIsAtomic}
{$EndIf  _Box_}

procedure _k2Tag_.Write(const G : Ik2TagGenerator;
                        Flags   : Tk2StorePropertyFlags = l3_spfAll;
                        Exclude : TByteSet = []);
  {* - записать тег в генератор. }
{$IfNDef _Box_}
{$IfNDef k2TagIsAtomic}

 function WriteSubAtom(const aSubAtom: Ik2Tag; aProp: Tk2CustomPropertyPrim): Boolean;

  procedure StoreAtom(const Atom : Ik2Tag;
                      anID       : Integer;
                      aShared    : Boolean);
  begin//StoreAtom
   if not Atom.IsNull then begin
    if Atom.IsTransparent then
     G.AddTransparentAtom(anID)
    else
     Case Tk2Type(Atom.TagType).AtomType^.Kind of
      tkEnumeration,
      tkInteger:
       G.AddIntegerAtom(anID, Atom.AsLong);
      tkString:
       G.AddStringAtom(anID, Atom.AsString);
      tkClass:
       G.AddObjectAtom(anID, Atom.AsObject, aShared);
      else
       ConvertError(Atom.TagType.AsString, '<Valid Atom Type>');
     end;{Case..}
   end;{not Atom.IsNull}
  end;//StoreAtom

  function WriteChild(const aChild: Ik2Tag; ChildIndex: Integer): Boolean; far;
  var
   l_ValueProp : Tk2CustomPropertyPrim;
  begin{WriteChild}
   if Tk2ArrayProperty(aProp).GetStoredChild(Self, aChild, G.Context) then
   begin
    l_ValueProp := aChild.TagType.Prop[k2_tiValue];
    if (l_ValueProp = nil) then
    begin
     G.StartChild(aChild.TagType.ID);
     try
      aChild.Write(G, Flags + l3_spfInner);
     finally
      G.Finish;
     end;//try..finally
    end//aChild.TagType.Prop[k2_tiValue] = nil
    else
     StoreAtom(aChild.Attr[k2_tiValue], -{$IfDef Nemesis}
                                         Tk2ArrayProperty(aProp)
                                         {$Else}
                                         (aProp As Tk2ArrayProperty)
                                         {$EndIf}
                                          .ChildType.ID, false);
   end;//Tk2ArrayProperty(aProp).GetStoredChild
   Result := true;
  end;{WriteChild}

 var
  AT  : Tk2Type;

  procedure StoreProp;
  var
   l_IStream : IStream;
   l_Stream  : TStream;
  begin{StoreProp}
   if AT.HasProperties AND
      (AT.Prop[k2_tiValue] = nil) {- это хакерская проверка для строк} then
   begin
    if (l3_spfObjects in Flags) then
    begin
     G.StartTag(aProp.TagIndex);
     try
      aSubAtom.Write(G, Flags + l3_spfInner, []);
     finally
      G.Finish;
     end;{try..finally}
    end;//l3_spfObjects in Flags
   end//AT.HasProperties
   else
   if aSubAtom.IsStream(l_IStream) then
   begin
    try
     if (l3_spfRawData in Flags) then
     begin
      l3IStream2Stream(l_IStream, l_Stream);
      try
       G.AddStreamAtom(aProp.TagIndex, l_Stream);
      finally
       l3Free(l_Stream);
      end;//try..finally
     end;//l3_spfRawData in Flags
    finally
     l_IStream := nil;
    end;//try..finally
   end//AT.IsRawData
   else
   if (l3_spfScalars in Flags) then
    StoreAtom(aSubAtom, aProp.TagIndex, aProp.Shared);
  end;//StoreProp

 var
  IDI   : Integer;
  HProp : Tk2CustomPropertyPrim;
  l_H   : Ik2Tag;
  l_CC  : Integer;
 begin//WriteSubAtom
  if (aProp <> nil) AND not (aProp.TagIndex in Exclude) then
  begin
   AT := Tk2Type(aProp.AtomType);
   if Tk2Prop(aProp).GetStored(Self, aSubAtom, G.Context) then
   begin
    if (aProp.TagIndex = k2_tiChildren) then
    begin
     if (l3_spfChildren in Flags) then
     begin
      if IterateInnerChildrenOnWrite then
      begin
       l_CC := aSubAtom.ChildrenCount;
       if (l_CC > 1) then
        G.AddIntegerAtom(k2_tiChildren, l_CC);
       aSubAtom.IterateChildrenF(k2L2TIA(@WriteChild));
      end
      else
      begin
       l_CC := Self.pm_GetChildrenCount;
       if (l_CC > 1) then
        G.AddIntegerAtom(k2_tiChildren, l_CC);
       Self.IterateChildrenF(k2L2TIA(@WriteChild));
      end;//IterateInnerChildrenOnWrite
     end;//l3_spfChildren in Flags
    end//l_Prop.TagIndex = k2_tiChildren
    else
    begin
     IDI := AT.IDIndex;
     if (IDI <> k2_tiMask) then
     // - странная проверка на самом деле, выходит если IDI = k2_tiMask, то
     //   ничего и не запишется. Правильно ли это? Если ещё раз наткнусь - надо
     //   будет подумать тщательнее.
     begin
      if (IDI = k2_tiSelfID) then
       StoreProp
      else
      begin
       l_H := aSubAtom.Attr[IDI];
       if l_H.IsValid then
       begin
        HProp := AT.Prop[IDI];
        try
         AT := Tk2Type(HProp.AtomType);
         StoreAtom(l_H, aProp.TagIndex, aProp.Shared);
        except
         on Ek2ConversionError do ;
        end;//try..except
       end//l_H.IsValid
       else
       // - если ключ не задан, то пишем значение
        StoreProp;
      end;//IDI = k2_tiSelfID
     end;//IDI <> k2_tiMask
    end;//l_Prop.TagIndex = k2_tiChildren
   end;//l_Prop.GetStored(A, SubAtom)
  end;//not (aProp.TagIndex in Exclude)
  Result := true;
 end;{WriteSubAtom}

{$EndIf  k2TagIsAtomic} 
{$EndIf  _Box_}
begin
 {$IfDef _Box_}
 GetRedirect.Write(G, Flags, Exclude);
 {$Else  _Box_}
 {$IfNDef k2TagIsAtomic}
 if (G <> nil) then
  IteratePropertiesF(L2Ik2TagIteratePropertiesAction(@WriteSubAtom), false);
 {$EndIf  k2TagIsAtomic}
 {$EndIf _Box_}
end;

procedure _k2Tag_.DoLoad;
  //virtual;
  {-}
begin
 {$IfDef _Box_}
 GetRedirect.DoLoad;
 {$EndIf _Box_}
end;

function _k2Tag_.MarkModified: Boolean;
  {-}
begin
 {$IfDef _Box_}
 Result := GetRedirect.MarkModified;
 {$Else  _Box_}
 Result := _Instance_R_(Self).TagType.Wrapper.MarkModified(Self);
 {$EndIf _Box_}
end;

procedure _k2Tag_.ForceStore;
  {-}
begin
 {$IfDef _Box_}
 GetRedirect.ForceStore;
 {$Else  _Box_}
 _Instance_R_(Self).TagType.Wrapper.ForceStore(Self);
 {$ENdIf _Box_}
end;

{$EndIf _Tag_Declared}
