unit NOT_FINISHED_m3DB;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "m3"
// �����: ����� �.�. �
// ������: "w:/common/components/rtl/Garant/m3/NOT_FINISHED_m3DB.pas"
// �����: 17.08.2004 19:14
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::m3::m3DB::m3DB
//
// ���������� ��������� ���������� �����������.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ���� ���� ������������ ������ ��� �������������, � �� ��� ����������. !

{$Include ..\m3\m3Define.inc}

interface

uses
  l3CacheableBase,
  m3DBInterfaces,
  m3PrimDB,
  m3StorageInterfaces,
  l3Interfaces
  ;

type
 Tm3BaseRangeParam = (
  {* ��������� �������. }
   m3_brpIndexed
 , m3_brpModified
 );//Tm3BaseRangeParam

 Tm3BaseRangeParams = set of Tm3BaseRangeParam;
  {* ��������� �������. }

 Im3BaseRangeParamsSource = interface(IUnknown)
  {* ��������� �������. }
   ['{156B14ED-B943-4DFC-9FED-CD8C32BAF936}']
   function Get_Params: Tm3BaseRangeParams;
   procedure Set_Params(aValue: Tm3BaseRangeParams);
   property Params: Tm3BaseRangeParams
     read Get_Params
     write Set_Params;
     {* ��������� �������. }
 end;//Im3BaseRangeParamsSource

 Tm3CommonListSelector = (
   clsDeleted
 , clsModified
 );//Tm3CommonListSelector

 Tm3CustomDB = class(Tm3PrimDB, Im3DB)
  {* ������� ���������� ��������� ����������. }
 protected
 // realized methods
   function IndexedFiles(anIndexID: Integer = 1): Im3DBRange;
     {* ��������������� �����. }
   function ModifiedFiles(aNotEmpty: Boolean = false;
    aLevel: Integer = 0): Im3DBRange;
     {* ���������������� �����. }
   function AllFiles: Im3DBRange;
     {* ��� ����� ����. }
   function InProcess: Boolean;
     {* � ����� ���� �������. }
   function Stopped: Boolean;
     {* ���������� ������� ��� ����������. }
   procedure Stop;
     {* ���������� ������� �������. }
   function Purge: integer;
     {* ������� �����, ���������� ��� ��������� � ���������� ����� ���������. }
   function Update(aNotEmpty: Boolean = true): Boolean;
     {* ���������� ����� �� ���������� ����� � ����������. }
   procedure FlushLists;
     {* ���������� ��� Modified � Deleted ������. ����������� ��� �������� ������� ���������� � ����� ������� �����. ��� �� ���������� ��� ����������� ������� ������� � ���� (Tm3DB). }
   procedure Start(aOpenMode: Tm3StoreAccess);
     {* �������� ������� � �����. }
   procedure Finish;
     {* ����������� ������� � �����. }
   function LastElapsed: TDateTime;
     {* ����� ���������� �������� � �����. }
   function GetDocument(anID: Integer): Im3DBDocument;
     {* ���������� �������� �� ������. }
   procedure FreeVersions;
     {* �������� � ���, ��� ��������� ������ ����� ��������� (��������) }
   procedure ModifyModified(anID: Integer); override;
     {* ��������� �������� � ������ ��������� }
   function FilesInList(const aList: Im3StorageElementIDList): Im3DBRange;
     {* ����� � ���������������� �� ������ }
   procedure DeleteVersion;
     {* ������� ��������� ������ }
   procedure DeleteMain;
     {* ������� �������� ����� }
   procedure RenameMain(const aNewName: AnsiString);
     {* ��������������� ���������� ����� }
   procedure RenameVersion(const aNewName: AnsiString);
     {* ��������������� ���������� ����� }
   procedure Rename(const aNewName: AnsiString);
     {* ��������������� ��� ���� }
 protected
 // protected methods
   procedure SetList(aListSelector: Tm3CommonListSelector;
    anID: Integer;
    aInsert: Boolean); virtual;
     {* ���������� ������ aListSelector. }
 end;//Tm3CustomDB

 Tm3DB = class(Tm3CustomDB)
 protected
 // realized methods
   function MainStorage(aMode: Tm3StoreAccess = m3_saRead): Im3IndexedStorage; override;
     {* ���������� ������ ���������� ����� }
   function GetVersionsStorage(aMode: Tm3StoreAccess = m3_saRead): Im3IndexedStorage; override;
     {* ���������� ������ ���������� ����� }
   function GetBackupStorage(aMode: Tm3StoreAccess = m3_saRead): Im3IndexedStorage; override;
     {* ���������� ������ ��������� ����� }
   procedure Start(aOpenMode: Tm3StoreAccess); override;
     {* �������� ������� � ����� }
   procedure Finish; override;
     {* ����������� ������� � ����� }
   procedure StartEx(aVersionsMode: Tm3StoreAccess;
    aConstMode: Tm3StoreAccess); override;
     {* �������� ������� � ����� }
   procedure CloseBase; override;
     {* ��������� �������� ����� }
 end;//Tm3DB

 Im3Base = m3DBInterfaces.Im3Base;

implementation

uses
  l3ProxyStream,
  m3DBProxyWriteStream,
  m3NewVersionStream,
  m3BackupTools
  ;

type
 Tm3BaseObject = class(Tl3CacheableBase, Im3DBObject)
  {* ������� ���������� ������� ���������. }
 protected
 // realized methods
   function DB: Im3DB;
 end;//Tm3BaseObject

// start class Tm3BaseObject

function Tm3BaseObject.DB: Im3DB;
//#UC START# *4720847C026F_4742DC5C0219_var*
//#UC END# *4720847C026F_4742DC5C0219_var*
begin
//#UC START# *4720847C026F_4742DC5C0219_impl*
 assert(false, 'Tm3BaseObject.DB not implemented');
//#UC END# *4720847C026F_4742DC5C0219_impl*
end;//Tm3BaseObject.DB

type
 Tm3DBDocument = class(Tm3BaseObject, Im3DBDocument)
  {* ���������� ���������. }
 protected
 // realized methods
   function pm_GetID: Integer;
   procedure Delete;
     {* ������� �������� �� ���������. }
   function Undelete: Boolean;
     {* ��������������� ��������. }
   function GetConst: Im3DBDocumentPart;
     {* ���������� ����� ���������. }
   function GetVersion(aLevel: Integer = 0): Im3DBDocumentPart;
     {* ���������� ����� ���������. }
   function Open(aMode: Tm3StoreAccess = m3_saRead;
    aDocPart: Tm3DocPartSelector = m3_defDocPart;
    aIndex: Integer = 0): IStream;
     {* ������� ��������. }
   function GetFreeObjectID: Integer;
   procedure DeleteObject(aObjID: Integer);
 end;//Tm3DBDocument

// start class Tm3DBDocument

function Tm3DBDocument.pm_GetID: Integer;
//#UC START# *472084D802D5_4742DCCE00DDget_var*
//#UC END# *472084D802D5_4742DCCE00DDget_var*
begin
//#UC START# *472084D802D5_4742DCCE00DDget_impl*
 assert(false, 'Tm3DBDocument.pm_GetID not implemented');
//#UC END# *472084D802D5_4742DCCE00DDget_impl*
end;//Tm3DBDocument.pm_GetID

procedure Tm3DBDocument.Delete;
//#UC START# *472084FC00BA_4742DCCE00DD_var*
//#UC END# *472084FC00BA_4742DCCE00DD_var*
begin
//#UC START# *472084FC00BA_4742DCCE00DD_impl*
 assert(false, 'Tm3DBDocument.Delete not implemented');
//#UC END# *472084FC00BA_4742DCCE00DD_impl*
end;//Tm3DBDocument.Delete

function Tm3DBDocument.Undelete: Boolean;
//#UC START# *47208516014E_4742DCCE00DD_var*
//#UC END# *47208516014E_4742DCCE00DD_var*
begin
//#UC START# *47208516014E_4742DCCE00DD_impl*
 assert(false, 'Tm3DBDocument.Undelete not implemented');
//#UC END# *47208516014E_4742DCCE00DD_impl*
end;//Tm3DBDocument.Undelete

function Tm3DBDocument.GetConst: Im3DBDocumentPart;
//#UC START# *472085390162_4742DCCE00DD_var*
//#UC END# *472085390162_4742DCCE00DD_var*
begin
//#UC START# *472085390162_4742DCCE00DD_impl*
 assert(false, 'Tm3DBDocument.GetConst not implemented');
//#UC END# *472085390162_4742DCCE00DD_impl*
end;//Tm3DBDocument.GetConst

function Tm3DBDocument.GetVersion(aLevel: Integer = 0): Im3DBDocumentPart;
//#UC START# *4720856602B2_4742DCCE00DD_var*
//#UC END# *4720856602B2_4742DCCE00DD_var*
begin
//#UC START# *4720856602B2_4742DCCE00DD_impl*
 assert(false, 'Tm3DBDocument.GetVersion not implemented');
//#UC END# *4720856602B2_4742DCCE00DD_impl*
end;//Tm3DBDocument.GetVersion

function Tm3DBDocument.Open(aMode: Tm3StoreAccess = m3_saRead;
  aDocPart: Tm3DocPartSelector = m3_defDocPart;
  aIndex: Integer = 0): IStream;
//#UC START# *472085990020_4742DCCE00DD_var*
//#UC END# *472085990020_4742DCCE00DD_var*
begin
//#UC START# *472085990020_4742DCCE00DD_impl*
 assert(false, 'Tm3DBDocument.Open not implemented');
//#UC END# *472085990020_4742DCCE00DD_impl*
end;//Tm3DBDocument.Open

function Tm3DBDocument.GetFreeObjectID: Integer;
//#UC START# *486B7FD901A7_4742DCCE00DD_var*
//#UC END# *486B7FD901A7_4742DCCE00DD_var*
begin
//#UC START# *486B7FD901A7_4742DCCE00DD_impl*
 !!! Needs to be implemented !!!
//#UC END# *486B7FD901A7_4742DCCE00DD_impl*
end;//Tm3DBDocument.GetFreeObjectID

procedure Tm3DBDocument.DeleteObject(aObjID: Integer);
//#UC START# *486B7FE5002E_4742DCCE00DD_var*
//#UC END# *486B7FE5002E_4742DCCE00DD_var*
begin
//#UC START# *486B7FE5002E_4742DCCE00DD_impl*
 !!! Needs to be implemented !!!
//#UC END# *486B7FE5002E_4742DCCE00DD_impl*
end;//Tm3DBDocument.DeleteObject

type
 Tm3DBDocumentPart = class(Tm3BaseObject, Im3DBDocumentPart)
  {* ���������� ����� ���������. }
 protected
 // realized methods
   function pm_GetDocument: Im3DBDocument;
   function pm_GetInfo: Tm3DBDocumentInfo;
   procedure pm_SetInfo(const aValue: Tm3DBDocumentInfo);
   function Open(aMode: Tm3StoreAccess = m3_saRead;
    aDocPart: Tm3DocPartSelector = m3_defDocPart;
    aIndex: Integer = 0): IStream;
     {* ��������� ����� � ���������. }
 end;//Tm3DBDocumentPart

// start class Tm3DBDocumentPart

function Tm3DBDocumentPart.pm_GetDocument: Im3DBDocument;
//#UC START# *4725D0FB008B_4742DCFF02DCget_var*
//#UC END# *4725D0FB008B_4742DCFF02DCget_var*
begin
//#UC START# *4725D0FB008B_4742DCFF02DCget_impl*
 assert(false, 'Tm3DBDocumentPart.pm_GetDocument not implemented');
//#UC END# *4725D0FB008B_4742DCFF02DCget_impl*
end;//Tm3DBDocumentPart.pm_GetDocument

function Tm3DBDocumentPart.pm_GetInfo: Tm3DBDocumentInfo;
//#UC START# *4725D11802BD_4742DCFF02DCget_var*
//#UC END# *4725D11802BD_4742DCFF02DCget_var*
begin
//#UC START# *4725D11802BD_4742DCFF02DCget_impl*
 assert(false, 'Tm3DBDocumentPart.pm_GetInfo not implemented');
//#UC END# *4725D11802BD_4742DCFF02DCget_impl*
end;//Tm3DBDocumentPart.pm_GetInfo

procedure Tm3DBDocumentPart.pm_SetInfo(const aValue: Tm3DBDocumentInfo);
//#UC START# *4725D11802BD_4742DCFF02DCset_var*
//#UC END# *4725D11802BD_4742DCFF02DCset_var*
begin
//#UC START# *4725D11802BD_4742DCFF02DCset_impl*
 assert(false, 'Tm3DBDocumentPart.pm_SetInfo not implemented');
//#UC END# *4725D11802BD_4742DCFF02DCset_impl*
end;//Tm3DBDocumentPart.pm_SetInfo

function Tm3DBDocumentPart.Open(aMode: Tm3StoreAccess = m3_saRead;
  aDocPart: Tm3DocPartSelector = m3_defDocPart;
  aIndex: Integer = 0): IStream;
//#UC START# *4725D13E031C_4742DCFF02DC_var*
//#UC END# *4725D13E031C_4742DCFF02DC_var*
begin
//#UC START# *4725D13E031C_4742DCFF02DC_impl*
 assert(false, 'Tm3DBDocumentPart.Open not implemented');
//#UC END# *4725D13E031C_4742DCFF02DC_impl*
end;//Tm3DBDocumentPart.Open

type
 Tm3BaseRange = class(Tm3BaseObject, Im3DBRange, Im3BaseRangeParamsSource)
  {* ������� ���������� ������� ����������. }
 protected
 // realized methods
   function Mul(const aRange: Im3DBRange): Im3DBRange;
     {* ���������� �������. }
   function Iterate(const aFilter: Im3TagGenerator;
    aNeedWriteToBase: Boolean;
    aParts: Tm3DocPartSet = m3_AllDocParts): Integer; overload; 
   function Iterate(anAction: Tm3FilerAction;
    aParts: Tm3DocPartSet = m3_AllDocParts): Integer; overload; 
   function IterateF(anAction: Tm3FilerAction;
    aParts: Tm3DocPartSet = m3_AllDocParts): Integer; overload; 
   function Iterate(anAction: Tm3DocumentAction;
    aParts: Tm3DocPartSet = m3_AllDocParts): Integer; overload; 
   function IterateF(anAction: Tm3DocumentAction;
    aParts: Tm3DocPartSet = m3_AllDocParts): Integer; overload; 
   function CopyTo(const aDB: Im3DB;
    aMode: Tm3DBCopyMode = m3_cmRewrite;
    aParts: Tm3DocPartSet = m3_AllDocParts): Boolean;
     {* ���������� ������� � ������ ����. }
   function Get_Params: Tm3BaseRangeParams;
   procedure Set_Params(aValue: Tm3BaseRangeParams);
 end;//Tm3BaseRange

// start class Tm3BaseRange

function Tm3BaseRange.Mul(const aRange: Im3DBRange): Im3DBRange;
//#UC START# *472718E303CA_4742DD750368_var*
//#UC END# *472718E303CA_4742DD750368_var*
begin
//#UC START# *472718E303CA_4742DD750368_impl*
 assert(false, 'Tm3BaseRange.Mul not implemented');
//#UC END# *472718E303CA_4742DD750368_impl*
end;//Tm3BaseRange.Mul

function Tm3BaseRange.Iterate(const aFilter: Im3TagGenerator;
  aNeedWriteToBase: Boolean;
  aParts: Tm3DocPartSet = m3_AllDocParts): Integer;
//#UC START# *472719650005_4742DD750368_var*
//#UC END# *472719650005_4742DD750368_var*
begin
//#UC START# *472719650005_4742DD750368_impl*
 assert(false, 'Tm3BaseRange.Iterate not implemented');
//#UC END# *472719650005_4742DD750368_impl*
end;//Tm3BaseRange.Iterate

function Tm3BaseRange.Iterate(anAction: Tm3FilerAction;
  aParts: Tm3DocPartSet = m3_AllDocParts): Integer;
//#UC START# *47271A2A02D1_4742DD750368_var*
//#UC END# *47271A2A02D1_4742DD750368_var*
begin
//#UC START# *47271A2A02D1_4742DD750368_impl*
 assert(false, 'Tm3BaseRange.Iterate not implemented');
//#UC END# *47271A2A02D1_4742DD750368_impl*
end;//Tm3BaseRange.Iterate

function Tm3BaseRange.IterateF(anAction: Tm3FilerAction;
  aParts: Tm3DocPartSet = m3_AllDocParts): Integer;
//#UC START# *47271A4301A1_4742DD750368_var*
//#UC END# *47271A4301A1_4742DD750368_var*
begin
//#UC START# *47271A4301A1_4742DD750368_impl*
 assert(false, 'Tm3BaseRange.IterateF not implemented');
//#UC END# *47271A4301A1_4742DD750368_impl*
end;//Tm3BaseRange.IterateF

function Tm3BaseRange.Iterate(anAction: Tm3DocumentAction;
  aParts: Tm3DocPartSet = m3_AllDocParts): Integer;
//#UC START# *47271A600148_4742DD750368_var*
//#UC END# *47271A600148_4742DD750368_var*
begin
//#UC START# *47271A600148_4742DD750368_impl*
 assert(false, 'Tm3BaseRange.Iterate not implemented');
//#UC END# *47271A600148_4742DD750368_impl*
end;//Tm3BaseRange.Iterate

function Tm3BaseRange.IterateF(anAction: Tm3DocumentAction;
  aParts: Tm3DocPartSet = m3_AllDocParts): Integer;
//#UC START# *47271A8703B1_4742DD750368_var*
//#UC END# *47271A8703B1_4742DD750368_var*
begin
//#UC START# *47271A8703B1_4742DD750368_impl*
 assert(false, 'Tm3BaseRange.IterateF not implemented');
//#UC END# *47271A8703B1_4742DD750368_impl*
end;//Tm3BaseRange.IterateF

function Tm3BaseRange.CopyTo(const aDB: Im3DB;
  aMode: Tm3DBCopyMode = m3_cmRewrite;
  aParts: Tm3DocPartSet = m3_AllDocParts): Boolean;
//#UC START# *47271A9E01AC_4742DD750368_var*
//#UC END# *47271A9E01AC_4742DD750368_var*
begin
//#UC START# *47271A9E01AC_4742DD750368_impl*
 assert(false, 'Tm3BaseRange.CopyTo not implemented');
//#UC END# *47271A9E01AC_4742DD750368_impl*
end;//Tm3BaseRange.CopyTo

function Tm3BaseRange.Get_Params: Tm3BaseRangeParams;
//#UC START# *4742E29F0333_4742DD750368get_var*
//#UC END# *4742E29F0333_4742DD750368get_var*
begin
//#UC START# *4742E29F0333_4742DD750368get_impl*
 assert(false, 'Tm3BaseRange.Get_Params not implemented');
//#UC END# *4742E29F0333_4742DD750368get_impl*
end;//Tm3BaseRange.Get_Params

procedure Tm3BaseRange.Set_Params(aValue: Tm3BaseRangeParams);
//#UC START# *4742E29F0333_4742DD750368set_var*
//#UC END# *4742E29F0333_4742DD750368set_var*
begin
//#UC START# *4742E29F0333_4742DD750368set_impl*
 assert(false, 'Tm3BaseRange.Set_Params not implemented');
//#UC END# *4742E29F0333_4742DD750368set_impl*
end;//Tm3BaseRange.Set_Params

type
 Tm3SingleDocumentRange = class(Tm3BaseRange)
  {* �����, � ���� ������������! }
 end;//Tm3SingleDocumentRange

 Tm3DocumentsRange = class(Tm3BaseRange)
  {* ���������� ������� ����������, �� ������ �������. }
 end;//Tm3DocumentsRange

 Tm3BiCompBaseRange = class(Tm3BaseRange)
  {* ����� - � ���� ������������. }
 end;//Tm3BiCompBaseRange

// start class Tm3CustomDB

procedure Tm3CustomDB.SetList(aListSelector: Tm3CommonListSelector;
  anID: Integer;
  aInsert: Boolean);
//#UC START# *47446C7401CD_4742CA25034B_var*
//#UC END# *47446C7401CD_4742CA25034B_var*
begin
//#UC START# *47446C7401CD_4742CA25034B_impl*
 assert(false, 'Tm3CustomDB.SetList not implemented');
//#UC END# *47446C7401CD_4742CA25034B_impl*
end;//Tm3CustomDB.SetList

function Tm3CustomDB.IndexedFiles(anIndexID: Integer = 1): Im3DBRange;
//#UC START# *47271FFF00D9_4742CA25034B_var*
//#UC END# *47271FFF00D9_4742CA25034B_var*
begin
//#UC START# *47271FFF00D9_4742CA25034B_impl*
 assert(false, 'Tm3CustomDB.IndexedFiles not implemented');
//#UC END# *47271FFF00D9_4742CA25034B_impl*
end;//Tm3CustomDB.IndexedFiles

function Tm3CustomDB.ModifiedFiles(aNotEmpty: Boolean = false;
  aLevel: Integer = 0): Im3DBRange;
//#UC START# *4727201800DF_4742CA25034B_var*
//#UC END# *4727201800DF_4742CA25034B_var*
begin
//#UC START# *4727201800DF_4742CA25034B_impl*
 assert(false, 'Tm3CustomDB.ModifiedFiles not implemented');
//#UC END# *4727201800DF_4742CA25034B_impl*
end;//Tm3CustomDB.ModifiedFiles

function Tm3CustomDB.AllFiles: Im3DBRange;
//#UC START# *4727203C02FE_4742CA25034B_var*
//#UC END# *4727203C02FE_4742CA25034B_var*
begin
//#UC START# *4727203C02FE_4742CA25034B_impl*
 assert(false, 'Tm3CustomDB.AllFiles not implemented');
//#UC END# *4727203C02FE_4742CA25034B_impl*
end;//Tm3CustomDB.AllFiles

function Tm3CustomDB.InProcess: Boolean;
//#UC START# *47272B6400D4_4742CA25034B_var*
//#UC END# *47272B6400D4_4742CA25034B_var*
begin
//#UC START# *47272B6400D4_4742CA25034B_impl*
 assert(false, 'Tm3CustomDB.InProcess not implemented');
//#UC END# *47272B6400D4_4742CA25034B_impl*
end;//Tm3CustomDB.InProcess

function Tm3CustomDB.Stopped: Boolean;
//#UC START# *47272B8403DD_4742CA25034B_var*
//#UC END# *47272B8403DD_4742CA25034B_var*
begin
//#UC START# *47272B8403DD_4742CA25034B_impl*
 assert(false, 'Tm3CustomDB.Stopped not implemented');
//#UC END# *47272B8403DD_4742CA25034B_impl*
end;//Tm3CustomDB.Stopped

procedure Tm3CustomDB.Stop;
//#UC START# *47272B980395_4742CA25034B_var*
//#UC END# *47272B980395_4742CA25034B_var*
begin
//#UC START# *47272B980395_4742CA25034B_impl*
 assert(false, 'Tm3CustomDB.Stop not implemented');
//#UC END# *47272B980395_4742CA25034B_impl*
end;//Tm3CustomDB.Stop

function Tm3CustomDB.Purge: integer;
//#UC START# *47272BAA0251_4742CA25034B_var*
//#UC END# *47272BAA0251_4742CA25034B_var*
begin
//#UC START# *47272BAA0251_4742CA25034B_impl*
 assert(false, 'Tm3CustomDB.Purge not implemented');
//#UC END# *47272BAA0251_4742CA25034B_impl*
end;//Tm3CustomDB.Purge

function Tm3CustomDB.Update(aNotEmpty: Boolean = true): Boolean;
//#UC START# *47272BBF01F7_4742CA25034B_var*
//#UC END# *47272BBF01F7_4742CA25034B_var*
begin
//#UC START# *47272BBF01F7_4742CA25034B_impl*
 assert(false, 'Tm3CustomDB.Update not implemented');
//#UC END# *47272BBF01F7_4742CA25034B_impl*
end;//Tm3CustomDB.Update

procedure Tm3CustomDB.FlushLists;
//#UC START# *47272BD7022E_4742CA25034B_var*
//#UC END# *47272BD7022E_4742CA25034B_var*
begin
//#UC START# *47272BD7022E_4742CA25034B_impl*
 assert(false, 'Tm3CustomDB.FlushLists not implemented');
//#UC END# *47272BD7022E_4742CA25034B_impl*
end;//Tm3CustomDB.FlushLists

procedure Tm3CustomDB.Start(aOpenMode: Tm3StoreAccess);
//#UC START# *47272C0C0284_4742CA25034B_var*
//#UC END# *47272C0C0284_4742CA25034B_var*
begin
//#UC START# *47272C0C0284_4742CA25034B_impl*
 assert(false, 'Tm3CustomDB.Start not implemented');
//#UC END# *47272C0C0284_4742CA25034B_impl*
end;//Tm3CustomDB.Start

procedure Tm3CustomDB.Finish;
//#UC START# *47272C1D02C4_4742CA25034B_var*
//#UC END# *47272C1D02C4_4742CA25034B_var*
begin
//#UC START# *47272C1D02C4_4742CA25034B_impl*
 assert(false, 'Tm3CustomDB.Finish not implemented');
//#UC END# *47272C1D02C4_4742CA25034B_impl*
end;//Tm3CustomDB.Finish

function Tm3CustomDB.LastElapsed: TDateTime;
//#UC START# *47272C6B008C_4742CA25034B_var*
//#UC END# *47272C6B008C_4742CA25034B_var*
begin
//#UC START# *47272C6B008C_4742CA25034B_impl*
 assert(false, 'Tm3CustomDB.LastElapsed not implemented');
//#UC END# *47272C6B008C_4742CA25034B_impl*
end;//Tm3CustomDB.LastElapsed

function Tm3CustomDB.GetDocument(anID: Integer): Im3DBDocument;
//#UC START# *47272E7903B3_4742CA25034B_var*
//#UC END# *47272E7903B3_4742CA25034B_var*
begin
//#UC START# *47272E7903B3_4742CA25034B_impl*
 assert(false, 'Tm3CustomDB.GetDocument not implemented');
//#UC END# *47272E7903B3_4742CA25034B_impl*
end;//Tm3CustomDB.GetDocument

procedure Tm3CustomDB.FreeVersions;
//#UC START# *49BE895B01ED_4742CA25034B_var*
//#UC END# *49BE895B01ED_4742CA25034B_var*
begin
//#UC START# *49BE895B01ED_4742CA25034B_impl*
 !!! Needs to be implemented !!!
//#UC END# *49BE895B01ED_4742CA25034B_impl*
end;//Tm3CustomDB.FreeVersions

procedure Tm3CustomDB.ModifyModified(anID: Integer);
//#UC START# *49BFC6640310_4742CA25034B_var*
//#UC END# *49BFC6640310_4742CA25034B_var*
begin
//#UC START# *49BFC6640310_4742CA25034B_impl*
 !!! Needs to be implemented !!!
//#UC END# *49BFC6640310_4742CA25034B_impl*
end;//Tm3CustomDB.ModifyModified

function Tm3CustomDB.FilesInList(const aList: Im3StorageElementIDList): Im3DBRange;
//#UC START# *4BC8352E02D3_4742CA25034B_var*
//#UC END# *4BC8352E02D3_4742CA25034B_var*
begin
//#UC START# *4BC8352E02D3_4742CA25034B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4BC8352E02D3_4742CA25034B_impl*
end;//Tm3CustomDB.FilesInList

procedure Tm3CustomDB.DeleteVersion;
//#UC START# *4FA16B78016F_4742CA25034B_var*
//#UC END# *4FA16B78016F_4742CA25034B_var*
begin
//#UC START# *4FA16B78016F_4742CA25034B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FA16B78016F_4742CA25034B_impl*
end;//Tm3CustomDB.DeleteVersion

procedure Tm3CustomDB.DeleteMain;
//#UC START# *4FA16B91036A_4742CA25034B_var*
//#UC END# *4FA16B91036A_4742CA25034B_var*
begin
//#UC START# *4FA16B91036A_4742CA25034B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FA16B91036A_4742CA25034B_impl*
end;//Tm3CustomDB.DeleteMain

procedure Tm3CustomDB.RenameMain(const aNewName: AnsiString);
//#UC START# *4FBB76D701DC_4742CA25034B_var*
//#UC END# *4FBB76D701DC_4742CA25034B_var*
begin
//#UC START# *4FBB76D701DC_4742CA25034B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FBB76D701DC_4742CA25034B_impl*
end;//Tm3CustomDB.RenameMain

procedure Tm3CustomDB.RenameVersion(const aNewName: AnsiString);
//#UC START# *4FBB76F50376_4742CA25034B_var*
//#UC END# *4FBB76F50376_4742CA25034B_var*
begin
//#UC START# *4FBB76F50376_4742CA25034B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FBB76F50376_4742CA25034B_impl*
end;//Tm3CustomDB.RenameVersion

procedure Tm3CustomDB.Rename(const aNewName: AnsiString);
//#UC START# *4FBB827801E4_4742CA25034B_var*
//#UC END# *4FBB827801E4_4742CA25034B_var*
begin
//#UC START# *4FBB827801E4_4742CA25034B_impl*
 !!! Needs to be implemented !!!
//#UC END# *4FBB827801E4_4742CA25034B_impl*
end;//Tm3CustomDB.Rename
// start class Tm3DB

function Tm3DB.MainStorage(aMode: Tm3StoreAccess = m3_saRead): Im3IndexedStorage;
//#UC START# *49BFD4CE0235_4742CA9702AE_var*
//#UC END# *49BFD4CE0235_4742CA9702AE_var*
begin
//#UC START# *49BFD4CE0235_4742CA9702AE_impl*
 !!! Needs to be implemented !!!
//#UC END# *49BFD4CE0235_4742CA9702AE_impl*
end;//Tm3DB.MainStorage

function Tm3DB.GetVersionsStorage(aMode: Tm3StoreAccess = m3_saRead): Im3IndexedStorage;
//#UC START# *49BFD4F3013E_4742CA9702AE_var*
//#UC END# *49BFD4F3013E_4742CA9702AE_var*
begin
//#UC START# *49BFD4F3013E_4742CA9702AE_impl*
 !!! Needs to be implemented !!!
//#UC END# *49BFD4F3013E_4742CA9702AE_impl*
end;//Tm3DB.GetVersionsStorage

function Tm3DB.GetBackupStorage(aMode: Tm3StoreAccess = m3_saRead): Im3IndexedStorage;
//#UC START# *49BFD52D0076_4742CA9702AE_var*
//#UC END# *49BFD52D0076_4742CA9702AE_var*
begin
//#UC START# *49BFD52D0076_4742CA9702AE_impl*
 !!! Needs to be implemented !!!
//#UC END# *49BFD52D0076_4742CA9702AE_impl*
end;//Tm3DB.GetBackupStorage

procedure Tm3DB.Start(aOpenMode: Tm3StoreAccess);
//#UC START# *49C2496903D4_4742CA9702AE_var*
//#UC END# *49C2496903D4_4742CA9702AE_var*
begin
//#UC START# *49C2496903D4_4742CA9702AE_impl*
 !!! Needs to be implemented !!!
//#UC END# *49C2496903D4_4742CA9702AE_impl*
end;//Tm3DB.Start

procedure Tm3DB.Finish;
//#UC START# *49C249810227_4742CA9702AE_var*
//#UC END# *49C249810227_4742CA9702AE_var*
begin
//#UC START# *49C249810227_4742CA9702AE_impl*
 !!! Needs to be implemented !!!
//#UC END# *49C249810227_4742CA9702AE_impl*
end;//Tm3DB.Finish

procedure Tm3DB.StartEx(aVersionsMode: Tm3StoreAccess;
  aConstMode: Tm3StoreAccess);
//#UC START# *49C75F73038A_4742CA9702AE_var*
//#UC END# *49C75F73038A_4742CA9702AE_var*
begin
//#UC START# *49C75F73038A_4742CA9702AE_impl*
 !!! Needs to be implemented !!!
//#UC END# *49C75F73038A_4742CA9702AE_impl*
end;//Tm3DB.StartEx

procedure Tm3DB.CloseBase;
//#UC START# *49C75F8C02B9_4742CA9702AE_var*
//#UC END# *49C75F8C02B9_4742CA9702AE_var*
begin
//#UC START# *49C75F8C02B9_4742CA9702AE_impl*
 !!! Needs to be implemented !!!
//#UC END# *49C75F8C02B9_4742CA9702AE_impl*
end;//Tm3DB.CloseBase

end.