unit l3ImageUtils;

{ $Id: l3ImageUtils.pas,v 1.2 2010/12/10 18:29:45 lulin Exp $ }

// $Log: l3ImageUtils.pas,v $
// Revision 1.2  2010/12/10 18:29:45  lulin
// {RequestLink:245761273}.
//
// Revision 1.1  2010/10/15 14:01:57  fireton
// - строим дифу картинок
//

interface

procedure l3BuildComparisonImage(const aEtalonFN, aTestFN, aResultFN: string);

implementation
uses
 SysUtils,
 Graphics,
 m2memlib,
 hyiedefs,
 hyieutils,
 imageenio,
 imageenproc;

function MergeRGB(const aRGB1, aRGB2: TRGB): TRGB;
const
 C1 = 0.8;
 C2 = 0.2;
begin
 Result.r := blimit(Round(aRGB1.r*C1 + aRGB2.r*C2));
 Result.g := blimit(Round(aRGB1.g*C1 + aRGB2.g*C2));
 Result.b := blimit(Round(aRGB1.b*C1 + aRGB2.b*C2));
end;


procedure l3BuildComparisonImage(const aEtalonFN, aTestFN, aResultFN: string);
var
 l_IO : TImageEnIO;
 l_Etalon : TIEBitmap;
 l_Test   : TIEBitmap;
 l_CheckWidth, l_CheckHeight : Integer;
 l_Red: TRGB;
 I, J : Integer;
 l_E: TRGB;
 l_T: TRGB;
 l_RH, l_RS, l_RL : Double;
 l_EH, l_ES, l_EL : Double;
 l_TH, l_TS, l_TL : Double;
begin
 l_Etalon := TIEBitmap.Create;
 try
  l_Test := TIEBitmap.Create;
  try
   l_IO := TImageEnIO.Create(nil);
   try
    l_IO.AttachedIEBitmap := l_Etalon;
    l_IO.LoadFromFile(aEtalonFN);
    l_IO.AttachedIEBitmap := l_Test;
    l_IO.LoadFromFile(aTestFN);
   finally
    FreeAndNil(l_IO);
   end;
   l_Etalon.PixelFormat := ie24RGB;
   l_Test.PixelFormat := ie24RGB;

   if l_Etalon.Width < l_Test.Width then
   begin
    l_CheckWidth := l_Etalon.Width;
    l_Etalon.Width := l_Test.Width;
    l_Etalon.FillRect(l_CheckWidth, 0, l_Etalon.Width-1, l_Etalon.Height-1, clRed);
   end
   else
    if l_Etalon.Width > l_Test.Width then
    begin
     l_CheckWidth := l_Test.Width;
     l_Etalon.FillRect(l_CheckWidth, 0, l_Etalon.Width-1, l_Etalon.Height-1, clYellow);
    end
    else
     l_CheckWidth := l_Etalon.Width;

   if l_Etalon.Height < l_Test.Height then
   begin
    l_CheckHeight := l_Etalon.Height;
    l_Etalon.Height := l_Test.Height;
    l_Etalon.FillRect(0, l_CheckHeight, l_Etalon.Width-1, l_Etalon.Height-1, clRed);
   end
   else
    if l_Etalon.Height > l_Test.Height then
    begin
     l_CheckHeight := l_Test.Height;
     l_Etalon.FillRect(0, l_CheckHeight, l_Etalon.Width-1, l_Etalon.Height-1, clYellow);
    end
    else
     l_CheckHeight := l_Etalon.Height;

    l_Red.r := 255;
    l_Red.g := 0;
    l_Red.b := 0;

    RGB2HSL(l_Red, l_RH, l_RS, l_RL);

    for I := 0 to l_CheckWidth - 1 do
     for J := 0 to l_CheckHeight - 1 do
     begin
      l_E := l_Etalon.Pixels_ie24RGB[I, J];
      l_T := l_Test.Pixels_ie24RGB[I, J];
      if m2MEMCompare(@l_E, @l_T, SizeOf(TRGB)) <> 0  then
      begin

       RGB2HSL(l_E, l_EH, l_ES, l_EL);
       RGB2HSL(l_E, l_TH, l_TS, l_TL);
       {
       if l_EL > l_TL then
        HSL2RGB(l_E, l_RH, l_ES, l_EL)
       else
        HSL2RGB(l_E, l_RH, l_TS, l_RL);
       }
       if l_EL > l_TL then
        l_Etalon.Pixels_ie24RGB[I, J] := MergeRGB(l_E, l_Red)
       else
        l_Etalon.Pixels_ie24RGB[I, J] := MergeRGB(l_T, l_Red);
      end;
     end;

    l_IO := TImageEnIO.Create(nil);
    try
     l_IO.AttachedIEBitmap := l_Etalon;
     l_IO.SaveToFilePNG(aResultFN);
    finally
     FreeAndNil(l_IO);
    end;

  finally
   FreeAndNil(l_Test);
  end;
 finally
  FreeAndNil(l_Etalon);
 end;
end;

end.
