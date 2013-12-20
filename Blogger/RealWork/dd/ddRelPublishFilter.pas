unit ddRelPublishFilter;

{ $Id: ddRelPublishFilter.pas,v 1.11 2013/04/15 05:59:22 narry Exp $ }

// $Log: ddRelPublishFilter.pas,v $
// Revision 1.11  2013/04/15 05:59:22  narry
// �� ����������
//
// Revision 1.10  2013/04/11 16:46:28  lulin
// - ���������� ��� XE3.
//
// Revision 1.9  2012/08/14 12:00:27  narry
// ������������ ������ �� ���� (383584299)
//
// Revision 1.8  2012/07/26 04:14:52  fireton
// - "�������� �� ..." �� ������������ (K 377752256)
//
// Revision 1.7  2012/07/23 08:41:54  fireton
// - ����������� ����� ��� ������������� (� 377752251)
//
// Revision 1.6  2012/05/30 09:05:07  fireton
// - ������ ������ (� 367210765)
//
// Revision 1.5  2012/05/28 09:04:08  fireton
// - bug fix (K 363575115)
//
// Revision 1.4  2012/05/28 07:39:58  fireton
// - bug fix (K 363575115)
//
// Revision 1.3  2012/05/17 10:34:47  narry
// ������ ������ ����������� ���������� (363574319)
//
// Revision 1.2  2012/05/16 12:57:41  narry
// ������ ������ ����������� ���������� (363574319)
//
// Revision 1.1  2011/06/23 08:02:32  fireton
// - ������ ������� �� ������� ���������� �������������
//

interface
uses
 l3Interfaces,
 l3RegEx,

 evdLeafParaFilter,

 k2Interfaces,
 k2TagGen;

type
 TddRelPublishFilterWorkResult = (wrNotFound, wrAlreadyExist, wrDidTheJob);

 TddRelPublishFilter = class(TevdLeafParaFilter)
 private
  f_Address: AnsiString;
  f_ArticleNo: Integer;
  f_ArticleNoStr: Il3CString;
  f_LinkFinish: Integer;
  f_PubText: Il3CString;
  f_NormPubText: Il3CString;
  f_REPrimary : Tl3RegularSearch;
  f_RESecondary : Tl3RegularSearch;
  f_LinkSearcher : Tl3RegularSearch;
  f_LinkStart: Integer;
  f_WorkResult: TddRelPublishFilterWorkResult;
  procedure InsertPubText(const aLeaf: Ik2Tag; aFoundText: Tl3WString; const atext: AnsiString);
  function NoLinkAtPos(const aLeaf: Ik2Tag; aStart, aEnd: Longint): Boolean;
  function NormalizePubText(const aStr: Tl3WString): Il3CString;
  procedure pm_SetArticleNo(const Value: Integer);
  procedure pm_SetPubText(const Value: Il3CString);
 protected
  procedure Cleanup; override;
  procedure DeleteSegments(const aLeaf: Ik2Tag; aStart: Integer);
  procedure DoWritePara(const aLeaf: Ik2Tag); override;
 public
  constructor Create(anOwner: Tk2TagGeneratorOwner = nil); override;
  procedure NextDoc;
  property ArticleNo: Integer read f_ArticleNo write pm_SetArticleNo;
  property PubText: Il3CString read f_PubText write pm_SetPubText;
  property WorkResult: TddRelPublishFilterWorkResult read f_WorkResult write f_WorkResult;
 end;

implementation
uses
 SysUtils,

 l3Types,
 l3Base,
 l3String,
 l3Chars,

 k2Tags, l3PrimString, Segment_Const, evHyperlink, nevNavigation, evSegLst, evdTypes, evdStyles,
 k2Types, k2Base, Hyperlink_Const, evTextParaTools, nevTools, afwNavigation, Address_Const,
 Dt_LinkServ, DT_Const, Dt_ReNum;

constructor TddRelPublishFilter.Create(anOwner: Tk2TagGeneratorOwner = nil);
begin
 inherited Create(anOwner);
 f_REPrimary := Tl3RegularSearch.Create;
 f_REPrimary.IgnoreCase := True;
 f_REPrimary.SearchPattern := '^{�����\s.+?\s}((���������� ����������� �� ���)|(������[�]� �� .+)|(����������� �� .+))\.?$';
 f_RESecondary := Tl3RegularSearch.Create;
 f_RESecondary.IgnoreCase := True;
 f_RESecondary.SearchPattern := '^{�����\s.+?\s((�����������)|(������[�]�)) ((�)|(��)) .+}\.?$';
 f_LinkSearcher := Tl3RegularSearch.Create;
 f_LinkSearcher.IgnoreCase := True;
 f_LinkSearcher.SearchPattern := #4'{.+}'#4'{.+}'#4;
end;

procedure TddRelPublishFilter.Cleanup;
begin
 FreeAndNil(f_REPrimary);
 FreeAndNil(f_RESecondary);
 FreeAndNil(f_LinkSearcher);
 inherited;
end;

procedure TddRelPublishFilter.DeleteSegments(const aLeaf: Ik2Tag; aStart: Integer);
var
 O: InevObject;
begin
 aLeaf.QT(InevObject, O);
 O.SubRange(nil, aStart, MaxInt).Formatting.Modify(nil).DeleteSegments;
 O.SubRange(nil, aStart, MaxInt).Formatting.Modify(nil).DeleteHyperlink;
end;

procedure TddRelPublishFilter.DoWritePara(const aLeaf: Ik2Tag);
var
 l_Text: Tl3WString;
 l_MP  : Tl3MatchPosition;
 l_NewText: Il3CString;
begin
 l_Text := aLeaf.PCharLenA[k2_tiText];
 if f_REPrimary.SearchInString(l_Text, l_MP) then
  InsertPubText(aLeaf, f_REPrimary.TagParts[0].AsWStr, '����������� ')
 else
  if f_RESecondary.SearchInString(l_Text, l_MP) then
  begin
   if l3Pos(NormalizePubText(f_RESecondary.TagParts[0].AsWStr), f_NormPubText.AsWStr) >= 0 then
    f_WorkResult := wrAlreadyExist
   else
    InsertPubText(aLeaf, f_RESecondary.TagParts[0].AsWStr, ', ');
  end;
 inherited;
end;

procedure TddRelPublishFilter.InsertPubText(const aLeaf: Ik2Tag; aFoundText: Tl3WString; const
    atext: AnsiString);
var
 l_NewText: Il3CString;
 l_Start, l_Finish: Integer;
 l_DotPos: Integer;
 l_Addr: Ik2Tag;
 l_Seg: Ik2Tag;
 l_DocID, l_SubID: Integer;
begin
 // ����� ������� ��� ������ ����� aFoundText
 DeleteSegments(aLeaf, aFoundText.SLen);
 if f_address = '' then
 begin
  l_NewText := l3Cat([l3CStr(aFoundText), l3CStr(aText), f_PubText, f_ArticleNoStr]);
  aLeaf.PCharLenA[k2_tiText] := Tl3PCharLen(l_NewText.AsWStr);
 end
 else
 begin
  l_NewText := l3Cat([l3CStr(aFoundText), l3CStr(aText)]);
  l_Start:= l_NewText.AsWStr.SLen + f_LinkStart;
  l_Finish:= l_NewText.AsWStr.SLen + f_LinkFinish;
  l_NewText:= l3Cat([l_Newtext, f_Pubtext, f_ArticleNoStr]);
  aLeaf.PCharLenA[k2_tiText] := Tl3PCharLen(l_NewText.AsWStr);
  if NoLinkAtPos(aLeaf, l_Start, l_Finish) then
  begin
   l_DotPos:= Pos('.', f_Address);
   if l_DotPos = 0 then
   begin
    l_DocID:= strToIntDef(f_Address, 0);
    l_SubId:= 0;
   end
   else
   begin
    l_DocID:= strToIntDef(Copy(f_Address, 1, Pred(l_DotPos)), 0);
    l_SubID:= strToIntDef(Copy(f_Address, Succ(l_DotPos), maxInt), 0);
   end;
   if l_DocID <> 0 then
   begin
    l_DocID:= Linkserver(CurrentFamily).Renum.ConvertExternalDocNumberToInternal(l_DocID);
    with aLeaf.cAtomEx([k2_tiSegments, k2_tiChildren, k2_tiHandle, ev_slHyperlinks], nil) do
    begin
     l_Seg := k2_typHyperLink.MakeTag;
     l_Seg.IntA[k2_tiStart]  := l_Start;
     l_Seg.IntA[k2_tiFinish] := l_Finish;

     l_Addr := k2_typAddress.MakeTag;
     l_Addr.IntA[k2_tiDocID] := l_DocID;
     l_Addr.IntA[k2_tiSubID] := l_SubID;
     l_Seg.AddChild(l_Addr);

     AddChild(l_Seg);
    end; // aLeaf.cAtomEx([k2_tiSegments, k2_tiChildren, k2_tiHandle, ev_slHyperlinks], nil)
   end; // l_DocID <> 0
  end; // NoLinkAtPos(aLeaf, l_Start, l_Finish)
 end;
 f_WorkResult := wrDidTheJob;
end;

procedure TddRelPublishFilter.NextDoc;
begin
 f_WorkResult := wrNotFound;
end;

function TddRelPublishFilter.NoLinkAtPos(const aLeaf: Ik2Tag; aStart, aEnd: Longint): Boolean;
var
 l_Layer: Ik2Tag;
begin
 l_Layer := aLeaf.cAtomEx([k2_tiSegments, k2_tiChildren, k2_tiHandle, ev_slHyperlinks], nil);
 Result := evIsSegmentsLayerEmpty(aLeaf, l_Layer, aStart, aEnd);
end;

function TddRelPublishFilter.NormalizePubText(const aStr: Tl3WString): Il3CString;
begin
 Result := l3Upper(aStr);
 l3Replace(Result, cc_NonReadable + [cc_SoftSpace], ' ');
 l3Replace(Result, ['�'], 'N');
end;

procedure TddRelPublishFilter.pm_SetArticleNo(const Value: Integer);
begin
 f_ArticleNo := Value;
 if f_ArticleNo > 0 then
  f_ArticleNoStr := l3Cat([l3CStr(' '), l3CStr(IntToStr(f_ArticleNo))])
 else
  f_ArticleNoStr := nil;
end;

procedure TddRelPublishFilter.pm_SetPubText(const Value: Il3CString);
var
 l_MP  : Tl3MatchPosition;
begin
 f_PubText := Value;
 f_LinkStart:= -1;
 f_LinkFinish:= -1;
 f_Address:= '';
 if f_LinkSearcher.SearchInString(f_PubText.AsWStr, l_MP) then
 begin
  // ������� ���������� ������
  l3Delete(f_PubText, l_MP.StartPos, l_MP.Length);
  // �������� TagParts[0]
  l3Insert(f_PubText, l_MP.StartPos, f_LinkSearcher.TagParts[0].AsString);
  // ��������� ������-�����
  f_LinkStart:= l_MP.StartPos;
  f_LinkFinish:= f_LinkStart + f_LinkSearcher.TagParts[0].AsWStr.SLen;
  f_Address:= f_LinkSearcher.TagParts[1].AsString;
 end;
 f_NormPubText := NormalizePubText(f_PubText.AsWStr);
end;

end.