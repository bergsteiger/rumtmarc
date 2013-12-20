unit ddVersionCommentDecorator;

{ Добавляет абзац с текстом "Информация об изменениях" перед абзацем со стилем Информация о версии }

interface

uses evdLeafParaFilter, k2Interfaces, evCommentParaDecorator;

type
 TddVersionCommentDecorator = class(TevCommentParaDecorator)
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

procedure TddVersionCommentDecorator.DoWritePara(const aLeaf: Ik2Tag);
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
    Generator.AddStringAtom(k2_tiText, 'Информация об изменениях');
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

procedure TddVersionCommentDecorator.OpenStream;
begin
 inherited;
 f_VerCommentWritten := false;
end;

end.




