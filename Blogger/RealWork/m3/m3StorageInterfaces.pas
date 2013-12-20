unit m3StorageInterfaces;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "m3"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/m3/m3StorageInterfaces.pas"
// �����: 30.01.2002 16:54
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Interfaces::Category>> Shared Delphi::m3::m3StorageInterfaces
//
// ���������� ��� ������ � ����������.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

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
  {* ��� ������� � ���������. }

const
  { ������ ������� � ���������. }
 m3_saRead = Tm3StoreAccess(STGM_READ or STGM_SHARE_EXCLUSIVE);
  { ������. }
 m3_saReadWrite = Tm3StoreAccess(STGM_READWRITE or STGM_SHARE_EXCLUSIVE);
  { ������ � ������. }
 m3_saCreate = Tm3StoreAccess(STGM_READWRITE or STGM_SHARE_EXCLUSIVE or STGM_CREATE);
  { ������ � ������ ��� ��������. }
  { ���� ��������. }
 m3_stNone = Pred(STGTY_STORAGE);
  { �� ���������. }
 m3_stStream = STGTY_STREAM;
  { ���������. }
 m3_stStorage = STGTY_Storage;
  { �����. }

type
 Tm3StoreType = m3_stNone..m3_stStream;
  {* ��� �������� ���������. }

 Pm3StoreType = ^Tm3StoreType;
  {* ��������� �� Tm3StoreType. }

 Tm3StoreMode = (
  {* ����� �������� �������� ��������. }
   m3_smCreate
 , m3_smOpen
 );//Tm3StoreMode

 Tm3StoreInfo = record
  {* ���������� �� �������� ���������. }
   rPosition : Int64;
   rStoreType : Tm3StoreType;
 end;//Tm3StoreInfo

 Pm3StoreInfo = ^Tm3StoreInfo;
  {* ��������� ��  Tm3StoreInfo. }

 Tm3StoreAction = function (const aStoreInfo: Tm3StoreInfo;
  anIndex: Integer): Boolean;

 Tm3StorageElementAction = function (const aStoreInfo: Tm3StoreInfo;
  const aName: Tl3PCharLen): Boolean;

 Tm3IStream2ActionArg = record
  {* �������� ��� Tm3IStream2Action }
   rStream1 : IStream;
   rStream2 : IStream;
   rIndex : Integer;
 end;//Tm3IStream2ActionArg

 Tm3IStream2Action = function (const anArg: Tm3IStream2ActionArg): Boolean;

 Im3IndexedStorage = interface(IStorage)
  {* ��������� � ������������ ������� �� �������. }
   ['{1962E532-4615-4D4A-9FAC-0F1E3402F097}']
   function SetIndexParam(aBits: byte;
    aMaxBits: byte): Boolean;
     {* ������������� ��������� "������������" �������. }
   function DeleteStore(anIndex: Integer): hResult;
     {* ������� ������� ���������. }
   function CreateStore(anIndex: Integer;
    anAccess: Tm3StoreAccess;
    aStoreType: Tm3StoreType;
    out aStore: IUnknown;
    aUseCompression: Boolean = true): hResult; overload; 
     {* ������� ������� ���������. }
   function OpenStore(anIndex: Integer;
    anAccess: Tm3StoreAccess;
    aStoreType: Tm3StoreType;
    out aStore: IUnknown;
    aUseCompression: Boolean = true): hResult; overload; 
     {* ��������� ������� ���������. }
   function CreateStore(const aName: Tl3PCharLen;
    anAccess: Tm3StoreAccess;
    aStoreType: Tm3StoreType;
    out aStore: IUnknown;
    aUseCompression: Boolean = true): hResult; overload; 
     {* ������� ������� ��������� }
   function OpenStore(const aName: Tl3PCharLen;
    anAccess: Tm3StoreAccess;
    aStoreType: Tm3StoreType;
    out aStore: IUnknown;
    aUseCompression: Boolean = true): hResult; overload; 
     {* ��������� ������� ��������� }
   function OpenStore(aPosition: Int64;
    anAccess: Tm3StoreAccess;
    const aName: Tl3PCharLen;
    aStoreType: Tm3StoreType;
    aUseCompression: Boolean = true): IUnknown; overload; 
     {* ��������� ������� ���������. }
   function OpenStore(aPosition: Int64;
    anAccess: Tm3StoreAccess;
    anIndex: Integer;
    aStoreType: Tm3StoreType;
    aUseCompression: Boolean = true): IUnknown; overload; 
     {* ��������� ������� ��������� }
   function OpenStore(const aStoreInfo: Tm3StoreInfo;
    const aName: Tl3PCharLen;
    anAccess: Tm3StoreAccess = m3_saRead;
    aUseCompression: Boolean = true): IUnknown; overload; 
     {* ��������� ������� ���������. }
   procedure Iterate(anAction: Tm3StorageElementAction); overload; 
     {* ���������� �������� ��������� �� ������. }
   procedure Iterate(anAction: Tm3StoreAction); overload; 
     {* ���������� �������� ��������� �� ��������. }
   procedure IterateF(anAction: Tm3StorageElementAction); overload; 
     {* ���������� �������� ���������, ����� ����������� ��������. }
   procedure IterateF(anAction: Tm3StoreAction); overload; 
     {* ���������� �������� ���������, ����� ����������� ��������. }
   function RenameElementA(const aOldName: Tl3WString;
    const aNewName: Tl3WString): hResult;
     {* ��������������� ������� ��������� }
   function ElementExists(const aName: Tl3WString): Boolean;
     {* ��������� ������������� �������� � ��������� ������ }
 end;//Im3IndexedStorage

 Tm3IStreamAction = function (const aStream: IStream;
  anIndex: Integer): Boolean;
   {* �������������� ������� ��� �������� �������. }

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
     {* ������ �������. }
   property Last: Tm3StorageElementID
     read pm_GetLast;
     {* ��������� �������. }
   property Items[anIndex: Integer]: Tm3StorageElementID
     read pm_GetItems;
     default;
  // Ml3CountHolder
   function pm_GetCount: Integer;
   property Count: Integer
     read pm_GetCount;
     {* ����� ���������. }
 end;//Im3StorageElementIDList

 TStatStg = ActiveX.TStatStg;

implementation

end.