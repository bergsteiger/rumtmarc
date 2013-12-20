unit dd_lcHiddenTextExtractor;
{ ������� �����, ����������� ��� "���������" � ������� ������ �� ���� � ��� }
interface

uses
  evdLeafParaFilter, k2Interfaces;

type
 TGetCaseCodeEvent = function: AnsiString of object;
 Tdd_lcHiddenTextExtractor = class(TevdLeafParaFilter)
 private
  f_OnGetCaseCode: TGetCaseCodeEvent;
  procedure WriteToLog(const aText: AnsiString; IsSeg: Boolean);
 protected
  function NeedWritePara(const aLeaf: Ik2Tag): Boolean; override;
 public
  property OnGetCaseCode: TGetCaseCodeEvent read f_OnGetCaseCode write
      f_OnGetCaseCode;
 end;

implementation

uses
  k2Tags, l3Base, EvdTypes, NevTools, StrUtils;

function Tdd_lcHiddenTextExtractor.NeedWritePara(const aLeaf: Ik2Tag): Boolean;
var
 l_Seg: Ik2Tag;
 l_Layer: Ik2Tag;
 i: Integer;
 O: InevObject;
 l_S: AnsiString;
begin
 {
  ����� ��������� ��� ������:
   * ����� ����� ������� "�������"
   * ������� ����� ������� "�������"
 }
 if not aLeaf.BoolA[k2_tiVisible] then
 begin
  Result:= False;
  WriteToLog(aLeaf.StrA[k2_tiText], False);
  // �������, ��� ����� ���� ��������� ����� � ������� �������, �� �� �� ��� ����� (����)
 end
 else
 begin
  aLeaf.AttrW[k2_tiFont, nil]:= nil;
  l_Layer := aLeaf.cAtomEx([k2_tiSegments, k2_tiChildren, k2_tiHandle, ev_slView], nil);
  if l_Layer.IsValid then
  begin
   i:= 0;
   while i < l_Layer.ChildrenCount do
   begin
    l_Seg:= l_Layer.Child[i];
    if not l_Seg.BoolA[k2_tiVisible] then
    begin
     if (l_seg.IntA[k2_tiStart] < aLeaf.PCharLenA[k2_tiText].SLen) and
        (l_seg.IntA[k2_tiStart] <> l_seg.IntA[k2_tiFinish]) then
     begin
      WriteToLog(Copy(aLeaf.StrA[k2_tiText],
                      l_seg.IntA[k2_tiStart],
                      Succ(l_seg.IntA[k2_tiFinish]-l_seg.IntA[k2_tiStart])), True);
      // ������� �������
      aLeaf.QT(InevObject, O);
      O.SubRange(nil, l_seg.IntA[k2_tiStart], l_seg.IntA[k2_tiFinish]).Formatting.Modify(nil).DeleteSegments;
      // ������� �����
      l_S:= aLeaf.StrA[k2_tiText];
      Delete(l_S, l_seg.IntA[k2_tiStart], Succ(l_seg.IntA[k2_tiFinish]-l_seg.IntA[k2_tiStart]));
      aLeaf.StrW[k2_tiText, nil]:= l_S;
     end
     else
      Inc(i);
    end
    else
     Inc(i);
   end;
  end;
  // ������� ��� ���������� ��������
  aLeaf.QT(InevObject, O);
  O.Range.Formatting.Modify(nil).DeleteSegments;
  Result:= inherited NeedWritePara(aLeaf);
 end;
end;

procedure Tdd_lcHiddenTextExtractor.WriteToLog(const aText: AnsiString; IsSeg:
    Boolean);
begin
 if (aText <> '') and (aText <> ' ') then
 begin
  if Assigned(f_OnGetCaseCode) then
   l3System.Msg2Log('����� ����: %s', [f_OnGetCaseCode]);
  //l3System.Msg2Log('������� �����: %s, %s', [aText, IfThen(IsSeg, 'seg', 'para')]);
  l3System.Msg2Log('������� �����: %s', [aText]);
 end;
end;

end.
