unit evCommentDecorator;

{ ��������� ����� � ������� "���������� �� ����������" ����� ������� �� ������ ���������� � ������ }

interface

uses evdLeafParaFilter, k2Interfaces, evCommentParaDecorator;

type
 TevCommentDecorator = class(TevCommentParaDecorator)
 private
  f_VerCommentWritten: Boolean;
 protected
  procedure DoWritePara(const aLeaf: Ik2Tag); override;
  procedure OpenStream; override;
 end;

implementation

uses
 evdStyles,
 k2Tags, TextPara_Const, Graphics;

procedure TevCommentDecorator.DoWritePara(const aLeaf: Ik2Tag);
begin
 if f_VerCommentWritten then
 begin
  if (aLeaf.IntA[k2_tiStyle] <> ev_saVersionInfo) then
   f_VerCommentWritten := false;
 end
 else
 if (aLeaf.IntA[k2_tiStyle] = ev_saVersionInfo) then
 begin
  f_VerCommentWritten := True;
   Generator.StartChild(k2_idTextPara);
   try
    //Generator.AddStringAtom(k2_tiText, '���������� �� ����������');
    Generator.AddPCharLenAtom(k2_tiText, aLeaf.Attr[k2_tiStyle].PCharLenA[k2_tiShortName]);
    // - http://mdp.garant.ru/pages/viewpage.action?pageId=297712959
    Generator.AddIntegerAtom(k2_tiStyle, ev_saTxtComment);
    Generator.StartTag(k2_tiFont);
    try
     Generator.AddIntegerAtom(k2_tiForeColor, clBlack);
     Generator.AddIntegerAtom(k2_tiSize, 8);
    finally
     Generator.Finish;
    end;//try..finally
   finally
    Generator.Finish;
   end;//try..finally
 end;
 inherited;
end;

procedure TevCommentDecorator.OpenStream;
begin
 inherited;
 f_VerCommentWritten := false;
end;

end.




