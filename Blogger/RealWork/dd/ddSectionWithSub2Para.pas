unit ddSectionWithSub2Para;
{ ������� ������� ��������, ����������� ������� ������� � ������� � ������ }
interface

uses
 evdLeafParaFilter, k2Interfaces, L3Types;

type
 TddSectionWithSub2ParaFilter = class(TevdLeafParaFilter)
 protected
        {* Summary
          ���������� ����� �� ����������� ���������� �����.  }
  procedure DoWritePara(const aLeaf: Ik2Tag); override;
        {-}
  function ParaTypeForFiltering: Long; override;
 end;

implementation

uses
 SectionBreak_Const, k2Tags, TextPara_Const, k2BaseTypes;

procedure TddSectionWithSub2ParaFilter.DoWritePara(const aLeaf: Ik2Tag);
  //virtual;
  {-}
begin
 if aLeaf.Attr[k2_tiSubs].IsValid then
 begin
  Generator.StartChild(k2_idTextPara);
  try
   aLeaf.Write(Generator, l3_spfInner, [k2_tiParas]);
  finally
   Generator.Finish;
  end;//try..finally
 end
end;

function TddSectionWithSub2ParaFilter.ParaTypeForFiltering: Long;
  //virtual;
  {-}
begin
 Result := k2_idSectionBreak;
end;

end.
