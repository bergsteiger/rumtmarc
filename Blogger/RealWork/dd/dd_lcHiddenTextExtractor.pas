unit dd_lcHiddenTextExtractor;
{ Удаляет текст, оформленный как "невидимый" и выводит запись об этом в лог }
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
  Нужно проверить два случая:
   * абзац имеет признак "невидим"
   * сегмент имеет признак "невидим"
 }
 if not aLeaf.BoolA[k2_tiVisible] then
 begin
  Result:= False;
  WriteToLog(aLeaf.StrA[k2_tiText], False);
  // Конечно, еще может быть невидимый абзац и видимый сегмент, но мы на это плюем (пока)
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
      // Удаляем сегмент
      aLeaf.QT(InevObject, O);
      O.SubRange(nil, l_seg.IntA[k2_tiStart], l_seg.IntA[k2_tiFinish]).Formatting.Modify(nil).DeleteSegments;
      // Удаляем текст
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
  // Удаляем все оставшиеся сегменты
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
   l3System.Msg2Log('Номер дела: %s', [f_OnGetCaseCode]);
  //l3System.Msg2Log('Скрытый текст: %s, %s', [aText, IfThen(IsSeg, 'seg', 'para')]);
  l3System.Msg2Log('Скрытый текст: %s', [aText]);
 end;
end;

end.
