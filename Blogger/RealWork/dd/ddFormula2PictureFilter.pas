unit ddFormula2PictureFilter;
{ Превращает формулы в картинки }

{ $Id: ddFormula2PictureFilter.pas,v 1.5 2013/02/13 09:26:01 fireton Exp $ }
// $Log: ddFormula2PictureFilter.pas,v $
// Revision 1.5  2013/02/13 09:26:01  fireton
// - альфа-канал для картинок-формул
//
// Revision 1.4  2012/10/10 10:16:05  narry
// Формулы в PNG
//
// Revision 1.3  2012/08/30 13:55:23  narry
// Экспорт для Хаванского
//
// Revision 1.2  2012/08/27 11:28:06  narry
// Заменяет формулы картинками (для экспорта во внешние форматы)
//
// Revision 1.1  2012/08/22 14:01:35  narry
// Заменяет формулы картинками (для экспорта во внешние форматы)
//

interface

uses
  evdLeafParaFilter, k2Interfaces, l3types;

type
 TddFormula2PictureFilter = class(TevdLeafParaFilter)
 protected
        {* Summary
          Определяет нужно ли фильтровать переданный абзац.  }
  procedure DoWritePara(const aLeaf: Ik2Tag); override;
        {-}
  function ParaTypeForFiltering: Long; override;
 end;

implementation

uses
  TextPara_Const, evTypes, k2Tags, evdTypes,
  l3BitmapContainer,
  l3MetafileContainer,
  ExprDraw,
  ExprMake, evFont, l3Memory, l3BaseStream, l3InternalInterfaces, SysUtils, BitmapPara_Const,
  Formula_Const, l3GraphicContainer, l3Const, Math, l3Math, l3Base, ImageEnIO, ImageEnProc,
  hyieutils, hyiedefs;

type
  _B_ = {$IfDef UseMetafile}
        Tl3MetafileContainer
        {$Else  UseMetafile}
        Tl3BitmapContainer
        {$EndIf UseMetafile}
        ;


procedure TddFormula2PictureFilter.DoWritePara(const aLeaf: Ik2Tag);
var
 l_Seg: Ik2Tag;
 l_Layer: Ik2Tag;
 l_Bitmap  : _B_;
 l_Expr    : Tl3expr;
 l_F       : TevFont;
 l_Stream  : Tl3Stream;
 l_Pic     : Ik2Tag;
 I, J, K   : Integer;
const
 c_ColWhite: TRGB = (b:255; g:255; r:255);
begin
 l_Layer := aLeaf.cAtomEx([k2_tiSegments, k2_tiChildren, k2_tiHandle, ev_slObjects], nil);
 if l_Layer.IsValid then
 begin
  for i:= 0 to Pred(l_Layer.ChildrenCount) do
  begin
   l_Seg:= l_Layer.Child[i];
   // Проверить, что это формула
   if (l_Seg.ChildrenCount > 0) and l_Seg.Child[0].InheritsFrom(k2_idFormula) then
   begin
    try
     l_Expr:= SafeBuildExpr(l_Seg.Child[0].StrA[k2_tiText]);
    except
     on E: EIncorrectExpr do
     begin
      l3System.Msg2Log('Ошибка преобразования формулы "%s": %s', [l_Seg.Child[0].StrA[k2_tiText], E.Message]);
      l_Expr:= nil;
     end; // E: EIncorrectExpr
    end;
    try
     l_Seg.DeleteChild(0);
     if l_Expr <> nil then
     begin
      l_Bitmap:= _B_.Create;
      try
       l_F:= TevFont.Create;
       try
        l_F.Name:= l_Expr.Font.Name;
        // Видимо, нужно взять шрифт от абзаца
        //if Abs(aCHP.FontSize) <> propUndefined then
        l_F.Size:= aLeaf.cAtom(k2_tiFont).IntA[k2_tiSize];
        if l_F.Size = 0 then
         l_F.Size:= 12; // Заменить на константу
        l_Bitmap.SetParams(l_Expr As Il3Renderer, l_F);
       finally
        FreeAndNil(l_F);
       end;
       l_Stream:= Tl3MemoryStream.Create(nil);
       try
        l_Bitmap.Bitmap.SaveToStream(l_Stream);
        l_Stream.Seek(0, 0);
        with TImageEnIO.Create(nil) do
        try
         LoadFromStreamBMP(l_Stream);
         l_Stream.Seek(0, 0);
         l_Stream.Size:= 0;

         // создаём альфа-канал. это совершенно дикий код. потому что НАДО рисовать формулы
         // уже с альфа-каналом, но с нахрапа так сделать не получилось, поэтому тут вот это говно.
         IEBitmap.CreateAlphaChannel;
         for J := 0 to IEBitmap.Width - 1 do
          for K := 0 to IEBitmap.Height - 1 do
           if EqualRGB(IEBitmap.Pixels[J,K], c_ColWhite) then
            IEBitmap.Alpha[J,K] := 0
           else
            IEBitmap.Alpha[J,K] := 255;
            
         SaveToStreamPNG(l_Stream);
         l_Stream.Seek(0, 0);
        finally
         Free;
        end;
        l_Pic:= k2_typBitmapPara.MakeTag;
        l_Pic.ObjW[k2_tiData, nil]:= l_Stream;
        l_Pic.IntW[k2_tiDPI, nil]:= 96;
        l_Pic.IntW[k2_tiWidth, nil] :=  l3MulDiv(l_Bitmap.Width, l3Inch, 96);
        l_Pic.IntW[k2_tiHeight, nil] := l3MulDiv(l_Bitmap.Height, l3Inch, 96);
        l_Seg.AddChild(l_Pic);
       finally
        FreeAndNil(l_Stream);
       end;
      finally
       FreeAndNil(l_Bitmap);
      end;
     end; // l_Expr <> nil
    finally
     FreeAndNil(l_Expr);
    end;
   end;
  end; //for i
 end; // l_Segments.IsValid
 inherited DoWritePara(aLeaf);
end;

function TddFormula2PictureFilter.ParaTypeForFiltering: Long;
begin
 Result := k2_idTextPara;
end;

end.
