unit ddRTFProperties;

// $Id: ddRTFProperties.pas,v 1.45 2013/07/12 10:37:52 dinishev Exp $

// $Log: ddRTFProperties.pas,v $
// Revision 1.45  2013/07/12 10:37:52  dinishev
// {Requestlink:422512540}
//
// Revision 1.44  2013/04/11 16:46:28  lulin
// - ���������� ��� XE3.
//
// Revision 1.43  2013/04/05 12:04:30  lulin
// - ���������.
//
// Revision 1.42  2013/01/25 05:38:51  narry
// �������� ������������� �� ������������� (407745210)
//
// Revision 1.41  2013/01/24 06:55:32  narry
// ��������� ������������ ������� (���� �� ��������)
//
// Revision 1.40  2013/01/22 12:31:30  narry
// ����������� RTFReader
//
// Revision 1.39  2010/02/24 18:16:27  lulin
// - ����������� �� ��������� � �������� ���������, ������������ � ���������� �� ������ ���������.
//
// Revision 1.38  2010/02/24 17:39:55  lulin
// - ������� �������� �������������.
//
// Revision 1.37  2009/06/24 10:58:27  narry
// - ������-�������� RTF �� OpenOffice
//
// Revision 1.36  2009/04/09 15:08:19  lulin
// [$140280550]. ���������� �����.
//
// Revision 1.35  2009/03/04 13:33:06  lulin
// - <K>: 137470629. ���������� �������������� ����� � ������ � ������� �� �� ����� �������.
//
// Revision 1.34  2008/10/13 12:39:27  narry
// - ������������� ����������
//
// Revision 1.33  2008/08/18 13:57:43  narry
// - ���������� � ������� ����� �����, �����������, �����������
//
// Revision 1.32  2008/02/20 17:22:59  lulin
// - �������� ������.
//
// Revision 1.31  2007/12/24 15:25:26  lulin
// - ������� �������� �����.
//
// Revision 1.30  2007/09/14 13:26:17  lulin
// - ��������� � ������ B_Tag_Clean.
//
// Revision 1.29.6.1  2007/09/12 19:13:23  lulin
// - bug fix: �� ��������� �������.
//
// Revision 1.29  2007/08/21 12:43:29  lulin
// - ����������� �� �������������� �����������.
//
// Revision 1.28  2007/06/04 12:16:10  narry
// - ����������� ��������������� ����� "����������"
//
// Revision 1.27  2006/11/27 15:57:10  narry
// - ������� � XML ��� nalog.ru
//
// Revision 1.26  2006/04/14 12:38:16  lulin
// - ��������� ����������� ����������.
//
// Revision 1.25  2005/06/01 16:22:33  lulin
// - remove unit: evIntf.
//
// Revision 1.24  2005/05/20 14:58:41  lulin
// - new unit: evStyleInterface.
//
// Revision 1.23  2005/03/19 16:40:02  lulin
// - �������� �������� ������.
//
// Revision 1.22  2004/09/21 12:21:05  lulin
// - Release ������� �� Cleanup.
//
// Revision 1.21  2004/06/29 14:26:45  law
// - ����������� �� ������ Tk2AtomR._Set.
//
// Revision 1.20  2004/05/12 15:10:12  narry
// - new: ���������� ��������� ���������� ������
//
// Revision 1.19  2004/04/15 14:38:39  narry
// - new property: _OneStep - ��������� ������� �������� � ���� ������
//
// Revision 1.18  2003/04/19 12:30:37  law
// - new file: ddDefine.inc.
//
// Revision 1.17  2002/10/17 13:57:06  law
// - cleanup.
//
// Revision 1.16  2002/09/19 13:41:33  law
// - cleanup and comments.
//
// Revision 1.15  2002/09/19 12:52:37  law
// - cleanup.
//
// Revision 1.14  2002/09/18 14:31:35  law
// - change: ������ ������ �� ��������� ����������� �� ��������� ������.
// - new unit: evStyleTableTools.
//
// Revision 1.13  2001/08/31 09:04:36  law
// - cleanup.
//
// Revision 1.12  2001/06/27 12:27:14  narry
// small update
//
// Revision 1.11  2001/05/29 12:47:35  narry
// Update - �������� ���������� ����� ������ �� ��� �����
//
// Revision 1.10  2001/05/29 09:39:59  narry
// Bug fix - ������ � ����������� �������
//
// Revision 1.9  2001/05/28 15:36:16  narry
// Update - ������ ���������� ������
//
// Revision 1.8  2001/04/27 09:21:08  narry
// Update - ������ ������� � ��������� ������
//
// Revision 1.7  2001/04/25 07:18:01  narry
// Update - ��������� �������� �� ������-������ ������ ������� � ���
//
// Revision 1.6  2001/04/12 12:58:49  narry
// Update - ������-������ ���������� ������ � ���
//
// Revision 1.5  2001/04/10 08:51:33  narry
// Update - ��������� �������� IsEvd �����
//
// Revision 1.4  2001/01/25 09:08:06  narry
// Fix - wrong page width, lost character format
// Add - write page break
//
// Revision 1.3  2000/12/15 15:29:55  law
// - ��������� ��������� Log � Id.
//

{$Include ddDefine.inc }

interface

Uses
  Classes,
  l3Base, l3Types, l3Date,
  RTFTypes, ddBase,
  l3NCString
  , l3StringList, l3ProtoObject, ddCharacterProperty, ddParagraphProperty;

type
  TddRTFDateTime = record
    Day: Word;
    Month: Word;
    Year: Word;
    Hour: Word;
    Min: Word;
  end;
  
  TddRTFInfo = class(Tl3Base)
  private
    f_Author: Tl3String;
    f_Category: Tl3String;
    f_Comment: Tl3String;
    f_Company: Tl3String;
//    f_CreateTime: TddRTFDateTime;
    f_Doccomm: Tl3String;
    f_EdMins: LongInt;
    f_FullName: Tl3String;
    f_Hlinkbase: Tl3String;
    f_Keywords: Tl3String;
    f_Manager: Tl3String;
    f_nofchars: LongInt;
    f_nofcharsws: LongInt;
    f_nofpages: LongInt;
    f_nofwords: LongInt;
    f_Operator: Tl3String;
//    f_RevisionTime: TddRTFDateTime;
    f_Subject: Tl3String;
    f_Title: Tl3String;
    f_vern: LongInt;
    f_Version: LongInt;
  public
    CreateTime: TddRTFDateTime;
    RevisionTime: TddRTFDateTime;
  protected
    procedure Cleanup; override;
  public
    constructor Create(anOwner: TObject); override;
    procedure Clear;
      reintroduce;
    property Author: Tl3String read f_Author;
    property Category: Tl3String read f_Category;
    property Comment: Tl3String read f_Comment;
    property Company: Tl3String read f_Company;
//    property CreateTime: TddRTFDateTime read f_CreateTime write f_CreateTime;
    property Doccomm: Tl3String read f_Doccomm;
    property EdMins: LongInt read f_EdMins write f_EdMins;
    property FullName: Tl3String read f_FullName;
    property Hlinkbase: Tl3String read f_Hlinkbase;
    property InternalVersion: LongInt read f_vern write f_vern;
    property Keywords: Tl3String read f_Keywords;
    property Manager: Tl3String read f_Manager;
    property nofchars: LongInt read f_nofchars write f_nofchars;
    property nofcharsws: LongInt read f_nofcharsws write f_nofcharsws;
    property nofpages: LongInt read f_nofpages write f_nofpages;
    property nofwords: LongInt read f_nofwords write f_nofwords;
    property Operator: Tl3String read f_Operator;
//    property RevisionTime: TddRTFDateTime read f_RevisionTime write
//            f_RevisionTime;
    property Subject: Tl3String read f_Subject;
    property Title: Tl3String read f_Title;
    property Version: LongInt read f_Version write f_Version;
  end;
  

  TddFontEntry = class(Tl3NCString)
  protected
    procedure Cleanup; override;
  public
    f_Alternate: Tl3String;
    f_CharSet: Longint;
    f_Family: TFontFamily;
    f_FontType: TFontType;
    f_Number: Integer;
    f_Panose: Tl3String;
    f_Pitch: Byte;
    procedure InitFields; override;
    procedure Assign(aSource: TPersistent); override;
    procedure BeforeAddToCache; override;
    property Alternate: Tl3String read f_Alternate;
    property CharSet: LongInt read f_CharSet write f_CharSet;
    property Family: TFontFamily read f_Family write f_Family;
    property FontType: TFontType read f_FontType write f_FontType;
    property Number: Integer read f_Number write f_Number;
    property Panose: Tl3String read f_Panose;
    property Pitch: Byte read f_Pitch write f_Pitch;
  end;

  TddFontTable = class(Tl3StringList)
  private
   function pm_GetFontNames(Index: Integer): AnsiString;
   function pm_GetFonts(Index: Integer): TddFontEntry;
  public
   property FontNames[Index: Integer]: AnsiString read pm_GetFontNames;
   property Fonts[Index: Integer]: TddFontEntry read pm_GetFonts;
  end;
  
  TddFileEntry = class(Tl3Base)
  private
    f_FileName: Tl3String;
    f_FileSource: Word;
    f_ID: LongInt;
    f_OSNum: Byte;
    f_Relative: Byte;
  public
    property FileName: Tl3String read f_FileName;
    property FileSource: Word read f_FileSource;
    property ID: LongInt read f_ID write f_ID;
    property OSNum: Byte read f_OSNum write f_OSNum;
    property Relative: Byte read f_Relative write f_Relative;
  end;

  TddColorEntry = class(Tl3ProtoObject)
  private
    f_Blue: Byte;
    f_Green: Byte;
    f_Red: Byte;
    function GetColor: LongInt;
    procedure SetColor(Value: LongInt);
  public
    property Blue: Byte read f_Blue write f_Blue;
    property Color: LongInt read GetColor write SetColor;
    property Green: Byte read f_Green write f_Green;
    property Red: Byte read f_Red write f_Red;
  end;

  TddCustomStyleEntry = class(Tl3NCString)
  private
    F_Additive: Boolean;
    F_Alt: Boolean;
    F_Auto: Boolean;
    F_BasedOn: Integer;
    F_Ctrl: Boolean;
    F_Func: Byte;
    F_KeyCode: AnsiChar;
    F_Next: Byte;
    F_Number: Integer;
    F_Shift: Boolean;
    F_StyleDef: TddStyleDef;
  public
    procedure InitFields; override;
    property Additive: Boolean read F_Additive write F_Additive;
    property Alt: Boolean read F_Alt write F_Alt;
    property Auto: Boolean read F_Auto write F_Auto;
    property BasedOn: Integer read F_BasedOn write F_BasedOn;
    property Ctrl: Boolean read F_Ctrl write F_Ctrl;
    property Func: Byte read F_Func write F_Func;
    property KeyCode: AnsiChar read F_KeyCode write F_KeyCode;
    property Next: Byte read F_Next write F_Next;
    property Number: Integer read F_Number write F_Number;
    property Shift: Boolean read F_Shift write F_Shift;
    property StyleDef: TddStyleDef read F_StyleDef write F_StyleDef;
  end;

  TddStyleEntry = class(TddCustomStyleEntry)
  private
    FCHP: TddCharacterProperty;
    FPAP: TddParagraphProperty;
    f_EvdStyle: Integer;
    f_IsEvdStyle: Boolean;
  protected
    procedure Cleanup; override;
  public
    procedure InitFields; override;
    procedure Assign(aSource: TPersistent); override;
    procedure CheckEvd;
    property CHP: TddCharacterProperty read FCHP write FCHP;
    property EvdStyle: Integer read f_EvdStyle;
    property IsEvdStyle: Boolean read f_IsEvdStyle;
    property PAP: TddParagraphProperty read FPAP write FPAP;
  end;

function RTFDateTime2DateTime(aRTFDateTime: TddRTFDateTime): TDateTime;

function StDate2RTFDateTime(aDate: TstDate): TddRTFDateTime;

function RTFDateTime2stDate(aRTFDateTime: TddRTFDateTime): TstDate;

function DateTime2RTFDateTime(aDateTime: TDateTime): TddRTFDateTime;

implementation

Uses
  SysUtils, Graphics, Windows, DateUtils,
  evStyleInterface, k2Tags,
  ddRTFKeywords, ddRTFConst, StrUtils,
  TextPara_Const,
  TextSegment_Const
  ;

function RTFDateTime2DateTime(aRTFDateTime: TddRTFDateTime): TDateTime;
begin
 with aRTFDateTime do
  if not TryEncodeDateTime(Year, Month, Day, Hour, Min, 0, 0, Result) then
   Result := Now;
end;

function StDate2RTFDateTime(aDate: TstDate): TddRTFDateTime;
var
 l_Sec, l_MSec: Word;
begin
 with Result do
  DecodeDateTime(StDateToDateTime(aDate), Year, Month, Day, Hour, Min, l_Sec, l_MSec);
end;

function RTFDateTime2stDate(aRTFDateTime: TddRTFDateTime): TstDate;
var
 l_Date: TDateTime;
begin
 with aRTFDateTime do
  if not TryEncodeDate(Year, Month, Day, l_Date) then
   l_Date := Now;
 Result:= DateTimeToStDate(l_Date);  
end;

function DateTime2RTFDateTime(aDateTime: TDateTime): TddRTFDateTime;
var
 l_Sec, l_MSec: Word;
begin
 with Result do
  DecodeDateTime(aDateTime, Year, Month, Day, Hour, Min, l_Sec, l_MSec);
end;




{ start class TRTFStyle }

{
******************************** TddStyleEntry *********************************
}
procedure TddStyleEntry.InitFields;
begin
  inherited;
  FCHP:= TddCharacterProperty.Create(nil);
  FCHP.Reset;
  FPAP:= TddParagraphProperty.Create(nil);
  f_IsEvdStyle:= False;
end;

procedure TddStyleEntry.Assign(aSource: TPersistent);
begin
 if aSource is TddStyleEntry then
 begin
  fCHP.Assign(TddStyleEntry(aSource).CHP);
  FPAP.Assign(TddStyleEntry(aSource).PAP);
  f_EvdStyle:= TddStyleEntry(aSource).EvdStyle;
  f_IsEvdStyle:= TddStyleEntry(aSource).IsEvdStyle;
 end
 else
  inherited;
end;

procedure TddStyleEntry.CheckEvd;
var
  l_StyleEv: TevStyleInterface;
  l_Num, l_N: Long;
begin
  f_IsEvdStyle:= False;
  l_StyleEv := TevStyleInterface.Create;
  try
   if StyleDef = sdParagraph then
     l_StyleEv.SelectStyledObjectType(k2_idTextPara)
   else
   if StyleDef = sdCharacter then
     l_StyleEv.SelectStyledObjectType(k2_idTextSegment);
  
   l_Num:= Number;
   for l_N:= 1 to 4 do
   begin
     if AnsiSameText(Format('HEADING %d', [l_N]), AsString) or
        AnsiSameText(Format('��������� %d', [l_N]), AsString) then
     begin
      AsString:= Format('��������� %d', [l_N]);
      case l_N of
        1 : l_Num:= -3;
        2 : l_Num:= -4;
        3 : l_Num:= -5;
        4 : l_Num:= -6;
      end; { case }
      break;
     end; { if }
   end; { for l_Num }

  if (l_Num > -7) and (l_Num < -1) then
  begin
   l_StyleEv.SelectStyle(l_Num);
   f_IsEvdStyle:= (l_StyleEv.Name = AsString) or (l_Num = -1);
  end
  else
   f_IsEvdStyle:= l_StyleEv.SelectStyle(AsString).IsValid and (UpperCase(l_StyleEv.Name) = UpperCase(AsString));

   if IsEvdStyle then
     f_EvdStyle:= l_StyleEv.Style.IntA[k2_tiHandle];//l_Num;
  finally
   l3Free(l_StyleEv);
  end;{try..finally}
end;

procedure TddStyleEntry.Cleanup;
begin
  l3Free(FCHP);
  l3Free(FPAP);
  inherited;
end;                   

{
********************************** TddRTFInfo **********************************
}
constructor TddRTFInfo.Create(anOwner: TObject);
begin
  inherited;
  f_FullName  := Tl3String.Create;
  f_Title     := Tl3String.Create;
  f_Subject   := Tl3String.Create;
  f_Author    := Tl3String.Create;
  f_Manager   := Tl3String.Create;
  f_Company   := Tl3String.Create;
  f_Operator  := Tl3String.Create;
  f_Category  := Tl3String.Create;
  f_Keywords  := Tl3String.Create;
  f_Comment   := Tl3String.Create;
  f_Doccomm   := Tl3String.Create;
  f_Hlinkbase := Tl3String.Create;
  f_Author    .AsString:= '��� "������-������"';
  f_Company   .AsString:= '��� "������-������"';
  f_DocComm   .AsString:= '�������� ������������� �� ������� ������';
end;

procedure TddRTFInfo.Clear;
begin
  f_Title     .Clear;
  f_Subject   .Clear;
  f_Author    .Clear;
  f_Manager   .Clear;
  f_Company   .Clear;
  f_Operator  .Clear;
  f_Category  .Clear;
  f_Keywords  .Clear;
  f_Comment   .Clear;
  f_Doccomm   .Clear;
  f_Hlinkbase .Clear;
end;

procedure TddRTFInfo.Cleanup;
begin
  l3Free(f_FullName);
   l3Free(f_Title);
   l3Free(f_Subject);
   l3Free(f_Author);
   l3Free(f_Manager);
   l3Free(f_Company);
   l3Free(f_Operator);
   l3Free(f_Category);
   l3Free(f_Keywords);
   l3Free(f_Comment);
   l3Free(f_DocComm);
   l3Free(f_Hlinkbase);
  inherited;
end;

{ start class TFontEntry }

{
********************************* TddFontEntry *********************************
}
procedure TddFontEntry.InitFields;
  {override;}
  {-}

begin
  inherited;
  //AsString := 'Times New Roman Cyr';
  f_Number := 0;                        {\fN}
  f_Family := ffnil;                    {\fnil\froman\fswiss\fmodern
                                        \fscript\fdecor\ftech\fbidi}
  f_CharSet := 204;                     {\fcharset}
  f_Pitch  := 0;                        {\fprq}
  if (f_Panose = nil) then
   f_Panose := Tl3String.Create;                        {\panose}
  if (f_Alternate = nil) then           {!!! - ���������� ��� ���������� ������ � ������������� ��������}
   f_Alternate := Tl3String.Create; {\falt}
  f_FontType := fttruetype;             {\ftnil\fttruetype}
end;

procedure TddFontEntry.Assign(aSource: TPersistent);
var
  Value: TddFontEntry absolute aSource;
begin
  inherited Assign(aSource);
  if (aSource Is TddFontEntry) then
  begin
   f_Family := Value.Family;            {\fnil\froman\fswiss\fmodern\fscript\fdecor\ftech\fbidi}
   f_CharSet:= Value.CharSet;           {\fcharset}
   f_Pitch  := Value.Pitch;             {\fprq}
   f_Panose := Value.Panose;            {\panose}
   f_Alternate.Assign(Value.Alternate); {\falt}
   f_FontType:= Value.FontType;         {\ftnil\fttruetype}
   CodePage:= Value.CodePage;         {\cpg}
  end;{aSource Is TFontEntry}
end;

procedure TddFontEntry.BeforeAddToCache;
  
  {override;}
  {-}
  
begin
  inherited;
  if (f_Alternate <> nil) then f_Alternate.BeforeAddToCache;
  if (f_Panose <> nil) then f_Panose.BeforeAddToCache;
end;

procedure TddFontEntry.Cleanup;
  
  {override;}
  {-}
  
begin
  l3Free(f_Alternate);
  l3Free(f_Panose);
  inherited;
end;


{
***************************** TddCustomStyleEntry ******************************
}
procedure TddCustomStyleEntry.InitFields;
begin
  inherited ;
  {FPAP:= TPAP.Create;
  FCHP:= TCHP.Create;}
  F_Number   := 0;     {\sN\csN\dsN}
  F_StyleDef := sdParagraph;  {\s\cs\ds}
  F_KeyCode  := #0; {\keycode}
  F_Shift    := False; {\shift}
  F_Ctrl     := False; {\ctrl}
  F_Alt      := False; {\alt}
  F_Func     := 0; {\fnN}
  F_Additive := False; {\additive}
  F_BasedOn  := 222;  {\sbasedonN default 222 - no style}
  F_Next     := 0; {\snextN if absent - self number}
  F_Auto     := False; {\sautoupd}
end;

{
******************************** TddColorEntry *********************************
}
function TddColorEntry.GetColor: LongInt;
begin
  Result:= RGB(RED, Green, Blue);
end;

procedure TddColorEntry.SetColor(Value: LongInt);
var
  RGB: LongInt;
begin
  RGB:= ColorToRGB(Value);
  Red:= GetRValue(RGB);
  Green:= GetGValue(RGB);
  Blue:= GetBValue(RGB);
end;

function TddFontTable.pm_GetFontNames(Index: Integer): AnsiString;
var
 l_F: TddFontEntry;
begin
 l_F:= Fonts[Index];
 Result:= IfThen(l_F = nil, '', l_F.AsString)
end;

function TddFontTable.pm_GetFonts(Index: Integer): TddFontEntry;
var
 i: Integer;
begin
  Result:= nil;
  for i:= 0 to Hi do
  begin
   if TddFontEntry(Items[I]).Number = Index then
   begin;
    Result:= TddFontEntry(Items[I]);
    break;
   end;
  end;
end;

end.
