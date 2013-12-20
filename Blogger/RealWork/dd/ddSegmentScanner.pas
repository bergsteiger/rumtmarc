unit ddSegmentScanner;

{ $Id: ddSegmentScanner.pas,v 1.17 2013/08/29 12:36:10 dinishev Exp $ }
// $Log: ddSegmentScanner.pas,v $
// Revision 1.17  2013/08/29 12:36:10  dinishev
// {Requestlink:480819960}
//
// Revision 1.16  2013/04/11 16:46:28  lulin
// - отлаживаем под XE3.
//
// Revision 1.15  2013/04/09 12:30:20  narry
// Не компилировалось
//
// Revision 1.14  2013/04/05 12:04:30  lulin
// - портируем.
//
// Revision 1.13  2013/02/14 10:49:30  narry
// Новые параметры картинки - ширина и высота
//
// Revision 1.12  2012/03/29 13:30:40  narry
// Терялась картинка
//
// Revision 1.11  2012/03/28 14:19:12  narry
// Чтение DPI
//
// Revision 1.10  2012/03/28 13:51:03  narry
// Отрезание пути при чтении картинки
//
// Revision 1.9  2012/02/28 10:14:07  dinishev
// Bug fix: не проходили тесты.
//
// Revision 1.8  2012/02/16 13:54:51  narry
// Импорт информации о картинках в тексте (336663901)
//
// Revision 1.7  2011/05/10 17:14:47  lulin
// {RequestLink:236719181}.
// №24.
//
// Revision 1.6  2010/04/06 12:23:27  narry
// - чистка кода
// - поддержка команды !ZOOM и нового параметра команды !STYLE
//
// Revision 1.5  2010/02/24 18:22:44  lulin
// - избавляемся от ненужного и вредного параметра, доставшегося в наследство от ошибок молодости.
//
// Revision 1.4  2008/02/05 09:58:00  lulin
// - выделяем базовые объекты в отдельные файлы и переносим их на модель.
//
// Revision 1.3  2008/02/01 15:14:44  lulin
// - избавляемся от излишней универсальности списков.
//
// Revision 1.2  2007/11/20 10:05:22  narry
// - первое приближение чтения формул из NSRC
//
// Revision 1.1  2007/11/06 09:09:05  narry
// - библиотека не собиралась;
//

interface

Uses
 Classes,
 l3Base,
 l3ObjectRefList
 , l3ProtoObject, l3ProtoObjectRefList;

type
  TStackItem = class(Tl3Base)
  private
    ColorSelection: Boolean;
    HLContinue: Boolean;
    Comment: Boolean;
    Hidden: Boolean;
    OutOfDate: Boolean;
    NotApplied: Boolean;
    Start{,
    Stop}: Integer;
    WithText: Boolean;
  public
    procedure Assign(SI: TPersistent); override;
    function IsOn(Ch: AnsiChar): Boolean;
  end;

  TsegSeg = class(Tl3ProtoObject)
  public
    Start: Longint;
    Stop : Longint;
    ColorSelection: Boolean;
    HLContinue: Boolean;
    Comment: Boolean;
    Hidden: Boolean;
    OutOfDate: Boolean;
    NotApplied: Boolean;
    procedure GetFromf_Stack(f_StackItem: TStackItem);
  end;

  TsegHyperLink = class(Tl3ProtoObject)
  private
    FStart: Longint;
    FStop: Longint;
    FTargets: Tl3ProtoObjectRefList;
  protected
    procedure Cleanup; override;
  public
    constructor Create;
    procedure Add(aDoc, aSub: Longint);
    property Start: Longint read FStart write FStart;
    property Stop: Longint read FStop write FStop;
    property Targets: Tl3ProtoObjectRefList read FTargets write FTargets;
  end;

 TsegTarget = class(Tl3ProtoObject)
  private
    FDoc: Longint;
    FSub: Longint;
 public
    property Doc: Longint read FDoc write FDoc;
    property Sub: Longint read FSub write FSub;
 end;

 TsegFormula = class(Tl3ProtoObject)
 private
  f_Start: Integer;
  f_Text: AnsiString;
 public
  property Start: Integer read f_Start write f_Start;
  property Text: AnsiString read f_Text write f_Text;
 end;

 

 TddSegmentScanner = class(Tl3ProtoObject)
 private
   FTopicNo: Integer;
   f_Errors: TStrings;
   f_Stack: Tl3ObjectRefList;
   f_Segments: Tl3ProtoObjectRefList;
   f_Hyperlinks: Tl3ProtoObjectRefList;
   f_Objects: Tl3ProtoObjectRefList;
   procedure CheckFormula(aText: Tl3String; aStartIndex: Integer);
   procedure CheckHyperlink(aText: Tl3String; aStartIndex: Integer; aC: AnsiChar);
   class procedure SmartTrim(Text: Tl3String);
   procedure DelLast;
   function Last: TStackItem;
   procedure OutErrorLog(aMessage: AnsiString);
 protected
  procedure Cleanup; override;
 public
  constructor Create;
  procedure Scan(aText: Tl3String; aTrim: Boolean; aJustify: AnsiChar);
   class procedure SmartSplit(var LeftText, RightText: Tl3String);
   property Errors: TStrings read f_Errors;
  property Segments: Tl3ProtoObjectRefList read f_Segments;
  property Hyperlinks: Tl3ProtoObjectRefList read f_Hyperlinks;
   property Objects: Tl3ProtoObjectRefList read f_Objects write f_Objects;
   property TopicNo: Integer read FTopicNo write FTopicNo;
 end;

 TsegPicture = class(Tl3ProtoObject)
 private
  f_BaseLineOffset: Integer;
  f_DocID: Integer;
  f_DPI: Integer;
  f_FileName: AnsiString;
  f_Height: Integer;
  f_Start: Integer;
  f_Width: Integer;
 public
  property BaseLineOffset: Integer read f_BaseLineOffset write f_BaseLineOffset;
  property DocID: Integer read f_DocID write f_DocID;
  property DPI: Integer read f_DPI write f_DPI;
  property FileName: AnsiString read f_FileName write f_FileName;
  property Height: Integer read f_Height write f_Height;
  property Start: Integer read f_Start write f_Start;
  property Width: Integer read f_Width write f_Width;
 end;


implementation

Uses
 SysUtils,
 evNSRCConst,
 l3Stream, l3Parser, l3Memory, l3Types, l3String, Math;


resourcestring
 SNSCError_UnclosedLink = 'TOPIC# %d > Незакрытая ссылка в абзаце <<%s>>';
 SNSCError_NoLinkAddress = 'Отсутствие адреса ссылки в абзаце <<%s>>';
 SNSCError_ShiftConvert = 'TOPIC# %d > Ошибка пребразования смещения ссылки "%s"';
 SNSCError_AdressConvert = 'TOPIC# %d > Ошибка пребразования адреса ссылки "%s"';
 SNSCError_LinkBadFormat = 'CRITICAL ERROR Topic#%d Ошибочный формат ссылки';

constructor TddSegmentScanner.Create;
begin
 inherited create;
 f_Segments:= Tl3ProtoObjectRefList.Make;
 f_Hyperlinks:= Tl3ProtoObjectRefList.Make;
 f_Stack:= Tl3ObjectRefList.Make;
 f_Objects:= Tl3ProtoObjectRefList.Make;
 f_Errors:= TStringList.Create;
end;

procedure TddSegmentScanner.CheckFormula(aText: Tl3String; aStartIndex: Integer);
var
 l_Finish: Long;
 l_Formula: TsegFormula;
 l_Picture: TsegPicture;
 S, l_PartText: AnsiString;
 

 function lp_FindPart(const aPart: AnsiString): Boolean;
 var
  l_S, l_F: Integer;
 begin
  Result:= False;
  l_S:= l3Pos(aText.AsPCharLen, l3PCharLen(aPart), False);
  if l_S <> -1 then
  begin
   l_S:= Succ(l_S)+Length(aPart);
   l_F:= Min(aText.FindChar(l_S, ';'), l_Finish);
   if l_F = -1 then
    l_F:= l_Finish;
   l_PartText:= Copy(aText.AsString, l_S, l_F-l_S+1);
   Result:= True;
  end; // l_S <> -1
 end; // lp_FindPart

begin
 l_Finish:= aText.FindChar(Succ(aStartIndex), ev_NSRCFormula);
 if l_Finish <> -1 then
 begin
  // Вместо формулы может приехать картинка
  if l3Pos(aText.AsPCharLen, l3PCharLen(AnsiString('PIC:')), False) <> -1 then
  begin
   // Это картинка pic:<путь к файлу с картинкой>;topic:12345;bloffs:2;height:120;width:120
   l_Picture:= TsegPicture.Create;
   try
    l_Picture.Start:= Succ(aStartIndex);
    // fileName
    if lp_FindPart('PIC:') then
     l_Picture.FileName:= l_PartText;
    // Topic
    if lp_FindPart('TOPIC:') then
     l_Picture.DocID:= StrToIntDef(l_PartText, -1);
    // BaseLineOffset
    if lp_FindPart('BLOFFS:') then
     l_Picture.BaseLineOffset:= StrToIntDef(l_PartText, 0);
    // DPI
    if lp_FindPart('RES:') then
     l_Picture.DPI:= StrToIntDef(l_PartText, 72);
    // HEIGHT
    if lp_FindPart('HEIGHT:') then
     l_Picture.Height:= StrToIntDef(l_PartText, 0);
    // WIDTH
    if lp_FindPart('WIDTH:') then
     l_Picture.Width:= StrToIntDef(l_PartText, 0);
    //
    f_Objects.Add(l_Picture);
   finally
    FreeAndNil(l_Picture);
   end;
  end
  else
  begin
   // Это формула
   l_Formula:= TsegFormula.Create;
   try
    l_Formula.Start:= Succ(aStartIndex);
    l_Formula.Text:= Copy(aText.AsString, aStartIndex+2, l_Finish-aStartIndex-1);
    f_Objects.Add(l_Formula);
   finally
    FreeAndNil(l_Formula);
   end;
  end;
  aText.Delete(aStartIndex, l_Finish-aStartIndex+1);
  aText.Insert('*', aStartIndex);
 end;
end;

procedure TddSegmentScanner.CheckHyperlink(aText: Tl3String; aStartIndex: Integer; aC: AnsiChar);
var
 j: Longint;
 k: Longint;
 H: TsegHyperLink;
 l_DocID: Longint;
 l_SubID: Longint;
 l_HyperLinks: Tl3String;
 l_LineStream: Tl3StringStream;
 l_LineParser: Tl3CustomParser;
 l_DoNotDelete: Boolean;
 l_SaveCodePage: Long;
begin
 if aText.Ch[aStartIndex] = ev_NSRCHyperlink then
 {Обработка ссылки:
   после первого ev_NSRCHyperlink следует имя ссылки, которое мы оставляем на месте.
   после второго - номера документов}
 begin
   l_DoNotDelete:= False;
   {$IFDEF AdjustPref}
   if (aC = 'P') and (Links.Count = 0) then
   begin
     j:= 0;
     while (aText.Ch[j] = ' ') do
       inc(j);
     if j = i then
       j:= 0
     else
       j:= i;
   end
   else
   {$ENDIF}
     j:= aStartIndex;
   aText.Delete(aStartIndex, 1);
   H:= TsegHyperLink.Create;
   try
     H.Start:= j+1;

     j:= aText.FindChar(Succ(j), ev_NSRCHyperlink);
     { Начался адрес ссылки }
     if j <> -1 {aText.Ch[j] = ev_NSRCHyperlink} then
     begin
       k:= j;
       H.Stop:= j{+1};
       aText.Delete(j, 1);
       l_Hyperlinks:= Tl3String.Create;
       try
        j:= aText.FindChar(Succ(j), ev_NSRCHyperlink);
        l_Hyperlinks.AssignSt(aText.St, k, j, aText.CodePage);
         if (j = -1) or (aText.Ch[j] <> ev_NSRCHyperlink) then
         begin
          l_SaveCodePage:= aText.CodePage;
          aText.CodePage:= cp_ANSI;
          OutErrorLog(aText.AsString);
          aText.CodePage:= l_SaveCodePage;
          l_DoNotDelete:= True;
         end
         else
         if l_Hyperlinks.Empty then
         begin
          l_SaveCodePage:= aText.CodePage;
          aText.CodePage:= cp_ANSI;
           OutErrorLog(Format(SNSCError_NoLinkAddress,
                   [TopicNo, aText.AsString]));
          aText.CodePage:= l_SaveCodePage;
           l_DoNotDelete:= True;
         end
         else
         begin
          l_LineParser := Tl3CustomParser.Create;
          try
           l_LineStream := Tl3StringStream.Create;
           try
            begin
             begin
              try
               l_LineStream._String:= l_Hyperlinks;
               with l_LineParser do
               begin
                CheckFiler.Stream := l_LineStream;
                try
                 CheckKeyWords := false;
                 CheckFloat := false;
                 LineComment  := '';
                 OpenComment  := '';
                 CloseComment := '';
                 WhiteSpace := [];
                 CheckInt := true;
                 WhiteSpace := [#0..#32]-[#1..#7,#9,#10,#13, #21]; //Parser.WhiteSpace;
                 WordChars := ['0'..'9'];//Parser.WordChars;
                 NextToken;
                 while (l_LineParser.TokenType <> l3_ttEOF) do
                 begin
                  {-перебираем номера документов до конца строки}
                  l_DocID := TokenInt; {-берем номер документа}
                  if l_DocID = 0 then
                  begin
                    OutErrorLog(Format(SNSCError_AdressConvert,
                               [TopicNo, l_Hyperlinks.AsString]));
                    break;
                  end
                  else
                  begin
                    NextToken; {-пропускаем номер документа}
                    if (TokenChar = '.') then
                    begin
                     NextTokenSP; {-пропускаем точку}
                     l_SubID := TokenInt; {-должен быть номер Sub'а}
                     NextTokenSP; {-пропускаем номер Sub'а}
                    end
                    else
                     l_SubID := 0;
                    if l_DocID > 0 then
                      H.Add(l_DocID, l_SubID);
                   if TokenChar = ' ' then
                    NextTokenSP;
                  end;
                 end;{while (l_LineParser.TokenType <> l3_ttEOF)}
                finally
                 Filer.Stream := nil;
                end;{try..finally}
               end;{with l_LineParser}
              finally
               l_LineStream._String := nil;
              end;{try..finally}
             end;{Parser.TokenChar = '!'}
            end;{while not EOF}
           finally
            l3Free(l_LineStream);
           end;{try..finally}
           if not H.Targets.Empty then
           begin
            HyperLinks.Add(H);
            if (Last <> nil) and (Last.Start = H.Start) then
             Last.WithText:= True;
           end;
          finally
           l3Free(l_LineParser);
          end;
         end;
       finally
         l3Free(l_Hyperlinks);
         try
          if not l_DoNotDelete then
           aText.Delete(k, j-k+1);
          { TODO -oNarry -cРазвитие : Вместо удаления текста лучше выделять его цветом }
          {
          S:= TsegSeg.Create(nil);
          try
           S.Start:= K;
           S.Stop:= j-k+1;
           Segments.Add(TObject(S));
          finally
           l3Free(s);
          end;
          }
         except
           OutErrorLog(Format(SNSCError_LinkBadFormat, [TopicNo]));
         end;
       end;
     end; // if
   finally
     l3Free(H);
   end;
 end;
end;

procedure TddSegmentScanner.Cleanup;
begin
 l3Free(f_Errors);
 l3Free(f_Stack);
 l3Free(f_Segments);
 l3Free(f_Hyperlinks);
 l3Free(f_Objects);
 inherited;
end;


function TddSegmentScanner.Last: TStackItem;
begin
 if f_Stack.Count > 0 then
   Result:= TStackItem(f_Stack.Items[Pred(f_Stack.Count)])
 else
   Result:= nil;
end;

procedure TddSegmentScanner.DelLast;
begin
  if f_Stack.Count > 0 then
    f_Stack.Delete(Pred(f_Stack.Count));
end;

procedure TddSegmentScanner.OutErrorLog(aMessage: AnsiString);
begin
 f_Errors.Add(aMessage);
end;


procedure TddSegmentScanner.Scan(aText: Tl3String; aTrim: Boolean; aJustify:
    AnsiChar);
var
  i, j, k: Longint;
  S: TsegSeg;
  H: TsegHyperLink;
  l_DocID, l_SubID: Longint;
  St: AnsiString;
  SI: TStackItem;
  l_HyperLinks: Tl3String;
  l_LineStream    : Tl3StringStream;
  l_LineParser    : Tl3CustomParser;
  l_DoNotDelete   : Boolean;
  l_SaveCodePage  : Long;


begin
 f_Errors.Clear;
 f_Segments.Clear;
 f_Hyperlinks.Clear;
 f_Stack.Clear;
 f_Objects.Clear;
  i:= 0;
  if aTrim then
    SmartTrim(aText);
  while i < aText.Len do
  begin
    if aText.Ch[i] in [ev_NSRCColorSelection..ev_NSRCComment, ev_NSRCInvisible..ev_NSRCNotApplied] then
    begin
      if (Last <> nil) and Last.IsOn(aText.Ch[i]){ and
         ((aText.Ch[i] = #5) and (i=aText.Len-1))} then
      begin { закрываем текущий сегмент }
      // сегмент может охватывать ссылку. В этом случае у него не будет текста
        if Last.WithText then
        begin
         S:= TsegSeg.Create;
         try
          S.Start:= Last.Start;
          s.GetFromf_Stack(Last);
          S.Stop:= i{+1};

          Last.WithText:= False;
          {Борьба с плохими сегментами}
//          if S.Comment or S.Hidden then
//            S.Stop:= aText.Len-1;
          {----}
          Segments.{Add}Insert(0,S);
         finally
          l3Free(s);
         end;
        end; //LastWithText
        case aText.Ch[i] of
         ev_NSRCColorSelection: Last.ColorSelection:= False;
         ev_NSRCHyperlinkCont: Last.HLContinue:= False;
         ev_NSRCComment: Last.Comment:= False;
         ev_NSRCInvisible: Last.Hidden:= False;
         ev_NSRCOutOfDate: Last.OutOfDate:= False;
         ev_NSRCNotApplied: Last.NotApplied:= False;
        end; // case
        if (Last.ColorSelection = False) and (Last.HLContinue = False) and (Last.Comment = False)
            and (Last.Hidden = False) and (Last.OutOfDate = False) and (Last.NotApplied = False) then
          DelLast;
      end
      else
      begin
        {$IFDEF AdjustPref}
        if aC = 'P' then
        begin
          j:= 0;
          while (aText.Ch[j] = ' ') do
            inc(j);
          if j = i then
            j:= 0
          else
            j:= i;
        end
        else
        {$ENDIF}
          j:= i;
        if (Last = nil) or Last.WithText then
        begin
          SI:= TStackItem.Create(nil);
         try
          SI.Start:= j+1;
          f_Stack.Add(SI);
         finally
           l3Free(si);
         end;
        end;
        //else
          case aText.Ch[i] of
            ev_NSRCColorSelection: Last.ColorSelection:= True;
            ev_NSRCHyperlinkCont: Last.HLContinue:= True;
            ev_NSRCComment: Last.Comment:= True;
            ev_NSRCInvisible: Last.Hidden:= True;
            ev_NSRCOutOfDate: Last.OutOfDate:= True;
            ev_NSRCNotApplied: last.NotApplied:= True;
          end;
      end;
      aText.Delete(i, 1);
      Dec(i);
    end
    else

    if aText.Ch[i] = ev_NSRCHyperlink then
    begin
    {Обработка ссылки:
      после первого ev_NSRCHyperlink следует имя ссылки, которое мы оставляем на месте.
      после второго - номера документов}
     CheckHyperlink(aText, i, aJustify);
     Dec(i);
    end
    else
    if aText.Ch[i] = ev_NSRCFormula then
    begin
     { 1. Извлекаем формулу
       2. Вместо нее вставляем звездочку}
     CheckFormula(aText, i);
    end
    else
    if (Last <> nil) and not Last.WithText then
    begin
     Last.WithText:= (aText.Ch[i] > ' ') or
                     ((aText.Ch[i] = ' ') and (i = 0)) or
                        ({(aText.Ch[i] = ' ') and} (aText.Ch[i] > ' ')) or
                        ((aText.Ch[i] = ' ') and not aTrim);
    end;
    inc(i);
  end;

end;

class procedure TddSegmentScanner.SmartSplit(var LeftText, RightText: Tl3String);
var
  i, j: longint;
  l_Text, l_FullText: Tl3String;
begin
 l_FullText:= Tl3String.Create;
 try
  l_FullText.CodePage:= LeftText.CodePage;
  l_FullText.Assign(LeftText);

  j:= 0;
  l_Text:= Tl3String.Create;
  l_Text.CodePage:= LeftText.CodePage;
  LeftText.Clear;
  for j:= 0 to l_FullText.Len-1 do
  begin
    if l_FullText.Ch[j] <> #10 then
      l_Text.AsString:= l_Text.AsString + l_FullText.Ch[j];
    if (j = Pred(l_FullText.Len)) or (l_FullText.Ch[j] = #10) then
    begin
      i:= 0;
      while (i < l_Text.Len) and not (l_Text.Ch[i] in ['|',#9]) do
        Inc(i);

      if l_Text.Ch[i] in ['|', #9] then
      begin
        if not RightText.Empty then
          RightText.Append(#10);

        RightText.Append(l3PCharLen(l_Text.St+i+1, l_Text.Len-i-1, l_Text.CodePage));

        if not LeftText.Empty then
          LeftText.Append(#10);

        LeftText.Append(l3PCharLen(l_Text.St, i, l_Text.CodePage));
        SmartTrim(LeftText);
        SmartTrim(RightText);
        if (LeftText.Ch[0] < #32) and (RightText.Ch[0] <> LeftText.Ch[0]) and (LeftText.Ch[0] <> ev_NSRCHyperlink) then
        begin
          i:= 0;
          while (LeftText.Ch[i] < #32) and (i < LeftText.Len) do
          begin
            RightText.Insert(LeftText.Ch[i], i);
            Inc(i);
          end;
          i:= RightText.len-1;
          while (RightText.Ch[i] < #32) and (i >= 0) do
          begin
            LeftText.Insert(RightText.Ch[i], LeftText.Len);
            Dec(i);
          end;
        end;
        l_Text.Clear;
      end;
    end;
  end;
 finally
   l3Free(l_FullText);
   l3Free(l_Text);
 end;
end;

class procedure TddSegmentScanner.SmartTrim(Text: Tl3String);
var
  i: Integer;
begin
 i:= 0;
 while (Text.Ch[i] < #33) and (i < Text.Len) do
 begin
  if (Text.Ch[i] = #32) then
   Text.Delete(i, 1)
  else
   Inc(i);
 end;
 i:= Text.Len-1;
 while (Text.Ch[i] < #33) and (i >= 0) do
 begin
  if (Text.Ch[i] = #32) then
   Text.Delete(i, 1)
  else
   Dec(i);
 end;
 for i:= 0 to Text.Len-1 do
  if Text.Ch[i] < #32 then
   if (i > 0) and (i < Text.Len-1) then
    if (Text.Ch[i-1] = ' ') and (Text.Ch[i+1] = ' ') then
     Text.Delete(i-1, 1);
end;

constructor TsegHyperLink.Create;
begin
  inherited Create;
  Targets:= Tl3ProtoObjectRefList.Make;
  Start:= -1;
  Stop:= -1;
end;

procedure TsegHyperLink.Add(aDoc, aSub: Longint);
var
  T: TsegTarget;
begin
  T:= TsegTarget.Create;
  try
    T.Doc:= aDoc;
    T.Sub:= aSub;
    Targets.Add(T);
  finally
    l3Free(T);
  end;
end;

procedure TsegHyperLink.Cleanup;
begin
  l3Free(FTargets);
  inherited ;
end;

procedure TsegSeg.GetFromf_Stack(f_StackItem: TStackItem);
begin
  if f_StackItem <> nil then
  begin
    ColorSelection:= f_StackItem.ColorSelection;
    HLContinue:= f_StackItem.HLContinue;
    Comment:= f_StackItem.Comment;
    Hidden:= f_StackItem.Hidden;
    OutOfDate:= f_StackItem.OutOfDate;
    NotApplied:= f_StackItem.NotApplied;
  end;
end;

procedure TStackItem.Assign(SI: TPersistent);
begin
  if Si <> nil then
  begin
    ColorSelection:= (Si as TStackItem).ColorSelection;
    HLContinue:= (Si as TStackItem).HLContinue;
    Comment:= (Si as TStackItem).Comment;
    Hidden:= (Si as TStackItem).Hidden;
    OutOfDate:= (Si as TStackItem).OutOfDate;
    NotApplied:= (Si as TStackItem).NotApplied;
  end;
end;

function TStackItem.IsOn(Ch: AnsiChar): Boolean;
begin
  case Ch of
    ev_NSRCHeader         : Result:= ColorSelection;
    ev_NSRCHyperlinkCont  : Result:= HLContinue;
    ev_NSRCComment        : Result:= Comment;
    ev_NSRCInvisible      : Result:= Hidden;
    ev_NSRCOutOfDate      : Result:= OutOfDate;
    ev_NSRCNotApplied     : Result:= NotApplied;
  else
    Result:= False;
  end;
end;






end.
 