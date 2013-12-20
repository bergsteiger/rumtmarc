unit m3StorageTools;

{ Библиотека "M3"         }
{ Автор: Люлин А.В. ©     }
{ Модуль: m3StorageTools - }
{ Начат: 22.02.2002 12:59 }
{ $Id: m3StorageTools.pas,v 1.10 2013/04/12 16:25:08 lulin Exp $ }

// $Log: m3StorageTools.pas,v $
// Revision 1.10  2013/04/12 16:25:08  lulin
// - отлаживаем под XE3.
//
// Revision 1.9  2012/12/17 09:32:45  fireton
// - bugfix: не работало определение наличия на диске кэша структур
//
// Revision 1.8  2012/11/29 04:48:59  fireton
// - bugfix: не работало определение наличия на диске кэша структур
//
// Revision 1.7  2009/03/19 16:28:30  lulin
// [$139443095].
//
// Revision 1.6  2008/05/08 14:04:19  fireton
// - перенос объектов в потоках из ветки
//
// Revision 1.5  2007/12/21 10:02:19  lulin
// - модуль m3StorageInterfaces полностью перенесен на модель.
//
// Revision 1.4  2007/08/21 12:09:02  lulin
// - избавляемся от предупреждений компилятора.
//
// Revision 1.3  2005/01/24 11:43:26  lulin
// - new behavior: при освобождении заглушки очищаем указатель на нее.
//
// Revision 1.2  2004/09/09 14:53:53  lulin
// - small fix.
// - сделан вывод в лог информации и залочках в новом хранилище.
//
// Revision 1.1  2004/09/02 08:09:48  law
// - cleanup.
//
// Revision 1.11  2004/08/30 09:48:40  voba
// - не учитывали, что Storage м.б. равен nil.
//
// Revision 1.10  2004/06/10 14:22:32  law
// - bug fix: неправильно обрабатывался режим m3_saCreate.
//
// Revision 1.9  2004/05/13 16:10:57  voba
// - bug fix: не проверялось, что хранилище не открыто.
//
// Revision 1.8  2002/10/16 14:13:31  narry
// - change: добавлена возможность открытия/создания потока без сжатия.
//
// Revision 1.7  2002/09/13 13:59:22  law
// - new methods: m3L2ISA, m3FreeISA, m3L2IS2A, m3FreeIS2A.
//
// Revision 1.6  2002/09/12 14:50:42  law
// - new proc: m3COMOpenStream, m3COMSafeOpenStream.
//
// Revision 1.5  2002/04/17 11:55:03  law
// - new proc: _m3ReadWideString.
//
// Revision 1.4  2002/04/16 15:03:52  law
// - new behavior: m3COM(Safe)OpenStorage (Stream) - теперь, когда элемент не найден, не возвращают ошибку (исключение), а возвращают элемент = nil.
//
// Revision 1.3  2002/04/05 12:53:07  law
// - change: расширен интерфейс Im3IndexedStorage.
//
// Revision 1.2  2002/02/26 15:48:10  law
// - optimization: попытка оптимизации путем уменьшения фрагментации выделяемой памяти.
//
// Revision 1.1  2002/02/22 10:30:53  law
// - optimization: используем интерфейс Im3IndexedStorage.
//

{$I m3Define.inc}

interface

uses
  Windows,
  ActiveX,
  
  l3Types,
  l3Base,
  
  m3StorageInterfaces
  ;

function m3COMSafeOpenStorage(const AStorage : Im3IndexedStorage;
                              anIndex        : Long;
                              aStatStgMode   : Long;
                              aTryCreate     : Bool;
                              out theStorage : Im3IndexedStorage): hResult;
  overload;
  {-}
function m3COMOpenStorage(const AStorage : Im3IndexedStorage;
                          anIndex        : Long;
                          aStatStgMode   : Long;
                          aTryCreate     : Bool): Im3IndexedStorage;
  overload;
  {-}
function m3COMSafeOpenStorage(const AStorage : Im3IndexedStorage;
                              const aName    : Tl3PCharLen;
                              aStatStgMode   : Long;
                              aTryCreate     : Bool;
                              out theStorage : Im3IndexedStorage): hResult;
  overload;
  {-}
function m3COMOpenStorage(const AStorage : Im3IndexedStorage;
                          const aName    : Tl3PCharLen;
                          aStatStgMode   : Long;
                          aTryCreate     : Bool): Im3IndexedStorage;
  overload;
  {-}
function m3COMSafeOpenStream(const AStorage : Im3IndexedStorage;
                             const aName    : Tl3PCharLen;
                             aStatStgMode   : Long;
                             aTryCreate     : Bool;
                             out theStream  : IStream;
                             aUseCompression : Bool = true): hResult;
  overload;
  {-}
function m3COMSafeOpenStream(const AStorage : Im3IndexedStorage;
                             anIndex        : Long;
                             aStatStgMode   : Long;
                             aTryCreate     : Bool;
                             out theStream  : IStream;
                             aUseCompression : Bool = true): hResult;
  overload;
  {-}
function m3COMOpenStream(const AStorage : Im3IndexedStorage;
                         const aName    : Tl3PCharLen;
                         aStatStgMode   : Long;
                         aTryCreate     : Bool;
                         aUseCompression : Bool = true): IStream;
  overload;
  {-}
function m3COMOpenStream(const AStorage : Im3IndexedStorage;
                         anIndex        : Long;
                         aStatStgMode   : Long;
                         aTryCreate     : Bool;
                         aUseCompression : Bool = true): IStream;
  overload;
  {-}

function  m3L2SA(Action: Pointer): Tm3StoreAction;
  {* - делает заглушку для локальной процедуры. }
procedure m3FreeSA(var Stub: Tm3StoreAction);
  {* - освобождает заглушку для локальной процедуры. }
function  m3L2ISA(Action: Pointer): Tm3IStreamAction;
  {* - делает заглушку для локальной процедуры. }
procedure m3FreeISA(var Stub: Tm3IStreamAction);
  {* - освобождает заглушку для локальной процедуры. }
function  m3L2IS2A(Action: Pointer): Tm3IStream2Action;
  {* - делает заглушку для локальной процедуры. }
procedure m3FreeIS2A(var Stub: Tm3IStream2Action);
  {* - освобождает заглушку для локальной процедуры. }
function  m3L2SEA(Action: Pointer): Tm3StorageElementAction;
  {* - делает заглушку для локальной процедуры. }
procedure m3FreeSEA(var Stub: Tm3StorageElementAction);
  {* - освобождает заглушку для локальной процедуры. }

function  m3ReadWideString(const aStream: IStream; out theString: WideString): hResult;
  {-}

function m3IsStorageExists(const aFilename: Ansistring): Bool;
  {* - проверяет наличие файла хранилища на диска с учётом возможности существования splitted storage }

function m3DeleteStorage(const aFilename: AnsiString): Bool;
  {* - удаляет файл хранилища с диска с учётом возможности существования splitted storage }

implementation

uses
  SysUtils,
  ComObj,

  l3Chars,

  m3SplittedFileStream
  ;

function m3COMSafeOpenStorage(const AStorage : Im3IndexedStorage;
                              anIndex        : Long;
                              aStatStgMode   : Long;
                              aTryCreate     : Bool;
                              out theStorage : Im3IndexedStorage): hResult;
begin
 if (aStorage = nil) then
 begin
  theStorage := nil;
  Result := S_False;
 end//aStorage = nil
 else
 begin
  Result := aStorage.OpenStore(anIndex, aStatStgMode, m3_stStorage, IUnknown(theStorage));
  if l3IFail(Result) AND
     ((Result = STG_E_FILENOTFOUND) OR (Result = STG_E_INVALIDFLAG)) then
  begin
   if aTryCreate then
    Result := aStorage.CreateStore(anIndex, aStatStgMode, m3_stStorage, IUnknown(theStorage))
   else begin
    Result := S_Ok;
    theStorage := nil;
   end;
  end;
 end;//aStorage = nil
end;

function m3COMOpenStorage(const AStorage : Im3IndexedStorage;
                          anIndex        : Long;
                          aStatStgMode   : Long;
                          aTryCreate     : Bool): Im3IndexedStorage;
begin
 OleCheck(m3COMSafeOpenStorage(aStorage, anIndex, aStatStgMode, aTryCreate, Result));
end;

function m3COMSafeOpenStorage(const AStorage : Im3IndexedStorage;
                              const aName    : Tl3PCharLen;
                              aStatStgMode   : Long;
                              aTryCreate     : Bool;
                              out theStorage : Im3IndexedStorage): hResult;
  //overload;
  {-}
begin
 Result := aStorage.OpenStore(aName, aStatStgMode, m3_stStorage, IUnknown(theStorage));
 if l3IFail(Result) AND
    (aTryCreate and ((Result = STG_E_FILENOTFOUND) OR (Result = STG_E_INVALIDFLAG))) then
   Result := aStorage.CreateStore(aName, aStatStgMode, m3_stStorage, IUnknown(theStorage));
end;

function m3COMOpenStorage(const AStorage : Im3IndexedStorage;
                          const aName    : Tl3PCharLen;
                          aStatStgMode   : Long;
                          aTryCreate     : Bool): Im3IndexedStorage;
  //overload;
  {-}
begin
 OleCheck(m3COMSafeOpenStorage(aStorage, aName, aStatStgMode, aTryCreate, Result));
end;

function m3COMSafeOpenStream(const AStorage : Im3IndexedStorage;
                             const aName    : Tl3PCharLen;
                             aStatStgMode   : Long;
                             aTryCreate     : Bool;
                             out theStream  : IStream;
                             aUseCompression : Bool = true): hResult;
  //overload;
  {-}
begin
 if (aStorage = nil) then
  Result := S_Ok
 else
 begin
  Result := aStorage.OpenStore(aName, aStatStgMode, m3_stStream, IUnknown(theStream), aUseCompression);
  if l3IFail(Result) AND ((Result = STG_E_FILENOTFOUND) OR (Result = STG_E_INVALIDFLAG)) then begin
    if aTryCreate then
     Result := aStorage.CreateStore(aName, aStatStgMode, m3_stStream, IUnknown(theStream), aUseCompression)
    else begin
     Result := S_Ok;
     theStream := nil;
    end;//aTryCreate
  end;//l3IFail(Result)
 end;//aStorage <> nil
end;

function m3COMOpenStream(const AStorage : Im3IndexedStorage;
                         const aName    : Tl3PCharLen;
                         aStatStgMode   : Long;
                         aTryCreate     : Bool;
                         aUseCompression : Bool = true): IStream;
  //overload;
  {-}
begin
 OleCheck(m3COMSafeOpenStream(aStorage, aName, aStatStgMode, aTryCreate, Result, aUseCompression));
end;

function m3COMSafeOpenStream(const AStorage : Im3IndexedStorage;
                             anIndex        : Long;
                             aStatStgMode   : Long;
                             aTryCreate     : Bool;
                             out theStream  : IStream;
                             aUseCompression : Bool = true): hResult;
  //overload;
  {-}
begin
 if (aStorage = nil) then
  Result := S_Ok
 else
 begin
  Result := aStorage.OpenStore(anIndex, aStatStgMode, m3_stStream, IUnknown(theStream), aUseCompression);
  if l3IFail(Result) AND ((Result = STG_E_FILENOTFOUND) OR (Result = STG_E_INVALIDFLAG)) then begin
    if aTryCreate then
     Result := aStorage.CreateStore(anIndex, aStatStgMode, m3_stStream, IUnknown(theStream), aUseCompression)
    else begin
     Result := S_Ok;
     theStream := nil;
    end;//aTryCreate
  end;
 end;//aStorage = nil
end;

function m3COMOpenStream(const AStorage : Im3IndexedStorage;
                         anIndex        : Long;
                         aStatStgMode   : Long;
                         aTryCreate     : Bool;
                         aUseCompression : Bool = true): IStream;
  //overload;
  {-}
begin
 OleCheck(m3COMSafeOpenStream(aStorage, anIndex, aStatStgMode, aTryCreate, Result, aUseCompression));
end;

function  m3L2SA(Action: Pointer): Tm3StoreAction;
  register;
  {* - делает заглушку для локальной процедуры. }
                {eax}
asm
          jmp  l3LocalStub
end;{asm}

procedure m3FreeSA(var Stub: Tm3StoreAction);
  register;
  {* - освобождает заглушку для локальной процедуры. }
asm
          jmp  l3FreeLocalStub
end;{asm}

function  m3L2SEA(Action: Pointer): Tm3StorageElementAction;
  {* - делает заглушку для локальной процедуры. }
asm
          jmp  l3LocalStub
end;{asm}

procedure m3FreeSEA(var Stub: Tm3StorageElementAction);
  {* - освобождает заглушку для локальной процедуры. }
asm
          jmp  l3FreeLocalStub
end;{asm}

function  m3L2ISA(Action: Pointer): Tm3IStreamAction;
  {* - делает заглушку для локальной процедуры. }
asm
          jmp  l3LocalStub
end;{asm}

procedure m3FreeISA(var Stub: Tm3IStreamAction);
  {* - освобождает заглушку для локальной процедуры. }
asm
          jmp  l3FreeLocalStub
end;{asm}

function  m3L2IS2A(Action: Pointer): Tm3IStream2Action;
  {* - делает заглушку для локальной процедуры. }
asm
          jmp  l3LocalStub
end;{asm}

procedure m3FreeIS2A(var Stub: Tm3IStream2Action);
  {* - освобождает заглушку для локальной процедуры. }
asm
          jmp  l3FreeLocalStub
end;{asm}

function  m3ReadWideString(const aStream: IStream; out theString: WideString): hResult;
  {-}
var
 l_Char : WideChar;
 l_Read : Int64;
begin
 theString := '';
 Result := S_False;
 while true do
 begin
  Result := aStream.Read(@l_Char, SizeOf(l_Char), @l_Read);
  if (Result = S_False) then
   Exit;
  OleCheck(Result);
  if (l_Char = cc_Null) then
   break;
  theString := theString + l_Char; 
 end;//while true  
end;

function m3IsStorageExists(const aFilename: Ansistring): Bool;
var
 l_AltFileName: AnsiString;
begin
 Result := FileExists(aFilename);
 if not Result then
 begin
  l_AltFileName := ChangeFileExt(aFilename, m3_cInfoFileNameExt + ExtractFileExt(aFilename));
  Result := FileExists(l_AltFileName);
 end;
end;

function m3DeleteStorage(const aFilename: AnsiString): Bool;
var
 l_Ext: AnsiString;
 l_SpFilename: AnsiString;
 l_Part: Integer;
begin
 if FileExists(aFilename) then
  Result := DeleteFile(aFilename)
 else
  Result := True;

 if Result then
 begin
  l_Ext := ExtractFileExt(aFilename);
  l_SpFilename := ChangeFileExt(aFilename, m3_cInfoFileNameExt + l_Ext);
  if FileExists(l_SpFilename) then
  begin
   Result := DeleteFile(l_SpFilename);
   if Result then
   begin
    l_Part := 0;
    repeat
     l_SpFilename := ChangeFileExt(aFilename, Format('.%4d%s', [l_Part, l_Ext]));
     if FileExists(l_SpFilename) then
      Result := DeleteFile(l_SpFilename)
     else
      Break;
     Inc(l_Part);  
    until not Result;
   end;
  end;
 end;
end;

end.

