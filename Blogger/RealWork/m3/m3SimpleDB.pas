unit m3SimpleDB;

{ Библиотека "M3"         }
{ Автор: Люлин А.В. ©     }
{ Модуль: m3SimpleDB -    }
{ Начат: 16.03.2009 16:11 }
{ $Id: m3SimpleDB.pas,v 1.3 2013/04/12 16:25:08 lulin Exp $ }

// $Log: m3SimpleDB.pas,v $
// Revision 1.3  2013/04/12 16:25:08  lulin
// - отлаживаем под XE3.
//
// Revision 1.2  2009/03/16 13:28:27  lulin
// - [$139434552].
//

{$Include m3Define.inc}

interface

uses
  l3Interfaces,
  
  m3StorageInterfaces,
  m3DBInterfaces,
  m3DB
  ;
  
type
  Tm3SimpleDB = class(Tm3CustomDB)
    private
    // internal fields
      f_Storage         : Im3IndexedStorage;
      f_StorageMode     : Tm3StoreAccess;
    protected
    // interface methods
      // Im3DB
      function  Purge: Integer;
        override;
        {* - удаляет файлы, помеченные как удаленные. }
      function  Update(aNotEmpty: Boolean = true): Boolean;
        override;
        {* - переливает файлы из переменной части в постоянную. }
      procedure Start(aOpenMode : Tm3StoreAccess);
        override;
        {* - начинает процесс с базой. }
      procedure Finish;
        override;
        {* - заканчивает процесс с базой. }
      function  GetDocument(anID: Integer): Im3DBDocument;
        override;
        {* - возвращает документ по номеру. }

      //Im3DBInternal
      //Вызываются из Tm3DBDocument, Tm3DBDocumentPart, Tm3BaseRange
      function OpenStream(aDocID : Integer;
                          aPartSelector : Tm3DocPartSelector = m3_defDocPart;
                          aIndex: Integer = 0;
                          aMode : Tm3StoreAccess = m3_saRead;
                          aLevel: Integer = Cm3LastVersion): IStream;
        override;
        {* - . }
      function OpenDocumentStream(aDocID        : Integer;
                                  out aPart     : Im3DBDocumentPart;
                                  aPartSelector : Tm3DocPartSelector = m3_defDocPart;
                                  aIndex: Integer = 0;
                                  aMode         : Tm3StoreAccess = m3_saRead;
                                  aLevel: Integer = Cm3LastVersion): IStream;
        override;
        {* - открывает поток документа.  Возвращает версию документа из которой поток (aPart) и IStream}

      function OpenList(const aName: AnsiString;
                        aStatStgMode: Integer = m3_saReadWrite;
                        aUseCompression : Boolean = True) : IStream;
        override;
        {-}
    protected
    // internal methods
        {* - начинает процесс с базой. }
      function Storage(aMode: Tm3StoreAccess = m3_saRead): Im3IndexedStorage;
        {-}
      procedure CloseBase;
        override;
        {* - закрывает открытые файлы. }
  end;//Tm3SimpleDB

implementation

uses
  SysUtils,

  l3Types,
  l3String,
  l3Base,
  l3Filer,

  m3BackupTools,
  m3StorageTools
  ;

// start class Tm3SimpleDB

procedure Tm3SimpleDB.CloseBase;
  //virtual;
  {* - закрывает открытые файлы. }
begin
 f_StorageMode := 0;
 f_Storage := nil;
 l3Free(f_DeletedFiles);
end;

procedure Tm3SimpleDB.Finish;
  {* - заканчивает процесс с базой. }
begin
 if (f_Starts = 1) then
 begin
  CloseBase;
  f_Elapsed := Now - f_Elapsed;
 end;//f_Starts = 1
 Dec(f_Starts);
end;

function Tm3SimpleDB.GetDocument(anID: Integer): Im3DBDocument;
  {* - возвращает документ по номеру. }
begin
 Result := Tm3DBDocument.Make(Self, anID);
end;

function Tm3SimpleDB.Storage(aMode: Tm3StoreAccess = m3_saRead): Im3IndexedStorage;
  {-}
begin
 if (f_Storage = nil) OR
    ((f_StorageMode <> m3_saReadWrite) AND (aMode = m3_saReadWrite)) then
 begin
  f_Storage := nil;
  f_Storage := m3GetMainStorage(BaseName, aMode);
  f_StorageMode := aMode;
 end;//f_MainStorage = nil..
 Result := f_Storage;
end;

function Tm3SimpleDB.OpenDocumentStream(aDocID : Integer; out aPart : Im3DBDocumentPart;
                                        aPartSelector : Tm3DocPartSelector = m3_defDocPart;
                                        aIndex: Integer = 0;
                                        aMode : Tm3StoreAccess = m3_saRead;
                                        aLevel: Integer = Cm3LastVersion): IStream;

  {* - возвращает версию документа по номеру. }
var
 l_Doc    : Im3DBDocument;
 //l_Part   : Im3DBDocumentPart;
 l_Stream : IStream;
begin
 Result := nil;
 if (aDocID <> 0) then
 try
  l_Doc := GetDocument(aDocID);
  try
   aPart := Tm3DBDocumentPart.Make(Self, l_Doc, aLevel);
   l_Stream := aPart.Open(aMode, aPartSelector);
  finally
   l_Doc := nil;
  end;//try..finally
  Result := l_Stream;
 finally
  l_Stream := nil;
 end;//try..finally
end;

function Tm3SimpleDB.OpenStream(aDocID : Integer;
                                aPartSelector : Tm3DocPartSelector = m3_defDocPart;
                                aIndex: Integer = 0;
                                aMode : Tm3StoreAccess = m3_saRead;
                                aLevel: Integer = Cm3LastVersion): IStream;

 procedure l_TuneFiler(aFiler: Tl3CustomFiler);
 begin//l_TuneFiler
  TuneFiler(aFiler);
  if (aMode <> m3_saRead) then
   aFiler.Mode := l3_fmWrite;
 end;//l_TuneFiler

 var
  l_Filer    : Tl3CustomFiler;
  l_DocStorage : Im3IndexedStorage;
  l_Summ     : Tm3BaseSummary;
  l_Change   : Boolean;
  l_Version  : Integer;
begin//OpenInNew
 l_Filer := Tl3CustomFiler.Create;
 try
  l_Filer.Handle := aDocID;
  l_TuneFiler(l_Filer);
  Start(aMode);
  try
   //   if (aLevel = Cm3ConstVersion) {f_IsConst} then ; // получить самую раннюю версию
   l_DocStorage := Storage(aMode);
   try
   {$DEFINE MULTI_VERSION_STORAGE}

   {$IFNDEF MULTI_VERSION_STORAGE}
    l_Filer.COMStream := m3GetMain(l_DocStorage, aDocID, aPartSelector, aMode);
    if (aMode <> m3_saRead) then
     m3AddDocToBaseSummary(l_DocStorage, aDocID);
   {$ELSE}
    if (aMode = m3_saRead) then
     { TODO -oЖучков Антон : Доработать - объекты }
     l_Filer.COMStream := m3GetVersionForRead(l_DocStorage, aDocID, False, aPartSelector, 0, aLevel)
    else
    begin
     //ModifyDeleted(aDocID, false);
     ModifyModified(aDocID, true);
     { TODO -oЖучков Антон : Доработать - объекты }
     l_Filer.COMStream := m3GetVersionForWrite(l_DocStorage, aDocID, aPartSelector, 0, @l_Version);

     if l_Version = 0 then
      m3AddDocToBaseSummary(l_DocStorage, aDocID);
    end;
   {$ENDIF}
   finally
    l_DocStorage := nil;
   end;//try..finally
   Supports(l_Filer, IStream, Result);
  finally
   Finish;
  end;//try..finally
 finally
  l3Free(l_Filer);
 end;//try..finally
end;

function Tm3SimpleDB.Purge: Integer;
  {* - удаляет файлы, помеченные как удаленные. }
var
 l_Base  : Im3IndexedStorage;
 l_Index : Integer;
begin
 Result := 0;
 Start(m3_saReadWrite);
 try
  l_Base := Storage(m3_saReadWrite);
  try
   with DeletedFiles do
   begin
    if Assigned(f_FilesMeter) then
     f_FilesMeter(piStart, Hi, 'Удаление файлов');
    try
     for l_Index := Lo to Hi do
     begin
      if Assigned(f_FilesMeter) then
       f_FilesMeter(piCurrent, l_Index, '');
      if l3IOk(l_Base.DeleteStore(Items[l_Index])) then
       Inc(Result);
     end;//for l_Index
    finally
     if Assigned(f_FilesMeter) then
      f_FilesMeter(piEnd, 0, '');
    end;//try..finally
   end;//with DeletedFiles
  finally
   l_Base := nil;
  end;//try..finally
 finally
  Finish;
 end;//try..finally
end;

procedure Tm3SimpleDB.Start(aOpenMode : Tm3StoreAccess);
 {* - начинает процесс с базой. }
begin
 Inc(f_Starts);
 if (f_Starts = 1) then
 begin
  if (aOpenMode <> m3_saRead) then
   Storage(aOpenMode);
  f_Stopped := false;
  f_Elapsed := Now;
 end;//f_Starts = 1
end;

function Tm3SimpleDB.Update(aNotEmpty: Boolean = true): Boolean;
  {* - переливает файлы из переменной части в постоянную. }
begin
 Result := false;
end;

function Tm3SimpleDB.OpenList(const aName: AnsiString;
                              aStatStgMode: Integer = m3_saReadWrite;
                              aUseCompression : Boolean = True) : IStream;
begin
 Result := m3COMOpenStream(Storage(aStatStgMode),
                           l3PCharLen(aName),
                           aStatStgMode,
                           aUseCompression);
end;


end.

