unit ddRTFWriter;

{ $Id: ddRTFWriter.pas,v 1.157 2013/08/26 09:37:34 dinishev Exp $ }
// $Log: ddRTFWriter.pas,v $
// Revision 1.157  2013/08/26 09:37:34  dinishev
// {Requestlink:479402974}
//
// Revision 1.156  2013/07/31 10:09:22  dinishev
// Cleanup.
//
// Revision 1.155  2013/07/19 13:55:41  dinishev
// {Requestlink:466752604}. Теперь текстовый параграф сам умеет проверять и выливать номер.
//
// Revision 1.154  2013/05/14 11:13:19  dinishev
// {Requestlink:453164226}. Потихоньку переносим логику работы с таблицей из TdestNorm - не место ей там в TddTable.
//
// Revision 1.153  2013/05/08 12:33:00  dinishev
// {Requestlink:453164226}
//
// Revision 1.152  2013/05/06 12:37:11  dinishev
// Откатываем костыли и "рефакторинг" - отъехало чтение таблиц.
//
// Revision 1.151  2013/05/06 08:08:55  dinishev
// Убрал еще одно свойство.
//
// Revision 1.150  2013/04/05 12:04:30  lulin
// - портируем.
//
// Revision 1.149  2013/03/12 08:21:38  narry
// Преформатированный текст экспортируется в Word неверным шрифтом (434754425)
//
// Revision 1.148  2013/02/28 07:52:26  narry
// Маркировка списка после экспорта в Word (431376028)
//
// Revision 1.147  2013/02/27 08:34:43  narry
// Проблемы с кодировкой при открытии наших rtf на IPad (430746304)
//
// Revision 1.146  2013/01/24 06:55:32  narry
// Поддержка нумерованных абзацев (пока не работает)
//
// Revision 1.145  2013/01/22 12:19:52  narry
// Рефакторинг RTFReader
//
// Revision 1.144  2012/04/28 11:46:46  narry
// При экспорте в Word картинка оказывается не в таблице (356075817)
//
// Revision 1.143  2012/03/26 11:02:45  narry
// В rtf странно экспортируются рисунки (312445572)
//
// Revision 1.142  2012/03/21 12:37:04  narry
// Изменённый цвет текста некорректно экспортируется в Word (344754072)
//
// Revision 1.141  2011/12/12 13:01:53  narry
// Формулы экспортируются без отступа (235055684)
//
// Revision 1.140  2011/11/18 08:00:57  narry
// Формулы экспортируются без отступа внутри таблицы (235055757)
//
// Revision 1.139  2011/10/21 12:53:57  narry
// Поддержка экспорта в RTF для родительской задачи (294591744)
//
// Revision 1.138  2010/12/03 07:58:08  narry
// K244195832 Ссылки в экспортированном rtf должны вести на сгенерировавший его хост Интранет
//
// Revision 1.137  2010/11/30 14:51:01  lulin
// {RequestLink:238947629}.
//
// Revision 1.136  2010/11/29 08:31:34  lulin
// - откручиваем хитрую трактовку ссылок на параграфы.
//
// Revision 1.135  2010/11/23 10:52:31  narry
// К241013425. Экспортировать все ссылки в Word (ссылки на параграфы)
//
// Revision 1.121.2.10  2010/11/08 10:12:29  narry
// К236720322. Виснет Word если раздел (division) идет сразу после таблицы
//
// Revision 1.121.2.9  2010/11/03 18:06:29  lulin
// {RequestLink:238947629}.
//
// Revision 1.121.2.8  2010/11/01 08:47:31  narry
// K238421582 Экспортировать внешние ссылки в Word
//
// Revision 1.121.2.7  2010/09/21 06:51:28  narry
// k235053891. Терялся стиль текста абзаца
//
// Revision 1.121.2.6  2010/09/20 15:32:51  narry
// k235052883. Неправильно рассчитывались отступы абзаца
//
// Revision 1.130  2010/09/20 15:18:02  narry
// k235052883. Неправильно рассчитывались отступы абзаца
//
// Revision 1.129  2010/09/16 14:06:53  lulin
// {RequestLink:235050903}.
//
// Revision 1.128  2010/09/16 10:52:52  narry
// k235050823. Неправильно выставлялся шрифт формулам
//
// Revision 1.127  2010/09/03 13:06:13  narry
// K234358608
//
// Revision 1.126  2010/09/03 12:59:23  narry
// K228688401
//
// Revision 1.124.2.5  2010/09/03 11:23:36  narry
// - промежуточное обновление
//
// Revision 1.124.2.4  2010/09/03 09:44:05  narry
// - промежуточное обновление
//
// Revision 1.124.2.3  2010/09/03 05:33:59  narry
// - промежуточное обновление
//
// Revision 1.124.2.2  2010/09/02 10:40:05  narry
// - промежуточное обновление
//
// Revision 1.124.2.1  2010/08/30 05:59:13  narry
// - промежуточное обновление
//
// Revision 1.124  2010/08/20 08:51:18  narry
// - обновление
//
// Revision 1.123  2010/07/13 11:38:13  narry
// - К121164205
//
// Revision 1.121  2010/04/12 11:39:20  narry
// - масштаб таблицы
// - размер шрифта для печати
//
// Revision 1.120  2010/04/01 05:11:51  narry
// - масштабирование формул
//
// Revision 1.119  2010/03/26 17:34:56  lulin
// {RequestLink:199591594}.
// - тесты.
//
// Revision 1.118  2010/03/26 15:30:34  lulin
// {RequestLink:199591594}.
//
// Revision 1.117  2010/03/26 14:43:17  narry
// - масштабирование формулы (пока не работает)
//
// Revision 1.116  2010/02/24 18:16:27  lulin
// - избавляемся от ненужного и вредного параметра, доставшегося в наследство от ошибок молодости.
//
// Revision 1.115  2010/02/24 08:30:17  narry
// - терялось оформление сегментов
//
// Revision 1.114  2010/02/18 08:16:10  narry
// - не закрывался сегмент
//
// Revision 1.113  2010/02/16 10:47:25  narry
// - терялся стиль сегмента
//
// Revision 1.112  2010/02/16 06:08:11  narry
// - борьба с пустыми страницами
//
// Revision 1.111  2010/02/10 15:25:02  narry
// - неправильно передавалась подпись
//
// Revision 1.110  2009/04/22 12:03:01  narry
// - сбивались отступы абзаца, примененные напрямую к абзацу
//
// Revision 1.109  2009/04/09 15:08:19  lulin
// [$140280550]. Выкидываем мусор.
//
// Revision 1.108  2009/02/10 09:54:20  demon
// - для текста после буллета писался некорректный шрифт
//
// Revision 1.107  2008/09/26 18:20:37  lulin
// - <K>: 119475523.
//
// Revision 1.106  2008/08/19 14:17:41  narry
// - текст из заголовка попадал в текст документа
//
// Revision 1.105  2008/08/18 13:57:43  narry
// - заполнение и экспорт полей Автор, Организация, Комментарий
//
// Revision 1.104  2008/07/15 20:23:30  lulin
// - при рисовании формулы учитываем выделение.
//
// Revision 1.103  2008/06/26 12:18:11  lulin
// - выливка формул в метафайлы.
// - неправильно выливалось выравнивание формул.
//
// Revision 1.102  2008/06/26 07:59:16  lulin
// - <K>: 95488573.
//
// Revision 1.101  2008/06/20 14:49:11  lulin
// - используем префиксы элементов.
//
// Revision 1.100  2008/05/14 09:35:06  narry
// - повторное удаление параметра "без проверки орфографии"
//
// Revision 1.99  2008/05/12 11:43:40  narry
// - поиски пропавшего сегмента
// - рсширение списка констант
//
// Revision 1.98  2008/04/23 07:17:31  narry
// - в уникодном тексте не проверялась орфография
//
// Revision 1.97  2008/04/22 14:56:27  narry
// - терялся стиль абзаца, если этот стиль символьный
//
// Revision 1.96  2008/04/22 14:10:25  narry
// - проблемы с отрисовкой формул
//
// Revision 1.95  2008/04/17 14:44:44  narry
// - сноски, списки, картинки
//
// Revision 1.94  2008/04/11 16:07:28  narry
// - защита от падения формулы
//
// Revision 1.93  2007/11/12 14:20:52  narry
// - иногда добавлялся лишний пробел в начало абзаца
//
// Revision 1.92  2007/10/30 15:17:27  narry
// - пробой по памяти
//
// Revision 1.91  2007/10/29 12:03:32  narry
// - Обновление
//
// Revision 1.90  2007/10/23 09:46:55  narry
// - оформление съедало формулу
//
// Revision 1.89  2007/10/23 05:53:54  narry
// - поддержка экспорта формул. Пока только в RTF
//
// Revision 1.88  2007/09/28 07:51:03  narry
// - параметры сегмента "съедали" первое слово сегмента
//
// Revision 1.87  2007/09/12 12:57:59  narry
// - CQ 26512 - пользовательский комментарий не переносился в ворд
//
// Revision 1.86  2007/08/21 10:51:49  narry
// - не сбрасывалось оформление абзаца в сегменте
//
// Revision 1.85  2007/06/13 11:27:41  narry
// - неправильно "вычислялось" оформление сегмента со стилем
//
// Revision 1.84  2007/01/30 11:35:58  narry
// - корректная передача оформления в RTF
//
// Revision 1.83  2006/12/29 13:09:25  lulin
// - реализуем интерфейс расширенного списка строк.
//
// Revision 1.82  2006/12/01 15:04:35  narry
// - борьба с Integer overflow
//
// Revision 1.81  2006/11/17 14:07:03  lulin
// - cleanup.
//
// Revision 1.80  2006/11/17 13:36:11  lulin
// - очищаем ссылки при освобождении объектов.
//
// Revision 1.79  2006/09/20 16:55:45  narry
// - масштабирование картинки по размеру страницы
//
// Revision 1.78  2006/09/19 11:33:33  narry
// - поддержка "резиновых" таблиц на уровне RTF
//
// Revision 1.77  2006/09/11 14:49:09  narry
// no message
//
// Revision 1.76  2006/09/07 13:29:33  narry
// - разрыв строки убивал текст
//
// Revision 1.75  2006/09/05 15:52:22  narry
// - фигня с альбомной ориентацией
//
// Revision 1.74  2006/05/07 09:49:08  narry
// - недокоммит
//
// Revision 1.73  2006/04/12 11:00:03  narry
// - новое: обработка "псевдострелок" в моноширинном тексте
//
// Revision 1.72  2006/02/11 11:13:35  narry
// - исправление: неправильно форматировался стиль "Заголовок статьи"
//
// Revision 1.71  2005/12/13 11:42:22  narry
// - ошибка: лишний разрыв страницы
//
// Revision 1.70  2005/12/01 10:31:08  narry
// - ошибка: двойные открывающие кавычки приводили к исчезновению заключенного в них текста
//
// Revision 1.69  2005/10/11 08:57:20  narry
// - исправление: неправильно форматировался абзац
//
// Revision 1.68  2005/09/20 14:14:48  narry
// - исправление: AV при отсутствии в документе таблицы стилей
//
// Revision 1.67  2005/05/27 10:14:37  narry
// - bug fix: некорректный экспорт стилей
//
// Revision 1.66  2005/05/19 13:18:51  lulin
// - remove unit: evFont.
//
// Revision 1.65  2005/05/12 09:59:19  narry
// - bug fix: преобразование несуществующих картинок
//
// Revision 1.64  2005/05/04 13:46:11  fireton
// - профайлинг и оптимизация по скорости
//
// Revision 1.63  2005/05/04 11:00:07  narry
// - bug fix: в некоторых случаях создавался некорректный RTF-файл
//
// Revision 1.62  2005/04/08 13:51:23  narry
// - bug fix: генерация неправильного RTF
//
// Revision 1.61  2004/10/08 14:44:52  narry
// - update: поддержка "резиновой" SBS-таблицы
//
// Revision 1.60  2004/10/01 08:55:56  narry
// - bug fix: двойное преобразование отступа красной строки
//
// Revision 1.59  2004/09/29 14:40:39  fireton
// - bug fix: неправильно вычислялся отступ красной строки (narry)
//
// Revision 1.58  2004/09/21 12:21:05  lulin
// - Release заменил на Cleanup.
//
// Revision 1.57  2004/09/16 14:08:57  narry
// - bug fix: не рисовались рамки у абзацев
//
// Revision 1.56  2004/09/16 10:19:27  narry
// - update: перенос механизма фильтрации внешних ссылок на предка
//
// Revision 1.55  2004/07/06 10:44:35  narry
// - new property: UseExternalLinks - сохранять или нет ссылки на внешние документы
//
// Revision 1.54  2004/05/28 09:13:14  narry
// - bug fix: неправильный пересчет абзацных отступов
//
// Revision 1.53  2004/05/14 17:27:04  law
// - remove unit: evStrGen.
//
// Revision 1.52  2004/05/14 15:17:01  law
// - remove unit: evTypesE.
//
// Revision 1.51  2004/05/12 15:11:38  narry
// - cleanup
//
// Revision 1.50  2004/05/12 15:10:12  narry
// - new: корректная поддержка уникодного текста
//
// Revision 1.49  2004/05/11 14:09:14  narry
// - bug fix: значение k2_tiVisible всегда воспринималось как Integer, хотя  оно может быть и строковое
// - cleanup
//
// Revision 1.48  2004/04/15 14:38:39  narry
// - new property: _OneStep - генерация внешних форматов в один проход
//
// Revision 1.47  2004/04/09 12:17:35  narry
// - new: преобразование форматов картинок, не поддерживаемых MS Word в png
//
// Revision 1.46  2004/04/05 11:15:05  narry
// - update: подчистка артефактов использования предыдущей графической библиотеки
//
// Revision 1.45  2004/03/24 14:45:30  narry
// - bug fix: склеивание символа табуляции и следующего за ним текста
//
// Revision 1.44  2004/03/22 16:10:45  narry
// - bug fix: добавлялся пробел после спецсимволов
//
// Revision 1.43  2004/03/01 08:19:45  narry
// - bug fix: лишнее выставление шрифта стилю "Цветовое выделение" (CQ 00006329, 00006338, 00006340)
//
// Revision 1.42  2004/01/19 14:44:41  narry
// - bug fix: неправильное выставление стилей абзацам подписи
// - update
// - cleanup
//
// Revision 1.41  2004/01/16 13:02:23  narry
// - update: замена -1 на идентификатор стиля ev_saTxtNormalANSI
//
// Revision 1.40  2003/12/29 12:08:00  narry
// - change: для уменьшения путаницы переименованы методы доступа к сегментам по индексу символа
//
// Revision 1.39  2003/12/23 17:01:16  narry
// - update: улучшение алгоритма наследования стилей
// - add: сохранение вертикального выравнивания ячеек таблицы
//
// Revision 1.38  2003/12/17 14:44:16  narry
// - bug fix: не закрывались сегменты, длина которых превышала длину абзаца
//
// Revision 1.37  2003/12/04 16:22:43  narry
// - bug fix: неправильное выравнивание стиля Normal
// - bug fix: избыточное и местами неправильное оформление абзаца и текста
//
// Revision 1.36  2003/11/11 13:54:01  narry
// - bug fix: не сохранялась картинка в RTF
//
// Revision 1.35  2003/11/06 15:15:05  narry
// - bug fix: сохранение картинки в RTF. Реализовано для BMP
//
// Revision 1.34  2003/09/22 15:21:42  narry
// - bug fix: совпадение начала сегмента и ссылки приводило к генерации неправильного rtf
//
// Revision 1.33  2003/09/16 12:04:24  narry
// - bug fix: Index of bounds при преобразовании текста в таблицу
//
// Revision 1.32  2003/08/20 11:14:29  narry
// - bug fix: использование неправильной константы для закрытия закладки приводило к появлению закладок-фантомов
//
// Revision 1.31  2003/08/19 15:05:04  narry
// - new: запись внутренних ссылок на метки
//
// Revision 1.30  2003/08/19 11:45:07  narry
// - new: преобразование меток в закладки
//
// Revision 1.29  2003/04/19 12:30:38  law
// - new file: ddDefine.inc.
//
// Revision 1.28  2003/01/08 11:15:28  narry
// - update
//
// Revision 1.27  2002/07/30 15:58:16  narry
// - new behavior: поддержка Strikeout
//
// Revision 1.26  2002/07/30 15:05:52  narry
// - bug fix: не задавался шрифт и размер шрифта при изменении оформления
//
// Revision 1.25  2002/07/09 12:02:18  law
// - rename unit: evUnits -> l3Units.
//
// Revision 1.24  2002/07/03 09:00:57  narry
// - update, cleanup и new behavior
//
// Revision 1.23.2.1  2002/07/02 14:30:45  narry
// - alpha release
//
// Revision 1.23  2002/04/23 08:01:59  narry
// - update
//
// Revision 1.22  2001/11/28 16:36:12  narry
// - bug fix: "съедание" таблицей разрыва раздела
//
// Revision 1.21  2001/11/22 13:58:43  narry
// - update : начало реализации Групп доступа
//
// Revision 1.20  2001/09/12 14:46:45  narry
// - update
//
// Revision 1.19  2001/08/29 15:36:27  law
// - cleanup: удалены ненужные зависимости от Orpheus и SysTools.
//
// Revision 1.18  2001/05/08 13:31:51  narry
// Update - запись параметров раздел
//
// Revision 1.17  2001/05/08 07:56:32  narry
// Update - не выливаются лишние пустые абзацы в ячейку таблицы
//
// Revision 1.16  2001/04/27 09:24:05  narry
// Bug fix - незакрытие сегменто
//
// Revision 1.15  2001/04/25 07:18:02  narry
// Update - очередная итерация по записи-чтению стилей Эверест в РТФ
//
// Revision 1.14  2001/04/12 12:58:49  narry
// Update - запись-чтение внутренних стилей в ртф
//
// Revision 1.13  2001/01/25 09:08:06  narry
// Fix - wrong page width, lost character format
// Add - write page break
//
// Revision 1.12  2000/12/20 11:56:32  narry
// SBS finally fix
//
// Revision 1.11  2000/12/19 15:06:27  law
// - #13#10 -> cc_EOL.
//
// Revision 1.10  2000/12/19 13:49:24  narry
// no message
//
// Revision 1.9  2000/12/19 13:47:20  narry
// no message
//
// Revision 1.8  2000/12/18 16:19:29  narry
// Partially bug fix
//
// Revision 1.7  2000/12/15 15:29:55  law
// - вставлены директивы Log и Id.
//

{$I ddDefine.inc }
{$DEFINE DontTranslate}
{.$DEFINE ddWriteGarantAttributes} // для выливки атрибутов Гаранта
interface

uses
  l3Types,
  l3Base,

  k2Tags,
  k2TagGen,
  Windows, Graphics,
  ddBase,
  RTFTypes,
  ddRTFProperties,
  ddDocument,
  ddRowProperty,
  ddBreak,
  ddPicture,
  ddCharacterProperty,
  ddParagraphProperty,
  ddTextSegment,
  ddDocumentAtom,
  ddTable,
  ddTableRow,
  ddTextParagraph,

  l3CustomString;

type
  TCustomRTFObjectGenerator = class(TddDocumentGenerator)
  private
    f_Brackets: Integer;
    f_CellHasPara: Boolean;
    f_Host: AnsiString;
    f_NestedLevel: Integer;
    function Bitmap2Hex(aBitmap: TBitmap): AnsiString;
    function Border2RTF(aBorder: TddBorder): AnsiString;
    function Cell2RTF(aCell: TddCellProperty): AnsiString;
    function CHP2RTF(aCHP: TddCharacterProperty; const WithStyle: Boolean =
            True): AnsiString;
    function DIffCHP2RTF(aCHP1, aCHP2: TddCharacterProperty): AnsiString;
    function Formula2RTF(aFormula: TddTextSegment; aCHP: TddCharacterProperty): AnsiString;
    procedure OutText(Text: Tl3CustomString; Unicode: Boolean);
    function PAP2RTF(aPAP: TddParagraphProperty; const WithStyle: Boolean =
            True): AnsiString;
    function Pixels2Twips(aPixels: Integer; aDPI: Integer = 96): Integer;
    function Style2RTF(aStyle: TddStyleEntry): AnsiString;
    function TAP2RTF(aTAP: TddRowProperty): AnsiString;
    procedure TranslateChar(C: AnsiChar; out Res: AnsiString);
    procedure WriteSegmentObject(aSegment: TddTextSegment; aCHP: TddCharacterProperty);
  protected
    procedure Cleanup; override;
    procedure WriteBreak(const aBreak: TddBreak); override;
    procedure WriteColorTable(aDefault: Boolean = False); override;
    procedure WriteDocumentEnd; override;
    procedure WriteDocumentStart; override;
    procedure WriteFontTable(aDefault: Boolean = False); override;
    procedure WriteHeader(aDefault: Boolean = False); override;
    procedure WritePicture(const Picture: TddPicture; aWholePar: Boolean); override;
    procedure WriteStyleTable(aDefault: Boolean = False); override;
    procedure WriteTable(const Table: TddTable); override;
    procedure WriteTableRow(const Row: TddTableRow; const aIsSBS: Boolean = False; const IsFirstRow:
        Boolean = False; const IsNested: Boolean = False); override;
    procedure WriteTextParagraph(const Para: TddTextParagraph); override;
  public
    constructor Create(anOwner: Tk2TagGeneratorOwner = nil); override;
    property Host: AnsiString read f_Host write f_Host;
  end;

  TevRTFObjectGenerator = class(TCustomRTFObjectGenerator)
  end;

implementation

uses
  Classes,
  SysUtils,
  Math,

  l3Interfaces,
  l3InternalInterfaces,
  l3Chars,
  l3Stream,
  l3Const,
  l3Date,
  l3String,
  l3Units, l3UnitsTools,
  l3Memory, l3TempMemoryStream,
  l3BitmapContainer,
  l3MetafileContainer,
  l3Canvas,
  evTypes,
  evdStyles, 
  k2Base,

  imageenio,

  ddRTFConst,
  ddRTFKeywords,
  ddConst,
  {$IFDEF Envision}
  ddPictDetector,
  {$ENDIF}
  ddUtils,

  ExprDraw,
  ExprMake
  , evFont, StrUtils, l3Defaults,

  evdTypes
  , ddTableCell;

const
 subAlias = 'sub_';

{
***************************** TddDocumentGenerator *****************************
}
constructor TCustomRTFObjectGenerator.Create;
begin
 inherited Create(nil);
 f_Host:= '';
end;

function TCustomRTFObjectGenerator.Bitmap2Hex(aBitmap: TBitmap): AnsiString;
var
  l_Bin       : array [0..8 * 1024 - 1] of AnsiChar;
  l_Hex       : array [0..8 * 1024 * 2 - 1] of AnsiChar;
  l_BinStream : TStream;
  l_HexStream : Tl3StringStream;
  Count       : Longint;
  l_S         : Tl3String;
begin
 l_S:= Tl3String.Create;
 try
  l_HexStream := Tl3StringStream.Create(l_S);
  try
   l_BinStream := Tl3TempMemoryStream.Create;
   try
    aBitmap.SaveToStream(l_BinStream);
    l_BinStream.Seek(0, 0);
    l_BinStream.Seek(SizeOf(TBitmapFileHeader), soFromBeginning);

    while true do
    begin
     Count := l_BinStream.Read(l_Bin, SizeOf(l_Bin));
     if (Count = 0) then break;
     BinToHex(l_Bin, l_Hex, Count);
     l_HexStream.Write(l_Hex, Count * 2);
    end;//while true
    Result:= l_S.AsString;
   finally
    l3Free(l_BinStream);
   end;
  finally
   l3Free(l_HexStream);
  end;//try..finally
 finally
  l3Free(l_S);
 end;
end;

// start class TCustomRTFObjectGenerator

function TCustomRTFObjectGenerator.Border2RTF(aBorder: TddBorder): AnsiString;
const
  Alpha: Array[TddBorderParts] of AnsiChar = ('t', 'l', 'b', 'r', 'v', 'h', #0);
var
  i: TddBorderParts;
begin
 Result:= '';
 with aBorder do
 begin
  if IsFramed then
  begin
   Result:= '';
   for i:= Low(TddBorderParts) to High(TddBorderParts) do
   begin
    if Frames[i].FrameType <> btNone then
    begin
     case BorderOwner of
        boPara     : Result:= Result + Format('\brdr%s', [Alpha[i]]);
        boRow      : Result:= Result + Format('\trbrdr%s', [Alpha[i]]);
        boCell     : Result:= Result + Format('\clbrdr%s', [Alpha[i]]);
      end; { case BorderOwner }
      Result:= Result + '\brdrs'; { тип линии. Желательно сделать преобразование }
      Result:= Result + Format('\brdrw%d', [Frames[i].Width]); { толщина линии }
    end; { FrameType <> btNone }
   end; { for i }
  end; { IsFramed }
 end;
end;

function TCustomRTFObjectGenerator.Cell2RTF(aCell: TddCellProperty): AnsiString;
begin
  Result:= '';
  with aCell do
  begin
   Result:= Result + Border2RTF(Border);
   if VMerged then
    Result:= Result + '\clvmrg';

   if VMergeFirst then
     Result := Result + '\clvmgf';
   if PatternBackColor <> propUndefined then
     Result := Result + Format('\clcbpat%d', [PatternBackColor+1]);
   if PatternForeColor <> propUndefined then
     Result := Result + Format('\clcfpat%d', [PatternForeColor+1]);
   case Just of
    cellTop    : Result := Result + '\clvertalt';
    cellCenter : Result := Result + '\clvertalc';
    cellBottom : Result := Result + '\clvertalb';
   end;
   Result:= Result + Format('\cellx%d', [Width]);
  end;
end;

function TCustomRTFObjectGenerator.CHP2RTF(aCHP: TddCharacterProperty; const
        WithStyle: Boolean = True): AnsiString;
begin
 Result:= '';
 if aCHP <> nil then
  with aCHP do
  begin
   if WithStyle then
   begin
    if (Style <> 0) and (Style <> propUndefined) then
     Result:= Format('\%s%d',[TSYM(RTFKeywords.DRbyID[valu_cs]).AsString, ConvertStyleNumber(Style)])
   end;
   if (Language <> langRussian) and (Abs(Language) <> propUndefined) then
    Result:= Result + Format('\%s%d',[TSYM(RTFKeywords.DRbyID[valu_Lang]).AsString, Language]);
   if (Abs(FontNumber) <> propUndefined) and (FontNumber <> 0) then
    Result:= Result + Format('\%s%d',[TSYM(RTFKeywords.DRbyID[valu_f]).AsString, FontNumber]);
   if PrintFontSize <> propUndefined then
    FontSize:= Min(PrintFontSize, FontSize);
   if (Abs(FontSize) <> propUndefined) then
    Result:= Result + Format('\%s%d',[TSYM(RTFKeywords.DRbyID[valu_fs]).AsString, FontSize]);
   if Bold = True then
    Result:= Result +Format('\%s%d',[TSYM(RTFKeywords.DRbyID[togg_b]).AsString, Ord(True)]);
   if Italic = True then
    Result:= Result +Format('\%s%d',[TSYM(RTFKeywords.DRbyID[togg_i]).AsString, Ord(True)]);
   if not (Underline in [utNone, utNotDefined]) then
    Result:= Result +Format('\%s%d',[TSYM(RTFKeywords.DRbyID[togg_ul]).AsString, Ord(True)]);
   if Abs(FColor) <> propUndefined then
    Result:= Result +Format('\%s%d',[TSYM(RTFKeywords.DRbyID[valu_cf]).AsString, FColor]);
   if Abs(BColor) <> propUndefined then
    Result:= Result +Format('\%s%d',[TSYM(RTFKeywords.DRbyID[valu_cb]).AsString, BColor]);
   if Abs(Highlight) <> propUndefined then
    Result:= Result +Format('\%s%d',[TSYM(RTFKeywords.DRbyID[valu_chcbpat]).AsString, Highlight]);
   if not (Pos in [cpNone, cpNotDefined]) then
    case Pos of
     cpSuperScript : Result:= Result +Format('\%s',[TSYM(RTFKeywords.DRbyID[flag_super]).AsString]);
     cpSubScript   : Result:= Result +Format('\%s',[TSYM(RTFKeywords.DRbyID[flag_sub]).AsString]);
    end;
   if Hidden then
    Result:= Result +Format('\%s1',[TSYM(RTFKeywords.DRbyID[togg_v]).AsString]);
   if Strikeout then
    Result:= Result +Format('\%s',[TSYM(RTFKeywords.DRbyID[togg_strike]).AsString]);
   if CharScale <> propUndefined then
    Result:= Result + Format('\%s%d',[TSYM(RTFKeywords.DRbyID[valu_charscalex]).AsString, CharScale]);
   if Result <> '' then
    Result:= Result + ' ';
  end;
end;

procedure TCustomRTFObjectGenerator.OutText(Text: Tl3CustomString; Unicode:
    Boolean);
var
  i, k: Long;
  W: Word;
  St: AnsiString;
  MemUnicode: Tl3String;
  C: AnsiChar;
begin
 if Unicode  then
 begin
  MemUnicode := Tl3String.Create;
  //if NeedFont then
   OutString(Format('{\f%d\uc1 ',[Document.AddFont(def_ANSIDOSFontName, 204)]));
  //else
  // OutString('{\uc1 ');
  MemUnicode.Len := Text.Len * 2;
  MultiByteToWideChar(CP_RussianDOS, 0{mb_Composite}, Text.St, Text.Len, PWideChar(MemUnicode.St), MemUnicode.Len)
 end;

 k := 0;
 for i := 0 to Pred(Text.Len) do
 begin
  if Unicode then
  begin
   try
    WordRec(W).Hi:= Ord(MemUnicode.ch[(i+1)*2-1]);
    WordRec(W).Lo:= Ord(MemUnicode.ch[(i+1)*2-2]);
    case W of
     {cc_TriUp}    30: W:= $25B2;
     {cc_TriDown}  31: W:= $25BC;
     {cc_TriLeft}  17: W:= $25C4;
     {cc_TriRight} 16: W:= $25BA;
    end;
    St:= Format('\u%d\''3F', [W])
   except
    Msg2Log('Ошибка преобразования в Unicode');
   end; // try..except
  end
  else
  begin
   C := Text.Ch[i];
   TranslateChar(C, St);
  end;

  Inc(k, Length(St));
  OutString(St);
  (*
  if (Length(St) > 0) and (St[Length(St)] =' ') or (k>60) then
  begin
   OutEOL;
   k:=0;
  end; // (Length(St) > 0) and (St[Length(St)] =' ') or (k>60)
  *)
 end; //for i
 if Unicode then
 begin
  OutString('}');
  l3Free(MemUnicode);
 end; // Unicode {or (Text.CodePage = CP_CentralEuropeWin)}
end;

function TCustomRTFObjectGenerator.PAP2RTF(aPAP: TddParagraphProperty; const
        WithStyle: Boolean = True): AnsiString;
var
 i: Integer;
begin
 Result:= '';
 if aPAP <> nil then
  with aPAP do
  begin
   if WithStyle then
   begin
    (*
    if ((Style = 0) or (Style = ev_saTxtNormalANSI)) and IsDefault then
    begin
     Result:= '';
     exit;
    end
    else
    *)
    if (Style <> propUndefined) and (Style <> 0) and (Style <> ev_saTxtNormalANSI) then
     Result:= Format('\%s%d', [TSYM(RTFKeywords.DRbyID[valu_s]).AsString, ConvertStyleNumber(Style){Abs(Style)}])
   end;
   if (Abs(xaLeft) <> propUndefined) and (xaLeft <> 0) then
    Result:= Result + Format('\%s%d', [TSYM(RTFKeywords.DRbyID[valu_li]).AsString, xaLeft]);
   if (Abs(xaRight) <> propUndefined) and (xaRight <> 0) then
    Result:= Result + Format('\%s%d', [TSYM(RTFKeywords.DRbyID[valu_ri]).AsString, xaRight]);
   if (Abs(xaFirst) <> propUndefined) and (xaFirst <> 0) then
    Result:= Result + Format('\%s%d', [TSYM(RTFKeywords.DRbyID[valu_fi]).AsString, xaFirst]);
  case JUST of
    justL: Result:= Result + Format('\%s', [TSYM(RTFKeywords.DRbyID[flag_ql]).AsString]);
    justR: Result:= Result + Format('\%s', [TSYM(RTFKeywords.DRbyID[flag_qr]).AsString]);
    justC: Result:= Result + Format('\%s', [TSYM(RTFKeywords.DRbyID[flag_qc]).AsString]);
    justF: Result:= Result + Format('\%s', [TSYM(RTFKeywords.DRbyID[flag_qj]).AsString]);
   //else
   // Result:= Result + Format('\%s', [TSYM(RTFKeywords.DRbyID[flag_qj]).AsString]);
   end;
   if (Param[dd_Hyph] <> propUndefined) and Hyph then
    Result:= Result + Format('\%s%d', [TSYM(RTFKeywords.DRbyID[togg_HyphPar]).AsString, 1]);
  //  if InTable = True then
  //   Result:= Result + Format('\%s', [TSYM(RTFKeywords.DRbyID[flag_intbl]).AsString]);
   if (Abs(Before) <> propUndefined) and (Before <> 0) then
    Result:= Result + Format('\%s%d', [TSYM(RTFKeywords.DRbyID[valu_sb]).AsString, Before]);
   if (Abs(After) <> propUndefined) and (After <> 0) then
    Result:= Result + Format('\%s%d', [TSYM(RTFKeywords.DRbyID[valu_sa]).AsString, After]);
   Result:= Result + Border2RTF(Border);
   for i:= 0 to TabList.Hi do
   begin
    Result:= Result + Format('\%s%d', [TSYM(RTFKeywords.DRbyID[valu_tx]).AsString, Longint(TabList.Items[i])]);
   end;
   if Result <> '' then
    Result:= Result + ' ';
  end;
end;

procedure TCustomRTFObjectGenerator.Cleanup;
begin
  inherited;
end;

function TCustomRTFObjectGenerator.TAP2RTF(aTAP: TddRowProperty): AnsiString;
var
 i: Integer;
 l_Width: Integer;
begin
 with aTAP do
  { Параметры строки таблицы }
  Result:= Format('\%s%d', [TSYM(RTFKeywords.DRbyID[valu_trgaph]).AsString, Gaph])+
           Format('\%s%d', [TSYM(RTFKeywords.DRbyID[valu_trleft]).AsString, Left])+
           Border2RTF(Border)+cc_EOL;
end;

procedure TCustomRTFObjectGenerator.TranslateChar(C: AnsiChar; out Res: AnsiString);
const
 HSymbols = '0123456789abcdef';
var
 Code: Byte absolute C;
begin
  if (C > #128) or ((C < #32) and (C <> #9)) then
  { // not printable and not tab}
  begin
    case C of
      #10 : Res:= Format('\%s ',[TSYM(RTFKeywords.DRbyID[symb_line]).AsString]);
      #145: Res:= Format('\%s ',[TSYM(RTFKeywords.DRbyID[Symb_lquote]).AsString]);
      #146: Res:= Format('\%s ',[TSYM(RTFKeywords.DRbyID[Symb_lquote]).AsString]);
      #132, {                                //„//«}
      #171: Res:= Format('\%s ',[TSYM(RTFKeywords.DRbyID[Symb_ldblquote]).AsString]);
      #147: Res:= Format('\%s ',[TSYM(RTFKeywords.DRbyID[Symb_ldblquote]).AsString]);
      #187, {/ for ruSSian document               //»}
      #148: Res:= Format('\%s',[TSYM(RTFKeywords.DRbyID[Symb_rdblquote]).AsString]);
      #149: Res:= Format('\%s',[TSYM(RTFKeywords.DRbyID[Symb_bullet]).AsString]);
      #150: Res:= Format('\%s',[TSYM(RTFKeywords.DRbyID[Symb_endaSh]).AsString]);
      #151: Res:= Format('\%s',[TSYM(RTFKeywords.DRbyID[Symb_emdaSh]).AsString]);
      #160: Res:= Format('\%s',[TSYM(RTFKeywords.DRbyID[symb_tilda]).AsString]);{  soft space}
      #1: ;
      #2: ;
    else
      {$IFDEF DontTranslate}
      Res:= C;
      {$ELSE}
      // быстрое преобразование числа в hex
      // раньше здесь было узкое место
      SetLength(Res, 4);
      Res[1] := '\';
      Res[2] := '''';
      Res[3] := HSymbols[((Code and $F0) shr 4) + 1];
      Res[4] := HSymbols[(Code and $0F) + 1];
      {$ENDIF}
    end; { case }
  end
  else
  begin
    case C of
      #9 : Res:= Format('\%s ', [TSym(rtfKeywords.DRbyID[symb_tab]).AsString]);
      '{': Res:= '\{';
      '}': Res:= '\}';
      '\': Res:= '\\';
      else
      begin
       SetLength(Res, 1);
       Res[1] := C;
      end;
    end;
  end;
end;

procedure TCustomRTFObjectGenerator.WriteBreak(const aBreak: TddBreak);
begin
  case aBreak.BreakType of
    breakPage: OutString('\page');
    breakColumn: ;
    breakSection:
      begin
        OutString('\sect\sectd');
        // Выливаем параметры раздела
         with aBreak.SEP do
         begin
           if Landscape then
           begin
             OutString(Format('\%s ',[TSYM(RTFKeywords.DRbyID[flag_lndscpsxn]).AsString]));{ альбомная ориентация  }
             OutString(Format('\%s%d',[TSYM(RTFKeywords.DRbyID[valu_pgwsxn]).AsString, yaPage]));  { page width in twips  }
             OutString(Format('\%s%d ',[TSYM(RTFKeywords.DRbyID[valu_pghsxn]).AsString, xaPage])); { page height in twips }
           end
           else
           begin
             OutString(Format('\%s%d',[TSYM(RTFKeywords.DRbyID[valu_pgwsxn]).AsString, xaPage]));  { page width in twips  }
             OutString(Format('\%s%d ',[TSYM(RTFKeywords.DRbyID[valu_pghsxn]).AsString, yaPage])); { page height in twips }
           end;
           OutString(Format('\%s%d ',[TSYM(RTFKeywords.DRbyID[valu_marglsxn]).AsString, xaLeft]));  { left margin in twips }
           OutString(Format('\%s%d ',[TSYM(RTFKeywords.DRbyID[valu_margtsxn]).AsString, yaTop]));   { top margin in twips  }
           OutString(Format('\%s%d ',[TSYM(RTFKeywords.DRbyID[valu_margrsxn]).AsString, xaRight])); { right margin in twips }
           OutString(Format('\%s%d ',[TSYM(RTFKeywords.DRbyID[valu_margbsxn]).AsString, yaBottom]));{ bottom margin in twips }
         end;
      end;
  end;
end;

procedure TCustomRTFObjectGenerator.WriteColorTable(aDefault: Boolean = False);
var
  i: Integer;
begin
  
  OutString('{\colortbl;');
  for i:= 0 to Pred(Document.ColorCount) do
  begin
    with TddColorEntry(Document.ColorTable[i]) do
      OutString(Format('\red%d\green%d\blue%d;',[Red, Green, Blue]));
  end;
  OutString('}');
  
end;

procedure TCustomRTFObjectGenerator.WriteDocumentEnd;
begin
  OutString('}');
end;

procedure TCustomRTFObjectGenerator.WriteDocumentStart;
begin
  OutString('{\rtf1\ansi\ansicpg1251\deff0\deflang1049\deflangfe1049 ');
  f_NestedLevel:= 0;
end;

procedure TCustomRTFObjectGenerator.WriteFontTable(aDefault: Boolean = False);
var
  i: Integer;
  l_F: TddFontEntry;
  l_St: AnsiString;
begin
  {Format('\%s%d',[TSYM(RTFKeywords.DRbyID[valu_paperw]).AsString, xaPage]))}
  OutString('{' + Format('\%s',[TSYM(RTFKeywords.DRbyID[dest_fonttbl]).AsString]));

  for i:= 0 to Pred(Document.FontCount) do
  begin
    l_F := Document.FontTable[i];
    l_St := '{'+Format('\%s%d',[TSYM(RTFKeywords.DRbyID[valu_f]).AsString, l_F.Number]);
    case l_F.Family of
      ffNil   : l_St:= l_St + Format('\%s',[TSYM(RTFKeywords.DRbyID[flag_fnil]).AsString]);
      ffRoman : l_St:= l_St + Format('\%s',[TSYM(RTFKeywords.DRbyID[flag_froman]).AsString]);
      ffSwiss : l_St:= l_St + Format('\%s',[TSYM(RTFKeywords.DRbyID[flag_fswiss]).AsString]);
      ffModern: l_St:= l_St + Format('\%s',[TSYM(RTFKeywords.DRbyID[flag_fmodern]).AsString]);
      ffScript: l_St:= l_St + Format('\%s',[TSYM(RTFKeywords.DRbyID[flag_fscript]).AsString]);
      ffDecor : l_St:= l_St + Format('\%s',[TSYM(RTFKeywords.DRbyID[flag_fdecor]).AsString]);
      ffTech  : l_St:= l_St + Format('\%s',[TSYM(RTFKeywords.DRbyID[flag_ftech]).AsString]);
      ffBidi  : l_St:= l_St + Format('\%s',[TSYM(RTFKeywords.DRbyID[flag_fbidi]).AsString]);
    end;
    if l_F.Charset <> propUndefined then
     l_St:= l_St + Format('\%s%d',[TSYM(RTFKeywords.DRbyID[valu_fcharset]).AsString, l_F.CharSet]);
    l_St:= l_St + ' ' + l_F.AsString + ';}';
    OutString(l_St)
  end;
  OutStringLn('}');
end;

procedure TCustomRTFObjectGenerator.WriteHeader(aDefault: Boolean = False);
procedure _OutInfo(keyword: AnsiString; aInfo: Tl3String);
begin
 if not aInfo.Empty then
 begin
  OutString('{\'+keyword+' ');
  OutText(aInfo, False);
  OutString('}');
 end;
end;

begin
  {$IfNDef nsTest}
  OutString(Format('{\*\generator %s}', [GetProgramVersion]));
  {$EndIf  nsTest}

  with Document.Info do
  begin
   OutString('{\info ');
   _OutInfo('title', Title);
   _OutInfo('subject', Subject);
   _OutInfo('author', Author);
   _OutInfo('manager', Manager);
   _OutInfo('company', Company);
   _OutInfo('operator', Operator);
   _OutInfo('category', Category);
   _OutInfo('keywords', Keywords);
   _OutInfo('comment', Comment);
   _OutInfo('doccomm', Doccomm);
   OutString('}');
  end;

    {Format('\%s ',[RTFKeywords.DRbyID[Symb_rdblquote]]);}
  with Document.DOP do
  begin
   fLandscape:= xaPage > yaPage;

    OutString(Format('\%s%d',[TSYM(RTFKeywords.DRbyID[valu_paperw]).AsString, xaPage{IfThen(fLandscape, yaPage, xaPage)}]));  { page width in twips  }
    OutString(Format('\%s%d ',[TSYM(RTFKeywords.DRbyID[valu_paperh]).AsString, yaPage{IfThen(fLandscape, xaPage, yaPage)}])); { page height in twips }
    OutString(Format('\%s%d ',[TSYM(RTFKeywords.DRbyID[valu_margl]).AsString, xaLeft]));  { left margin in twips }
    OutString(Format('\%s%d ',[TSYM(RTFKeywords.DRbyID[valu_margt]).AsString, yaTop]));   { top margin in twips  }
    OutString(Format('\%s%d ',[TSYM(RTFKeywords.DRbyID[valu_margr]).AsString, xaRight])); { right margin in twips }
    OutString(Format('\%s%d ',[TSYM(RTFKeywords.DRbyID[valu_margb]).AsString, yaBottom]));{ bottom margin in twips }
    if fLandscape then
    OutString(Format('\%s ',[TSYM(RTFKeywords.DRbyID[flag_landscape]).AsString])); { landscape or portrait??        }
  (*    xGutter    : Integer;  { ширина поля подшивки }
      pgnStart   : Integer;  { starting page number in twips }
      fFacingp   : TRTFBool; { facing pages enabled?          }
      FurstSpec  : TRTFBool; { первая страница имеет спецформат }
      CharSet    : TrtfCharacterSet;
      CodePage   : Integer;
      DefLang    : Integer;
      DefFont    : Integer;
      DefTab     : Integer;
  *)
  end;
end;

function TCustomRTFObjectGenerator.DIffCHP2RTF(aCHP1, aCHP2: TddCharacterProperty): AnsiString;
begin
 Result:= '';
 if (aCHP1 <> nil) and (aCHP2 <> nil) then
  with aCHP1 do
  begin
   if (Language <> langRussian) and (Language <> propUndefined) then
    Result:= Result + Format('\%s%d',[TSYM(RTFKeywords.DRbyID[valu_Lang]).AsString, Language]);
   if (FontNumber <> propUndefined) and (FontNumber <> 0) then
    Result:= Result + Format('\%s%d',[TSYM(RTFKeywords.DRbyID[valu_f]).AsString, FontNumber]);
   if (FontSize <> propUndefined) then
    Result:= Result + Format('\%s%d',[TSYM(RTFKeywords.DRbyID[valu_fs]).AsString, FontSize]);
   if Bold = True then
    Result:= Result +Format('\%s%d',[TSYM(RTFKeywords.DRbyID[togg_b]).AsString, Ord(True)])
   else
    if aCHP2.Bold then
     Result:= Result +Format('\%s%d',[TSYM(RTFKeywords.DRbyID[togg_b]).AsString, Ord(False)]);
   if Italic = True then
    Result:= Result +Format('\%s%d',[TSYM(RTFKeywords.DRbyID[togg_i]).AsString, Ord(True)])
   else
    if aCHP2.Italic then
     Result:= Result +Format('\%s%d',[TSYM(RTFKeywords.DRbyID[togg_i]).AsString, Ord(False)]);
   if not (Underline in [utNone, utNotDefined]) then
    Result:= Result +Format('\%s%d',[TSYM(RTFKeywords.DRbyID[togg_ul]).AsString, Ord(True)])
   else
    if not (aCHP2.Underline in [utNone, utNotDefined]) then
     Result:= Result +Format('\%s%d',[TSYM(RTFKeywords.DRbyID[togg_ul]).AsString, Ord(False)]);
   if FColor <> propUndefined then
    Result:= Result +Format('\%s%d',[TSYM(RTFKeywords.DRbyID[valu_cf]).AsString, FColor]);
   if BColor <> propUndefined then
    Result:= Result +Format('\%s%d',[TSYM(RTFKeywords.DRbyID[valu_cb]).AsString, BColor]);
   if Highlight <> propUndefined then
    Result:= Result +Format('\%s%d',[TSYM(RTFKeywords.DRbyID[valu_highlight]).AsString, Highlight]);
   if not (Pos in [cpNone, cpNotDefined]) then
    case Pos of
     cpSuperScript : Result:= Result +Format('\%s',[TSYM(RTFKeywords.DRbyID[flag_super]).AsString]);
     cpSubScript   : Result:= Result +Format('\%s',[TSYM(RTFKeywords.DRbyID[flag_sub]).AsString]);
    end;
   if Hidden then
    Result:= Result +Format('\%s1',[TSYM(RTFKeywords.DRbyID[togg_v]).AsString]);
   if Strikeout then
    Result:= Result +Format('\%s',[TSYM(RTFKeywords.DRbyID[togg_strike]).AsString]);
  end;
  if Result <> '' then
   Result:= Result + ' ';
end;

{$IfNDef nsTest}
 {$Define UseMetafile}
{$EndIf  nsTest} 
type
  _B_ = {$IfDef UseMetafile}
        Tl3MetafileContainer
        {$Else  UseMetafile}
        Tl3BitmapContainer
        {$EndIf UseMetafile}
        ;

function TCustomRTFObjectGenerator.Formula2RTF(aFormula: TddTextSegment; aCHP:
    TddCharacterProperty): AnsiString;
var
 l_Bitmap  : _B_;
 l_Expr    : Tl3expr;
 l_Picture : TddPicture;
 l_F       : TevFont;
begin
 Result := '';
 if not TddTextParagraph(aFormula.Data).Text.Empty then
 try
  l_Expr:= SafeBuildExpr(TddTextParagraph(aFormula.Data).Text.AsString);
  try
   l_Bitmap:= _B_.Create;
   try
    l_F:= TevFont.Create;
    try
     l_F.Name := l_Expr.Font.Name;
     if Abs(aCHP.FontSize) <> propUndefined then
      l_F.Size := aCHP.FontSize div 2;             
     l_Bitmap.SetParams(l_Expr As Il3Renderer, l_F);
    finally
     FreeAndNil(l_F);
    end;
    l_Picture:= TddPicture.Create(nil, nil);
    try
     l_Bitmap.Bitmap.SaveToStream(l_Picture.Stream);
     l_Picture.Width := l_Bitmap.Width;
     l_Picture.Height := l_Bitmap.Height;
     //l_Picture.PAP.Assign((aFormula.Data As TddTextParagraph).PAP);
     WritePicture(l_Picture, False);
    finally
     l3Free(l_Picture);
    end;
   finally
    l3Free(l_Bitmap);
   end;
  finally
   l3Free(l_Expr);
  end;
 except
  Result:= '';
 end;
end;

function TCustomRTFObjectGenerator.Pixels2Twips(aPixels: Integer; aDPI: Integer = 96): Integer;
begin
 Result:= MulDiv(aPixels, l3Inch, aDPI);
end;

function TCustomRTFObjectGenerator.Style2RTF(aStyle: TddStyleEntry): AnsiString;
var
 l_PAP, l_DiffPAP: TddParagraphProperty;
 l_CHP, l_DiffCHP: TddCharacterProperty;
begin
 Result := '';
 l_PAP:= TddParagraphProperty.Create(nil);
 try
  l_CHP:= TddCharacterProperty.Create(nil);
  try
   Document.MakeStyleParent(aStyle.BasedOn{Number}, l_PAP, l_CHP); // Это только предки
   l_DiffPAP:= aStyle.PAP.Clone();
   try
    l_DiffPAP.JoinWith(l_PAP);
    l_DiffCHP:= aStyle.CHP.Clone;
     try
      l_diffCHP.JoinWith(l_CHP);
      Result:= IfThen(aStyle.StyleDef = sdParagraph, PAP2RTF(l_DiffPAP), '') + CHP2RTF(l_DiffCHP);
     finally
      FreeAndNil(l_DiffCHP);
     end;
   finally
    FreeAndNil(l_DiffPAP);
   end;
   //Result:= IfThen(aStyle.StyleDef = sdParagraph, PAP2RTF(l_PAP), '') + CHP2RTF(l_CHP);
  finally
   FreeAndNil(l_CHP);
  end;
 finally
  FreeAndNil(l_PAP);
 end;
end;

procedure TCustomRTFObjectGenerator.WritePicture(const Picture: TddPicture;
    aWholePar: Boolean);
var
  S, PS: ShortString;
  l_Offset: Integer;
  l_Scale : Integer;
  l_W     : Integer;
  l_H     : Integer;
begin
 if f_CellHasPara then
 begin
  f_CellHasPara:= False;
  OutStringLn('\par');
 end; // f_CellHasPara
 if aWholePar and (Table <> nil) then
 begin
  OutString('\pard\plain ');
  OutString(Format('\intbl\itap%d', [f_NestedLevel]));
 end;
  l_H := Picture.Height;
  l_W := Picture.Width;
  l_Offset:= 0;
  case Picture.Format of
    -1 : exit;
    pictBMP  :
     begin
      {$IfNDef Archi}
      with TImageEnIO.Create(nil) do
      try
       LoadFromStream(Picture.Stream);
       Picture.Stream.Seek(0, 0);
       {$IFDEF IEINCLUDEPNG}
       PS:= '\pngblip ';
       SaveToStreamPNG(Picture.Stream);
       {$ELSE}
       PS:= '\wmetafile ';
       SaveToStreamWMF(Picture.Stream);
       {$ENDIF}
      finally
       Free;
      end;
      {$Else   Archi}
      PS:= Format('\dibitmap0\wbmbitspixel%d\wbmplanes1\wbmwidthbytes%d ',
                 [Picture.BPP, (Picture.Width div 8 +1)*8]);
      l_Offset:= SizeOf(BitmapFileHeader)
      {$EndIf  Archi}
     end; // pictBMP
    pictNONE,
    pictWMF  : PS:= '\emfblip ';//'\wmetafile ';
    {$ifdef IEINCLUDEPNG}
    pictPNG  : PS:= '\pngblip ';
    {$ENDIF}
    pictJPG  : PS:= '\jpegblip ';
  else // преобразование форматов, неподдерживаемых MS Word
   begin
    with TImageEnIO.Create(nil) do
    try
     LoadFromStream(Picture.Stream);
     Picture.Stream.Seek(0, 0);
     {$IFDEF IEINCLUDEPNG}
     PS:= '\pngblip ';
     SaveToStreamPNG(Picture.Stream);
     {$ELSE}
     PS:= '\wmetafile ';
     SaveToStreamWMF(Picture.Stream);
     {$ENDIF}
    finally
     Free;
    end;
   end
  end; { Picture.Format }
  if aWholePar then
  begin
   S:= PAP2RTF(Picture.PAP)
  end
  else
   S:= '';
  S:= S  + '{\*\shppict{\pict' + PS;

  if (l_W <= 0) then
   l_W := Pixels2Twips(Picture.Width)//MulDiv(Picture.Width, 72, 96);
  else
   l_W:= Pixels2Twips(l_W);
  if (l_H <= 0) then
   l_H := Pixels2Twips(Picture.Height)//MulDiv(Picture.Height, 72, 96);
  else
   l_H:= Pixels2Twips(l_H);
  if (l_W > 0) and (l_H > 0) then
   S:= Format('%s\picw%d\pich%d ', [S, l_W, l_H]) ;
  if (l_W > Document.PageWidth) or (l_H > Document.PageHeight) then
  begin
   l_Scale := Min(MulDiv(Document.PageWidth, 100, l_W),
                  MulDiv(Document.PageHeight, 100, l_H));
   // Вот это странно - нам УЖЕ присвоили GoalXY
   Picture.GoalX:= (MulDiv(l_W, l_Scale, 100));
   Picture.GoalY:= (MulDiv(l_H, l_Scale, 100));
  end // (l_W > Document.PageWidth) or (l_H <= Document.PageHeight)
  else
  begin
   Picture.GoalX:= l_W;
   Picture.GoalY:= l_H;
  end;
  // Было выключено. Почему?
  if (Picture.GoalX > 0) and (Picture.GoalY > 0) then
   S:= Format('%s\picwgoal%d\pichgoal%d ', [S, Picture.GoalX, Picture.GoalY]);
  if (Picture.ScaleX <> 100) and (Picture.ScaleY <> 100) then
   S:= Format('%s\picscalex%d\picscaley%d ', [S, MulDiv(Picture.ScaleX, 72, 96), MulDiv(Picture.ScaleY, 72, 96)]);
  OutString(S);
  try
   Picture.IsBinary:= False;
   OutString(Picture.Picture.Offset(l_Offset*2));
  finally
   OutString('}}');
  end;
end;

procedure TCustomRTFObjectGenerator.WriteSegmentObject(aSegment: TddTextSegment; aCHP: TddCharacterProperty);
begin
 case aSegment.ObjectType of
  dd_sotFormula:
  begin
   OutString(Formula2RTF(aSegment, aCHP));
  end;//dd_sotFormula
  dd_sotPicture:
  begin
   WritePicture(aSegment.Data as TddPicture, False);
  end;//dd_sotPicture
 end;
end;

procedure TCustomRTFObjectGenerator.WriteStyleTable(aDefault: Boolean = False);
var
  l_St: AnsiString;
  l_Style: TddStyleEntry;
  i, j: Integer;
  MemUnicode: Tl3String;
  W: Word;

  function lp_Style2RTF(aStyle: TddStyleEntry): AnsiString;
  begin
   Result:= '{';
   if aStyle.StyleDef = sdCharacter then
    Result:= Result + '\*';
   Result:= Result + Style2RTF(aStyle) + Format('\%s%d',[TSYM(RTFKeywords.DRbyID[valu_snext]).AsString, 0]);
   if (aStyle.BasedOn <> 0) and (aStyle.BasedOn <> 222) then
    Result:= Result + Format('\%s%d',[TSYM(RTFKeywords.DRbyID[valu_sbasedon]).AsString, ConvertStyleNumber(aStyle.BasedOn)]);
  end; // lp_Style2RTF

  function lp_OutStyleName(aStyle: TddStyleEntry): Boolean;
  begin
   Result:= True;
   OutString(cc_HardSpace);
   if ConvertStyleNumber(aStyle.Number) = 0 then
    OutString('Normal')
   else
   if ConvertStyleNumber(aStyle.Number) in [1..5] then
    OutString(Format('heading %d', [ConvertStyleNumber(aStyle.Number)]))
   else
    Result:= False;
  end; //lp_OutStyleName

begin
 if Document.StyleCount > 0 then
 begin
  { нужно вылить два раза - обычно и в уникоде }
  OutStringLn('');
  OutString('{\upr');
  // Ansi
  OutString('{'+ Format('\%s',[TSYM(RTFKeywords.DRbyID[dest_stylesheet]).AsString]));
  for i:= 0 to Pred(Document.StyleCount) do
  begin
   l_Style:= Document.StyleSheet[i];
   Outstring(lp_Style2RTF(l_Style));
   // Добавляем имя стиля
   if not lp_OutStyleName(l_Style) then
    OutText(l_Style, False);
   OutStringLn(';}');
  end; // for i
  OutStringLn('}'); // StyleSheet

  OutString('{\*\ud\uc0 ');
  OutString('{'+ Format('\%s',[TSYM(RTFKeywords.DRbyID[dest_stylesheet]).AsString]));
  for i:= 0 to Pred(Document.StyleCount) do
  begin
   l_Style:= Document.StyleSheet[i];
   Outstring(lp_Style2RTF(l_Style));
   OutString(cc_HardSpace);
   OutString('{');
   MemUnicode := Tl3String.Create;
   try
    l_St:= '\uc1';
    OutString(l_St);
    MemUnicode.Len := l_Style.Len * 2;
    MultiByteToWideChar({866}Cp_acp, 0{mb_Composite}, l_Style.St, l_Style.Len, PWideChar(MemUnicode.St), MemUnicode.Len);

    if not lp_OutStyleName(l_Style) then
     for j:= 0 to Pred(l_Style.Len) do
     begin
      try
       WordRec(W).Hi:= Ord(MemUnicode.ch[(j+1)*2-1]);
       WordRec(W).Lo:= Ord(MemUnicode.ch[(j+1)*2-2]);
       l_St:= Format('\u%d ?', [W])
      except
       Msg2Log('Ошибка преобразования в Unicode');
      end;
      OutString(l_St);
     end; // for j
   finally
    FreeAndNil(MemUnicode);
   end;
   OutStringLn('};}');
  end; // for i
  OutStringLn('}}'); // \ud\stylesheet
  OutString('}'); // {\upr
 end;
end;

procedure TCustomRTFObjectGenerator.WriteTable(const Table: TddTable);
var
  i: Integer;
begin
 Inc(f_NestedLevel);
 for i:= 0 to pred(Table.RowCount) do
  WriteTableRow(Table.Rows[i], Table.IsSBS, i = 0, Table.Nested);
 Dec(f_NestedLevel);
 OutString('\pard\plain ');
end;

procedure TCustomRTFObjectGenerator.WriteTableRow(const Row: TddTableRow; const aIsSBS: Boolean =
    False; const IsFirstRow: Boolean = False; const IsNested: Boolean = False);
var
  i, j: Integer;
  l_Cell: TddTableCell;
  l_Atom: TddDocumentAtom;
  l_RowProps: AnsiString;
  l_Width: Integer;
begin
  l_RowProps:= '\trowd';
  if Row.TAP.Autofit then
  begin
   l_RowProps:= l_RowProps + '\trautofit1';
   // Нужно подогнать ширину ячеек
   l_Width:= 0;
   for i:= 0 to Pred(Row.CellCount) do
    Inc(l_Width, Row[i].Props.Width);
   if l_Width > 0 then
    for i:= 0 to Pred(Row.CellCount) do
     Row[i].Props.Width:= Row[i].Props.Width * Row.TAP.Width div l_Width;
  end; // aTAP.Autofit

  l_RowProps := l_RowProps + TAP2RTF(Row.TAP);

  for i:= 0 to Pred(Row.CellCount) do
  begin
   if i > 0 then
    Row[i].Props.Width := Row[i].Props.Width + Row[Pred(i)].Props.Width
   else
    Row[i].Props.Width := Row[i].Props.Width + Row.TAP.Left;
   l_RowProps := l_RowProps + Cell2RTF(Row[i].Props);
  end;
  if not IsNested then
   OutString(l_RowProps);

  for i:= 0 to Pred(Row.CellCount) do
  begin
    l_Cell:= Row.Cells[i];
    f_CellHasPara:= False;
    for j:= 0 to l_Cell.Hi do
    begin
     l_Atom:= TddDocumentAtom(l_Cell.Items[j]);
     case l_Atom.AtomType of
      dd_docTextParagraph: WriteTextParagraph(TddTextParagraph(l_Atom));
      dd_docPicture:
       begin
        TddPicture(l_Atom).ScaleX:= Table.Scale;
        TddPicture(l_Atom).ScaleY:= Table.Scale;
        WritePicture(TddPicture(l_Atom), True);
        OutString('\par');
       end;
      dd_docTable:
       begin
        if f_CellHasPara then
         OutString('\par');
        WriteTable(TddTable(l_Atom));
        OutString(l_RowProps);
       end; // dd_docTable
     end; // case
    end; // for j
    OutStringLn(ifThen(IsNested, '\nestcell{\nonesttables\par}', '\cell'));
    f_CellHasPara:= False;
  end; // for i
  if IsNested then
   OutStringLn('{\*\nesttableprops'+l_RowProps+'\nestrow}{\nonesttables\par}')
  else
   OutStringLn(l_RowProps+'\row');
end;

procedure TCustomRTFObjectGenerator.WriteTextParagraph(const Para:
        TddTextParagraph);
var
 l_Str: AnsiString;
  i: Integer;
  S: ShortString;
  W: Word;
  MemUnicode: Tl3String;
  l_CHP: TddCharacterProperty;
  l_PAP: TddParagraphProperty;
  l_SegCount: Integer;
  l_EvdStyle: Integer;
  l_Style: TddStyleEntry;
  l_Seg, TxtSeg: TddTextSegment;

  procedure _CheckSegmentStart(aSeg: TddTextSegment);
  var
   j: Integer;
   l_SegStyle: TddStyleEntry;
   l_SegCHP, l_tmpCHP: TddCharacterProperty;
   l_Format: AnsiString;
   l_DocID : Integer;
   l_SubID : Integer;
   l_TypeID : Integer;
   l_Host  : AnsiString;
  begin
   if (aSeg <> nil) then
   begin
     if aSeg.CHP.Style <> propUndefined then
     begin
      l_Format := '';
      l_SegStyle := Document.StyleTable[aSeg.CHP.Style];
      if l_SegStyle <> nil then
      begin
       l_TmpCHP := TddCharacterProperty(aSeg.CHP.Diff(l_SegStyle.CHP));
       try
        if l_SegStyle.StyleDef = sdCharacter then
         l_Format:= Style2RTF(l_SegStyle) + CHP2RTF(l_TmpCHP)
        else
         l_Format:= CHP2RTF(l_TmpCHP);
       finally
        l3Free(l_TmpCHP);
       end;
      end;
     end
     else //aSeg.Style <> propUndefined
     begin
      l_SegCHP:= TddCharacterProperty(aSeg.CHP.Diff(Para.CHP));
      try
       l_Format := DiffCHP2RTF(l_SegCHP, Para.CHP);
      finally
       l3Free(l_SegCHP);
      end;
     end;



    if not aSeg.IsHyperlink then
    begin
     OutString('{');
     Inc(l_SegCount);
     OutString(l_Format);
//     Inc(l_SegCount);
    end//not aSeg.IsHyperlink
    else
    begin
     l_Format:= Trim(l_Format);
     if not aSeg.URL.Empty then
     begin
      OutString(Format('{\field{\*\fldinst {HYPERLINK "%s"}}{\fldrslt {%s ',
                        [aSeg.URL.AsString, l_Format]));
      Inc(l_SegCount, 3);
     end
     else
     if aSeg.TargetList.Count = 1 then // мультиссылки не нужны
     begin
      with TddHyperlinkTarget(aSeg.TargetList.first) do
      begin
       l_DocID := DocID;
       l_SubID := SubID;
       l_TypeID := TypeID;
      end;//with TddHyperlinkTarget(aSeg.TargetList.Items[j])
      if ((l_DocID = ExtNumber) or
          (l_DocID = 0)) AND
         (l_TypeID <> CI_REF) then
      begin
       // внутренняя ссылка
       OutString(Format('{\field{\*\fldinst {HYPERLINK \\l "%s%d"}}{\fldrslt {%s ',
                        [SubAlias, l_SubID,
                         l_Format]));
       Inc(l_SegCount, 3);
      end//l_DocID = ExtNumber..
      else
      if UseExternalLinks then
      begin
       // внешняя ссылка             garantF1://
       Inc(l_SegCount, 3);
       if Host <> '' then
        OutString(Format('{\field{\*\fldinst {HYPERLINK "%s/document?id=%d&sub=%d"}}{\fldrslt {%s ',
                        [Host,
                         l_DocID-100000,
                         l_SubID,
                         l_Format]))

       else
        OutString(Format('{\field{\*\fldinst {HYPERLINK "garantF1://%d.%d"}}{\fldrslt {%s ',
                        [l_DocID-100000,
                         l_SubID,
                         l_Format]));
      end;//UseExternalLinks
     end;// for j
    end;//not aSeg.IsHyperlink
   end;//aSeg <> nil
  end;//_CheckSegmentStart

  procedure _CheckSegmentFinish(aSeg: TddTextSegment);
  var
   l_DocID : Integer;
   l_SubID : Integer;
  begin
   if (aSeg <> nil) and (l_SegCount > 0){ and (l_Seg. SegmentType <> dd_segObject)} then
   begin
    if aSeg.IsHyperlink then
    begin
     if not aSeg.URL.Empty then
      begin
       OutString('}}}');
       Dec(l_segCount, 3);
      end//not aSeg.URL.Empty
     else
     if aSeg.TargetList.Count = 1 then
     begin
      with TddHyperlinkTarget(aSeg.TargetList.First) do
      begin
       l_DocID := DocID;
       l_SubID := SubID;
      end;//with TddHyperlinkTarget(aSeg.TargetList.Items[j])
      if (l_DocID = ExtNumber) or
         (l_DocID = 0) then
      begin
       OutString('}}}');
       Dec(l_segCount, 3);
      end
      else
      if UseExternalLinks then
      begin
       OutString('}}}');
       Dec(l_segCount, 3);
      end;
     end;// for j
    end//aSeg.IsHyperlink
    else
    begin
     OutString('}');
     Dec(l_segCount);
    end;//aSeg.IsHyperlink
   end;//aSeg <> nil..
  end;//_CheckSegmentFinish
var
 l_paraFormat: AnsiString;
 l_StylePAP: TddParagraphProperty;
 l_StyleCHP: TddCharacterProperty;
begin // WriteTextParagraph
  with Filer do
  begin
   if f_CellHasPara then
   begin
     f_CellHasPara:= False;
     OutStringLn('\par');
   end;
    // Открываем закладки
   for i:= 0 to Para.SubList.Hi do
    OutString(Format('{\*\bkmkstart %s%d}', [SubAlias, TddSub(Para.SubList.Items[i]).ID]));
   // Собственно абзац
   l_ParaFormat:= '\pard\plain ';
   if Para.PAP.InTable then
    l_ParaFormat:= l_ParaFormat + (Format('\intbl\itap%d', [f_NestedLevel]));
   if Para.PAP.Bullet <> propUndefined then
    l_ParaFormat:= l_ParaFormat + (Format('{\f%d\fs20\''B7}\tab', [Document.AddFont('Symbol', 2)]));
   l_ParaFormat:= l_ParaFormat + (Border2RTF(Para.PAP.Border));

   if Para.PAP.Style <> propUndefined then
   begin
    l_Style := Document.StyleTable[Para.PAP.Style];
    if l_Style <> nil then
     l_ParaFormat:= l_ParaFormat + (Style2RTF(l_Style));
   end;
   if not Para.PAP.IsDefault then
   try
    if l_Style <> nil then
    begin
     l_StylePAP:= TddParagraphProperty.Create(nil);
     try
      l_StyleCHP:= TddCharacterProperty.Create(nil);
      try
       Document.MakeStyleParent(Para.PAP.Style, l_StylePAP, l_StyleCHP);
       l_PAP := TddParagraphProperty(Para.PAP.Diff(l_StylePAP));
       if l_PAP <> nil then
        l_ParaFormat:= l_ParaFormat + (PAP2RTF(l_PAP, False));
      finally
       FreeAndNil(l_StyleCHP);
      end;
     finally
      FreeAndNil(l_StylePAP);
     end;
    end
    else
     l_ParaFormat:= l_ParaFormat + (PAP2RTF(Para.PAP, False));
   finally
    FreeAndNil(l_PAP);
   end;
   OutString(l_ParaFormat);
   if Para.CHP.Style <> propUndefined then
   begin
    l_Style := Document.StyleTable[Para.CHP.Style];
    if l_Style <> nil then
    begin
     if Para.PAP.Style = propUndefined then
      OutString(Style2RTF(Document.StyleTable[ev_saTxtNormalANSI]));
     OutString(Style2RTF(l_Style));
    end;
   end;

   if not Para.CHP.IsDefault then
   begin
    if l_Style <> nil then
    begin
     l_CHP := TddCharacterProperty(l_Style.CHP.Diff(Para.CHP));
     try
      if l_CHP <> nil then
       OutString(CHP2RTF(l_CHP, False));
     finally
      l3Free(l_CHP);
     end;
    end
    else
     OutString(CHP2RTF(Para.CHP, False));
   end;

   l_SegCount:= 0;
   if Para.HaveSegments or Para.HaveHyperlinks then
   begin
     MemUnicode := Tl3String.Create;
     try
      if Para.Unicode then
      begin
       S:= Format('{\f%d\uc1 ',[Document.AddFont(def_ANSIDOSFontName, 204)]);
       Inc(l_SegCount);
       OutString(S);
       MemUnicode.Len := Para.Text.Len * 2;
       MultiByteToWideChar(CP_RussianDOS, 0, Para.Text.St, Para.Text.Len, PWideChar(MemUnicode.St), MemUnicode.Len);
      end;

      for i:= 0 to Pred(Para.Text.Len) do
      begin
        l_Seg:= Para.SegmentByCharIndex(i);
        while l_Seg <> nil do
        begin
         _CheckSegmentStart(l_Seg);
         l_Seg:= Para.SegmentByCharIndex(i, False, l_seg.Index);
        end;

        _CheckSegmentStart(Para.HyperlinkByCharIndex(i));

        l_Seg:= Para.ObjectByCharIndex(i);
        if l_Seg <> nil then
        begin
         if l_SegCount > 0 then
         begin
          l_CHP := TddCharacterProperty.Create(nil);
          try
           if l_Style <> nil then
            l_CHP.MergeWith(l_Style.CHP)
           else
            l_CHP.MergeWith(Para.CHP);
           l_CHP.MergeWith(Para.PrevCHP(l_Seg));
           if (l_Seg.Data Is TddPicture) then
            TddPicture(l_Seg.Data).PAP.Assign(Para.PAP)
           else
            (l_Seg.Data As TddTextParagraph).PAP.Assign(Para.PAP);
           WriteSegmentObject(l_Seg, l_CHP);
          finally
           l3Free(l_CHP);
          end;
         end
         else
         begin
          l_CHP := l_Seg.CHP.Clone;
          try
           if l_Style <> nil then
            l_CHP.MergeWith(l_Style.CHP)
           else
            l_CHP.MergeWith(Para.CHP);
            WriteSegmentObject(l_Seg, l_CHP);
          finally
           l3Free(l_CHP);
          end
         end
        end
        else // Нет объекта
        begin
         if Para.Unicode then
         begin
           try
            WordRec(W).Hi:= Ord(MemUnicode.ch[(i+1)*2-1]);
            WordRec(W).Lo:= Ord(MemUnicode.ch[(i+1)*2-2]);
            case W of
             {cc_TriUp}    30: W:= $25B2;
             {cc_TriDown}  31: W:= $25BC;
             {cc_TriLeft}  17: W:= $25C4;
             {cc_TriRight} 16: W:= $25BA;
            end;
            OutString(Format('\u%d\''3F', [W]));
           except
             Msg2Log('Ошибка преобразования в Unicode');
           end;
         end
         else
         begin
          TranslateChar(Para.Text.Ch[i], l_Str);
          OutString(l_Str);
         end;
        end;
        _CheckSegmentFinish(Para.HyperlinkByCharIndex(i, True));
        l_Seg:= Para.SegmentByCharIndex(i, True);
        while l_Seg <> nil do
        begin
         _CheckSegmentFinish(l_Seg);
         l_Seg:= Para.SegmentByCharIndex(i, True, l_seg.Index);
        end;

      end; { for i }

      if Para.Unicode then
      begin
       OutString('}');
       Dec(l_SegCount);
      end; // Para.Unicode
     finally
      l3Free(MemUnicode);
     end;
   end
   else
    OutText(Para.Text, Para.Unicode);

   if Para.PAP.Intable then
   begin
     f_CellHasPara:= True;
   end
   else
     OutStringLn('\par');
    // Закрываем закладки
   for i:= Para.SubList.Hi downto 0 do
    OutString(Format('{\*\bkmkend %s%d}', [SubAlias, TddSub(Para.SubList.Items[i]).ID]));
  end;
end;

end.
