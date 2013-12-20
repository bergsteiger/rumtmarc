unit evSelection;

{ Библиотека "Эверест"    }
{ Начал: Люлин А.В.       }
{ Модуль: evSelection -   }
{ Начат: 20.05.2005 13:42 }
{ $Id: evSelection.pas,v 1.74 2013/01/30 09:28:06 dinishev Exp $ }

// $Log: evSelection.pas,v $
// Revision 1.74  2013/01/30 09:28:06  dinishev
// {Requestlink:425273666}. Переносим на модель TevTableCurosrPair, т.к. нужна примесь.
//
// Revision 1.73  2012/12/11 13:34:01  dinishev
// {Requestlink:413501446}
//
// Revision 1.72  2012/11/29 12:10:12  dinishev
// {Requestlink:409750147}
//
// Revision 1.71  2012/11/23 08:28:45  dinishev
// {Requestlink:409747548}
//
// Revision 1.70  2012/11/23 08:24:46  dinishev
// {Requestlink:409747548}. Тест.
//
// Revision 1.69  2012/10/26 18:32:36  lulin
// - вычищаем поддержку ветки редактора.
//
// Revision 1.68  2012/09/21 13:03:27  dinishev
// {Requestlink:395662507}
//
// Revision 1.67  2012/04/18 06:44:14  dinishev
// {Requestlink:356070765}
//
// Revision 1.66  2011/09/15 18:32:06  lulin
// {RequestLink:278824896}.
//
// Revision 1.65  2011/02/17 13:19:27  dinishev
// [$253663257]
//
// Revision 1.64  2010/07/29 11:34:09  lulin
// {RequestLink:228693150}.
// - не удаляем все пустые параграфы при вставке потока. ОДИН всегда оставляем.
//
// Revision 1.63  2010/07/29 10:49:11  lulin
// {RequestLink:228693150}.
// - bug fix: не учитывал позицию потока.
//
// Revision 1.62  2010/07/28 10:57:40  lulin
// {RequestLink:228691360}.
//
// Revision 1.61  2010/07/13 10:45:27  dinishev
// [$226001213]
//
// Revision 1.60  2010/03/24 20:07:07  lulin
// {RequestLink:198672902}.
// - разрещаем перекрывать итераторы.
//
// Revision 1.59  2010/03/24 18:25:44  lulin
// {RequestLink:198672902}.
//
// Revision 1.58  2010/03/24 17:32:36  lulin
// {RequestLink:198672902}.
//
// Revision 1.57  2010/03/24 16:52:21  lulin
// {RequestLink:198672902}.
//
// Revision 1.56  2010/03/24 15:48:38  lulin
// {RequestLink:198672902}.
//
// Revision 1.55  2010/03/24 14:03:28  lulin
// {RequestLink:198672902}.
//
// Revision 1.54  2010/03/23 09:43:33  lulin
// {RequestLink:149782847}.
//
// Revision 1.53  2010/03/02 13:34:35  lulin
// {RequestLink:193823544}.
//
// Revision 1.52  2010/03/01 16:45:07  lulin
// {RequestLink:193823544}.
//
// Revision 1.51  2009/07/14 16:37:24  lulin
// {RequestLink:141264340}. №26.
//
// Revision 1.50  2009/07/14 14:56:28  lulin
// {RequestLink:141264340}. №25.
//
// Revision 1.49  2009/07/13 12:31:36  lulin
// {RequestLink:141264340}. №23ac.
//
// Revision 1.48  2009/07/11 15:55:09  lulin
// {RequestLink:141264340}. №22.
//
// Revision 1.47  2009/07/11 12:46:22  lulin
// {RequestLink:141264340}. №14.
//
// Revision 1.46  2009/07/11 09:24:42  lulin
// - избавляемся от лишнего дёрганья счётчиков ссылок.
//
// Revision 1.45  2009/07/10 15:04:43  lulin
// - избавляемся от лишнего дёрганья счётчиков ссылок.
//
// Revision 1.44  2009/06/18 19:36:19  lulin
// {RequestLink:142613457}.
//
// Revision 1.43  2009/06/18 18:35:07  lulin
// {RequestLink:142613457}.
//
// Revision 1.42  2009/06/05 17:13:47  lulin
// - переносим на модель то, что возможно перенести.
//
// Revision 1.41  2009/06/02 17:23:15  lulin
// - удалены ненужные интерфейсы и переопределения типов.
//
// Revision 1.40  2009/04/14 08:24:25  lulin
// [$142613919]. Группируем функциональность в базовых классах.
//
// Revision 1.39  2009/04/09 14:12:37  lulin
// [$140837386]. №15.
//
// Revision 1.38  2009/04/09 11:18:58  lulin
// - наводим порядок с указателями на объекты.
//
// Revision 1.37  2009/03/04 13:32:47  lulin
// - <K>: 137470629. Генерируем идентификаторы типов с модели и убираем их из общей помойки.
//
// Revision 1.36  2008/11/11 11:09:23  lulin
// - <K>: 122672539.
//
// Revision 1.35  2008/10/15 13:03:23  lulin
// - <K>: 121149970.
//
// Revision 1.34  2008/10/15 10:32:49  lulin
// - <K>: 121149970.
//
// Revision 1.33  2008/10/14 19:20:11  lulin
// - <K>: 121149970.
//
// Revision 1.32  2008/10/08 11:07:14  lulin
// - избавляемся от ненужных зависимостей между интерфейсами.
//
// Revision 1.31  2008/07/15 20:23:21  lulin
// - при рисовании формулы учитываем выделение.
//
// Revision 1.30  2008/05/28 07:58:23  lulin
// - <CQ>: 29146.
//
// Revision 1.29  2008/04/24 18:52:04  lulin
// - подготавливаемся к хранению форматированияв пуле, в рамках <K>: 89106312.
//
// Revision 1.28  2008/04/15 16:39:03  lulin
// - передаём вью в качестве параметра.
//
// Revision 1.27  2008/04/15 08:23:46  lulin
// - передаём вью в качестве параметра.
//
// Revision 1.26  2008/04/14 13:46:35  lulin
// - <K>: 89096854.
//
// Revision 1.25  2008/04/14 07:03:22  lulin
// - передаём вью в рамках <K>: 89096854.
//
// Revision 1.24  2008/04/11 13:19:12  lulin
// - передаём вью в рамках <K>: 89096854.
//
// Revision 1.23  2008/04/11 13:03:53  lulin
// - <K>: 89096854.
//
// Revision 1.22  2008/04/11 12:51:54  lulin
// - <K>: 89100722.
//
// Revision 1.21  2008/04/11 12:38:59  lulin
// - <K>: 89100748.
//
// Revision 1.20  2008/04/11 12:26:08  lulin
// - <K>: 89100752.
//
// Revision 1.19  2008/04/11 12:01:31  lulin
// - <K>: 89100701.
//
// Revision 1.18  2008/04/11 11:29:58  lulin
// - передаём вью в рамках <K>: 89096854.
//
// Revision 1.17  2008/04/10 17:34:24  lulin
// - <K>: 89097983.
//
// Revision 1.16  2008/04/10 12:45:57  lulin
// - <K>: 89099092.
//
// Revision 1.15  2008/04/09 17:57:08  lulin
// - передаём вью в рамках <K>: 89096854.
//
// Revision 1.14  2008/04/09 11:20:22  lulin
// - передаём вью в рамках <K>: 89096854.
//
// Revision 1.13  2008/04/09 08:04:45  lulin
// - передаём вью в рамках <K>: 89096854.
// - не компилировался Архивариус.
//
// Revision 1.12  2008/04/09 07:34:59  lulin
// - передаём вью в рамках <K>: 89096854.
//
// Revision 1.11  2008/04/09 07:14:40  lulin
// - передаём вью в рамках <K>: 89096854.
//
// Revision 1.10  2008/04/09 07:03:18  lulin
// - пытаемся ловить неиспользуемую функциональность.
//
// Revision 1.9  2008/04/08 17:24:58  lulin
// - поправлено имя метода.
//
// Revision 1.8  2008/04/08 16:41:20  lulin
// - передаём _View в AssignPoint. <K>: 89096854.
//
// Revision 1.7  2008/04/02 14:22:01  lulin
// - cleanup.
//
// Revision 1.6  2008/03/17 15:50:57  lulin
// - перегенерация.
// - используем итератор.
//
// Revision 1.5  2008/03/11 11:29:11  lulin
// - <K>: 85721297.
//
// Revision 1.4  2008/02/21 19:24:14  lulin
// - упрощаем наследование.
//
// Revision 1.3  2007/12/24 15:25:22  lulin
// - удалены ненужные файлы.
//
// Revision 1.2  2007/12/04 12:47:04  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.1.2.60  2007/10/10 16:39:21  lulin
// - теперь при вычислении шрифта передаем ссылку на карту форматирования.
//
// Revision 1.1.2.59  2007/09/14 13:26:06  lulin
// - объединил с веткой B_Tag_Clean.
//
// Revision 1.1.2.58.2.1  2007/09/12 15:23:02  lulin
// - избавляемся от метода, дублирующего функциональность получения атрибута.
//
// Revision 1.1.2.58  2007/08/14 19:31:30  lulin
// - оптимизируем очистку памяти.
//
// Revision 1.1.2.57  2007/06/22 18:59:54  lulin
// - cleanup.
//
// Revision 1.1.2.56  2007/04/17 12:37:49  oman
// - fix: Новый метод InevRange._Contains, который используется для
//  Selection._Contains - для учета мультиблоков (cq22752)
//
// Revision 1.1.2.55  2007/03/16 14:47:18  lulin
// - cleanup.
//
// Revision 1.1.2.54  2007/02/28 14:33:05  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.1.2.53  2007/02/12 18:06:13  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.1.2.52  2007/02/12 16:40:20  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.1.2.51  2007/01/24 10:21:42  oman
// - new: Локализация библиотек - ev (cq24078)
//
// Revision 1.1.2.50  2006/12/13 10:58:50  lulin
// - cleanup.
//
// Revision 1.1.2.49  2006/12/12 09:54:18  oman
// - fix: Перенос HiddenStyles c DocumentContainer на редактор.
//   Поддержка экспорта/клипборда/d'n'd (cq12564)
//
// Revision 1.1.2.48  2006/11/03 11:00:06  lulin
// - объединил с веткой 6.4.
//
// Revision 1.1.2.47.2.2  2006/10/25 09:45:00  lulin
// - операция клонирования спущена на базовую точку.
//
// Revision 1.1.2.47.2.1  2006/10/12 17:45:21  lulin
// - вычищаем все, что связано с дозагрузкой документа.
//
// Revision 1.1.2.47  2006/10/10 12:06:14  lulin
// - cleanup.
//
// Revision 1.1.2.46  2006/09/18 07:20:37  lulin
// - убран ненужный параметр.
//
// Revision 1.1.2.45  2006/07/10 15:57:51  lulin
// - вместо убранного свойста теперь такое наименование носит метод, возвращающий родительское выделение.
//
// Revision 1.1.2.44  2006/07/10 15:41:51  lulin
// - убрана хранимая ссылка на родительское выделение.
//
// Revision 1.1.2.43  2006/07/10 15:08:17  lulin
// - убрана инициализация ссылки на родительский объект выделения.
//
// Revision 1.1.2.42  2006/07/10 14:55:45  lulin
// - убрана инициализация ссылки на родительский объект выделения.
//
// Revision 1.1.2.41  2006/07/10 11:45:06  oman
// - fix: При поиске RangeInParent при дохождении до самого верхнего
//  уровня ошибочно затирали результат.
//
// Revision 1.1.2.40  2006/07/10 10:39:22  lulin
// - метод, возвращающий родительское выделение получил параметр - уровень родителя для которого интересует выделение.
//
// Revision 1.1.2.39  2006/05/26 14:06:10  lulin
// - bug fix: при выделении текста в комментариях текст из буфера не вставлялся - только выделение удалялось (CQ OIT5-21034).
//
// Revision 1.1.2.38  2005/12/22 16:29:21  lulin
// - bug fix: вроде железно починил сохранение комментариев.
// - bug fix: ссылки на многострочнык параграфах, отрисованных нецеликом неправильно определялись.
//
// Revision 1.1.2.37  2005/11/21 09:56:54  lulin
// - удален ненужный глобальный метод.
//
// Revision 1.1.2.36  2005/11/15 11:32:35  lulin
// - типизируем интерфейс потока.
//
// Revision 1.1.2.35  2005/11/09 15:28:24  lulin
// - базовые интерфейсы перенесены в правильный модуль.
//
// Revision 1.1.2.34  2005/11/04 15:41:36  lulin
// - выделяем у якоря и у курсора общую функциональность.
//
// Revision 1.1.2.33  2005/09/23 16:03:55  lulin
// - выделен модуль с общими интерфейсами.
//
// Revision 1.1.2.32  2005/07/21 07:54:32  lulin
// - убран промежуточный интерфейс и упрощено использование функции поиска/замены.
//
// Revision 1.1.2.31  2005/07/21 06:46:11  lulin
// - модификация состояния курсора и его связей с другими курсорами разнесены на два разных интерфейса.
//
// Revision 1.1.2.30  2005/07/21 06:05:47  lulin
// - в процедуре поиска модифицируемый курсор заменен на немодифицируемый.
//
// Revision 1.1.2.29  2005/07/20 18:21:14  lulin
// - убран переходный интерфейс.
//
// Revision 1.1.2.28  2005/07/20 17:43:34  lulin
// - класс переименован в соответствии с основным интерфейсом, который он реализует.
//
// Revision 1.1.2.27  2005/07/20 16:59:27  lulin
// - избавляем окружающих от необходимости знать про TagReader и _TagWriter.
//
// Revision 1.1.2.26  2005/07/19 18:20:04  lulin
// - с объекта _TevLocation убрано нетипизированное свойство Parent.
//
// Revision 1.1.2.25  2005/07/19 16:47:05  lulin
// - убран косвенный запрос подтверждения замены. Теперь соответствующий интерфейс подается непосредственно в Replacer.
//
// Revision 1.1.2.24  2005/07/19 15:32:24  lulin
// - убрана часть обращений к интересующим интерфейсам через цепочку Parent'ов диапазонов и курсоров.
//
// Revision 1.1.2.23  2005/07/19 12:03:20  lulin
// - cleanup: удалены ненужные модули и методы.
//
// Revision 1.1.2.22  2005/07/19 08:25:03  lulin
// - избавился от посылки сообщений для конвертации текста параграфа - перевел конвертацию на общий механизм Search/_Replace.
//
// Revision 1.1.2.21  2005/07/18 17:37:43  lulin
// - упорядочена интерфейсная модель редактора - для удобства чтения и эффективности использования, а также для избавления от посылки сообщений.
//
// Revision 1.1.2.20  2005/07/18 11:22:37  lulin
// - методу, возвращаещему выделение на параграфе дано более подходящее название.
//
// Revision 1.1.2.19  2005/07/15 11:01:00  lulin
// - избавился от опосредованного получения интерфейса для записи тега.
//
// Revision 1.1.2.18  2005/07/11 06:07:06  lulin
// - упорядочены названия интерфейсов.
//
// Revision 1.1.2.17  2005/07/08 12:21:17  lulin
// - убран ненужный метод.
//
// Revision 1.1.2.16  2005/07/07 16:54:02  lulin
// - cleanup.
//
// Revision 1.1.2.15  2005/06/22 11:59:50  lulin
// - cleanup.
//
// Revision 1.1.2.14  2005/06/22 11:57:29  lulin
// - bug fix: при построении _preview или сохранении в файл не  дочитывались непрогруженные параграфы.
//
// Revision 1.1.2.13  2005/06/16 16:06:19  lulin
// - cleanup: подготавливаемся к расширению интерфейса InevTextPara.
//
// Revision 1.1.2.12  2005/06/16 14:59:14  lulin
// - cleanup: удалены ненужные зависимости.
//
// Revision 1.1.2.11  2005/06/16 14:11:29  lulin
// - cleanup: отдельно стоящие процедуры перенесены на интерфейсы.
//
// Revision 1.1.2.10  2005/06/15 17:23:52  lulin
// - remove proc: _evMoveCursor.
//
// Revision 1.1.2.9  2005/06/15 13:06:00  lulin
// - убрана инициализация блоков выделения в явном виде.
//
// Revision 1.1.2.8  2005/06/15 11:45:21  lulin
// - cleanup.
//
// Revision 1.1.2.7  2005/06/15 11:22:53  lulin
// - new interface: InevSelectionFactory.
//
// Revision 1.1.2.6  2005/06/11 11:13:20  lulin
// - избавился от использования "устаревших" интерфейсов.
//
// Revision 1.1.2.5  2005/06/08 10:18:30  lulin
// - вместо объекта используем интерфейс.
//
// Revision 1.1.2.4  2005/06/07 13:43:47  lulin
// - удален ненужный модуль.
//
// Revision 1.1.2.3  2005/06/06 15:36:09  lulin
// - продолжаем бороться со знанием о природе реализации курсоров.
//
// Revision 1.1.2.2  2005/06/03 15:43:28  lulin
// - устраняем недоделки.
//
// Revision 1.1.2.1  2005/06/03 12:08:19  lulin
// - cleanup: убраны ненужные зависимости.
//
// Revision 1.135.2.22  2005/06/03 10:49:56  lulin
// - cleanup.
//
// Revision 1.135.2.21  2005/06/02 16:38:47  lulin
// - cleanup.
//
// Revision 1.135.2.20  2005/06/02 16:19:27  lulin
// - cleanup.
//
// Revision 1.135.2.19  2005/06/02 15:48:32  lulin
// - cleanup.
//
// Revision 1.135.2.18  2005/06/02 15:20:24  lulin
// - cleanup: удалены устаревшие методы.
//
// Revision 1.135.2.17  2005/06/02 15:07:05  lulin
// - cleanup: удалены устаревшие методы.
//
// Revision 1.135.2.16  2005/06/02 14:44:23  lulin
// - bug fix: восстановлена работа множественного выделения, отъехавшая в связи с переходом на интерфейсы.
//
// Revision 1.135.2.15  2005/06/02 12:33:07  lulin
// - вчерне заменил прямое создание блока выделения на его получение от фабрики.
//
// Revision 1.135.2.14  2005/06/02 06:05:07  lulin
// - инициализуруем блок выделения интерфейсами, а не объектами.
//
// Revision 1.135.2.13  2005/06/01 16:35:34  lulin
// - cleanup.
//
// Revision 1.135.2.12  2005/06/01 14:34:41  lulin
// - new unit: evLocation.
//
// Revision 1.135.2.11  2005/06/01 14:02:16  lulin
// - new unit: evCursor.
//
// Revision 1.135.2.10  2005/05/31 17:46:39  lulin
// - изживаем остатки объектов в качестве курсоров.
//
// Revision 1.135.2.9  2005/05/31 17:09:19  lulin
// - изживаем остатки объектов в качестве курсоров.
//
// Revision 1.135.2.8  2005/05/31 15:57:20  lulin
// - изживаем остатки объектов в качестве курсоров.
//
// Revision 1.135.2.7  2005/05/31 12:06:29  lulin
// - cleanup: при работе с курсорами используем интерфейсы, а не объекты.
//
// Revision 1.135.2.6  2005/05/23 12:23:54  lulin
// - bug fix: были AV при получении шрифта.
//
// Revision 1.135.2.5  2005/05/20 16:30:14  lulin
// - развязал интерфейс и реализацию шрифта выделения.
//
// Revision 1.135.2.4  2005/05/20 11:27:34  lulin
// - класс TevBlock вынесен в отдельный модуль.
//

{$Include evDefine.inc }

interface

uses
  Windows,

  Classes,
  
  l3Types,
  l3Interfaces,
  l3InternalInterfaces,

  k2Interfaces,

  evdInterfaces,

  evTypes,
  evInternalInterfaces,
  evLocation,

  nevBase,
  nevTools,

  nevRangePrim
  ;

type
  TevRange = class(TnevRangePrim,
                   InevRangeFactory,
                   InevRange,
                   InevRangeModify,
                   InevStorable,
                   IevdDataObject,
                   InevDataObjectPrim2,
                   IevRange)
   {* Выделение куска текста. }
    private
    // property fields
      f_Sharp : Boolean;
    protected
    // interfaces methods
      // InevRange
      function  CloneSel(const aView: InevView): InevRange;
        {-}
      function  Modify: InevRangeModify;
        {-}  
      function  GetChildSel(const aView : InevView;
                            aChildIndex: Long;
                            aForDrawing: Boolean): InevRange;
        virtual;
        {-}
      // IevRange
      procedure AssignSel(const aView: InevView; const aSource: InevRange);
        {* - присваивает одно выделение другому. }
      // InevLocation
      function  GetRange: InevRange;
        override;
        {-}
      function  GetAsPoint: InevBasePoint;
        override;
        {-}
      procedure DoRefreshBorders;
        virtual;
       {-}
    protected
    // internal methods
      procedure DeleteBeforeInsert(const aView : InevView;
                                   const anOp: InevOp);
        virtual;
        {-}
      function  DoInsertStream(const aView : InevView;
                             const aStream : IStream;
                             aFormat       : TnevFormat;
                             const anOp    : InevOp = nil;
                             aFlags        : TevLoadFlags = evDefaultLoadFlags;
                             aCodePage     : Long = CP_DefaultValue): Boolean;
        override;
        {-}
      function  SearchPrim(const aView : InevView;
                           const aSearcher : IevSearcher;
                           const Progress  : Il3Progress;
                           const aStart    : InevBasePoint;
                           out cFStart     : InevBasePoint;
                           out cFFinish    : InevBasePoint): Boolean;
        virtual;
        {-ищет подстроку и возвращает найденную позицию в (cFStart, cFFinish)}
      procedure DoStore(const aView: InevView;
                        const G : Ik2TagGenerator;
                        aFlags  : TevStoreFlags);
        virtual;
        {-}
      function  IsSolid(const aView: InevView): Boolean;
        virtual;
        abstract;
        {-}
      function  IsCollapsed(const aView: InevView): Boolean;
        virtual;
        {-}
      function  GetContainsEnd(const aView: InevView): Boolean;
        virtual;
        {-}
      function  TagReader: InevTagReader;
        virtual;
        {-}
      function  AsStorable: InevDataObjectPrim2;
        {-}
      procedure RefreshBorders;
       {-} 
    public
    // public methods
      function  Delete(const aView : InevView;
                       const anOpPack : InevOp = nil;
                       aMode          : TevClearMode = ev_cmAll;
                       const aPara    : InevPara = nil): Boolean;
       {-}
      function  DoDelete(const aView : InevView;
                       const anOpPack : InevOp = nil;
                       aMode          : TevClearMode = ev_cmAll;
                       const aPara    : InevPara = nil): Boolean;
        virtual;
        {-}
      procedure Assign(aCursor: TPersistent);
        override;
        {-}
    protected
    // property methods
      function  Solid(const aView: InevView): Boolean;
        {-}
      function  Collapsed(const aView: InevView): Boolean;
        {-}
      function  ContainsEnd(const aView: InevView): Boolean;
        {-}
      function  pm_GetData: IevdDataObject;
        {-}
    public
    // public methods
      procedure Init(const aStart  : InevBasePoint = nil;
                     const aFinish : InevBasePoint = nil;
                     aSharp        : Boolean = false);
        reintroduce;
        virtual;
        {-}
      function  BottomChildBlock(const aView : InevView): InevRange;

        virtual;
        {-}
      function  SolidBottomChildBlock(const aView : InevView): InevRange;
        {-}
      function  ParentRange(aLevel: Integer = 0): InevRange;
        {-}
      function  pm_GetBorders: TevPair;
        virtual;
        {-}
      {$IfDef evNeedGetBlockFont}
      function  DoGetFont(const aView : InevView;
                        aMap : TnevFormatInfoPrim;
                        Stop       : PInteger = nil): InevFontPrim;
        override;
        {-}
      {$EndIf evNeedGetBlockFont}
      {$IfDef evNeedGetBlockStyle}
      function  DoGetStyle(Stop: PInteger): Ik2Tag;
        override;
        {-}
      {$EndIf evNeedGetBlockStyle}  
      function  Search(const aView : InevView;
                       const aSearcher : IevSearcher;
                       const Progress  : Il3Progress;
                       const aStart    : InevBasePoint;
                       out cFStart     : InevBasePoint;
                       out cFFinish    : InevBasePoint): Boolean;
        {* - ищет в выделении критерий ОnSearch
             и возвращает начало и конец найденного фрагмента в (cFStart, cFFinish). }
      function  Store(aFormat     : Tl3ClipboardFormat;
                      const aPool : IStream;
                      const aFilters: Ik2TagGenerator;
                      aFlags      : TevStoreFlags = evDefaultStoreFlags): Boolean;
        overload;
        {* - сохраняет выделение в формате aFormat в Pool, который должен реализовывать IStream. }
      procedure Store(const aView: InevView;
                      const G : Ik2TagGenerator;
                      aFlags  : TevStoreFlags = evDefaultStoreFlags);
        overload;
        {* - сохраняет выделение в G. }
      procedure GetBorderPoints(out theStart, theFinish: InevBasePoint);
        virtual;
        {-}
      function  Contains(const aView : InevView;
                         const aPoint: InevBasePoint): Boolean;
        {-}
      procedure DoIterate(anAction       : InevRangePrim_Iterate_Action;
                        const Progress : Il3Progress = nil;
                        aMessage       : Il3CString = nil;
                        aStart         : Long = l3MinIndex);
        {* - перебирает подтеги, входящие в выделение и вызывает anAction для каждого. }
      procedure DoIterateBack(anAction       : InevRangePrim_Iterate_Action;
                        const Progress : Il3Progress = nil;
                        aMessage       : Il3CString = nil);
        {* - перебирает подтеги, входящие в выделение и вызывает anAction для каждого. }
      procedure DoIterateF(anAction       : InevRangePrim_Iterate_Action;
                         const Progress : Il3Progress = nil;
                         aMessage       : Il3CString = nil;
                         aStart         : Long = l3MinIndex);
        {* - перебирает подтеги, входящие в выделение и вызывает anAction для каждого. }
      procedure DoIterateBackF(anAction       : InevRangePrim_Iterate_Action;
                               const Progress : Il3Progress = nil;
                               aMessage       : Il3CString = nil);
        {* - перебирает подтеги, входящие в выделение и вызывает anAction для каждого. }
      procedure Select(const aView : InevView;
                       const C   : InevBasePoint;
                       aTarget   : TevSelectTarget;
                       const Ctx : InevOp = nil);
        overload;
        {-}
      procedure Select(const aView : InevView;
                       const C   : InevBasePoint;
                       aOpen     : Long;
                       aClose    : Long;
                       const Ctx : InevOp = nil);
        overload;               
        {-}
      function  Unselect(const aView: InevView): Boolean;
        {-}
      function  SearchReplace(const aSearcher : IevSearcher;
                              const aReplacer : IevReplacer;
                              const aConfirm  : InevConfirm;
                              const Cursor    : InevBasePoint = nil;
                              const anOpPack  : InevOp = nil;
                              aNeedProgress   : Boolean = true): Boolean;
        virtual;
        {* - процесс поиска/замены. Возвращает - была ли отмена замены. }
      function  GetBlock: InevRange;
        {* - получить текущий объект выделения. }
      procedure SetToStart;
        {* - установить выделение в начало. }
      procedure SetToFinish(aMoveUpInLines: Integer);
        {* установить выделение в конец }
    public
    // public properties
      property Borders: TevPair
        read pm_GetBorders;
        {-}
      property Sharp: Boolean
        read f_Sharp
        write f_Sharp;
        {* - определяет способ получения подблока. }
  end;//TevRange

implementation

uses
  Messages,
  
  SysUtils,
  
  l3Base,
  l3String,
  l3InterfacedString,
  l3Stream,

  k2Tags,
  k2Base,

  evSelectConst,
  evCursorTools,
  evParaTools,
  
  nevFacade,
  nevInterfaces,

  Para_Const,
  ParaList_Const
  ;

// start class TevRange 

function TevRange.Solid(const aView: InevView): Boolean;
  {-}
begin
 Result := (Self <> nil) AND IsSolid(aView);
end;

function TevRange.Collapsed(const aView: InevView): Boolean;
  {-}
begin
 Result := (Self = nil) OR IsCollapsed(aView);
end;

function TevRange.IsCollapsed(const aView: InevView): Boolean;
  //virtual;
  {-}
begin
 Result := true;
end;

function TevRange.ContainsEnd(const aView: InevView): Boolean;
  {-}
begin
 Result := (Self <> nil) AND GetContainsEnd(aView);
end;

function TevRange.pm_GetData: IevdDataObject;
  {-}
begin
 Result := Self;
end;

function TevRange.GetContainsEnd(const aView: InevView): Boolean;
  //virtual;
  {-}
begin
 Result := false;
end;

function TevRange.GetChildSel(const aView : InevView;
                              aChildIndex: Long;
                              aForDrawing: Boolean): InevRange;
  //overload;
  {-}
begin
 Result := nil;
end;

procedure TevRange.GetBorderPoints(out theStart, theFinish: InevBasePoint);
  {-}
begin
end;

function TevRange.CloneSel(const aView: InevView): InevRange;
  {-}
type
 RevRange = class of TevRange;  
var
 l_Sel : TevRange;
begin
 l_Sel := RevRange(ClassType).Create(GetRedirect^);
 try
  l_Sel.AssignSel(aView, Self);
  Result := l_Sel;
 finally
  l3Free(l_Sel);
 end;//try..finally
end;

function TevRange.Modify: InevRangeModify;
  {-}
begin
 Result := Self;
end;

procedure TevRange.Assign(aCursor: TPersistent);
  //override;
  {-}
begin
 Assert(false);
 if (Self = aCursor) then
  Exit
 else
 if (aCursor Is TevRange) then
  AssignSel(nil, TevRange(aCursor))
 else
  inherited; 
end;
 
procedure TevRange.AssignSel(const aView: InevView; const aSource: InevRange);
  {* - присваивает одно выделение другому. }
var
 l_S, l_F : InevBasePoint;  
begin
 Target := aSource.Obj^;
 aSource.GetBorderPoints(l_S, l_F);
 if (l_S <> nil) then
  l_S := l_S.ClonePoint(aView);
 if (l_F <> nil) then
  l_F := l_F.ClonePoint(aView);
 Init(l_S, l_F);
end;

function TevRange.GetRange: InevRange;
  {-}
begin
 Result := Self;
end;

function TevRange.GetAsPoint: InevBasePoint;
  {-}
begin
 Result := nil;
end;

function TevRange.BottomChildBlock(const aView : InevView): InevRange;
  //virtual;
  {-}
begin
 Result := Self;
 // - мы и есть блок самого нижнего уровня
end;

function TevRange.SolidBottomChildBlock(const aView : InevView): InevRange;
  {-}
begin
 Result := BottomChildBlock(aView).Obj.SubRange(aView, 0, High(Long));
end;

function TevRange.ParentRange(aLevel: Integer = 0): InevRange;
  {-}
var
 l_Obj     : InevObject;
 l_Owner   : InevObject;
 l_Index   : Integer;
 l_Start,
 l_Finish  : InevPoint;
 l_cStart,
 l_cFinish : InevBasePoint;
begin
 Result := Self;
 l_Obj := Get_Obj^;
 while (aLevel >= 0) do
 begin
  l_Owner := l_Obj.OwnerObj;
  if (l_Owner = nil) OR
     not l_Owner.IsValid OR
     not l_Owner.InheritsFrom(k2_idPara) then
   break;

  l_Index := l_Obj.PID;
  Assert(l_Index >= 0);
  Inc(l_Index);
  Result.GetBorderPoints(l_cStart, l_cFinish);
  with l_Owner do
  begin
   l_Start := MakePoint;
   try
    l_Start.PositionW := l_Index;
    l_Start.Inner := l_cStart;
    l_Finish := MakePoint;
    try
     l_Finish.PositionW := l_Index;
     l_Finish.Inner := l_cFinish;
     Result := Range(l_Start, l_Finish);
    finally
     l_Finish := nil;
    end;//try..finally
   finally
    l_Start := nil;
   end;//try..finally
  end;//with l_Owner
  l_Obj := l_Owner;
  Dec(aLevel);
 end;//while (aLevel >= 0)
end;

function TevRange.pm_GetBorders: TevPair;
  {-}
begin
 l3FillChar(Result, SizeOf(Result), 0);
end;

{$IfDef evNeedGetBlockFont}
function TevRange.DoGetFont(const aView : InevView;
                          aMap : TnevFormatInfoPrim;
                          Stop       : PInteger = nil): InevFontPrim;
  {-}
begin
 Result := nil;
end;
{$EndIf evNeedGetBlockFont}

{$IfDef evNeedGetBlockStyle}
function TevRange.DoGetStyle(Stop: PInteger): Ik2Tag;
  {-}
begin
 Result := GetRedirect.Attr[k2_tiStyle];
end;
{$EndIf evNeedGetBlockStyle}

function TevRange.Search(const aView : InevView;
                         const aSearcher : IevSearcher;
                         const Progress  : Il3Progress;
                         const aStart    : InevBasePoint;
                         out cFStart     : InevBasePoint;
                         out cFFinish    : InevBasePoint): Boolean;
  {-ищет подстроку и возвращает найденную позицию в EntryPoints или -1}
begin
 if (Self = nil) then
 begin
  Result := false;
  cFStart := nil;
  cFFinish := nil;
 end//Self = nil
 else
  Result := SearchPrim(aView, aSearcher, Progress, aStart, cFStart, cFFinish);
end;

procedure TevRange.DeleteBeforeInsert(const aView : InevView;
                                      const anOp: InevOp);
  //virtual;
  {-}
begin
 Delete(aView, anOp, ev_cmForceKeepOne);
                  // ^ http://mdp.garant.ru/pages/viewpage.action?pageId=228693150
                  // чтобы не удалить ОБА идущих подряд пустых параграфа
end;

function TevRange.DoInsertStream(const aView : InevView;
                               const aStream : IStream;
                               aFormat       : TnevFormat;
                               const anOp    : InevOp = nil;
                               aFlags        : TevLoadFlags = evDefaultLoadFlags;
                               aCodePage     : Long = CP_DefaultValue): Boolean;
  //override;
  {-}
const
 cLen = 2;  
var
 l_Start   : InevBasePoint;
 l_Finish  : InevBasePoint;
 l_Stream  : TStream;
 l_Word    : Word;
 l_IStream : IStream;
 l_Size    : Integer;
begin
 l_IStream := aStream;
 if (aFormat = CF_Text) OR (aFormat = CF_OEMText) then
 // http://mdp.garant.ru/pages/viewpage.action?pageId=228691360
 // Тут хитрим и если вставляется просто перевод строки и выделено более одного
 // параграфа, то удаляем этот перевод строки
 begin
  if ParaX.InheritsFrom(k2_idParaList) then
  begin
   GetBorderPoints(l_Start, l_Finish);
   if (l_Start <> nil) AND (l_Finish <> nil) then
    if not l_Start.MostInner.Obj.IsSame(l_Finish.MostInner.Obj^) then
    begin
     l3IStream2Stream(aStream, l_Stream);
     try
      l_Size := l_Stream.Size - l_Stream.Position;
      if (l_Size = cLen) then
      begin
       l_Stream.Read(l_Word, SizeOf(l_Word));
       if (Lo(l_Word) = 13) AND (Hi(l_Word) = 10) then
        l_IStream := nil
       else
        l_Stream.Seek(-cLen, soCurrent);
      end;//l_Size = cLen
     finally
      FreeAndNil(l_Stream);
     end;//try..finally
    end;//l_Start.MostInner.Obj.IsSame(l_Finish.MostInner.Obj)
  end;//ParaX.InheritsFrom(k2_idParaList)
 end;//aFormat = CF_Text
 DeleteBeforeInsert(aView, anOp);
 Result := inherited DoInsertStream(aView, l_IStream, aFormat, anOp, aFlags, aCodePage);
 GetBorderPoints(l_Start, l_Finish);
 if (l_Finish <> nil) then
  l_Finish.AssignPoint(aView, l_Start);
end;

function TevRange.SearchPrim(const aView : InevView;
                             const aSearcher : IevSearcher;
                             const Progress  : Il3Progress;
                             const aStart    : InevBasePoint;
                             out cFStart     : InevBasePoint;
                             out cFFinish    : InevBasePoint): Boolean;
  //virtual;
  {-ищет подстроку и возвращает найденную позицию в (cFStart, cFFinish)}
begin
 Result := false;
 cFStart := nil;
 cFFinish := nil;
end;

function TevRange.TagReader: InevTagReader;
  //virtual;
  {-}
begin
 Result := nil;
end;

function TevRange.AsStorable: InevDataObjectPrim2;
  {-}
begin
 Result := Self;
end;

function TevRange.Store(aFormat     : Tl3ClipboardFormat;
                        const aPool : IStream;
                        const aFilters: Ik2TagGenerator;
                        aFlags      : TevStoreFlags = evDefaultStoreFlags): Boolean;
  {-}
var
 l_TSR : InevTagReader;
begin
 if (Self <> nil) then
 begin
  l_TSR := TagReader;
  if (l_TSR <> nil) then
   try
    Result := (l_TSR.ReadTag(aFormat, aPool, aFilters, Self, aFlags) > 0);
   finally
    l_TSR := nil;
   end//try..finally
  else
   Result := false;
 end//Self <> nil
 else
  Result := false;
end;

procedure TevRange.Store(const aView: InevView;
                         const G : Ik2TagGenerator;
                         aFlags  : TevStoreFlags = evDefaultStoreFlags);
  {-}
begin
 if (Self <> nil) then
  DoStore(aView, G, aFlags);
end;

procedure TevRange.DoStore(const aView: InevView;
                           const G : Ik2TagGenerator;
                           aFlags  : TevStoreFlags);
  {override;}
  {-}
begin
 if not (evd_sfChildrenOnly in aFlags) then
 begin
  G.StartChild(GetRedirect.TagType.ID);
  try
   GetRedirect.Write(G)
  finally
   G.Finish;
  end;//try..finally
 end;//not (evd_sfChildrenOnly in aFlags)
end;

procedure TevRange.DoIterateF(anAction       : InevRangePrim_Iterate_Action;
                            const Progress : Il3Progress = nil;
                            aMessage       : Il3CString = nil;
                            aStart         : Long = l3MinIndex);
  {* - перебирает подтеги, входящие в выделение и вызывает anAction для каждого. }
begin
 try
  DoIterate(anAction, Progress, aMessage, aStart);
 finally
  evFreeTSA(anAction);
 end;//try..finally
end;

procedure TevRange.DoIterate(anAction       : InevRangePrim_Iterate_Action;
                           const Progress : Il3Progress = nil;
                           aMessage       : Il3CString = nil;
                           aStart         : Long = l3MinIndex);
  //overload;
  {* - перебирает подтеги, входящие в выделение и вызывает anAction для каждого. }

  function ChildFunc(const Child: Ik2Tag; Index: Long): Boolean;
  var
   l_Range: InevRange;
  begin
   l_Range := GetChildSel(nil, Index, False);
   try
    if l_Range = nil then
     Result := True
    else
     Result := anAction(l_Range, Index);
   finally
    l_Range := nil;
   end;
  end;

  function ChildFuncProgress(const Child: Ik2Tag; Index: Long): Boolean; 
  begin
   Result := anAction(GetChildSel(nil, Index, False), Index);
   Progress.Progress(Succ(Index));
  end;

var
 l_B : TevPair;
begin
 if (Self <> nil) AND Assigned(anAction) then
 begin
  l_B := Borders;
  if {(l_B.rFinish  - l_B.rStart >= 200) AND} Assigned(Progress) then
  begin
   if l3IsNil(aMessage) then
    Progress.Start(l_B.rFinish - l_B.rStart, str_nevmmLongOperation.AsCStr)
   else
    Progress.Start(l_B.rFinish - l_B.rStart, aMessage);
   try
    IterateChildrenF(k2L2TIA(@ChildFuncProgress), aStart);
   finally
    Progress.Finish;
   end;{try..finally}
  end//Assigned(Progress)
  else
   IterateChildrenF(k2L2TIA(@ChildFunc), aStart);
 end;{Self <> nil}
end;

procedure TevRange.Init(const aStart  : InevBasePoint = nil;
                        const aFinish : InevBasePoint = nil;
                        aSharp        : Boolean = false);
  {reintroduce;}
  {virtual;}
  {-}
begin
 Sharp := aSharp; 
end;

function TevRange.Delete(const aView : InevView;
                         const anOpPack : InevOp = nil;
                         aMode          : TevClearMode = ev_cmAll;
                         const aPara    : InevPara = nil): Boolean;
  {-}
begin
 Result := DoDelete(aView, anOpPack, aMode, aPara);
end;

procedure TevRange.Select(const aView : InevView;
                          const C   : InevBasePoint;
                          aTarget   : TevSelectTarget;
                          const Ctx : InevOp = nil);
  {-}
begin
 with evSelectBrackets[aTarget] do
  Select(aView, C, Open, Close, Ctx);
end;

procedure TevRange.Select(const aView : InevView;
                          const C   : InevBasePoint;
                          aOpen     : Long;
                          aClose    : Long;
                          const Ctx : InevOp = nil);
  //overload;
  {-}
var
 Start,
 Finish : InevBasePoint;
begin
 GetBorderPoints(Start, Finish);
 if (Ctx <> nil) then
  with Ctx As IevCursorContext do
  begin
   RecordCursor(Start);
   RecordCursor(Finish);
  end;//with Ctx As IevCursorContext
 if (Start = nil) then
 begin
  if (C = nil) then
   Start := Get_Obj.MakePoint
  else
   Start := C.ClonePoint(aView);
 end;//Start = nil
 try
  if (Finish = nil) then
  begin
   if (C = nil) then
    Finish := Get_Obj.MakePoint
   else
    Finish := C.ClonePoint(aView);
  end;//Finish = nil
  try
   if (aOpen <> -1) then
    Start.Move(aView, aOpen);
   if (aClose <> -1) then
    Finish.Move(aView, aClose);
   Init(Start, Finish);
  finally
   Finish := nil;
  end;{try..finally}
 finally
  Start := nil;
 end;//try..finally
end;

function TevRange.Unselect(const aView: InevView): Boolean;
  {-}
var
 l_Start,
 l_Finish : InevBasePoint;
// l_Range  : IevRange;
begin
 Result := false;
 {XXX_Parent}
(* if Supports(Parent, IevRange, l_Range) then
  try
   Result := l_Range.Unselect;
  finally
   l_Range := nil;
  end;//try..finally*)
 if not Result then
 begin
  Result := true;
  GetBorderPoints(l_Start, l_Finish);
  if (l_Start <> nil) AND (l_Finish <> nil) then
  begin
   l_Finish.AssignPoint(aView, l_Start);
   Init(l_Start, l_Finish);
  end;//l_Start <> nil
 end;//not Result
end;

function TevRange.SearchReplace(const aSearcher : IevSearcher;
                                const aReplacer : IevReplacer;
                                const aConfirm  : InevConfirm;
                                const Cursor    : InevBasePoint = nil;
                                const anOpPack  : InevOp = nil;
                                aNeedProgress   : Boolean = true): Boolean;
  //virtual;
  {-}
begin
 Result := false;
end;

function TevRange.GetBlock: InevRange;
  {* - получить текущий объект выделения. }
begin
 Result := Self;
end;

procedure TevRange.SetToStart;
  {* - установить выделение в начало. }
begin
end;

procedure TevRange.SetToFinish(aMoveUpInLines: Integer);
begin
end;

function TevRange.Contains(const aView : InevView;
                           const aPoint: InevBasePoint): Boolean;
var
 l_S, l_F : InevBasePoint;
 l_A      : Integer;
 l_B      : Integer;
begin
 GetBorderPoints(l_S, l_F);
 if (l_S = nil) then
  l_A := +1
 else
  l_A := aPoint.Compare(l_S);
 if (l_F = nil) then
  l_B := -1
 else
  l_B := aPoint.Compare(l_F);
 Result := ((l_A >= 0) AND (l_B <= 0));
end;

procedure TevRange.DoIterateBackF(anAction: InevRangePrim_Iterate_Action;
  const Progress: Il3Progress; aMessage: Il3CString);
begin
 try
  DoIterateBack(anAction, Progress, aMessage);
 finally
  evFreeTSA(anAction);
 end;//try..finally
end;

procedure TevRange.DoIterateBack(anAction: InevRangePrim_Iterate_Action;
  const Progress: Il3Progress; aMessage: Il3CString);
  
  function ChildFunc(const Child: Ik2Tag; Index: Long): Boolean;
  var
   l_Range: InevRange;
  begin
   l_Range := GetChildSel(nil, Index, False);
   try
    if l_Range = nil then
     Result := True
    else
     Result := anAction(l_Range, Index);
   finally
    l_Range := nil;
   end;
  end;

  function ChildFuncProgress(const Child: Ik2Tag; Index: Long): Boolean; 
  begin
   Result := anAction(GetChildSel(nil, Index, False), Index);
   Progress.Progress(Succ(Index));
  end;

var
 l_B : TevPair;
begin
 if (Self <> nil) AND Assigned(anAction) then
 begin
  l_B := Borders;
  if {(l_B.rFinish  - l_B.rStart >= 200) AND} Assigned(Progress) then
  begin
   if l3IsNil(aMessage) then
    Progress.Start(l_B.rFinish - l_B.rStart, str_nevmmLongOperation.AsCStr)
   else
    Progress.Start(l_B.rFinish - l_B.rStart, aMessage);
   try
    IterateChildrenBackF(k2L2TIA(@ChildFuncProgress));
   finally
    Progress.Finish;
   end;{try..finally}
  end//Assigned(Progress)
  else
   IterateChildrenBackF(k2L2TIA(@ChildFunc));
 end;{Self <> nil}
end;

procedure TevRange.RefreshBorders;
begin
 DoRefreshBorders;
end;

procedure TevRange.DoRefreshBorders;
begin

end;

function TevRange.DoDelete(const aView: InevView; const anOpPack: InevOp;
  aMode: TevClearMode; const aPara: InevPara): Boolean;
begin
 Result := false;
end;

end.

