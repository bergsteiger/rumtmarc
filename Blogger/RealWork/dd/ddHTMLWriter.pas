//..........................................................................................................................................................................................................................................................
unit ddHTMLWriter;
{* Конвертация формата Эверест в HTML }


//$Id: ddHTMLWriter.pas,v 1.97 2013/08/28 07:55:21 dinishev Exp $

// $Log: ddHTMLWriter.pas,v $
// Revision 1.97  2013/08/28 07:55:21  dinishev
// {Requestlink:479944898}
//
// Revision 1.96  2013/08/26 09:37:34  dinishev
// {Requestlink:479402974}
//
// Revision 1.95  2013/08/15 11:16:37  dinishev
// {Requestlink:476808666}
//
// Revision 1.94  2013/07/19 13:55:41  dinishev
// {Requestlink:466752604}. Теперь текстовый параграф сам умеет проверять и выливать номер.
//
// Revision 1.93  2013/05/14 11:13:19  dinishev
// {Requestlink:453164226}. Потихоньку переносим логику работы с таблицей из TdestNorm - не место ей там в TddTable.
//
// Revision 1.92  2013/04/11 16:46:27  lulin
// - отлаживаем под XE3.
//
// Revision 1.91  2013/03/04 13:03:14  narry
// Уменьшается шрифт текста при экспорте в HTML (429695536)
//
// Revision 1.90  2013/03/01 08:11:25  narry
// Уменьшается шрифт текста при экспорте в HTML (429695536)
//
// Revision 1.89  2013/01/24 06:55:32  narry
// Поддержка нумерованных абзацев (пока не работает)
//
// Revision 1.88  2013/01/22 12:33:38  narry
// Рефакторинг RTFReader
//
// Revision 1.86  2012/10/23 12:55:00  narry
// Теряются картинки, встроенные в параграф, при сохранении в файл (397290823)
//
// Revision 1.85  2012/02/09 09:01:17  narry
// Не сохраняется размер шрифта заголовков при экспорте в HTML (251339809)
//
// Revision 1.84  2012/01/19 10:30:49  narry
// Неправильно формируются отступы при сохранении в htm-файл (244711455)
//
// Revision 1.83  2011/11/18 08:00:57  narry
// Формулы экспортируются без отступа внутри таблицы (235055757)
//
// Revision 1.82  2010/12/21 12:07:06  lulin
// {RequestLink:245208822}.
//
// Revision 1.81  2010/12/16 11:18:07  narry
// 245208822. Экспортируются нерабочие ссылки в htm-файл
//
// Revision 1.80  2010/12/16 10:23:26  narry
// 245208822. Экспортируются нерабочие ссылки в htm-файл
//
// Revision 1.79  2010/09/13 08:18:47  narry
// K235046999. AV
//
// Revision 1.78  2010/07/13 11:52:46  narry
// - К121164205
//
// Revision 1.77  2010/07/13 11:38:13  narry
// - К121164205
//
// Revision 1.75  2010/03/15 18:08:41  lulin
// {RequestLink:196969151}.
//
// Revision 1.74  2010/03/15 16:17:06  lulin
// {RequestLink:196969151}.                                                        e
//
// Revision 1.73  2010/02/24 11:16:55  lulin
// {RequestLink:192643281}.
//
// Revision 1.72  2010/02/18 08:16:10  narry
// - не закрывался сегмент
//
// Revision 1.71  2009/04/09 15:08:18  lulin
// [$140280550]. Выкидываем мусор.
//
// Revision 1.70  2009/03/04 13:33:06  lulin
// - <K>: 137470629. Генерируем идентификаторы типов с модели и убираем их из общей помойки.
//
// Revision 1.69  2009/02/17 12:53:21  narry
// - толстая линия, отделяющая документ от справки
//
// Revision 1.68  2008/08/19 12:00:07  narry
// - Терялось оформление текста
//
// Revision 1.67  2008/06/20 14:49:11  lulin
// - используем префиксы элементов.
//
// Revision 1.66  2008/03/21 14:09:21  lulin
// - cleanup.
//
// Revision 1.65  2008/03/20 09:48:29  lulin
// - cleanup.
//
// Revision 1.64  2008/02/14 09:40:33  lulin
// - удалён ненужный класс.
//
// Revision 1.63  2008/02/13 20:20:06  lulin
// - <TDN>: 73.
//
// Revision 1.62  2008/02/07 19:13:09  lulin
// - избавляемся от излишне универсальных методов базовых списков.
//
// Revision 1.61  2008/02/07 14:44:37  lulin
// - класс _Tl3LongintList переехал в собственный модуль.
//
// Revision 1.60  2008/02/06 15:37:00  lulin
// - каждому базовому объекту по собственному модулю.
//
// Revision 1.59  2008/02/05 09:57:59  lulin
// - выделяем базовые объекты в отдельные файлы и переносим их на модель.
//
// Revision 1.58  2008/02/01 15:14:44  lulin
// - избавляемся от излишней универсальности списков.
//
// Revision 1.57  2007/10/23 05:52:38  narry
// - исправление ошибки получения номера цвета
//
// Revision 1.56  2007/08/21 12:43:29  lulin
// - избавляемся от предупреждений компилятора.
//
// Revision 1.55  2007/08/09 18:05:21  lulin
// - избавляемся от излишнего использования интерфейсов, т.к. переносимость может быть достигнута другими методами.
//
// Revision 1.54  2007/02/12 16:40:34  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.53  2007/01/29 11:37:49  narry
// - чистка мусора от "продолжения ссылки"
//
// Revision 1.52  2007/01/19 14:35:22  oman
// - new: Локализация библиотек - dd (cq24078)
//
// Revision 1.51  2006/11/27 15:57:10  narry
// - экспорт в XML для nalog.ru
//
// Revision 1.50  2006/11/17 14:15:13  lulin
// - cleanup.
//
// Revision 1.49  2006/11/17 14:07:03  lulin
// - cleanup.
//
// Revision 1.48  2006/11/17 13:36:11  lulin
// - очищаем ссылки при освобождении объектов.
//
// Revision 1.47  2006/10/11 12:54:18  narry
// - исправление полей и отступов
//
// Revision 1.46  2006/09/04 13:49:28  narry
// - коррекция отступов абзаца
//
// Revision 1.45  2006/07/28 12:30:00  narry
// - коррекция стиля первого заголовка
//
// Revision 1.44  2006/07/20 06:24:15  narry
// - пустые абзацы оформляются как pre
//
// Revision 1.43  2006/07/20 06:12:42  narry
// - обновление
//
// Revision 1.42  2006/07/18 14:08:42  narry
// - исправление: не закрывались ссылки в оглавлении
//
// Revision 1.41  2006/05/06 13:37:09  narry
// - заточки под Прайм, починка таблиц
//
// Revision 1.40  2006/04/25 12:47:47  lulin
// - cleanup.
//
// Revision 1.39  2006/04/12 10:59:08  narry
// - изменение: формирование более корректного оформления для абазца по умолчанию
//
// Revision 1.38  2006/02/26 11:04:49  narry
// - исправление: неуместно создавался элемент списка
//
// Revision 1.37  2006/02/22 08:58:11  narry
// - исправление: ошибки экспорта списков
//
// Revision 1.36  2006/02/13 14:12:46  narry
// - обновление: корректный эспорт списков
//
// Revision 1.35  2006/02/11 11:12:33  narry
// - исправление: неправильно форматировался стиль "Заголовок статьи"
//
// Revision 1.34  2006/02/10 10:08:07  narry
// - исправление: абзацы по умоланию имели отступ красной строки
//
// Revision 1.33  2006/02/09 14:18:03  narry
// - исправление: корректная выливка символов <>
//
// Revision 1.32  2005/12/09 15:28:50  narry
// - ошибка: неправильное оформление центрированных абзацев
//
// Revision 1.31  2005/12/01 11:43:30  narry
// - исправление: перерассчет выравнивания и отступов абзаца
//
// Revision 1.30  2005/10/03 14:05:43  narry
// - исправление: генерация имени файла картинки не включает путь к файлу
//
// Revision 1.29  2005/07/14 15:49:10  narry
// - new property: NeedStyleSheet
//
// Revision 1.28  2005/02/16 17:10:41  narry
// - update: Delphi 2005
//
// Revision 1.27  2004/10/19 12:06:44  narry
// - update: поддержка перечеркнутого текста
//
// Revision 1.26  2004/10/12 10:51:29  narry
// - bug fix: неполная таблица стилей приводила к исчезновению оформления
//
// Revision 1.25  2004/10/08 14:44:52  narry
// - update: поддержка "резиновой" SBS-таблицы
//
// Revision 1.24  2004/09/24 13:29:06  narry
// - update: горизонтальные линии до или после абзаца
//
// Revision 1.23  2004/09/21 15:19:10  fireton
// - bug fix: лишний раз прописывался шрифт в стиль
//
// Revision 1.22  2004/09/21 12:21:04  lulin
// - Release заменил на Cleanup.
//
// Revision 1.21  2004/09/16 12:22:09  narry
// - bug fix: "разъезжание" оформления
// - bug fix: неровная правая граница таблицы из псевдографики
//
// Revision 1.20  2004/09/16 10:19:27  narry
// - update: перенос механизма фильтрации внешних ссылок на предка
//
// Revision 1.19  2004/06/01 16:51:23  law
// - удален конструктор Tl3VList.MakePersistent - пользуйтесь _Tl3ObjectRefList.
//
// Revision 1.18  2004/04/16 13:48:46  narry
// - bug fix: спецсимвол не завершался ';'
//
// Revision 1.17  2004/04/15 14:38:39  narry
// - new property: _OneStep - генерация внешних форматов в один проход
//
// Revision 1.16  2004/04/09 12:18:07  narry
// - new: преобразование форматов картинок, не поддерживаемых HTML в jpg
//
// Revision 1.15  2004/03/19 11:18:04  narry
// - bug fix: AV при преобразовании таблицы
//
// Revision 1.14  2004/01/21 16:13:43  narry
// - bug fix: лишнее подчеркивание, неправильное выравнивание, "мертвые" ссылки
// - update
//
// Revision 1.13  2004/01/16 10:12:06  narry
// - change: вместо добавления ссылки на картинку в документ вставляеься сама картинка
//
// Revision 1.12  2004/01/12 09:23:02  narry
// - bug fix: отсутствие номера документа (0) в ссылке считалось  номером внешнего документа
// - bug fix: неверно формировалось имя файла для множественных ссылок
//
// Revision 1.11  2004/01/09 15:01:31  narry
// - bug fix
//
// Revision 1.10  2003/12/30 11:01:23  narry
// - new: сохранение картинок, вложенных в документ, в отдельные файлы и создание ссылок на них
// - fixed: сегменты, оформленные стилем абзаца, получают оформление стиля, а не ссылку на него
//
// Revision 1.9  2003/12/29 12:07:45  narry
// - change: для уменьшения путаницы переименованы методы доступа к сегментам по индексу символа
//
// Revision 1.8  2003/12/23 17:01:16  narry
// - update: улучшение алгоритма наследования стилей
// - add: сохранение вертикального выравнивания ячеек таблицы
//
// Revision 1.7  2003/11/06 15:16:49  narry
// - new: первый шаг в сторону сохранения "мультиссылок"
//
// Revision 1.6  2003/11/06 11:53:46  narry
// - new: короткое название документа сохраняется как <TITLE>
//
// Revision 1.5  2003/09/16 12:04:24  narry
// - bug fix: Index of bounds при преобразовании текста в таблицу
//
// Revision 1.4  2003/04/19 12:30:37  law
// - new file: ddDefine.inc.
//
// Revision 1.3  2002/07/03 09:00:57  narry
// - update, cleanup и new behavior
//
// Revision 1.2.2.1  2002/06/21 09:28:08  narry
// - not ready
//
// Revision 1.2  2002/06/06 11:10:45  narry
// - update: добавлены флаги $Id и $Log
//

{$Include ddDefine.inc }

interface

Uses
 Classes,
 ddDocument, ddBase, ddRTFProperties,
 l3Base, l3Types,
 k2TagGen,
 l3LongintList,
 l3ObjectRefList
 , l3VCLStrings, ddCharacterProperty, ddParagraphProperty, ddTextParagraph,
 ddTable, ddTableRow, ddDocumentAtom, ddBreak, ddPicture, ddTextSegment;

type
  TddHTMLGenerator = class(TddDocumentGenerator)
  private
    FNeedStyleSheet: Boolean;
    f_DivPreOpened: Boolean;
    f_IsAnno: Boolean;
    f_IsComplexTable: Boolean;
    f_IsEtalonRow: Boolean;
    f_isFirstHeader: Boolean;
    f_IsPrime: Boolean;
    f_Link: AnsiString;
    f_ListLevel: Integer;
    f_MLFileName: AnsiString;
    f_MLNumber: Integer;
    f_MultiLinks: Tl3Strings;
    f_PictureNumber: Integer;
    f_ListIndents: Tl3LongintList;
    procedure AddStyleProperty(PropertyList: Tl3ObjectRefList; const aProperty, aParam,
            aFlag: AnsiString);
    function CHP2HTML(aCHP: TddCHaracterProperty; StopTag: Boolean; const
            aList: Tl3ObjectRefList = nil): AnsiString;
    procedure CloseDivPre;
    procedure CloseList(AllLevels: Boolean);
    function Formula2RTF(aFormula: TddTextSegment; aCHP: TddCharacterProperty):
        AnsiString;
    function InchStr(aInch: Integer): AnsiString;
    procedure IncMLNumber(const aText: Tl3String);
    procedure MakeMLFileName;
    function MakePictureName: AnsiString;
    procedure OpenDivPre;
    procedure OpenList(aLeftIndent: Integer);
    function pm_GetListLeftIndent: Integer;
    function pm_GetListOpened: Boolean;
    procedure pm_SetIsPrime(const Value: Boolean);
    procedure pm_SetListLeftIndent(const Value: Integer);
    function Style2HTML(aStyle: TddStyleEntry; const aList: Tl3ObjectRefList = nil):
            AnsiString;
    procedure WriteMultiLinks;
  protected
    procedure AddTag(TagList: Tl3ObjectRefList; const aTag, aParam: AnsiString);
    procedure Cleanup; override;
    function GetFormat(TagList: Tl3ObjectRefList; StopTag: Boolean): AnsiString;
    function PAP2HTML(aPAP: TddPAragraphProperty; StopTag: Boolean; const aList:
        Tl3ObjectRefList = nil): AnsiString; virtual;
    function StyleName(StyleID: Integer; var IsSpecial: Boolean): AnsiString; virtual;
    procedure Write2Filer;
    procedure WriteBreak(const aBreak: TddBreak); override;
    procedure WriteColorTable(aDefault: Boolean = False); override;
    procedure WriteDocumentBody; override;
    procedure WriteDocumentEnd; override;
    procedure WriteDocumentHeader; override;
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
    constructor Create;
    reintroduce;
    procedure StartChild(TypeID: Long); override;
    property IsPrime: Boolean read f_IsPrime write pm_SetIsPrime;
    property ListLeftIndent: Integer read pm_GetListLeftIndent write
        pm_SetListLeftIndent;
    property NeedStyleSheet: Boolean read FNeedStyleSheet write FNeedStyleSheet;
    property ListOpened: Boolean read pm_GetListOpened;
  end;
  
implementation
Uses
 RTFTypes,
 {$IFDEF Envision}
 ddPictDetector,
 {$ELSE}
 imageenio,
 {$ENDIF}
 l3BitmapContainer,
 l3MetafileContainer,
 SysUtils, Graphics, Math, StrUtils,
 k2Interfaces, k2Tags,
 k2Base,
 l3Chars, l3Stream, l3FileUtils, l3Filer, l3Const,
 l3String,
 evdStyles, k2FileGenerator,

 AnnoTopic_Const,
 Document_Const,

 ddHTMLWriterRes,
 evdTypes, ddTableCell,
 ExprDraw,
 ExprMake
, evFont, l3InternalInterfaces;

type
  THTMLTag = class(Tl3Base)
  private
    Param: AnsiString;
    Tag: AnsiString;
  public
    constructor Create(const aTag, aParam: AnsiString);
    reintroduce;
  end;
  
{
*********************************** THTMLTag ***********************************
}
constructor THTMLTag.Create(const aTag, aParam: AnsiString);
begin
  inherited Create(nil);
  Tag:= aTag;
  Param:= aParam;
end;


{
******************************* TddHTMLGenerator *******************************
}
constructor TddHTMLGenerator.Create;
begin
  inherited Create;
  f_ListIndents := Tl3LongintList.Make;
  f_MultiLinks:= Tl3Strings.Create;
  FNeedStyleSheet := True;
  UseExternalLinks := false;
end;

procedure TddHTMLGenerator.AddStyleProperty(PropertyList: Tl3ObjectRefList; const
        aProperty, aParam, aFlag: AnsiString);
var
  i: Integer;
  Tag: THTMLTag;
begin
  Tag:= nil;
  if aProperty <> '' then
  begin
   for i:= 0 to PropertyList.Hi do
    if UpperCase(THTMLTag(PropertyList.Items[i]).Tag) = UpperCase(aProperty) then
    begin
     Tag:= THTMLTag(PropertyList.Items[i]);
     break;
    end;
    if aFlag = '' then
    begin
     if Tag = nil then
     begin
       Tag:= THTMLTag.Create(aProperty, aParam);
       try
        PropertyList.Add(Tag);
       finally
        l3Free(Tag);
       end;
     end
     else
      Tag.Tag:= aProperty;
    end
    else
    if Tag <> nil then
     PropertyList.Delete(PropertyList.IndexOf(Tag));
  end; // aTag <> ''
end;

procedure TddHTMLGenerator.AddTag(TagList: Tl3ObjectRefList; const aTag, aParam: AnsiString);
var
  i: Integer;
  Tag: THTMLTag;
begin
  Tag:= nil;
  if aTag <> '' then
  begin
   for i:= 0 to TagList.Hi do
    if UpperCase(THTMLTag(TagList.Items[i]).Tag) = UpperCase(aTag) then
    begin
     Tag:= THTMLTag(TagList.Items[i]);
     break;
    end;
    if Tag = nil then
    begin
      Tag:= THTMLTag.Create(aTag, aParam);
      try
       TagList.Add(Tag);
      finally
       l3Free(Tag);
      end;
    end
    else
    if Pos(UpperCase(aParam), UpperCase(THTMLTag(TagList.Items[i]).Param)) = 0 then
    begin
     if Tag.Param <> '' then
      Tag.Param := Tag.Param + ' ';
      Tag.Param:= Tag.Param + aParam;
    end;
  end; // aTag <> ''
end;

function TddHTMLGenerator.CHP2HTML(aCHP: TddCHaracterProperty; StopTag: Boolean;
        const aList: Tl3ObjectRefList = nil): AnsiString;
var
  l_S, l_StyleName: AnsiString;
  l_IsSpecial: Boolean;
  l_List: Tl3ObjectRefList;

  procedure _CHP2HTML(CHP: TddCHaracterProperty);
  begin
   with CHP do
   begin
(*     if FontNumber > propUndefined then
      AddTag(l_List, 'font', 'face="'+ Document.FontTable[FontNumber].AsString +'"');
     if FontSize > propUndefined then
     begin
      case FontSize div 2 of
       0..8  : l_S:= '1';
       9..10 : l_S:= '2';
       11..12: l_S:= '3';
       13..14: l_S:= '4';
       15..16: l_S:= '5';
       17..18: l_S:= '6';
      else
       l_S:= '7';
      end; // case FontSize
      AddTag(l_List, 'font', 'size='+ l_S);
     end; // fontsize > propUndefined*)
     // - этот код никогда не выполняется
     case Pos of
      cpSubScript  : l_S:= 'sub';
      cpSuperScript: l_S:= 'sup';
     else
       l_S:= '';
     end; // Case Pos
     AddTag(l_List, l_s, '');
     if FColor <> propUndefined then
      with Document.ColorTable[Pred(FColor)] do
      AddTag(l_List, 'font', 'color=#'+IntToHex(Red, 2)+IntToHex(Green, 2)+IntToHex(Blue, 2));
     if Bold then
      AddTag(l_List, 'b', '');
     if Italic then
      AddTag(l_List, 'i', '');
     if not (Underline in [utNone, utNotDefined]) then
      AddTag(l_List, 'u', '');
     if Strikeout then
      AddTag(l_List, 'strike', '');
   end; // with CHP
  end;

begin
  Result := '';
  if aList = nil then
   l_List:= Tl3ObjectRefList.Make
  else
   l_List:= aList;
  try
   with aCHP do
   begin
    if Style <> 0 then
    begin
     l_StyleName:= StyleName(Style, l_IsSpecial);
     if not l_IsSpecial and (l_StyleName <> '') then
      AddTag(l_List, 'font', 'class="'+l_StyleName+'"')
     else
     if l_IsSpecial then
      _CHP2HTML(Document.StyleTable[Style].CHP)
    end
    else
     _CHP2HTML(aCHP);
   end; // Style = 0
   Result:= GetFormat(l_List, StopTag);
  finally
   if aList = nil then
    l3Free(l_List);
  end; // try..finally
end;

function TddHTMLGenerator.GetFormat(TagList: Tl3ObjectRefList; StopTag: Boolean): AnsiString;
var
  i: LongInt;
  l_Tag: THTMLTag;
begin
  Result:= '';
  for i:= 0 to TagList.Hi do
  begin
   l_tag:= THTMLTag(TagList.Items[i]);
   if l_Tag.Tag <> '' then
   begin
    if StopTag then
     Result:= '</'+l_Tag.Tag + '>' + Result
    else
    begin
     Result:= Result + '<' + l_Tag.Tag;
     if l_Tag.Param <> '' then
     begin
      if not AnsiEndsStr(' ', Result) then
       Result := Result + ' ';
      Result:= Result + l_Tag.Param
     end; // l_Tag.Param <> ''
    end; // if StopTag
    if not StopTag then
     Result:= Result + '>';
   end; // l_Tag.Tag <> ''
  end; // for i
end;

procedure TddHTMLGenerator.IncMLNumber(const aText: Tl3String);
begin
  Inc(f_MLNumber);
  f_MultiLinks.Add(Format('<a name=%d>%s</A>', [f_MLNumber, aText.AsString]));
end;

procedure TddHTMLGenerator.MakeMLFileName;
begin
  f_MLFileName:= ChangeFileExt(Format('%s\%d-multilinks', [ExtractFileDir(FilerFilename),
                                                          ExtNumber]), '.html');
  f_MLNumber:= 0;
end;

function TddHTMLGenerator.MakePictureName: AnsiString;
begin
  Result:= Format('%s\pict%d-%d.picture', [ExtractFileDir(FilerFilename),
                                          f_PictureNumber, ExtNumber]);
  Inc(f_PictureNumber);
end;

function TddHTMLGenerator.PAP2HTML(aPAP: TddPAragraphProperty; StopTag:
    Boolean; const aList: Tl3ObjectRefList = nil): AnsiString;
var
  l_List: Tl3ObjectRefList;
  l_StyleName: AnsiString;
  l_IsSpecial: Boolean;
  l_Left : Integer;
begin
  Result:= '';
  if aList <> nil then
   l_List:= aList
  else
   l_List:= Tl3ObjectRefList.Make;
  try
   with aPAP do
   begin
    if (Style <> 0) and (Style <> propUndefined) then
    begin
     if IsPrime and (Style = ev_saNormalTable) then
      l_StyleName := ''
     else
      l_StyleName:= StyleName(aPAP.Style, l_IsSpecial);

     if l_StyleName <> '' then
     begin
      if l_IsSpecial then
       AddTag(l_List, Format('%s', [l_StyleName]), '')
      else
      begin
       if (Just = justP) and not IsPrime then
        AddTag(l_List, 'pre', ''{'WIDTH=80'})
       else
       if Bullet = propUndefined then
        AddTag(l_List, 'p', Format('class="%s"', [l_StyleName]))
       else
        AddTag(l_List, 'li', '');
      end;
     end
     else
      AddTag(l_List, 'p', '');
    end //Style <> 0
    else
    begin
     if Bullet = propUndefined then
      AddTag(l_List, 'p', '')
     else
     if (Bullet <> propUndefined) then
     begin
      if StopTag then
       AddTag(l_List, '', '')
      else
       AddTag(l_List, 'li', '');
     end;
     //else
     if not IsPrime then
     begin
      Result := '' ;
      if (xaLeft <> propUndefined) and (xaLeft <> 0) then
       Result:= Result + Format('margin-left : %s', [InchStr(xaLeft)]);
      if (xaRight <> propUndefined) and (xaRight <> 0) then
       Result:= Result + Format('margin-right : %s', [InchStr(xaRight)]);
      { TODO -oДудко Дмитрий -cРазвитие : перерасчет отступа красной строки }
      if xaLeft <> propUndefined then
       l_Left := xaLeft
      else
       l_Left := 0;
      if (xaFirst <> propUndefined){ and (xaFirst <> 0) Зачем эта проверка ?} then
        Result:= Result + Format('text-indent : %s', [InchStr(xaFirst)]);
      case JUST of
       justL: Result:= Result + 'text-align=left;';
       justR: Result:= Result + 'text-align=right;';
       justC: Result:= Result + 'text-align=center;';
       justF: Result:= Result + 'text-align=justify;';
      end; //case JUST
      if (Before <> propUndefined) and (Before <> 0) then
       Result:= Result + Format('margin-top : %s', [InchStr(Before)]);
      if (After <> propUndefined) and (After <> 0) then
       Result:= Result + Format('margin-bottom : %s', [InchStr(After)]);
      if Result <> '' then
       AddTag(l_List, 'p', 'style = "{' + Result + '}"')
      else
       AddTag(l_List, 'p', '');
     end;
    end;
   end; // with aPAP
   Result:= GetFormat(l_List, StopTag);
  finally
   if aList = nil then
    L3Free(l_List);
  end; // try..finally
end;

procedure TddHTMLGenerator.Cleanup;
begin
 FreeAndNil(f_ListIndents);
 FreeAndNil(f_MultiLinks);
 inherited;
end;

procedure TddHTMLGenerator.CloseDivPre;
begin
 if f_DivPreOpened then
 begin
  f_DivPreOpened := False;
  OutStringLn('</pre>');
 end;
end;

procedure TddHTMLGenerator.CloseList(AllLevels: Boolean);
begin
 if ListOpened then
 begin
  Dec(f_ListLevel);
  OutStringLn('</ul>');
  f_ListIndents.Delete(f_ListIndents.Hi);
  if AllLevels then
   while ListOpened do CloseList(False);
 end; // ListOpened
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


function TddHTMLGenerator.Formula2RTF(aFormula: TddTextSegment; aCHP:
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
     l_F.Name:= l_Expr.Font.Name;
     if Abs(aCHP.FontSize) <> propUndefined then
      l_F.Size:= aCHP.FontSize div 2;
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

function TddHTMLGenerator.InchStr(aInch: Integer): AnsiString;
begin
 Result := Format('%f in;', [aInch / 1440]);
 Result := StringReplace(Result, ',', '.', [rfReplaceAll]);
end;

procedure TddHTMLGenerator.OpenDivPre;
begin
 if not f_DivPreOpened and IsPrime then
 begin
  f_DivPreOpened := True;
  OutStringLn('<pre>'); // условно
 end;
end;

procedure TddHTMLGenerator.OpenList(aLeftIndent: Integer);
var
 l_LI : Integer;
begin
 l_LI := IfThen(aLeftIndent = propUndefined, 0, aLeftIndent);
 if l_LI > ListLeftIndent then
 begin
  Inc(f_ListLevel);
  OutStringLn('<ul>');
  ListLeftIndent := l_LI;
 end
 else
 if l_LI < ListLeftIndent then
  CloseList(False);
end;

function TddHTMLGenerator.pm_GetListLeftIndent: Integer;
begin
 if f_ListIndents.Count > 0 then
  Result := f_ListIndents.Items[f_ListIndents.Hi]
 else
  Result := -1;
end;

function TddHTMLGenerator.pm_GetListOpened: Boolean;
begin
 Result := f_ListLevel > 0;
end;

procedure TddHTMLGenerator.pm_SetIsPrime(const Value: Boolean);
begin
 if f_IsPrime <> Value then
 begin
  f_IsPrime := Value;
  if IsPrime then
  begin
   NeedStyleSheet := False;
  end;
 end;
end;

procedure TddHTMLGenerator.pm_SetListLeftIndent(const Value: Integer);
begin
 f_ListIndents.Add(Value);
end;

procedure TddHTMLGenerator.StartChild(TypeID: Long);
var
  TT        : Tk2Type;
begin
  inherited;
  TT:= CurrentType;
  if TT.InheritsFrom(k2_idAnnoTopic) and f_IsPrime then
   f_IsAnno := True
  else
  if TT.InheritsFrom(k2_idDocument) then
  begin
   f_IsFirstHeader := True;
   f_IsAnno := False;
  end
end;

function TddHTMLGenerator.Style2HTML(aStyle: TddStyleEntry; const aList:
        Tl3ObjectRefList = nil): AnsiString;
var
 l_List: Tl3ObjectRefList;
 i: Integer;
 l_Left: Integer;
 l_PAP, l_DiffPAP: TddParagraphProperty;
 l_CHP, l_DiffCHP: TddCharacterProperty;
begin
 // Нужно раскручивать всю цепочку до первого предка, иначе теряется унаследованное оформление
 l_PAP:= TddParagraphProperty.Create(nil);
 try
  l_CHP:= TddCharacterProperty.Create(nil);
  try
   Document.MakeStyleParent(aStyle.BasedOn, l_PAP, l_CHP);
   l_DiffPAP:= aStyle.PAP.Clone();
   try
    l_DiffPAP.JoinWith(l_PAP);
    l_DiffCHP:= aStyle.CHP.Clone;
     try
      l_DiffCHP.JoinWith(l_CHP);
      if aList = nil then
       l_List:= Tl3ObjectRefList.Make
      else
       l_List:= aList;
      try
       with l_DiffCHP do
       begin
        if Bold then
         AddStyleProperty(l_List, 'font-weight:','Bold;', '');
        if not (Underline in [utNone, utNotDefined]) then
         AddStyleProperty(l_List, 'text-decoration:', 'underline;', '');
        if Italic then
         AddStyleProperty(l_List, 'font-style:', 'Italic;', '')
        else
         AddStyleProperty(l_List, 'font-style:', 'Italic;', '1');
         //case Caps of
         // ccAllCaps
         // ccSmallCapstext-transform:  property Caps: TCharCapsType
        if Hidden then
        with Document.ColorTable[Document.AddColor(clGray)] do
          AddStyleProperty(l_List, 'background-color:',
                           Format( '#%s%s%s;', [IntToHex(Red, 2),
                                                IntToHex(Green, 2),
                                                IntToHex(Blue, 2)]), '');

        if Abs(Highlight) <> propUndefined then
        with Document.ColorTable[Pred(Highlight)] do
          AddStyleProperty(l_List, 'background-color:',
                           Format( '#%s%s%s;', [IntToHex(Red, 2),
                                                IntToHex(Green, 2),
                                                IntToHex(Blue, 2)]), '');

         //  property Deleted: Bool
         //  property CharScale: Longint
         //  property Subpos: Longint
         //  property Contour: TContourType
        if (Abs(FontNumber) <> propUndefined){ and (FontNumber <> 0)}then
         AddStyleProperty(l_List, 'font-family: ', Document.FontTable[FontNumber].AsString + ';', '');
        if Abs(FontSize) <> propUndefined then
         AddStyleProperty(l_List, 'font-size:', Format('%dpt;',[FontSize div 2]), '');
         //  property Language: Longint
        if Abs(FColor) <> propUndefined then
         with Document.ColorTable[Pred(FColor)] do
          AddStyleProperty(l_List, 'color:', Format('#%s%s%s;',
                                                    [IntToHex(Red, 2),
                                                     IntToHex(Green, 2),
                                                     IntToHex(Blue, 2)]), '');
        if Abs(BColor) <> propUndefined then
         with Document.ColorTable[Pred(BColor)] do
          AddStyleProperty(l_List, 'background-color:', Format('#%s%s%s;',
                                                               [IntToHex(Red, 2),
                                                                IntToHex(Green, 2),
                                                                IntToHex(Blue, 2)]), '');
        case Pos of
         cpSuperscript: AddStyleProperty(l_List, 'vertical-align:', 'sup;', '');
         cpSubScript:   AddStyleProperty(l_List, 'vertical-align:', 'sub;', '');
        end; // case Pos
        if Strikeout then
         AddStyleProperty(l_List, 'text-decoration:', 'line-through;', '');
       end; //with aStyle.CHP

       if aStyle.StyleDef = sdParagraph then
        with l_DiffPAP do
        begin
         AddStyleProperty(l_List, 'margin:', '0 in;', '');
          if (xaLeft <> propUndefined) and (xaLeft <> 0) then
           AddStyleProperty(l_List, 'margin-left:', InchStr(xaLeft), '');
          if (xaRight <> propUndefined) and (xaRight <> 0) then
           AddStyleProperty(l_List, 'margin-right:', InchStr(xaRight), '');
          if xaLeft <> propUndefined then
           l_Left := xaLeft
          else
           l_Left := 0;
          if (xaFirst <> propUndefined){ and (xaFirst <> 0) Зачем эта проверка ?} then
            AddStyleProperty(l_List, 'text-indent :', InchStr(xaFirst{+l_Left}), '');

         case Just of
          justL : AddStyleProperty(l_List, 'text-align:', 'left;', '');
          justR : AddStyleProperty(l_List, 'text-align:', 'right;', '');
          justC : AddStyleProperty(l_List, 'text-align:', 'center;', '');
          justF : AddStyleProperty(l_List, 'text-align:', 'justify;', '');
         end; // case Just
          //margin-top: Before: Integer
          //margin-bottom:  After : Integer
          //  property Border : TddBorder
        end; //with aStyle.PAP
       if aList = nil then
       begin
        Result:= '';
        for i:= 0 to l_List.Hi do
        begin
         Result:= Result + ThTMLTag(l_List.Items[i]).Tag + ' '+ ThTMLTag(l_List.Items[i]).Param;
         if i <> l_List.Hi then
          Result:= Result + #10;
        end;
       end; // aList = nil
      finally
       if aList = nil then
        l3Free(l_List);
      end; // l_List
     finally
      FreeAndNil(l_DiffCHP);
     end;
   finally
    FreeAndNil(l_DiffPAP);
   end;
  finally
   FreeAndNil(l_CHP);
  end;
 finally
  FreeAndNil(l_PAP);
 end;
end;

function TddHTMLGenerator.StyleName(StyleID: Integer; var IsSpecial: Boolean): AnsiString;
begin
  IsSpecial:= False;
 if IsPrime then
  case StyleID of
   ev_saTxtNormalANSI   :
    begin
     Result:= 'p'; {* - Нормальный. }
     IsSpecial:= True;
    end;
   ev_saTxtHeader1      :
    begin
     if IsPrime then
     begin
      if f_isFirstHeader then
       Result := 'h2'
      else
       Result := 'h3';
     end;
     IsSpecial:= True;
    end;
   ev_saHyperLink       :
    begin
     Result:= 'a'; {* - Гипертекстовая ссылка. }
     IsSpecial:= True;
    end;
   ev_saToLeft          : Result:= 'ToLeft'; {* - Прижатый влево. }
   ev_saNormalSBSLeft   : Result:= 'ToLeft'; {* - Нормальный для левых частей SBS. }
   ev_saNormalSBSRight  : Result:= 'ToRight'; {* - Нормальный для правых частей SBS. }
   ev_saHFLeft          : Result:= 'ToLeft';   {* - колонтитул (левый). }
   ev_saHFRight         : Result:= 'ToRight'   {* - колонтитул (правый). }
  else
   Result:= '';
  end // case StyleID
 else
  case StyleID of
   ev_saTxtNormalANSI   :
    begin
     Result:= 'p'; {* - Нормальный. }
     IsSpecial:= True;
    end;
   ev_saTxtNormalOEM    : Result:= 'NormalOEM'; {* - Нормальный (OEM). }
   ev_saTxtHeader1      :
    begin
     Result:= 'h1'; {* - Заголовок 1. }
     IsSpecial:= True;
    end;
   ev_saTxtHeader2      :
    begin
     Result:= 'h2'; {* - Заголовок 2. }
     IsSpecial:= True;
    end;
   ev_saTxtHeader3      :
    begin
     Result:= 'h3'; {* - Заголовок 3. }
     IsSpecial:= True;
    end;
   ev_saTxtHeader4      :
    begin
     Result:= 'h4'; {* - Заголовок 4. }
     IsSpecial:= True;
    end;
   ev_saTxtOutOfDate    : Result:= 'TxtOutOfDate'; {* - Утратил силу. }
   ev_saHyperLink       :
    begin
     Result:= 'a'; {* - Гипертекстовая ссылка. }
     IsSpecial:= True;
    end;
   ev_saTxtComment      : Result:= 'TxtComment'; {* - Комментарий. }
   ev_saColorSelection  : Result:= 'ColorSelection'; {* - Цветовое выделение. }
   ev_saHyperLinkCont   : Result:= 'HyperLinkCont'; {* - Продолжение ссылки. }
   ev_saANSIDOS         : Result:= 'ANSIDOS'; {* - Моноширинный. }
   ev_saFoundWords      : Result:= 'FoundWords'; {* - Найденные слова. }
   ev_saNormalNote      : Result:= 'NormalNote'; {* - Нормальный (справка). }
   ev_saArticleHeader   : Result:= 'ArticleHeader'; {* - Заголовок статьи. }
   ev_saToLeft          : Result:= 'ToLeft'; {* - Прижатый влево. }
   ev_saNormalTable     : Result:= 'NormalTable'; {* - Нормальный для таблиц. }
   ev_saNormalSBSLeft   : Result:= 'NormalSBSLeft'; {* - Нормальный для левых частей SBS. }
   ev_saNormalSBSRight  : Result:= 'NormalSBSRight'; {* - Нормальный для правых частей SBS. }
   ev_saNormalTableList : Result:= 'NormalTableList'; {* - нормальный для списков в виде таблиц. }
   ev_saTechComment     : Result:= 'TechComment'; {* - технический комментарий. }
   ev_saVersionInfo     : Result:= 'VersionInfo'; {* - информация о версии. }
   ev_saUserComment     : Result:= 'UserComment'; {* - комментарий пользователя (для Гаранта 6х). }
   ev_saContents        : Result:= 'Contents'; {* - оглавление (для Гаранта 6х). }
   ev_saNotApplied      : Result:= 'NotApplied'; {* - не вступил в силу. }
   ev_saDictEntry       : Result:= 'DictEntry'; {* - Словарная статья. }
   ev_saHFLeft          : Result:= 'HFLeft';   {* - колонтитул (левый). }
   ev_saHFRight         : Result:= 'HFRight'   {* - колонтитул (правый). }
  else
   Result:= '';
  end; // case StyleID
end;

procedure TddHTMLGenerator.Write2Filer;
var
  i: Integer;
  l_P: TddDocumentAtom;
begin
  MakeMLFileName;
  f_PictureNumber:= 0;
  try
    { Выливаем шапку документа и всякие таблицы (шрифтов, цветов и стилей) }
   WriteHeader;
   f_MultiLinks.Add('<body>');
   OutStringLn('<body>');
   WriteStyleTable;
  //  WriteFontTable;
  //  WriteColorTable;
   for i:= 0 to Document.Paragraphs.Hi do
   begin
    l_P:= TddDocumentAtom(Document.Paragraphs.Items[i]);
    case l_P.AtomType of
     dd_docTextParagraph: WriteTextParagraph(l_P as TddTextParagraph);
     dd_docTableRow     : WriteTableRow(l_P as TddTableRow);
     dd_docTable        : WriteTable(l_P as TddTable);
     dd_docPicture      : WritePicture(l_P as TddPicture, True);
     dd_docBreak        : WriteBreak(l_P as TddBreak);
    end;
   end;
  finally
   OutStringLn('</body>');
   OutStringLn('</HTML>');
   with f_MultiLinks do
   begin
    Add('</body>');
    Add('</html>');
   end;
   if f_MLNumber > 0 then
    WriteMultiLinks;
  end; { закрытие документа }
  Document.Clear;
end;

procedure TddHTMLGenerator.WriteBreak(const aBreak: TddBreak);
begin
end;

procedure TddHTMLGenerator.WriteColorTable(aDefault: Boolean = False);
begin
end;

procedure TddHTMLGenerator.WriteDocumentBody;
begin
 if not f_IsAnno then
 begin
  f_MultiLinks.Add('<body>');
  OutStringLn('<body>');
  inherited WriteDocumentBody;
  OutStringLn('</body>');
  f_MultiLinks.Add('</body>');
 end;
end;

procedure TddHTMLGenerator.WriteDocumentEnd;
begin
 if not f_IsAnno then
 begin
  if IsPrime then
   OutStringLn('</div>')
  else
  begin
   f_MultiLinks.Add('</body>');
   OutStringLn('</body>');
   OutStringLn('</html>');
   f_MultiLinks.Add('</html>');
  end;
 end;
end;

procedure TddHTMLGenerator.WriteDocumentHeader;
begin
 inherited;
 if not f_IsAnno then
 begin
  if not IsPrime then
  begin
   f_MultiLinks.Add('<body>');
   OutStringLn('<body>');
  end;
  OutStringLn('<a name="0"></a>');
 end;
end;

procedure TddHTMLGenerator.WriteDocumentStart;
begin
 if not f_IsAnno then
 begin
  if IsPrime then
   OutStringLn('<div id="primeDocs">')
  else
  begin
   OutStringLn('<html>');
   f_MultiLinks.Add('<html>');
  end;
 end;
end;

procedure TddHTMLGenerator.WriteFontTable(aDefault: Boolean = False);
begin
end;

procedure TddHTMLGenerator.WriteHeader(aDefault: Boolean = False);
begin
 if not IsPrime then
 begin
  OutStringLn('<!doctype html public "-//w3c//dtd html 4.0 transitional//en">');
  OutStringLn('<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-'+IntToStr(CP_RussianWin)+'">');
  OutStringLn('<META NAME="Generator" CONTENT="'+l3System.AppTitle+'">');
  OutStringLn('<HEAD>');
  OutString('<TITLE>');
  OutString(Document.Info.Title);
  OutStringLn('</TITLE>');
  OutStringLn('</HEAD>');
  with f_MultiLinks do
  begin
    Add('<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">');
    Add('<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-'+IntToStr(CP_RussianWin)+'">');
    Add('<META NAME="Generator" CONTENT="'+l3System.AppTitle+'">');
    Add('<HEAD>');
    Add('<TITLE>');
    Add(Format(str_ddmmMultiLinkTitle.AsStr, [Document.Info.Title.AsString]));
    Add('</TITLE>');
    Add('</HEAD>');
  end; // with f_MultiLinks
 end; // not IsPrime
end;

procedure TddHTMLGenerator.WriteMultiLinks;
var
  l_MLFile: Tl3TextStream;
begin
  l_MLFile:= Tl3TextStream.Create(f_MLFileName, l3_fmWrite);
  try
   f_MultiLinks.SaveToStream(l_MLFile);
  finally
   l3Free(l_MLFile);
  end;
end;

procedure TddHTMLGenerator.WritePicture(const Picture: TddPicture; aWholePar:
    Boolean);
var
  l_FileName, PS: ShortString;
  l_Stream: Tl3FileStream;
  l_Width: Integer;
begin
  {$IFDEF Envision}
  case Picture.Format of
    pictBMP  : PS:= '.bmp';
    pictICO  : exit;
    pictWMF  : PS:= '.wmf';
    pictTIFF : exit;
    pictPNG  : PS:= '.png';
    pictJPG  : PS:= '.jpg';
    pictTGA  : exit;
    pictPCX  : exit;
    pictGIF  : exit;
  else
   PS:= '.unknown';
  end; { Picture.Format }
  {$ELSE}
  case Picture.Format of
   ioGIF: PS:= '.gif';
   ioJPEG: PS:= '.jpg';
   {$ifdef IEINCLUDEPNG}
   ioPNG: PS:= '.png';
   {$endif}
  {$ENDIF}
  else
   with TImageEnIO.Create(nil) do
   try
    LoadFromStream(Picture.Stream);
    Picture.Stream.Seek(0, 0);
    PS:= '.jpg';
    SaveToStreamJpeg(Picture.Stream);
    Picture.Stream.Seek(0, 0);
   finally
    Free;
   end;
  end; { Picture.Format }
  l_FileName:= ChangeFileExt(MakePictureName, PS);
  l_Stream:= Tl3FileStream.Create(l_FileName, l3_fmWrite);
  try
   Picture.IsBinary:= True;
   l_Stream.CopyFrom(Picture.Stream, Picture.Stream.Size);
  finally
   l3Free(l_Stream);
  end;
  // Если ширина ячейки меньше ширины картинки, нужно картинку уменьшить
  //if aWidth < l_Width then
  begin
  end;
  OutStringLn(Format('<img src = "%s">', [ExtractFileName(l_Filename)]));
  if IsPrime then
   OutStringLn('</img>');
end;

procedure TddHTMLGenerator.WriteStyleTable(aDefault: Boolean = False);
var
  i: Integer;
  l_Style: TddStyleEntry;
  l_StyleName: AnsiString;
  l_IsSpecial,
  l_NeedP: Boolean;
begin
 if NeedStyleSheet then
 begin
  OutStringLn('<style type="text/css">');
  OutStringLn('body {');
  l_Style:= Document.StyleTable[ev_saTxtNormalAnsi];
  if l_Style <> nil then
  begin
   OutStringLn(Style2HTML(l_Style));
   if l_Style.CHP.FontName = '' then
    OutStringLn('font-family : Arial;');
  end
  else
  begin
   OutStringLn('text-indent : 0.5 in; margin: 0; margin-left: 1 in; margin-right: 1 in;');
   OutStringLn('text-align:justify; font-family : Arial; font-size: 10pt;');
  end;
  OutStringLn('}');
  OutStringLn('pre {');
  OutStringLn('margin: 0; margin-left: 0 in;text-indent : 0 in;text-align: left;');
  OutStringLn('}');
  l_Style:= Document.StyleTable[ev_saNormalTable];
  if l_Style <> nil then
  begin
   OutStringLn('td {');
   OutStringLn(Style2HTML(l_Style));
   OutStringLn('font-family : Arial;');
   OutStringLn('}');
  end; // l_Style <> nil
  l_NeedP := True;
  for i:= 0 to Pred(Document.StyleCount) do
  begin
   l_Style:= Document.StyleSheet[i];
   if l_NeedP then
    l_NeedP := l_Style.Number <> ev_saTxtNormalANSI;
   l_StyleName:= StyleName(l_Style.Number, l_IsSpecial);
   if l_StyleName <> '' then
   begin
    if l_IsSpecial then
     OutStringLn(Format('%s {', [l_StyleName]))
    else
     OutStringLn(Format('.%s {', [l_StyleName]));
    OutStringLn(Style2HTML(l_Style));
    OutStringLn('}');
   end; // l_StyleName <> ''
  end; // for i
  if l_NeedP then
  begin
   OutStringLn('p {');
   OutStringLn('text-indent : 0.5 in; margin: 0;');
   OutStringLn('text-align:justify; font-family : Arial; font-size: 10pt');
   OutStringLn('}');
  end;
  // Ссылка
  (*
  OutStringLn('A:link { color : #008000; text-decoration: none}');
  OutStringLn('A:visited { color : #008000; text-decoration: none}');
  OutStringLn('A:hover { color : #008000; text-decoration: none}');
  *)
  OutStringLn('</style>');
 end;
end;

procedure TddHTMLGenerator.WriteTable(const Table: TddTable);
var
 i, j: Integer;
 l_Row: TddTableRow;
 l_EtalonRowIndex,
 l_MaxCellCount: Integer;
begin
  if not Table.IsSBS then
  begin
   if IsPrime then
    OutStringLn('<table class="primeTab">')
   else
    OutStringLn('<table border="1">')
  end
  else
   OutStringLn('<table>');

  l_EtalonRowIndex := -1;
  l_MaxCellCount:= 0;
  f_IsComplexTable := False;
  for i:= 0 to Pred(Table.RowCount) do
  begin
   l_Row:= Table.Rows[i];
   if l_Row.CellCount > l_MaxCellCount then
   begin
    l_EtalonRowIndex:= i;
    l_MaxCellCount:= l_Row.CellCount;
   end; // l_Row.CellCount > l_MaxCellCount
   if not f_IsComplexTable then
    for j:= 0 to Pred(l_Row.CellCount) do
     if l_Row.Cells[j].Props.VMerged or l_Row.Cells[j].Props.Merged or
        l_Row.Cells[j].Props.MergeFirst or l_Row.Cells[j].Props.VMergeFirst then
     begin
      f_IsComplexTable:= True;
      break;
     end;
  end; // for i
  f_IsComplexTable := f_IsComplexTable and (l_EtalonRowIndex > 0);
  for i:= 0 to Pred(Table.RowCount) do
  begin
   f_IsEtalonRow:= i = l_EtalonRowIndex;
   WriteTableRow(Table.Rows[i], Table.IsSBS, i=0);
  end;
  OutStringLn('</table>')
end;

procedure TddHTMLGenerator.WriteTableRow(const Row: TddTableRow; const aIsSBS: Boolean = False;
    const IsFirstRow: Boolean = False; const IsNested: Boolean = False);
var
  i, j: Integer;
  l_Cell: TddTableCell;
  l_CellProp: TddCellProperty;
  l_List: Tl3ObjectRefList;
  l_S: AnsiString;
  l_Atom: TddDocumentAtom;
begin
  l_List:= Tl3ObjectRefList.Make;
  try
   OutStringLn(' <tr>');
   for i:= 0 to Pred(Row.CellCount) do
   begin
    l_List.Clear;
    l_CellProp:= Row.Cells[i].Props;
    if not l_CellProp.VMerged then
    begin
     if aIsSBS then
      if IsPrime then
       AddTag(l_List, 'td', 'width="50%"')
      else
       AddTag(l_List, 'td', 'width="400"')
     else
     if IsFirstRow then
      l_s:= 'th'
     else
      l_S := 'td';
     AddTag(l_List, l_S, '');
     AddTag(l_List, l_S, 'VALIGN="TOP"');

     if not IsPrime {and (f_IsEtalonRow or f_IsComplexTable)} then
     // Почему абсолютные величины, а не проценты?
      AddTag(l_List, l_S, Format('width="%d"', [Round(l_CellProp.Width/l3Inch*96{l_CellProp.Width/Row.TAP.Width*100})]));

     if l_CellProp.RowSpan > 1 then
      AddTag(l_List, l_S, Format('rowspan="%d"', [l_CellProp.RowSpan]));
     if l_CellProp.CellSpan > 1 then
      AddTag(l_List, l_S, Format('colspan="%d"', [l_CellProp.CellSpan]));
     if l_CellProp.PatternBackColor <> propUndefined then
      with Document.ColorTable[Pred(l_CellProp.PatternBackColor)] do
       AddTag(l_List, l_S, Format('bgcolor="#%s%s%s"', [IntToHex(Red, 2), IntToHex(Green, 2), IntToHex(Blue, 2)]));
     OutStringLn(GetFormat(l_List, False));

     l_Cell:= Row.Cells[i];
     for j:= 0 to Pred(l_Cell.Count) do
     begin
      l_Atom:= TddDocumentAtom(l_Cell.Items[j]);
      case l_Atom.AtomType of
       dd_docTextParagraph: WriteTextParagraph(TddTextParagraph(l_Atom));
       dd_docPicture:
         WritePicture(TddPicture(l_Atom), true);
       dd_docTable:
        begin
         WriteTable(TddTable(l_Atom));
        end; // dd_docTable
      end; // case
     end;
     OutStringLn(GetFormat(l_List, True));
    end; // if not l_CellProps.VMerged
   end; // for i
   OutStringLn('</tr>');
  finally
   l3Free(l_List);
  end; // l_List
end;

procedure TddHTMLGenerator.WriteTextParagraph(const Para: TddTextParagraph);
var
  i, LinkIndex: LongInt;
  St, l_Link: AnsiString;
  tmpSeg, tmpLink: TddTextSegment;
  l_LStart, l_LStop: Boolean;
  l_Written: AnsiString;
  l_Text: Tl3String;
  l_StyleName: AnsiString;
  l_IsSpecial: Boolean;
  l_T: TddHyperlinkTarget;
  l_List: Tl3ObjectRefList;
  l_StartIndex, l_StopIndex: Integer;
  l_EvdStyle: Integer;
  l_Style: TddStyleEntry;
begin
 if not f_IsAnno then
 begin
  if Para.PAP.Bullet <> propUndefined then
   OpenList(Para.PAP.xaLeft)
  else
   CloseList(True);

  if not Para.PAP.InTable and IsPrime then
  begin
   if (Para.PAP.Just = justP) and not Para.Empty then
    OpenDivPre
   else
    CloseDivPre;
  end; // not Para.PAP.InTable

  if (Para.SubList.Count > 1) then
   for i:= 0 to Para.SubList.Hi do
    OutStringLn(Format('<a name="%d"></a>', [TddSub(Para.SubList.Items[i]).ID]))
  {$IFDEF InsiderTest}
  ;
  {$ELSE}
  else
  if (Para.SubList.Count = 1) and (IsPrime and (Para.Empty or f_DivPreOpened)) then
   OutStringLn(Format('<p id="%d"></p>', [TddSub(Para.SubList.Items[0]).ID]));
  {$ENDIF InsiderTest}


  if Para.PAP.Border.Frames[bpTop].Enable then
  begin
   if IsPrime then
    OutString(Format('<hr noshade size="%d" />', [Para.PAP.Border.FrameWidth[bpTop] div 10 + 1]))
   else
    OutString('<hr>');
  end;

  if IsPrime and Para.Empty then
   if Para.PAP.InTable then
    OutStringLn('&nbsp;')
   else
    exit;

   l_written:= '';


   if not f_DivPreOpened and not (IsPrime and Para.PAP.InTable) then
   begin
    l_List:= TL3ObjectRefList.Make;
    try
     if Para.Empty then
      AddTag(l_List, 'pre', '')
     else
     begin
      l_EvdStyle:= Min(Para.PAP.Style, Para.Chp.Style);
      l_Style := Document.StyleTable[l_EvdStyle];
      if l_Style <> nil then
      begin
       // Оформление абзаца
       l_Style.PAP.Style:= l_EvdStyle;
       PAP2HTML(l_Style.PAP, False, l_List);
      end;
     end;
     {$IFNDEF InsiderTest}
     if Para.SubList.Count = 1 then
      AddTag(l_List, THTMLTag(l_List.Items[0]).Tag, Format('id="%d"', [TddSub(Para.SubList.Items[0]).ID]));
     {$ENDIF InsiderTest} 
     OutString(GetFormat(l_List, False));
    finally
     l3Free(l_List);
    end;
   end; // not f_DivPreOpened

   l_Text:= Para.Text;
   if l_Text.Empty then
   begin
    OutString('&nbsp;');
    f_Link := '';
   end
   else
    l_Text.CodePage:= cp_ANSI;

   l_StartIndex:= 0;
   while (l_Text.Ch[l_StartIndex] = ' ') and (l_StartIndex < l_Text.Len) do
    Inc(l_StartIndex);
   l_StopIndex := Pred(l_Text.Len);
   while (l_Text.Ch[l_StopIndex] = ' ') and (l_StopIndex > 0) do
    Dec(l_StopIndex);

   for i := 0 to Pred(l_Text.Len) do
   begin
       tmpSeg:= Para.SegmentByCharIndex(i);
       if (tmpSeg <> nil) and (tmpSeg.Start = i) and
          ((Para.SegmentByCharIndex(i, True) = nil) or (tmpSeg.Start = tmpSeg.Stop)) then
       begin
        { Выводим начало оформления }
        if not ((tmpSeg.CHP.Style = ev_saHyperLinkCont) and (f_Link = '')) then
         OutString(CHP2HTML(tmpSeg.CHP, False));
        if (tmpSeg.CHP.Style = ev_saHyperLinkCont) and (f_Link <> '') then
         OutString(f_Link);
       end; // (tmpSeg <> nil) and (tmpSeg.Start = i)
     // открываем ссылку
     tmpLink:= Para.HyperLinkByCharIndex(i);
     if (tmpLink <> nil) and (tmpLink.Start = i) and
        ((tmpLink.TargetList.Count > 0) or not tmpLink.URL.Empty) then
     begin
      St:= '';
      if not tmpLink.URL.Empty then
       St:= Format('<a href="%s">', [tmpLink.URL.AsString])
      else
      if tmpLink.TargetList.Count > 1 then
      begin
       IncMLNumber(l_Text);
       for LinkIndex:= 0 to tmpLink.TargetList.Hi do
       begin
        l_T:= TddHyperlinkTarget(tmpLink.TargetList.Items[LinkIndex]);
        St:= Format('<p><a href="%d.html"', [l_T.DocID]);
        if l_T.SubID <> 0 then
         St:= St +Format('#%d', [l_T.SubID]);
        St:= Format('%s>%d.%d</a></p>', [St, l_T.DocID, l_T.SubID]);
        f_MultiLinks.Add(St);
       end; // for LinkIndex
       St:= Format('<a href = "%s#%d">', [f_MLFileName, f_MLNumber]);
      end
      else // одиночная ссылка
      begin
       if TddHyperlinkTarget(tmpLink.TargetList.First).TypeID <> CI_REF then
       begin
        if (TddHyperlinkTarget(tmpLink.TargetList.First).DocID = ExtNumber) or
           (TddHyperlinkTarget(tmpLink.TargetList.First).DocID = 0) then
         St:= '<a href='
        else
        if UseExternalLinks then
         St:= Format('<a href="%d.html"', [TddHyperlinkTarget(tmpLink.TargetList.Items[0]).DocID]);
        if St <> '' then
          St:= St +Format('"#%d">', [TddHyperlinkTarget(tmpLink.TargetList.Items[0]).SubID]);
       end;// tmpLink.TargetList.Count > 1
       OutString(St);
       if InRange(i, 0, l_StartIndex) then
       begin
        l_LStart:= True;
        l_Link:= St;
       end; // if i = 0
      end;
     end; // tmpLink <> nil

     tmpSeg:= Para.ObjectByCharIndex(i);
     if tmpSeg <> nil then
     begin
      if tmpSeg.ObjectType = dd_sotPicture then
      begin
       WritePicture(tmpSeg.Data as TddPicture, False);
       { TODO : Лучше взвести флажок }
       Continue
      end;
     end; // tmpSeg <> nil


     l_Written:= l_Written + l_Text.Ch[i];
     case l_Text.Ch[i] of
      #9: OutString('&#9;');
      #10:
        begin
         if IsPrime then
           OutString('<br />')
         else
          OutString('<br>');
        end;
      '<' : OutString('&lt;');
      '>' : OutString('&gt;');
      '&' : OutString('&amp;');
      cc_SingleQuote : OutString('&quot;');         {* - одинарная кавычка. }
      cc_DoubleQuote : OutString('&quot;');         {* - двойная кавычка. }
      cc_LSingleQuote: OutString('&quot;');         {* - открывающаяся одинарная кавычка. }
      cc_RSingleQuote: OutString('&quot;');         {* - закрывающаяся одинарная кавычка. }
      cc_LDoubleQuote: OutString('&ldquo;');         {* - открывающаяся двойная кавычка. }
      cc_RDoubleQuote: OutString('&rdquo;');         {* - закрывающаяся двойная кавычка. }
      cc_LTDoubleQuote: OutString('&laquo;');        {* - открывающаяся двойная треугольная кавычка. }
      cc_RTDoubleQuote: OutString('&raquo;');        {* - закрывающаяся двойная треугольная кавычка. }
     else
      begin
       if (Para.PAP.Just <> justP) and (l_Text.Ch[i] = ' ') and
          ((i = 0) or (l_Text.Ch[Pred(i)] = ' ')) then
        OutString('&nbsp;')
       else
        OutString(l_Text.Ch[i]);
      end;
     end;
     // Закрываем ссылку
     tmpLink:= Para.HyperLinkByCharIndex(i, True);
      if (tmpLink <> nil) and ((tmpLink.TargetList.Count > 0) or not tmpLink.URL.Empty) then
      begin
       if not tmpLink.URL.Empty then
        OutString('</a>')
       else 
       if TddHyperlinkTarget(tmpLink.TargetList.First).TypeID <> CI_REF then
       begin
        if (TddHyperlinkTarget(tmpLink.TargetList.Items[0]).DocID = ExtNumber) or
           (TddHyperlinkTarget(tmpLink.TargetList.Items[0]).DocID = 0) or UseExternalLinks then
         OutString('</a>');
       end;
       if (i = Pred(l_Text.Len)) or (i = l_stopIndex) then
        l_LStop:= True;
      end; // tmpLink <> nil
     // закрываем сегмент
     tmpSeg:= Para.SegmentByCharIndex(i, True);
     while (tmpSeg <> nil) do
     begin
      if (tmpSeg <> nil){ and (tmpSeg.Stop = i)} then
      begin
        { Закрываем оформление }
       if tmpSeg.CHP.Style = ev_saHyperLinkCont then
        OutString('</a>');
       OutString(CHP2HTML(tmpSeg.CHP, True));
       tmpSeg:= Para.SegmentByCharIndex(i, False, Pred(tmpSeg.Index));
       if (tmpSeg <> nil) and (tmpSeg.Start <> tmpSeg.Stop) then
       begin
        { Выводим начало оформления }
        if not ((tmpSeg.CHP.Style = ev_saHyperLinkCont) and (f_Link = '')) then
         OutString(CHP2HTML(tmpSeg.CHP, False));
        if (tmpSeg.CHP.Style = ev_saHyperLinkCont) and (f_Link <> '') then
         OutString(f_Link);
       end;
      end; // tmpSeg <> nil) and (tmpSeg.Stop = i
      if (tmpSeg <> nil) then
       tmpSeg:= Para.SegmentByCharIndex(i, True, tmpSeg.Index);
     end;//while (tmpSeg <> nil)
   end;//for i

   if not f_DivPreOpened then
   begin
    if IsPrime and Para.PAP.InTable then
     OutString(' ')
    else
    if l_StyleName <> '' then
    begin
     if l_IsSpecial then
      OutString('</'+l_StyleName+'>')
     else
      OutString('</p>')
    end
    else
    if Para.Empty then
     OutString('</pre>')
    else
    begin
      l_EvdStyle:= Min(Para.PAP.Style, Para.Chp.Style);
      l_Style := Document.StyleTable[l_EvdStyle];
      if l_Style <> nil then
      // Оформление абзаца
       OutString(PAP2HTML(l_Style.PAP, True))
      else
       OutString(PAP2HTML(Para.PAP, True));
    end;   
   end;
   OutEOL;

   if (l_LStart and l_LStop) then
    f_Link:= l_Link
   else
    f_Link:= '';
   if Para.PAP.Border.Frames[bpBottom].Enable then
   begin
    if IsPrime then
     OutString('<hr />')
    else
     OutString('<hr>');
   end; // Para.PAP.Border.Frames[bpBottom].Enable
  if IsPrime and (Para.PAP.Style = ev_saTxtHeader1) then
   f_IsFirstHeader := False;
 end;
end;

end.
