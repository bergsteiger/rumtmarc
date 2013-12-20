unit evStructWriter;

{ Ѕиблиотека "Ёверест"     }
{ јвтор: Ћюлин ј.¬. ©      }
{ ћодуль: evStructWriter - }
{ Ќачат: 17.09.2001 11:02  }
{ $Id: evStructWriter.pas,v 1.17 2011/05/18 12:08:13 lulin Exp $ }

// $Log: evStructWriter.pas,v $
// Revision 1.17  2011/05/18 12:08:13  lulin
// {RequestLink:266409354}.
//
// Revision 1.16  2008/06/20 14:49:01  lulin
// - используем префиксы элементов.
//
// Revision 1.15  2007/12/04 12:47:49  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.14.14.1  2005/10/06 07:31:56  lulin
// - cleanup.
//
// Revision 1.14  2005/01/24 11:43:18  lulin
// - new behavior: при освобождении заглушки очищаем указатель на нее.
//
// Revision 1.13  2004/09/21 12:55:53  lulin
// - Release заменил на Cleanup.
//
// Revision 1.12  2004/01/06 15:10:20  law
// - bug fix.
//
// Revision 1.11  2003/03/05 16:23:15  law
// - new behavior: добавлена возможность брать значение строки из целочисленного параметра директивы.
//
// Revision 1.10  2003/03/05 15:15:17  law
// - new behavior: добавлена возможность брать значение целочисленного параметра директивы пр€мо из строки.
//
// Revision 1.9  2003/03/05 13:19:43  law
// - new behavior: добавлена директива {.
//
// Revision 1.8  2001/09/19 15:53:34  law
// no message
//
// Revision 1.7  2001/09/18 13:01:30  law
// - new method: TevStructWriter.WriteSeg.
//
// Revision 1.6  2001/09/18 12:16:39  law
// - new behavior: TevStructWriter.Write добавлена директива %[ - начало блока использу€ параметры объекта (_Tl3Base) в списке параметров.
//
// Revision 1.5  2001/09/18 11:39:08  law
// - new behavior: TevStructWriter.Write добавлены директивы дл€ записи списков и блоков.
//
// Revision 1.4  2001/09/17 16:34:57  law
// - new behavior: TevStructWriter.Write добавлены директивы %+ и %-.
//
// Revision 1.3  2001/09/17 16:09:09  law
// - new behavior: в TevStructWriter.Write введены значени€ параметров после директивы ('<') и начата подготовка дл€ рекурсивного применени€ шаблонов.
//
// Revision 1.2  2001/09/17 14:25:06  law
// - new behavior: методу TevStructWriter.Write добавлена директива %# - конец параграфа.
//
// Revision 1.1  2001/09/17 12:24:58  law
// - new unit: evHAFPainter.
//

{$I evDefine.inc }

interface

uses
  l3Types,
  l3Base,
  l3ProtoObject,

  k2TagGen
  ;

type
  TevStructType = (ev_stPlain, ev_stKeyWord, ev_stComment, ev_stString);

  TevStructWriterAction = function (anObject: TObject; IsLast: Bool): Bool;
  
  TevStructWriter = class(Tl3ProtoObject)
    private
    // property fields
      f_Generator       : Tk2TagGenerator;
      f_Level           : Long;
      f_BlockHandle     : Long;
      f_Text            : Tl3String;
      f_SegmentsStarted : Bool;
      f_InHyperlinks    : Bool;
      f_ParaStarted     : Bool;
      f_WriteLevel      : Long;
      f_Handle          : Long;
    protected
    // property methods
      procedure pm_SetGenerator(Value: Tk2TagGenerator);
        {-}
    protected
    // internal methods
      procedure Cleanup;
        override;
        {-}
      procedure OpenLevel;
        {-}
      procedure CloseLevel;
        {-}
      procedure ClosePara;
        {-}
      procedure OpenBlock(aDescrObject : Tl3Base = nil);
        overload;
        {-}
      procedure OpenBlock(anID : Long);
        overload;
        {-}
      procedure CloseBlock;
        {-}
      procedure WriteSeg(aText       : String;
                         aStructType : TevStructType);
        {-}
    public
    // public methods
      constructor Create(anOwner: TObject = nil);
        override;
        {-}
      procedure Write(const aFormatStr : String;
                      const Values     : array of const);
        {-}
    public
    // public properties
      property Generator: Tk2TagGenerator
        read f_Generator
        write pm_SetGenerator;
        {-}
      property BlockHandle: Long
        read f_BlockHandle
        write f_BlockHandle;
        {-}
  end;//TevStructWriter

function  evL2SWA(Action: Pointer): TevStructWriterAction;
  {* - делает заглушку дл€ локальной процедуры. }
procedure evFreeSWA(var aStub: TevStructWriterAction);
  {* - освобождает заглушку дл€ локальной процедуры. }

implementation

uses
  SysUtils,
  
  l3Chars,
  l3String,
  
  k2Tags,

  evConst,

  evdStyles,
  evSegmentsListConst
  ;

// start class TevStructWriter

constructor TevStructWriter.Create(anOwner: TObject = nil);
  //override;
  {-}
begin
 inherited;
 f_Text := Tl3String.Create;
end;

procedure TevStructWriter.pm_SetGenerator(Value: Tk2TagGenerator);
  {-}
begin
 l3Set(f_Generator, Value);
end;

procedure TevStructWriter.Cleanup;
  //override;
  {-}
begin
 l3Free(f_Text);
 Generator := nil;
 inherited;
end;

procedure TevStructWriter.ClosePara;
begin//l_ClosePara
 with Generator do begin
  if f_SegmentsStarted then begin
   Finish;
   Finish;
   f_InHyperlinks := false;
   f_SegmentsStarted := false;
  end;//l_SegmentsStarted
  if not f_Text.Empty then begin
   if not f_ParaStarted then begin
    StartChild(k2_idTextPara);
    f_ParaStarted := true;
   end;//not l_ParaStarted
   AddIntegerAtom(k2_tiFirstIndent, f_Level * evInchMul div 10{ + aDelta * evInchMul div 16});
   AddIntegerAtom(k2_tiLeftIndent, (f_Level + 1) * evInchMul div 10);
   AddStringAtom(k2_tiText, f_Text, true);
  end;//not f_Text.Empty
  if f_ParaStarted then begin
   Finish;
   f_ParaStarted := false;
  end;//l_ParaStarted
 end;//with Generator
 f_Text.Clear;
 f_Handle := 0;
end;//l_ClosePara

procedure TevStructWriter.WriteSeg(aText       : String;
                                   aStructType : TevStructType);

 procedure l_StartSeg(aHyperlink: Bool);

  procedure l_StartLayer;
  begin
   with Generator do begin
    StartChild(k2_idSegmentsLayer);
    if aHyperlink then begin
     AddIntegerAtom(k2_tiHandle, ev_slHyperlinks);
     f_InHyperlinks := true;
    end else begin
     AddIntegerAtom(k2_tiHandle, ev_slView);
     f_InHyperlinks := false;
    end;
   end;//with aGenerator
  end;

 var
  l_Length : Long;
 begin
  with Generator do begin
   if not f_ParaStarted then begin
    StartChild(k2_idTextPara);
    f_ParaStarted := true;
   end;//not l_ParaStarted
   if f_SegmentsStarted then begin
    if (f_InHyperlinks <> aHyperlink) then begin
     Finish;
     l_StartLayer;
    end;//l_InHyperlinks <> aHyperlink
   end else begin
    StartTag(k2_tiSegments);
    l_StartLayer;
    f_SegmentsStarted := true;
   end;//not l_SegmentsStarted
   if aHyperlink then
    StartChild(k2_idHyperlink)
   else
    StartChild(k2_idTextSegment);
   l_Length := f_Text.Len;
   AddIntegerAtom(k2_tiStart, Succ(l_Length));
   AddIntegerAtom(k2_tiFinish, l_Length + Length(aText));
  end;//with Generator 
 end;

begin//WriteSeg
 if (aText <> '') then begin
  with Generator do begin
   if (aStructType <> ev_stPlain) then begin
    if aStructType = ev_stComment then
     aText := '// ' + aText;
    l_StartSeg(false);
    try
     if (aStructType = ev_stKeyWord) then begin
      StartTag(k2_tiFont);
      try
       AddBoolAtom(k2_tiBold, true);
      finally
       Finish;
      end;//try..finally
      //aStructType = ev_stKeyWord
     end else if (aStructType = ev_stComment) then
      AddIntegerAtom(k2_tiStyle, ev_saTxtComment)
     else if (aStructType = ev_stString) then
      AddIntegerAtom(k2_tiStyle, ev_saColorSelection);
    finally
     Finish;
    end;//try..finally
   end;//aStructType <> ev_stPlain
   if (f_Handle <> 0) then begin
    l_StartSeg(true);
    try
     AddIntegerAtom(k2_tiHandle, f_Handle);
     StartChild(k2_idAddress);
     try
      AddIntegerAtom(k2_tiSubID, f_Handle);
     finally
      Finish;
     end;//try..finally
    finally
     Finish;
    end;//try..finally
   end;//f_Handle <> 0
   f_Text.Append(l3PCharLen(aText));
  end;//with Generator
 end;//aText <> ''
end;//WriteSeg

procedure TevStructWriter.Write(const aFormatStr : String;
                                const Values     : array of const);
  {-}

var
 l_ParamIndex : Long;
 l_Index      : Long;
 l_Length     : Long;

 function l_ExtractParam(out theParam: String; Skip: Bool = false): Bool;
 var
  l_Char : Char;
 begin//l_ExtractParam
  theParam := '';
  Result := false;
  if (l_Index < l_Length) then begin
   if (aFormatStr[Succ(l_Index)] = '<') then begin
    Result := true;
    Inc(l_Index);
    Inc(l_Index);
    while (l_Index <= l_Length) do begin
     l_Char := aFormatStr[l_Index];
     if (l_Char = '>') then
      break
     else
      theParam := theParam + l_Char;
     Inc(l_Index);
    end;//while (l_Index <= l_Length)
    if (theParam = '') AND Skip then
     Inc(l_Index);
   end;//aFormatStr[..
  end;//l_Index < l_Length
 end;//l_ExtractParam

 function l_ParamStr(Skip: Bool = false): String;
 begin
  if l_ExtractParam(Result, Skip) then
   Exit;
  with TVarRec(Values[l_ParamIndex]) do
   Case VType of
    vtInteger : Result := IntToStr(VInteger);
    vtChar : Result := VChar;
    vtString : Result := VString^;
    vtANSIString : Result := String(VANSIString);
    vtObject :
     if (VObject Is Tl3CustomString) then
      Result := Tl3CustomString(VObject).AsString;
   end;//Case VType
  if (Result = '') AND Skip then
   Inc(l_Index);
  Inc(l_ParamIndex);
 end;

 function l_ParamBool: Bool;
 begin
  with TVarRec(Values[l_ParamIndex]) do
   Case VType of
    vtBoolean: Result := VBoolean;
    else
     Result := false;
   end;//Case VType
  Inc(l_ParamIndex);
 end;

 function l_ParamInt(Skip: Bool = false): Long;
 var
  l_Param : String;
 begin
  if l_ExtractParam(l_Param, Skip) then begin
   Result := StrToInt(l_Param); 
   Exit;
  end;//l_ExtractParam
  Result := 0;
  with TVarRec(Values[l_ParamIndex]) do
   Case VType of
    vtInteger : Result := VInteger;
    vtObject :
     if (VObject Is Tl3Base) then
      Result := Tl3Base(VObject).Handle; 
   end;//Case VType
  Inc(l_ParamIndex);
 end;

 function l_ParamObject: TObject;
 begin
  with TVarRec(Values[l_ParamIndex]) do
   Case VType of
    vtObject: Result := VObject;
    else
     Result := nil;
   end;//Case VType
  Inc(l_ParamIndex);
 end;

 function l_ParamPointer: Pointer;
 begin
  with TVarRec(Values[l_ParamIndex]) do
   Case VType of
    vtPointer: Result := VObject;
    else
     Result := nil;
   end;//Case VType
  Inc(l_ParamIndex);
 end;

var
 l_IncludeNext : Bool;
 l_Prefix      : String;
 l_Suffix      : String;

 procedure l_AddParam(aStructType : TevStructType;
                      Skip        : Bool);
 var
  l_Str : String;
 begin
  l_Str := l_ParamStr(Skip);
  if l_IncludeNext then begin
   if (l_Str <> '') then begin
    f_Text.Append(l3PCharLen(l_Prefix));
    WriteSeg(l_Str, aStructType);
    f_Text.Append(l3PCharLen(l_Suffix));
   end;//
   //l_IncludeNext
  end else if Skip then
   Inc(l_Index);
  l_Prefix := '';
  l_Suffix := '';
  l_IncludeNext := true;
  f_Handle := 0;
 end;

 procedure l_ClosePara;
 begin//l_ClosePara
  ClosePara;
  l_Prefix := '';
  l_Suffix := '';
  l_IncludeNext := true;
 end;//l_ClosePara

var
 l_Last   : Long;
 l_Action : TevStructWriterAction;

 function l_WriteParam(pParam: PObject; Index: Long): Bool; far;
 begin
  if (Index = 0) then f_Text.Append(l3PCharLen(l_Prefix));
  Result := l_Action(pParam^, Index = l_Last);
  if not Result OR (Index = l_Last) then
   f_Text.Append(l3PCharLen(l_Suffix));
 end;

var
 l_Char   : Char;
 l_List   : Tl3VList;
begin
 Inc(f_WriteLevel);
 try
  l_Length := Length(aFormatStr);
  l_Index := 1;
  l_ParamIndex := 0;
  l_IncludeNext := true;
  l_Prefix := '';
  l_Suffix := '';
  while (l_Index <= l_Length) do begin
   l_Char := aFormatStr[l_Index];
   Case l_Char of
    cc_PercentSign : begin
     Inc(l_Index);
     if (l_Index <= l_Length) then begin
      l_Char := aFormatStr[l_Index];
      Case l_Char of
       cc_PercentSign : f_Text.Append(cc_PercentSign);
       'k', 'K': l_AddParam(ev_stKeyWord, l_Char = 'K');
       's', 'S': l_AddParam(ev_stPlain, l_Char = 'S');
       'c', 'C': l_AddParam(ev_stComment, l_Char = 'C');
       'j', 'J': l_AddParam(ev_stString, l_Char = 'J');
       'p' : l_Prefix := l_ParamStr;
       'f' : l_Suffix := l_ParamStr;
       'b' : l_IncludeNext := l_ParamBool;
       'h' :
        if l_IncludeNext then
         f_Handle := l_ParamInt
        else begin
         l_ParamInt;
         l_IncludeNext := true;
        end;
       '#' :
        if l_IncludeNext then
         l_ClosePara
        else
         l_IncludeNext := true;
       '+' :
        if l_IncludeNext then begin
         l_ClosePara;
         OpenLevel;
        end else
         l_IncludeNext := true;
       '-' :
        if l_IncludeNext then begin
         l_ClosePara;
         CloseLevel;
        end else
         l_IncludeNext := true;
       '<' :
        if l_IncludeNext then begin
         l_ClosePara;
         OpenBlock;
        end else
         l_IncludeNext := true;
       '[' :
        if l_IncludeNext then begin
         l_ClosePara;
         OpenBlock(l_ParamObject As Tl3Base);
        end else begin
         l_ParamObject;
         l_IncludeNext := true;
        end;//'['
       '{' :
        if l_IncludeNext then begin
         l_ClosePara;
         OpenBlock(l_ParamInt);
        end else begin
         l_ParamInt;
         l_IncludeNext := true;
        end;//'{'
       '>' :
        if l_IncludeNext then begin
         l_ClosePara;
         CloseBlock;
        end else
         l_IncludeNext := true;
       'l': begin
        l_List := l_ParamObject As Tl3VList;
        @l_Action := l_ParamPointer;
        if Assigned(l_Action) then
         try
          if l_IncludeNext AND (l_List <> nil) then with l_List do begin
           l_Last := Hi;
           IterateAllF(l3L2IA(@l_WriteParam));
          end;//l_List <> nil..
         finally
          evFreeSWA(l_Action);
         end;//try..finally
        l_Prefix := '';
        l_Suffix := '';
        l_IncludeNext := true;
       end;//'l'
      end;//Case l_Char
     end;//l_Index <= l_Length
    end;//cc_PercentSign
    else begin
     f_Text.Append(l_Char);
     l_IncludeNext := true;
    end;//else
   end;//Case l_Char
   Inc(l_Index);
  end;//while l_Index..
 finally
  Dec(f_WriteLevel);
 end;//try..finally
 if (f_WriteLevel = 0) then
  l_ClosePara;
end;

procedure TevStructWriter.OpenLevel;
  {-}
begin
 Inc(f_Level);
end;

procedure TevStructWriter.CloseLevel;
  {-}
begin
 Dec(f_Level);
end;

procedure TevStructWriter.OpenBlock(anID : Long);
  //overload;
  {-}
begin
 ClosePara;
 OpenLevel;
 OpenLevel;
 Generator.StartChild(k2_idBlock);
  Generator.AddIntegerAtom(k2_tiHandle, anID);
end;

procedure TevStructWriter.OpenBlock(aDescrObject : Tl3Base = nil);
var
 l_Name : String;
begin
 ClosePara;
 OpenLevel;
 OpenLevel;
 Generator.StartChild(k2_idBlock);
 if (aDescrObject = nil) then begin
  Inc(f_BlockHandle);
  Generator.AddIntegerAtom(k2_tiHandle, BlockHandle)
 end else begin
  Generator.AddIntegerAtom(k2_tiHandle, aDescrObject.Handle);
  l_Name := aDescrObject.Name.AsString;
  if (l_Name <> '') then
   Generator.AddStringAtom(k2_tiShortName, l_Name);
 end;
end;

procedure TevStructWriter.CloseBlock;
begin
 ClosePara;
 Generator.Finish;
 CloseLevel;
 CloseLevel;
end;

function  evL2SWA(Action: Pointer): TevStructWriterAction;
  {* - делает заглушку дл€ локальной процедуры. }
  register;
  {-}
asm
          jmp  l3LocalStub
end;{asm}

procedure evFreeSWA(var aStub: TevStructWriterAction);
  {* - освобождает заглушку дл€ локальной процедуры. }
  register;
  {-}
asm
          jmp  l3FreeLocalStub
end;{asm}

end.

