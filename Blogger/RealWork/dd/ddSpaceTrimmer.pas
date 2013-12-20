unit ddSpaceTrimmer;

interface

uses
 k2TagFilter, k2Types,
 l3Types, l3Base,
 dt_Types,
 ddTypes;

type
 TddSpaceTrimmerFilter = class(Tk2TagFilter)
 private
  f_OnError: TddErrorEvent;
  procedure EraseKerning(aString: Tl3String);
  function LastNamePresent(aText: AnsiString): Boolean;
 protected
  procedure DoAddAtomEx(AtomIndex: Long; const Value: Tk2Variant); override;

 published
  property OnError: TddErrorEvent read f_OnError write f_OnError;
 end;

implementation

uses
 TextPara_Const,
 k2Tags,
 Math, StrUtils, SysUtils, l3Chars, Document_Const, l3String;

const
 cDoubleSpaces = 30;
 cWords : Array[0..5] of String = (
          'постановил', 'установил', 'постановление', 'определение', 'определил', 'решил'
          );

procedure TddSpaceTrimmerFilter.DoAddAtomEx(AtomIndex: Long; const Value: Tk2Variant);
var
 l_Value: Tk2Variant;
 l_Pos, l_Start, l_Finish, l_Delta: Integer;
 l_Str: Tl3String;
 l_Len: Integer;
 l_Msg: AnsiString;
begin
 if CurrentType.InheritsFrom(k2_idTextPara) and
    (AtomIndex = k2_tiText) and (not Value.AsString.Empty) and
    (Value.AsString.AsWStr.SCodePage <> cp_Unicode) then
 begin
  l_Str:= Value.AsString as Tl3String;
  l3Replace(l_Str.St, cc_NonReadable + [cc_SoftSpace], cc_HardSpace, l_Str.Len);
  l_Len:= l_Str.Len;
  l_Str.LTrim;
  (*
  if (l_Len - l_Str.Len > cDoubleSpaces) and InRange(l_Str.Len, 1, 15) and not LastNamePresent(l_Str.AsString) then
  begin
   l_Msg:= Format('Удалено больше %d пробелов слева "%s"', [cDoubleSpaces, l_Str.AsString]);
   if Assigned(f_OnError) then
    f_OnError(l_Msg)
   else
    l3System.Msg2Log(l_Msg);
  end;
  *)
  //l_Str.RTrim;
  (l_Str).DeleteDoubleSpace;
  if l3AllCharsInCharSet(l_Str.St, l_Str.Len, ['_']) then
   l_Str.Clear;
  EraseKerning(l_Str);
 end;
 inherited DoAddAtomEx(AtomIndex, Value);
end;

procedure TddSpaceTrimmerFilter.EraseKerning(aString: Tl3String);
var
 i, j, k, l_Word, l_Delta: Integer;
 l_Str, l_Text: AnsiString;
 l_Mistake: Boolean;

 function lp_CheckWord(aWord: Integer): Boolean;
 var
  j: Integer;
 begin
  Result:= False;
  k:= i + 6;
  l_Mistake:= False;
  while k < aString.Len do
  begin
   if not (aString.Ch[k] in [' ', ':']) then // Не нужно учитывать знаки препинания!
   begin
    l_Str:= l_Str + aString.Ch[k];
    if (Length(l_Str) <= Length(cWords[aWord])) and AnsiStartsText(l_Str, cWords[aWord]) then
     Inc(k)
    else
    begin
     l_Mistake:= True;
     break;
    end;
   end // aString.Ch[k] <> ' '
   else
   if aString.Ch[k] <> ':' then
    Inc(k)
   else
    break
  end; // while
  
  if not l_Mistake then
  // i:= k
  //else
  begin
   // У нас есть начало и конец слова
   // Start = i
   // Finish = k
   //if (aString.Ch[k] in [':']) then
   // Dec(k)
   //else
   // k:= Min(k, aString.Len);
    aString.Delete(i, k-i);
   //else
   // aString.Delete(i, Pred(k-i));
   for j:= 1 to Length(l_Str) do
    aString.Insert(l_Str[j], i+Pred(j));
   Result:= True;
  end;
 end;

begin
 // для начала нужно найти вхождение пробел_буква_пробел_буква_пробел_буква_пробел - это будет сигналом к атаке
 if aString.Len > 6 then
 begin
  i:= 0;
  while i < aString.Len do
  begin
   if (aString.Len - i > 6) and (aString.ch[i] = ' ') and (aString.ch[i+2] = ' ') and (aString.ch[i+4] = ' ') then
   begin // Начало разрядки
    if i = 1 then
    begin
     i:= 0;
     l_Text:= aString.ch[i] + aString.ch[i+2] + aString.ch[i+4];
    end
    else
     l_Text:= aString.ch[i+1] + aString.ch[i+3] + aString.ch[i+5];
    l_Word:= -1;
    for j:= 0 to Length(cWords)-1 do
     if AnsiStartsText(l_Text, cWords[j]) then
     begin
      l_Str:= l_Text;
      if lp_CheckWord(j) then
      begin
       l_Word:= j;
       break;
      end;
     end;
    if l_Word  =-1 then
     Inc(i, 6);
   end
   else
    Inc(i);
  end; // while
 end; // aString.Len > 6
end;

function TddSpaceTrimmerFilter.LastNamePresent(aText: AnsiString): Boolean;
var
 i: Integer;
begin
 // признаком фамилии считается точка после заглавной буквы
 Result := False;
 for i:= 1 to Length(aText) do
  if (aText[i] in cc_UpRussian) and (i <> Length(aText)) and (aText[Succ(i)] = '.') then
  begin
   Result:= True;
   break;
  end;
end;

end.
