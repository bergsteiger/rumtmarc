unit m3ArchiveStorage;
{* ’ранилище с паковкой данных. }

{ Ѕиблиотека "M3"                       }
{ јвтор: Ћюлин ј.¬. ©                   }
{ ћодуль: m3ArchiveStorage -            }
{ Ќачат: 28.11.2001 16:21               }
{ $Id: m3ArchiveStorage.pas,v 1.3 2009/03/19 16:28:30 lulin Exp $ }

// $Log: m3ArchiveStorage.pas,v $
// Revision 1.3  2009/03/19 16:28:30  lulin
// [$139443095].
//
// Revision 1.2  2005/01/31 10:28:46  lulin
// - bug fix: при попытке писать в непустой архивирующий поток - обламывались - внешние про€влени€ - ломалось print preview.
//
// Revision 1.1  2004/09/02 08:09:47  law
// - cleanup.
//
// Revision 1.8  2004/08/31 15:42:07  law
// - bug fix: в PlugIn'е дл€ Far'а не перезаписывались отредактированные файлы.
//
// Revision 1.7  2002/10/16 14:13:36  narry
// - change: добавлена возможность открыти€/создани€ потока без сжати€.
//
// Revision 1.6  2002/06/17 14:24:15  law
// - new method: OpenStore.
//
// Revision 1.5  2002/02/22 10:30:53  law
// - optimization: используем интерфейс Im3IndexedStorage.
//
// Revision 1.4  2002/01/18 14:54:16  law
// - change: процедуры *Storage и *Stream объединены в *Store.
//
// Revision 1.3  2002/01/10 13:18:26  law
// - change data struct: PWideChar -> Tl3PCharLen.
//
// Revision 1.2  2001/11/28 15:10:02  law
// - bug fix: поправлен PlugIn дл€ Far'а - не читал архивированные хранилища.
//
// Revision 1.1  2001/11/28 14:19:31  law
// - new behavior: сделано создание хранилищ с автоматической паковкой.
//

{$I m3Define.inc}

interface

uses
  Windows,
  
  l3Types,
  l3Base,

  m3StorageInterfaces,
  m3StgCla
  ;

type
  Tm3ArchiveStorage = class(Tm3Storage)
   {* ’ранилище с паковкой данных. }
    protected
    // internal methods
      function __IsValidOpenMode(const aStatStgMode: LongInt): LongBool;
        override;
        {-}
      class function ForPlugin: Bool;
        virtual;
        {-}
      function CreateOpenStore(aPosition  : Int64;
                               anAccess   : Tm3StoreAccess;
                               aName      : Tl3String;
                               aStoreType : Tm3StoreType;
                               aMode      : Tm3StoreMode;
                               aUseCompression : Bool = true): IUnknown;
        override;                       
        {-}
      procedure CreateStore(const AName   : Tl3PCharLen;
                            anAccess      : Tm3StoreAccess;
                            aStoreType    : Tm3StoreType;
                            var   AStream : IUnknown;
                            var   AReturn : HRESULT;
                            aUseCompression : Bool = true);
        override;
        {-}
  end;//Tm3ArchiveStorage

  Tm3PluginArchiveStorage = class(Tm3ArchiveStorage)
    protected
    // internal methods
      class function ForPlugin: Bool;
        override;
        {-}
  end;//Tm3PluginArchiveStorage

implementation

uses
  ActiveX,

  m2AddDbg,
  m2COMLib,
  
  m3ArcMgr
  ;

// start class Tm3ArchiveStorage

class function Tm3ArchiveStorage.ForPlugin: Bool;
  //virtual;
  {-}
begin
 Result := false;
end;

function Tm3ArchiveStorage.CreateOpenStore(aPosition  : Int64;
                                           anAccess   : Tm3StoreAccess;
                                           aName      : Tl3String;
                                           aStoreType : Tm3StoreType;
                                           aMode      : Tm3StoreMode;
                                           aUseCompression : Bool = true): IUnknown;
  //override;
  {-}
var
 l_StatStgMode : LongInt;
begin
 Case aMode of
  m3_smOpen : begin
   if (aStoreType = m3_stStream) then begin
    l_StatStgMode := anAccess;
    if ForPlugin then
     l_StatStgMode := l_StatStgMode AND not (STGM_WRITE OR STGM_READWRITE);
    Result := inherited CreateOpenStore(aPosition, l_StatStgMode, aName, aStoreType, aMode);
    if (Result <> nil) then begin
     if (l_StatStgMode AND (STGM_WRITE OR STGM_READWRITE) = 0) then
      Result := Tm3InflateStreamManager.MakeInterface(IStream(Result))
     else
     if aUseCompression then
     begin
      try
       Result := Tm3DeflateStreamManager.MakeInterface(IStream(Result));
      except
       on Em2InvalidValue do
       begin
        // - непон€тно почему запаковывающий поток пытаетс€ считать признак того
        //   что поток под ним уже архивированный - это оказываетс€ не так
        m2COMSetSize(0, IStream(Result));
        // - обрезаем нижний поток, т.к. в архивированный поток все равно нельз€
        //   одновременно писать и читать
        Result := Tm3DeflateStreamManager.MakeInterface(IStream(Result));
        // - открываем запаковывающий поток вокруг пустого    
       end;//on EInvalidValue
      end;//try..except
     end;//aUseCompression
    end;//Result <> nil
   end else
    Result := inherited CreateOpenStore(aPosition, anAccess, aName, aStoreType, aMode);
  end;//m3_smOpen
  m3_smCreate : begin
   Result := inherited CreateOpenStore(aPosition, anAccess, aName, aStoreType, aMode);
   if (Result <> nil) AND (aStoreType = m3_stStream) then begin
    if (anAccess AND (STGM_WRITE OR STGM_READWRITE) <> 0) then
     if aUseCompression then
      Result := Tm3DeflateStreamManager.MakeInterface(IStream(Result));
   end;//Result <> nil..
  end;//m3_smCreate
 end;//Case aMode
end;
  
procedure Tm3ArchiveStorage.CreateStore(const AName   : Tl3PCharLen;
                                        anAccess      : Tm3StoreAccess;
                                        aStoreType    : Tm3StoreType;
                                        var   AStream : IUnknown;
                                        var   AReturn : HRESULT;
                                        aUseCompression : Bool = true);
  {-}
begin
 inherited;
 if ForPlugin then
  if (aReturn = STG_E_FILEALREADYEXISTS) then
  begin
   aReturn := S_Ok;
   OpenStore(aName, m3_saCreate, aStoreType, aStream, aReturn, aUseCompression);
  end;//aReturn = STG_E_FILEALREADYEXISTS
end;
  
function Tm3ArchiveStorage.__IsValidOpenMode(const AStatStgMode: LongInt): LongBool;
  //override;
  {-}
begin
 Result := inherited __IsValidOpenMode(aStatStgMode);
 if not Result then
  Result := (aStatStgMode = m3_saCreate);
end;

// start class Tm3PluginArchiveStorage

class function Tm3PluginArchiveStorage.ForPlugin: Bool;
  //override;
  {-}
begin
 Result := true;
end;

end.

