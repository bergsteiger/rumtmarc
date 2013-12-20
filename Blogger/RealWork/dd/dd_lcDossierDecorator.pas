unit dd_lcDossierDecorator;
{ Добавляет в справку информацию о хронологии рассмотрения дела }
{ $Id: dd_lcDossierDecorator.pas,v 1.14 2013/07/24 13:38:33 fireton Exp $ }

// $Log: dd_lcDossierDecorator.pas,v $
// Revision 1.14  2013/07/24 13:38:33  fireton
// - убираем дубли от Президиума ВАС (K 425037320)
//
// Revision 1.13  2013/04/11 16:46:29  lulin
// - отлаживаем под XE3.
//
// Revision 1.12  2013/02/15 12:22:00  narry
// Импортируются повторные документы (430743967)
//
// Revision 1.11  2013/02/13 07:41:55  narry
// Обновление
//
// Revision 1.10  2013/02/04 08:41:27  narry
// Более жесткое условие фильтра размноженных номеров
//
// Revision 1.9  2012/05/22 04:51:33  narry
// Уточнение фильтрации "размноженных" номеров
//
// Revision 1.8  2012/04/12 10:20:05  narry
// Хронология дела в апелляциях - разные варианты номера дела (356072199)
//
// Revision 1.7  2012/04/06 10:11:37  narry
// Не заполнялась информация "Хронология дела"
//
// Revision 1.6  2011/09/13 05:27:37  narry
// Размноженные номера размножают хронологию (265410470)
//


interface

uses
 k2Interfaces, l3LongintList, k2TagFilter, l3Types, k2Types, DT_Types, k2Prim,
 k2TagGen, l3FieldSortRecList, DT_Renum;

type
 TlcDossierDecorator = class(Tk2TagFilter)
 private
  f_CaseCode: AnsiString;
  f_CodeType: TDNType;
  f_DocID: TDocID;
  f_DocList: Tl3FieldSortRecList;
  f_ExDocID: Integer;
  f_ExportMode: Boolean;
  f_NeedDecorate: Boolean;
  f_NeedEmptyPara: Boolean;
  f_Renum: TReNumTbl;
  procedure ClearParameters;
  procedure DeBracketSource(var aSource: AnsiString);
  procedure DecorateDossier;
  function IsDossierRelated: Boolean;
 protected
        {-}
  procedure CloseStream(NeedUndo: Boolean); override;
  procedure DoAddAtomEx(AtomIndex: Long; const Value: Tk2Variant); override;
  procedure DoCloseStructure(NeedUndo: Boolean); override;
  procedure DoStartChild(TypeID: Long); override;
    {internal methods}
  procedure OpenStream; override;
 public
    // public methods
  constructor Create(anOwner: Tk2TagGeneratorOwner = nil); override;
        {* - создает экземпляр класа и цепляет его к генератору. }
  class function SetTo(var theGenerator: Ik2TagGenerator; aCaseCode: AnsiString):
      Ik2TagGenerator; overload;
      {-}
  procedure StartTag(TagID: Long); override;
 end;

implementation

uses
 SysUtils,
 DecorTextPara_Const,
 Address_Const,
 HyperLink_Const,
 SegmentsLayer_Const,
 k2Tags,
 evdStyles, evdTypes,
 dt_Const, dt_AttrSchema, dt_DictConst,
 dt_Sab,
 dt_serv,
 dt_Doc,
 dt_Dict,
 dt_LinkServ, dt_Link,
 l3Date, l3DateSt, l3LingLib, Math, l3String, TextPara_Const,
 NumAndDate_Const, Document_Const, l3Base, l3Interfaces, vtDebug,
  l3LongintListPrim, DictRec_Const, StrUtils, dd_lcUtils, HT_Const;

type
 PIDDateRec = ^TIDDateRec;
 TIDDateRec = record
  DocID: TDocID;
  DocDate: TstDate;
  DocCode: TNumberStr;
 end;

constructor TlcDossierDecorator.Create(anOwner: Tk2TagGeneratorOwner = nil);
  {override;}
  {-}
begin
 inherited;
 f_ExportMode:= True;
end;

procedure TlcDossierDecorator.ClearParameters;
begin
 if f_ExportMode then
 begin
  f_CaseCode:= '';
  f_DocID:= 0;
  f_NeedDecorate:= False;
  f_CodeType:= dnDoc;
 end;
end;

procedure TlcDossierDecorator.CloseStream(NeedUndo: Boolean);
begin
 FreeAndNil(f_DocList); 
 inherited;
end;

procedure TlcDossierDecorator.DeBracketSource(var aSource: AnsiString);
var
 l_Pos: Integer;
begin
 // Удалить из строки все, что находится между ()
 l_Pos:= Pos('(', aSource);
 if l_Pos > 0 then
  Delete(aSource, l_Pos, Pos(')', aSource)-l_Pos+1);
end;

procedure TlcDossierDecorator.DecorateDossier;
const
 lCaseCodeType : TDNType = dnLawCaseNum;
 lDNDocType : TDNType = dnPublish;
var
 lSab : ISab;
 lSabLnk, lCCSab : ISab;
 lJoinSab : IJoinSab;
 lRAProcStub : TdtRecAccessProc;
 l_DocID: TDocID;
 l_Last: Ik2Tag;
 l_First: AnsiString;
 l_CaseCode: TNumberStr;
 l_PrevCode: AnsiString;
 l_PrevDocID: TDocID;

 function lRecAccessProc(aItemPtr : Pointer) : Boolean;
 var
  l_Text: AnsiString;
  l_Para: Ik2Tag;
  l_Segments: Ik2Tag;
  l_HL: Ik2Tag;
  l_SL: Ik2Tag;
  l_A: Ik2Tag;
  l_Date, l_Type, l_Source, l_Code: AnsiString;
  l_IsHighSrc: Boolean;
  l_IsNumStartsVAS: Boolean;
  l_IsPrezidiumSrc: Boolean;

  function GetParam(aAttrType: TdtAttribute; aDictType: TDLType; aFldNum: SmallInt) : AnsiString;
  var
   lSab : ISab;
   l_Result: AnsiString;
   lStub : TdtRecAccessProc;

   function ExtractStr(aItemPtr : Pointer): Boolean;
   var
    l_Len: Integer;
   begin
    Result:= False;
    l_Len:= IfThen(aFldNUm = dtNameFld, 200, 50);
    l_Result:= l3ArrayToString(aItemPtr^, l_Len);
   end; // ExtractStr

  begin
   lSab := MakeSab(LinkServer(CurrentFamily).Attribute[aAttrType]);
   lSab.Select(lnkDocIDFld, PIDDateRec(aItemPtr)^.DocID);
   lSab.ValuesOfKey(lnkDictIDFld);
   lSab.TransferToPhoto(dnIDFld, DictServer(CurrentFamily).DictTbl[aDictType]);
   lSab.RecordsByKey;
   lStub := L2RecAccessProc(@ExtractStr);
   try
    lSab.IterateRecords(lStub, [aFldNum]);
   finally
    FreeRecAccessProc(lStub);
   end;
   Result:= l_Result;
  end; // GetParam

 begin
  Result := True;
  if PIDDateRec(aItemPtr)^.DocDate <> 0 then
  begin
   l_Date:= l3DateToStr(PIDDateRec(aItemPtr)^.DocDate);
   l_Type:= GetParam(atTypes, dlTypes, dtNameFld);
   l_Source:= GetParam(atSources, dlSources, dtNameFld);
   l_Code:= Trim(String(PIDDateRec(aItemPtr)^.DocCode));
   if (l_PrevCode <> '') and (l_PrevDocID = PIDDateRec(aItemPtr)^.DocID) then
   begin
    // Отсекаем "размноженные" номера
    if AnsiSameStr(LeftStr(l_Code, LastDelimiter('/', l_Code)), LeftStr(l_PrevCode, LastDelimiter('/', l_PrevCode))) then
     // l_Code:= '';
     exit;
   end; // l_PrevCode <> ''
   if (l_Source <> '') and (l_Type <> '') and (l_Code <> '') then
   begin
    l_PrevCode:= l_Code;
    l_PrevDocID:= PIDDateRec(aItemPtr)^.DocID;
    l_First:= l_Source[1];
    l_First:= UpperCase(l_First);
    l_Source:= mlmaRusDeclensionStr(l_Source, rdRodit);
    l_Source[1]:= l_First[1];
    DeBracketSource(l_Source);

    l_IsHighSrc := AnsiStartsText('Высшего', l_Source);
    l_IsPrezidiumSrc := AnsiStartsText('Президиума ВАС', l_Source);
    l_IsNumStartsVAS := AnsiStartsText('ВАС-', l_Code);
    
    if not (l_IsHighSrc or l_IsPrezidiumSrc) or
       (l_IsHighSrc and l_IsNumStartsVAS) or
       (l_IsPrezidiumSrc and not l_IsNumStartsVAS) then
    begin
     Generator.StartChild(k2_idDecorTextPara);
     Generator.Finish;
     l_Text:= Format('%s %s %s N %s', [l_Date, l_Type, l_Source, l_Code]);

     Generator.StartChild(k2_idDecorTextPara);
     try
      Generator.StartTag(k2_tiSegments);
      try
       Generator.StartChild(k2_idSegmentsLayer);
       try
        Generator.AddIntegerAtom(k2_tiHandle, ev_slHyperlinks);

         Generator.StartChild(k2_idHyperlink);
         try
          Generator.AddIntegerAtom(k2_tiFinish, Length(l_text));
          Generator.StartChild(k2_idAddress);
          try
           Generator.AddIntegerAtom(k2_tiDocID, f_Renum.GetExtDocID(PIDDateRec(aItemPtr)^.DocID));
          finally
           Generator.Finish;
          end; // idAddress
         finally
          Generator.Finish;
         end; // idHyperlink
       finally
        Generator.Finish;
       end; // idSegmentsLayer
      finally
       Generator.Finish;
      end;

      Generator.AddStringAtom(k2_tiText, l_Text);
     finally
      Generator.Finish;
     end;
    end;
   end // (l_Source <> '') and (l_Date <> '') and (l_Type <> '') and (l_Code <> '')
   (*
   else
   if l_PrevDocID <> PIDDateRec(aItemPtr)^.DocID then
   begin
    l3System.Msg2Log('%d:', [LinkServer(CurrentFamily).Renum.GetExtDocID(PIDDateRec(aItemPtr)^.DocID)]);
    if l_Source = '' then
     l3System.Msg2Log(' пустой орган');
    if l_Date = '' then
     l3System.Msg2Log(' пустая дата');
    if l_Type = '' then
     l3System.Msg2Log(' пустой тип');
    if l_Code = '' then
     l3System.Msg2Log(' пустой номер');
    //l3System.Msg2Log('l_Source = %s, l_Date = %s, l_Type = %s, l_Code = %s', [l_Source, l_Date, l_Type, l_Code]);
   end
   else
    l3System.Msg2Log('%d: повтор номера', [LinkServer(CurrentFamily).Renum.GetExtDocID(PIDDateRec(aItemPtr)^.DocID)]);
   *)
  end // PIDDateRec(aItemPtr)^.DocID <> l_DocID
  (*
  else
  begin
   l3System.Msg2Log('%d:', [LinkServer(CurrentFamily).Renum.GetExtDocID(PIDDateRec(aItemPtr)^.DocID)]);
   l3System.Msg2Log(' пустая дата');
  end;
  *)
 end; // lRecAccessProc

//var
// lList : Tl3FieldSortRecList;
begin

 if IsDossierRelated then
 begin
  // Нужно построить список документов, у которых CaseCode = aDocument.CaseCode, отсортировать его по !DATE
  // поиск с одинаковым кейскодом
  lSab := MakeSab(DictServer(CurrentFamily).GroupTbl[dlDateNums]);
  lSab.Select(dnTypFld, lCaseCodeType);
  l3FillChar(l_CaseCode, SizeOf(l_CaseCode), 32);
  l3Move(f_CaseCode[1], l_CaseCode, Length(f_CaseCode));
  lSab.SubSelect(dnNumFld, l_CaseCode[1]{, WILDCASE});
  lSab.ValuesOfKey(dnIDFld);
  lSab.TransferToPhoto(lnkDictIDFld, LinkServer(CurrentFamily).Attribute[atDateNums]);
  lSab.ValuesOfKey(lnkDocIDFld);

  (*
  //поиск с одинаковой справкой
  lSab := MakeEmptySab(MakePhoto(GlobalHtServer.GetTblObjectEx(CurrentFamily, Ord(ftFile))));
  lSab.Select(fRelated_fld, f_DocID);
  lSab.ValuesOfKey(fId_Fld);

  lSab.TransferToPhoto(lnkDocIDFld, LinkServer(CurrentFamily).Attribute[atDateNums]);
  *)

  lSab.RecordsByKey;
  lSabLnk := MakeSabCopy(lSab);

  lSab.ValuesOfKey(lnkDictIDFld);
  lSab.TransferToPhoto(dnIDFld, DictServer(CurrentFamily).GroupTbl[dlDateNums]);
  lSab.RecordsByKey;
  lSab.SubSelect(dnTypFld, lDNDocType);
  (*
  // игнорируем записи у которых code=casecode
  lCCSab := MakeEmptySab(lSab);
  lCCSab.Select(dnTypFld, lCaseCodeType);
  lCCSab.ValuesOfKey(dnNumFld);
  lCCSab.RecordsByKey;
  lSab.SubtractSab(lCCSab);
  *)

  lJoinSab := MakeJoinSab(lSab, dnIDFld,
                          lSabLnk, lnkDictIDFld);
  lJoinSab.Distinct(lJoinSab.TranslateFieldNumber([JFRec(lSabLnk.Table, lnkDocIDFld),
                                                   JFRec(lSab.Table, dnNumFld)]));
  //lList := dtMakeRecListByJoinSab(lJoinSab, [JFRec(lSabLnk.Table, lnkDocIDFld)], []);
  lJoinSab.SortJoin([JFRec(lSab.Table, -dnDateFld), JFRec(lSabLnk.Table, lnkDocIDFld), JFRec(lSab.Table, dnNumFld)]);
  if lJoinSab.Count > 0 then
  begin
   if f_NeedEmptyPara then
   begin
    Generator.StartChild(k2_idDecorTextPara);
    Generator.Finish;
   end;
   Generator.StartChild(k2_idDecorTextPara);
   try
    Generator.AddIntegerAtom(k2_tiStyle, ev_saColorSelection);
    Generator.AddStringAtom(k2_tiText, 'Хронология рассмотрения дела:')
   finally
    Generator.Finish;
   end;
   lRAProcStub := L2RecAccessProc(@lRecAccessProc);
   try
    l_PrevCode:= '';
    l_PrevDocID:= 0;
    lJoinSab.IterateJoinRecords(lRAProcStub, [JFRec(lSabLnk.Table, lnkDocIDFld), JFRec(lSab.Table, dnDateFld), JFRec(lSab.Table, dnNumFld)]);
   finally
    FreeRecAccessProc(lRAProcStub);
   end;
  end;
 end; // f_CaseCode <> ''
end; // DecorateDossier

procedure TlcDossierDecorator.DoAddAtomEx(AtomIndex: Long; const Value:
    Tk2Variant);
  //virtual;
  {-}
begin
 if CurrentType.InheritsFrom(k2_idNumAndDate) then// выдергиваем номера документа
 begin
  case AtomIndex of
   k2_tiType: f_CodeType:= TDNType(Value.AsInteger);
   k2_tiNumber:
    if (f_CodeType = dnLawCaseNum) and (f_CaseCode = '') then
    begin
     f_CaseCode:= Value.AsString.AsString;
     if (((Value.AsString as Tl3String).CodePage = cp_OEM){ or ((Value.AsString as Tl3String).CodePage = cp_OEMLite)}) then
      f_CaseCode:= l3OEM2ANSI(f_CaseCode);
    end;
  end; // case
 end
 else
 if CurrentType.InheritsFrom(k2_idTextPara) and (AtomIndex = k2_tiText) then
  f_NeedEmptyPara:= True
 else
 if CurrentType.InheritsFrom(k2_idDocument) then
  case AtomIndex of
   k2_tiType : f_NeedDecorate:= Value.AsInteger = Ord(dtRelText);
   k2_tiInternalHandle: f_DocID:= Value.AsInteger;
   k2_tiExternalHandle: f_ExDocID:= Value.AsInteger;
  end;
 inherited;
end;

procedure TlcDossierDecorator.DoCloseStructure(NeedUndo: Boolean);
  //virtual;
  {-вызывается на закрывающуюся скобку}
begin
 if CurrentType.InheritsFrom(k2_idDocument) and f_NeedDecorate then
  DecorateDossier;
 inherited;
end;

procedure TlcDossierDecorator.DoStartChild(TypeID: Long);
begin
 inherited;
 if CurrentType.InheritsFrom(k2_idDocument) then
  ClearParameters
 else
 if CurrentType.InheritsFrom(k2_idTextPara) then
  f_NeedEmptyPara:= False;
end;

function TlcDossierDecorator.IsDossierRelated: Boolean;
type
 l_TRec = packed record
  ID: TDocID;
  Num: TNumberStr;
 end;
var
 l_Idx: Integer;
 l_rec: l_TRec;
begin
 l_Rec.ID:= f_ExDocID;
 Result := f_DocList.FindRecord(l_Rec, l_Idx) and (f_CaseCode <> '');
end;

procedure TlcDossierDecorator.OpenStream;
var
 lSab      : ISab;
 lSabLnk   : ISab;
 lRenumSab : ISab;
 lFileSab  : ISab;

 lJoinFile_Renum   : IJoinSab;
 lJoinFile_Link  : IJoinSab;
 lJoinDict_Link,
 lJoinRenum_Link,
 lJoinSab    : IJoinSab;
 lJoinSab2   : IJoinSab;
 lJoinSabSum : IJoinSab;
const
 cCaseCodeType : TDNType = dnLawCaseNum;
 cDocTypeDossier : TUserType = utDossier;
begin
 inherited;
 f_Renum:= LinkServer(CurrentFamily).Renum;
  //найдем все Документы
 lSab := MakeEmptySab(MakePhoto(GlobalHtServer.GetTblObjectEx(CurrentFamily, Ord(ftFile))));
 lSab.SelectAll;
 lFileSab := MakeSabCopy(lSab);

 lRenumSab := MakeSabCopy(lSab);
 lRenumSab.ValuesOfKey(fRelated_fld);


 lSab.ValuesOfKey(fId_Fld);
 lSab.TransferToPhoto(lnkDocIDFld, LinkServer(CurrentFamily).Attribute[atDateNums]);
 lSab.ValuesOfKey(lnkDictIDFld);
 lSab.TransferToPhoto(dnIDFld, DictServer(CurrentFamily).GroupTbl[dlDateNums]);
 lSab.RecordsByKey;
 lSab.SubSelect(dnTypFld, cCaseCodeType);

 lSabLnk := MakeSabCopy(lSab);
 lSabLnk.ValuesOfKey(dnIDFld);

 lSabLnk.TransferToPhoto(lnkDictIDFld, LinkServer(CurrentFamily).Attribute[atDateNums]);
 lSabLnk.RecordsByKey;

 lJoinDict_Link := MakeJoinSab(lSabLnk, lnkDictIDFld,
                               lSab, dnIDFld);


 lRenumSab.TransferToPhoto(lnkDocIDFld, LinkServer(CurrentFamily).Attribute[atRenum]);
 lRenumSab.RecordsByKey;

 lJoinFile_Renum := MakeJoinSab(lRenumSab, rnRealID_fld,
                                lFileSab, fRelated_fld);

 lJoinFile_Link := MakeJoinSab(lFileSab, fID_fld,
                               lSabLnk, lnkDocIDFld);




 lJoinRenum_Link := MakeJoinSab(lJoinFile_Renum, lJoinFile_Link, True);

 lJoinSabSum := MakeJoinSab(lJoinRenum_Link, lJoinDict_Link, True);


 lJoinSabSum.SortJoin([JFRec(lRenumSab.Table, rnImportID_fld)]);

 f_DocList := dtMakeRecListByJoinSab(lJoinSabSum, [JFRec(lRenumSab.Table, rnImportID_fld),
                                                   JFRec(lSab.Table, dnNumFld)], [1]);

end;

class function TlcDossierDecorator.SetTo(var theGenerator: Ik2TagGenerator;
    aCaseCode: AnsiString): Ik2TagGenerator;
var
 l_Filter : TlcDossierDecorator;
begin
 l_Filter := Create;
 try
  l_Filter.f_ExportMode:= False;
  l_Filter.f_CaseCode:= aCaseCode;
  l_Filter.Generator := theGenerator;
  theGenerator := l_Filter;
 finally
  l3Free(l_Filter);
 end;//try..finally
 Result := theGenerator;
end;

procedure TlcDossierDecorator.StartTag(TagID: Long);
begin
 inherited;
  If CurrentType.InheritsFrom(k2_idDictRec) and
    (TopObject[0].isProp) then
  Begin
   If (TopObject[0].AsProp.TagIndex = k2_tiNumANDDates) then
    f_CaseCode:= '';
  end;
end;

end.
