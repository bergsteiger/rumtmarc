unit m3StorageInterfaces;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "m3"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/m3/m3StorageInterfaces.pas"
// Начат: 30.01.2002 16:54
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Interfaces::Category>> Shared Delphi::m3::m3StorageInterfaces
//
// Интерфейсы для работы с хранилищем.
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
  l3Types,
  ActiveX,
  l3Core,
  l3PureMixIns
  ;

type
 Tm3StoreAccess = Integer;
  {* тип доступа к хранилищу. }

const
  { Режимы доступа к хранилищу. }
 m3_saRead = Tm3StoreAccess(STGM_READ or STGM_SHARE_EXCLUSIVE);
  { чтение. }
 m3_saReadWrite = Tm3StoreAccess(STGM_READWRITE or STGM_SHARE_EXCLUSIVE);
  { чтение и запись. }
 m3_saCreate = Tm3StoreAccess(STGM_READWRITE or STGM_SHARE_EXCLUSIVE or STGM_CREATE);
  { чтение и запись или создание. }
  { Типы хранилищ. }
 m3_stNone = Pred(STGTY_STORAGE);
  { Не определен. }
 m3_stStream = STGTY_STREAM;
  { Хранилище. }
 m3_stStorage = STGTY_Storage;
  { Поток. }

type
 Tm3StoreType = m3_stNone..m3_stStream;
  {* Тип элемента хранилища. }

 Pm3StoreType = ^Tm3StoreType;
  {* Указатель на Tm3StoreType. }

 Tm3StoreMode = (
  {* Режим открытия элемента каталога. }
   m3_smCreate
 , m3_smOpen
 );//Tm3StoreMode

 Tm3StoreInfo = record
  {* Информация об элементе хранилища. }
   rPosition : Int64;
   rStoreType : Tm3StoreType;
 end;//Tm3StoreInfo

 Pm3StoreInfo = ^Tm3StoreInfo;
  {* Указатель на  Tm3StoreInfo. }

 Tm3StoreAction = function (const aStoreInfo: Tm3StoreInfo;
  anIndex: Integer): Boolean;

 Tm3StorageElementAction = function (const aStoreInfo: Tm3StoreInfo;
  const aName: Tl3PCharLen): Boolean;

 Tm3IStream2ActionArg = record
  {* Аргумент для Tm3IStream2Action }
   rStream1 : IStream;
   rStream2 : IStream;
   rIndex : Integer;
 end;//Tm3IStream2ActionArg

 Tm3IStream2Action = function (const anArg: Tm3IStream2ActionArg): Boolean;

 Im3IndexedStorage = interface(IStorage)
  {* Хранилище с возможностью доступа по индексу. }
   ['{1962E532-4615-4D4A-9FAC-0F1E3402F097}']
   function SetIndexParam(aBits: byte;
    aMaxBits: byte): Boolean;
     {* устанавливает параметры "размазывания" индекса. }
   function DeleteStore(anIndex: Integer): hResult;
     {* удаляет элемент хранилища. }
   function CreateStore(anIndex: Integer;
    anAccess: Tm3StoreAccess;
    aStoreType: Tm3StoreType;
    out aStore: IUnknown;
    aUseCompression: Boolean = true): hResult; overload; 
     {* создает элемент хранилища. }
   function OpenStore(anIndex: Integer;
    anAccess: Tm3StoreAccess;
    aStoreType: Tm3StoreType;
    out aStore: IUnknown;
    aUseCompression: Boolean = true): hResult; overload; 
     {* открывает элемент хранилища. }
   function CreateStore(const aName: Tl3PCharLen;
    anAccess: Tm3StoreAccess;
    aStoreType: Tm3StoreType;
    out aStore: IUnknown;
    aUseCompression: Boolean = true): hResult; overload; 
     {* создает элемент хранилища }
   function OpenStore(const aName: Tl3PCharLen;
    anAccess: Tm3StoreAccess;
    aStoreType: Tm3StoreType;
    out aStore: IUnknown;
    aUseCompression: Boolean = true): hResult; overload; 
     {* открывает элемент хранилища }
   function OpenStore(aPosition: Int64;
    anAccess: Tm3StoreAccess;
    const aName: Tl3PCharLen;
    aStoreType: Tm3StoreType;
    aUseCompression: Boolean = true): IUnknown; overload; 
     {* открывает элемент хранилища. }
   function OpenStore(aPosition: Int64;
    anAccess: Tm3StoreAccess;
    anIndex: Integer;
    aStoreType: Tm3StoreType;
    aUseCompression: Boolean = true): IUnknown; overload; 
     {* открывает элемент хранилища }
   function OpenStore(const aStoreInfo: Tm3StoreInfo;
    const aName: Tl3PCharLen;
    anAccess: Tm3StoreAccess = m3_saRead;
    aUseCompression: Boolean = true): IUnknown; overload; 
     {* открывает элемент хранилища. }
   procedure Iterate(anAction: Tm3StorageElementAction); overload; 
     {* перебирает элементы хранилища по именам. }
   procedure Iterate(anAction: Tm3StoreAction); overload; 
     {* перебирает элементы хранилища по индексам. }
   procedure IterateF(anAction: Tm3StorageElementAction); overload; 
     {* перебирает элементы хранилища, потом освобождает заглушку. }
   procedure IterateF(anAction: Tm3StoreAction); overload; 
     {* перебирает элементы хранилища, потом освобождает заглушку. }
   function RenameElementA(const aOldName: Tl3WString;
    const aNewName: Tl3WString): hResult;
     {* Переименовывает элемент хранилища }
   function ElementExists(const aName: Tl3WString): Boolean;
     {* Проверяет существование элемента с указанным именем }
 end;//Im3IndexedStorage

 Tm3IStreamAction = function (const aStream: IStream;
  anIndex: Integer): Boolean;
   {* Подитеративная функция для перебора потоков. }

 Tm3StorageElementID = Integer;

 Im3StorageElementIDList = interface(IUnknown)
   ['{DDD05DF7-3219-4A89-88A3-AD2A21566229}']
  // Ml3ListEx
   function IndexOf(const anItem: Tm3StorageElementID): Integer;
   function Add(const anItem: Tm3StorageElementID): Integer;
  // Ml3List
   function pm_GetEmpty: Boolean;
   function pm_GetFirst: Tm3StorageElementID;
   function pm_GetLast: Tm3StorageElementID;
   function pm_GetItems(anIndex: Integer): Tm3StorageElementID;
   property Empty: Boolean
     read pm_GetEmpty;
   property First: Tm3StorageElementID
     read pm_GetFirst;
     {* Первый элемент. }
   property Last: Tm3StorageElementID
     read pm_GetLast;
     {* Последний элемент. }
   property Items[anIndex: Integer]: Tm3StorageElementID
     read pm_GetItems;
     default;
  // Ml3CountHolder
   function pm_GetCount: Integer;
   property Count: Integer
     read pm_GetCount;
     {* Число элементов. }
 end;//Im3StorageElementIDList

 TStatStg = ActiveX.TStatStg;

implementation

end.