unit ddSimpleHTMLReader;
{ Базовый предок читалки HMTL }
{ $Id: ddSimpleHTMLReader.pas,v 1.23 2013/08/30 07:47:17 dinishev Exp $ }

// $Log: ddSimpleHTMLReader.pas,v $
// Revision 1.23  2013/08/30 07:47:17  dinishev
// Bug fix: Перестарался - тесты отъехали.
//
// Revision 1.22  2013/08/29 11:27:10  dinishev
// {Requestlink:480819960}
//
// Revision 1.21  2013/08/22 09:01:34  dinishev
// {Requestlink:460291228}
//
// Revision 1.20  2013/08/22 08:22:10  dinishev
// {Requestlink:460291228}. Небольшие переделки.
//
// Revision 1.19  2013/08/21 13:46:46  dinishev
// {Requestlink:460291228}. Вычистли устаревший код.
//
// Revision 1.18  2013/08/21 13:45:15  dinishev
// {Requestlink:460291228}
//
// Revision 1.17  2013/08/20 12:33:34  dinishev
// Вынос части кода за пределы WorkupText.
//
// Revision 1.16  2013/08/16 12:13:37  dinishev
// {Requestlink:460291228}. Reformat.
//
// Revision 1.15  2013/07/25 09:53:16  dinishev
// {Requestlink:460279011}
//
// Revision 1.14  2013/06/03 08:51:47  dinishev
// Cleanup
//
// Revision 1.13  2013/04/16 09:06:05  narry
// Обновление
//
// Revision 1.12  2013/04/11 16:46:29  lulin
// - отлаживаем под XE3.
//
// Revision 1.11  2011/10/13 12:02:55  narry
// Сейчас при показе справки к списку срезаются начальные пробелы (290272742)
//
// Revision 1.10  2011/10/13 08:43:31  narry
// Накопившиеся изменения
//
// Revision 1.9  2011/10/07 07:51:52  narry
// Поддержа неизвестных ключевых слов
//
// Revision 1.8  2011/10/06 11:53:20  narry
// Виртуальный метод для обработки StartKeywordChar
//
// Revision 1.7  2011/10/04 12:21:17  narry
// Рефакторинг чтения HTML
//
// Revision 1.6  2011/09/01 08:05:24  narry
// 35. Стирается пробел перед ссылкой (внимание на между "от" и датой) (278839514)
//
// Revision 1.5  2011/08/12 07:19:53  narry
// 28. Игнорировать содержимое файла после окончания html (278839269)
//
// Revision 1.4  2011/07/15 09:38:07  narry
// Ссылки съедают пробел (274825348)
//
// Revision 1.3  2011/02/07 13:02:55  narry
// K253658756. Не собирается ddHTML_r 2
//

interface

uses
 k2Reader,
 k2TagGen,

 l3Base,
 l3Types,
 l3SimpleObject,
 l3ObjectRefList,
 l3SimpleObjectRefList,

 ddDocument,
 ddRTFProperties,

 Classes,
 Graphics;

type
  TddHTMLObjType = (dd_HTMLTag, dd_HTMLText);

  TddHTMLObj = class(Tl3SimpleObject)
  private
    f_ObjType: TddHTMLObjType;
  public
    property ObjType: TddHTMLObjType read f_ObjType;
  end;

  THTMLParam = class(Tl3SimpleObject)
  private
    fKey: AnsiString;
    fRaw: AnsiString;
    fValue: AnsiString;
    f_Values: TStrings;
    function GetIntValue: Integer;
    function GetIsPercent: Boolean;
    function GetValueCount: Integer;
    function GetValues(Index: Integer): AnsiString;
    procedure SetKey(Key: AnsiString);
  protected
    procedure Cleanup; override;
  public
    constructor Create; override;
    property IntValue: Integer read GetIntValue;
    property IsPercent: Boolean read GetIsPercent;
    property Key: AnsiString read fKey write SetKey;
    property Raw: AnsiString read fRaw;
    property Value: AnsiString read fValue;
    property ValueCount: Integer read GetValueCount;
    property Values[Index: Integer]: AnsiString read GetValues;
  end;

  THTMLTag = class(TddHTMLObj)
  private
    f_IsComment: Boolean;
    f_Params: Tl3SimpleObjectRefList;
    f_TagID: Integer;
    function pm_GetIsClosed: Boolean;
    function pm_GetParamCount: Integer;
    function pm_GetParams(Index: Integer): THtmlParam;
    function pm_GetTagID: Integer;
    procedure SetParams(const aParams: AnsiString);
  protected
    procedure Cleanup; override;
  public
    constructor Create; override;
    constructor Make(aTagId: Integer; const aParams: AnsiString);
    property IsClosed: Boolean read pm_GetIsClosed;
    property ParamCount: Integer read pm_GetParamCount;
    property Params[Index: Integer]: THtmlParam read pm_GetParams;
    property TagID: Integer read pm_GetTagID;
  published
    property IsComment: Boolean read f_IsComment write f_IsComment;
  end;

  TddHTMLAnalyzeEvent = procedure (var theBreakAnalyze: Boolean) of object;
  
  TddSimpleHTMLReader = class(Tk2CustomFileParser)
  private
    f_BreakAnalyze: Boolean;
    f_isComment: Boolean;
    f_isTag: Boolean;
    f_OnAnalyze: TddHTMLAnalyzeEvent;
    f_Text: AnsiString;
    f_TokenReaded: Boolean;
  private  
    procedure AddText;
    function ClearText: AnsiString;
    function DoHTMLEntity2Char(const anEntity: AnsiString; var aChar: AnsiChar): Boolean;
    procedure CheckTextWithUTF8;
    function HTMLEntity2Char(const anEntity: AnsiString): AnsiChar;
    procedure Try2OpenNewPara;
    procedure WorkupKeyword;
    procedure WorkupSymbol;
    procedure ParseStyleTable(aStyleTable: AnsiString);
    function ParseStyle(const aStyle: Tl3PCharLen; IsLast: Bool): Boolean;
    procedure TranslateParam(aParam: AnsiString; aStyle: TddStyleEntry);
    function ConvertFontSize(aParam: AnsiString): Integer;
    function ConvertColor(aParam: AnsiString): TColor;
    function ConvertMargin(aParam: AnsiString): Integer;
  protected
    f_IsPre   : Boolean;
    f_SpecText: Boolean;
    f_IsBody  : Boolean;
    f_IsPara  : Boolean;
    f_IsHeader: Boolean;
    f_InScript: Boolean;
    f_IsStyle : Boolean;
    f_CodePage: LongInt;
    f_Document: TddDocument;
  protected
    function IsTextNotEmpty: Boolean;
    procedure AnalyzeProc(var theBreakAnalyze: Boolean);
    procedure CreateParser; virtual;
    procedure WorkupTag(aTag: THTMLTag); virtual; abstract;
    procedure OpenParagraph; virtual; abstract;
  public
    constructor Create(aOwner: Tk2TagGeneratorOwner = nil); override;
    procedure BreakAnalyze;
    procedure Read; override;
    property isComment: Boolean read f_isComment write f_isComment;
    property isTag: Boolean read f_isTag write f_isTag;
    property OnAnalyze: TddHTMLAnalyzeEvent read f_OnAnalyze write f_OnAnalyze;
  end;

const
 cp_UTF8 = -255;

implementation

uses
 StrUtils,
 SysUtils,

 JclStringConversions,

 l3Chars,
 l3String,
 l3Parser,
 l3PrimString,
 l3CustomString,
 l3ObjectRefList1,
 l3ParserInterfaces,

 ddBase,
 ddHTMLTags,
 ddHTMLParser,
 ddDocumentAtom,

 latin1,

 TypInfo;

{
***************************** TddSimpleHTMLReader ******************************
}
constructor TddSimpleHTMLReader.Create(aOwner: Tk2TagGeneratorOwner = nil);
begin
 inherited Create(nil);
 CreateParser;
 f_CodePage := cp_ANSI;
 f_InScript := False;
end;

procedure TddSimpleHTMLReader.AddText;
var
 l_LastPara: TddDocumentAtom;
begin
 if f_Text <> '' then
 begin                                    
  if f_IsBody and not f_InScript then
  begin
   Try2OpenNewPara;
   Assert(f_CodePage <> CP_Unicode);
   {!!! Предусмотреть перекодировку русского текста }
   if f_IsPara and not f_SpecText then
   begin
    f_Text := ClearText;
    l_LastPara := f_Document.LastPara;
    if (l_LastPara <> nil) and IsTextNotEmpty then 
     f_Document.LastPara.AddText(f_Text);
   end; // if f_IsPara and not f_SpecText then
  end // IsBody
  else
   if f_IsStyle then
    ParseStyleTable(f_Text);
 end; // if f_Text <> '' then
 f_Text := '';
end;

procedure TddSimpleHTMLReader.CheckTextWithUTF8;
var
 i      : Integer;
 l_WS   : Widestring;
 l_Char : LongWord;
begin
 // Делаем очистку от служебных unicode симвлов
 if TryUTF8ToUTF16(f_Text, l_WS) then
 begin
  i := 0;
  while (i < Length(l_WS)) do
  begin
   Inc(i);
   l_Char := UCS4Char(l_WS[i]);
   // Удаляем символ
   if (l_Char = 8226) then
    Delete(l_WS, i, 1)
   // Замена на читаемый символ
   else
    if (l_Char = 61623) then
    begin
     Delete(l_WS, i, 1);
     Insert('&middot;', l_WS, i);
     Inc(i, Length('&middot;'));
    end
    // Заменяем на пробел
    else
     if (l_Char > 60000) then
      l_WS[i] := #32
    // Замена символов
    else
     case l_Char of
      8211: l_WS[i] := '-'; // count: 58133
      8470: l_WS[i] := '№'; // count: 15808
      9679: l_WS[i] := '?'; // count: 4462
      8212: l_WS[i] := '-'; // count: 1283
      9472: l_WS[i] := '-'; // count: 449
      8221: l_WS[i] := '"'; // count: 324
      8220: l_WS[i] := '"'; // count: 315
      8230: l_WS[i] := ':'; // count: 320
    end; // case l_Char of
   end;
   f_Text := Utf8ToAnsi(UTF8Encode(l_WS));
 end; // if TryUTF8ToUTF16(f_Text, l_WS) then  
end;

function TddSimpleHTMLReader.DoHTMLEntity2Char(const anEntity: AnsiString; var aChar: AnsiChar): Boolean;
begin
 Result := False;
 if anEntity = '&times;' then
 begin
  Result := True;
  aChar := cc_Null;
 end; // if anEntity = '&times;' then
end;

function TddSimpleHTMLReader.HTMLEntity2Char(const anEntity: AnsiString): AnsiChar;
var
 l_Entity: AnsiString;

 procedure lp_CheckEntity;
 var
  l_ID    : Integer;
  l_Code  : Integer;
  l_EnLen : Integer;
 begin
  l_EnLen := Length(l_Entity);
  Delete(l_Entity, l_EnLen, 1); //delete the ;
  Delete(l_Entity, 1, 2); // delete the &#
  if Uppercase(l_Entity[1]) = 'X' then
   l_Entity[1] := '$'; // it's hex (but not supported!!!)
  if (Length(l_Entity) <= 3) then // we cant convert e.g. cyrillic/chinise capitals
  begin
   Val(l_Entity, l_ID, l_Code);
   if l_Code = 0 then // conversion successful
    Result := IsoCharSet[l_ID];
  end; // if (Length(Entity) <= 3) then
 end;

var
 i       : Integer;
 l_EnLen : Integer;
begin
 Result := cc_HardSpace;
 l_EnLen := Length(anEntity);
 // charset encoded entity
 if (l_EnLen > 2) and (anEntity[2] = '#') then
 begin
  l_Entity := anEntity;
  lp_CheckEntity;
 end // if (l_EnLen > 2) and (Entity[2] = '#') then
 else
  if not DoHTMLEntity2Char(anEntity, Result) then
  begin
   l_Entity := anEntity;
   l_Entity[l_EnLen] := cc_SemiColon;
   for i := 1 to cnEntityCount do
    if l_Entity = carEntities[i].rName then
    begin
     Result := IsoCharSet[carEntities[i].rCharID];
     Break;
    end; // if Entity = Entities[j,1] then
  end;
end;

function TddSimpleHTMLReader.ClearText: AnsiString;
var
 l_Pos    : Integer;
 l_Len    : Integer;
 l_Char   : AnsiChar;
 l_Entity : AnsiString;
 l_NewLen : Integer;
 l_EnStart: Integer;
begin
 if f_CodePage = cp_UTF8 then
  CheckTextWithUTF8;
 l_Len := Length(f_Text);
 SetLength(Result, l_Len);
 l_Pos := 1;
 l_NewLen := 1;
 while l_Pos <= l_Len do
 begin
  l_Char := f_Text[l_Pos];
  case l_Char of
   cc_Tab: l_Char := cc_HardSpace;
   cc_HardEnter: begin
    l_Char := cc_HardSpace;
    Inc(l_Pos);
    if (l_Pos > l_Len) or (f_Text[l_Pos] <> cc_SoftEnter) then 
     Dec(l_Pos);
   end;
   '&': begin
    l_EnStart := l_Pos;
    while (f_Text[l_Pos] <> cc_SemiColon) and (f_Text[l_Pos] <> cc_HardSpace) do
    begin
     Inc(l_Pos);
     if l_Pos > l_Len then
     begin
      Dec(l_Pos);
      Break;
     end; // if l_Pos > l_Len then
    end; // while (l_Char <> cc_SemiColon) or (l_Char <> cc_HardSpace) do
    l_Entity := Copy(f_Text, l_EnStart, l_Pos - l_EnStart + 1);
    l_Char := HTMLEntity2Char(l_Entity);
   end;
  end; // case l_Char of
  if l_Char <> cc_Null then
  begin
   Result[l_NewLen] := l_Char;
   Inc(l_NewLen);
  end; // if l_Char <> cc_Null then
  if l3IsWhiteSpace(l_Char) then
   while (l_Pos <= l_Len) and l3IsWhiteSpace(f_Text[l_Pos]) do
    Inc(l_Pos)
  else
   Inc(l_Pos);
 end; // while l_Pos <= l_Len do
 SetLength(Result, l_NewLen - 1);
end;

procedure TddSimpleHTMLReader.AnalyzeProc(var theBreakAnalyze: Boolean);
begin
 if Assigned(f_OnAnalyze) then f_OnAnalyze(theBreakAnalyze);
end;

procedure TddSimpleHTMLReader.BreakAnalyze;
begin
 f_BreakAnalyze:= True;
end;

procedure TddSimpleHTMLReader.CreateParser;
var
 l_Parser: TddHTMLParser;
begin
 l_Parser:= TddHTMLParser.Create;
 try
  Parser:= l_Parser;
 finally
  FreeAndNil(l_Parser);
 end;
end;

procedure TddSimpleHTMLReader.Read;
begin
 f_BreakAnalyze:= False;
 f_IsPre:= False;
 with Parser do
 begin
  f_TokenReaded:= False;
  while (not Parser.Filer.EOF) and (not f_BreakAnalyze) do
  begin
   if not f_TokenReaded then
    NextTokenSP
   else
    f_TokenReaded:= False;
   if TokenType = l3_ttKeyword then
    WorkupKeyword
   else
   if TokenType in [l3_ttSingleChar, l3_ttSymbol] then
    WorkupSymbol;
  end;
 end;
end;

procedure TddSimpleHTMLReader.WorkupKeyword;
var
 l_TempKey: ShortString;
 l_Params: AnsiString;
 l_TagID: Integer;
 l_Count: Integer;
 l_Tag: ThtmlTag;
begin
 AddText;
 // нужно искать параметры тэга
 l_Params:= '';
 l_TagID:= Parser.Keyword.StringID;
 if Abs(l_TagID) = tidH then
  l_TempKey:= Parser.Keyword.AsString
 else
  if Abs(l_TagID) = tidPre then
   f_IsPre := l_TagID > 0;
 Parser.WhiteSpace := l3_DefaultParserWhiteSpace - [#13, #10, #32];
 Parser.WordChars  := l3_DefaultParserWordChars + cc_ANSIRussian + cc_Digits + [#13,#10] + ['[',']'];
 Parser.CheckKeyWords := False;
 try
  l_Count:= 1;
  parser.NextTokenSP;
  while (l_Count > 0) and (Parser.TokenType <> l3_ttEOF) do
  begin
   if (Parser.TokenType = l3_ttSingleChar) then
   begin
    if (Parser.TokenChar = '>') then
     Dec(l_Count)
    else
    if (Parser.TokenChar = '<') then
     Inc(l_Count)
    else
    if (Abs(l_TagID) = tidH) and (Parser.TokenChar in cc_Digits) then
    begin
     l_TagID:= Parser.Keywords.KeywordByName[l_TempKey+Parser.TokenChar].StringID;
     continue;
    end
   end;
   if l_Count > 0 then
   begin
    if Parser.TokenType = l3_ttEOL then
     l_Params:= l_Params + cc_EOL
    else
     l_Params:= l_Params + Parser.TokenString;
    parser.NextTokenSP;
   end; // l_Count > 0
  end;
 finally
  Parser.WhiteSpace:= htmlWhiteSpace;
  Parser.WordChars:= htmlWordChars;
  Parser.CheckKeyWords:= True;
 end;
 if l_TagID <> cUnknownKeyword then
 begin
  l_Tag:= ThtmlTag.Make(l_TagID, l_params);
  try
   WorkupTag(l_Tag);
  finally
   FreeAndNil(l_Tag);
  end;
 end; // l_TagID <> cUnknownKeyword
end;

procedure TddSimpleHTMLReader.WorkupSymbol;
begin
 f_Text := f_Text + Parser.TokenString;
end;

{
********************************** THTMLParam **********************************
}
constructor THTMLParam.Create;
begin
  inherited Create;
  f_Values:= TStringList.Create;
end;

procedure THTMLParam.Cleanup;
begin
  l3Free(f_Values);
  inherited;
end;

function THTMLParam.GetIntValue: Integer;
var
  S: AnsiString;
begin
  S:= Value;
  try
    if S[Length(S)] = '%' then
      Delete(S, Length(S), 1);
    Result:= StrToInt(S);
  except
    Result:= -1;
  end;
end;

function THTMLParam.GetIsPercent: Boolean;
begin
  Result:= (Value <> '') and (Value[Length(Value)] = '%');
end;

function THTMLParam.GetValueCount: Integer;
begin
  Result:= f_Values.Count;
end;

function THTMLParam.GetValues(Index: Integer): AnsiString;
begin
  Result:= f_Values.Strings[Index];
end;

procedure THTMLParam.SetKey(Key: AnsiString);
var
  l_S: AnsiString;
begin
  fValue:='';
  fRaw:=Key;
  if pos('=',key)<>0 then
   begin
    fValue:=Key;
    delete(fValue,1,pos('=',key));
    key:=copy(Key,1,pos('=',key)-1);

    if Length(fValue)>1 then
     if (fValue[1]='"') and (fValue[Length(fValue)]='"') then
      begin

       delete(fValue,1,1);
       delete(fValue,Length(fValue),1);
       l_S:= fValue;
       while Pos(';', l_S) <> 0 do // В строке несколько значений через ;
       begin
         f_Values.Add(Copy(l_S, 1, Pos(';', l_S)));
         Delete(l_S, 1, Pos(';', l_S));
         TrimLeft(l_S);
       end;
       f_Values.Add(l_S);
      end
      else
        f_Values.Add(fValue);
   end;
  fKey:=uppercase(key);
end;

{
*********************************** THTMLTag ***********************************
}
constructor THTMLTag.Create;
begin
  inherited;
  f_ObjType:= dd_htmlTag;
  f_Params:=Tl3SimpleObjectReflist.Make;
end;

constructor THTMLTag.Make(aTagId: Integer; const aParams: AnsiString);
begin
 Create;
 f_TagID:= aTagID;
 SetParams(aParams);
end;

procedure THTMLTag.Cleanup;
begin
  l3Free(f_Params);
  inherited;
end;

function THTMLTag.pm_GetIsClosed: Boolean;
begin
 Result := f_TagID < 0;
end;

function THTMLTag.pm_GetParamCount: Integer;
begin
 Result := f_Params.Count;
end;

function THTMLTag.pm_GetParams(Index: Integer): THtmlParam;
begin
 Result := THTMLParam(f_Params[index]);
end;

function THTMLTag.pm_GetTagID: Integer;
begin
 // TODO -cMM: THTMLTag.pm_GetTagID default body inserted
 Result := abs(f_TagID);
end;

procedure THTMLTag.SetParams(const aParams: AnsiString);
var
 param: AnsiString;
 l_Params: AnsiString;
 HTMLParam: THTMLParam;
 isQuote: Boolean;
 l_QuoteChar: AnsiChar;
begin
{ TODO : Нужен рефакторинг }
  f_Params.clear;
  if not IsComment then
  begin
    // Теперь разбираем параметры
    //   1. Находим '='
    //   2. Первый пробел после '=' является концом параметра
    l_Params:= aParams;
    while (Length(l_Params)>0) do
    begin
     param:='';
     isQuote:=false;
     //while (Length(aParams)>0) do
     begin
       l_Params:= TrimLeft(l_Params);
       if l_Params <> '' then
       begin
        if Pos('=', l_Params) <> 0 then  // как минимум одна пара параметров
        begin
          param:= Copy(l_Params, 1, Pos('=', l_Params));
          Delete(l_Params, 1, Pos('=', l_Params));

          l_Params:= TrimLeft(l_Params);
          if l_params <> '' then
          begin
           isQuote:= (l_Params[1] in ['"', '''']);
           if isQuote then
            l_QuoteChar:= l_Params[1]
           else
            l_QuoteChar:= #0;
           param:= param + l_Params[1];
           Delete(l_Params, 1, 1);

           while (Length(l_Params) > 0) and (not ((l_Params[1]=' ') and (isQuote=false))) do
           begin
            if l_Params[1] = l_QuoteChar then
              IsQuote:= not (IsQuote);
            param:=param+l_Params[1];
            Delete(l_Params,1,1);
           end; // while (Length(l_Params) > 0) and (not ((l_Params[1]=' ') and (isQuote=false)))
           if param<>'' then
           begin
            HTMLParam:=THTMLParam.Create;
            try
              HTMLParam.key:=param;
              f_params.add(HTMLParam);
            finally
              l3Free(HTMLParam);
            end;
           end; // Param <> ''
          end; // l_params <> ''
        end  // Pos(=) <> 0
        else
          break;
       end; // l_params <> ''
     end; // while Length(l_Params) > 0
    end; // while Length(l_Params) > 0
  end;
end;

function TddSimpleHTMLReader.IsTextNotEmpty: Boolean;
begin
 Result := f_Text <> '';
end;

procedure TddSimpleHTMLReader.Try2OpenNewPara;
begin
 if not f_IsPara and IsTextNotEmpty and
    ((f_Document.Table = nil) and ((not f_SpecText) or f_IsHeader) or
    ((f_Document.Table <> nil) and (f_Document.Table.LastRow.CellCount > 0))) then
  OpenParagraph;
end;

procedure TddSimpleHTMLReader.ParseStyleTable(aStyleTable: AnsiString);
begin
  (* таблица стилей приходит в следующем виде
    имя_стиля{формат_стиля}..
    формат_стиля - параметр:значение;..
   *)
  if aStyleTable <> '' then
   l3ParseWordsEx(l3PCharLen(aStyleTable), ParseStyle, ['}']);
end;

function TddSimpleHTMLReader.ParseStyle(const aStyle: Tl3PCharLen; IsLast: Bool):
    Boolean;
var
 l_StyleEntry: TddStyleEntry;

 function l_TranslateParam(const aStr : Tl3PCharLen;
                           IsLast     : Bool): Bool;
 begin//l_TranslateParam
  Result := true;
  TranslateParam(l3PCharLen2String(aStr), l_StyleEntry);
 end;//l_TranslateParam

var
 l_Style     : AnsiString;
 l_StyleName : AnsiString;
begin
 Result := true;
 l_Style := Trim(l3PCharLen2String(aStyle));
 if l_Style <> '' then
 begin
  l_StyleName := Trim(Copy(l_Style, 1, Pred(Pos('{', l_Style))));
  l_StyleEntry := f_Document.StyleByName(l_StyleName).Use;

  if l_StyleEntry = nil then
  begin
   l_StyleEntry := TddStyleEntry.Create;
   l_StyleEntry.AsString:= l_StyleName;
   if l_StyleEntry.AsWStr.S[0] = '.' then
    (l_StyleEntry As Tl3CustomString).Delete(0, 1);
  end
  else
   l_StyleEntry.Clear;
  try
   Delete(l_Style, 1, Pos('{', l_Style));
   l3ParseWordsExF(l3PCharLen(l_Style), l3L2WA(@l_TranslateParam), [';']);
   f_Document.AddStyle(l_StyleEntry);
  finally
   l3Free(l_StyleEntry);
  end;//try.finally
 end; 
end;

procedure TddSimpleHTMLReader.TranslateParam(aParam: AnsiString; aStyle: TddStyleEntry);
var
  l_ParamName, l_ParamValue: AnsiString;
  l: Integer;
  l_Margin: Integer;
begin
   {параметр:значение;}
  l:= Pos(':', aParam);
  l_ParamName:= Copy(aParam, 1, Pred(l));
  l_ParamValue:= Copy(aParam, Succ(l), Length(aParam)-l);
  if l_ParamName = 'font-size' then
   aStyle.CHP.FontSize:= ConvertFontSize(l_ParamValue)
  else
  if l_ParamName = 'font-family' then
   (*
   font-family
   Value: [[<family-name> | <generic-family>],]* [<family-name> | <generic-family>]
   Initial: UA specific
   Applies to: all elements
   Inherited: yes
   Percentage values: N/A
   *)
  begin
   aStyle.CHP.FontNumber:= f_Document.AddFont(l_ParamValue);
   aStyle.CHP.FontName:= l_ParamValue;
  end
  else
  if l_ParamName = 'font-weight' then
   (*
   font-weight
   Value: normal | bold | bolder | lighter | 100 | 200 | 300 | 400 | 500 | 600 | 700 | 800 | 900
   Initial: normal
   Applies to: all elements
   Inherited: yes
   Percentage values: N/A
   *)
  begin
   aStyle.CHP.Bold:= l_ParamValue <> 'normal';
  end
  else
  if l_ParamName = 'font-style' then
   (*
   font-style
   Value: normal | italic | oblique
   Initial: normal
   Applies to: all elements
   Inherited: yes
   Percentage values: N/A
   *)
   aStyle.CHP.Italic:= l_ParamValue <> 'normal'
  else
  if l_ParamName = 'color' then
   (*
   color
   Value: <color>
   Initial: UA specific
   Applies to: all elements
   Inherited: yes
   Percentage values: N/A
   *)
   aStyle.CHP.FColor:= ConvertColor(l_ParamValue)
  else
  if l_ParamName = 'background-color' then
   (*
   background-color
   Value: <color> | transparent
   Initial: transparent
   Applies to: all elements
   Inherited: no
   Percentage values: N/A
   *)
   aStyle.CHP.BColor:= ConvertColor(l_ParamValue)
  (*
  text-decoration
  Value: none | [ underline || overline || line-through || blink ]
  Initial: none
  Applies to: all elements
  Inherited: no, but see clarification below
  Percentage values: N/A
  *)
  else
  if Pos('margin', l_ParamName) <> 0 then
   (*
   margin-left, margin-right, margin-top, margin-bottom, margin
   Value: [ <length> | <percentage> | auto ]{1,4} (for 'margin' property)
   Initial: 0
   Applies to: all elements
   Inherited: no
   Percentage values: refer to parent's width
   *)
  begin
   l_Margin:= ConvertMargin(l_ParamValue);
   if l_ParamName = 'margin-left' then
    aStyle.PAP.xaLeft:= l_Margin
   else
   if l_ParamName = 'margin-right' then
    aStyle.PAP.xaRight:= l_Margin
   else
   if l_ParamName = 'margin-top' then
    aStyle.PAP.Before:= l_Margin
   else
   if l_ParamName = 'margin-bottom' then
    aStyle.PAP.After:= l_Margin
   else
   if l_ParamName = 'margin' then
   begin
    aStyle.PAP.xaLeft:= l_Margin;
    aStyle.PAP.xaRight:= l_Margin;
    aStyle.PAP.Before:= l_Margin;
    aStyle.PAP.After:= l_Margin;
   end;
  end;
end;

function TddSimpleHTMLReader.ConvertFontSize(aParam: AnsiString): Integer;
begin
  (*
  font-size
  Value: <absolute-size> | <relative-size> | <length> | <percentage>
  Initial: medium
  Applies to: all elements
  Inherited: yes
  Percentage values: relative to parent element's font size
  *)
  Result := 10;
  if Pos('pt', aParam) <> 0 then
  begin
   Result:= 2*StrToIntDef(Copy(aParam, 1, Pred(Pos('pt', aParam))), 10);
  end
end;

function TddSimpleHTMLReader.ConvertColor(aParam: AnsiString): TColor;
begin
  if aParam[1] = '#' then
  begin
   aParam[1]:= '$';
   Result := StringToColor(aParam);
  end
  else
   Result:= clDefault;
end;

function TddSimpleHTMLReader.ConvertMargin(aParam: AnsiString): Integer;
begin
  if AnsiEndsText('px', aParam) then
   Result:= StrToIntDef(Copy(aParam, 1, Pred(Pos('px', aParam))), propUndefined)
  else
   Result := propUndefined;
end;

end.
