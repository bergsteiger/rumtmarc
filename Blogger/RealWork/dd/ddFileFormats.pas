unit ddFileFormats;

{ $Id: ddFileFormats.pas,v 1.3 2013/02/13 10:21:28 lulin Exp $ }

// $Log: ddFileFormats.pas,v $
// Revision 1.3  2013/02/13 10:21:28  lulin
// - убираем лишние зависимости.
//
// Revision 1.2  2012/08/30 14:20:41  lulin
// {RequestLink:390564295}
//
// Revision 1.1  2012/08/29 10:23:59  fireton
// - выделяем определение формата в отдельный модуль
//

interface
uses
 Classes;

type
 TddFileFormat = (ffUnknown, ffDoc, ffDocx, ffRTF, ffPDF, ffZip);

const
 c_SFileFormat: array[TddFileFormat] of string = (
  '<UNKNOWN>',
  'DOC',
  'DOCX',
  'RTF',
  'PDF',
  'ZIP'
 );

function ddGetFileFormat(const aStream: TStream): TddFileFormat;

implementation

uses
 SysUtils
 {$IfNDef Nemesis}
 {$IfNDef NoZIP}
 ,
 ZipForge
 {$EndIf  NoZIP}
 {$EndIf  Nemesis}
 ;

function ddGetFileFormat(const aStream: TStream): TddFileFormat;
var
 l_Count: Integer;
 l_Header: LongWord;
 {$IfNDef Nemesis}
 {$IfNDef NoZIP}
 l_Zip: TZipForge;
 l_Item : TZFArchiveItem;
 {$EndIf NoZIP}
 {$EndIf  Nemesis}
begin
 Result := ffUnknown;
 aStream.Seek(0, soFromBeginning);
 try
  l_Count:= aStream.Read(l_Header, SizeOf(l_Header));
  if l_Count = 4 then
  begin
   if l_Header = $74725C7B then
    Result:= ffRTF
   else
   if l_Header = $E011CFD0 then
    Result:= ffDoc
   else
   if l_Header = $46445025 then
    Result:= ffPDF
   else
   if l_Header = $04034B50 then
   begin
    Result:= ffZip;
    {$IfNDef Nemesis}
    {$IfNDef NoZIP}
    aStream.Seek(0, soFromBeginning);
    try
     l_Zip := TZipForge.Create(nil);
     try
      l_Zip.OpenArchive(aStream, False);
      if l_Zip.FindFirst('word/document.xml', l_Item) then
       Result := ffDocx;
     finally
      FreeAndNil(l_Zip);
     end;
    except
     Result := ffUnknown; // если не удалось открыть архив, это какая-то фигня, а не zip
    end;
    {$Else}
    Assert(false);
    {$EndIf NoZIP}
    {$Else}
    Assert(false);
    {$EndIf Nemesis}
   end;
  end; // l_Count = 4
 finally
  aStream.Seek(0, soFromBeginning);
 end;
end;


end.