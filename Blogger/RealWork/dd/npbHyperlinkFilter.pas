unit npbHyperlinkFilter;

interface

uses
  evdLeafParaFilter, k2Interfaces;

type
 TnpbHyperlinkFilter = class(TevdLeafParaFilter)
 protected
        {* Summary
          Определяет нужно ли фильтровать переданный абзац.  }
  procedure DoWritePara(const aLeaf: Ik2Tag); override;
 end;

implementation

uses
  evSegLst, evdTypes, StrUtils, k2Tags;

procedure TnpbHyperlinkFilter.DoWritePara(const aLeaf: Ik2Tag);
var
 l_Layer: Ik2Tag;
 i: Integer;
begin
 if not (AnsiContainsText(aLeaf.StrA[k2_tiText], 'См. данную форму в') or AnsiContainsText(aLeaf.StrA[k2_tiText], 'См. графический объект')) then
 begin
  l_Layer := aLeaf.cAtomEx([k2_tiSegments, k2_tiChildren, k2_tiHandle, ev_slHyperlinks], nil);
  if l_Layer.IsValid then
   l_Layer.DeleteChildren;
 end;
 inherited DoWritePara(aLeaf);
end;

end.
