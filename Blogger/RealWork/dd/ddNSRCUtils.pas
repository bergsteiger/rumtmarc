Unit ddNSRCUtils;

{$I ddDefine.inc }

interface

Uses
 SysUtils, Classes;

function CopyNSRCFile(Sour,Dest : TFileName): Boolean;

function CheckNSRCFile(aFileName: AnsiString; theList: TStrings): Boolean;

implementation

Uses
 StrUtils,
 l3FileUtils, l3Stream, l3Types, l3Base;

function CopyNSRCFile(Sour,Dest : TFileName): Boolean;
var
 l_Stream: Tl3TextStream;
 S, S2, l_ObjFileName: AnsiString;
begin
  l_Stream:= Tl3TextStream.Create(Sour, l3_fmRead);
  try
    while not l_Stream.IsEOF do
    begin
      S:= l_Stream.GetLine;
      if Pos('!OBJPATH', S) = 1 then
      begin // Теперь осталось скопировать файл с созданием каталога
       S:= Copy(S, Pos(' ', S)+1, Length(S));
       S2:= ConcatDirName(ExtractFileDir(Dest), ExtractFilePath(S));
       l_ObjFileName:= ConcatDirName(ExtractFilePath(Sour), S);
       if FileExists(l_ObjFileName) then
       begin
        ForceDirectories(S2);
        try
         CopyFile(l_ObjFileName,
                  ConcatDirName(S2, ExtractFileName(S)));
        except
         on E: Exception do
         begin
          l3System.Msg2Log(Format('Ошибка копирования "файла-картинки" (%s)',
                                 [ConcatDirName(ExtractFilePath(Sour), S)]));
          l3System.Exception2Log(E);
         end; // on E
        end; // try..except
       end // FileExists
       else
        l3System.Msg2Log(Format('Файл (%s), указанный в !OBJPATH отсутствует',
                                [l_ObjFileName]));
      end; // if Pos
    end; // while not l_Stream.IsEOF
  finally
   l3Free(l_Stream);
  end; // try..finally
  if FileExists(Sour) then
  try
   CopyFile(Sour, Dest);
   Result:= True;
  except
   on E: Exception do
   begin
    Result:= False;
    l3System.Msg2Log(Format('Ошибка копирования файла %s', [Sour]));
    l3System.Exception2Log(E);
   end; // on E
  end // try except
  else
   l3System.Msg2Log(Format('Указанный файл (%s) отсутствует', [Sour]));

end;

function CheckNSRCFile(aFileName: AnsiString; theList: TStrings): Boolean;
var
 l_Stream: Tl3TextStream;
 l_Text, l_Folder, l_ObjFileName: AnsiString;
begin
 if FileExists(aFileName) then
 begin
  Result := True;
  theList.Add(aFileName);
  l_Folder := ExtractFilePath(aFileName);
  l_Stream:= Tl3TextStream.Create(aFileName, l3_fmRead);
  try
    while not l_Stream.IsEOF do
    begin
      l_Text:= l_Stream.GetLine;
      if AnsiStartsText('!OBJPATH', l_Text) then
      begin // Теперь осталось скопировать файл с созданием каталога
       l_ObjFileName:= ConcatDirName(l_Folder, Copy(l_Text, Pos(' ', l_Text)+1, Length(l_Text)));
       if FileExists(l_ObjFileName) then
        theList.Add('###'+l_ObjFileName)
       else
        l3System.Msg2Log(Format('Файл (%s), указанный в !OBJPATH отсутствует', [l_ObjFileName]));
      end; // if Pos
    end; // while not l_Stream.IsEOF
  finally
   l3Free(l_Stream);
  end; // try..finally
 end
 else
 begin
  l3System.Msg2Log(Format('Указанный файл (%s) отсутствует', [aFileName]));
  Result := False;
 end;
end;

end.
