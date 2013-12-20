unit evResultFont;

{ ���������� "�������"    }
{ �����: ����� �.�.       }
{ ������: evResultFont -  }
{ �����: 17.05.2005 12:52 }
{ $Id: evResultFont.pas,v 1.34 2012/11/01 09:41:35 lulin Exp $ }

// $Log: evResultFont.pas,v $
// Revision 1.34  2012/11/01 09:41:35  lulin
// - ����� ����� � �������.
//
// Revision 1.33  2012/11/01 07:42:57  lulin
// - ������ ����������� ����������� �������� �������� �������.
//
// Revision 1.32  2012/10/26 19:11:44  lulin
// - �������� ��������� ����� ���������.
//
// Revision 1.31  2012/07/12 18:32:44  lulin
// {RequestLink:237994598}
//
// Revision 1.30  2011/11/07 07:25:49  lulin
// {RequestLink:296632270}
//
// Revision 1.29  2011/09/02 12:02:27  lulin
// {RequestLink:280006084}.
//
// Revision 1.28  2011/09/01 13:44:25  lulin
// {RequestLink:280006084}.
//
// Revision 1.27  2011/08/24 09:19:00  lulin
// - �������� ������������� ����. ��������.
//
// Revision 1.26  2010/08/13 09:08:46  dinishev
// [$200902525]
//
// Revision 1.25  2010/08/13 08:47:58  dinishev
// Cleanup
//
// Revision 1.24  2010/04/12 14:16:26  lulin
// {RequestLink:203129570}.
//
// Revision 1.23  2010/03/19 12:46:33  lulin
// {RequestLink:197497243}.
// - ��������� ������� � ������� ������.
//
// Revision 1.22  2009/07/23 16:26:16  lulin
// - ��������� �������� �� ��, ��� ������ � ������ ������ ����������� ��� ����.
//
// Revision 1.21  2009/07/23 13:42:11  lulin
// - ��������� ��������� �������� ���� ���� ����.
//
// Revision 1.20  2009/07/06 14:29:56  lulin
// - ������������ �� ����������� � ��������.
//
// Revision 1.19  2009/07/06 13:32:06  lulin
// - ������������ �� ����������� � ��������.
//
// Revision 1.18  2009/03/05 19:23:28  lulin
// - ������� �������� ������������� ����������.
//
// Revision 1.17  2009/03/04 13:32:47  lulin
// - <K>: 137470629. ���������� �������������� ����� � ������ � ������� �� �� ����� �������.
//
// Revision 1.16  2008/06/20 14:48:51  lulin
// - ���������� �������� ���������.
//
// Revision 1.15  2008/05/20 12:03:55  lulin
// - <K>: 90448469.
//
// Revision 1.14  2007/12/04 12:47:04  lulin
// - ������������� ����� � HEAD.
//
// Revision 1.2.2.21  2007/09/24 13:26:20  lulin
// - bug fix: ������������ ���������� ��� ���������� ������, ����������� � ���������� ���������� �� ��� ��� �� ��� ������� (CQ OIT5-26561, 26565).
//
// Revision 1.2.2.20  2007/09/14 13:26:06  lulin
// - ��������� � ������ B_Tag_Clean.
//
// Revision 1.2.2.19.2.2  2007/09/12 16:14:07  lulin
// - ����� �������� �������� ��-���������.
//
// Revision 1.2.2.19.2.1  2007/09/12 15:23:01  lulin
// - ����������� �� ������, ������������ ���������������� ��������� ��������.
//
// Revision 1.2.2.19  2007/09/11 18:49:58  lulin
// - ������ �������� ��������.
//
// Revision 1.2.2.18  2007/09/10 10:19:25  lulin
// - ������ �������� �����.
//
// Revision 1.2.2.17  2007/09/04 16:35:45  lulin
// - ������������� ��������� ������.
//
// Revision 1.2.2.16  2007/09/04 15:54:17  lulin
// - ����� �������� ��������.
//
// Revision 1.2.2.15  2007/07/18 15:07:19  lulin
// - ���������� �����������. ����� ���������, ������ �� ������� �� ��������.
//
// Revision 1.2.2.14  2007/01/05 14:37:19  lulin
// - cleanup.
//
// Revision 1.2.2.13  2006/12/11 12:25:07  lulin
// - cleanup.
//
// Revision 1.2.2.12  2006/12/04 15:39:37  lulin
// - ������ ������������ � ������������ � ��� ���������.
//
// Revision 1.2.2.11  2006/06/27 08:53:58  lulin
// - bug fix: ��� ������ ������������� AddTag (��� ������������� AddStyledTag) ������� ���������� �������������� �����.
//
// Revision 1.2.2.10  2005/11/09 15:28:24  lulin
// - ������� ���������� ���������� � ���������� ������.
//
// Revision 1.2.2.9  2005/10/07 11:21:14  lulin
// - �������� ���������� �������� ������.
//
// Revision 1.2.2.8  2005/06/16 16:04:44  lulin
// - cleanup: ���������������� � ���������� ���������� InevTextPara.
//
// Revision 1.2.2.7  2005/05/23 13:26:05  lulin
// - ���������� ���������, � �� ������.
//
// Revision 1.2.2.6  2005/05/20 16:30:15  lulin
// - �������� ��������� � ���������� ������ ���������.
//
// Revision 1.2.2.5  2005/05/19 13:49:44  lulin
// - ����� TevFont ������� � ��������� ������.
//
// Revision 1.2.2.4  2005/05/19 12:31:10  lulin
// - ��������� ������ � ����� � � ������� ��������� � ������� �����������.
//
// Revision 1.2.2.3  2005/05/19 10:32:04  lulin
// - cleanup.
//
// Revision 1.2.2.2  2005/05/19 10:21:41  lulin
// - cleanup.
//
// Revision 1.2.2.1  2005/05/18 12:42:47  lulin
// - ����� ����� �����.
//
// Revision 1.2.4.1  2005/05/18 12:32:09  lulin
// - ��������� ��� ��������� ����� � HEAD.
//
// Revision 1.2  2005/05/17 10:42:05  lulin
// - cleanup.
//
// Revision 1.1  2005/05/17 09:27:33  lulin
// - new unit: evResultFont.
//

{$Include evDefine.inc }

interface

uses
  Windows,

  l3Interfaces,
  l3Types,
  l3InternalInterfaces,
  l3BitArr,

  k2Base,
  k2Interfaces,
  k2Tags,
  
  evDef
  ;

type
  TevResultFontParent = Tl3PtrArray;
  TevFontArray = array [Tk2FontParam] of Integer;
  PevFontArray = ^TevFontArray;

  TevResultFont = packed object(TevResultFontParent)
   {* �������������� ����� ����������� � ���������� ��������� ������� ������������ ������. }
    private
    // internal fields
      f_FontArray    : PevFontArray;
      f_FontNameType : Tk2Type;
    public
    // public methods
      procedure Init;
        {-}
      procedure InitParam;
        {-}
      function  CheckItem(ItemIndex: Integer): LongBool;
        {-}
      function  GetItem(ItemIndex: Integer): Pointer;
        {-}
      function  SetItem(ItemIndex: Integer; Action: Tl3FreeAction; const Data): Pointer;
        {-}
      procedure Clear;
        {-}
      procedure ClearParam;
        {-}
      function  Empty: Boolean;
        {-}
      procedure AddTag(const aTag: Ik2Tag);
        {-}
      procedure AddFont(var aFont: TevResultFont);
        {* - ��������� �����. }
      procedure AddStyledTag(const aTag: Ik2Tag);
        {-}
      procedure CheckStorePlace;
        {-}
      function  GetParam(ItemIndex: Tk2FontParam): Integer;
        {-}
      procedure MakeFontArray(BlockFont: Boolean);
        {-}
      procedure ClearFontArray;
        {-}
      procedure Set2Font(const aFont: Il3Font; CorrectItalic: Boolean);
        {* - ����������� ���� Il3Font. }
      function  AsFont(CorrectItalic: Boolean): Il3Font;
        {* - ����������� � Il3Font. }
      function  AssignToAtom(const anAtom : Ik2Tag): Boolean;
        {-}  
    public
    // public properties
      property FontArray: PevFontArray
        read f_FontArray;
        {-}
  end;//TevResultFont
  PevResultFont = ^TevResultFont;

  TevResultFontEx = packed object(TevResultFont)
    private
    // internal fields
      f_IFont : array [Boolean] of Il3Font;
    public
    // public methods
      procedure ClearIFont;
        {-}
      procedure Init;
        {-}
      procedure Clear;
        {-}
      function  AsFont(CorrectItalic: Boolean; CheckNew: Boolean): Il3Font;
        {-}
  end;//TevResultFontEx
  PevResultFontEx = ^TevResultFontEx;

var
 DefaultFontRecord : TevFontArray =
  (0,                 def_FontPitch,  def_FontSize,
   def_FontBold,      def_FontItalic, def_FontUnderline,
   def_FontStrikeOut, def_FontColor,  def_BackColor,
   def_FontIndex);

implementation

uses
  Graphics,

  l3Defaults,
  l3Chars,
  l3Base,
  l3Memory,
  l3FontManager,

  k2Const,
  k2Facade,

  evdTypes,
  
  evdStyles,
  evFont,

  Style_Const
  ;

// start object TevResultFont 

var
  evFontArrays : Pl3MemoryChain = nil;
  evFontParams : Pl3MemoryChain = nil;

const
  evResultFontSize = Succ(Ord(High(TevFontArray)) - Ord(Low(TevFontArray)));

procedure TevResultFont.Init;
  {-}
begin
 f_FontArray := nil;
 Pointer(f_FontNameType) := nil;
 InitParam;
end;

procedure TevResultFont.InitParam;
  {-}
begin
 inherited Init(evResultFontSize, evFontParams);
end;

function TevResultFont.CheckItem(ItemIndex: Integer): LongBool;
  {-}
begin
 Result := inherited CheckItem(ItemIndex - Ord(Low(TevFontArray)));
end;

function TevResultFont.GetItem(ItemIndex: Integer): Pointer;
  {-}
begin
 Result := inherited GetItem(ItemIndex - Ord(Low(TevFontArray)));
end;

function TevResultFont.SetItem(ItemIndex : Integer;
                               Action    : Tl3FreeAction;
                               const Data): Pointer;
  {-}
begin
 Result := inherited SetItem(ItemIndex - k2_tiName, Action, Data);
end;

procedure TevResultFont.Clear;
  {-}
begin
 ClearParam;
 ClearFontArray;
 f_FontNameType := nil;
end;

procedure TevResultFont.ClearParam;
  {-}
begin
 inherited Clear(nil, evFontParams);
end;

function TevResultFont.Empty: Boolean;
  {-}
begin
 Result := (BitCount = 0);
end;

function __CheckExists1(ExistedProp: Pointer): Boolean;
begin
 Result := false;
end;

{$IFNDEF Nemesis}
function __CheckExists3(ExistedProp: Pointer): Boolean;
begin
 Result := True;
end;
{$ENDIF Nemesis}

function __CheckExists2(ExistedProp: Pointer): Boolean;
begin
 Result := (PLong(ExistedProp)^ = k2_TransparentValue);
end;

procedure TevResultFont.AddTag(const aTag: Ik2Tag);
  {-}

 function AssignProperty(const aSource: Ik2Tag; aProp: Tk2CustomPropertyPrim): Boolean;  
 var
  MI    : Integer;
  l_Ref : Integer;
 begin
  Result := true;
  MI := aProp.TagIndex;
  if (MI >= Ord(Low(TevFontArray))) then
  begin
   if (MI > Ord(High(TevFontArray))) then
    Result := false
   else
   begin
    l_Ref := aSource.IntRef;
    SetItem(MI, __CheckExists1, l_Ref);
   end;//MI > Ord(High(TevFontArray))
  end;//MI >= Low(TevFontArray)
 end;

var
 l_Prop    : Tk2CustomPropertyPrim;
 BC        : Integer;
 l_OldBC   : Pointer;
 l_Visible : Ik2Tag;
begin
 CheckStorePlace;
 l_Prop := aTag.TagType.Prop[k2_tiFont];
 if (f_FontNameType = nil) then
  f_FontNameType  := k2.TypeTable[Tk2TypePrim(l_Prop.AtomType).Prop[k2_tiName].AtomType.ID];
 with aTag.Attr[l_Prop.TagIndex] do
  if IsValid then
   IteratePropertiesF(L2Ik2TagIteratePropertiesAction(@AssignProperty), false);
 with aTag do
  if InheritsFrom(k2_idStyle) AND
     (IntA[k2_tiHandle] = ev_saTxtNormalANSI) then          
   l_Visible := Attr[k2_tiVisible]
  else
   l_Visible := rOwnAtom(k2_tiVisible);
 with l_Visible do
  if IsValid then begin
   if AsBool then
    BC := clDefault
   else
    BC := def_InvisibleColor;
{$IFNDEF Nemesis}
   l_OldBC := GetItem(k2_tiBackColor);
   if (l_OldBC <> nil) and (PLong(l_OldBC)^ = clDefault) then
    SetItem(k2_tiBackColor, __CheckExists3, BC)
   else
{$ENDIF Nemesis}   
    SetItem(k2_tiBackColor, __CheckExists1, BC);
  end;{..k2_tiVisible..}
 with aTag.Attr[k2_tiJustification] do
  if IsValid AND (AsLong = Ord(ev_itPreformatted)) then
  begin
   BC := Ord(fpFixed);
   SetItem(k2_tiPitch, __CheckExists1, BC);
  end;{..k2_tiJustification..}
end;

procedure TevResultFont.AddFont(var aFont: TevResultFont);
  {-}

 function AssignProperty(Source: PLong; AtomIndex: Integer): Boolean;    
 begin//AssignProperty
  Result := true;
  SetItem(AtomIndex + Ord(Low(TevFontArray)), __CheckExists2, Source^);
 end;//AssignProperty

begin
 CheckStorePlace;
 aFont.StoreF(l3L2IA(@AssignProperty));
end;

function TevResultFont.AssignToAtom(const anAtom   : Ik2Tag): Boolean;
  {-}
var
 AssignPropertyResult : Boolean absolute Result;

 function AssignProperty(aProp: PLong; Index: Integer): Boolean; 
 var
  i      : Tk2FontParam;
  l_Prop : Tk2CustomPropertyPrim;
 begin//AssignProperty
  Result := True;
  i := Tk2FontParam(Index + Ord(Low(TevFontArray)));
  if (aProp^ <> k2_TransparentValue) then
  begin
   AssignPropertyResult := true;
   with anAtom do
   begin
    l_Prop := TagType.Prop[i];
    Attr[l_Prop.TagIndex] := Tk2Type(l_Prop.AtomType).TagFromIntRef(aProp^);
   end;//with anAtom
  end;//V <> k2_TransparentValue
 end;//AssignProperty

begin
 Result := false;
 StoreF(l3L2IA(@AssignProperty));
end;

procedure TevResultFont.AddStyledTag(const aTag: Ik2Tag);
  {-}
var
 l_Tag   : Ik2Tag;
 l_Style : Ik2Tag;
begin
 if aTag.IsValid then
 begin
  l_Tag := aTag;
  while true do
  begin
   AddTag(l_Tag);
   l_Style := l_Tag.Attr[k2_tiStyle];
   if l_Style.IsValid AND not l_Style.IsSame(l_Tag) then
    l_Tag := l_Style
   else
    Break;
  end;//while true
 end;//aTag.IsValid
end;

procedure TevResultFont.CheckStorePlace;
  {-}
begin
 if inherited Empty then
  Init;
end;
  
function TevResultFont.GetParam(ItemIndex: Tk2FontParam): Integer;
  {-}
begin
 MakeFontArray(false);
 Result := f_FontArray^[ItemIndex];
end;

procedure TevResultFont.MakeFontArray(BlockFont: Boolean);
  {-}

 function BlockAssignProperty(Prop: PLong; Index: Integer): Boolean; 
 var
  i : Tk2FontParam;
 begin//BlockAssignProperty
  i := Tk2FontParam(Index + Ord(Low(TevFontArray)));
  if (Prop^ = k2_TransparentValue) then
   f_FontArray^[i] := DefaultFontRecord[i]
  else
   f_FontArray^[i] := Prop^;
  Result := true;
 end;//BlockAssignProperty

 function NonBlockAssignProperty(Prop: PLong; Index: Integer): Boolean; 
 begin//NonBlockAssignProperty
  if (Prop^ <> k2_TransparentValue) then
   f_FontArray^[Tk2FontParam(Index + Ord(Low(TevFontArray)))] := Prop^;
  Result := true;
 end;//NonBlockAssignProperty

var
 i : Tk2FontParam;
begin
 if (f_FontArray = nil) then
 begin
  evFontArrays^.AllocItem(Pointer(f_FontArray));
  if (f_FontNameType <> nil) then
   DefaultFontRecord[k2_tiName] := Integer(f_FontNameType.ValueTable.DRByName[def_FontName]);
  if BlockFont then
  begin
   for i := Low(TevFontArray) to High(TevFontArray) do
    f_FontArray^[i] := k2_TransparentValue;
   StoreF(l3L2IA(@BlockAssignProperty));
  end//BlockFont
  else
  begin
   f_FontArray^ := DefaultFontRecord;
   StoreF(l3L2IA(@NonBlockAssignProperty));
  end;//BlockFont
 end;//f_FontArray = nil
end;

procedure TevResultFont.ClearFontArray;
  {-}
begin
 evFontArrays^.FreeItem(Pointer(f_FontArray));
end;

procedure TevResultFont.Set2Font(const aFont: Il3Font; CorrectItalic: Boolean);
  {-}
var
 S       : TFontStyles;
 Sz      : Integer;
 LogFont : TObject;
begin
 if (aFont <> nil) then
 begin
  MakeFontArray(false);
  with aFont do
  begin
   Lock;
   try
    BackColor := f_FontArray^[k2_tiBackColor];
    Index := Tl3FontIndex(f_FontArray^[k2_tiIndex]);
    Pitch := TFontPitch(f_FontArray^[k2_tiPitch]);
    LogFont := TObject(f_FontArray^[k2_tiName]);
    Assert(LogFont Is Tl3LogFont);
    if (Pitch = fpFixed) AND
       not Tl3LogFont(LogFont).IsFixed then
    begin
     LogFont := l3FontManager.Fonts.DRByName[def_ANSIDOSFontName];
     Assert(LogFont Is Tl3LogFont);
    end;//Pitch = fpFixed
    Name := Tl3LogFont(LogFont).AsString;
    Sz := f_FontArray^[k2_tiSize];
    if (Index <> l3_fiNone) then
     Sz := Sz - (Sz div 4);
    Size  := Sz;
    if (f_FontArray^[k2_tiForeColor] = clWindowText) then
     ForeColor := clDefault
    else
     ForeColor := f_FontArray^[k2_tiForeColor];
    S := [];
    if Boolean(f_FontArray^[k2_tiBold]) then
     Include(S, fsBold);
    if Boolean(f_FontArray^[k2_tiUnderline]) then
     Include(S, fsUnderline);
    if Boolean(f_FontArray^[k2_tiItalic]) then
     if (not CorrectItalic OR
         Tl3LogFont(LogFont).IsTrueType) then
      Include(S, fsItalic);
    if Boolean(f_FontArray^[k2_tiStrikeOut]) then
     Include(S, fsStrikeOut);
    Style := S;
   finally
    Unlock;
   end;//try..finally
  end;//with aFont
 end;//aFont <> nil
end;

function TevResultFont.AsFont(CorrectItalic: Boolean): Il3Font;
  {-}
var
 l_Font : TevFont;
begin
 l_Font := TevFont.Create;
 try
  Result := l_Font;
  Set2Font(Result, CorrectItalic);
 finally
  l3Free(l_Font);
 end;//try..finally
end;

// start object TevResultFontEx 

procedure TevResultFontEx.ClearIFont;
  {-}
begin
 f_IFont[false] := nil;
 f_IFont[true] := nil;
end;

procedure TevResultFontEx.Init;
  {-}
begin
 inherited Init;
 Pointer(f_IFont[false]) := nil;
 Pointer(f_IFont[true]) := nil;
end;

procedure TevResultFontEx.Clear;
  {-}
begin
 inherited Clear;
 ClearIFont;
end;

function TevResultFontEx.AsFont(CorrectItalic: Boolean; CheckNew: Boolean): Il3Font;
  {-}
begin
 if (f_IFont[CorrectItalic] = nil) then
  f_IFont[CorrectItalic] := inherited AsFont(CorrectItalic)
 else
 if CheckNew then
  Set2Font(f_IFont[CorrectItalic], CorrectItalic);
 Result := f_IFont[CorrectItalic];
end;

initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\gui\Garant\Everest\evResultFont.pas initialization enter'); {$EndIf}
 evFontArrays := l3NewMemoryChain(SizeOf(TevFontArray));
 evFontParams := l3NewMemoryChain(evResultFontSize shl 2);

{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\gui\Garant\Everest\evResultFont.pas initialization leave'); {$EndIf}
end.

