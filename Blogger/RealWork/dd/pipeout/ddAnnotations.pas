unit ddAnnotations;

{ $Id: ddAnnotations.pas,v 1.13 2013/07/18 09:55:52 fireton Exp $ }

// $Log: ddAnnotations.pas,v $
// Revision 1.13  2013/07/18 09:55:52  fireton
// - убираем технические комментарии из аннотаций Прайма (K 443842668)
//
// Revision 1.12  2013/04/11 16:46:52  lulin
// - отлаживаем под XE3.
//
// Revision 1.11  2012/10/26 07:27:24  narry
// Залить новую партию НСРов (406126937)
//
// Revision 1.10  2010/06/17 09:02:18  narry
// - K206078273
//
// Revision 1.9  2009/03/13 15:12:11  narry
// - рефакторинг
//
// Revision 1.8  2006/04/12 10:54:20  narry
// - обновление
//
// Revision 1.7  2005/10/21 13:20:49  narry
// - исправление: не собиралось
//
// Revision 1.6  2005/09/07 15:07:20  narry
// - update
//
// Revision 1.5  2005/07/14 15:35:16  narry
// - cleanup
//
// Revision 1.4  2005/03/29 15:57:56  narry
// -update: теперь выливаем в Windows-кодировке
//
// Revision 1.3  2005/03/29 08:34:52  lulin
// - bug fix: не компилировалось.
//
// Revision 1.2  2005/03/21 12:59:35  narry
// - не компилировалось
//
// Revision 1.1  2005/03/04 16:08:48  narry
// - новинка: реализация импорта Пучин-нср
//

interface

Uses
 l3Base, l3Filer, l3Types,
 evdLeafParaFilter,
 k2TagGen, k2ForkGenerator, k2Interfaces,
 SewerPipe;

type
 TddAnnotationPipe = class(Tl3Base)
 private
   FFileName: AnsiString;
   FFiler: Tl3DOSFiler;
   FFork: Tk2ForkGenerator;
   FG: Tk2TagGenerator;
   FPipe: TSewerPipe;
   procedure _TopicInit(Sender: TObject; TopicNo: Long);
 protected
   procedure Cleanup; override;
 public
   constructor Create(aOwner: TObject);
   procedure Execute;
   property FileName: AnsiString read FFileName write FFileName;
   property Pipe: TSewerPipe read FPipe;
 end;

 TddAppearanceEliminator = class(TevdLeafParaFilter)
 { Фильтрация оформления текста и абзаца  }
 protected
  procedure DoWritePara(const aLeaf: Ik2Tag); override;
 end;

implementation

Uses
 ddFixFilter, ddNSRC_w,
 k2Tags,
 evParaEliminator, evEvdWriter, evTextFormatter, evHiddenFilter,
 evdStyles,
 l3Chars, k2BaseTypes, TextPara_Const
 ;

constructor TddAnnotationPipe.Create(aOwner: TObject);
var
 l_G2: Tk2TagGenerator;
begin
  inherited Create(aOwner);
  FPipe := TSewerPipe.Create(nil);
  FPipe.ExportDocument:= False;
  FPipe.ExportAnnotation := True;
  FPipe.ExportEmpty:= False;
  FPipe.ExportKW:= False;
  FPipe.Convert2OEM := False;
  FPipe.SpecialAnnotation := True;
  FFiler := Tl3DOSFiler.Create;
  TddNSRCGenerator.SetTo(FG);
  TddNSRCGenerator(FG).Filer := FFiler;
  TddNSRCGenerator(FG).CodePage := CP_Ansi;//CP_OEMLite;
  TddNSRCGenerator(FG).OnTopicInit := _TopicInit;
  TevTextFormatter.SetTo(FG);
  TddAppearanceEliminator.SetTo(FG);
  TevHiddenFilter.SetTo([Abs(ev_saTechComment)], False, FG);
  FPipe.Writer := FG;
end;

procedure TddAnnotationPipe.Cleanup;
begin
 l3Free(FG);
 l3Free(FFiler);
 l3Free(FPipe);
 inherited;
end;

procedure TddAnnotationPipe.Execute;
begin
 FPipe.SpecialFiler := FFiler;
 FFiler.FileName := FileName;
 fFiler.Mode := l3_fmWrite;
 FFiler.Open;
 fFiler.CodePage := cp_Ansi;
 FPipe.Execute();
 FFiler.Close;
end;

procedure TddAnnotationPipe._TopicInit(Sender: TObject; TopicNo: Long);
begin
 fPipe.WriteSpecialName;
end;

{ TddAppearanceEliminator }

procedure TddAppearanceEliminator.DoWritePara(const aLeaf: Ik2Tag);
begin
 Generator.StartChild(aLeaf.TagType.ID);
 try
  { Оставляем все, кроме оформления абзаца }
  if aLeaf.InheritsFrom(k2_idTextPara) then
   aLeaf.Write(Generator, l3_spfAll, [k2_tiSegments, k2_tiJustification,
                                      k2_tiStyle, k2_tiFirstIndent, k2_tiLeftIndent]);
 finally
  Generator.Finish;
 end;
end;


end.
 