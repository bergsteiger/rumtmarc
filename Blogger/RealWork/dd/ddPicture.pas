unit ddPicture;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "dd"
// Модуль: "w:/common/components/rtl/Garant/dd/ddPicture.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::dd::ddCommon::TddPicture
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

interface

uses
  l3Base,
  Classes,
  ddTextParagraph,
  k2Interfaces,
  ddCustomDestination
  ;

type
 TddPicture = class(TddTextParagraph)
 private
 // private fields
   f_IsBinary : Boolean;
    {* Поле для свойства IsBinary}
   f_BPP : Integer;
    {* Поле для свойства BPP}
   f_CropL : Integer;
    {* Поле для свойства CropL}
   f_CropR : Integer;
    {* Поле для свойства CropR}
   f_CropB : Integer;
    {* Поле для свойства CropB}
   f_CropT : Integer;
    {* Поле для свойства CropT}
   f_ExternalHandle : Integer;
    {* Поле для свойства ExternalHandle}
   f_ExternalPath : AnsiString;
    {* Поле для свойства ExternalPath}
   f_Format : Integer;
    {* Поле для свойства Format}
   f_GoalX : Integer;
    {* Поле для свойства GoalX}
   f_GoalY : Integer;
    {* Поле для свойства GoalY}
   f_Height : Integer;
    {* Поле для свойства Height}
   f_ScaleX : Integer;
    {* Поле для свойства ScaleX}
   f_ScaleY : Integer;
    {* Поле для свойства ScaleY}
   f_Width : Integer;
    {* Поле для свойства Width}
   f_Stream : TStream;
    {* Поле для свойства Stream}
   f_Picture : Tl3String;
    {* Поле для свойства Picture}
 private
 // private methods
   procedure CropPicture;
 protected
 // property methods
   procedure pm_SetIsBinary(aValue: Boolean);
   function pm_GetFormat: Integer;
   function pm_GetStream: TStream;
   procedure pm_SetStream(aValue: TStream);
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 public
 // overridden public methods
   procedure Assign(Source: TPersistent); override;
   procedure Clear; override;
   procedure Write2Generator(const Generator: Ik2TagGenerator;
     aNeedProcessRow: Boolean;
     LiteVersion: Boolean); override;
   constructor Create(anOwner: TObject;
    aDetination: TddCustomDestination); override;
 protected
 // protected methods
   procedure ConvertToBin;
   procedure ConvertToHex;
 public
 // public methods
   procedure AddHexStream(aValue: TStream);
 public
 // public properties
   property IsBinary: Boolean
     read f_IsBinary
     write pm_SetIsBinary;
   property BPP: Integer
     read f_BPP
     write f_BPP;
   property CropL: Integer
     read f_CropL
     write f_CropL;
   property CropR: Integer
     read f_CropR
     write f_CropR;
   property CropB: Integer
     read f_CropB
     write f_CropB;
   property CropT: Integer
     read f_CropT
     write f_CropT;
   property ExternalHandle: Integer
     read f_ExternalHandle
     write f_ExternalHandle;
   property ExternalPath: AnsiString
     read f_ExternalPath
     write f_ExternalPath;
   property Format: Integer
     read pm_GetFormat
     write f_Format;
   property GoalX: Integer
     read f_GoalX
     write f_GoalX;
   property GoalY: Integer
     read f_GoalY
     write f_GoalY;
   property Height: Integer
     read f_Height
     write f_Height;
   property ScaleX: Integer
     read f_ScaleX
     write f_ScaleX;
   property ScaleY: Integer
     read f_ScaleY
     write f_ScaleY;
   property Width: Integer
     read f_Width
     write f_Width;
   property Stream: TStream
     read pm_GetStream
     write pm_SetStream;
   property Picture: Tl3String
     read f_Picture;
 end;//TddPicture

implementation

uses
  imageenview,
  l3Chars,
  l3Memory,
  SysUtils,
  ddRTFUnits,
  imageenio,
  ddConst,
  k2Tags,
  l3Math,
  evdTypes,
  ddBase,
  RTFtypes,
  ddEVDTypesSupport
  ;

// start class TddPicture

procedure TddPicture.CropPicture;
//#UC START# *521AEAB901C0_51E8DC3E0361_var*
var
 l_Pic: TImageEnView;
 x1, x2, y1, y2: Integer;
 l_DPIX, l_DPIY: Integer;
//#UC END# *521AEAB901C0_51E8DC3E0361_var*
begin
//#UC START# *521AEAB901C0_51E8DC3E0361_impl*
 if (CropL <> 0) or (CropR <> 0) or (CropT <> 0) or (CropB <> 0) then
 begin
  l_Pic:= TImageEnView.Create(nil);
  try
   l_pic.IO.LoadFromStream(f_Stream);
   l_DPIX:= l_Pic.DpiX; l_DPIY:= l_Pic.DpiY;
   if l_Pic.DpiX > 96 then
    l_Pic.DpiX:= 96;
   if l_Pic.DpiY > 96 then
    l_Pic.DpiY:= 96;
   x1:= Twip2Pixel(CropL, l_PIC.DpiX);
   x2:= Twip2Pixel(CropR, l_PIC.DpiX);
   y1:= Twip2Pixel(CropT, l_PIC.DpiY);
   y2:= Twip2Pixel(CropB, l_PIC.DpiY);
   Height:= 0;
   Width:= 0;
   l_Pic.SelectionBase:= iesbBitmap;
   l_Pic.Select(x1, y1, l_Pic.IO.Params.Width-x2, l_Pic.IO.Params.Height-y2,iespReplace);
   l_Pic.Proc.CropSel;
   if l_Pic.IO.Params.DPI > 96 then
    l_Pic.IO.Params.DPI:= 96;
   f_Stream.Seek(0, 0);
   f_Stream.Size:= 0;
   l_Pic.IO.SaveToStreamPNG(f_Stream);
   f_Stream.Seek(0, 0);
  finally
   FreeAndNil(l_pic);
  end;
 end; // (CropL <> 0) or (CropR <> 0) or (CropT <> 0) or (CropB <> 0)
//#UC END# *521AEAB901C0_51E8DC3E0361_impl*
end;//TddPicture.CropPicture

procedure TddPicture.ConvertToBin;
//#UC START# *521AEACF0234_51E8DC3E0361_var*
var
 l_Buf: PAnsiChar;
//#UC END# *521AEACF0234_51E8DC3E0361_var*
begin
//#UC START# *521AEACF0234_51E8DC3E0361_impl*
 if not f_Picture.Empty then
 begin
  l3System.GetLocalMem(l_Buf, f_Picture.Len*2+1);
  try
   l3FillChar(l_Buf^, f_Picture.Len*2+1, 0);
   HexToBin(f_Picture.St, l_Buf, f_Picture.Len*2+1);
   f_Stream.Write(l_Buf^, f_Picture.Len*2+1);
   f_Stream.Seek(0, soBeginning);
  finally
   l3System.FreeLocalMem(l_Buf);
  end;
  f_Picture.Clear;
 end;
 f_IsBinary:= True;
//#UC END# *521AEACF0234_51E8DC3E0361_impl*
end;//TddPicture.ConvertToBin

procedure TddPicture.ConvertToHex;
//#UC START# *521AEAE60288_51E8DC3E0361_var*
const
 l_EOL : PAnsiChar = cc_EOL;
var
 l_Bin       : array [0..8 * 1024 - 1] of AnsiChar;
 l_Hex       : array [0..8 * 1024 * 2 - 1] of AnsiChar;
 l_BinStream : TStream;
 l_HexStream : Tl3StringStream;
 Count       : Longint;
//#UC END# *521AEAE60288_51E8DC3E0361_var*
begin
//#UC START# *521AEAE60288_51E8DC3E0361_impl*
 if f_Stream.Size > 0 then
 begin
  l_HexStream := Tl3StringStream.Create(f_Picture);
  try
   f_Stream.Seek(0, 0);
   l_BinStream := f_Stream;
   while true do begin
    Count := l_BinStream.Read(l_Bin, SizeOf(l_Bin));
    if (Count = 0) then break;
    BinToHex(l_Bin, l_Hex, Count);
    l_HexStream.Write(l_Hex, Count * 2);
   end;//while true
  finally
   FreeAndNil(l_HexStream);
  end;//try..finally
 end;
 f_IsBinary:= False;
//#UC END# *521AEAE60288_51E8DC3E0361_impl*
end;//TddPicture.ConvertToHex

procedure TddPicture.AddHexStream(aValue: TStream);
//#UC START# *521AEB0F021C_51E8DC3E0361_var*
var
 l_Buffer: PAnsiChar;
 l_BinBuf: PAnsiChar;
 l_Size: Int64;
//#UC END# *521AEB0F021C_51E8DC3E0361_var*
begin
//#UC START# *521AEB0F021C_51E8DC3E0361_impl*
 if not Text.Empty then
 begin
  l_Buffer:= Text.St;
  f_Stream.WriteBuffer(l_Buffer^, Text.Len);
  Text.Clear;
 end;
 aValue.Seek(0, 0);
 f_Stream.CopyFrom(aValue, aValue.Size);
 f_Stream.Seek(0 ,0);
 l_Size:= f_Stream.Size div 2;
 l3System.GetLocalMem(l_BinBuf, l_Size);
 try
  HexToBin(Tl3MemoryStream(f_Stream).MemoryPool.AsPointer, l_BinBuf, l_Size);
  f_Stream.Seek(0, 0);
  f_Stream.Size:= 0;
  f_Stream.Write(l_BinBuf^, l_Size);
 finally
  l3System.FreeLocalMem(l_BinBuf);
 end;
 f_IsBinary:= True;
//#UC END# *521AEB0F021C_51E8DC3E0361_impl*
end;//TddPicture.AddHexStream

procedure TddPicture.pm_SetIsBinary(aValue: Boolean);
//#UC START# *521AE2E301F2_51E8DC3E0361set_var*
//#UC END# *521AE2E301F2_51E8DC3E0361set_var*
begin
//#UC START# *521AE2E301F2_51E8DC3E0361set_impl*
 if aValue <> f_IsBinary then
 begin
  f_IsBinary:= aValue;
  if f_IsBinary then
   ConvertToBin
  else
   ConvertToHex;
 end;
//#UC END# *521AE2E301F2_51E8DC3E0361set_impl*
end;//TddPicture.pm_SetIsBinary

function TddPicture.pm_GetFormat: Integer;
//#UC START# *521AE90802CC_51E8DC3E0361get_var*
var
 l_Format: Integer;
 l_Detector: TImageEnIO;
//#UC END# *521AE90802CC_51E8DC3E0361get_var*
begin
//#UC START# *521AE90802CC_51E8DC3E0361get_impl*
 if f_Format = -1 then
 begin
  if f_Stream.Size > 1 then
  begin
   f_Stream.Seek(0, 0);
   l_Detector:= TImageEnIO.Create(nil);
   try
    l_Detector.LoadFromStream(Stream);
    f_Format:= l_Detector.Params.FileType;
    if f_Format <> ioUnknown then
    begin
     { нужно выставить значения ширины, высоты, цветности и т.д. }
     if f_Height = 0 then
      f_Height := l_Detector.Params.Height;
     if f_Width = 0 then
      f_Width := l_Detector.Params.Width;
     f_BPP := l_Detector.Params.BitsPerSample;
    end; // l_Format <> ioUnknown
   finally
    FreeAndNil(l_Detector);
   end;
  end; // f_Stream.Size > 1
  f_Stream.Seek(0, 0);
 end;
 Result := f_Format;
//#UC END# *521AE90802CC_51E8DC3E0361get_impl*
end;//TddPicture.pm_GetFormat

function TddPicture.pm_GetStream: TStream;
//#UC START# *521AEA490067_51E8DC3E0361get_var*
//#UC END# *521AEA490067_51E8DC3E0361get_var*
begin
//#UC START# *521AEA490067_51E8DC3E0361get_impl*
 if not f_IsBinary then
  ConvertToBin;
 Result:= f_Stream;
//#UC END# *521AEA490067_51E8DC3E0361get_impl*
end;//TddPicture.pm_GetStream

procedure TddPicture.pm_SetStream(aValue: TStream);
//#UC START# *521AEA490067_51E8DC3E0361set_var*
//#UC END# *521AEA490067_51E8DC3E0361set_var*
begin
//#UC START# *521AEA490067_51E8DC3E0361set_impl*
 f_IsBinary:= True;
 aValue.Seek(0, 0);
 f_Stream.CopyFrom(aValue, aValue.Size);
 f_Stream.Position := 0;
//#UC END# *521AEA490067_51E8DC3E0361set_impl*
end;//TddPicture.pm_SetStream

procedure TddPicture.Assign(Source: TPersistent);
//#UC START# *478CF34E02CE_51E8DC3E0361_var*
var
 l_Count: Integer;
//#UC END# *478CF34E02CE_51E8DC3E0361_var*
begin
//#UC START# *478CF34E02CE_51E8DC3E0361_impl*
 if Source is TddPicture then
 begin
  if TddPicture(Source).Picture.Empty then
  begin
   l_Count:= f_Stream.CopyFrom(TddPicture(Source).Stream, 0);
   f_Stream.Seek(0, 0);
  end
  else
   f_Picture.Assign(TddPicture(Source).Picture);
  f_Format  := TddPicture(Source).Format;
  f_Height  := TddPicture(Source).Height;
  f_Width   := TddPicture(Source).Width;
  f_ScaleX  := TddPicture(Source).ScaleX;
  f_ScaleY  := TddPicture(Source).ScaleY;
  f_GoalX   := TddPicture(Source).GoalX;
  f_GoalY   := TddPicture(Source).GoalY;
  f_BPP     := TddPicture(Source).BPP;
  f_CropL   := TddPicture(Source).CropL;
  f_CropR   := TddPicture(Source).CropR;
  f_CropT   := TddPicture(Source).CropT;
  f_CropB   := TddPicture(Source).CropB;
 end
 else
  inherited;
//#UC END# *478CF34E02CE_51E8DC3E0361_impl*
end;//TddPicture.Assign

procedure TddPicture.Cleanup;
//#UC START# *479731C50290_51E8DC3E0361_var*
//#UC END# *479731C50290_51E8DC3E0361_var*
begin
//#UC START# *479731C50290_51E8DC3E0361_impl*
 FreeAndNil(f_Picture);
 FreeAndNil(f_Stream);
 inherited;
//#UC END# *479731C50290_51E8DC3E0361_impl*
end;//TddPicture.Cleanup

procedure TddPicture.Clear;
//#UC START# *518A48F500CF_51E8DC3E0361_var*
//#UC END# *518A48F500CF_51E8DC3E0361_var*
begin
//#UC START# *518A48F500CF_51E8DC3E0361_impl*
 inherited;
 f_Picture.Clear;
 f_Stream.Seek(0, 0);
 f_Stream.Size:= 0;
 f_Format  := -1;
 f_Height  := 0;
 f_Width   := 0;
 f_ScaleX  := 100;
 f_ScaleY  := 100;
 f_GoalX   := 0;
 f_GoalY   := 0;
 f_BPP     := 0;
 f_CropL   := 0;
 f_CropR   := 0;
 f_CropT   := 0;
 f_CropB   := 0;
//#UC END# *518A48F500CF_51E8DC3E0361_impl*
end;//TddPicture.Clear

procedure TddPicture.Write2Generator(const Generator: Ik2TagGenerator;
  aNeedProcessRow: Boolean;
  LiteVersion: Boolean);
//#UC START# *518A504F00F5_51E8DC3E0361_var*
//#UC END# *518A504F00F5_51E8DC3E0361_var*
begin
//#UC START# *518A504F00F5_51E8DC3E0361_impl*
 StartBitmapPara(Generator);
 try
  Generator.AddIntegerAtom(k2_tiExternalHandle, ExternalHandle);
  Generator.AddStringAtom(k2_tiExternalpath, ExternalPath);

  CropPicture;

  if Width <> 0 then
   Generator.AddIntegerAtom(k2_tiWidth, l3MulDiv(Width, ScaleX, 100));
  if Height <> 0 then
   Generator.AddIntegerAtom(k2_tiHeight, l3MulDiv(Height, ScaleY, 100));
  with PAP do
  begin
   case Just of
    justR: Generator.AddIntegerAtom(k2_tiJustification, Ord(ev_itRight));
    justC: Generator.AddIntegerAtom(k2_tiJustification, Ord(ev_itCenter));
    justF: Generator.AddIntegerAtom(k2_tiJustification, Ord(ev_itWidth));
   else
    Generator.AddIntegerAtom(k2_tiJustification, Ord(ev_itLeft));
   end; { case Just}
   Border.Write2Generator(Generator);
  end; {  with }
  if not f_IsBinary then
   ConvertToBin;
  Generator.AddStreamAtom(k2_tiData, Stream);
 finally
  Generator.Finish;
 end;
//#UC END# *518A504F00F5_51E8DC3E0361_impl*
end;//TddPicture.Write2Generator

constructor TddPicture.Create(anOwner: TObject;
  aDetination: TddCustomDestination);
//#UC START# *51E91BA80051_51E8DC3E0361_var*
//#UC END# *51E91BA80051_51E8DC3E0361_var*
begin
//#UC START# *51E91BA80051_51E8DC3E0361_impl*
 inherited Create(anOwner, aDetination);
 AtomType := dd_docPicture;
 f_Picture := Tl3String.Create;
 f_Format := -1;
 f_Stream := Tl3MemoryStream.Make;
 f_IsBinary := False;
 f_ScaleX := 100;
 f_ScaleY := 100;
//#UC END# *51E91BA80051_51E8DC3E0361_impl*
end;//TddPicture.Create

end.