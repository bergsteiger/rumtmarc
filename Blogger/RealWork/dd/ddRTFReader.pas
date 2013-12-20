unit ddRTFReader;

// $Id: ddRTFReader.pas,v 1.164 2013/07/19 09:59:19 dinishev Exp $ 

// $Log: ddRTFReader.pas,v $
// Revision 1.164  2013/07/19 09:59:19  dinishev
// {Requestlink:466752604}. Нарисованы TdestNorm и его наследники на модели. Нарисован TddBreak на модели.
//
// Revision 1.163  2013/07/18 12:15:19  dinishev
// Вычищаем кучу неиспользованного кода.
//
// Revision 1.162  2013/07/18 11:49:31  dinishev
// {Requestlink:466752604}
//
// Revision 1.161  2013/07/18 10:23:13  dinishev
// Убираем бесполезный объект.
//
// Revision 1.160  2013/07/11 17:36:59  lulin
// - правим за Димой.
//
// Revision 1.159  2013/07/11 13:16:37  dinishev
// Вызываем raise для тестов.
//
// Revision 1.158  2013/07/10 13:21:01  dinishev
// Перенос части ddRTFdestination на модель.
//
// Revision 1.157  2013/07/10 11:48:02  dinishev
// Cleanup
//
// Revision 1.156  2013/07/10 11:40:58  dinishev
// Refactoring: Переносим ddRTFState на модель + убираем кишки TrtfStateStack из TddRTFReader
//
// Revision 1.155  2013/07/10 08:59:04  dinishev
// {Requestlink:449678171}
//
// Revision 1.154  2013/07/09 10:36:58  dinishev
// Cleanup
//
// Revision 1.153  2013/07/09 10:36:08  dinishev
// Cleanup
//
// Revision 1.152  2013/07/09 10:35:52  dinishev
// Cleanup
//
// Revision 1.151  2013/07/09 10:30:28  dinishev
// Cleanup
//
// Revision 1.150  2013/07/09 10:29:26  dinishev
// Cleanup
//
// Revision 1.149  2013/07/09 09:54:31  dinishev
// Cleanup
//
// Revision 1.148  2013/07/02 10:05:31  dinishev
// {Requestlink:466751465}
//
// Revision 1.147  2013/05/08 12:33:00  dinishev
// {Requestlink:453164226}
//
// Revision 1.146  2013/05/06 12:37:11  dinishev
// Откатываем костыли и "рефакторинг" - отъехало чтение таблиц.
//
// Revision 1.145  2013/04/11 16:46:28  lulin
// - отлаживаем под XE3.
//
// Revision 1.144  2013/04/05 12:04:30  lulin
// - портируем.
//
// Revision 1.143  2013/03/20 11:37:28  narry
// * не читались многоуровневые списки
//
// Revision 1.142  2013/03/15 08:42:45  fireton
// - не хотел читать документ без переоткрытия стрима
//
// Revision 1.141  2013/02/14 10:49:59  narry
// Чистка мусора
//
// Revision 1.140  2013/01/25 13:13:36  narry
// Не устанавливается шрифт по имени (424386600)
//
// Revision 1.139  2013/01/25 05:38:51  narry
// Заменять автонумерацию на фиксированную (407745210)
//
// Revision 1.138  2013/01/24 12:59:15  narry
// Заменять автонумерацию на фиксированную (407745210)
//
// Revision 1.137  2013/01/24 07:21:41  narry
// Не собиралось
//
// Revision 1.136  2013/01/24 06:05:25  narry
// Обновление
//
// Revision 1.135  2013/01/22 12:19:52  narry
// Рефакторинг RTFReader
//
// Revision 1.133  2012/11/09 08:52:29  narry
// Скрытый текст в исходных файлах (407750788)
//
// Revision 1.132  2012/09/28 10:40:39  narry
// Текст сноски оказывается выше самой сноски (397291894)
//
// Revision 1.131  2012/09/25 08:23:35  narry
// Сноски больше не нумеруются с 10000
//
// Revision 1.130  2012/08/28 11:02:29  narry
// Обновление
//
// Revision 1.129  2012/07/06 08:57:08  fireton
// - прогресс
//
// Revision 1.128  2012/06/26 13:56:16  narry
// Распознавание текста из фреймов
//
// Revision 1.127  2012/04/12 11:21:55  narry
// Обработка нестандартной подстветки
//
// Revision 1.126  2011/09/21 12:30:06  narry
// Пропадают куски текста при форматировании (285510478)
//
// Revision 1.125  2011/07/22 06:54:02  narry
// Напильник для корректного преобразование "татарских" rtf
//
// Revision 1.124  2011/05/18 17:46:03  lulin
// {RequestLink:266409354}.
//
// Revision 1.123  2011/04/15 12:41:27  narry
// Обрезать картинку (262636436)
//
// Revision 1.122  2011/02/11 08:25:53  narry
// K253666052. Добавить флаг EnablePictures
//
// Revision 1.121  2011/02/10 11:24:50  narry
// K253664417. Не проходит тест K235062061
//
// Revision 1.120  2011/02/09 11:34:21  narry
// К253657673. Чтение картинок из RTF
//
// Revision 1.119  2010/11/30 11:47:16  lulin
// {RequestLink:228688602}.
// - борьба с предупреждениями.
//
// Revision 1.118  2010/09/17 09:01:28  narry
// k235051685. Терялись символы из символьных полей
//
// Revision 1.117  2010/07/30 13:23:57  narry
// - чистка кода
//
// Revision 1.116  2010/02/24 18:16:27  lulin
// - избавляемся от ненужного и вредного параметра, доставшегося в наследство от ошибок молодости.
//
// Revision 1.115  2009/07/31 11:10:53  narry
// - изменение параметра рамок по умолчанию
//
// Revision 1.114  2009/07/23 13:42:39  lulin
// - переносим процессор операций туда куда надо.
//
// Revision 1.113  2009/07/23 08:15:11  lulin
// - вычищаем ненужное использование процессора операций.
//
// Revision 1.112  2009/06/24 10:58:27  narry
// - русско-японские RTF от OpenOffice
//
// Revision 1.111  2009/06/11 06:34:11  narry
// - игнорировалось значение полей
//
// Revision 1.110  2009/05/29 11:36:31  narry
// - вместо поднятия окна выкидываем ошибку в лог
//
// Revision 1.109  2009/03/04 13:33:06  lulin
// - <K>: 137470629. Генерируем идентификаторы типов с модели и убираем их из общей помойки.
//
// Revision 1.108  2008/12/16 11:48:55  narry
// - татарская читалка
//
// Revision 1.107  2008/10/23 10:40:06  narry
// - очередной виток борьбы с русско-японскими текстами
//
// Revision 1.106  2008/10/20 07:52:45  narry
// - не накапливается картинка в режиме Lite
//
// Revision 1.105  2008/10/15 09:43:59  narry
// - преобразование русско-японского в русский
//
// Revision 1.104  2008/10/13 14:59:15  voba
// no message
//
// Revision 1.103  2008/10/13 12:39:27  narry
// - промежуточное обновление
//
// Revision 1.102  2008/10/03 13:58:42  narry
// - таблица без ячеек останавливала разбор RTF
//
// Revision 1.101  2008/06/20 14:49:11  lulin
// - используем префиксы элементов.
//
// Revision 1.100  2008/04/24 15:08:01  narry
// - все буллеты преобразуются в дефис
//
// Revision 1.99  2008/04/22 10:09:20  narry
// - текст некоторых полей пропадал
//
// Revision 1.98  2008/04/17 14:44:44  narry
// - сноски, списки, картинки
//
// Revision 1.97  2008/04/10 10:59:13  narry
// - импорт абзацных отступов для элементов списка
//
// Revision 1.96  2008/04/09 13:51:15  narry
// - рефакторинг
// - замена символов буллета на (*, о, #)
//
// Revision 1.95  2008/04/08 11:13:35  narry
// - нумерация меток в соответствии с ТЗ
//
// Revision 1.94  2008/04/08 10:35:28  narry
// - ссылки со сноски на текст сноски
//
// Revision 1.93  2008/03/21 14:09:22  lulin
// - cleanup.
//
// Revision 1.92  2008/03/14 11:36:55  narry
// - борьба с попаданием разрыва страницы внутрь абзаца
//
// Revision 1.91  2008/03/03 20:06:00  lulin
// - <K>: 85721135.
//
// Revision 1.90  2008/02/22 09:06:37  lulin
// - упрощаем наследование.
//
// Revision 1.89  2008/02/20 17:22:59  lulin
// - упрощаем строки.
//
// Revision 1.88  2008/02/14 09:40:33  lulin
// - удалён ненужный класс.
//
// Revision 1.87  2008/02/13 20:20:06  lulin
// - <TDN>: 73.
//
// Revision 1.86  2008/02/06 15:37:00  lulin
// - каждому базовому объекту по собственному модулю.
//
// Revision 1.85  2008/02/05 15:19:25  voba
// - bug fix
//
// Revision 1.84  2008/02/05 09:58:00  lulin
// - выделяем базовые объекты в отдельные файлы и переносим их на модель.
//
// Revision 1.83  2008/02/01 15:14:44  lulin
// - избавляемся от излишней универсальности списков.
//
// Revision 1.82  2008/01/10 16:50:53  lulin
// - cleanup.
//
// Revision 1.81  2007/09/07 14:47:41  lulin
// - добавлено удаление последнего элемента списка.
//
// Revision 1.80  2007/08/14 19:31:52  lulin
// - оптимизируем очистку памяти.
//
// Revision 1.79  2006/12/29 13:09:25  lulin
// - реализуем интерфейс расширенного списка строк.
//
// Revision 1.78  2006/11/25 14:36:22  lulin
// - cleanup.
//
// Revision 1.77  2006/05/10 06:03:00  oman
// - fix: не компилировалось. Несовпадение типов для TddTableCell.Add(TObject(...))
//
// Revision 1.76  2006/05/06 13:31:05  lulin
// - cleanup.
//
// Revision 1.75  2006/01/05 15:02:45  narry
// - новое: чтение объединенных по горизонтали ячеек (не совсем корректно)
//
// Revision 1.74  2005/07/18 06:43:51  mmorozov
// - warning fix;
//
// Revision 1.73  2005/05/06 08:40:11  fireton
// - вынес строчку в resourcestring (для того, чтобы профайлить можно было)
//
// Revision 1.72  2005/04/19 15:41:42  lulin
// - переходим на "правильный" ProcessMessages.
//
// Revision 1.71  2005/03/28 14:30:04  lulin
// - от класса генераторов переходим к интерфейсу.
//
// Revision 1.70  2004/09/21 12:21:05  lulin
// - Release заменил на Cleanup.
//
// Revision 1.69  2004/09/15 11:09:25  lulin
// - Tl3Stream переведен на "шаблон" l3Unknown.
//
// Revision 1.68  2004/06/01 16:51:23  law
// - удален конструктор Tl3VList.MakePersistent - пользуйтесь _Tl3ObjectRefList.
//
// Revision 1.67  2004/04/14 14:59:14  law
// - rename proc: ev_lPAnsiCharSetPresent -> l3CharSetPresent.
//
// Revision 1.66  2004/04/05 11:41:24  narry
// - cleanup
//
// Revision 1.65  2004/04/05 11:15:05  narry
// - update: подчистка артефактов использования предыдущей графической библиотеки
//
// Revision 1.64  2004/01/16 10:09:48  narry
// - update: пересортировка методов и свойств
//
// Revision 1.63  2003/05/15 11:45:13  narry
// - add: поддержка табуляций
//
// Revision 1.62  2003/05/13 13:42:15  narry
// no message
//
// Revision 1.61  2003/04/30 12:42:05  narry
// - add: константа rtfTwip
// - change: замена 1440 на rtfTwip
//
// Revision 1.60  2003/04/19 12:30:38  law
// - new file: ddDefine.inc.
//
// Revision 1.59  2003/01/08 11:14:52  narry
// - bug fix: текст в ячейках с нулевой шириной
//
// Revision 1.58  2002/11/14 12:47:42  narry
// - bug fix: одновременное выставление у ячейки флагов "Начало верт. объединения" и "продолжение верт. объединения" приводит к исчезновению текста ячейки - ошибка преобразователя формата Microsoft Word в RTF
//
// Revision 1.57  2002/09/09 13:52:19  narry
// - cleanup
//
// Revision 1.56  2002/08/02 08:33:43  narry
// - bug fix: выливались лишние символы из \field
//
// Revision 1.55  2002/08/01 10:26:09  narry
// - bug fix: обработка картинок и разрывов
//
// Revision 1.54  2002/07/30 15:58:16  narry
// - new behavior: поддержка Strikeout
//
// Revision 1.53  2002/07/03 09:00:57  narry
// - update, cleanup и new behavior
//
// Revision 1.52.2.1  2002/07/02 14:30:45  narry
// - alpha release
//
// Revision 1.52  2002/06/05 13:22:59  narry
// - update: начало реализации поддержки полей
//
// Revision 1.51  2002/04/23 08:02:59  narry
// - update
//
// Revision 1.50  2001/11/22 13:58:43  narry
// - update : начало реализации Групп доступа
//
// Revision 1.49  2001/10/15 08:21:26  narry
// - new behavior: добавление "." в начало сегмента, оформленного superscript
//
// Revision 1.48  2001/10/08 11:24:28  narry
// - bug fix: отсутствие проверки на Nil объекта перед вызовом его свойств
//
// Revision 1.47  2001/09/12 14:46:10  narry
// - bug fix: чтение сегментов в Lite режиме
//
// Revision 1.46  2001/08/29 07:01:06  law
// - split unit: l3Intf -> l3BaseStream, l3BaseDraw, l3InterfacedComponent.
//
// Revision 1.45  2001/06/27 13:30:10  narry
// -bug fix: при наличие в документе полей, после его закрытия оставались
//         неосвобожденные объекты
//
// Revision 1.44  2001/06/04 13:57:23  narry
// - bug fix - контроль закрытия таблицы приводил к вызову лишнего Finish
//
// Revision 1.43  2001/06/04 13:02:56  narry
// -bug fix - контроль закрытия таблицы по окончании документ
//
// Revision 1.42  2001/05/31 15:18:25  narry
// Update - отключено добавление рамки к таблице
//
// Revision 1.41  2001/05/31 11:49:16  narry
// Update - выливка рамки для таблицы
//
// Revision 1.40  2001/05/31 10:40:57  narry
// Update - присвоение рамки первой строки всей таблице
//
// Revision 1.39  2001/05/29 12:47:53  narry
// Update - контроль валидности стиля только по его имени
//
// Revision 1.38  2001/05/28 15:36:46  narry
// Update - чтение уникодного текст
//
// Revision 1.37  2001/05/16 10:49:00  narry
// Update - ошибка присвоения параметров раздел
//
// Revision 1.36  2001/05/10 14:20:49  narry
// Update - чтение параметров раздел
//
// Revision 1.35  2001/04/27 09:21:51  narry
// Update - обработка стилей Эверест
//
// Revision 1.34  2001/04/25 07:18:02  narry
// Update - очередная итерация по записи-чтению стилей Эверест в РТФ
//
// Revision 1.33  2001/04/12 12:58:49  narry
// Update - запись-чтение внутренних стилей в ртф
//
// Revision 1.32  2001/04/11 12:29:58  narry
// Update - восстановлено автоматическое проставление стилей при чтении из RTF
//
// Revision 1.31  2001/04/09 14:03:59  narry
// update - несколько расширена поддержка уникодного текста
// при чтении RTF-файлов. Одновременно с этим временно отключено
// автоматическое распознавание стилей
//
// Revision 1.30  2001/03/15 12:12:44  narry
// Исправлено чтение картинок из RTF в режиме Lite
//
// Revision 1.29  2001/02/27 09:01:57  narry
// Fix - add empty paragraph in table cell
//
// Revision 1.28  2001/01/29 07:55:10  narry
// fix - lost paragraphs on section (page) break
//
// Revision 1.27  2001/01/25 14:45:08  narry
// Add section break parameters
//
// Revision 1.26  2001/01/25 12:08:11  narry
// Fix   - possible lost text
// Add - simple read section break
//
// Revision 1.25  2001/01/25 09:08:06  narry
// Fix - wrong page width, lost character format
// Add - write page break
//
// Revision 1.24  2001/01/19 12:26:03  narry
// Fix trouble with broken documents
//
// Revision 1.23  2001/01/18 12:58:07  narry
// dead tables fix
//
// Revision 1.22  2001/01/17 14:26:15  narry
// Bug fix with tables - unnecesssary paragraphs and format
//
// Revision 1.21  2000/12/18 11:40:09  narry
// small bug fix with picture
//
// Revision 1.20  2000/12/15 15:29:55  law
// - вставлены директивы Log и Id.
//

{$I ddDefine.inc }
{$DEFINE SaveTableProperty}
{.$DEFINE OnePass}
{.$DEFINE Border4Table}

interface


Uses
  Classes,
  Graphics,

  k2TagGen,
  k2Interfaces,

  l3Base,
  l3Types,
  l3Memory,
  l3StringList,
  l3ObjectRefList,
  l3SimpleObjectRefList,
  l3ProtoPersistentRefList,

  rtfListTable,
  
  RTFTypes,
  
  ddBase,
  ddRTFState,
  ddLowLevelRTF,
  ddRowProperty,
  ddRTFKeywords,
  ddDocumentAtom,
  ddRTFProperties,
  ddRTFDestination,
  ddCustomRTFReader,
  ddCharacterProperty,
  ddParagraphProperty;

type
 TddRTFReader = class(TddCustomRTFReader)
 private
  f_CheckDest     : Boolean;
  f_Destinations  : array[TRDS] of TddRTFDestination;
  f_DocIsDone     : Bool;
  f_DontSkipNext  : Boolean;
  f_DOP: TddDocumentProperty;
  f_EnablePictures: Boolean;
  f_FullCycle     : Boolean;
  f_Info          : TddRTFInfo;
  f_LastRDS       : TRDS;
  f_ListTable     : TrtfListTable;
  f_SkipNextGroup : Boolean;
  f_SkipPicture   : Boolean;
  f_SkipSkipable  : Boolean;
  f_States        : TrtfStateStack;
  procedure ApplyToCreateTime(What: Tiprop; Value: Longint);
  procedure ApplyToDOP(What: Tiprop; Value: Longint);
  procedure ApplyToFont(What: Tiprop; Value: Longint);
  procedure ApplyToInfo(What: Tiprop; Value: Longint);
  procedure ApplyToListTable(What: Tiprop; Value: Longint);
  procedure ApplyToRevisionTime(What: Tiprop; Value: Longint);
  procedure ApplyToStyleSheet(propType: TPropType; What: Tiprop; Value: Longint);
  procedure Close_rdsField(aOldDest, aNewDest: TddRTFDestination);
  procedure Close_rdsFormFieldItem(aOldDest, aNewDest: TddRTFDestination);
  procedure Close_rdsLevelText(aOldDest, aNewDest: TddRTFDestination);
  procedure Close_rdsList(aOldDest, aNewDest: TddRTFDestination);
  procedure Close_rdsPicture(aOldDest, aNewDest: TddRTFDestination);
  procedure Close_rdsListLevel(aOldDest, aNewDest: TddRTFDestination);
  procedure Close_rdsListOverride(aOldDest, aNewDest: TddRTFDestination);
  procedure Close_rdsStyleSheet(aOldDest, aNewDest: TddRTFDestination);
  procedure Close_rdsOldParaNumbering(aOldDest, aNewDest: TddRTFDestination);
  function pm_GetSEP: TddSectionProperty;
  function pm_GetSkipGroup: Boolean;
  function pm_GetState: TddRTFState;
  procedure pm_SetSEP(const Value: TddSectionProperty);
  procedure StartSkipGroup;
  procedure StopSkipGroup;
 protected
  procedure PushState; override;
  procedure AddKeyword(aKeyword: TSYM; aHasParam: Boolean; aParam: Long; aText: Tl3String = nil);
      override;
  procedure AddText(aText: AnsiChar); overload;  override;
  procedure AddText(aText: Tl3String); overload;  override;
  procedure AddText(aText: Word); overload;  override;
  procedure ChangeDest(aNewRDS: TRDS);
  procedure Cleanup; override;
  procedure PopState; override;
  procedure ecPopRtfState;
  procedure ecPushRtfState;
  function GetBOP: TddBorder;
  function GeTChP: TddCharacterProperty;
  function GetDestination(aRDS: TRDS): TddRTFDestination;
  function GeTPaP: TddParagraphProperty;
  function GetRDS: TRDS;
  function GetTAP: TddRowProperty;
      {-}
  procedure OpenStream; override;
  procedure ParseProperty(propType: TPropType; What: Tiprop; Value: Longint);
  procedure ParseSymbol(Symbol: Long; propType: TPropType);
  procedure SetBOP(Value: TddBorder);
  procedure SeTChP(Value: TddCharacterProperty);
  procedure SeTPaP(Value: TddParagraphProperty);
  procedure SetRDS(Value: TRDS);
  procedure SetTAP(Value: TddRowProperty);
  procedure TranslateKeyword(aKeyword: TSYM; aHasParam: Boolean; aParam: Long);
  procedure Write2Generator;
  procedure WriteText(aText: Tl3String); overload;
  property BOP : TddBorder
    read GetBOP write SetBOP;
  property CHP : TddCharacterProperty
    read GeTCHP write SeTChP;
  property Destination[aRDS: TRDS]: TddRTFDestination
    read GetDestination;
  property PAP : TddParagraphProperty
    read GeTPaP write SeTPaP;
  property RDS: TRds
    read GetRDS write SetRDS;
  property SEP: TddSectionProperty read pm_GetSEP write pm_SetSEP;
  property TAP : TddRowProperty
    read GetTAP write SetTAP;
 public
  constructor Create(aOwner: Tk2TagGeneratorOwner); override;
  procedure AddData(aStream: TStream); override;
  function ColorByIndex(anIndex: Longint): TColor; override;
  function GetFonts(anID: Integer): TddFontEntry; override;
  function ListByID(aID: Integer): TrtfList; override;
  function StyleByNumber(aNumber: Integer): TddStyleEntry; override;
  procedure Read; override;
  property DOP: TddDocumentProperty read f_DOP write f_DOP;
  property FullCycle: Boolean
    read f_FullCycle write f_FullCycle;
  property SkipGroup: Boolean read pm_GetSkipGroup;
  property SkipSkipable  : Boolean
    read f_SkipSkipable write f_SkipSkipable;
  property State: TddRTFState read pm_GetState;
 published
  property EnablePictures: Boolean read f_EnablePictures write f_EnablePictures;
 end;


implementation

Uses
  SysUtils, Forms, 

  l3Chars, l3String,

  afwFacade,

  k2Tags,
  evSegLst, l3Math, evConst, evdStyles, l3StringEx,

  destList,
  destNorm,
  destPicture,
  destFootnote,
  destListLevel,
  destLevelText,
  destListTable,
  destWord6Number,
  destListoverride,
  destListOverrideTable,

  ddRTFConst

  {$IfNDef l3ConsoleApp},Dialogs{$ENDIF}
  , StrUtils, Windows,

  Document_Const,
  Table_Const,
  TextPara_Const,
  TypInfo,
  l3ObjectRefList1,
  Math,
  l3Interfaces,
  k2Prim,

  dd_rtfFields,
  ddTextParagraph,
  ddTextSegment;

resourcestring
 SRTFBadStruct = 'Нарушена структура файла';


constructor TddRTFReader.Create(aOwner: Tk2TagGeneratorOwner);
begin
  inherited;
  f_Info  := TddRTFInfo.Create(nil);
  f_ListTable:= TrtfListTable.make;
  l3FillChar(f_Destinations, SizeOf(f_Destinations), 0);
  f_States := TrtfStateStack.Make;
  f_States.Push;
  //f_SkipSkipable:= True;
  f_FullCycle:= True;
  f_EnablePictures:= False;
 f_DOP := TddDocumentProperty.Create(nil);
end;

procedure TddRTFReader.AddData(aStream: TStream);
begin
 if (RDS = rdsPicture) {and (f_PictureEntry <> nil)} and f_EnablePictures then
  TdestPicture(Destination[RDS]).Picture.AddHexStream(aStream);
end;

procedure TddRTFReader.PushState;
begin
 if not f_DocIsDone then
 begin
  ecPushRTFState;
  if f_SkipNextGroup then
  begin
   StartSkipGroup;
   f_SkipNextGroup:= False;
  end;
  f_CheckDest:= True;
 end;
end;

procedure TddRTFReader.AddKeyword(aKeyword: TSYM; aHasParam: Boolean; aParam: Long; aText:
    Tl3String = nil);
begin
 if not f_DocIsDone then
 begin
  if  (RDS = rdsSkip) and f_SkipSkipable then
   //  пропускаем всю группу
   StartSkipGroup
  else
   TranslateKeyword(aKeyword, aHasParam, aParam);
 end;
end;

procedure TddRTFReader.AddText(aText: AnsiChar);
begin
 if not SkipGroup  then
 begin
  Destination[RDS].AddAnsiChar(aText, State);
  ReadData:= RDS = rdsPicture;
 end;
end;

procedure TddRTFReader.AddText(aText: Tl3String);
begin
 if not SkipGroup then
 begin
  Destination[RDS].AddString(aText, State);
  ReadData:= RDS = rdsPicture;
 end;
end;

procedure TddRTFReader.AddText(aText: Word);
begin
 if not SkipGroup then
  Destination[RDS].AddUnicodeChar(aText, State);
end;

procedure TddRTFReader.ApplyToCreateTime(What: Tiprop; Value: Longint);
begin

 with f_Info.CreateTime do
 begin
   case What of
     ipropDay  : Day:= Value;
     ipropMonth: Month:= Value;
     ipropYear : Year:= Value;
     ipropHour : Hour:= Value;
     ipropMin  : Min:= Value;
   end; {case What}
 end; { with};
end;

procedure TddRTFReader.ApplyToDOP(What: Tiprop; Value: Longint);
begin
 with DOP do
 begin
  case What of
   iproPAnsiCharSet: CharSet:= TrtfCharacterSet(Value);
   ipropCodePage: CodePage:= Value;
   ipropWidth: xaPage:= Value;
   ipropHeight: YaPage:= Value;
   ipropLeft: xaLeft:= Value;
   ipropRight: xaRight:= Value;
   ipropTop: yaTop:= Value;
   ipropBottom: yaBottom:= Value;
   ipropDefLang: Deflang:= Value;
   ipropDefFont: DefFont:= Value;
   ipropDefTab: DefTab:= Value;

   ipropwidowctrl    : ;
   ipropftnbj        : ;
   ipropaenddoc      : ;
   ipropnoxlattoyen  : ;
   ipropexpshrtn     : ;
   ipropnoultrlspc   : ;
   ipropdntblnsbdb   : ;
   ipropnospaceforul : ;
   iprophyphcaps     : ;
   ipropformshade    : ;
   ipropviewkind     : ;
   ipropviewscale    : ;
   ipropviewzk       : ;
   iproppgbrdrhead   : ;
   iproppgbrdrfoot   : ;
   ipropfet          : ;
   ipropsectd        : ;
   iproplinex        : ;
   ipropendnhere     : ;

  end;
 end;
end;

procedure TddRTFReader.ApplyToFont(What: Tiprop; Value: Longint);
begin
 { TODO : Хорошо бы перетащить на Destination }
end;

procedure TddRTFReader.ApplyToInfo(What: Tiprop; Value: Longint);
begin

 with f_Info do
 begin
   case What of
     ipropVersion  : Version:= Value;
     ipropedmins   : edmins:= Value;
     ipropnofpages : nofpages:= Value;
     ipropnofwords : nofwords:= Value;
     ipropnofchars : nofchars:= Value;
     ipropnofcharsws : nofcharsws:= Value;
     ipropVern     : InternalVersion:= Value;
   end; {case}
 end;
end;

procedure TddRTFReader.ApplyToListTable(What: Tiprop; Value: Longint);
var
 l_List: TrtfList;
 l_Level: TrtfListLevel;
begin
 l_List:= f_ListTable.Lists[f_ListTable.Hi];
 if not l_List.Empty then
  l_Level:= l_List.Levels[l_List.Hi]
 else
  l_Level:= nil;

 case What of
  iproplistid              : l_List.ID:= Value;
  iproplistoverridecount   : ;
  ipropListOverrideFormat  : ;
  iproplistrestarthdn      : ;
  iproplistsimple          : ;
  ipropliststyleid         : ;
  iproplistTemplateID      : l_List.TemplateID:= Value;
  iproplevelpicturenosize	 : ;
  iproplisthybrid          : ;//l_ListIndex].Hybrid:= True;
  iproplistoverridestartat : ;
  iproplevelfollow         : l_Level.Follow:= Value;
  iproplevelindent         : {l_Level.Indent:= Value};
  ipropleveljc             : l_Level.Justify:= Value;
  ipropleveljcn            : ;
  iproplevellegal          : ;
  iproplevelnfc            : l_Level.NumberType:= Value;
  iproplevelnfcn           : ;
  iproplevelnorestart      : ;
  iproplevelold            : ;
  iproplevelpicture        : ;
  iproplevelprev           : ;
  iproplevelprevspace      : ;
  iproplevelspace          : ;
  iproplevelstartat        : l_Level.StartAt:= Value;
 end;
end;

procedure TddRTFReader.ApplyToRevisionTime(What: Tiprop; Value: Longint);
begin
 with f_Info.RevisionTime do
 begin
   case What of
     ipropDay  : Day:= Value;
     ipropMonth: Month:= Value;
     ipropYear : Year:= Value;
     ipropHour : Hour:= Value;
     ipropMin  : Min:= Value;
   end; {case What}
 end; { with};
end;

procedure TddRTFReader.ApplyToStyleSheet(propType: TPropType; What: Tiprop; Value: Longint);
begin
 TdestStyleSheet(Destination[rdsStyleSheet]).ApplyProperty(propType, What, Value, State);
 if What = iproPAnsiCharStyle then
  StopSkipGroup;
end;

procedure TddRTFReader.ChangeDest(aNewRDS: TRDS);
begin
 // Отладка
 {$IFDEF Write2Log}
 l3System.Str2Log(Format('Change destination %s -> %s', [GetEnumName(TypeInfo(TRDS), Ord(RDS)), GetEnumName(TypeInfo(TRDS), Ord(aNewRDS))]));
 {$ENDIF}

  Status:= ecOk;
  if (RDS in CollectibleRDS) and not (aNewRDS in CollectibleRDS) then
   f_LastRDS:= RDS;  // Видимо, это не нужно

  if SkipGroup then
   if (aNewRDS <> rdsSkip) then
    StopSkipGroup
   else
   if (aNewRDS = rdsSkip) then
    StartSkipGroup;
  if f_DontSkipNext then
  begin
    aNewRDS:= RDS;
    f_DontSkipNext:= False;
  end;
  if ((rds = rdsStyleSheet) and (aNewRDS = rdsSkip)) then
    StopSkipGroup
  else
    RDS:= aNewRDS;
end;

procedure TddRTFReader.Cleanup;
var
 i: TRDS;
begin
 for i:= Low(TRDS) to High(TRDS) do
  FreeAndNil(f_Destinations[i]);
 FreeAndNil(f_DOP);
 FreeAndNil(f_States);
 FreeAndNil(f_Info);
 FreeAndNil(f_ListTable);
 inherited;
end;

procedure TddRTFReader.Close_rdsField(aOldDest, aNewDest: TddRTFDestination);
var
 l_FieldResult: AnsiString;
begin
 if (aNewDest is TdestNorm) then
 begin
  with TdestFieldInstruction(Destination[rdsFieldInstruction]) do
  begin
   Instruction2Result;
   l_FieldResult:= FieldResult;
  end; // with TdestFieldInstruction(Destination[rdsFieldInstruction])
  case TdestFieldInstruction(Destination[rdsFieldInstruction]).FieldType of
   dd_fieldUnknown   : ;
   dd_fieldHyperlink : ;
   dd_fieldSymbol    : ;
   dd_fieldForm      :
    begin
     l_FieldResult:= TdestFormField(Destination[rdsFormField]).GetFormResult;
    end;
  end;
  if l_FieldResult <> '' then
   TdestFieldResult(Destination[rdsFieldResult]).FieldResult:= l_FieldResult;
  TdestNorm(aNewDest).Append(TdestFieldResult(Destination[rdsFieldResult]), True);
 end;
 Destination[rdsFieldInstruction].Clear;
 Destination[rdsFieldResult].Clear;
 Destination[rdsFormField].Clear;
 TdestNorm(Destination[rdsFieldResult]).Paragraphs.Clear;
end;

procedure TddRTFReader.Close_rdsFormFieldItem(aOldDest, aNewDest:
    TddRTFDestination);
begin
 TdestFormField(aNewDest).AddItem(TdestFormFieldItem(aOldDest).Item);
 aOldDest.Clear;
end;

procedure TddRTFReader.Close_rdsLevelText(aOldDest, aNewDest:
    TddRTFDestination);
begin
 if aNewDest.RDS = rdsListLevel then
 begin
  TdestListLevel(aNewDest).Level.Text:= TdestLevelText(aOldDest).Text;
  TdestListLevel(aNewDest).Level.Numbers:= TdestLevelText(aOldDest).Numbers;
 end; // aNewDest.RDS = rdsListLevel
 aOldDest.clear;
end;

procedure TddRTFReader.Close_rdsList(aOldDest, aNewDest: TddRTFDestination);
begin
 if (aNewDest.RDS = rdsListTable) then
 begin
  TdestListTable(aNewDest).AddList(TdestList(aOldDest));
  aOldDest.clear;
 end;
end;

procedure TddRTFReader.Close_rdsPicture(aOldDest, aNewDest: TddRTFDestination);
begin
 if not f_SkipPicture and (TdestPicture(aOldDest).Picture.Format > 0) and f_EnablePictures then
 begin
  if aNewDest is TdestNorm then
   TdestNorm(aNewDest).AddPicture(TdestPicture(aOldDest).Picture, State);
 end;
 f_SkipPicture:= False;
 aOldDest.clear;
end;

procedure TddRTFReader.PopState;
begin
 if not f_DocIsDone then
  ecPopRTFState;
end;

function TddRTFReader.ColorByIndex(anIndex: Longint): TColor;
begin
 Result:= TdestColorTable(Destination[rdsColorTable]).ColorByIndex(anIndex);
end;

procedure TddRTFReader.ecPopRtfState;
{ Закончилась текущая группа, выпихиваем предыдущее состояние из стека }
var
 l_State   : TddRTFState;
 l_OldRDS  : TRDS;
 l_NewRDS  : TRDS;
 l_OldDest : TddRTFDestination;
 l_NewDest : TddRTFDestination;
begin
 try
  l_OldRDS:= RDS;
  l_OldDest:= Destination[l_OldRDS];
  l_State := f_States.PeekPrev;
  if l_State = nil then
   l_NewRDS := rdsNone
  else
   l_NewRDS := l_State.RDS;
  l_NewDest := Destination[l_NewRDS];
  {$IFDEF Write2Log}
  l3System.Str2Log(Format('Change destination %s -> %s', [GetEnumName(TypeInfo(TRDS), Ord(l_OldRDS)), GetEnumName(TypeInfo(TRDS), Ord(l_NewRDS))]));
  {$ENDIF}
  case l_OldRDS of
   rdsPicture      : Close_rdsPicture(l_OldDest, l_NewDest);
   rdsListLevel    : Close_rdsListLevel(l_OldDest, l_NewDest);
   rdsList         : Close_rdsList(l_OldDest, l_NewDest);
   rdsListOverride : Close_rdsListOverride(l_OldDest, l_NewDest);
   rdsLevelText    : Close_rdsLevelText(l_OldDest, l_NewDest);
   rdsField        : Close_rdsField(l_OldDest, l_NewDest);
   rdsFormFieldItem: Close_rdsFormFieldItem(l_OldDest, l_NewDest);
   rdsStyleSheet   : Close_rdsStyleSheet(l_OldDest, l_NewDest);
   rdsOldParaNumbering : Close_rdsOldParaNumbering(l_OldDest, l_NewDest);
  end;

  if (l_OldRDS = l_NewRDS) and (RDS in CollectibleRDS) then
  begin
   if l_OldDest is TdestNorm then
    with TdestNorm(l_OldDest) do
    begin
     if not BufferEmpty then
     begin
      CorrectCharset(CHP, TextBuffer);
      FlushTextBuffer(State);
     end
     else
     if (LastParagraph <> nil) then
      LastParagraph.ApplyCHP(CHP);
    end;
  end;
  if l_OldDest is TdestNorm then
   if not TdestNorm(l_OldDest).BufferEmpty then
   begin
     // Попробовать перенести это на TdestNorm
     if TdestNorm(l_OldDest).TextBuffer.Empty then
       TdestNorm(l_OldDest).Unicode2Text;
     WriteText(TdestNorm(l_OldDest).TextBuffer);
     TdestNorm(l_OldDest).TextBuffer.Clear;
   end;
   { Переключение на новый RDS }
   f_States.Pop;
   if (l_OldRDS = rdsNorm) and (RDS = rdsNone) then
   begin   {  Последняя закрывающая скобка - далее в файле лежит мусор }
    f_DocIsDone:= True;
   end;
 except
  l3System.Msg2Log(SRTFBadStruct);
  {$IfDef nsTest}
  raise;
  {$EndIf  nsTest}
 end;
 ReadData := RDS = rdsPicture;
 SkipData:=  ReadData and (LiteVersion and not f_EnablePictures);
end;

procedure TddRTFReader.ecPushRtfState;
  { Началась новая группа, запихиваем текущее состояние в стек }
begin
 f_States.Push;

 if (RDS = rdsStyleSheet) then
  TdestStyleSheet(Destination[rdsStyleSheet]).AddStyle;
 ReadData := RDS = rdsPicture;
 SkipData:= ReadData and (LiteVersion and not f_EnablePictures);
end;

function TddRTFReader.GetBOP: TddBorder;
begin
  Result:= State.BOP;
end;

function TddRTFReader.GeTChP: TddCharacterProperty;
begin
 Result:= State.CHP;
end;

function TddRTFReader.GetDestination(aRDS: TRDS): TddRTFDestination;
var
  l_Dest: TddRTFDestination;
begin
 Result:= f_Destinations[aRDS];
 if Result = nil then
 begin
  case aRDS of
   rdsFontTable: l_Dest:= TdestFontTable.Create(Self);
   rdsStyleSheet: l_Dest:= TdestStyleSheet.Create(Self);
   rdsFootnote: l_Dest:= TdestFootnote.Create(Self);
   rdsShpInst,
   rdsShpRslt,
   rdsShp,
   rdsNorm:
     l_Dest:= TdestNorm.Create(Self);
   rdsColorTable: l_Dest:= TdestColorTable.Create(Self);
   rdsPicture: l_Dest:= TdestPicture.Create(Self);
   rdsListTable: l_Dest:= TdestListTable.Create(Self);
   rdsList: l_Dest:= TdestList.Create(Self);
   rdsListLevel: l_Dest:= TdestListLevel.Create(Self);
   rdsLevelText: l_Dest:= TdestLevelText.Create(Self);
   rdslistoverride: l_Dest:= TdestListoverride.Create(Self);
   rdslistoverridetable: l_Dest:= TdestListOverrideTable.Create(Self);
   rdsField: l_Dest:= TdestField.Create(Self);
   rdsFieldInstruction: l_Dest:= TdestFieldInstruction.Create(Self);
   rdsFieldResult: l_Dest:= TdestFieldResult.Create(Self);
   rdsFormField: l_Dest:= TdestFormField.Create(Self);
   rdsFormFieldItem: l_Dest:= TdestFormFieldItem.Create(Self);
   rdsOldParaNumbering: l_Dest:= TdestWord6Number.Create(Self);
  else
   l_Dest:= TdestSkip.Create(Self);
  end; //case RDS
  l_Dest.LiteVersion:= LiteVersion;
  l_Dest.RDS:= aRDS;
  f_Destinations[aRDS]:= l_Dest;
  Result:= l_Dest;
 end; // Result = nil
end;

function TddRTFReader.GetPAP: TddPAragraphProperty;
begin
  Result:= State.PAP;
end;

function TddRTFReader.GetRDS: TRDS;
begin
 Result:= State.RDS;
end;

function TddRTFReader.GetTAP: TddRowProperty;
begin
 Result:= State.TAP;
end;

function TddRTFReader.ListByID(aID: Integer): TrtfList;
var
 l_ListID: Integer;
begin
 //Сюда приходит номер в ListOverrideTale, по нему нужно получить реальный номер списка
 l_ListID:= TdestListOverrideTable(Destination[rdsListOverrideTable]).LS2ListID(aID);
 Result := TdestListTable(Destination[rdsListTable])[l_ListID];
end;

procedure TddRTFReader.Close_rdsListLevel(aOldDest, aNewDest:
    TddRTFDestination);
begin
 if (aNewDest.RDS = rdsList) then
 begin
  TdestList(aNewDest).AddLevel(TdestListLevel(aOldDest));
  aOldDest.Clear;
 end; 
end;

procedure TddRTFReader.Close_rdsListOverride(aOldDest, aNewDest:
    TddRTFDestination);
begin
 if (aNewDest.RDS = rdsListOverrideTable) then
  TdestListOverrideTable(aNewDest).AddListOverride(TdestListOverride(aOldDest));
 aOldDest.Clear;
end;

procedure TddRTFReader.Close_rdsStyleSheet(aOldDest, aNewDest:
    TddRTFDestination);
begin
 if aOldDest = aNewDest then
  TdestStyleSheet(Destination[RDS]).CurStyle.CheckEvd;
end;

procedure TddRTFReader.OpenStream;
  {override;}
  {-}
begin
 inherited;
 f_DocIsDone:= False;
end;

procedure TddRTFReader.ParseProperty(propType: TPropType; What: Tiprop; Value: Longint);
begin
 { Всякие разные свойства }
 if propType = propDop then
  ApplyToDOP(What, Value)
 else
  Destination[RDS].ApplyProperty(propType, What, Value, State);
 if (propType = propPict) and (What = ipropSkipPicture) then
  f_SkipPicture:= True;
end;

procedure TddRTFReader.ParseSymbol(Symbol: Long; propType: TPropType);
begin
 if (Symbol = Ord(rdsSkipGroup)){ and f_SkipSkipable} then
  //  пропускаем всю группу
  StartSkipGroup
 else
  Destination[RDS].ParseSymbol(Symbol, propType, State);
end;

function TddRTFReader.GetFonts(anID: Integer): TddFontEntry;
begin
 Result:= TdestFontTable(Destination[rdsFontTable]).FontByNumber(anID);
end;

function TddRTFReader.pm_GetSEP: TddSectionProperty;
begin
 // TODO -cMM: TddRTFReader.pm_GetSEP default body inserted
 Result := nil;
end;

function TddRTFReader.pm_GetSkipGroup: Boolean;
begin
 Result := State.SkipGroup or f_DocIsDone;
end;

function TddRTFReader.pm_GetState: TddRTFState;
begin
 Result := f_States.Peek;
end;

procedure TddRTFReader.pm_SetSEP(const Value: TddSectionProperty);
begin
 // TODO -cMM: TddRTFReader.pm_SetSEP default body inserted
end;

procedure TddRTFReader.Read;
var
  l_i: TRDS;
begin
  RDS:= rdsNone;
  f_Info.Clear;
  for l_i:= Low(TRDS) to High(TRDS) do
   FreeAndNil(f_Destinations[l_i]);
  gNextFootnoteNumber:= 0;

  f_CheckDest:= False;
  f_DocIsDone := False;

  {$IFDEF OnePass}
  Generator.Start;
  Generator.StartChild(k2_idDocument);
  {$ENDIF}

  inherited;
  if Status = ecOk then
  begin
   if FullCycle then
    Write2Generator;
   {$IFDEF OnePass}
   Generator.Finish;
   Generator.Finish;
   {$ENDIF}
  end;
end;

procedure TddRTFReader.SetBOP(Value: TddBorder);
begin
  State.BOP:= Value;
end;

procedure TddRTFReader.SeTChP(Value: TddCharacterProperty);
begin
 State.CHP:= Value;
end;

procedure TddRTFReader.SetPAP(Value: TddPAragraphProperty);
begin
  State.PAP:= Value;
end;

procedure TddRTFReader.SetRDS(Value: TRDS);
begin
 State.RDS:= Value;
end;

procedure TddRTFReader.SetTAP(Value: TddRowProperty);
begin
 State.TAP:= Value;
end;

procedure TddRTFReader.StartSkipGroup;
begin
 State.SkipGroup:= True;
end;

procedure TddRTFReader.StopSkipGroup;
begin
 State.SkipGroup:= False;
end;

function TddRTFReader.StyleByNumber(aNumber: Integer): TddStyleEntry;
begin
 Result := TdestStyleSheet(Destination[rdsStyleSheet]).StyleByNumber(aNumber);
end;

procedure TddRTFReader.TranslateKeyword(aKeyword: TSYM; aHasParam: Boolean; aParam: Long);
var
  l_Enable: Boolean;
  l_Dest: TddRTFDestination;
begin
 if {(aKeyword <> key_Unknown) and} (not f_DocIsDone) then
 begin
  l_Dest:= Destination[RDS];
  if not (SkipNext {or (SkipGroup and SkipSkipable)}) then
  begin
   if l_Dest is TdestNorm then
     if (not TdestNorm(l_Dest).BufferEmpty) and (aKeyword.StringID <> valu_Hex) and (aKeyword.StringID <> valu_u) then
     begin
      { TODO : Перенести на TdestNorm }
       if TdestNorm(l_Dest).TextBuffer.Empty then
         TdestNorm(l_Dest).Unicode2Text;
       WriteText(TdestNorm(l_Dest).TextBuffer);
       //l_Dest.Clear; ????
     end;
     case aKeyword.Kwd of
       kwdFlag: ParseProperty(aKeyword.propType, aKeyword.What, aKeyword.Value);
       kwdDest: ChangeDest(TRDS(aKeyword.Value));
       kwdSymb: ParseSymbol(aKeyword.Value, aKeyword.propType);
       kwdTogg: begin
                  l_Enable:= (not aHasParam) or (aHasParam and (aParam <> 0));
                  ParseProperty(aKeyword.propType, aKeyword.What, Ord(l_Enable));
                end;{kwdTogg}
       kwdValu:
         begin
           if aKeyword.StringID = valu_Hex then
             AddText(AnsiChar(aParam))
           else
           if aKeyword.StringID = valu_u then
           begin
            // напильник
            case aParam of
             8194: AddText(cc_SoftSpace);
             8722: AddText(cc_LargeDash);
            else
             AddText(Word(SmallInt(aParam)));
            end;
            SkipNext:= True;
           end
           else
             ParseProperty(aKeyword.propType, aKeyword.What, aParam);
         end;
     end; { case }
  end
  else
    SkipNext:= False;
 end;
end;

procedure TddRTFReader.Write2Generator;
var
 l_Dest: TdestNorm;
begin
 {$IFNDEF OnePass}
 Generator.StartChild(k2_idDocument);
 try
   { Неплохо было бы вылить какие-нибудь параметры документа - размер бумаги,
     информацию и тд. и тп. }
    { TODO : Восстановить (перенести в TdestNorm) }
   if not LiteVersion then
   begin
    Generator.AddIntegerAtom(k2_tiWidth, l3MulDiv(DOP.xaPage, evInchMul, rtfTwip));
    Generator.AddIntegerAtom(k2_tiLeftIndent, l3MulDiv(DOP.xaLeft, evInchMul, rtfTwip));
    Generator.AddIntegerAtom(k2_tiRightIndent, l3MulDiv(DOP.xaRight, evInchMul, rtfTwip));
    // Нужно вылить таблицу стилей?
   end;

 {$ENDIF}

  l_Dest:= TdestNorm(Destination[rdsNorm]);
  if  l_Dest <> nil then
   l_Dest.Write(Generator);

  l_Dest:= TdestNorm(Destination[rdsFootnote]);
  if (l_Dest <> nil) and (l_Dest.Paragraphs.Count > 0) then
   l_Dest.Write(Generator);
 {$IFNDEF OnePass}
 finally
   Generator.Finish;
 end;
 {$ENDIF}
end;

procedure TddRTFReader.WriteText(aText: Tl3String);
var
  l_Dest: TddRTFDestination;
begin
 {$IFDEF Write2Log}
 l3System.Msg2Log('Reader.WriteText: %s', [atext.AsString]);
 {$ENDIF}
  case RDS of
    rdsNorm,
    rdsHeader,
    rdsFooter,
    rdsFootnote,
    rdsListText,
    rdsShpTxt :
      if Destination[RDS] is TdestNorm then
      begin
       { Тут неплохо было бы понять какой буфер нужно скидывать}
       l_Dest:= Destination[RDS];
       if TdestNorm(l_Dest).UnicodeBuffer.Position > 0 then
        TdestNorm(l_Dest).FlushUnicodeBuffer(State)
       else
        TdestNorm(l_Dest).WriteText(aText, State);
      end;
    rdsFontTable :
       TdestFontTable(Destination[rdsFontTable]).CurFont.JoinWith(aText);
    rdsPanose :
       TdestFontTable(Destination[rdsFontTable]).CurFont.Panose.JoinWith(aText);
    rdsFalt :
       TdestFontTable(Destination[rdsFontTable]).CurFont.Alternate.JoinWith(aText);
    rdsColorTable :
       Destination[RDS].WriteText(aText, State);
    rdsStyleSheet:
       TdestStyleSheet(Destination[rdsStyleSheet]).WriteText(aText, State);
    rdsInfo :
      begin

      end; {  rdsInfo}
    rdsTitle   : f_Info.Title.JoinWith(aText);
    rdsAuthor  : f_Info.Author.JoinWith(aText);
    rdsOperator: f_Info.Operator.JoinWith(aText);
    rdsCompany : f_Info.Company.JoinWith(aText);
    rdsPicture :
      begin
       { Перед тем, как добавлять картинку нужно решить в кого ее вставлять}
       Assert(False, 'Добавление картники из необычного места');
       with TdestPicture(Destination[RDS]) do
       begin
        Picture.Picture.Assign(aText);
        Picture.PAP.Assign(PAP);
        if not f_SkipPicture and (Picture.Format > 0) and f_EnablePictures then
         TdestNorm(Destination[rdsNorm]).AddPicture(Picture, State);
        Picture.Clear;
       end;
       f_SkipPicture:= False;
      end;
    rdsFieldInstruction:
       Destination[rds].WriteText(atext, State);
    rdsFieldResult:
       Destination[rds].WriteText(atext, State);
    rdsFormFieldItem:
      Destination[rds].WriteText(atext, State);
    rdsBookmarkStart:
     begin
      // Эту информацию можно использовать для простановки метки или начала блока
     end;
    rdsBookmarkEnd:
     begin
      // Это окончание блока
     end;
  end; { case RDS }
  //FreeAndNil(aText);
end;                     

procedure TddRTFReader.Close_rdsOldParaNumbering(aOldDest,
  aNewDest: TddRTFDestination);
var
 l_Dest     : TdestNorm;
 l_Source   : TdestWord6Number;
 l_TextPara : TddTextParagraph;
begin
 if aNewDest is TdestNorm then
 begin
  l_Source := aOldDest as TdestWord6Number;
  l_Dest := (aNewDest as TdestNorm);
  l_TextPara := l_Dest.LastParagraph;
  if l_TextPara = nil then
   l_TextPara := l_Dest.AddTextPara(False);
  l_TextPara.AddItemText(l_Source.Itemtext);
 end; // if aNewDest is TdestNorm then
 aOldDest.Clear;
end;

end.

