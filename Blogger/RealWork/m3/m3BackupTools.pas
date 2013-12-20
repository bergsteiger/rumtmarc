unit m3BackupTools;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "m3"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/m3/m3BackupTools.pas"
// Начат: 01.12.2002 15:07
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::m3::m3DB::m3BackupTools
//
// Утилиты для работы с хранилищем документов Архивариуса
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\m3\m3Define.inc}

interface

uses
  l3Interfaces,
  m3DBInterfaces,
  m3StorageInterfaces
  ;

type
 Tm3BaseSummary = record
  {* Информация о диапазоне номеров долкументов }
   rMin : Int64;
   rMax : Int64;
 end;//Tm3BaseSummary

 Tm3DocPartSelector_Names_Array = array [Tm3DocPartSelector] of AnsiString;
  {* Массив Tm3DocPartSelector }

const
  { Constants }
 m3_cExchangeExt = '.sav';
 m3_cMainExt = '.stg';
 m3_cSummary = 'summary';
 m3_cObject = 'object';
 m3_cDocPartName : Tm3DocPartSelector_Names_Array = ('main', 'anno', m3_cSummary, m3_cObject);

type
 Tm3ObjectInDocIterator = procedure (const aDocBase: Im3IndexedStorage);

function m3GetVersionForRead(const aBase: Im3IndexedStorage;
  aDocHandle: Integer;
  aNotEmpty: Boolean;
  aDocPart: Tm3DocPartSelector;
  aIndex: Integer = 0;
  aLevel: Integer = 0): IStream;
   {* получить версию документа из сохраненных }
function m3GetMainStorage(const aBaseName: AnsiString;
  aMode: Tm3StoreAccess = m3_saRead): Im3IndexedStorage;
function m3GetVersionsStorage(const aBaseName: AnsiString;
  aMode: Tm3StoreAccess = m3_saRead): Im3IndexedStorage;
function m3GetMain(const aBaseName: AnsiString;
  aDocHandle: Integer;
  aDocPart: Tm3DocPartSelector = m3_defDocPart;
  anIndex: Integer = 0;
  aMode: Tm3StoreAccess = m3_saRead): IStream; overload; 
   {* получить документ из основного хранилища }
function m3GetMain(const aBase: Im3IndexedStorage;
  aDocHandle: Integer;
  aDocPart: Tm3DocPartSelector;
  anIndex: Integer = 0;
  aMode: Tm3StoreAccess = m3_saRead): IStream; overload; 
   {* получить документ из основного хранилища }
function m3GetBaseSummary(const aBase: Im3IndexedStorage;
  out theSumm: Tm3BaseSummary): Boolean; overload; 
   {* получить информациею об основном хранилище }
function m3GetBaseSummary(const aBase: Im3IndexedStorage;
  aMode: Tm3StoreAccess = m3_saRead): IStream; overload; 
   {* получить поток с информацией об основном хранилище }
function m3GetMaxVersionNumber(const aBaseName: AnsiString;
  aDocHandle: Integer): Integer;
   {* получить максимальный номер версии }
function m3GetVersionDateTime(const aBaseName: AnsiString;
  aDocHandle: Integer;
  aLevel: Integer = 0): TDateTime;
   {* получить дату и время версии }

implementation

uses
  SysUtils,
  m3StorageTools,
  ComObj,
  l3String,
  l3Base,
  l3Const,
  m2COMLib,
  m3StgMgr,
  Windows,
  l3Date,
  m3StorageElementIDList
  ;

// unit methods

function m3GetVersionForRead(const aBase: Im3IndexedStorage;
  aDocHandle: Integer;
  aNotEmpty: Boolean;
  aDocPart: Tm3DocPartSelector;
  aIndex: Integer = 0;
  aLevel: Integer = 0): IStream;
//#UC START# *49B142E80335_49B141B8022F_var*
var
 l_Storage    : Im3IndexedStorage;
 l_DocStorage : Im3IndexedStorage;
 l_ObjStorage : Im3IndexedStorage;
 l_Stream     : IStream;
 l_Version    : Integer;
 l_Max        : Integer;
//#UC END# *49B142E80335_49B141B8022F_var*
begin
//#UC START# *49B142E80335_49B141B8022F_impl*
 Result := nil;
 try
  l_Storage := m3COMOpenStorage(aBase,
                                aDocHandle,
                                m3_saRead,
                                false);
  try
   if (l_Storage = nil) then
    Exit;
   l_Stream :=  m3COMOpenStream(l_Storage,
                                0,
                                m3_saRead,
                                false);
   try
    if (l_Stream = nil) OR
       (l_Stream.Read(@l_Version, SizeOf(l_Version), nil) = S_False) then
     Exit;
   finally
    l_Stream := nil;
   end;//try..finally
   l_Max := l_Version;
   while true do
   begin
    l_Version := l_Max - aLevel;
    if (l_Version <= 0) then
     break;
    if (aDocPart = m3_defDocPart) then
     // - других потоков в старом не было
     l_Stream :=  m3COMOpenStream(l_Storage,
                                  l_Version,
                                  m3_saRead,
                                  false)
     // - пытаемся открыть без потока main
    else
     l_Stream := nil;
    try
     if (l_Stream = nil) then
     // - не получилось - пытаемся открыть директорию для версии
     begin
      l_DocStorage := m3COMOpenStorage(l_Storage, l_Version, m3_saRead, false);
      try
       if aDocPart = m3_dsObject then
       begin
        m3COMSafeOpenStorage(l_DocStorage, l3PCharLen(m3_cDocPartName[aDocPart]),
                             m3_saRead, False, l_ObjStorage);
        try
         if (l_ObjStorage <> nil) then
          m3COMSafeOpenStream(l_ObjStorage,
                              aIndex,
                              m3_saRead,
                              False,
                              l_Stream);
        finally
         l_ObjStorage := nil;
        end;
       end
       else
        m3COMSafeOpenStream(l_DocStorage,
                                    l3PCharLen(m3_cDocPartName[aDocPart]),
                                    m3_saRead,
                            false,
                            l_Stream);
      finally
       l_DocStorage := nil;
      end;//try..finally
     end//l_Stream = nil
     else
     if (aDocPart <> m3_defDocPart) then
      l_Stream := nil;
     if (aDocPart = m3_dsInfo) AND (l_Stream = nil) then
      m3COMSafeOpenStream(l_Storage,
                                  l3PCharLen(m3_cDocPartName[aDocPart]),
                                  m3_saRead,
                          false,
                          l_Stream);
      // - читаем информацию о документе из корневого каталога версии
     Result := l_Stream;
     if (Result <> nil) then
     begin
       if (not aNotEmpty OR (m2COMGetSize(Result) > 0)) then
      // - проверяем на то, что открылся непустой поток
       break
      else
       Result := nil;
     end;//Result <> nil
    finally
     l_Stream := nil;
    end;//try..finally
    Inc(aLevel);
   end;//while true
  finally
   l_Storage := nil;
  end;//try..finally
 except
  on E: Exception do
   l3System.Exception2Log(E);
 end;//try..except
//#UC END# *49B142E80335_49B141B8022F_impl*
end;//m3GetVersionForRead

function m3GetMainStorage(const aBaseName: AnsiString;
  aMode: Tm3StoreAccess = m3_saRead): Im3IndexedStorage;
//#UC START# *49B92D93016A_49B141B8022F_var*
//#UC END# *49B92D93016A_49B141B8022F_var*
begin
//#UC START# *49B92D93016A_49B141B8022F_impl*
 try
  if (aMode = m3_saRead) then
   Result := Tm3ReadModeStorageManager.MakeInterface(ChangeFileExt(aBaseName, m3_cMainExt))
  else
   Result := Tm3FullModeStorageManager.MakeInterface(ChangeFileExt(aBaseName, m3_cMainExt));
 except
  on E: EOleSysError do
  begin
   if (E.ErrorCode = STG_E_LOCKVIOLATION) then
    raise
   else
    Result := nil;
  end;//on EOleSysError
 end;//try..except
//#UC END# *49B92D93016A_49B141B8022F_impl*
end;//m3GetMainStorage

function m3GetVersionsStorage(const aBaseName: AnsiString;
  aMode: Tm3StoreAccess = m3_saRead): Im3IndexedStorage;
//#UC START# *49B92DA303C0_49B141B8022F_var*
//#UC END# *49B92DA303C0_49B141B8022F_var*
begin
//#UC START# *49B92DA303C0_49B141B8022F_impl*
 try
  if (aMode = m3_saRead) then
   Result := Tm3ReadModeStorageManager.MakeInterface(ChangeFileExt(aBaseName, m3_cExchangeExt))
  else
   Result := Tm3FullModeStorageManager.MakeInterface(ChangeFileExt(aBaseName, m3_cExchangeExt));
 except
  on E: EOleSysError do
  begin
   if (E.ErrorCode = STG_E_LOCKVIOLATION) then
    raise
   else
    Result := nil;
  end;//on EOleSysError
 end;//try..except
//#UC END# *49B92DA303C0_49B141B8022F_impl*
end;//m3GetVersionsStorage

function m3GetMain(const aBaseName: AnsiString;
  aDocHandle: Integer;
  aDocPart: Tm3DocPartSelector = m3_defDocPart;
  anIndex: Integer = 0;
  aMode: Tm3StoreAccess = m3_saRead): IStream;
//#UC START# *49B92DB802ED_49B141B8022F_var*
//#UC END# *49B92DB802ED_49B141B8022F_var*
begin
//#UC START# *49B92DB802ED_49B141B8022F_impl*
 try
  Result := m3GetMain(m3GetMainStorage(aBaseName, aMode), aDocHandle, aDocPart, anIndex, aMode)
 except
  on E: EOleSysError do
  begin
   if (E.ErrorCode = STG_E_FILENOTFOUND) then
    Result := nil
   else
    raise;
  end;//on E: EOleSysError
 end;//try..except
//#UC END# *49B92DB802ED_49B141B8022F_impl*
end;//m3GetMain

function m3GetMain(const aBase: Im3IndexedStorage;
  aDocHandle: Integer;
  aDocPart: Tm3DocPartSelector;
  anIndex: Integer = 0;
  aMode: Tm3StoreAccess = m3_saRead): IStream;
//#UC START# *49B92DDA03CC_49B141B8022F_var*
var
 l_DocStorage : Im3IndexedStorage;
 l_ObjStorage : Im3IndexedStorage;
//#UC END# *49B92DDA03CC_49B141B8022F_var*
begin
//#UC START# *49B92DDA03CC_49B141B8022F_impl*
 m3COMSafeOpenStorage(aBase, aDocHandle, aMode, aMode <> m3_saRead, l_DocStorage);
 try
  if (l_DocStorage <> nil) then
   if aDocPart = m3_dsObject then
   begin
    m3COMSafeOpenStorage(l_DocStorage,
                         l3PCharLen(m3_cDocPartName[aDocPart]),
                         aMode,
                         aMode <> m3_saRead,
                         l_ObjStorage);
    try
     if (l_ObjStorage <> nil) then
      m3COMSafeOpenStream(l_ObjStorage,
                          anIndex,
                          aMode,
                          aMode <> m3_saRead,
                          Result);
    finally
     l_ObjStorage := nil;
    end;
   end
   else
    m3COMSafeOpenStream(l_DocStorage,
                        l3PCharLen(m3_cDocPartName[aDocPart]),
                        aMode,
                        aMode <> m3_saRead,
                        Result);
 finally
  l_DocStorage := nil;
 end;//try..finally
//#UC END# *49B92DDA03CC_49B141B8022F_impl*
end;//m3GetMain

function m3GetBaseSummary(const aBase: Im3IndexedStorage;
  out theSumm: Tm3BaseSummary): Boolean;
//#UC START# *49B92E2D02CD_49B141B8022F_var*
var
 l_Stream : IStream;
 l_Read   : Integer;
//#UC END# *49B92E2D02CD_49B141B8022F_var*
begin
//#UC START# *49B92E2D02CD_49B141B8022F_impl*
 l_Stream := m3GetBaseSummary(aBase);
 try
  Result := (l_Stream <> nil) AND
            (l_Stream.Read(@theSumm, SizeOf(theSumm), @l_Read) = S_Ok) AND
            (l_Read = SizeOf(theSumm));
 finally
  l_Stream := nil;
 end;//try..finally
 if not Result then
 begin
  l3FillChar(theSumm, SizeOf(theSumm), 0);
  theSumm.rMin := High(theSumm.rMin);
 end;//not Result
//#UC END# *49B92E2D02CD_49B141B8022F_impl*
end;//m3GetBaseSummary

function m3GetBaseSummary(const aBase: Im3IndexedStorage;
  aMode: Tm3StoreAccess = m3_saRead): IStream;
//#UC START# *49B92E450104_49B141B8022F_var*
//#UC END# *49B92E450104_49B141B8022F_var*
begin
//#UC START# *49B92E450104_49B141B8022F_impl*
 m3COMSafeOpenStream(aBase, l3PCharLen(AnsiString(m3_cSummary)), aMode, aMode <> m3_saRead, Result, false);
//#UC END# *49B92E450104_49B141B8022F_impl*
end;//m3GetBaseSummary

function m3GetMaxVersionNumber(const aBaseName: AnsiString;
  aDocHandle: Integer): Integer;
//#UC START# *49B92E580245_49B141B8022F_var*
var
 l_Storage  : Im3IndexedStorage;
 l_Stream   : IStream;
//#UC END# *49B92E580245_49B141B8022F_var*
begin
//#UC START# *49B92E580245_49B141B8022F_impl*
 Result := -1;
 try
  try
   l_Storage := m3GetVersionsStorage(aBaseName);
   try
    l_Storage := m3COMOpenStorage(l_Storage,
                                  aDocHandle,
                                  m3_saRead,
                                  false);
    if (l_Storage = nil) then
     Exit;
    l_Stream :=  m3COMOpenStream(l_Storage,
                                 0,
                                 m3_saRead,
                                 false);
    try
     if (l_Stream.Read(@Result, SizeOf(Result), nil) = S_False) then begin
      Result := -1;
      Exit;
     end;
     Dec(Result);
    finally
     l_Stream := nil;
    end;//try..finally
   finally
    l_Storage := nil;
   end;//try..finally
  except
   on E: Exception do
    l3System.Exception2Log(E);
  end;//try..except
 finally
  try
   try
    l_Stream := m3GetMain(aBaseName, aDocHandle);
    if (l_Stream <> nil) then
     Inc(Result);
   except
    on E: Exception do
    begin
     l3System.Exception2Log(E);
     l_Stream := nil;
    end;//on E: Exception
   end;//try..except
  except
   on E: Exception do
    l3System.Exception2Log(E);
  end;//try..except
 end;//try..finally
//#UC END# *49B92E580245_49B141B8022F_impl*
end;//m3GetMaxVersionNumber

function m3GetVersionDateTime(const aBaseName: AnsiString;
  aDocHandle: Integer;
  aLevel: Integer = 0): TDateTime;
//#UC START# *49B92E7003D9_49B141B8022F_var*
var
 l_Storage : Im3IndexedStorage;
 l_Stream  : IStream;
 l_Version : Integer;
//#UC END# *49B92E7003D9_49B141B8022F_var*
begin
//#UC START# *49B92E7003D9_49B141B8022F_impl*
 Result := BadDateTime;
 try
  l_Storage := m3GetVersionsStorage(aBaseName);
  try
   l_Storage := m3COMOpenStorage(l_Storage,
                                 aDocHandle,
                                 m3_saRead,
                                 false);
   if (l_Storage = nil) then
    Exit;                              
   l_Stream :=  m3COMOpenStream(l_Storage,
                                0,
                                m3_saRead,
                                false);
   try
    if (l_Stream.Read(@l_Version, SizeOf(l_Version), nil) = S_False) then
     Exit;
    Dec(l_Version, aLevel);
    Dec(l_Version);
    if (l_Version < 0) then
     Exit;
    m2COMSeek(l_Stream, l_Version * SizeOf(Result));
    if (l_Stream.Read(@Result, SizeOf(Result), nil) = S_False) then
     Result := BadDateTime;
   finally
    l_Stream := nil;
   end;//try..finally
  finally
   l_Storage := nil;
  end;//try..finally
 except
  on E: Exception do
   l3System.Exception2Log(E);
 end;//try..except
//#UC END# *49B92E7003D9_49B141B8022F_impl*
end;//m3GetVersionDateTime

end.