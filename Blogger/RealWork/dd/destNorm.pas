unit destNorm;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "dd"
// Модуль: "w:/common/components/rtl/Garant/dd/destNorm.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::dd::RTFSupport::TdestNorm
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

interface

uses
  l3Base,
  l3Memory,
  Graphics,
  ddBase,
  ddDocumentAtom,
  ddDocumentAtomList,
  RTFtypes,
  ddRTFdestination,
  ddTable,
  ddRTFState,
  ddCharacterProperty,
  ddParagraphProperty,
  ddRTFProperties,
  ddTextParagraph,
  ddPicture,
  ddCustomRTFReader,
  k2Interfaces,
  rtfListTable
  ;

type
 TdestNorm = class(TddRTFDestination)
 private
 // private fields
   f_BorderOwner : TddBorderOwner;
   f_CurBorderPart : TddBorderParts;
   f_TabEntry : TddTab;
   f_Paragraphs : TddDocumentAtomList;
    {* Поле для свойства Paragraphs}
   f_TextBuffer : Tl3String;
    {* Поле для свойства TextBuffer}
   f_UnicodeBuffer : Tl3MemoryStream;
    {* Поле для свойства UnicodeBuffer}
 private
 // private methods
   procedure AddTable(aLevel: Integer);
   procedure Try2AddTable(aLevel: Integer);
   function FindNestedLastTable: TddTable;
   procedure ApplyToCell(aWhat: TIProp;
     aValue: LongInt;
     aCEP: TddCellProperty);
   procedure ApplyToCHP(aWhat: TIProp;
     aValue: Integer;
     aCHP: TddCharacterProperty);
   procedure ApplyToFrame(aWhat: TIProp;
     aValue: LongInt;
     aState: TddRTFState);
   procedure ApplyToPAP(What: TIProp;
     aValue: Integer;
     aPAP: TddParagraphProperty);
   procedure ApplyToRow(aWhat: TIProp;
     aValue: LongInt;
     aState: TddRTFState);
   procedure ApplyToSep(aWhat: TIProp;
     aValue: LongInt);
   procedure ApplyToStyle(aWhat: TIProp;
     aValue: LongInt;
     aState: TddRTFState);
   procedure ApplyToTAB(aWhat: TIProp;
     aValue: LongInt;
     aPAP: TddParagraphProperty);
   procedure ConvertSymbolChar(var aChar: AnsiChar;
     aCHP: TddCharacterProperty);
   function GetLastTextParaOrCreateNew(anInTable: Boolean): TddTextParagraph;
   procedure JoinPAPWithLastParaPAP(aPAP: TddParagraphProperty);
   procedure Try2ApplyParaProperty(aState: TddRTFState;
     aPara: TddTextParagraph);
 protected
 // property methods
   function pm_GetLastAtom: TddDocumentAtom;
   function pm_GetLastParagraph: TddTextParagraph;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 public
 // overridden public methods
   procedure Clear; override;
   procedure AddAnsiChar(aText: AnsiChar;
     aState: TddRTFState); override;
   procedure AddString(aText: Tl3String;
     aState: TddRTFState); override;
   procedure AddUnicodeChar(aText: Word;
     aState: TddRTFState); override;
   procedure ApplyProperty(propType: TPropType;
     What: TIProp;
     Value: LongInt;
     aState: TddRTFState); override;
   constructor Create(aRTFReader: TddCustomRTFReader); override;
   procedure ParseSymbol(Symbol: Integer;
     propType: TPropType;
     aState: TddRTFState); override;
   procedure Write(const aGenerator: Ik2TagGenerator); override;
   procedure WriteText(aText: Tl3String;
     aState: TddRTFState); override;
   function GetList(aListID: Integer): TrtfList; override;
   function GetStyle(aStyleID: Integer): TddStyleEntry; override;
 protected
 // protected methods
   function GetFontEvent(aFontID: Integer): TddFontEntry;
   function GetColor(aColorIndex: Integer): TColor;
 public
 // public methods
   function AddTextPara(aIntable: Boolean): TddTextParagraph;
   procedure AddPicture(aPicture: TddPicture;
     aState: TddRTFState);
   procedure Append(aDest: TdestNorm;
     aInSamePara: Boolean = False);
   function BufferEmpty: Boolean;
   procedure CheckLastParagraph(DestroyPara: Boolean = False);
   procedure CorrectCharset(aCHP: TddCharacterProperty;
     aText: Tl3String);
   procedure FlushTextBuffer(aState: TddRTFState);
   procedure FlushUnicodeBuffer(aState: TddRTFState);
   function LastTable(aCheckNested: Boolean): TddTable;
   procedure Unicode2Text;
 public
 // public properties
   property Paragraphs: TddDocumentAtomList
     read f_Paragraphs;
   property TextBuffer: Tl3String
     read f_TextBuffer
     write f_TextBuffer;
   property UnicodeBuffer: Tl3MemoryStream
     read f_UnicodeBuffer
     write f_UnicodeBuffer;
   property LastAtom: TddDocumentAtom
     read pm_GetLastAtom;
   property LastParagraph: TddTextParagraph
     read pm_GetLastParagraph;
 end;//TdestNorm

implementation

uses
  SysUtils,
  ddTableCell,
  ddTableRow,
  ddTextSegment,
  l3Chars,
  ddBreak,
  l3String,
  l3StringEx,
  l3Types,
  l3Interfaces,
  Windows
  ;

// start class TdestNorm

procedure TdestNorm.AddTable(aLevel: Integer);
//#UC START# *51E8D1CA0328_51D278280093_var*
var
 l_Table   : TddTable;
 l_Nested  : Boolean;
 l_OutCell : TddTableCell;
 l_LastRow : TddTableRow;
//#UC END# *51E8D1CA0328_51D278280093_var*
begin
//#UC START# *51E8D1CA0328_51D278280093_impl*
 l_Nested := aLevel > 1;
 if l_Nested then
 begin
  l_LastRow := LastTable(True).LastRow;
  l_OutCell := l_LastRow.GetLastNonClosedCellOrAddNew;
 end; // if l_Nested then
 l_Table := TddTable.Create(nil, Self);
 try
  l_Table.Level := aLevel;
  if l_Nested then
   l_OutCell.Add(l_Table)
  else
   f_Paragraphs.Add(l_Table);
 finally
  FreeAndNil(l_Table);
 end;
//#UC END# *51E8D1CA0328_51D278280093_impl*
end;//TdestNorm.AddTable

procedure TdestNorm.Try2AddTable(aLevel: Integer);
//#UC START# *51E8D1F10328_51D278280093_var*
var
 l_LastTable : TddTable;
//#UC END# *51E8D1F10328_51D278280093_var*
begin
//#UC START# *51E8D1F10328_51D278280093_impl*
 if (LastAtom = nil) or (LastAtom.AtomType <> dd_docTable) then
  AddTable(aLevel);
 if aLevel > 1 then
 begin
  l_LastTable := FindNestedLastTable;
  if (l_LastTable = nil) or (l_LastTable.Level < aLevel) then
   AddTable(aLevel);
 end // if aLevel > 1 then
 else
  if LastAtom.Closed then
   AddTable(aLevel);
//#UC END# *51E8D1F10328_51D278280093_impl*
end;//TdestNorm.Try2AddTable

function TdestNorm.FindNestedLastTable: TddTable;
//#UC START# *51E8D21A020C_51D278280093_var*
var
 l_Cell      : TddTableCell;
 l_LastTable : TddTable;
 l_TableAtom : TddDocumentAtom;
//#UC END# *51E8D21A020C_51D278280093_var*
begin
//#UC START# *51E8D21A020C_51D278280093_impl*
 Result := nil;
 if (LastAtom.AtomType = dd_docTable) then
 begin
  l_LastTable := LastTable(False);
  while l_LastTable <> nil do
  begin
   if l_LastTable.LastRow = nil then Break;
   l_Cell := l_LastTable.LastRow.LastCell;
   if l_Cell = nil then Break;
   l_TableAtom := l_Cell.LastTableAtom;
   if (l_TableAtom <> nil) and not l_TableAtom.Closed then
   begin
    l_LastTable := l_TableAtom as TddTable;
    Result := l_LastTable;
   end // if (l_TableAtom <> nil) and not l_TableAtom.Closed then
   else
    l_LastTable := nil;
  end; // while l_Cell <> nil do
 end; // if (LastAtom.AtomType = dd_docTable) then
//#UC END# *51E8D21A020C_51D278280093_impl*
end;//TdestNorm.FindNestedLastTable

procedure TdestNorm.ApplyToCell(aWhat: TIProp;
  aValue: LongInt;
  aCEP: TddCellProperty);
//#UC START# *51E8D23B01F6_51D278280093_var*
var
 l_CellClosed: Boolean;
 l_RowClosed: Boolean;
//#UC END# *51E8D23B01F6_51D278280093_var*
begin
//#UC START# *51E8D23B01F6_51D278280093_impl*
 case aWhat of
  ipropWidth :
      begin
        aCEP.Width := aValue;
        Try2AddTable(1);
        LastTable(True).ApplyCellProperty(aCEP);
        aCep.Clear;
      end;{ipropWidth}
  ipropJust  :
        aCEP.Just:= TddCellJust(aValue);
  ipropTop   :
     begin
       f_CurBorderPart:= bpTop;
       f_BorderOwner:= boCell;
     end;{ipropTop}
  ipropLeft  :
   begin
    f_CurBorderPart:= bpLeft;
    f_BorderOwner:= boCell;
   end;{ipropLeft}
  ipropBottom:
   begin
    f_CurBorderPart:= bpBottom;
    f_BorderOwner:= boCell;
   end;{ipropBottom}
  ipropRight :
   begin
    f_CurBorderPart:= bpRight;
    f_BorderOwner:= boCell;
   end;{ipropRight}
  ipropVMerged :
   if not aCEP.VMergeFirst then
    aCEP.VMerged := True;
  ipropVMergeFirst :
   begin
    aCEP.VMergeFirst := True;
   end;
  ipropMerged :
   if not aCEP.MergeFirst then
    aCEP.Merged := True;
  ipropMergedFirst : aCEP.MergeFirst := True;
  ipropColorB: aCEP.PatternBackColor:= GetColor(aValue - 1);
  ipropColorF: aCEP.PatternForeColor:= GetColor(aValue - 1);
 end;{case What}
//#UC END# *51E8D23B01F6_51D278280093_impl*
end;//TdestNorm.ApplyToCell

procedure TdestNorm.ApplyToCHP(aWhat: TIProp;
  aValue: Integer;
  aCHP: TddCharacterProperty);
//#UC START# *51E8D26202B2_51D278280093_var*
var
 l_Font: TddFontEntry;
//#UC END# *51E8D26202B2_51D278280093_var*
begin
//#UC START# *51E8D26202B2_51D278280093_impl*
 with aCHP do
 begin
  case aWhat of
    ipropAnime : ;
    ipropPos   : Pos:= TCharPosition(aValue);
    ipropHighlight : Highlight:= GetColor(aValue-1);
    ipropBold: Bold:= ByteBool(aValue);
    ipropItalic: Italic:= ByteBool(aValue);
    ipropUnderline : if not LongBool(aValue) then
                       Underline:= utNone
                     else
                       Underline:= TUnderline(aValue);
    iproPAnsiCharCaps : Caps:= TCharCapsType(aValue);
    ipropHidden  : Hidden:= ByteBool(aValue);
    ipropDeleted : ;
    iproPAnsiCharScale : ;
    iproPAnsiCharpos: ;
    ipropNumber:
     begin
      FontNumber:= aValue;
      l_Font:= GetFontEvent(FontNumber);
      if l_Font <> nil then
      begin
       FontName:= l_Font.AsString;
       FontCharSet:= l_Font.CharSet;
      end; // l_Font <> nil
     end; // ipropNumber
    ipropHeight: FontSize:= aValue;
    ipropLang: Language:= aValue;
    ipropColorF: FColor:= GetColor(aValue-1);
    ipropColorB: BColor:= GetColor(aValue-1);
    ipropStrikeout: Strikeout:= ByteBool(aValue);
    ipropDefault: Clear;
  end;
 end;
//#UC END# *51E8D26202B2_51D278280093_impl*
end;//TdestNorm.ApplyToCHP

procedure TdestNorm.ApplyToFrame(aWhat: TIProp;
  aValue: LongInt;
  aState: TddRTFState);
//#UC START# *51E8D2B103DB_51D278280093_var*
var
 tmpBorder: TddBorder;
//#UC END# *51E8D2B103DB_51D278280093_var*
begin
//#UC START# *51E8D2B103DB_51D278280093_impl*
 { TODO : Нужно починить }
  case f_BorderOwner of
   boPara: tmpBorder:= aState.PAP.Border;
   boRow : tmpBorder:= aState.TAP.Border;
   boCell: tmpBorder:= aState.CEP.Border
  else
   tmpBorder:= nil;
  end;{case BorderOwner}
 if tmpBorder <> nil then
  case aWhat of
   ipropWidth: tmpBorder.FrameWidth[f_CurBorderPart]:= aValue;
   ipropColorF: tmpBorder.FrameColor[f_CurBorderPart]:= aValue;
   ipropLineType: tmpBorder.FrameType[f_CurBorderPart]:= TddBorderType(aValue);
   ipropBrdrTbl:; // http://mdp.garant.ru/pages/viewpage.action?pageId=479402808
   ipropBrdrNil: tmpBorder.isFramed:= False;
  end;{case What}
//#UC END# *51E8D2B103DB_51D278280093_impl*
end;//TdestNorm.ApplyToFrame

procedure TdestNorm.ApplyToPAP(What: TIProp;
  aValue: Integer;
  aPAP: TddParagraphProperty);
//#UC START# *51E8D2F90025_51D278280093_var*
var
 i: Integer;
//#UC END# *51E8D2F90025_51D278280093_var*
begin
//#UC START# *51E8D2F90025_51D278280093_impl*
 with aPAP do
 begin
   case What of
     ipropLeft  : XaLeft:= aValue;
     ipropFirst : XaFirst:= aValue;
     ipropRight : XaRight:= aValue;
     ipropBottom: After:= aValue;
     ipropTop   : Before:= aValue;
     ipropJust: Just:= TJust(aValue);
     ipropInTable: InTable:= True;
     ipropBorderWhere:
       begin
         f_BorderOwner:= boPara;

         case TddBorderWhere(aValue) of
          bwTop: begin
                   f_CurBorderPart:= bpTop;
                   Border.Frames[bpTop].Enable:= True;
                 end;
          bwRight: begin
                     Border.Frames[bpRight].Enable:= True;
                     f_CurBorderPart:= bpRight;
                   end;
          bwBottom: begin
                      Border.Frames[bpBottom].Enable:= True;
                      f_CurBorderPart:= bpBottom;
                    end;
          bwLeft: begin
                    Border.Frames[bpLeft].Enable:= True;
                    f_CurBorderPart:= bpLeft;
                  end;
          bwHorizontal: Border.Frames[bpHorizontal].Enable:= True;
          bwVertical: Border.Frames[bpVertical].Enable:= True;
          bwBox:
            for i:= ord(bpTop) to ord(bpRight) do
            begin
              Border.Frames[TddBorderParts(i)].Enable:= True;
              Border.FrameWidth[TddBorderParts(i)]:= 10;
              {Border.FrameColor[TddBorderPart(i)]:= ;}
              Border.FrameType[TddBorderParts(i)]:= btSingleThick;
            end;
         end;

       end;
     ipropDefault: Clear;
     ipropLs: ListItem:= aValue;
     ipropilvl: ilvl:= aValue;
     ipropitap: itap:= aValue;
   end; { case}
 end;
//#UC END# *51E8D2F90025_51D278280093_impl*
end;//TdestNorm.ApplyToPAP

procedure TdestNorm.ApplyToRow(aWhat: TIProp;
  aValue: LongInt;
  aState: TddRTFState);
//#UC START# *51E8D343020F_51D278280093_var*
var
 l_LastTable: TddTable;   
//#UC END# *51E8D343020F_51D278280093_var*
begin
//#UC START# *51E8D343020F_51D278280093_impl*
 case aWhat of
  ipropFirst: aState.TAP.Gaph:= aValue;
  ipropBorderWhere: f_CurBorderPart:= TddBorderparts(aValue-1);
  ipropLeft: aState.TAP.Left:= aValue;
  ipropLast: aState.TAP.IsLastRow := True;
  ipropirow: aState.TAP.RowIndex := aValue;
  ipropDefault:
   begin
     aState.TAP.Clear;
     l_LastTable := LastTable(True);
     if l_LastTable <> nil then
      l_LastTable.ClearLastRow;
    end;
 end;{case What}
//#UC END# *51E8D343020F_51D278280093_impl*
end;//TdestNorm.ApplyToRow

procedure TdestNorm.ApplyToSep(aWhat: TIProp;
  aValue: LongInt);
//#UC START# *51E8D3A20193_51D278280093_var*
var
 l_A: TddDocumentAtom;
//#UC END# *51E8D3A20193_51D278280093_var*
begin
//#UC START# *51E8D3A20193_51D278280093_impl*
 l_A := LastAtom;
 if (l_A <> nil) and (l_A.AtomType = dd_DocBreak) then
 begin
  with TddBreak(l_A).SEP do
   case aWhat of
     ipropLandscape: fLandscape:= True;
     ipropWidth: xaPage:= aValue;
     ipropHeight: YaPage:= aValue;
     ipropLeft: xaLeft:= aValue;
     ipropRight: xaRight:= aValue;
     ipropTop: yaTop:= aValue;
     ipropBottom: yaBottom:= aValue;
   end;
 end;
//#UC END# *51E8D3A20193_51D278280093_impl*
end;//TdestNorm.ApplyToSep

procedure TdestNorm.ApplyToStyle(aWhat: TIProp;
  aValue: LongInt;
  aState: TddRTFState);
//#UC START# *51E8D3D10291_51D278280093_var*
//#UC END# *51E8D3D10291_51D278280093_var*
begin
//#UC START# *51E8D3D10291_51D278280093_impl*
 if aWhat = ipropParaStyle then
   aState.PAP.Style:= aValue
 else
 if aWhat = iproPAnsiCharStyle then
 begin
  aState.CHP.Style:= aValue;
  //StopSkipGroup; { TODO : Восстановить (перенести в TdestNorm) }
 end;
//#UC END# *51E8D3D10291_51D278280093_impl*
end;//TdestNorm.ApplyToStyle

procedure TdestNorm.ApplyToTAB(aWhat: TIProp;
  aValue: LongInt;
  aPAP: TddParagraphProperty);
//#UC START# *51E8D4200232_51D278280093_var*
//#UC END# *51E8D4200232_51D278280093_var*
begin
//#UC START# *51E8D4200232_51D278280093_impl*
 begin
   if f_TabEntry = nil then
    f_TabEntry := TddTab.Create(nil);
   case aWhat of
    ipropJust : f_TabEntry.Kind:= TTabKind(aValue);
    ipropWidth:
     begin
      f_TabEntry.TabPos:= aValue;
      aPAP.TabList.Add(f_TabEntry);
      FreeAndNil(f_TabEntry);
     end;
    ipropTabBar:
     begin
      f_TabEntry.TabBar:= aValue;
      f_TabEntry.Kind:= tkNotDefined;
      aPAP.TabList.Add(f_TabEntry);
      FreeAndNil(f_TabEntry);
     end;
    ipropTabLead: f_TabEntry.TabLead:= TTabLead(aValue);
   end;
 end;
//#UC END# *51E8D4200232_51D278280093_impl*
end;//TdestNorm.ApplyToTAB

procedure TdestNorm.ConvertSymbolChar(var aChar: AnsiChar;
  aCHP: TddCharacterProperty);
//#UC START# *51E8D47E0028_51D278280093_var*
var
 l_Font: TddFontEntry;
//#UC END# *51E8D47E0028_51D278280093_var*
begin
//#UC START# *51E8D47E0028_51D278280093_impl*
 if LiteVersion then
 begin
  l_Font:= GetFontEvent(aCHP.FontNumber);
  if (l_Font <> nil) and (l_Font.CharSet = fCharsetSymbol) then
   aChar := '-';
 end; // LiteVersion
  case aChar of
   #$B7: aChar:= #$2A;
   #$A7: aChar:= #$23;
  else
   aChar:= '-'
  end;
//#UC END# *51E8D47E0028_51D278280093_impl*
end;//TdestNorm.ConvertSymbolChar

function TdestNorm.GetLastTextParaOrCreateNew(anInTable: Boolean): TddTextParagraph;
//#UC START# *51E93A240331_51D278280093_var*
//#UC END# *51E93A240331_51D278280093_var*
begin
//#UC START# *51E93A240331_51D278280093_impl*
 Result := LastParagraph;
 if Result = nil then
  Result := AddTextPara(anInTable);
//#UC END# *51E93A240331_51D278280093_impl*
end;//TdestNorm.GetLastTextParaOrCreateNew

procedure TdestNorm.JoinPAPWithLastParaPAP(aPAP: TddParagraphProperty);
//#UC START# *51E93F26033C_51D278280093_var*
var
 l_Para: TddTextParagraph;
//#UC END# *51E93F26033C_51D278280093_var*
begin
//#UC START# *51E93F26033C_51D278280093_impl*
 l_Para := GetLastTextParaOrCreateNew(aPAP.InTable);
 if l_Para.PAP.IsDefault and (l_Para.PAP.OCompare(aPAP) <> 0) then
  l_Para.PAP.JoinWith(aPAP);
 l_Para.Closed := True;
//#UC END# *51E93F26033C_51D278280093_impl*
end;//TdestNorm.JoinPAPWithLastParaPAP

procedure TdestNorm.Try2ApplyParaProperty(aState: TddRTFState;
  aPara: TddTextParagraph);
//#UC START# *521B22240197_51D278280093_var*
//#UC END# *521B22240197_51D278280093_var*
begin
//#UC START# *521B22240197_51D278280093_impl*
 if aPara.Empty then
 begin
  aPara.ApplyPAP(aState.PAP);
  aPara.ApplyCHP(aState.CHP);
  if aState.PAP.anInherited and (aState.CHP.FontNumber <> propUndefined) then
   aPara.PAP.Style := 0; // http://mdp.garant.ru/pages/viewpage.action?pageId=479402974
 end; // LastParagraph.Empty
//#UC END# *521B22240197_51D278280093_impl*
end;//TdestNorm.Try2ApplyParaProperty

function TdestNorm.GetFontEvent(aFontID: Integer): TddFontEntry;
//#UC START# *51E8D7880381_51D278280093_var*
//#UC END# *51E8D7880381_51D278280093_var*
begin
//#UC START# *51E8D7880381_51D278280093_impl*
 Result := f_CustomRTFReader.GetFonts(aFontID);
//#UC END# *51E8D7880381_51D278280093_impl*
end;//TdestNorm.GetFontEvent

function TdestNorm.GetColor(aColorIndex: Integer): TColor;
//#UC START# *51E8D7A401F0_51D278280093_var*
//#UC END# *51E8D7A401F0_51D278280093_var*
begin
//#UC START# *51E8D7A401F0_51D278280093_impl*
 Result := f_CustomRTFReader.ColorByIndex(aColorIndex);
//#UC END# *51E8D7A401F0_51D278280093_impl*
end;//TdestNorm.GetColor

function TdestNorm.AddTextPara(aIntable: Boolean): TddTextParagraph;
//#UC START# *51E8D7E60235_51D278280093_var*
var
 l_P : TddTextParagraph;
//#UC END# *51E8D7E60235_51D278280093_var*
begin
//#UC START# *51E8D7E60235_51D278280093_impl*
 // Абзац может добавляться в документ или таблицу. Причем таблицы может и не быть
 if aInTable then
 begin
  if f_Paragraphs.Empty then
  begin
   AddTable(1);
   LastTable(False).AddRow(True);
  end // if f_Paragraphs.Empty then
  else
   Try2AddTable(1);
  Result := LastTable(True).AddTextParaWithCheckingRow(nil);
 end // aInTable
 else
 begin
  l_P := TddTextParagraph.Create(nil, Self);
  try
   f_Paragraphs.Add(l_P);
   Result:= TddTextParagraph(LastAtom);
  finally
   FreeAndNil(l_P);
  end;
 end;
//#UC END# *51E8D7E60235_51D278280093_impl*
end;//TdestNorm.AddTextPara

procedure TdestNorm.AddPicture(aPicture: TddPicture;
  aState: TddRTFState);
//#UC START# *51E8D80401F5_51D278280093_var*
var
 l_P: TddPicture;
 l_Cell: TddTableCell;
//#UC END# *51E8D80401F5_51D278280093_var*
begin
//#UC START# *51E8D80401F5_51D278280093_impl*
 l_P:= TddPicture.Create(nil, Self);
 try
  l_P.Assign(aPicture);
  l_P.PAP:= aState.PAP;
  if LastAtom <> nil then
  begin
   if LastAtom.AtomType = dd_docTextParagraph then
   begin
    if LastAtom.Closed then
     f_Paragraphs.Add(l_P)
    else
     LastParagraph.AddPicture(l_P);
   end
   else
   if LastAtom.AtomType = dd_docTable then
   begin
    Try2AddTable(l_P.PAP.itap);
    LastTable(True).AddTextParaWithCheckingRow(l_P)
   end;
  end // LastAtom <> nil
  else
   f_Paragraphs.Add(l_P);
 finally
  FreeAndNil(l_P);
 end;
//#UC END# *51E8D80401F5_51D278280093_impl*
end;//TdestNorm.AddPicture

procedure TdestNorm.Append(aDest: TdestNorm;
  aInSamePara: Boolean = False);
//#UC START# *51E8D8250134_51D278280093_var*

 procedure lp_AddTextPara(const aPara: TddTextParagraph);
 var
  l_NewPara : TddTextParagraph;
 begin
  if aPara <> nil then
  begin
   if aInSamePara then
   begin
    if LastParagraph = nil then
    begin
     AddTextPara(aPara.PAP.InTable);
     LastParagraph.PAP := aPara.PAP;
    end; // LastParagraph = nil
    LastParagraph.AddSegment(aPara.CHP, False);
    LastParagraph.AddText(aPara.Text);
   end // aInSamePara
   else
   begin
    l_NewPara := TddTextParagraph.Create(nil, Self);
    try
     l_NewPara.Assign(aPara);
     f_Paragraphs.Add(l_NewPara);
    finally
     FreeAndNil(l_NewPara);
    end;
   end; // not aInSamePara
  end; // aPara <> nil
 end;

 procedure lp_AppendRowPara(const aTable: TddTable);
 var
  k: Integer;
 begin
  for k := 0 to aTable.RowCount - 1 do
   lp_AddTextPara(aTable.Rows[k].LastCell.LastTextPara);
 end;

var
 i      : Integer;
 l_Para : TddTextParagraph;
//#UC END# *51E8D8250134_51D278280093_var*
begin
//#UC START# *51E8D8250134_51D278280093_impl*
 if aDest <> nil then
 begin
  for i:= 0 to aDest.Paragraphs.Hi do
  begin
   l_Para := nil;
   // Может приехать что угодно
   if aDest.Paragraphs[i] is TddTextParagraph then
    l_Para := aDest.Paragraphs[i] as TddTextParagraph
   else
   if (aDest.Paragraphs[i] is TddTable) then
    lp_AppendRowPara(aDest.Paragraphs[i] as TddTable);
   lp_AddTextPara(l_Para);
  end; // for i
 end; // aDest <> nil
//#UC END# *51E8D8250134_51D278280093_impl*
end;//TdestNorm.Append

function TdestNorm.BufferEmpty: Boolean;
//#UC START# *51E8D84900D6_51D278280093_var*
//#UC END# *51E8D84900D6_51D278280093_var*
begin
//#UC START# *51E8D84900D6_51D278280093_impl*
 Result:= f_TextBuffer.Empty and (f_UnicodeBuffer.Position = 0);
//#UC END# *51E8D84900D6_51D278280093_impl*
end;//TdestNorm.BufferEmpty

procedure TdestNorm.CheckLastParagraph(DestroyPara: Boolean = False);
//#UC START# *51E8D8680172_51D278280093_var*
//#UC END# *51E8D8680172_51D278280093_var*
begin
//#UC START# *51E8D8680172_51D278280093_impl*
 if not f_TextBuffer.Empty then
  LastParagraph.AddText(f_TextBuffer);
//#UC END# *51E8D8680172_51D278280093_impl*
end;//TdestNorm.CheckLastParagraph

procedure TdestNorm.CorrectCharset(aCHP: TddCharacterProperty;
  aText: Tl3String);
//#UC START# *51E8D8870140_51D278280093_var*
type
  TCharsetEntry = record
    CodePage: Word;
    Charset: Byte;
  end;
  
const
  CharsetTable: array [1..10] of TCharsetEntry =
   (
    (CodePage: CP_WesternWin; Charset: ANSI_CHARSET),
    (CodePage: 1250; Charset: EASTEUROPE_CHARSET),
    (CodePage: CP_RussianWin; Charset: RUSSIAN_CHARSET),
    (CodePage: 1253; Charset: GREEK_CHARSET),
    (CodePage: 1254; Charset: TURKISH_CHARSET),
    (CodePage: 1255; Charset: HEBREW_CHARSET),
    (CodePage: 1256; Charset: ARABIC_CHARSET),
    (CodePage: 1257; Charset: BALTIC_CHARSET),
    (CodePage:  874; Charset: THAI_CHARSET),
    (CodePage:  932; Charset: SHIFTJIS_CHARSET)
   );

var
 i,j: Integer;
 l_W: WideString;
 l_S: TL3String;
 l_C: AnsiString;
 l_CodePage: Integer;
//#UC END# *51E8D8870140_51D278280093_var*
begin
//#UC START# *51E8D8870140_51D278280093_impl*
 if (aCHP <> nil) and (aCHP.FontCharSet in [THAI_CHARSET, SHIFTJIS_CHARSET]) {and not l3AllCharsInCharSet(Text.AsWStr, [#32..'z'])} then
 begin
  l_CodePage := CP_RussianWin;
  for i := Low(CharsetTable) to High(CharsetTable) do
   if CharsetTable[I].CharSet = aCHP.FontCharSet then
   begin
    l_CodePage := CharsetTable[I].CodePage;
    Break;
   end;
  l_S := Tl3String.Create();
  try
   i := 0;
   while i < aText.Len do
   begin
    if (aText.Ch[i] > #$80) and not(aText.Ch[i] in [cc_SoftSpace]) then
    begin
     while aText.Ch[i] > #$80 do
     begin
      l_C := l_C + aText.Ch[i] + aText.Ch[i+1];
      Inc(i, 2);
     end;
     SetLength(l_W, Length(l_C) div 2);
     MultiByteToWideChar(l_CodePage, 0, PAnsiChar(l_C), Length(l_C), PWideChar(l_W), Length(l_W));
     SetLength(l_C, Length(l_W));
     WideCharToMultiByte(CP_RussianWin, 0, PWideChar(l_W), Length(l_W), PAnsiChar(l_C), Length(l_C), nil, nil);
     l_S.AsString := l_S.AsString + l_C;
     l_C := '';
    end
    else
    begin
     l_S.Append(aText.Ch[i]);
     Inc(i);
    end;
   end;
   aText.Assign(l_S);
  finally
   FreeAndNil(l_S);
  end;
 end;
//#UC END# *51E8D8870140_51D278280093_impl*
end;//TdestNorm.CorrectCharset

procedure TdestNorm.FlushTextBuffer(aState: TddRTFState);
//#UC START# *51E8D8AA00D4_51D278280093_var*
//#UC END# *51E8D8AA00D4_51D278280093_var*
begin
//#UC START# *51E8D8AA00D4_51D278280093_impl*
 WriteText(TextBuffer, aState);
 {$IFDEF Debug}
 if RDS = rdsShpTxt then
  l3System.Msg2Log('Shape Text');
 {$ENDIF}
//#UC END# *51E8D8AA00D4_51D278280093_impl*
end;//TdestNorm.FlushTextBuffer

procedure TdestNorm.FlushUnicodeBuffer(aState: TddRTFState);
//#UC START# *51E8D8CD0019_51D278280093_var*
//#UC END# *51E8D8CD0019_51D278280093_var*
begin
//#UC START# *51E8D8CD0019_51D278280093_impl*
 Unicode2Text;
 WriteText(TextBuffer, aState);
 f_TextBuffer.Clear;
//#UC END# *51E8D8CD0019_51D278280093_impl*
end;//TdestNorm.FlushUnicodeBuffer

function TdestNorm.LastTable(aCheckNested: Boolean): TddTable;
//#UC START# *51E8D8F10076_51D278280093_var*
var
 l_NestedTable : TddTable;
//#UC END# *51E8D8F10076_51D278280093_var*
begin
//#UC START# *51E8D8F10076_51D278280093_impl*
 Result := nil;
 if (LastAtom <> nil) and (LastAtom.AtomType = dd_docTable) and not LastAtom.Closed then
  Result := TddTable(LastAtom);
 if aCheckNested and (Result <> nil) then
 begin
  l_NestedTable := FindNestedLastTable;
  if l_NestedTable <> nil then
   Result := l_NestedTable;
 end; // if aNested and (Result <> nil) then
//#UC END# *51E8D8F10076_51D278280093_impl*
end;//TdestNorm.LastTable

procedure TdestNorm.Unicode2Text;
//#UC START# *51E8D9130134_51D278280093_var*
var
 l_Str : Tl3Str;
 aSt   : Tl3PCharLen;
 l_Ansi: Boolean;
//#UC END# *51E8D9130134_51D278280093_var*
begin
//#UC START# *51E8D9130134_51D278280093_impl*
 l_Ansi := False;
 aSt := l3PCharLen(f_UnicodeBuffer.MemoryPool.AsPointer, f_UnicodeBuffer.Position div 2, cp_Unicode);
 l_Str.Init(aSt, CP_OEM); // - здесь CP_то что надо
 try
  if l3CharSetPresent(l_Str.S, l_Str.SLen, cc_Graph_Criteria) then
  // Преобразовываем в строку
    f_TextBuffer.AsPCharLen := l_Str
  else
   l_Ansi := True;
 finally
  l_Str.Clear;
 end;{try..finally}
 if l_Ansi then
 begin
  try
   {$IFDEF HasTatar}
   if not l3HasTatar(PWideChar(aSt.S)) then
   //if not l3HasTatar(PWideChar(f_UnicodeBuffer.MemoryPool.AsPointer)) then
   {$ENDIF}
   begin
    l_Str.Init(aSt, CP_ANSI); // - здесь CP_то что надо
    try
     f_TextBuffer.AsPCharLen := l_Str;
    finally
     l_Str.Clear;
    end;{try..finally}
   end
   {$IFDEF HasTatar}
   else
    f_TextBuffer.AsPCharLen := aSt;
   {$ENDIF} 
  except
   f_TextBuffer.AsString := 'unknown';
  end;
 end;
 f_UnicodeBuffer.Size := 0;
 f_UnicodeBuffer.Position := 0;
//#UC END# *51E8D9130134_51D278280093_impl*
end;//TdestNorm.Unicode2Text

function TdestNorm.pm_GetLastAtom: TddDocumentAtom;
//#UC START# *51E8D657026C_51D278280093get_var*
//#UC END# *51E8D657026C_51D278280093get_var*
begin
//#UC START# *51E8D657026C_51D278280093get_impl*
 if f_Paragraphs.Empty then
  Result := nil
 else
  Result := f_Paragraphs.Last;
//#UC END# *51E8D657026C_51D278280093get_impl*
end;//TdestNorm.pm_GetLastAtom

function TdestNorm.pm_GetLastParagraph: TddTextParagraph;
//#UC START# *51E8D68F0379_51D278280093get_var*
var
 l_Cell  : TddTableCell;
 l_Table : TddTable;
//#UC END# *51E8D68F0379_51D278280093get_var*
begin
//#UC START# *51E8D68F0379_51D278280093get_impl*
 Result := nil;
 if LastAtom <> nil then
 begin
  if LastAtom.AtomType = dd_docTextParagraph then
   Result := TddTextParagraph(LastAtom)
  else
   if LastAtom.AtomType = dd_docTable then
   begin
    l_Table := LastTable(True);
    //Assert(l_Table <> nil);
    if l_Table <> nil then
     Result := l_Table.LastParagraph;
   end;
  if (Result <> nil) and Result.Closed then
   Result:= nil;
 end; // LastAtom <> nil
//#UC END# *51E8D68F0379_51D278280093get_impl*
end;//TdestNorm.pm_GetLastParagraph

procedure TdestNorm.Cleanup;
//#UC START# *479731C50290_51D278280093_var*
//#UC END# *479731C50290_51D278280093_var*
begin
//#UC START# *479731C50290_51D278280093_impl*
 FreeAndNil(f_UnicodeBuffer);
 FreeAndNil(f_TextBuffer);
 FreeAndNil(f_Paragraphs);
 inherited;
//#UC END# *479731C50290_51D278280093_impl*
end;//TdestNorm.Cleanup

procedure TdestNorm.Clear;
//#UC START# *51D27A48038E_51D278280093_var*
//#UC END# *51D27A48038E_51D278280093_var*
begin
//#UC START# *51D27A48038E_51D278280093_impl*
 inherited;
 TextBuffer.Clear;
//#UC END# *51D27A48038E_51D278280093_impl*
end;//TdestNorm.Clear

procedure TdestNorm.AddAnsiChar(aText: AnsiChar;
  aState: TddRTFState);
//#UC START# *51D27C0402E9_51D278280093_var*
//#UC END# *51D27C0402E9_51D278280093_var*
begin
//#UC START# *51D27C0402E9_51D278280093_impl*
 if UnicodeBuffer.Position > 0 then
  FlushUnicodeBuffer(aState);
 //ConvertSymbolChar(aText, aState.CHP);
 TextBuffer.Append(aText);
//#UC END# *51D27C0402E9_51D278280093_impl*
end;//TdestNorm.AddAnsiChar

procedure TdestNorm.AddString(aText: Tl3String;
  aState: TddRTFState);
//#UC START# *51D27C3302EC_51D278280093_var*
//#UC END# *51D27C3302EC_51D278280093_var*
begin
//#UC START# *51D27C3302EC_51D278280093_impl*
 if UnicodeBuffer.Position > 0 then
  FlushUnicodeBuffer(aState);

 TextBuffer.JoinWith(aText);
//#UC END# *51D27C3302EC_51D278280093_impl*
end;//TdestNorm.AddString

procedure TdestNorm.AddUnicodeChar(aText: Word;
  aState: TddRTFState);
//#UC START# *51D27DFA0308_51D278280093_var*
//#UC END# *51D27DFA0308_51D278280093_var*
begin
//#UC START# *51D27DFA0308_51D278280093_impl*
 if not TextBuffer.Empty then
  FlushTextBuffer(aState);
 UnicodeBuffer.Write(aText, SizeOf(aText));
//#UC END# *51D27DFA0308_51D278280093_impl*
end;//TdestNorm.AddUnicodeChar

procedure TdestNorm.ApplyProperty(propType: TPropType;
  What: TIProp;
  Value: LongInt;
  aState: TddRTFState);
//#UC START# *51D27EC50388_51D278280093_var*
//#UC END# *51D27EC50388_51D278280093_var*
begin
//#UC START# *51D27EC50388_51D278280093_impl*
 case propType of
  propStyle: ApplyToStyle(What, Value, aState);
  propCHP  : ApplyToCHP(What, Value, aState.CHP);
  propTAB  : ApplyToTAB(What, Value, aState.PAP);
  propPAP  : ApplyToPAP(What, Value, aState.PAP);
  propSep  : ApplyToSep(What, Value);
  propRow  : ApplyToRow(What, Value, aState);
  propCell : ApplyToCell(What, Value, aState.CEP);
  propFrame: ApplyToFrame(What, Value, aState);
 end; // case PropType;
//#UC END# *51D27EC50388_51D278280093_impl*
end;//TdestNorm.ApplyProperty

constructor TdestNorm.Create(aRTFReader: TddCustomRTFReader);
//#UC START# *51E7C9DB0213_51D278280093_var*
//#UC END# *51E7C9DB0213_51D278280093_var*
begin
//#UC START# *51E7C9DB0213_51D278280093_impl*
 inherited Create(aRTFReader);
 f_TextBuffer := Tl3String.Create;
 f_UnicodeBuffer := Tl3MemoryStream.Create;
 f_Paragraphs := TddDocumentAtomList.Make;
//#UC END# *51E7C9DB0213_51D278280093_impl*
end;//TdestNorm.Create

procedure TdestNorm.ParseSymbol(Symbol: Integer;
  propType: TPropType;
  aState: TddRTFState);
//#UC START# *51E8CFEF027A_51D278280093_var*
var
 l_FN    : AnsiString;
 l_Para  : TddTextParagraph;
 l_Table : TddTable;
 l_Break : TddBreak;
//#UC END# *51E8CFEF027A_51D278280093_var*
begin
//#UC START# *51E8CFEF027A_51D278280093_impl*
 case propType of
  propPAP :
   begin
    if aState.SkipGroup then Exit;
    if aState.PAP.InTable and (LastAtom <> nil) and (LastAtom.AtomType = dd_docTable) then
     Try2AddTable(aState.PAP.itap);
    JoinPAPWithLastParaPAP(aState.PAP);
   end; // propPAP
  propCell:
   begin
    Try2AddTable(1); // наследуем оформление от предыдущей строки
    if aState.PAP.ListItem <> propUndefined then
    begin
     JoinPAPWithLastParaPAP(aState.PAP);
     aState.PAP.ListItem := propUndefined;
    end; // if aState.PAP.LevelItem = 1 then
    LastTable(True).CloseCell;
   end; // propCell
  propRow: // конец строки таблицы
    begin
     l_Table := LastTable(True); // http://mdp.garant.ru/pages/viewpage.action?pageId=479402089 - Может быть закрывающая \row без ячеек.  
     if l_Table <> nil then
      l_Table.CloseLastRow(aState.TAP, aState.PAP);

     {$IFDEF OnePass}
     if RDS = rdsNorm then
       f_Row.Write2Generator(Generator, LiteVersion)
     else
     {$ENDIF}
    end;
    propCHP:
      begin
        if UnicodeBuffer.Position > 0 then
          FlushUnicodeBuffer(aState);
        if Symbol = symbolFootnote then
        begin
          Inc(gNextFootnoteNumber);
          l_FN := Format('*(%d)', [gNextFootnoteNumber]);
          l_Para := GetLastTextParaOrCreateNew(False);
          l_Para.AddHyperLink(l_FN, 0, gNextFootnoteNumber{+10000});
        end // if Symbol = symbolFootnote then
        else
         TextBuffer.Append(AnsiChar(Symbol));
      end; // propCHP
    propDOP:
      begin
         l_Break := TddBreak.Create(nil, Self);
         try
          l_Break.BreakType := TddBreakType(Symbol);
          Paragraphs.Add(l_Break);
         finally
          FreeAndNil(l_Break);
         end;
      end;
  end; { case propType }
//#UC END# *51E8CFEF027A_51D278280093_impl*
end;//TdestNorm.ParseSymbol

procedure TdestNorm.Write(const aGenerator: Ik2TagGenerator);
//#UC START# *51E8D04603DF_51D278280093_var*
var
 i   : LongInt;
 l_P : TddDocumentAtom;
//#UC END# *51E8D04603DF_51D278280093_var*
begin
//#UC START# *51E8D04603DF_51D278280093_impl*
 for i := 0 to Paragraphs.Hi do
 begin
  l_P := Paragraphs.Items[i];
  l_P.Write2Generator(aGenerator, True, LiteVersion);
 end; { for Paragraphs.Count }
//#UC END# *51E8D04603DF_51D278280093_impl*
end;//TdestNorm.Write

procedure TdestNorm.WriteText(aText: Tl3String;
  aState: TddRTFState);
//#UC START# *51E8D0710060_51D278280093_var*
var
 l_CHP  : TddCharacterProperty;
 l_Add  : Boolean;
 l_Para : TddTextParagraph;
//#UC END# *51E8D0710060_51D278280093_var*
begin
//#UC START# *51E8D0710060_51D278280093_impl*
 if (LastAtom <> nil) and (LastAtom.AtomType = dd_docTable) and aState.PAP.InTable then
  Try2AddTable(aState.PAP.itap);
 l_Para := GetLastTextParaOrCreateNew(aState.PAP.InTable);
 if l_Para <> nil then
 begin
  Try2ApplyParaProperty(aState, l_Para);
  l_CHP := TddCharacterProperty(l_Para.CHP.Diff(aState.CHP));
  try
   if not LiteVersion then
   begin
    if (l_CHP <> nil) then
    begin
     if l_Para.HaveSegments then
      l_Add := (l_CHP.OCompare(l_Para.LastSegment.CHP) <> 0)
     else
      l_Add := True;
     if l_Add then
      l_Para.AddSegment(l_CHP)
     else
      l_Para.LastSegment.Stop:= l_Para.LastSegment.Stop + aText.Len;
    end; // aCHP <> nil
   end // not LiteVersion
   else
    if (l_Para.HaveSegments) and (l_CHP <> nil) then
    begin
     if l_Para.LastSegment.CHP.Style <> l_CHP.Style then
      l_Para.AddSegment(l_CHP);
    end; // (LastParagraph.SegmentList.Count > 0) and (aCHP <> nil)
  finally
   FreeAndNil(l_CHP);
  end;
  l_Para.AddText(aText);
 end;
 f_TextBuffer.Clear;
//#UC END# *51E8D0710060_51D278280093_impl*
end;//TdestNorm.WriteText

function TdestNorm.GetList(aListID: Integer): TrtfList;
//#UC START# *51E8D6CF03A1_51D278280093_var*
//#UC END# *51E8D6CF03A1_51D278280093_var*
begin
//#UC START# *51E8D6CF03A1_51D278280093_impl*
 Result := f_CustomRTFReader.ListByID(aListID);
//#UC END# *51E8D6CF03A1_51D278280093_impl*
end;//TdestNorm.GetList

function TdestNorm.GetStyle(aStyleID: Integer): TddStyleEntry;
//#UC START# *51E8D73F0187_51D278280093_var*
//#UC END# *51E8D73F0187_51D278280093_var*
begin
//#UC START# *51E8D73F0187_51D278280093_impl*
 Result := f_CustomRTFReader.StyleByNumber(aStyleID);
//#UC END# *51E8D73F0187_51D278280093_impl*
end;//TdestNorm.GetStyle

end.