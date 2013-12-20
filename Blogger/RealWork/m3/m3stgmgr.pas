unit m3StgMgr;
{* Классы-менеджеры для работы с IStorage. }

(*
//
//
// .Author: Mickael P. Golovin.
// .Copyright: 1997-2001 by Archivarius Team, _free for non commercial use.
//
//
*)
// $Id: m3stgmgr.pas,v 1.23 2013/04/12 16:25:08 lulin Exp $

// $Log: m3stgmgr.pas,v $
// Revision 1.23  2013/04/12 16:25:08  lulin
// - отлаживаем под XE3.
//
// Revision 1.22  2012/05/29 10:01:11  voba
// no message
//
// Revision 1.21  2012/05/29 09:44:12  lulin
// {RequestLink:367210517}
//
// Revision 1.20  2012/05/29 09:38:47  lulin
// {RequestLink:367210517}
//
// Revision 1.19  2012/05/25 14:17:21  lulin
// - делаем "кошерную" операцию проверки существования файла.
//
// Revision 1.17  2012/05/24 09:03:56  voba
// - bug fix
//
// Revision 1.16  2012/05/22 13:29:42  lulin
// {RequestLink:365838449}
//
// Revision 1.15  2012/05/22 11:59:11  lulin
// {RequestLink:365838449}
//
// Revision 1.14  2012/05/05 14:06:24  lulin
// {RequestLink:361038156}
//
// Revision 1.13  2012/05/05 12:11:45  lulin
// {RequestLink:361038156}
//
// Revision 1.12  2012/05/05 11:37:29  lulin
// {RequestLink:361038156}
//
// Revision 1.11  2012/05/05 11:20:48  lulin
// {RequestLink:361038156}
//
// Revision 1.10  2012/05/04 19:44:39  lulin
// {RequestLink:361038156}
//
// Revision 1.8  2012/05/04 10:04:36  lulin
// {RequestLink:361038156}
//
// Revision 1.7  2012/05/04 08:31:15  lulin
// {RequestLink:361038156}
//
// Revision 1.6  2011/12/28 09:29:10  lulin
// {RequestLink:325257155}
// - чистим код.
//
// Revision 1.5  2009/03/12 19:08:25  lulin
// - <K>: 138969458. Чистка устаревшего кода.
//
// Revision 1.4  2009/03/12 12:28:45  lulin
// - <K>: 138969458. Удаляем ненужные файлы, методы и классы.
//
// Revision 1.3  2009/03/12 12:08:19  lulin
// - <K>: 138969458. Удаляем ненужные методы и классы.
//
// Revision 1.2  2006/02/02 15:33:56  voba
// - new beh. при создании файла-хранилища проверяется и при необходимости достраивается путь к нему
//
// Revision 1.1  2004/09/02 08:09:49  law
// - cleanup.
//
// Revision 1.8  2004/05/20 11:36:31  law
// - bug fix: вместо %1 в сообщении об ошибке теперь пишется имя файла.
//
// Revision 1.7  2002/04/26 13:16:15  law
// - cleanup.
//
// Revision 1.6  2002/02/21 15:58:17  law
// - optimization.
//
// Revision 1.5  2001/11/29 17:02:43  law
// - new directive: _m3NeedStorageFixer.
//
// Revision 1.4  2001/11/28 15:10:02  law
// - bug fix: поправлен PlugIn для Far'а - не читал архивированные хранилища.
//
// Revision 1.3  2001/11/28 14:19:32  law
// - new behavior: сделано создание хранилищ с автоматической паковкой.
//
// Revision 1.2  2001/10/26 17:43:32  law
// - comments: xHelpGen.
//

{$I m3Define.inc}

interface

uses
  Windows,
  SysUtils,

  ActiveX,
  COMObj,

  l3FileUtils,
  
  m2COMLib,

  m3StorageInterfaces,
  m3BasCla,
  m3StgCla
  ;

type
  Tm3StorageType = (m3_stArchive, m3_stPlugin, m3_stPlain);

const
  def_ReadModeStorageUseCompression = m3_stArchive;
  def_FullModeStorageUseCompression = m3_stArchive;

type
  Tm3StorageManager = class(Tm3BaseClass)
   public
    class procedure IterateStorageFiles(const aName : AnsiString; aDoFile : TFileProcessingFunc);
    class procedure DeleteStorageFile(const aName : AnsiString);
    class function RenameStorageFile(const anOldName : AnsiString; const aNewName : AnsiString): Boolean;
    class function StorageFileExists(const aName : AnsiString): Boolean;
  end;//Tm3StorageManager

  Tm3ReadModeStorageManager = class(Tm3StorageManager)
   {* Менеджер для создания ReadOnly хранилищ. }
   public
    class function          MakeInterface       (const AName    : WideString;
                                                 UseCompression : Tm3StorageType = def_ReadModeStorageUseCompression
                                                ): Im3IndexedStorage; overload;
     {* Открывает хранилище на диске. }

    class function          MakeSafeInterface   (out   AResult  : Im3IndexedStorage;
                                                 const AName    : WideString;
                                                 UseCompression : Tm3StorageType = def_ReadModeStorageUseCompression
                                                ): HRESULT; overload;
     {* Открывает хранилище на диске (без исключительных ситуаций). }

    class function          MakeInterface       (const AStream  : IStream;
                                                 UseCompression : Tm3StorageType = def_ReadModeStorageUseCompression
                                                ): Im3IndexedStorage; overload;
     {* Открывает хранилище в потоке. }

    class function          MakeSafeInterface   (out   AResult  : Im3IndexedStorage;
                                                 const AStream  : IStream;
                                                 UseCompression : Tm3StorageType = def_ReadModeStorageUseCompression
                                                ): HRESULT; overload;
     {* Открывает хранилище в потоке (без исключительных ситуаций). }
  end;//Tm3ReadModeStorageManager

  Tm3FullModeStorageManager = class(Tm3StorageManager)
   {* Менеджер для создания хранилищ. }
   public
    class function          MakeInterface       (const AName: WideString;
                                                 UseCompression : Tm3StorageType = def_FullModeStorageUseCompression
                                                ): Im3IndexedStorage; overload;
     {* Открывает хранилище на диске. }

    class function          MakeSafeInterface   (out   AResult: Im3IndexedStorage;
                                                 const AName: WideString;
                                                 UseCompression : Tm3StorageType = def_FullModeStorageUseCompression
                                                ): HRESULT; overload;
     {* Открывает хранилище на диске (без исключительных ситуаций). }

    class function          MakeInterface       (const AStream: IStream;
                                                 UseCompression : Tm3StorageType = def_FullModeStorageUseCompression
                                                ): Im3IndexedStorage; overload;
     {* Открывает хранилище в потоке. }

    class function          MakeSafeInterface   (out   AResult: Im3IndexedStorage;
                                                 const AStream: IStream;
                                                 UseCompression : Tm3StorageType = def_FullModeStorageUseCompression
                                                ): HRESULT; overload;
     {* Открывает хранилище в потоке (без исключительных ситуаций). }

  end;//Tm3FullModeStorageManager

implementation

uses
  StrUtils,

  l3Base,
  
  m3ArchiveStorage,
  m3SplittedFileStream
  ;

// Tm3ReadModeStorageManager

class function Tm3ReadModeStorageManager.MakeInterface(const aName    : WideString;
                                                       UseCompression : Tm3StorageType = def_ReadModeStorageUseCompression
                                                       ): Im3IndexedStorage;
const
 CAccess = GENERIC_READ;
 CSharedMode = FILE_SHARE_READ or FILE_SHARE_WRITE;
 CDistribution = OPEN_EXISTING;
 CFlags = FILE_ATTRIBUTE_NORMAL;
begin
 try
  {$IfDef m3UseSplittedFileStream}
  if not FileExists(AName) then
   Result := MakeInterface(Tm3SplittedFileStream.Make(AName,CAccess,CSharedMode,CDistribution,CFlags),
                           UseCompression)
  else
  {$EndIf m3UseSplittedFileStream}
   Result := MakeInterface(Tm3FileStream.MakeInterface(AName,CAccess,CSharedMode,CDistribution,CFlags),
                          UseCompression);
 except
  on E: EOleSysError do
  begin
   if (E.ErrorCode = STG_E_INVALIDHEADER) then
    raise EOleSysError.Create(ANSIReplaceStr(E.Message, '%1', '"' + aName + '"'), E.ErrorCode, E.HelpContext)
   else
    raise;
  end;//on E: EOleSysError
 end;//try..except 
end;

class function Tm3ReadModeStorageManager.MakeSafeInterface(out   AResult: Im3IndexedStorage;
                                                         const AName: WideString;
                                                         UseCompression : Tm3StorageType = def_ReadModeStorageUseCompression
                                                        ): HRESULT;
begin
 Result:=S_OK;
 try
  AResult:=MakeInterface(AName, UseCompression);
 except
  on E: EOutOfMemory do
   Result := STG_E_INSUFFICIENTMEMORY;
  on E: EOleSysError do
   Result := E.ErrorCode;
  else
   Result := E_UNEXPECTED;
 end;//try..except
end;

class function Tm3ReadModeStorageManager.MakeInterface(const AStream  : IStream;
                                                       UseCompression : Tm3StorageType = def_ReadModeStorageUseCompression
                                                       ): Im3IndexedStorage;
begin
 if (m2COMCLSIDFromStream(m2COMSetPosition(0,AStream)) = GUIDToString(TGUID(Tm3Storage.HeaderID()))) then
 begin
  Case UseCompression of
   m3_stArchive:
    Result := Tm3ArchiveStorage.MakeInterface(STGM_READ,AStream);
   m3_stPlugin:
    Result := Tm3PluginArchiveStorage.MakeInterface(STGM_READ,AStream);
   else
    Result := Tm3Storage.MakeInterface(STGM_READ,AStream);
  end;//Case UseCompression
 end
 else
  OleError(STG_E_INVALIDHEADER);
end;

class function Tm3ReadModeStorageManager.MakeSafeInterface(out   AResult  : Im3IndexedStorage;
                                                         const AStream  : IStream;
                                                         UseCompression : Tm3StorageType = def_ReadModeStorageUseCompression
                                                        ): HRESULT;
begin
 Result:=S_OK;
 try
  AResult := MakeInterface(AStream, UseCompression);
 except
  on E: EOutOfMemory do
   Result := STG_E_INSUFFICIENTMEMORY;
  on E: EOleSysError do
   Result := E.ErrorCode;
  else
   Result := E_UNEXPECTED;
 end;//try..except
end;

// Tm3FullModeStorageManager

class function Tm3FullModeStorageManager.MakeInterface(const AName: WideString;
                                                     UseCompression : Tm3StorageType = def_FullModeStorageUseCompression
                                                    ): Im3IndexedStorage;
const
       CAccess=                  GENERIC_READ or
                                 GENERIC_WRITE;

       CSharedMode=              FILE_SHARE_READ or
                                 FILE_SHARE_WRITE;

       CDistribution=            OPEN_ALWAYS;

       CFlags=                   FILE_ATTRIBUTE_NORMAL;
begin
 if (AName = '') then
  Result := MakeInterface(Tm3TempStream.MakeInterface, UseCompression)
 else
 begin
  l3FileUtils.MakeDir(ExtractFilePath(AName));
  {$IfDef m3UseSplittedFileStream}
  if not FileExists(AName) then
   Result := MakeInterface(Tm3SplittedFileStream.Make(AName,CAccess,CSharedMode,CDistribution,CFlags), UseCompression)
  else
  {$EndIf m3UseSplittedFileStream}
   Result := MakeInterface(Tm3FileStream.MakeInterface(AName,CAccess,CSharedMode,CDistribution,CFlags), UseCompression);
 end;//AName = ''
end;

class function Tm3FullModeStorageManager.MakeSafeInterface(out   AResult: Im3IndexedStorage;
                                                         const AName: WideString;
                                                         UseCompression : Tm3StorageType = def_FullModeStorageUseCompression
                                                        ): HRESULT;
begin
 Result:=S_OK;
 try
  AResult:=MakeInterface(AName, UseCompression);
 except
  on E: EOutOfMemory do
   Result := STG_E_INSUFFICIENTMEMORY;
  on E: EOleSysError do
   Result := E.ErrorCode;
  else
   Result := E_UNEXPECTED;
 end;//try..except
end;

class function Tm3FullModeStorageManager.MakeInterface(const AStream: IStream;
                                                     UseCompression : Tm3StorageType = def_FullModeStorageUseCompression
                                                    ): Im3IndexedStorage;
begin
 Case UseCompression of
  m3_stArchive:
   Result := Tm3ArchiveStorage.MakeInterface(STGM_READWRITE,AStream);
  m3_stPlugin:
   Result := Tm3PluginArchiveStorage.MakeInterface(STGM_READWRITE,AStream);
  else
   Result := Tm3Storage.MakeInterface(STGM_READWRITE,AStream);
 end;//Case UseCompression
end;

class function Tm3FullModeStorageManager.MakeSafeInterface(out   AResult: Im3IndexedStorage;
                                                         const AStream: IStream;
                                                         UseCompression : Tm3StorageType = def_FullModeStorageUseCompression
                                                        ): HRESULT;
begin
 Result:=S_OK;
 try
  AResult:=MakeInterface(AStream, UseCompression);
 except
  on E: EOutOfMemory do
   Result:=STG_E_INSUFFICIENTMEMORY;
  on E: EOleSysError do
   Result:=E.ErrorCode;
  else
   Result:=E_UNEXPECTED;
 end;//try..except
end;

// start class Tm3StorageManager

class procedure Tm3StorageManager.IterateStorageFiles(const aName : AnsiString; aDoFile : TFileProcessingFunc);
const
 cMaskPart = '.*';
var
 l_Ext : AnsiString;
 l_Mask : AnsiString;
 l_Folder : AnsiString;
begin
 l_Ext := ExtractFileExt(aName);
 aDoFile(aName, nil);
 aDoFile(Tm3SplittedFileStream.NormalizeFileName(aName) + m3_cInfoFileNameExt + l_Ext, nil);
 l_Folder := ExtractFilePath(aName);
 l_Mask := Tm3SplittedFileStream.NormalizeFileName(ExtractFileName(aName)) + cMaskPart + l_Ext;
 ProcessFilesWithMask(l_Folder, l_Mask, aDoFile);
end;

class procedure Tm3StorageManager.DeleteStorageFile(const aName : AnsiString);

 function DoFile(const aFileName: AnsiString): Boolean;
 begin//DoFile
  Result := true;
  if FileExists(aFileName) then
   DeleteFile(aFileName);
 end;//DoFile

var
 l_FPStub : Pointer;
begin
 l_FPStub := l3LocalStub(@DoFile);
 try
  IterateStorageFiles(aName, l_FPStub);
 finally
  l3FreeLocalStub(l_FPStub);
 end;//try..finally
end;

class function Tm3StorageManager.StorageFileExists(const aName : AnsiString): Boolean;

 function DoFile(const aFileName: AnsiString): Boolean;
 begin//DoFile
  Result := true;
  if FileExists(aFileName) then
   StorageFileExists := true;
 end;//DoFile

var
 l_FPStub : Pointer;
begin
 Result := false;
 l_FPStub := l3LocalStub(@DoFile);
 try
  IterateStorageFiles(aName, l_FPStub);
 finally
  l3FreeLocalStub(l_FPStub);
 end;//try..finally
end;

class function Tm3StorageManager.RenameStorageFile(const anOldName : AnsiString; const aNewName : AnsiString) : Boolean;

var
 l_PathNew : AnsiString;
 l_StartOld : AnsiString;
 l_StartNew : AnsiString;

 function DoFile(const aFileName: AnsiString): Boolean;
 var
  l_Name : AnsiString;
 begin//DoFile
  Result := true;
  if FileExists(aFileName) then
  begin
   l_Name := ExtractFileName(aFileName);
   if AnsiStartsText(l_StartOld, l_Name) then
   begin
    Delete(l_Name, 1, Length(l_StartOld));
    l_Name := l_StartNew + l_Name;
   end//AnsiStartsText(l_StartOld, l_Name)
   else
    Assert(false, 'Какая-то беда с переименованием файлов');
   l_Name := l_PathNew + l_Name;
   if FileExists(l_Name) then
    DeleteFile(l_Name);
   if RenameFile(aFileName, l_Name) then
    RenameStorageFile := true
   else
    Assert(false, Format('Какая-то беда с переименованием файлов %s в %s', [aFileName, l_Name]));
  end;//FileExists(aFileName)
 end;//DoFile

var
 l_FPStub : Pointer;
begin
 Result := false;
 l_PathNew := ExtractFilePath(aNewName);
 if (l_PathNew = '') then
  l_PathNew := ExtractFilePath(anOldName);
 l_StartOld := Tm3SplittedFileStream.NormalizeFileName(ExtractFileName(anOldName));
 l_StartNew := Tm3SplittedFileStream.NormalizeFileName(ExtractFileName(aNewName));
 l_FPStub := l3LocalStub(@DoFile);
 try
  IterateStorageFiles(anOldName, l_FPStub);
 finally
  l3FreeLocalStub(l_FPStub);
 end;//try..finally
end;

end.

