unit FakeBox;
{
// Revision 1.55  2003/12/19 14:36:49  mmorozov
// - в _Paint TFakeBox используется глобальная переменная g_fkLocked: TfkLockedProc (запрет перерисовки);
                            
комментарий am: именно из-за этого не происходит первой перерисовки
disabled компонента при открытии КЗ в XP-style. временно убрал.
}

// $Id: FakeBox.pas,v 1.31 2012/10/26 14:55:12 lulin Exp $

// $Log: FakeBox.pas,v $
// Revision 1.31  2012/10/26 14:55:12  lulin
// {RequestLink:406489593}
//
// Revision 1.30  2012/01/20 16:14:28  lulin
// {RequestLink:328864379}
//
// Revision 1.29  2009/11/17 15:37:40  lulin
// {ReqestLink:167350386}.
//
// Revision 1.28  2009/10/16 17:00:49  lulin
// {RequestLink:159360578}. №52.
//
// Revision 1.27  2009/10/14 13:24:18  lulin
// - чистка кода.
//
// Revision 1.26  2009/08/13 10:55:00  lulin
// - чистка кода.
//
// Revision 1.25  2009/04/15 18:49:38  lulin
// [$143396720]. Основательно перетрясаем модель.
//
// Revision 1.24  2009/03/24 10:19:01  lulin
// [$114065443].
//
// Revision 1.23  2009/03/19 11:26:03  oman
// - fix: Комментарий (К-137463980)
//
// Revision 1.22  2009/03/19 11:14:19  oman
// - fix: Давим лишний Change (К-137463980)
//
// Revision 1.21  2009/03/17 08:19:51  oman
// - fix: Глюки code completition'а (К-137463980)
//
// Revision 1.20  2009/03/17 07:32:20  oman
// - fix: Заготовки контрола (К-137463980)
//
// Revision 1.19  2008/09/04 12:49:13  fireton
// - новое свойство (ShowFullPath)
//
// Revision 1.18  2008/09/04 08:05:03  lulin
// - bug fix: не собирался Архивариус.
//
// Revision 1.17  2008/09/02 16:34:56  lulin
// - <K>: 88080895.
//
// Revision 1.16  2008/08/14 13:57:52  voba
// no message
//
// Revision 1.15  2008/08/06 11:19:48  lulin
// - <K>: 96484670.
//
// Revision 1.14  2008/08/05 05:49:32  lulin
// - <K>: 103450332.
//
// Revision 1.13  2008/07/15 21:05:53  lulin
// - чистка кода.
//
// Revision 1.12  2008/07/15 14:37:47  lulin
// - <K>: 98828459.
//
// Revision 1.11  2008/07/14 16:05:51  lulin
// - <K>: 102041333.
//
// Revision 1.10  2008/07/14 12:38:36  lulin
// - <K>: 100007969.
//
// Revision 1.9  2008/07/11 12:04:05  lulin
// -<K>: 101417264.
//
// Revision 1.8  2008/07/09 17:32:05  lulin
// - лишний раз не пересоздаём документ.
//
// Revision 1.7  2008/07/09 09:03:32  lulin
// - bug fix: не компилировался Архивариус.
//
// Revision 1.6  2008/07/08 11:30:01  lulin
// - правильнее определяем, что запрещено редактирование.
//
// Revision 1.5  2008/07/08 11:26:31  lulin
// - избавился от хранения и выставления свойства IsList.
// - починил выбор в списке пользователей.
//
// Revision 1.4  2008/07/08 09:48:49  lulin
// - не перекладываем строки в ноды, а просто реализуем интерфейс ноды.
//
// Revision 1.3  2008/07/07 14:55:22  lulin
// - переименован модуль.
//
// Revision 1.2  2008/07/07 14:34:31  lulin
// - переименован модуль.
//
// Revision 1.39  2008/07/07 14:12:03  lulin
// - ещё кусочек нарисован на модели.
//
// Revision 1.38  2008/07/07 13:25:10  lulin
// - распилил один файл на два.
//
// Revision 1.37  2008/07/04 15:43:50  lulin
// - <K>: 99647706.
//
// Revision 1.36  2008/07/04 13:41:46  lulin
// - чистка кода.
//
// Revision 1.35  2008/07/04 12:35:19  lulin
// - <K>: 98337580.
//
// Revision 1.34  2008/07/02 10:51:07  lulin
// - <K>: 95486333.
//
// Revision 1.33  2008/06/24 12:28:47  oman
// - fix: Приводим в порядок публикацию свойств (cq29374)
//
// Revision 1.32  2008/06/19 12:00:00  lulin
// - <K>: 94732603.
//
// Revision 1.31  2008/06/05 13:34:44  lulin
// - cleanup.
//
// Revision 1.30  2008/06/05 13:22:15  lulin
// - cleanup.
//
// Revision 1.29  2008/05/26 11:03:46  lulin
// - <K>: 91521065.
//
// Revision 1.28  2008/05/21 13:51:05  lulin
// - <K>: 90448804.
//
// Revision 1.26  2008/05/21 13:28:25  lulin
// - cleanup.
//
// Revision 1.25  2008/05/20 10:55:34  lulin
// - bug fix: не компилировался Архивариус.
// - <K>: 90443881.
//
// Revision 1.24  2008/05/15 20:15:29  lulin
// - тотальная чистка.
//
// Revision 1.23  2008/05/15 18:53:47  lulin
// - подготавливаемся к переносу на модель.
//
// Revision 1.22  2008/05/15 17:31:45  lulin
// - чистка использования модулей.
// - убираем неочевидную логику скроллирования.
//
// Revision 1.21  2008/05/15 16:19:54  lulin
// - редактор с кнопкой перенесли на модель.
//
// Revision 1.20  2008/05/15 13:25:37  lulin
// - <K>: 90446803.
//
// Revision 1.19  2008/05/15 11:28:30  lulin
// - <K>: 90446071.
//
// Revision 1.18  2008/05/14 19:17:11  lulin
// - убираем лишнюю обработку кнопок.
//
// Revision 1.17  2008/05/14 19:05:10  lulin
// - <K>: 90446006.
//
// Revision 1.16  2008/05/14 13:56:38  lulin
// - работа над <K>: 90441490.
//
// Revision 1.15  2008/05/13 16:24:15  lulin
// - изменения в рамках <K>: 90441490.
//
// Revision 1.14  2008/04/07 08:18:24  lulin
// - bug fix: не собиралась библиотека.
//
// Revision 1.13  2008/04/07 07:59:49  lulin
// - <K>: 88641266.
//
// Revision 1.12  2008/04/07 06:27:14  lulin
// - cleanup.
//
// Revision 1.11  2008/04/07 06:18:43  lulin
// - cleanup.
//
// Revision 1.10  2008/03/24 14:50:54  lulin
// - <K>: 87590389.
//
// Revision 1.9  2007/12/13 13:41:59  oman
// - fix: Восстановлена излишне вычещенная функциональность (cq27857)
//
// Revision 1.8  2007/12/10 14:30:40  lulin
// - cleanup.
//
// Revision 1.7  2007/12/10 13:56:44  lulin
// - cleanup.
//
// Revision 1.6  2007/12/10 13:27:19  lulin
// - cleanup.
//
// Revision 1.5  2007/12/10 13:19:59  lulin
// - cleanup.
//
// Revision 1.4  2007/12/10 12:24:43  lulin
// - cleanup.
//
// Revision 1.3  2007/12/10 09:59:16  lulin
// - cleanup.
//
// Revision 1.2  2007/12/10 09:35:33  lulin
// - убраны ненужные свойства и методы.
//
// Revision 1.1  2007/12/07 16:59:52  lulin
// - переезд.
//
// Revision 1.347  2007/12/07 16:22:40  lulin
// - переименовываем файл, чтобы не путать с другой библиотекой.
//
// Revision 1.346  2007/12/05 14:43:13  lulin
// - cleanup.
//
// Revision 1.345  2007/10/18 07:34:00  oman
// - fix: Новое событие "после подстановки" (cq27117)
//
// Revision 1.344  2007/09/26 06:18:16  mmorozov
// - change: вместо использования TvcmAction используем IvcmAction + правки ошибок при переходе на использование _SelectedString вместо Caption (в рамках работы над CQ: OIT5-26741 + K<50758978>);
//
// Revision 1.343  2007/09/25 03:55:41  mmorozov
// - new behaviour: для чтения\изменения текущего выбранного значения для операций типа vcm_otDate, vcm_otCombo, vcm_otEditCombo используем свойство параметров _SelectedString, раньше Caption. Тем самым Caption для этих типов операций стал изменяемым (в рамках работы CQ: OIT5-26741);
//
// Revision 1.342  2007/09/07 12:27:31  lulin
// - cleanup.
//
// Revision 1.341  2007/08/02 09:00:34  oman
// - fix: Для перемещения по словам используем механизм
//  обработки команд, иначе шорткаты отрабатывали неверно (cq26098)
//
// Revision 1.340  2007/06/18 14:16:04  lulin
// - cleanup.
//
// Revision 1.339  2007/04/25 12:33:11  lulin
// - cleanup.
//
// Revision 1.338  2007/04/23 10:42:29  oman
// - new: Вычищаем старую ППР и старые фильтры - Убрал Garant5Editor (cq25125)
// - Предыдущий комментарий бредов...
//
// Revision 1.337  2007/04/23 10:39:29  oman
// - fix: *Оказалось IQuery не всегда имеет имя - Убрал Garant5Editor (cq25139)
//
// Revision 1.336  2007/04/16 08:23:05  lulin
// - cleanup.
//
// Revision 1.335  2007/04/13 15:51:11  lulin
// - для отрисовки используем родную канву.
//
// Revision 1.334  2007/04/12 12:35:04  lulin
// - используем строки с кодировкой.
//
// Revision 1.333  2007/04/10 13:20:04  lulin
// - используем строки с кодировкой.
//
// Revision 1.332  2007/03/30 07:51:02  oman
// cleanup (Неиспользуемые ссылки на ContextParams)
//
// Revision 1.331  2007/03/30 06:28:16  oman
// cleanup (Il3ExpandedSimpleTree.CreateViewEx)
//
// Revision 1.330  2007/03/29 16:04:54  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.329  2007/03/29 15:54:30  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.328  2007/03/28 19:47:37  lulin
// - bug fix: не собиралась библиотека.
//
// Revision 1.327  2007/03/28 19:42:52  lulin
// - ЭлПаковский редактор переводим на строки с кодировкой.
//
// Revision 1.326  2007/03/28 15:03:40  lulin
// - переводим ЭлПаковские параграфы на строки с кодировкой.
//
// Revision 1.325  2007/03/28 14:34:12  lulin
// - переводим ЭлПаковские параграфы на строки с кодировкой.
//
// Revision 1.324  2007/03/22 14:34:44  lulin
// - cleanup.
//
// Revision 1.323  2007/03/22 13:23:24  lulin
// - cleanup.
//
// Revision 1.322  2007/03/22 13:09:55  lulin
// - cleanup.
//
// Revision 1.321  2007/03/22 12:42:39  lulin
// - с комбобокса убрано свойство сортированности, т.к. сортировать надо данные, а не представление.
//
// Revision 1.320  2007/03/22 12:05:48  lulin
// - cleanup.
//
// Revision 1.319  2007/03/22 11:45:39  lulin
// - cleanup.
//
// Revision 1.318  2007/03/22 09:55:59  lulin
// - cleanup.
//
// Revision 1.317  2007/03/22 09:09:30  lulin
// - cleanup.
//
// Revision 1.316  2007/03/21 14:15:14  lulin
// - используем унаследованную обработку шорткатов.
//
// Revision 1.315  2007/03/20 15:01:42  lulin
// - создавалось неправильное дерево, в итоге показывались паразитные иконки.
//
// Revision 1.314  2007/03/16 13:30:19  oman
// - new: Свойство TextValid для простых редакторов (ComboStyle = cbEdit)
//
// Revision 1.313  2007/03/16 12:21:21  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.312  2007/03/16 11:17:56  lulin
// - сделано свойство - цвет вывода ошибочного текста.
//
// Revision 1.311  2007/03/16 11:03:05  oman
// - fix: Поменялось дефолтовое значение параметра
//
// Revision 1.310  2007/03/16 10:43:27  oman
// Cleanup - неиспользуемая константа в перечеслимом типе
//
// Revision 1.309  2007/03/16 10:13:46  lulin
// - пытаемся избавится от бесконечной рекурсии при смене параметров шрифта.
//
// Revision 1.308  2007/03/15 12:19:51  lulin
// - для измерений используем правильную канву.
//
// Revision 1.307  2007/03/15 09:49:13  lulin
// - cleanup.
//
// Revision 1.306  2007/03/15 09:36:34  lulin
// - используем стандартный метод удаления двойных пробелов.
//
// Revision 1.305  2007/03/14 19:42:24  lulin
// - bug fix: не портим шрифт..
//
// Revision 1.304  2007/03/14 19:10:29  lulin
// - bug fix: не собиралась библиотека.
//
// Revision 1.303  2007/03/14 19:03:43  lulin
// - cleanup.
//
// Revision 1.302  2007/03/14 18:27:34  lulin
// - cleanup.
//
// Revision 1.301  2007/03/14 15:19:05  lulin
// - cleanup.
//
// Revision 1.300  2007/03/14 14:37:32  lulin
// - cleanup.
//
// Revision 1.299  2007/03/14 14:30:44  lulin
// - cleanup.
//
// Revision 1.298  2007/03/14 14:26:08  lulin
// - bug fix: сглатывался enter.
//
// Revision 1.297  2007/03/14 11:45:14  lulin
// - cleanup.
//
// Revision 1.296  2007/03/13 15:00:34  lulin
// - не записываем мусор.
//
// Revision 1.295  2007/03/13 10:04:55  oman
// - new: Поддержка новых контекстных фильтров - пока с сохранением
//  старой функциональности (cq24456)
//
// Revision 1.294  2007/03/06 08:13:28  oman
// Cleanup - убрано мусорное свойство ContextFilterType
//
// Revision 1.293  2007/03/05 09:42:54  lulin
// - cleanup.
//
// Revision 1.292  2007/02/20 12:55:31  lulin
// - наследуемся при помощи шаблона.
//
// Revision 1.291  2007/02/16 19:19:11  lulin
// - в выпадающих списках используем родной список строк.
//
// Revision 1.290  2007/02/14 16:15:38  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.289  2007/02/14 14:24:08  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.288  2007/02/13 17:47:16  lulin
// - cleanup.
//
// Revision 1.287  2007/02/02 08:39:17  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.286  2007/01/30 15:24:09  lulin
// - текст ноды - теперь более простого типа.
//
// Revision 1.285  2007/01/29 13:50:32  oman
// - fix: Комбобоксы в тулбаре не должны скролироваться в конец
//  текста (cq24179)
//
// Revision 1.284  2007/01/05 18:17:30  lulin
// - используем базовые ноды для выпадающих списков.
//
// Revision 1.283  2006/12/22 15:06:27  lulin
// - текст ноды - теперь структура с длиной и кодовой страницей.
//
// Revision 1.282  2006/11/03 11:00:00  lulin
// - объединил с веткой 6.4.
//
// Revision 1.281.2.1  2006/10/31 08:02:28  oman
// - fix: Допочинка ReadOnly (ReadOnly не эквивалентно DropDownList) (cq23305)
//
// Revision 1.281  2006/09/29 07:12:11  oman
// - new: _TnscComboBoxQS с контролем и исправлением вставляемой из клипборда
//  строки - окончательный вариант (cq22776)
//
// Revision 1.280  2006/06/23 10:32:01  oman
// - fix: ReadOnly не эквивалентно DropDownList. Починка ReadOnly...
//
// Revision 1.279  2006/06/08 13:37:45  lulin
// - подготавливаем контролы к обработке числа повторений нажатия клавиши.
//
// Revision 1.278  2006/04/20 12:26:43  mmorozov
// - change: закрытие выпадающего дерева при получении нотификации от дерева перенесено в другое место;
//
// Revision 1.277  2005/11/25 11:32:30  oman
// - new behavior: новое публичное свойство _TEditableBox.ProcessServerTreeNotification
// (надо или не надо обрабатывать нотификацию _Changed приходящую от дерева)
//
// Revision 1.276  2005/11/18 14:14:40  oman
// - new behavior: _TEditableBox обрабатывает нотификацию _TreeChangedNotification,
// проверяя наличие ноды, если нода найдена, перезачитывается текст комбобокса, если
// пропала вызывается новый обработчик OnDataDisapeared: TNotifyEvent
//
// Revision 1.275  2005/10/11 13:40:01  lulin
// - cleanup.
//
// Revision 1.274  2005/07/07 14:57:40  mmorozov
// bugfix: при изменении размера toolbar-а поле уменьшалось до размера текста не зависимо от того уменьшали toolbar или увеличивали;
//
// Revision 1.273  2005/06/01 08:20:31  mmorozov
// new behaviour: при вычислении полной ширины учитываем _EmptyHint;
//
// Revision 1.272  2005/05/31 14:33:31  mmorozov
// new: property _TEditableBox.FullWidth;
//
// Revision 1.271  2005/05/27 14:42:18  lulin
// - базовый контрол переехал в быблиотеку L3.
//
// Revision 1.270  2005/05/12 14:33:41  lulin
// - new method: Tafw.IsObjectLocked.
//
// Revision 1.269  2005/03/24 14:26:46  mmorozov
// new: TFakeBox overload methods _Filter;
//
// Revision 1.268  2005/03/23 13:31:38  mmorozov
// bugfix: у _TCustomElEdit не выделялся текст с помощью мыши;
//
// Revision 1.267  2005/03/22 11:59:45  mmorozov
// change: специфический для FakeBox код перенесен из _TelCustomEdit.MouseMove в TFakeBox.InternalMouseMove;
// new behaviour: не выполняем выделения если получен фокус и установлено AutoSelect;
//
// Revision 1.266  2005/03/12 13:37:55  mmorozov
// new: работа с буфером для cbGarant5Editor;
//
// Revision 1.265  2005/01/28 13:16:12  mmorozov
// bugfix: в особом случае не устанавливалось значение по _ShowNode;
//
// Revision 1.264  2005/01/28 11:01:02  mmorozov
// bugfix: IsValid не учитывала значение со звездочкой;
//
// Revision 1.263  2005/01/27 14:55:17  mmorozov
// bugfix: после очистки поля со звездочкой оно не перерисовылось;
//
// Revision 1.262  2005/01/27 10:58:45  am
// bugfix: в DropDown комбобоксе ESC работал неправильно
// bugfix: при автодополнении в DropDown комбобоксе перебивался регистр введённых символов
//
// Revision 1.261  2005/01/20 10:10:27  am
// bugfix: ChoosenValue в DropDownList комбобоксах был всегда nil
//
// Revision 1.260  2005/01/19 12:40:56  am
// change: защищаем контрол на момент выполнения обработчика CNKeyDOWN с помощью afw.BeginOp\afw.EndOp
//
// Revision 1.259  2005/01/14 17:24:11  lulin
// - в ProcessCommand добавлен параметр aForce - сигнализирующий, что такого ShortCut'а нету в VCM и что не надо умничать с обработкой комманды.
//
// Revision 1.258  2005/01/08 10:30:16  mmorozov
// new: method _TEditableBox.RefreshContextParams;
//
// Revision 1.257  2004/12/29 14:55:32  am
// new: выделил поддержку операций с клипбордом
//
// Revision 1.256  2004/12/23 11:13:32  lulin
// - rename prop: TvtCustomOutliner.TreeSource -> TreeStruct.
//
// Revision 1.255  2004/12/21 15:40:44  mmorozov
// bugfix: фильтрация по новому;
//
// Revision 1.254  2004/12/20 15:54:56  am
// bugfix: _ShowNode, SetCurrentNode
//
// Revision 1.253  2004/11/19 16:32:57  lulin
// - bug fix: съедались двухбуквенные ShortCut'ы.
//
// Revision 1.252  2004/11/19 10:15:33  am
// change: CutToClipboard\_PasteFromClipboard стали функциями, где результат - "была ли действительно произведена вырезка\вставка"
//
// Revision 1.251  2004/11/15 12:03:40  am
// bugfix: при выставлении индекса в -1 перерисовываем поле комбобокса
//
// Revision 1.250  2004/11/03 17:20:03  am
// change: позволяем копировать в буфер в Garant5x комбобоксах
// change: заплатка в WM_CHAR, касающаяся Ctrl+буква сочетаний
//
// Revision 1.249  2004/10/22 09:34:14  mmorozov
// change: маленький рефакторинг;
//
// Revision 1.248  2004/10/21 20:31:53  mmorozov
// bugfix: к методам _Tree.GetCurrentNode обращались на прямую, а она могла быть nil;
//
// Revision 1.247  2004/10/21 15:38:49  mmorozov
// - добавлены define-ы для компиляции;
//
// Revision 1.246  2004/10/21 09:34:59  am
// bugfix: автоподстановка при закрытии выпадающего окна мышкой
//
// Revision 1.245  2004/10/20 12:15:55  mmorozov
// new behaviour: обрабатывается ItemIndex := -1;
//
// Revision 1.244  2004/10/20 09:58:58  am
// change: при закрытии выпадающего окна производим автоподстановку
//
// Revision 1.243  2004/10/19 09:54:13  am
// new: у _Clear появился параметр OnUpdate: Boolean
//
// Revision 1.242  2004/10/13 16:07:13  am
// change: пустил фильтрацию через nsAdjustFilter
//
// Revision 1.241  2004/10/12 10:20:32  am
// new: function _DeleteConsSpaces(const S:_String): _String; - вырезаем последовательные пробелы
//
// Revision 1.240  2004/10/08 09:48:29  am
// bugfix: запрет ввода нескольких пробелов (не работало, если предварительно был выделен кусок текста)
//
// Revision 1.239  2004/10/06 18:05:20  lulin
// - борьба за кошерность.
//
// Revision 1.238  2004/09/30 14:23:17  am
// new: ElEdit._AllowEnhance - вызывается для разных прибамбасов вроде Ctrl+A и прочих с возможностью их запрета (первый шаг к разделению визуала и логики)
//
// Revision 1.237  2004/09/30 11:28:41  am
// bugfix: если в дереве ничего не выбрано - не сбрасываем текст по нажатию Enter'а
//
// Revision 1.236  2004/09/30 09:07:23  am
// bugfix: проверка при вводе нескольких идущих подряд пробелов
//
// Revision 1.235  2004/09/28 10:00:33  am
// change: RestrictConsSpace - запрет ввода пробелов в пустой строке в начале, и подряд более одного раза.
//
// Revision 1.234  2004/09/27 06:14:23  mmorozov
// new: property TFakeBox.OnAfterProcessKeyDown;
//
// Revision 1.233  2004/09/24 16:04:56  mmorozov
// new: method TFakeBox.ProcessKeyDown;
//
// Revision 1.232  2004/09/24 13:24:03  am
// new: abseditor.KeyDown
//
// Revision 1.231  2004/09/24 12:18:17  am
// change: дефайны
//
// Revision 1.230  2004/09/24 10:07:05  am
// change: поменялась логика вычисления ширины выпадающего дерева. Теперь, если пользователь не ресайзил дерево - его ширина равно ширине комбобокса
//
// Revision 1.229  2004/09/22 11:08:05  am
// bugfix: ElPack не дёргает Change в _PasteFromClipboard
//
// Revision 1.228  2004/09/19 12:17:16  am
// bugfix: вместе с нодами храним и ссылки на treesource'ы (временно, до нормального решения).
// bugfix: в процессе правок шорткатов отъезжало редактирование с специфических случаях
//
// Revision 1.227  2004/09/18 13:20:07  am
// change: при изменении шрифта сохраняем его цвет
//
// Revision 1.226  2004/09/17 13:49:30  am
// change: вычистил fasttree
//
// Revision 1.225  2004/09/15 15:09:51  am
// bugfix: _isList
// new: OnMakeEditor
//
// Revision 1.224  2004/09/09 13:10:05  fireton
// - change behaviour: теперь при автоподстановке раскрывается список вариантов
//
// Revision 1.223  2004/09/01 12:09:09  am
// change: оптимизация. при смене типа фильтрации не всегда нужно перефильтровывать дерево (по заказу МишиМ)
//
// Revision 1.222  2004/08/27 13:00:33  mmorozov
// new: property _TEditableBox.ContextFilterType;
//
// Revision 1.221  2004/08/25 13:58:45  am
// change: для защиты от зацикливания в _getFullPath проверяем на достижение рута с помощью isSameNode
//
// Revision 1.220  2004/08/24 08:58:25  am
// bugfix: правильная обработка WM_PAINT
//
// Revision 1.219  2004/08/19 11:36:52  am
// bugfix: AV в форме фильтров
//
// Revision 1.218  2004/08/18 12:10:30  mmorozov
// new behaviour: при копировании из буфера проверяем символы замены (З "зе" -> 3 "три"), если они есть то корректируем содержимое буфера;
//
// Revision 1.217  2004/08/18 08:39:45  am
// bugfix: для cbEdit не стояло проверок и спрашивалось дерево
//
// Revision 1.216  2004/08/18 08:04:17  am
// change: поправил дефайны
//
// Revision 1.215  2004/08/18 07:56:43  am
// change: создаём дерево по запросу, не создаём в контролах, в которых оно не нужно (cbEdit)
//
// Revision 1.214  2004/08/13 17:59:00  mmorozov
// new: method TFakeBox._RefreshEditRect;
// new: proeprty TFakeBox.TextBottom;
//
// Revision 1.213  2004/08/12 07:08:02  am
// change: чистка
//
// Revision 1.212  2004/08/12 07:05:38  am
// change: поправил дефайны
//
// Revision 1.211  2004/08/11 14:23:37  am
// change: при использовании _Items и автоподстановки, дерево пересоздавалось поздно.
//
// Revision 1.209  2004/08/10 09:11:29  am
// bugfix: убрал Result = 0 и из WM_NCPAINT
//
// Revision 1.208  2004/08/10 08:54:13  am
// bugfix: в случае лока, если в WM_PAINT возвращали Result = 0, сообщения из очереди не выгребались -> зацикливание в редких случаях
//
// Revision 1.207  2004/08/10 07:03:33  demon
// - fix: не собирался пакет AllEverestComponents7
//
// Revision 1.206  2004/08/10 05:55:06  am
// change: перенёс _substautocompletion в public
//
// Revision 1.205  2004/08/07 09:08:59  mmorozov
// - случайно был покомичен закомментированный для отладки код;
//
// Revision 1.203  2004/08/06 13:47:08  mmorozov
// new: TFakeBox поддерживает интерфейс _Il3CommandTarget;
//
// Revision 1.202  2004/08/04 16:19:42  demon
// - cleanup: remove warnings and hints
//
// Revision 1.201  2004/08/04 14:25:37  mmorozov
// new: property _TEditableBox.KillAsterisk (запрет ввода звездочки);
//
// Revision 1.200  2004/08/04 14:04:14  law
// - добавлены значения по умолчанию.
//
// Revision 1.199  2004/08/03 12:35:39  am
// change: в ProcessTreeSelection апдейтим action (если таковой есть).
//
// Revision 1.198  2004/07/30 09:50:42  mmorozov
// new: TFakeBox.WMPaint, WMNCPaint, IsLockPaint (реагирует на "замораживание");
//
// Revision 1.197  2004/07/29 13:20:21  am
// change: сохраняем положение каретки в WMSetText
//
// Revision 1.196  2004/07/29 09:17:40  am
// new prop: _NeedItemIndex - нужен ли подсчёт ItemIndex'а при выборе элемента из списка. По умолчанию - true
//
// Revision 1.195  2004/07/29 08:08:59  am
// bugfix: в случае шортката не генерим WM_KEYDOWN
//
// Revision 1.194  2004/07/28 10:49:54  am
// bugfix: дефайны
//
// Revision 1.193  2004/07/28 10:41:32  am
// change: перетащил обработку кнопок из WM_KEYDOWN в CN_KEYDOWN, обрабатываю Del через транслятор.
//
// Revision 1.192  2004/07/23 11:14:00  am
// change: убрал ExpandNode при присваивании рута
//
// Revision 1.191  2004/07/21 08:42:46  am
// change: мелкие фиксы
//
// Revision 1.190  2004/07/12 06:09:24  mmorozov
// change: comment;
//
// Revision 1.189  2004/07/12 06:05:56  mmorozov
// bugfix: Undo (см. TFakeBox._TriggerOnPaste);
//
// Revision 1.188  2004/07/09 11:19:30  am
// new: в _Dispatcher.Unlock перерисовываем не только формы, но и отдельные контролы.
//
// Revision 1.187  2004/07/06 10:05:57  am
// change: в комбобоксе с мн. знач. (Г5, фильтры), по нажатию Escape отменяем изменения
// change: в комбобоксе с мн. знач. (Г5, фильтры), по нажатию пробела в дереве выделяем ноду
//
// Revision 1.186  2004/07/05 05:07:52  am
// change: уничтожаем итератор в fakecombo
// change: по нажатию Return убираем выделение везде кроме фильтрованых
// change:  Г5-комбобоксах Enter обрабатывается до шорткатов
// change: в Г5-комбобоксах Enter обрабатывается по-другому
//
// Revision 1.184  2004/07/02 11:49:48  am
// change: добавил проверки на f_Editor = nil
//
// Revision 1.183  2004/07/02 11:33:56  am
// bugfix: уничтожаем f_Editor
//
// Revision 1.182  2004/07/02 11:20:54  am
// change: правки для package'а
//
// Revision 1.181  2004/07/02 10:52:17  am
// change: начатки выделения редакторов в отдельные модули. Вынесена реализация комбобокса G5
//
// Revision 1.178  2004/06/25 09:01:36  mmorozov
// change: доступ к полю _FInterfaceList через property;
//
// Revision 1.177  2004/06/23 14:59:21  am
// bugfix:
//
// Revision 1.176  2004/06/23 14:35:33  mmorozov
// new: method TFakeBox._SetSimpleTree;
//
// Revision 1.175  2004/06/22 17:42:01  am
// bugfixes
//
// Revision 1.174  2004/06/17 15:05:43  am
// bugfix: при выходе из комбобокса с введённой звёздочкой подставлялось значение
//
// Revision 1.173  2004/06/17 06:58:01  mmorozov
// change: method _SetNodeByIndex;
//
// Revision 1.172  2004/06/17 06:07:37  am
// bugfix: дефайны
//
// Revision 1.171  2004/06/16 09:37:10  am
// change: избавился от GotoNode при фильтрации
//
// Revision 1.170  2004/06/15 10:01:13  am
// new: спряжение с новым деревом
//
// Revision 1.169  2004/06/09 07:42:22  mmorozov
// new: type _TOnPaste;
// new: property TFakeBox.OnPaste (вызывается при вставке из Clipboard-а);
//
// Revision 1.168  2004/06/02 06:53:21  demon
// - fix: расчет размеров комбобокса при старте (ширина не доделана)
//
// Revision 1.167  2004/06/01 13:53:43  demon
// - new behavior: Еще раз изменен баланс методов на интерфейсах Il3Simple и Il3
//
// Revision 1.166  2004/06/01 12:36:52  demon
// - fix: сняты несколько заглушек, касающихся changing/_changed
//
// Revision 1.165  2004/06/01 11:34:34  demon
// - fix: реанимирован старый механизм фильтрации дерева.
//
// Revision 1.164  2004/06/01 09:21:32  am
// change: _HintChanged одефайнил
//
// Revision 1.163  2004/06/01 08:23:10  demon
// - new behavior: перевод ComboBox'ов с Iee на Il3
//
// Revision 1.162  2004/06/01 06:48:30  mmorozov
// bugfix: для сравнения нод используем IsSameNode;
//
// Revision 1.161  2004/05/31 12:21:48  am
// bugfix: Hint
//
// Revision 1.160  2004/05/31 09:22:16  demon
// - new behavior: избавились от зависимости от nsNodes и GblAdapter.
//
// Revision 1.159  2004/05/28 12:41:57  am
// bugfix: не меняем ItemIndex при открытом дереве
//
// Revision 1.158  2004/05/26 16:58:59  law
// - new behavior: TvtCustomOutliner теперь знает только про интерфейсы _Il3SimpleTree и Il3Tree, а не про объект _Tl3Tree.
//
// Revision 1.157  2004/05/26 14:21:55  law
// - change: скестил "ежа с ужом" (старые деревья с новыми).
//
// Revision 1.156  2004/05/26 13:25:50  am
// bugfix: дёргаем Change на Paste в случае комбобокса, прикидывающегося Edit'ом.
//
// Revision 1.155  2004/05/25 12:57:12  am
// bugfix: _Items._Clear теперь выставляет ItemIndex в -1
//
// Revision 1.154  2004/05/21 05:53:49  am
// change: не рисуем выделение (в DropDownList'ах), если выпадающее окно открыто.
//
// Revision 1.153  2004/05/12 12:57:16  am
// change: OnChange дёргаем позже
// bugfix: не сбрасываем ItemIndex, если присвоение рута идёт изнутри MakeNodesFromItems
//
// Revision 1.152  2004/05/12 07:49:22  am
// change: после выполнения _ShowNode(aNode: IeeNode) дерево нефильтрованое
//
// Revision 1.151  2004/05/05 12:03:53  am
// bugfix: CQ00007296 (хинт)
//
// Revision 1.150  2004/05/05 09:28:03  am
// new prop: _Sorted - сортировка строк в линейном комбобоксе
//
// Revision 1.149  2004/04/30 07:21:24  mmorozov
// bugfix: при установке Text = '' сбрасываем фильтрацию нод в дереве, если до этого филтровали;
//
// Revision 1.148  2004/04/22 14:32:42  mmorozov
// bugfix: контроль первой загрузки (чтобы Execute не дергался) перенесен в другое место;
//
// Revision 1.147  2004/04/22 11:06:42  mmorozov
// new behaviour: при выставленной AutoWidth = awCurrent, ширина fakecombo не может быть меньше символа ('W');
//
// Revision 1.146  2004/04/20 07:19:18  demon
// change: при первой загрузке _FItems не вызываем Action.OnExecute;
//
// Revision 1.145  2004/04/05 15:08:24  am
// change: выставляем Modified, если Cut\Paste обрабатывается эльпаковским компонентом
//
// Revision 1.144  2004/04/02 09:03:57  am
// change: IfDef'ы
//
// Revision 1.143  2004/04/01 15:07:52  am
// change: _RestoreState
// new: отрисовка, когда в фокусе, в режиме DropDownList
// new: SetIsList убирает отрисовку палок
//
// Revision 1.142  2004/03/30 15:16:59  mmorozov
// new: method _TEditableBox._SetItems;
//
// Revision 1.141  2004/03/27 17:52:44  am
// bugfix: SetItemIndex
//
// Revision 1.140  2004/03/27 15:33:08  am
// bugfix: Фокус возвращался контролу, даже если тот невидим (попытка изменить размер выпадающего окна комбобокса из выпадающего окна тулбара приводило к дельфийскому сообщениею о невозможности передать фокус)
//
// Revision 1.139  2004/03/27 15:19:39  am
// bugfix: 00006040
//
// Revision 1.138  2004/03/27 14:15:31  am
// change: маленькая оптимизация сброса фильтрации
//
// Revision 1.137  2004/03/27 13:18:05  am
// bugfix: по CQ
// - съедаем один Tab при невозможности автодополнить
// - глюки фильтрации в номерах
// - выбор элемента не из дерева, а поиском при открытом дереве и выходе по Shift+Enter
//
// Revision 1.136  2004/03/24 10:28:55  am
// change: completion а-ля обычный комбобокс
//
// Revision 1.135  2004/03/20 07:37:01  mmorozov
// new: property _TEditableBox.OnChangingFontColor (перед сменой цвета шрифта спрашиваем пользователя можно ли его менять);
//
// Revision 1.134  2004/03/19 11:38:40  nikitin75
// _published _IsList, _OnKeyPress;
//
// Revision 1.133  2004/03/17 15:40:45  am
// delete: FServerSearch
//
// Revision 1.132  2004/03/17 15:22:34  am
// change: попытка отвязать от GBLAdapter
//
// Revision 1.131  2004/03/16 08:57:49  am
// new: RightBorderSpace
//
// Revision 1.130  2004/03/15 11:43:08  am
// bugfix: ItemIndex
//
// Revision 1.129  2004/03/12 13:34:59  am
// new method: SetItemIndex
//
// Revision 1.128  2004/03/11 11:12:08  am
// change: переворачиваем гриппер, если окно открывается сверху
// change: окно открывается сверху, если расстояние до Top экрана больше, чем расстояние до Bottom (и окно не помещается)
// change: дёргаем OnChange в _ProcessTreeSelect
//
// Revision 1.127  2004/03/10 15:08:55  am
// bugfix: _PerformDelete
//
// Revision 1.126  2004/03/10 14:12:37  am
// new: _PerformDelete - эмуляция нажатия Del
//
// Revision 1.125  2004/03/10 11:18:29  am
// bugfix: Ifdef'ы для компиляции package'а
//
// Revision 1.124  2004/03/10 09:30:22  nikitin75
// + shortcuts support (WM_SYSKEYDOWN handler, enter|escape check);
//
// Revision 1.123  2004/03/10 07:58:03  am
// new: вычисление размеров окна при первом открытии
// new: сброс фильтрации в момент открытии окна (а не в момент выбора элемента, как раньше)
//
// Revision 1.122  2004/03/05 12:22:17  am
// bugfix: в _Changed() в ряде случаев передовалось неправильное число фильтрованых.
//
// Revision 1.121  2004/03/04 16:35:25  law
// - rename unit: VLister -> vtLister.
//
// Revision 1.120  2004/03/04 15:36:33  law
// - rename unit: VOtliner -> vtOutliner.
//
// Revision 1.119  2004/03/03 18:03:50  law
// - rename unit: l3Tree2 -> l3Tree.
//
// Revision 1.118  2004/03/03 13:06:11  nikitin75
// + сначала проверка на shortcut;
//
// Revision 1.117  2004/03/02 09:04:34  mmorozov
// - избавляемся от мерцания;
//
// Revision 1.116  2004/02/26 12:17:57  am
// change: DoMoveCursor после вставки из буфера
//
// Revision 1.115  2004/02/25 07:00:51  am
// *** empty log message ***
//
// Revision 1.114  2004/02/19 14:54:24  am
// change: _SetNodeByIndex учитывает рут, если дерево в режиме показа рута.
//
// Revision 1.113  2004/02/11 08:38:10  am
// bugfix: возврат фокуса
//
// Revision 1.112  2004/02/10 13:38:43  am
// change: запоминаем компонент, который отдал фокус и возвращаем ему фокус по завершении работы
// (по закрытию выпадающего окна)
//
// Revision 1.111  2004/02/02 07:14:55  mmorozov
// new behaviour: проверка нажатия на символ содержащийся в строке UserDelimiter производится для любого типа FakeCombo;
//
// Revision 1.110  2004/01/26 08:04:44  am
// bugfix: скроллирование вправо в Readonly комбобоксах
//
// Revision 1.109  2004/01/22 11:52:52  am
// *** empty log message ***
//
// Revision 1.108  2004/01/22 11:24:10  am
// bugfix: _PasteFromClipboard
//
// Revision 1.107  2004/01/15 14:54:32  am
// bugfix: после установки значения извне и нажатия на Return, текст перераспарсивался, что, в ряде случаев,
// приводило в смене значения (Акт -> Форма\Акт)
//
// Revision 1.106  2004/01/15 12:54:24  am
// bugfix: непрорисовка disabled комбобокса в тулбаре при открытии КЗ, с установленным XP-стилем.
//
// Revision 1.105  2004/01/15 10:18:04  am
// bugfix: _PasteFromClipboard для строк со "звёздами"
//
// Revision 1.104  2004/01/15 07:59:17  am
// *** empty log message ***
//
// Revision 1.103  2004/01/15 07:44:01  am
// bugfix: _Clear для строки со "звёздой"
//
// Revision 1.102  2004/01/14 14:42:30  am
// change: по умолчанию "звезда" не установлена
//
// Revision 1.101  2004/01/14 13:30:41  am
// bugfix:
// - при введённой "звезде" и открытым выпадающим окном с деревом, нажатие Return
// не изменяет содержимое поля ввода, выбор мышью из дерева - изменяет.
//
// Revision 1.100  2004/01/14 12:48:52  am
// change: _Asterisk по умолчанию не разрешён
//
// Revision 1.99  2004/01/14 11:48:38  am
// *** empty log message ***
//
// Revision 1.98  2004/01/14 11:33:02  am
// bugfix:
//
// Revision 1.97  2004/01/14 10:57:50  am
// new: возможность вводить "звёздочку" в фильтрованых комбобоксах
//
// Revision 1.96  2004/01/14 10:32:03  am
// *** empty log message ***
//
// Revision 1.95  2004/01/14 07:35:56  am
// bugfix: _SetNodeByindex
//
// Revision 1.94  2004/01/13 13:54:11  am
// new: выделение всего текста при входе в не фильтруемый контрол с возможностью ввода
//
// Revision 1.93  2004/01/13 13:02:18  am
// new: FakeBox._SetNodeByIndex - установить узел в дереве на основании индекса ноды в первом уровне.
//
// Revision 1.92  2004/01/13 10:54:04  am
// new: не фильтрованый комбобокс в операциях с клипбордом ведёт себя как обычный Edit.
//
// Revision 1.91  2004/01/13 10:01:02  am
// bugfix: DoReplaceChar
//
// Revision 1.90  2004/01/13 09:04:58  am
// new prop: _ReplaceChars. Определяет порядок замены символов при вводе.
//
// Revision 1.89  2004/01/12 12:55:22  am
// change: в _ProcessTreeSelect не дергаем больше _Select, пользуем честный Action.Execute
//
// Revision 1.88  2004/01/09 14:56:39  am
// *** empty log message ***
//
// Revision 1.87  2004/01/09 14:37:53  am
// *** empty log message ***
//
// Revision 1.86  2004/01/09 14:36:11  am
// change: в vcmAction изменилась семантика LockExecute
//
// Revision 1.85  2004/01/09 13:47:11  am
// new: при paste из клипборда в поле ввода, символы с кодами 13,10 заменяются пробелами
//
// Revision 1.84  2004/01/09 13:23:42  am
// bugfix:
//
// Revision 1.83  2004/01/06 12:41:46  am
// new: если текст не вмещается в комбобокс - прокручиваем текст вправо и показываем его хинтом
//
// Revision 1.82  2004/01/05 12:44:32  am
// bugfix: обновление текста в случае, когда Text ноды, пришедшей из vcm, не совпадает с текущий текстом.
//
// Revision 1.81  2003/12/30 13:27:55  am
// new: TChooseTree._Clear для Garant5
//
// Revision 1.80  2003/12/30 10:00:22  am
// fixes: множественное выделение
//
// Revision 1.79  2003/12/29 15:40:31  am
// *** empty log message ***
//
// Revision 1.78  2003/12/29 15:13:26  am
// *** empty log message ***
//
// Revision 1.77  2003/12/29 14:58:40  am
// bugfix: paste/clipboard
//
// Revision 1.76  2003/12/29 14:47:52  am
// new: автоподстановка по Tab
//
// Revision 1.75  2003/12/29 13:43:49  am
// *** empty log message ***
//
// Revision 1.74  2003/12/29 10:36:51  am
// *** empty log message ***
//
// Revision 1.73  2003/12/29 10:31:56  am
// new: добавлено множественное выделение а-ля Garant5.x
//
// Revision 1.72  2003/12/25 15:35:22  am
// new: комбобокс, наследуемый от TFakeBox имеет констрейнт: MaxWidth=200
//
// Revision 1.71  2003/12/25 14:55:57  am
// bugfixes:
//
// Revision 1.70  2003/12/25 14:16:17  am
// bugfix: фильтрация
//
// Revision 1.69  2003/12/25 12:14:43  am
// *** empty log message ***
//
// Revision 1.68  2003/12/25 11:23:00  am
// *** empty log message ***
//
// Revision 1.67  2003/12/25 09:19:09  am
// bugfix: курсор
//
// Revision 1.66  2003/12/25 08:05:52  am
// fix: кумулятивное изменение шрифтов
//
// Revision 1.65  2003/12/25 06:52:20  am
// several fix для DesignTimeLibrary
//
// Revision 1.64  2003/12/24 16:26:52  am
// *** empty log message ***
//
// Revision 1.63  2003/12/24 15:59:02  am
// *** empty log message ***
//
// Revision 1.62  2003/12/24 15:57:54  am
// new prop: AutoWidth, _getFullPath режет Root
//
// Revision 1.61  2003/12/24 12:49:14  am
// *** empty log message ***
//
// Revision 1.60  2003/12/24 12:05:08  am
// new: автоматом встаёт на элемент, Text которого совпадает с Caption combobox'а.
//
// Revision 1.59  2003/12/24 09:36:10  am
// new prop: _UserDelimiters:_String - строка, состоящая из символов - разделителей.
// При вводе одного из них пользователем дёргается _OnUserEvent
//
// Revision 1.58  2003/12/22 10:52:36  am
// *** empty log message ***
//
// Revision 1.57  2003/12/22 10:47:06  am
// *** empty log message ***
//
// Revision 1.56  2003/12/22 10:45:08  am
// bugfix:
//
// Revision 1.55  2003/12/19 14:36:49  mmorozov
// - в _Paint TFakeBox используется глобальная переменная g_fkLocked: TfkLockedProc (запрет перерисовки);
//
// Revision 1.54  2003/12/18 16:40:30  mmorozov
// - реагирует на изменение родительского шрифта;
//
// Revision 1.53  2003/12/18 14:54:24  am
// bugfixes:
//
// Revision 1.52  2003/12/15 15:33:33  mmorozov
// - правки для компиляции без директивы DEBUG;
//
// Revision 1.51  2003/12/15 14:56:14  mmorozov
// - коммит изменений по просьбе Саши Маркова;
//
// Revision 1.50  2003/12/10 15:10:33  am
// new: отложенная фильтрация
//
// Revision 1.49  2003/12/10 10:42:28  am
// *** empty log message ***
//
// Revision 1.48  2003/12/10 10:23:41  law
// - cleanup: _Free заменил на FreeAndNil.
// - cleanup: добавил модификаторы const.
//
// Revision 1.47  2003/12/10 08:44:08  am
// new: в общем случае пришедшая через vcm нода, которая должна стать Current,
//      и нода в дереве, после GotoNode, не совпадают.
//
// Revision 1.46  2003/12/10 08:20:09  am
// new: у списков убран отступ слева перед содержимым
//
// Revision 1.45  2003/12/10 07:44:08  am
// bugfixes:
//
// Revision 1.44  2003/12/09 16:05:10  am
// *** empty log message ***
//
// Revision 1.43  2003/12/09 15:16:06  am
// bugfixes: SetCurrentNode
//
// Revision 1.42  2003/12/09 14:41:03  am
// *** empty log message ***
//
// Revision 1.41  2003/12/09 14:20:32  law
// - new method: _TEditableBox.vcmSetCurrent.
//
// Revision 1.40  2003/12/09 13:33:06  am
// *** empty log message ***
//
// Revision 1.39  2003/12/09 08:51:44  am
// bugfix: убраны Changing\_Changed при присваивании рута(приводило к тормозам)
//
// Revision 1.38  2003/12/09 07:55:13  am
// - new prop: TTreeDrop.ShowRoot
// - new method: _TEditableBox.SetCurrentNode
//
// Revision 1.37  2003/12/08 14:15:56  am
// bugfixes:
//
// Revision 1.36  2003/12/08 13:33:57  am
// *** empty log message ***
//
// Revision 1.35  2003/12/08 13:11:34  am
// - new: новая реализация контрол (с одним деревом)
//
// Revision 1.34.4.1  2003/12/04 11:00:01  am
// *** empty log message ***
//
// Revision 1.34.2.1  2003/12/02 14:58:18  am
// - Ветка для Демона
//
// Revision 1.34  2003/12/01 11:29:13  am
// - new: QueryInteface у _TDropDownTree. Возвращает CurrentNode при получении _Il3Node,
//   и RootNode при получении Il3RootNode
// - bugfixes по интеграции в vcm
//
// Revision 1.33  2003/11/28 17:07:02  am
// new: поиск через absindex и выравнивание текста после выбора атрибута
//
// Revision 1.32  2003/11/27 14:16:51  law
// - cleanup: заменил IeeTreeView на IeeTree.
//
// Revision 1.31  2003/11/26 10:24:50  law
// - change: попытка оптимизировать SetNodeVisible.
//
// Revision 1.30  2003/11/25 13:45:12  am
// - new: SetHistory. Распарсить значение из истории без фильтрации дерева
//
// Revision 1.29  2003/11/25 07:51:49  mmorozov
// - при очистке Text событие OnClear вызывается для всех _ComboStyle (Марков С.);
//
// Revision 1.28  2003/11/21 09:00:39  am
// *** empty log message ***
//
// Revision 1.27  2003/11/21 08:14:09  am
// - new: CUT\COPY\PASTE воздействуют на всё, что есть в контроле.
//
// Revision 1.26  2003/11/20 20:37:43  law
// - new behavior: корректно генерируем список идентификаторов операций.
// - new behavior: вызов операций сущностей возможен теперь только по идентификатору.
// - cleanup: пытаемся в Design-Time отвязаться от GblAdapter (не получилось).
//
// Revision 1.25  2003/11/20 13:01:40  am
// - new: функциональность доработана до обычного комбобокса, для использования в Nemesis/vcm
//
// Revision 1.23  2003/11/19 14:43:01  am
// *** empty log message ***
//
// Revision 1.22  2003/11/19 12:16:16  am
// *** empty log message ***
//
// Revision 1.21  2003/11/19 07:48:10  am
// - new: выкинут модуль smartdrop.pas
//
// Revision 1.20  2003/11/18 15:10:07  am
// *** empty log message ***
//
// Revision 1.19  2003/11/18 14:18:34  am
// - new: _OnGetItemImage
//
// Revision 1.18  2003/11/18 12:52:09  am
// - new: UserEvent
//
// Revision 1.17  2003/11/18 10:39:35  am
// *** empty log message ***
//
// Revision 1.16  2003/11/18 10:35:11  am
// *** empty log message ***
//
// Revision 1.15  2003/11/18 09:28:00  am
// - bugfixes:
// - new: правки в связи с новым GblAdapter
//
// Revision 1.14  2003/11/18 08:30:47  am
// - bugfixes:
//
// Revision 1.13  2003/11/18 07:43:10  am
// - bugfixes:
//
// Revision 1.12  2003/11/17 15:05:48  am
// *** empty log message ***
//
// Revision 1.11  2003/11/17 14:50:31  am
// - промежуточный апдейт поиска на сервере с поправленной dll от Кула.
//
// Revision 1.10  2003/11/17 09:19:20  am
// *** empty log message ***
//
// Revision 1.9  2003/11/17 07:38:55  am
// - new: Добавлена функция _ShowNode
// - new: По умолчанию собирается с поиском на сервере (управляется дефайном _NEW_BEHAVIOUR)
//
// Revision 1.8  2003/11/14 15:10:35  mmorozov
// - _getFullPath перенесена в public;
//
// Revision 1.7  2003/11/14 13:39:01  am
// *** empty log message ***
//
// Revision 1.6  2003/11/14 11:30:59  am
// *** empty log message ***
//
// Revision 1.5  2003/11/14 09:57:20  am
// *** empty log message ***
//
// Revision 1.3  2003/11/13 16:52:58  law
// - bug fix: поборолся-таки с неосвобождением объектов.
//
// Revision 1.2  2003/11/13 16:21:10  law
// - change: попытался побороться с неосвобожденными объектами (пока не получилось :-(...).
//

{$Include vtDefine.inc}

interface

uses
  strutils,
  sysutils,
  Windows,
  Messages,
  Controls,
  Classes,
  Forms,
  StdCtrls,
  Graphics,
  Math,
  Menus,
  ExtCtrls,
  ImgList,

  vtOutliner,

  l3Interfaces,
  l3Types,
  l3InternalInterfaces,
  l3InterfacesMisc,
  l3TreeInterfaces,
  l3Tree_TLB,
  l3Nodes,
  l3Base,
  l3Tree,
  l3VCLStrings,

  {$IfNDef NoVCM}
  vcmExternalInterfaces,
  {$EndIf  NoVCM}

  absdrop,
  treedrop,
  ctTypes,

  OvcBase,
  OvcCmd,
  OvcConst,

  ElStrUtils,

  EditableBox
  ;

type
  // притворяется полноценным комбобоксом для того, чтобы от него
  // можно было наследовать TComboBoxQS
  TFakeBox = class(TEditableBox)
  private
    {$IfNDef DesignTimeLibrary}
    FIsFirstLoad           : Boolean;
      {* - для того чтобы при первой закрузке не дергался Execute. }
    {$EndIf DesignTimeLibrary}
    FOnSelect              : TNotifyEvent;

    FOnAfterProcessKeyDown : TNotifyEvent;
    FWMSetFocusReceive     : Boolean;
    f_SetToBeginOnTreeSelect : Boolean;
    
    f_ErrorColor           : TColor;
    f_TextValid            : Boolean;
    FSetDroppedLock        : integer;
    FTabEaten              : boolean;
    f_ShowFullPath         : Boolean;
    // один таб был съеден (при автодополнении табом и невозможности автодополнить)
  private
  // property methods
    procedure pm_SetTextValid(const aValue: Boolean);
      {-}
    procedure pm_SetErrorColor(const aValue: TColor);
      {-}
  private
  // internal methods
    function IsNeedGotoNode(const aNode : Il3SimpleNode) : Boolean;
      {-}
    {$IfNDef DesignTimeLibrary}
    function GetValue: Il3SimpleNode;
      {-}
    {$EndIf DesignTimeLibrary}
    procedure SetItemIndex(const aValue: integer);
      {-}
    procedure SetItems(const aValue: Tl3Strings);
      {-}
    function DrawWithErrorColor: Boolean;
      {-}
  protected
  // protected methods
    function DoCreateStrings: Tl3Strings;
      virtual;
      {-}
    procedure Click;
      override;
      {-}
    procedure ProcessTreeSelect(ChooseFromTree : Boolean;
                                aTriggerSelect : Boolean);
      override;
      {-}
    procedure DefilterTree;
      {-}
    procedure ActionExecuteHandler;
      virtual;
      {-}
    procedure LocalUpdateAction;
      virtual;
      {-}
    procedure CNKeyDown(var Message: TWMKeyDown);
      message CN_KEYDOWN;
      {-}
    {$IfNDef ctEverestEdit}
    procedure WMSysKeyDown(var Message: TWMSysKeyDown);
      message WM_SYSKEYDOWN;
      {-}
    {$EndIf  ctEverestEdit}  
    procedure WMChar(var Message:TWMChar);
      message WM_CHAR;
      {-}
    procedure WMClear(var Msg : TMessage);
      message WM_CLEAR;
      {-}
    {$IfNDef DesignTimeLibrary}
    function IsLockPaint : Boolean;
      {-}
    procedure WMSetFocus(var Msg : TWMSetFocus);
      message WM_SETFOCUS;
      {-}
    procedure WMKillFocus(var Msg : TMessage);
      message WM_KILLFOCUS;
      {-}
    procedure WMPaint(var Message : TMessage);
      message WM_PAINT;
      {-}
    procedure WMNCPaint(var Message : TMessage);
      message WM_NCPAINT;
      {-}
    {$EndIf DesignTimeLibrary}

      {$IfDef ctEverestEdit}
      procedure SetTextColor(const aCanvas: Il3Canvas);
      override;
        {-}
      {$EndIf ctEverestEdit}
    {$IfNDef ctEverestEdit}
    procedure Paint(const aCN: Il3Canvas);
      override;
      {-}
    {$EndIf  ctEverestEdit}  
{$IfNDef DesignTimeLibrary}
    procedure WMSetText(var Msg : TMessage);
      message WM_SETTEXT;
      {-}
    function FindIndexOf(const aNode: Il3SimpleNode): integer;
      {-}
{$EndIf}
    procedure CMParentFontChanged(var Message: TMessage);
      message CM_PARENTFONTCHANGED;
      {-}
    {$IfNDef ctEverestEdit}
    procedure WMEraseBkgnd(var Message : TWMEraseBkgnd);
      message WM_ERASEBKGND;
      {-}
    {$EndIf  ctEverestEdit}  
    {$IfNDef ctEverestEdit}
    function ExecInternalMouseMove : Boolean;
      override;
      {-}
    {$EndIf  ctEverestEdit}
    property SetToBeginOnTreeSelect: Boolean
        read f_SetToBeginOnTreeSelect
       write f_SetToBeginOnTreeSelect;
      {-}
  {$IfNDef ctEverestEdit}
  protected
    function  DoProcessCommand(Cmd    : Tl3OperationCode;
                             aForce : Boolean;
                             aCount : Integer): Boolean;
      override;
      {-}
  {$EndIf  ctEverestEdit}    
  public
  // public methods
    procedure DoEnter;
      override;
      {-}
    constructor Create(AOwner: TComponent);
      override;
      {-}
    procedure Cleanup;
      override;
      {-}
    function isValid:boolean;
      {-}
    {$IfNDef DesignTimeLibrary}
    procedure ShowNode(const aNode:Il3SimpleNode);
      {* - Показать узел с последующим выбором (т.е. дерево после вызова
           нефильтрованое) для Морозова, он передаёт таким образом ноды из ППР. }
    procedure SetDropped(const aValue:boolean);
      override;
      {-}
    function EstimateTreeWidth(aMaxSizeX, aSizeY: integer): integer;
      override;
      {-}
    function EstimateTreeHeight(aMinSize, aMaxSize: integer): integer;
      override;
      {-}
    {$EndIf DesignTimeLibrary}
    procedure SetSimpleTree(const aTree : Il3SimpleTree);
      {-}
  public
  // public properties
    property OnAfterProcessKeyDown : TNotifyEvent
      read FOnAfterProcessKeyDown
      write FOnAfterProcessKeyDown;
      {-}
    property TextValid: boolean
      read f_TextValid
      write pm_SetTextValid;
      {* - для ComboStyle = cbEdit определяет будет ли текст рисоваться нормальным
           цветом или ErrorColor. И что будет возвращать IsValid }
    {$IfNDef DesignTimeLibrary}
    property ChoosenValue: Il3SimpleNode
      read GetValue;
      {-}
    {$EndIf DesignTimeLibrary}
  public
  // published properties
    property Items : Tl3Strings
      read FItems
      write SetItems;
      {-}
    property ErrorColor: TColor
      read f_ErrorColor
      write pm_SetErrorColor
      default clRed;
      {-}
    property OnSelect: TNotifyEvent
      read FOnSelect
      write FOnSelect;
      {-}
    property ItemIndex:integer
      read FItemIndex
      write SetItemIndex
      default -1;
    property ShowFullPath: Boolean read f_ShowFullPath write f_ShowFullPath;
      {-}
  end;//TFakeBox

implementation

uses
  l3Units,
  l3Chars,
  l3ControlsTypes,
  l3String,
  l3ScreenIC,

  afwFacade,

  {$IfDef ctEverestEdit}
  nevBase,
  nevTools,
  {$EndIf ctEverestEdit}

  {$IfNDef ctEverestEdit}
  CustomElEdit,
  {$EndIf  ctEverestEdit}

  ctFakeBoxStrings
  ;

// start class TFakeBox

constructor TFakeBox.Create(AOwner: TComponent);
begin
 inherited Create(AOwner);
 {$IfNDef ctEverestEdit}
 FDropSelection := false;
 {$EndIf  ctEverestEdit}
 FArrowsSelect := true;

 ComboStyle := ct_cbDropDown;

 FItems := DoCreateStrings;
 ShowHint := true;

 FNeedDropFiltering := false;
 FNeedGotoNode := false;
 FTabEaten := false;
 FTreeIsFiltered := false;
 AutoSelect := false;
 f_SetToBeginOnTreeSelect := False;
 f_ErrorColor := clRed;
 f_TextValid := True;
 f_ShowFullPath := True;
end;

{$IfDef ctEverestEdit}

type
 THackWinControl = class(TWinControl);

procedure TFakeBox.SetTextColor(const aCanvas: Il3Canvas);
  //override;
  {-}
begin
 inherited;
 if DrawWithErrorColor then
  aCanvas.Font.ForeColor := ErrorColor;
 if not Enabled then
 begin
  if (BorderStyle = bsNone) AND (Parent <> nil) then
   aCanvas.Font.BackColor := THackWinControl(Parent).Color
  else
   aCanvas.Font.BackColor := clBtnFace;
  aCanvas.Font.ForeColor := clWindowText;
 end;//not Enabled
end;
{$EndIf ctEverestEdit}

{$IfNDef ctEverestEdit}
procedure TFakeBox.Paint(const aCN: Il3Canvas);
(*var
 l_Update: Boolean;*)
var
 l_C  : TColor;
 l_OC : TNotifyEvent;
begin
//  см. комментарий в начале модуля
(* l_Update := True;
 if Assigned(g_fkLocked) then
  l_Update := not g_fkLocked(Self);
 if l_Update then*)
 l_OC := Font.OnChange;
 try
  Font.OnChange := nil;
  // - это нужно, чтобы не зацикливаться в смене параметров шрифта
  l_C := Font.Color;
  try
   inherited;
  finally
   Font.Color := l_C;
  end;//try..finally
 finally
  Font.OnChange := l_OC;
 end;//try..finally
end;
{$EndIf  ctEverestEdit}

procedure TFakeBox.CMParentFontChanged(var Message: TMessage);
  {-}
begin
 inherited;
 if (ComboStyle <> ct_cbEdit) then
  Tree.Font := Self.Font;
end;

procedure TFakeBox.Cleanup;
begin
 inherited;
 FreeAndNil(FItems);
end;

{$IfNDef DesignTimeLibrary}
function TFakeBox.GetValue: Il3SimpleNode;
begin
 if (ComboStyle in [ct_cbDropDownList, ct_cbDropDown]) then
  Result := FTempObjectCompleted
 else
  Result := nil;
end;
{$EndIf DesignTimeLibrary}

function TFakeBox.isValid: boolean;
begin
 case ComboStyle of
  ct_cbEdit:
   Result := TextValid;
  else
   Result := true;
 end;//case ComboStyle
end;

function TFakeBox.IsNeedGotoNode(const aNode : Il3SimpleNode) : Boolean;
var
 l_Temp : Il3SimpleNode;
begin
 Result := True;
 l_Temp := Tree.GetCurrentNode;
 if Assigned(l_Temp) then
 try
  if l_Temp.IsSame(aNode) then
   Result := False;
 finally
  l_Temp := nil;
 end;
end;

procedure TFakeBox.ProcessTreeSelect(ChooseFromTree : Boolean;
                                     aTriggerSelect : Boolean);
{$IfNDef DesignTimeLibrary} //morozov
var
  lNode  : Il3SimpleNode;
  l_Tree : Il3Tree;
  l_S    : Il3CString;
{$EndIf DesignTimeLibrary} //morozov
begin
 {$IfNDef DesignTimeLibrary}
 Inc(FRestrictOnTextChange);
 try
  if ComboStyle <> ct_cbEdit then
  begin
   inherited;
   FTabEaten := false;
   if ChooseFromTree then
   begin
    if (Tree.GetCurrentNode = nil) then
     exit;
    FTempObjectCompleted := Tree.GetCurrentNode;
   end;//ChooseFromTree

   if ChooseFromTree or (cmSetCurrent in CurrentMode) or
      (cmClear in CurrentMode) or (cmVcmExecute in CurrentMode) then
   begin
    if (FTempObjectCompleted <> nil) then
    begin
     if f_ShowFullPath then
      l_S := getFullPath(FTempObjectCompleted)
     else
      l_S := l3CStr(FTempObjectCompleted.Text);
     l3Replace(l_S, #10, l3PCharLen(#32));
     // - http://mdp.garant.ru/pages/viewpage.action?pageId=114065443&focusedCommentId=114065453#comment-114065453
     Paras.ParagraphStrings[0] := l_S;
     FNeedGotoNode := IsNeedGotoNode(FTempObjectCompleted);
     //if not FNeedGotoNode then
      State := esCompleted;
    end//FTempObjectCompleted <> nil
    else
     Paras.ParagraphStrings[0] := nil;
   end;//ChooseFromTree or

   DoUnselect;
   LocalUpdateAction;
   AdjustWidth;

   // в обычных комбобоксах скроллим вправо
   case ComboStyle of
    ct_cbDropDown:
     FBorder := TextLen;
    else
     FBorder := 0;
   end;//case ComboStyle

   DoMoveCursor(FBorder);
   DoSelect(FBorder, FBorder);
   {$IfNDef ctEverestEdit}
   RepaintRightMargin((EditRect.Right - RightMargin) - (EditRect.Left + LeftMargin)-1, true);
   {$EndIf  ctEverestEdit}
   InternalSetText(Text);
   SaveState;

   {/}
   if aTriggerSelect then
   begin
    if Assigned(FOnSelect) then
     if not FIsFirstLoad then
      ActionExecuteHandler;

    if IsList then
    begin
     if (FTempObjectCompleted <> nil) then
      FItemIndex := FindIndexOf(FTempObjectCompleted);
    end;//IsList
    // Раньше был прямой вызов DoChange
    // Но по ходу K-137463980 сильно потребовалось возможность давить вызов обработчика.
    Change;
   end;//aTriggerSelect
  end;//ComboStyle <> ct_cbEdit
  if SetToBeginOnTreeSelect then
   SelStart := 0
  else
   SelStart := TextLen;
  Repaint;
 finally
  Dec(FRestrictOnTextChange);
 end;//try..finally 
 {$EndIf DesignTimeLibrary}
end;

{$IfNDef DesignTimeLibrary}
procedure TFakeBox.ShowNode(const aNode: Il3SimpleNode);
begin
 if (aNode <> nil) then
 begin
  FTempObjectCompleted := aNode;
  CurrentMode := CurrentMode + [cmSetCurrent];
  try
   ProcessTreeSelect(false, false);
  finally
   CurrentMode := CurrentMode - [cmSetCurrent];
  end;//try..finally
 end//aNode <> nil
 else
  Clear;
end;
{$EndIf DesignTimeLibrary}

procedure TFakeBox.WMChar(var Message: TWMChar);
  {-}
{$IfNDef ctEverestEdit}
var
 l_ShiftState : TShiftState;
{$EndIf  ctEverestEdit}
begin
 if not (cmKeyProhibited in FCurrentMode) then
 begin
  {$IfNDef ctEverestEdit}
  // заплатка для Ctrl+буква
  l_ShiftState := KeyDataToShiftState(Message.KeyData);
  if (Message.Charcode < 32) and (ssCtrl in l_ShiftState) then
   exit;
  {$EndIf  ctEverestEdit}
  inherited;
  if (ComboStyle = ct_cbDropDown) then
  begin
   if (Message.CharCode <> VK_BACK) and (Message.CharCode <> VK_DELETE) and
      (Message.CharCode <> VK_ESCAPE) then
    DropDownCompletion
   else
    Dropped := False;
  end;//ComboStyle = cbDropDown
 end//not (cmKeyProhibited in FCurrentMode)
 else
  FCurrentMode := FCurrentMode - [cmKeyProhibited];
end;

procedure TFakeBox.WMClear(var Msg: TMessage);
begin
 if not ReadOnly then
 begin
  Inc(FRestrictOnTextChange);
  try
   Text := nil;
  finally
   Dec(FRestrictOnTextChange);
  end;//try..finally
 end;//not ReadOnly
end;

{$IfNDef ctEverestEdit}
procedure TFakeBox.WMSysKeyDown(var Message: TWMSysKeyDown);
  {-}
begin
 afw.BeginOp;
 try
  if (Controller.EntryCommands.TranslateUsing([OvcCmd.scDefaultTableName], TMessage(Message), GetTickCount) <> ccShortcut) then
   inherited;
 finally
  afw.EndOp;
 end;//try..finally
end;
{$EndIf  ctEverestEdit}

procedure TFakeBox.Click;
begin
 inherited;
 if Assigned(FOnSelect) then
  FOnSelect(self);
end;

{$IfNDef DesignTimeLibrary}
function FindCurrent(const aTree : Il3SimpleTree;
                     const aText : Il3CString): Il3SimpleNode;

 function FindCurr(const aIterNode: Il3SimpleNode): boolean;
 begin//FindCurr
  Result := l3Same(aIterNode.Text, aText, true);
 end;//FindCurr

begin
 Result := aTree.SimpleIterateF(l3L2SNA(@FindCurr), imCheckResult);
end;

procedure TFakeBox.WMSetText(var Msg: TMessage);
var
 lNode       : Il3SimpleNode;
 l_OldCaretX : integer;
begin
 // сохраняем положение каретки в случае edit'ов. Из-за того, что в OnTest часто выставляется текст,
 // а в inherited CaretX выставится в 0
 if (ComboStyle = ct_cbEdit) then
 begin
  l_OldCaretX := CaretX;
  inherited;
  CaretX := l_OldCaretX;
 end//ComboStyle = cbEdit
 else
  inherited;
 InternalSetText(Text, CaretX); // поскольку вызов происходит очень нечасто (один раз?) - можно
 // как вариант - вытащить код из inherited сюда, не будет одной лишней перерисовки
 lNode := nil;
 if (FItems.Count > 0) then
 begin
  MakeNodesFromItems;
  lNode := FindCurrent(Tree.TreeStruct, Text);
  if (lNode <> nil) then
   Tree.GotoOnNode(lNode);
 end;//FItems.Count > 0
 AdjustWidth;
 CurrentMode := CurrentMode + [cmWMSetText];
end;
{$EndIf}

procedure TFakeBox.CNKeyDown(var Message: TWMKeyDown);
  {-}
var
 {$IfNDef ctEverestEdit}
 l_Translation   : Word;
 l_CheckShortcut : boolean;
 l_Str           : Il3CString;
 l_CaretX        : Integer;
 l_ShiftState    : TShiftState;
 {$EndIf  ctEverestEdit}
 l_CurrentNode   : Il3SimpleNode;
begin
 afw.BeginOp;
 try
  {$IfNDef ctEverestEdit}
  l_ShiftState := KeyDataToShiftState(Message.KeyData);
  {$EndIf  ctEverestEdit}
  try
   if (Message.CharCode = VK_DELETE) and (ComboStyle = ct_cbDropDown) then
    Dropped := False;

   if (Message.CharCode = VK_RETURN) then
   begin
    DoUnselect;
    Repaint;
    DoMoveCursor(TextLen);
   end;//Message.CharCode = VK_RETURN

   {$IfNDef ctEverestEdit}
   l_CheckShortcut := True;
   if FDropped and (l_ShiftState = []) then
    if (Message.CharCode = VK_RETURN) or (Message.CharCode = VK_ESCAPE) then
     l_CheckShortcut := False;

   if l_CheckShortcut then
   begin
    with Controller.EntryCommands do
    begin
     l_Translation := TranslateUsing(OvcCmd.ovcTextEditorCommands,
      TMessage(Message), GetTickCount, Self);
     case l_Translation of
      ccShortCut: begin
       Message.CharCode := 0;
       Message.Result := 1;
       exit;
      end;
     end;//case l_Translation
    end;//with Controller.EntryCommands
   end;//l_CheckShortcut
   {$EndIf  ctEverestEdit}

   {$IfNDef ctEverestEdit}
   if RestrictConsSpaces and (Message.CharCode = 32) then
   begin
    if FSelected then
     l_Str := DeleteSelection(True)
    else
     l_Str := Text;
    if CaretX > l3Len(l_Str) then
     l_CaretX := l3Len(l_Str)
    else
     l_CaretX := CaretX;

    if (l_CaretX = 0) or (l3Len(l_Str) = 0) or (l3IsChar(l_Str, l_CaretX - 1, ' ')) or
       ((l_CaretX < l3Len(l_Str)) and (l3IsChar(l_Str, l_CaretX, ' '))) then
    begin
     Message.CharCode := 0;
     Message.Result := 1;
     exit;
    end;//l_CaretX = 0
   end;//RestrictConsSpaces..
   {$EndIf  ctEverestEdit}

   if (Message.CharCode = VK_TAB) then
   begin
    {$IfDef ctEverestEdit}
    if (State = esCompleted) then
    begin
     inherited;
     Exit;
    end//State = esCompleted
    else
    {$EndIf ctEverestEdit}
    if ((State = esSemiCompleted) or
        (State = esCompleted)) and
        {$IfNDef ctEverestEdit}
        ((FSelLastX - FSelFirstX)>0)
        {$Else  ctEverestEdit}
        not Selection.Collapsed
        {$EndIf ctEverestEdit}
        then
    begin
     FBorder := TextLen;
     DoMoveCursor(FBorder);
     DoSelect(FBorder, FBorder);
     Repaint;
     Message.CharCode := 0;
     Message.Result := 1;
     exit;
    end//State = esSemiCompleted..
    else
    if (State = esSemiCompleted) and
       {$IfNDef ctEverestEdit}
       ((FSelLastX - FSelFirstX) = 0)
       {$Else   ctEverestEdit}
       Selection.Collapsed
       {$EndIf  ctEverestEdit}
       and not FTabEaten then
    begin
     FTabEaten := true;
     Message.CharCode := 0;
     Message.Result := 1;
     exit;
    end//State = esSemiCompleted..
    else
      FTabEaten := false; // хотя и при выходе, по идее это произойдёт
   end;//Message.CharCode = VK_TAB

   if (ComboStyle <> ct_cbEdit) and (not IsList) and
      ((Message.CharCode = VK_ADD) or (Message.CharCode = VK_SUBTRACT)) and
      (GetActiveSub is TSubTree) then
   begin
    if FDropped and (Tree.GetCurrentNode <> nil) then
    begin
     if (Message.CharCode = VK_ADD) then
      { нажали "+" }
      Tree.ExpandNode(Tree.GetCurrentNode, true)
     else
     begin
      { нажали "-" }
      if Tree.GetCurrentNode.HasChild then
       Tree.ExpandNode(Tree.GetCurrentNode, false)
      else
      begin
       l_CurrentNode := Tree.GetCurrentNode;
       try
        if Assigned(l_CurrentNode) and
         Assigned(l_CurrentNode.Parent) and
         not l_CurrentNode.Parent.IsSame(Tree.TreeStruct.RootNode) then
        begin
         Tree.ExpandNode(l_CurrentNode.Parent, false);
         Tree.GotoOnNode(l_CurrentNode);
        end;
       finally
        l_CurrentNode := nil;
       end;//try..finally
      end;//Tree.GetCurrentNode.HasChild
     end;//Message.CharCode = VK_ADD
    end;//FDropped

    Message.CharCode := 0;
    Message.Result := 1;

    FCurrentMode:=FCurrentMode+[cmKeyProhibited];
    exit;
   end;//ComboStyle <> cbEdit..

   {$IfNDef DesignTimeLibrary}
   if (ComboStyle <> ct_cbEdit) AND
      (Message.CharCode = VK_RETURN) then
   begin
    if FDropped then
    begin
     Dropped:=false;
     ProcessTreeSelect(true, true);
    end//FDropped
    else
    begin
     if (FState = esCompleted) or (ComboStyle = ct_cbDropDown) then
      ProcessTreeSelect(false, true);
     {$IfDef ctEverestEdit}
     // - здесь обрабатываем ShortCut'ы.
     inherited;
     Exit;
     {$EndIf ctEverestEdit}
    end;//FDropped

    Message.CharCode := 0;
    Message.Result := 1;
    exit;
   end;//ComboboxStyle <> cbEdit..

   {$EndIf DesignTimeLibrary}

   inherited;
  finally
   if Assigned(FOnAfterProcessKeyDown) then
    FOnAfterProcessKeyDown(Self);
  end;//try..finally
 finally
  afw.EndOp;
 end;//try..finally
end;

procedure TFakeBox.DoEnter;
begin
 inherited;
 if not ReadOnly then
 begin
  DoMoveCursor(TextLen);
  DoSelect(0, TextLen);
  Repaint;
 end;//not ReadOnly
end;

{$IfNDef DesignTimeLibrary}
procedure TFakeBox.WMSetFocus(var Msg: TWMSetFocus);
begin
 FWMSetFocusReceive := True;
 {$IfNDef ctEverestEdit}
 if (ComboStyle = ct_cbDropDownList) and not FDropped then
 begin
  FPaintSelectionMode := true;
  Repaint;
 end;//ComboStyle = cbDropDownList
 {$EndIf  ctEverestEdit}
 inherited;
end;
{$EndIf DesignTimeLibrary}

{$IfNDef ctEverestEdit}
procedure TFakeBox.WMEraseBkgnd(var Message: TWMEraseBkgnd);
 //message WM_ERASEBKGND;
begin
 Message.Result := Integer(False);
end;
{$EndIf ctEverestEdit}

{$IfNDef DesignTimeLibrary}

function TFakeBox.FindIndexOf(const aNode: Il3SimpleNode): integer;
  {-}
  
var
  l_Count : Integer;

 function FindIndex(const aIterNode: Il3SimpleNode): boolean;
 begin//FindIndex
  Result := false;
  if aIterNode.IsSame(aNode) then
   Result := true;
  Inc(l_Count);
 end;//FindIndex

begin
 l_Count := -1;
 Result := -1;
 if Tree.TreeStruct.SimpleIterateF(l3L2SNA(@FindIndex), imCheckResult) <> nil then
  Result := l_Count;
end;
{$EndIf DesignTimeLibrary}

procedure TFakeBox.SetItemIndex(const aValue: integer);
{$IfNDef DesignTimeLibrary}
var
 lNode : Il3SimpleNode;
{$EndIf DesignTimeLibrary}
begin
{$IfNDef DesignTimeLibrary}
 Inc(FRestrictOnTextChange);
 try
  {$IfDef ctEverestEdit}
  Lock(Self);
  try
  {$EndIf ctEverestEdit}
   if (aValue = -1) then
   begin
    Tree.SetNoCurrent;
    FTempObjectCompleted := nil;
    Paras.ParagraphStrings[0] := nil;
    Repaint;
    FItemIndex := aValue;
    Exit;
   end;//aValue = -1

   if (FItems.Count > 0) and (FItemIndex <> aValue) {and (FRootNode <> nil)} and
      (aValue >= 0) and not FDropped{and (aValue < FRootNode.AllChildrenCount)}{and IsList} then
   // условие о FDropped нужно, т.к. vcm'вских update'ах мне постоянно выставляют Itemindex
   // и если его убрать, в vcm'овских комбобоксах нельзя будет "ходить" кнопками
   begin
    FIsFirstLoad := (FItemIndex = -1);
    MakeNodesFromItems;
    with Tree, Tree.TreeStruct do
    begin
     lNode := GetNode(aValue);
     if Assigned(lNode) then
      try
       GotoOnNode(lNode);
       ProcessTreeSelect(true, true);
      finally
       lNode := nil;
      end;//try..finally
     FItemIndex := aValue;
    end;//with Tree
    FIsFirstLoad := False;
   end;//FItems.Count > 0..
  {$IfDef ctEverestEdit}
  finally
   Unlock(Self);
  end;//try..finally
  {$EndIf ctEverestEdit}
 finally
  Dec(FRestrictOnTextChange);
 end;//try..finally
{$EndIf DesignTimeLibrary}
end;

procedure TFakeBox.DefilterTree;
{$IfNDef DesignTimeLibrary}
var
 l_Tree    : Il3Tree;
 l_FilterableTree: Il3FilterableTree;
 l_SyncIndex: Integer;
{$EndIf DesignTimeLibrary}
begin
{$IfNDef DesignTimeLibrary}
 if FTreeIsFiltered then
 begin
  Il3ChangeRecipient(Tree).Changing;
  try
   if Supports(Tree.TreeStruct, Il3Tree, l_Tree) then
    if not Tree.TreeStruct.RootNode.IsSame(FRootNode) then
     Tree.TreeStruct.RootNode := FRootNode as Il3SimpleRootNode
    else
     l_Tree.SetAllFlag(sbDeselect, nfHidden)
   else
    if Supports(Tree.TreeStruct, Il3FilterableTree, l_FilterableTree) then
     Tree.TreeStruct := l_FilterableTree.MakeFiltered(l_FilterableTree.
                                                       CloneFilters.
                                                       SetContext(nil),
                                                      Tree.GetCurrentNode,
                                                      l_SyncIndex,
                                                      False);
  finally
   Il3ChangeRecipient(Tree).Changed;
  end;//try..finally
  FTreeIsFiltered := false;
 end;//FTreeIsFiltered
{$EndIf DesignTimeLibrary}
end;

procedure TFakeBox.SetItems(const aValue: Tl3Strings);
begin
 FItems.Assign(aValue);
end;

{$IfNDef DesignTimeLibrary}
procedure TFakeBox.WMKillFocus(var Msg: TMessage);
begin
 inherited;
 {$IfNDef ctEverestEdit}
 if (ComboStyle = ct_cbDropDownList) then
 begin
  FPaintSelectionMode := false;
  Repaint;
 end;//ComboStyle = cbDropDownList
 {$EndIf  ctEverestEdit}
end;

function TFakeBox.IsLockPaint : Boolean;
begin
 Result := afw.IsObjectLocked(Self);
end;

procedure TFakeBox.WMPaint(var Message : TMessage);
//message WM_PAINT;
var
 //DC: HDC;
 PS: tagPaintStruct;
begin
 if not IsLockPaint then
  inherited
 else
 begin
  {DC := }BeginPaint(Handle, PS);
  EndPaint(Handle, PS);
 end;//not IsLockPaint
end;

procedure TFakeBox.WMNCPaint(var Message : TMessage);
//message WM_NCPAINT;
begin
 if not IsLockPaint then
  inherited;
end;
{$EndIf DesignTimeLibrary}

procedure TFakeBox.ActionExecuteHandler;
begin
 ;
end;

procedure TFakeBox.SetSimpleTree(const aTree: Il3SimpleTree);
begin
 Tree.SetSimpleTree(aTree);
end;

procedure TFakeBox.LocalUpdateAction;
begin
 ;
end;

{$IfNDef ctEverestEdit}
function TFakeBox.DoProcessCommand(Cmd    : Tl3OperationCode;
                                 aForce : Boolean;
                                 aCount : Integer): Boolean;
var
 l_Key : Word;
begin
 case Cmd of
  ccDel:
  begin
   l_Key := VK_DELETE;
   KeyDown(l_Key, []);
   Result := True;
  end;//ccDel
  ccWordLeft:
  begin
   WordLeft;
   Result := True;
  end;
  ccWordRight:
  begin
   WordRight;
   Result := True;
  end;
  else
   Result := inherited DoProcessCommand(Cmd, aForce, aCount);
 end;//case Cmd
end;
{$EndIf  ctEverestEdit}

{$IfNDef ctEverestEdit}
function TFakeBox.ExecInternalMouseMove : Boolean;
begin
 Result := True;
 // Выходим, установлено выделение всего текста при получении фокуса
 if FWMSetFocusReceive and AutoSelect then
 begin
  FWMSetFocusReceive := False;
  Result := False;
 end;//FWMSetFocusReceive..
end;
{$EndIf  ctEverestEdit}

{$IfNDef DesignTimeLibrary}
function TFakeBox.EstimateTreeHeight(aMinSize, aMaxSize: integer): integer;
begin
 Result := Tree.RowHeight * Tree.TreeStruct.CountView;
 if (Result > aMaxSize) then
  Result := aMaxSize
 else
 if (Result < aMinSize) then
  Result := aMinSize;
 Inc(Result, 4);
end;
{$EndIf DesignTimeLibrary}

procedure TFakeBox.pm_SetTextValid(const aValue: Boolean);
begin
 Assert(ComboStyle = ct_cbEdit);
 if (f_TextValid <> aValue) and (ComboStyle = ct_cbEdit) then
 begin
  f_TextValid := aValue;
  {$IfDef ctEverestEdit}
  SetTextColor(Canvas);
  SetFlag(ev_uwfBlock);
  {$EndIf}
  Invalidate;
 end;//f_TextValid <> aValue
end;

procedure TFakeBox.pm_SetErrorColor(const aValue: TColor);
begin
 if (f_ErrorColor <> aValue) then
 begin
  f_ErrorColor := aValue;
  Invalidate;
 end;//f_ErrorColor <> aValue
end;

function TFakeBox.DrawWithErrorColor: Boolean;
begin
 case ComboStyle of
  ct_cbEdit:
   Result := not TextValid;
  else
   Result := State = esWrong;
 end;//case ComboStyle
end;

{$IfNDef DesignTimeLibrary}
function TFakeBox.EstimateTreeWidth(aMaxSizeX, aSizeY: integer): integer;
var
 l_Width : Integer;
 l_Index : Integer;
begin
 Result := Tree.GetMinSizeX;
 if (Tree.RowHeight > 0) then
  for l_Index := 0 to ((aSizeY - Tree.GetBorderSize ) div Tree.RowHeight) - 1 do
  begin
   l_Width := Tree.GetItemDim(l_Index).X;
   if l_Width > Result then
    Result := l_Width;
   if (l_Width > aMaxSizeX) and (aMaxSizeX>=0) then
   begin
    Result := aMaxSizeX;
    exit;
   end;//l_Width > aMaxSizeX..
  end;//for l_Index
 Result := Result + Tree.Width - Tree.ClientWidth + 2;
 // - видимо тут учитывается ширина скроллера
 if (Result > aMaxSizeX) and (aMaxSizeX>=0) then
  Result := aMaxSizeX;
end;

{$EndIf  DesignTimeLibrary}

{$IfNDef DesignTimeLibrary}
procedure TFakeBox.SetDropped(const aValue: boolean);
var
 lNode  : Il3SimpleNode;
 {$IfNDef ctEverestEdit}
 l_Tree : Il3Tree;
 {$EndIf  ctEverestEdit}
begin
 if (FRestrictOnTextChange = 0) AND (ComboStyle <> ct_cbEdit) then
 begin
  if (FSetDroppedLock = 0) then
  begin
   Inc(FSetDroppedLock);
   try
    if (aValue <> FDropped) then
    begin
     if aValue then
     begin
      if (Windows.GetFocus <> Self.Handle) then
        Windows.SetFocus(Self.Handle);
      if (FItems.Count > 0) then
      begin
       MakeNodesFromItems;
       lNode := FindCurrent(Tree.TreeStruct, Text);
       if (lNode <> nil) then
        Tree.GotoOnNode(lNode);
      end//FItems.Count > 0
      else
      if FNeedDropFiltering and FTreeIsFiltered then
      begin
       Tree.TreeStruct.Changing;
       try
        DefilterTree;
       finally
        Tree.TreeStruct.Changed;
       end;//try..finally
      end;//FNeedDropFiltering
      if FNeedGotoNode then
      begin
       Tree.GotoOnNode(FTempObjectCompleted);
       FNeedGotoNode := false;
      end;//FNeedGotoNode
      CalcDropDimensions;
      // CalcDropDimensions нельзя ставить перед предыдущим блоком
      {$IfNDef ctEverestEdit}
      if (ComboStyle = ct_cbDropDownList) then
      begin
       FPaintSelectionMode := false;
       Repaint;
      end;//ComboStyle = cbDropDownList
      {$EndIf  ctEverestEdit}
     end//aValue
     else
     begin
      {$IfNDef ctEverestEdit}
      if Supports(Tree.TreeStruct, Il3Tree, l_Tree) then
      begin
       if (ComboStyle = ct_cbDropDownList) and Focused then
       begin
        FPaintSelectionMode := true;
        Repaint;
       end//ComboStyle = cbDropDownList
       else
       if FPaintSelectionMode then
       begin
        FPaintSelectionMode := false;
        Repaint;
       end;//FPaintSelectionMode
      end;//Supports(Tree.TreeStruct, Il3Tree, l_Tree)
      {$EndIf  ctEverestEdit}
     end;//aValue
    end;//aValue <> FDropped
    inherited;
   finally
    Dec(FSetDroppedLock);
   end;//try..finally
  end;//FSetDroppedLock = 0
 end;//ComboStyle <> cbEdit
end;
{$EndIf DesignTimeLibrary}

function TFakeBox.DoCreateStrings: Tl3Strings;
begin
 Result := TctFakeBoxStrings.Create(Self);
end;

end.
