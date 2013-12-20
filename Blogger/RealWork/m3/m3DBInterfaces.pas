unit m3DBInterfaces;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "m3"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/m3/m3DBInterfaces.pas"
// �����: 18.08.2004 19:37
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Interfaces::Category>> Shared Delphi::m3::m3DBInterfaces
//
// ���������� ��� ������ � ���������� ���������� �����������.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\m3\m3Define.inc}

interface

uses
  k2Interfaces,
  l3Types,
  ActiveX,
  m3Interfaces,
  m3StorageInterfaces,
  l3Filer,
  k2Prim
  ;

type
 Im3Base = m3Interfaces.Im3Base;

 Tm3DocPartSelector = (
  {* ��������� ����� ���������. }
   m3_dsMain // �������� �����
 , m3_dsAnno // ���������
 , m3_dsInfo // ���������� � ���������
 , m3_dsObject // ������ � ���������
 );//Tm3DocPartSelector

 Tm3DocPartSet = set of Tm3DocPartSelector;
  {* ��������� ������� ���������. }

const
  { m3DBConsts }
 m3_defDocPart = m3_dsMain;
  { �������� ����� ��������� �� ���������. }
 m3_AllDocParts = [Low(Tm3DocPartSelector)..High(Tm3DocPartSelector)];
  {* ��� ������ ���������. }

type
 Tm3DBDocumentInfo = record
  {* ���������� � ���������. }
   rIndexID : Integer;
   rRelID : Integer; // ID �������
   rRightsMask : Cardinal; // ����� ����
   rLockedBy : Integer; // ������������, ������� ������ ��������
 end;//Tm3DBDocumentInfo

 Tm3DBStreamIndex = {$IfDef XE4}record{$Else}object{$EndIf}
  {* ������������� ������ ���������. }
 public
   rID : Integer; // ����� ���������
   rPart : Tm3DocPartSelector; // ����� ������
   rIdx : Integer; // ������ (��� ��������)
 end;//Tm3DBStreamIndex

 Tm3FilerAction = function (aFiler: Tl3CustomFiler;
  const anIndex: Tm3DBStreamIndex): Boolean;

 Im3TagGenerator = k2Prim.Ik2TagGenerator;

 Tm3DBCopyMode = (
   m3_cmRewrite
 , m3_cmRewriteEmpty
 , m3_cmNotRewrite
 );//Tm3DBCopyMode

 Im3DBDocumentPart = interface;
 { - ��������������� �������� Im3DBDocumentPart. }

 Tm3DocumentAction = function (const aDoc: Im3DBDocumentPart;
  const anIndex: Tm3DBStreamIndex): Boolean;

 Im3DB = interface;
 { - ��������������� �������� Im3DB. }

 Im3DBObject = interface(Im3Base)
  {* ������ ���������� � ���������� ���������� �����������. }
   ['{65B3326A-1D5A-4A83-82A8-F7219E24D20A}']
   function DB: Im3DB;
 end;//Im3DBObject

 Im3DBDocument = interface;
 { - ��������������� �������� Im3DBDocument. }

 Im3DBRange = interface;
 { - ��������������� �������� Im3DBRange. }

 Im3DB = interface(Im3Base)
  {* ��������� ���������� �����������. }
   ['{F5ED42F7-F6F8-4BD9-9C9D-224FF5108543}']
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
   function FilesInList(const aList: Im3StorageElementIDList): Im3DBRange;
     {* ����� � ���������������� �� ������ }
 end;//Im3DB

 Tm3DBStreamAction = function (const aStream: IStream;
  const anIndex: Tm3DBStreamIndex): Boolean;

 Im3DBDocumentPart = interface(Im3DBObject)
  {* ����� ��������� (�������� ��� ����������). }
   ['{2163930B-CFA8-4339-8C2F-08A61E38F926}']
   function pm_GetDocument: Im3DBDocument;
   function pm_GetInfo: Tm3DBDocumentInfo;
   procedure pm_SetInfo(const aValue: Tm3DBDocumentInfo);
   function Open(aMode: Tm3StoreAccess = m3_saRead;
    aDocPart: Tm3DocPartSelector = m3_defDocPart;
    aIndex: Integer = 0): IStream;
     {* ��������� ����� � ���������. }
   property Document: Im3DBDocument
     read pm_GetDocument;
     {* ��������, � �������� ����� ���������. }
   property Info: Tm3DBDocumentInfo
     read pm_GetInfo
     write pm_SetInfo;
     {* ���������� � ���������. }
 end;//Im3DBDocumentPart

 Im3DBDocument = interface(Im3DBObject)
  {* ��������. }
   ['{5865E540-A505-44CB-95E5-7381A86A6E65}']
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
   property ID: Integer
     read pm_GetID;
     {* ������������� ���������. }
 end;//Im3DBDocument

 Im3DBRange = interface(Im3DBObject)
  {* ������� ����������. }
   ['{D40F6781-A93B-494A-AD5A-B6C46CA1E95E}']
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
 end;//Im3DBRange

 Tm3DBIndexAction = function (const anIndex: Tm3DBStreamIndex): Boolean;
   {* ��������������� ������� ��� �������� �������. }

 Tm3DBPart = (
  {* ����� ���� }
   m3_bpConst // ����������
 , m3_bpVersion // ����������
 , m3_bpBackup // ��������� �����
 );//Tm3DBPart

 Tm3DBStreamIndexEx = {$IfDef XE4}record{$Else}object(Tm3DBStreamIndex){$EndIf}
  {* ������������� ������ � ��������� ����� }
 {$IfDef XE4}
 public
  rTm3DBStreamIndex : Tm3DBStreamIndex;
 {$EndIf XE4}
 public
   rDBPart : Tm3DBPart; // ����� ����
   rVersion : Integer; // ����� ������
 end;//Tm3DBStreamIndexEx


function Tm3DBDocumentInfo_C(aIndexID: Integer): Tm3DBDocumentInfo;

function Tm3DBStreamIndex_C(anID: Integer;
    aPart: Tm3DocPartSelector = m3_dsMain;
    anIndex: Integer = 0): Tm3DBStreamIndex;
  {* ������ ������������� }

function Tm3DBStreamIndexEx_C(const anID: Tm3DBStreamIndex;
    aPart: Tm3DBPart): Tm3DBStreamIndexEx;
function Tm3DBStreamIndexEx_CV(const anID: Tm3DBStreamIndex;
    aPart: Tm3DBPart;
    aVersion: Integer): Tm3DBStreamIndexEx;

implementation

function Tm3DBDocumentInfo_C(aIndexID: Integer): Tm3DBDocumentInfo;
//#UC START# *49C28081033C_4725D0080104_var*
//#UC END# *49C28081033C_4725D0080104_var*
begin
 System.FillChar(Result, SizeOf(Result), 0);
//#UC START# *49C28081033C_4725D0080104_impl*
 Result.rIndexID := aIndexID;
//#UC END# *49C28081033C_4725D0080104_impl*
end;//Tm3DBDocumentInfo.C


function Tm3DBStreamIndex_C(anID: Integer;
      aPart: Tm3DocPartSelector = m3_dsMain;
      anIndex: Integer = 0): Tm3DBStreamIndex;
  {* ������ ������������� }
//#UC START# *49BFC737039A_4725D1E4005E_var*
//#UC END# *49BFC737039A_4725D1E4005E_var*
begin
 System.FillChar(Result, SizeOf(Result), 0);
//#UC START# *49BFC737039A_4725D1E4005E_impl*
 Result.rID := anID;
 Result.rPart := aPart;
 Result.rIdx := anIndex;
//#UC END# *49BFC737039A_4725D1E4005E_impl*
end;//Tm3DBStreamIndex.C


function Tm3DBStreamIndexEx_C(const anID: Tm3DBStreamIndex;
      aPart: Tm3DBPart): Tm3DBStreamIndexEx;
//#UC START# *49BFD0280183_49BFCF61009F_var*
//#UC END# *49BFD0280183_49BFCF61009F_var*
begin
 System.FillChar(Result, SizeOf(Result), 0);
//#UC START# *49BFD0280183_49BFCF61009F_impl*
 Result{$IfDef XE4}.rTm3DBStreamIndex{$EndIf}.rID := anID.rID;
 Result{$IfDef XE4}.rTm3DBStreamIndex{$EndIf}.rPart := anID.rPart;
 Result{$IfDef XE4}.rTm3DBStreamIndex{$EndIf}.rIdx := anID.rIdx;
 Result.rDBPart := aPart;
 Result.rVersion := High(Result.rVersion);
//#UC END# *49BFD0280183_49BFCF61009F_impl*
end;//Tm3DBStreamIndexEx.C


function Tm3DBStreamIndexEx_CV(const anID: Tm3DBStreamIndex;
      aPart: Tm3DBPart;
      aVersion: Integer): Tm3DBStreamIndexEx;
//#UC START# *49BFDB980033_49BFCF61009F_var*
//#UC END# *49BFDB980033_49BFCF61009F_var*
begin
 System.FillChar(Result, SizeOf(Result), 0);
//#UC START# *49BFDB980033_49BFCF61009F_impl*
 Result := Tm3DBStreamIndexEx_C(anID, aPart);
 Result.rVersion := aVersion;
//#UC END# *49BFDB980033_49BFCF61009F_impl*
end;//Tm3DBStreamIndexEx.CV

end.