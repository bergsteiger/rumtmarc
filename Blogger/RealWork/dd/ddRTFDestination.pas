unit ddRTFdestination;
{ $Id: ddRTFDestination.pas,v 1.53 2013/07/19 13:55:41 dinishev Exp $ }

// $Log: ddRTFDestination.pas,v $
// Revision 1.53  2013/07/19 13:55:41  dinishev
// {Requestlink:466752604}. Теперь текстовый параграф сам умеет проверять и выливать номер.
//
// Revision 1.52  2013/07/19 09:59:19  dinishev
// {Requestlink:466752604}. Нарисованы TdestNorm и его наследники на модели. Нарисован TddBreak на модели.
//
// Revision 1.51  2013/07/18 11:49:31  dinishev
// {Requestlink:466752604}
//
// Revision 1.50  2013/07/17 10:14:21  dinishev
// {Requestlink:466752657}
//
// Revision 1.49  2013/07/17 10:12:40  fireton
// - не инициализировалась локальная переменная (K 469278403)
//
// Revision 1.48  2013/07/10 13:21:01  dinishev
// Перенос части ddRTFdestination на модель.
//
// Revision 1.47  2013/07/10 08:58:19  dinishev
// {Requestlink:449678171}
//
// Revision 1.46  2013/07/09 11:12:02  dinishev
// Cleanup
//
// Revision 1.45  2013/07/04 05:50:50  dinishev
// Bug fix: не проходили тесты.
//
// Revision 1.44  2013/07/03 07:18:40  dinishev
// Refactoring: создавали объект для текстового параграфа, даже когда он был не нужен.
//
// Revision 1.43  2013/07/02 10:05:31  dinishev
// {Requestlink:466751465}
//
// Revision 1.42  2013/07/01 13:23:43  dinishev
// {Requestlink:466751465}
//
// Revision 1.41  2013/07/01 11:16:18  dinishev
// Cleanup
//
// Revision 1.40  2013/05/22 11:36:49  dinishev
// {Requestlink:453178004}. Объединяем два почти одинаковых метода.
//
// Revision 1.39  2013/05/22 11:17:40  dinishev
// {Requestlink:453178004}. Учим HTMLReader читать вложенные таблицы. Вроде получилось.
//
// Revision 1.38  2013/05/17 12:56:38  dinishev
// {Requestlink:453164226}. Вычищаем "ветку".
//
// Revision 1.37  2013/05/17 12:41:57  dinishev
// {Requestlink:453164226}. Грохаем RTFCurrCell после консультации c Д. Дудко. Добиваем чтение вложенных таблиц. Отладка тестов - падений нет, есть расхождения с эталонами.
//
// Revision 1.36  2013/05/16 12:50:41  dinishev
// {Requestlink:453164226}. Почти читаем, только как-то кривовато.
//
// Revision 1.35  2013/05/16 12:27:48  dinishev
// {Requestlink:453164226}. Почти читаем, только как-то кривовато.
//
// Revision 1.34  2013/05/16 11:46:25  dinishev
// {Requestlink:453164226}. Поддержка чтения \lastrow \irown и игнорирование группы с \nonesttables
//
// Revision 1.33  2013/05/16 11:42:27  dinishev
// {Requestlink:453164226}. Поддержка чтения \lastrow \irown и игнорирование группы с \nonesttables
//
// Revision 1.32  2013/05/15 11:52:15  dinishev
// {Requestlink:453164226}. Пытаемся учитывать уровень параграфа.
//
// Revision 1.31  2013/05/14 11:13:19  dinishev
// {Requestlink:453164226}. Потихоньку переносим логику работы с таблицей из TdestNorm - не место ей там в TddTable.
//
// Revision 1.30  2013/05/14 07:21:37  dinishev
// {Requestlink:453164226}. Потихоньку переносим логику работы с таблицей из TdestNorm - не место ей там в TddTable.
//
// Revision 1.29  2013/05/13 12:15:49  dinishev
// {Requestlink:453164226}. Потихоньку переносим логику работы с таблицей из TdestNorm - не место ей там в TddTable.
//
// Revision 1.28  2013/05/13 11:19:20  dinishev
// {Requestlink:453164226}. Чистим лишнее.
//
// Revision 1.27  2013/05/13 09:59:16  dinishev
// {Requestlink:453164226}. Переносим f_CurrCell на TddTableRow и переименовываем его в RTFCurrCell
//
// Revision 1.26  2013/05/13 08:00:00  dinishev
// {Requestlink:453164226}
//
// Revision 1.25  2013/05/13 07:53:53  dinishev
// {Requestlink:453164226}
//
// Revision 1.24  2013/05/08 12:33:00  dinishev
// {Requestlink:453164226}
//
// Revision 1.23  2013/05/08 08:32:32  dinishev
// Кое-что рисуем на модели.
//
// Revision 1.22  2013/05/06 12:37:11  dinishev
// Откатываем костыли и "рефакторинг" - отъехало чтение таблиц.
//
// Revision 1.21  2013/05/06 08:33:20  dinishev
// Убрал еще одно свойство.
//
// Revision 1.20  2013/05/06 08:08:55  dinishev
// Убрал еще одно свойство.
//
// Revision 1.19  2013/05/06 07:28:14  dinishev
// Мысли автора понять не смог - сделал свою интерпретацию.
//
// Revision 1.18  2013/05/06 06:45:44  dinishev
// Reformat.
//
// Revision 1.17  2013/05/06 06:45:02  dinishev
// Убираем ненужную переменную.
//
// Revision 1.16  2013/04/11 16:46:28  lulin
// - отлаживаем под XE3.
//
// Revision 1.15  2013/04/05 12:04:30  lulin
// - портируем.
//
// Revision 1.14  2013/04/03 09:34:33  narry
// Не проходили тесты
//
// Revision 1.13  2013/03/20 11:37:28  narry
// * не читались многоуровневые списки
//
// Revision 1.12  2013/02/14 10:51:03  narry
// Добавление картинки в текст
//
// Revision 1.11  2013/02/06 13:39:24  narry
// "Съедались" объединенные ячейки
//
// Revision 1.10  2013/02/06 09:41:56  narry
// Поддержка команды \brdrtbl
//
// Revision 1.9  2013/01/31 12:14:56  narry
// Обновление
//
// Revision 1.8  2013/01/31 07:07:13  narry
// Обновление
//
// Revision 1.7  2013/01/30 11:51:57  narry
// исправление непрошедших тестов Арчи
//
// Revision 1.6  2013/01/29 09:31:52  narry
// Лишний раз сбрасывался номер в списке
//
// Revision 1.5  2013/01/25 13:13:36  narry
// Не устанавливается шрифт по имени (424386600)
//
// Revision 1.4  2013/01/25 05:38:51  narry
// Заменять автонумерацию на фиксированную (407745210)
//
// Revision 1.3  2013/01/24 12:59:15  narry
// Заменять автонумерацию на фиксированную (407745210)
//
// Revision 1.2  2013/01/24 06:55:32  narry
// Поддержка нумерованных абзацев (пока не работает)
//
// Revision 1.1  2013/01/22 12:19:52  narry
// Рефакторинг RTFReader
//

interface

uses
  RTFtypes,

  k2Prim,

  l3Base,
  l3Types,
  l3Memory,
  l3StringList,
  l3ProtoObject,
  l3ObjectRefList,
  l3ProtoObjectRefList,

  ddBase,
  ddRTFState,
  ddRTFProperties,
  ddCustomRTFReader,
  ddCustomDestination,
  ddCharacterProperty,
  ddParagraphProperty,

  Classes,
  Graphics,       

  rTfListTable;

type
  TddRTFDestination = class(TddCustomDestination)
  private
    f_RDS          : TRDS;
    f_SkipSkipable : Boolean;
  protected  
    f_CustomRTFReader : TddCustomRTFReader;
  protected
    procedure Cleanup; override;
  public
    constructor Create(aRTFReader: TddCustomRTFReader); reintroduce; virtual;
    procedure AddAnsiChar(aText: AnsiChar; aState: TddRTFState); virtual;
    procedure AddString(aText: Tl3String; aState: TddRTFState); virtual;
    procedure AddUnicodeChar(aText: Word; aState: TddRTFState); virtual;
    procedure ApplyProperty(propType: TPropType; What: Tiprop; Value: Longint;
        aState: TddRTFState); virtual;
    procedure Clear; virtual;
    procedure ParseSymbol(Symbol: Long; propType: TPropType; aState: TddRTFState);
        virtual;
    procedure Write(const aGenerator: Ik2TagGenerator); virtual;
    procedure WriteText(aText: Tl3String; aState: TddRTFState); virtual;              
    property RDS: TRDS
      read f_RDS write f_RDS;
    property SkipSkipable: Boolean
      read f_SkipSkipable write f_SkipSkipable;
  end;

 TdestStyleSheet = class(TddRTFDestination)
 private
  f_Styles: Tl3StringList;
  function GetCount: Integer;
  function pm_GetCurStyle: TddStyleEntry;
  function pm_GetItems(Index: Integer): TddStyleEntry;
 protected
  procedure Cleanup; override;
 public
  constructor Create(aRTFReader: TddCustomRTFReader); override;
  procedure AddAnsiChar(aText: AnsiChar; aState: TddRTFState); override;
  procedure AddString(aText: Tl3String; aState: TddRTFState); override;
  procedure AddStyle;
  procedure ApplyProperty(propType: TPropType; What: Tiprop; Value: Longint;
      aState: TddRTFState); override;
  function StyleByNumber(aNumber: Integer): TddStyleEntry;
  property Count: Integer read GetCount;
  property CurStyle: TddStyleEntry read pm_GetCurStyle;
  property Items[Index: Integer]: TddStyleEntry read pm_GetItems; default;
 end;

 TdestColorTable = class(TddRTFDestination)
 private
  f_colorEntry: TddColorEntry;
  f_Colors: Tl3ProtoObjectRefList;
  f_IsDefault: Boolean;
 protected
  procedure Cleanup; override;
 public
  constructor Create(aRTFReader: TddCustomRTFReader); override;
  procedure AddAnsiChar(aText: AnsiChar; aState: TddRTFState); override;
  procedure AddDefaultColors;
  procedure ApplyProperty(propType: TPropType; What: Tiprop; Value: Longint;
      aState: TddRTFState); override;
  procedure Clear; override;
  function ColorByIndex(aColorIndex: Integer): TColor;
 end;

 TdestSkip = class(TddRTFDestination)
 end;

 TdestFontTable = class(TddRTFDestination)
 private
  f_Fonts: Tl3StringList;
  function GetCount: Integer;
  function pm_GetCurFont: TddFontEntry;
  function pm_GetItems(Index: Integer): TddFontEntry;
 protected
  procedure Cleanup; override;
 public
  constructor Create(aRTFReader: TddCustomRTFReader); override;
  procedure AddAnsiChar(aText: AnsiChar; aState: TddRTFState); override;
  procedure AddString(aText: Tl3String; aState: TddRTFState); override;
  procedure AddFont;
  procedure ApplyProperty(propType: TPropType; What: Tiprop; Value: Longint;
      aState: TddRTFState); override;
  function FontByNumber(aNumber: Integer): TddFontEntry;
  property Count: Integer read GetCount;
  property CurFont: TddFontEntry read pm_GetCurFont;
  property Items[Index: Integer]: TddFontEntry read pm_GetItems; default;
 end;             

implementation

uses
  SysUtils, ddBreak, ddRTfConst, l3Chars, Windows, l3String, l3StringEx,
  Table_Const, TextPara_Const, k2Tags, EvdStyles, Math, StrUtils,
  ddTextSegment;

constructor TddRTFDestination.Create(aRTFReader: TddCustomRTFReader);
begin
 inherited Create;
 f_SkipSkipable := False;
 f_CustomRTFReader := aRTFReader;
end;

procedure TddRTFDestination.AddAnsiChar(aText: AnsiChar; aState: TddRTFState);
begin
 {$IFDEF Write2Log}
 l3System.Str2Log('Reader.AddAnsiChar: %s', [aText]);
 {$ENDIF}
end;

procedure TddRTFDestination.AddString(aText: Tl3String; aState: TddRTFState);
begin
 {$IFDEF Write2Log}
 l3System.Str2Log('Reader.AddString: %s', [aText.AsString]);
 {$ENDIF}
end;

procedure TddRTFDestination.AddUnicodeChar(aText: Word; aState: TddRTFState);
begin
 {$IFDEF Write2Log}
 l3System.Str2Log('Reader.AddWord: %d', [aText]);
 {$ENDIF}
end;

procedure TddRTFDestination.ApplyProperty(propType: TPropType; What: Tiprop;
    Value: Longint; aState: TddRTFState);
begin
end;

procedure TddRTFDestination.ParseSymbol(Symbol: Long; propType: TPropType;
    aState: TddRTFState);
begin
end;

procedure TddRTFDestination.Cleanup;
begin
 f_CustomRTFReader := nil;
 inherited;
end;

procedure TddRTFDestination.Clear;
begin
end;

procedure TddRTFDestination.Write(const aGenerator: Ik2TagGenerator);
begin
end;

procedure TddRTFDestination.WriteText(aText: Tl3String; aState: TddRTFState);
begin
 {$IFDEF Write2Log}
 l3system.Str2Log(atext.St);
 {$ENDIF}
end;

constructor TdestStyleSheet.Create(aRTFReader: TddCustomRTFReader);
begin
 inherited Create(aRTFReader);
 f_Styles := Tl3StringList.Create;
end;

procedure TdestStyleSheet.AddAnsiChar(aText: AnsiChar; aState: TddRTFState);
begin
 if (CurStyle <> nil) and (aText <> ';') then
  CurStyle.Append(aText);
end;

procedure TdestStyleSheet.AddString(aText: Tl3String; aState: TddRTFState);
begin
 if CurStyle <> nil then
  CurStyle.JoinWith(aText);
end;

procedure TdestStyleSheet.AddStyle;
var
 l_Style: TddStyleEntry;
begin
 l_Style:= TddStyleEntry.Create;
 try
  f_Styles.Add(l_Style);
 finally
  FreeAndNil(l_Style);
 end;
end;

procedure TdestStyleSheet.ApplyProperty(propType: TPropType; What: Tiprop;
    Value: Longint; aState: TddRTFState);
begin
 with CurStyle do
 begin
   case What of
    ipropParaStyle :
      begin
        StyleDef:= sdParagraph;
        Number:= Value;
      end;
    iproPAnsiCharStyle :
      begin
        StyleDef:= sdCharacter;
        Number:= Value;
      end;
    ipropsectStyle :
      begin
        StyleDef:= sdSection;
        Number:= Value;
      end;
    ipropLang:
     CHP.Language:= Value;
    ipropkeycode : ;
    ipropkeys : ;
    ipropkey : ;
    ipropadditive : ;
    ipropbased : ;
    ipropnext : ;
    ipropautoupd : ;
    iprophidden : ;
    iproppersonal : ;
    ipropcompose : ;
    ipropreply : ;

   end; {case What}
 end; { if };
end;

procedure TdestStyleSheet.Cleanup;
begin
 FreeAndNil(f_Styles);
 inherited Cleanup;
end;

function TdestStyleSheet.GetCount: Integer;
begin
  Result := f_Styles.Count;
end;

function TdestStyleSheet.pm_GetCurStyle: TddStyleEntry;
begin
 Result := TddStyleEntry(f_Styles.Last);
end;

function TdestStyleSheet.pm_GetItems(Index: Integer): TddStyleEntry;
begin
 Result := TddStyleEntry(f_Styles[Index]);
end;

function TdestStyleSheet.StyleByNumber(aNumber: Integer): TddStyleEntry;
var
 i: Integer;
begin
 Result:= nil;
 for i:= 0 to Pred(Count) do
  if Items[i].Number = aNumber then
  begin
   Result:= Items[i];
   break;
  end;
end;

constructor TdestColorTable.Create(aRTFReader: TddCustomRTFReader);
begin
 inherited Create(aRTFReader);
 f_Colors := Tl3ProtoObjectRefList.Create(); 
end;

procedure TdestColorTable.AddAnsiChar(aText: AnsiChar; aState: TddRTFState);
begin
 if f_ColorEntry <> nil then
 begin
  f_Colors.Add(f_ColorEntry);
  FreeAndNil(f_ColorEntry);
 end; // f_ColorEntry <> nil
end;

procedure TdestColorTable.AddDefaultColors;
begin
 f_IsDefault:= True;
end;

procedure TdestColorTable.ApplyProperty(propType: TPropType; What: Tiprop;
    Value: Longint; aState: TddRTFState);
begin
 if f_ColorEntry = nil then
  f_colorEntry:= TddColorEntry.Create;
 case What of
  ipropRed: f_ColorEntry.Red:= Value;
  ipropGreen: f_ColorEntry.Green:= Value;
  ipropBlue: f_ColorEntry.Blue:= Value;
 end;
end;

procedure TdestColorTable.Cleanup;
begin
  FreeAndNil(f_Colors);
  FreeAndNil(f_ColorEntry);
  inherited;
end;

procedure TdestColorTable.Clear;
begin
 f_Colors.Clear;
end;

function TdestColorTable.ColorByIndex(aColorIndex: Integer): TColor;
begin
 Result:= propUndefined;
 if InRange(aColorIndex, 0, f_Colors.Hi) then
  Result:= TddColorEntry(f_Colors[aColorIndex]).Color;
end;

constructor TdestFontTable.Create(aRTFReader: TddCustomRTFReader);
begin
 inherited Create(aRTFReader);
 f_Fonts := Tl3StringList.Create;
end;

procedure TdestFontTable.AddAnsiChar(aText: AnsiChar; aState: TddRTFState);
begin
 if (CurFont <> nil) and (aText <> ';') then
  CurFont.Append(aText);
end;

procedure TdestFontTable.AddString(aText: Tl3String; aState: TddRTFState);
begin
 if CurFont <> nil then
  CurFont.JoinWith(aText);
end;

procedure TdestFontTable.AddFont;
var
 l_F: TddFontEntry;
begin
 l_F:= TddFontEntry.Create;
 try
  f_Fonts.Add(l_F);
 finally
  FreeAndNil(l_F);
 end;
end;

procedure TdestFontTable.ApplyProperty(propType: TPropType; What: Tiprop;
    Value: Longint; aState: TddRTFState);
begin
 case What of
   ipropNumber:
     begin
      AddFont;
      CurFont.Number:= Value;
     end;{ipropNumber}

   iproPAnsiCharSet:
     begin
       if CurFont <> nil then
         CurFont.CharSet:= Value;
     end;{ipropNumber}
   ipropFontFamily:
     begin
       if CurFont <> nil then
         CurFont.Family:= TFontFamily(Value);
     end;
   ipropFprq :
     begin
       if CurFont <> nil then
         CurFont.Pitch:= Value;
     end;
 end;{case What};
end;

procedure TdestFontTable.Cleanup;
begin
 FreeAndNil(f_Fonts);
 inherited Cleanup;
end;

function TdestFontTable.GetCount: Integer;
begin
  Result := f_Fonts.Count;
end;

function TdestFontTable.pm_GetCurFont: TddFontEntry;
begin
 Result := TddFontEntry(f_Fonts.Last);
end;

function TdestFontTable.pm_GetItems(Index: Integer): TddFontEntry;
begin
 Result := TddFontEntry(f_Fonts[Index]);
end;

function TdestFontTable.FontByNumber(aNumber: Integer): TddFontEntry;
var
 i: Integer;
begin
 Result := nil;
 for i := 0 to Pred(Count) do
 begin
  if Items[i].Number = aNumber then
  begin
   Result:= Items[i];
   Break;
  end;
 end;
end;

end.


