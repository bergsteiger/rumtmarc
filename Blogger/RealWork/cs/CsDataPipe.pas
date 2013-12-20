unit CsDataPipe;

{ $Id: CsDataPipe.pas,v 1.12 2010/07/22 08:45:28 narry Exp $ }

// $Log: CsDataPipe.pas,v $
// Revision 1.12  2010/07/22 08:45:28  narry
// К221675581. Не доставлялись результаты экспорта.
//
// Revision 1.11  2009/02/11 10:57:09  narry
// - замена #10 при передаче
//
// Revision 1.10  2008/04/23 07:28:40  narry
// - переделки для сервиса
//
// Revision 1.9  2008/02/01 16:41:30  lulin
// - используем кошерные потоки.
//
// Revision 1.8  2007/11/30 08:03:23  narry
// - пустое имя папки останавливало возврат данных
//
// Revision 1.7  2007/09/05 15:44:21  narry
// - исправление ошибки доставки больших заданий пользователю (заплатка)
// - индикация передачи данных между клиентом и сервером
//
// Revision 1.6  2007/08/14 14:44:18  lulin
// - оптимизируем перемещение блоков памяти.
//
// Revision 1.5  2007/08/14 14:30:03  lulin
// - оптимизируем перемещение блоков памяти.
//
// Revision 1.4  2007/07/24 12:32:27  narry
// - рефакторинг системы сообщений
//
// Revision 1.3  2006/11/27 09:17:02  narry
// - зацикливание при записи Cardinal
//
// Revision 1.2  2006/02/08 17:24:29  step
// выполнение запросов перенесено из классов-потомков в процедуры объектов
//

{$I CsDefine.inc}

interface

uses
 Classes,
 IdIOHandler, 
 CsObject;

const
 c_MaxDataStringLength = 4 * 1024;

type
 TCsDataPipe = class(TCsObject) // по существу - это адаптер, скрывающий TIdIOHandler
 private
  f_IOHandler: TIdIOHandler;
 protected
 public
  constructor Create(aIOHandler: TIdIOHandler);

  function ReadChar: Char;
  function ReadSmallInt: SmallInt;
  function ReadInteger: Integer;
  function ReadCardinal: Cardinal;
  function ReadDateTime: TDateTime;
  function ReadFolder(aToPath: String): Boolean;
  function ReadInt64: Int64;
  function ReadStr: string;
  procedure ReadStream(aStream: TStream);

  procedure Write(aValue: Char); overload;
  procedure Write(aValue: SmallInt); overload;
  procedure Write(aValue: Integer); overload;
  procedure Write(aValue: Cardinal); overload;
  procedure Write(aValue: Int64); overload;
  procedure Write(const aStr: string); overload;
  procedure Write(aStream: TStream; aByteCount: Int64 = 0); overload;
  procedure Write(aValue: TDateTime); overload;
  procedure WriteFolder(aFolderName: String);
 end;

implementation
Uses
 IdGlobal,
 l3Base, l3FileUtils,
 SysUtils,
 l3Types,
 l3Stream
 , StrUtils, l3TempMemoryStream, l3baseStream;


const
 c_NoMoreFiles = '<>';

{ TCsDataPipe }

constructor TCsDataPipe.Create(aIOHandler: TIdIOHandler);
begin
 Assert(aIOHandler <> nil);
 f_IOHandler := aIOHandler;
end;

function TCsDataPipe.ReadChar: Char;
begin
 f_IOHandler.WriteBufferFlush;
 Result := f_IOHandler.ReadChar;
end;

function TCsDataPipe.ReadCardinal: Cardinal;
begin
 f_IOHandler.WriteBufferFlush;
 Result := f_IOHandler.ReadCardinal;
end;

function TCsDataPipe.ReadDateTime: TDateTime;
var
 l_Bytes: TIdBytes;
begin
 f_IOHandler.WriteBufferFlush;
 f_IOHandler.ReadBytes(l_Bytes, SizeOf(TDateTime));
 Result := PDateTime(@l_Bytes[0])^;
end;

function TCsDataPipe.ReadFolder(aToPath: String): Boolean;
var
 l_FileName: string;
 l_FileSize: Int64;
 l_FileStream: Tl3Stream;
 l_FullFileName: string;
 l_Dir: string;
begin
 if aToPath <> '' then
  Result:= ForceDirectories(aToPath);

 f_IOHandler.WriteBufferFlush;
  while True{f_IOHandler.Connected} do
  begin
   l_FileName := f_IOHandler.ReadLn;
   if l_FileName = c_NoMoreFiles then
    Break;
   l_FullFileName := ConcatDirName(aToPath, l_FileName);
   l_Dir := ExtractFilePath(l_FullFileName);
   if Result and not DirExists(l_Dir) then
    try
     MakeDir(l_Dir);
    except
     // нужно прочитать данные из трубы, иначе все сбивается
     on E: Exception do
     begin
      l3System.Msg2Log('Из-за %s содержимое файла %s потеряно', [E.Message, l_FullFileName]);
      Result:= False;
     end;
    end;

   if not Result then
   begin
    l3System.Msg2Log('Содержимое файла %s потеряно', [l_FullFileName]);
    l_FileSize := f_IOHandler.ReadInt64;
    l_FileStream := Tl3TempMemoryStream.Create;
    try
     f_IOHandler.ReadStream(l_FileStream, l_FileSize);
    finally
     l3Free(l_FileStream);
    end;
   end
   else
   begin
    if FileExists(l_FullFileName) then
     RenametoBack(l_FullFileName);
    l_FileSize := f_IOHandler.ReadInt64;
    l_FileStream := Tl3FileStream.Create(l_FullFileName, l3_fmCreateReadWrite);
    try
     f_IOHandler.ReadStream(l_FileStream, l_FileSize);
    finally
     l3Free(l_FileStream);
    end;
   end;
  end; // while
end;

function TCsDataPipe.ReadInt64: Int64;
begin
 f_IOHandler.WriteBufferFlush;
 Result := f_IOHandler.ReadInt64;
end;

function TCsDataPipe.ReadInteger: Integer;
begin
 f_IOHandler.WriteBufferFlush;
 Result := f_IOHandler.ReadInteger;
end;

function TCsDataPipe.ReadSmallInt: SmallInt;
begin
 f_IOHandler.WriteBufferFlush;
 Result := f_IOHandler.ReadSmallInt;
end;

function TCsDataPipe.ReadStr: string;
begin
 f_IOHandler.WriteBufferFlush;
 Result := f_IOHandler.ReadLn;
 Result:= AnsiReplaceStr(Result, '#softbreak#', #10);
 Result:= AnsiReplaceStr(Result, '#hardbreak#', #13);
end;

procedure TCsDataPipe.ReadStream(aStream: TStream);
begin
 f_IOHandler.WriteBufferFlush;
 f_IOHandler.ReadStream(aStream);
 aStream.Seek(0, soFromBeginning);
end;

procedure TCsDataPipe.Write(const aStr: string);
var
 l_Str: String;
begin
 Assert(Length(aStr) <= c_MaxDataStringLength);
 l_Str:= AnsiReplaceStr(aStr, #10, '#softbreak#');
 l_Str:= AnsiReplaceStr(l_Str, #13, '#hardbreak#');
 f_IOHandler.WriteLn(l_Str);
end;

procedure TCsDataPipe.Write(aValue: Cardinal);
begin
 f_IOHandler.Write(aValue);
end;

procedure TCsDataPipe.Write(aValue: Int64);
begin
 f_IOHandler.Write(aValue);
end;

procedure TCsDataPipe.Write(aStream: TStream; aByteCount: Int64);
begin
 f_IOHandler.Write(aStream, aByteCount, True);
end;

procedure TCsDataPipe.Write(aValue: Char);
begin
 f_IOHandler.Write(aValue);
end;

procedure TCsDataPipe.Write(aValue: SmallInt);
begin
 f_IOHandler.Write(aValue);
end;

procedure TCsDataPipe.Write(aValue: Integer);
begin
 f_IOHandler.Write(aValue);
end;

procedure TCsDataPipe.Write(aValue: TDateTime);
var
 l_Bytes: TIdBytes;
begin
 SetLength(l_Bytes, SizeOf(aValue));
 try
  l3Move(aValue, l_Bytes[0], SizeOf(aValue));
  f_IOHandler.Write(l_Bytes);
 finally
  l_Bytes := nil;
 end;
end;

procedure TCsDataPipe.WriteFolder(aFolderName: String);
 function SendFile(const aFileName: string): Boolean;
 var
  l_FileSize: Int64;
  l_RelPath: string;
  l_DelimPos: Integer;
 begin
  Result := f_IOHandler.Connected;
  if Result and FileExists(aFileName) then
  begin
   l_RelPath := ExtractRelativePath(aFolderName, aFileName);
   // отрезаем первую папку (она лишняя)
   l_DelimPos := Pos(PathDelim, l_RelPath);
   f_IOHandler.WriteLn(Copy(l_RelPath, l_DelimPos + 1, Length(l_RelPath)));
   l_FileSize := SizeOfFile(aFileName);
   f_IOHandler.Write(l_FileSize); // размер файла
   f_IOHandler.WriteFile(aFileName, False); // сам файл
  end;
 end;

 procedure SendAllFiles(const aDir: TFileName);
 var
  l_SearchRec: TSearchRec;
  l_FileFound: Boolean;
  l_Name: TFileName;
 begin
  l_FileFound := FindFirst(ConcatDirName(aDir, '*.*'), faAnyFile, l_SearchRec) = 0;
  try
   while l_FileFound do
   begin
    if l_SearchRec.Name[1] <> '.' then
    begin
     l_Name := ConcatDirName(aDir, l_SearchRec.Name);
     if (l_SearchRec.Attr and faDirectory) <> 0 then // директория ==> запуск рекурсии
      SendAllFiles(l_Name)
     else if (l_SearchRec.Attr and (faReadOnly or faHidden	or faSysFile	or faArchive)) <> 0 then // файл
      if not SendFile(l_Name) then
       Break;
    end;
    l_FileFound := FindNext(l_SearchRec) = 0;
   end; // while
  finally
   FindClose(l_SearchRec);
  end;
 end;

begin
 if DirExists(aFolderName) then
 begin
  f_IOHandler.WriteBufferOpen(GSendBufferSizeDefault);
  try
   SendAllFiles(aFolderName);
   f_IOHandler.WriteLn(c_NoMoreFiles); // ставим точку
   f_IOHandler.WriteBufferClose;
  except
   f_IOHandler.WriteBufferClear;
   raise;
  end;
 end
 else
  f_IOHandler.WriteLn(c_NoMoreFiles); // только точка
end;

end.
