unit F1DocumentAPIPrototype;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "SandBox"
// �����: ����� �.�.
// ������: "F1DocumentAPIPrototype.pas"
// �����: 29.07.2010 16:26
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: Interfaces::Category F1 ������� ����������� ���������� �������::LegalDomain::SandBox::F1DocumentAPIPrototype
//
// {RequestLink:228693062}
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  IOUnit
  ;

type
 TnsLayerID = record
  {* ������������� ������������ ���������. ���������� ��� ������� �� ������ ����� �������� ���������. ���� ��� ����, ���� ������ �������� }
 end;//TnsLayerID

 TnsChildID = record
  {* ������������� ���������� ���������. ���������� ��� ������� �� ������ ����� �������� ���������. ������ ����� ������ long - �.�. ���������� ����� ������. �������� � ��������������� "�������" �� ����������� ������ ����� ����� ������ �������� }
 end;//TnsChildID

 TnsExternalID = Integer;
  {* ���������� ������������� �������� ��������� }

 TnsBoormark = record
  {* �������� }
 end;//TnsBoormark

 TnsBookmarks = array of TnsBoormark;
  {* ������ �������� }

 TnsEVDStream = IOUnit.IStream;
  {* ����� � EVD }

 InsContentsTreeNode = interface(IUnknown)
  {* ���� ������ ���������� }
   ['{107BDB51-3B1E-40EF-B5AE-8D0CA2485C15}']
 end;//InsContentsTreeNode

 TnsEntryPoint = record
  {* ����� ����� � �������� }
   rLayer : TnsLayerID; // �������
   rChild : TnsChildID; // ������ �� ������
 end;//TnsEntryPoint

 TnsFoundContextEntry = record
  {* ��������� ��������� �������� }
   rPara : TnsEntryPoint; // �������� � ������� ������ ��������
   rStart : Integer; // ��������� �������
   rFinish : Integer; // �������� �������
 end;//TnsFoundContextEntry

 TnsFoundContexts = array of TnsFoundContextEntry;
  {* ��� ��������� ��������� }

 TnsEVDType = Byte;
  {* ��� �������� � �������� EVD }

 InsContentsTree = interface(IUnknown)
  {* ������ ���������� }
   ['{AA4AA042-3610-48CD-84EC-E68DB2CC9868}']
   function Get_RootNode: InsContentsTreeNode;
   function FindContentsNode(anID: TnsExternalID;
    aType: TnsEVDType;
    anInheritable: Boolean): InsContentsTreeNode;
     {* ������� � �������� ����� �� ������������ ������������� ID �����/���� ��� ���������, � ����� ����� �� ���. ������ ����� �� ���� (EVD-���, ID) }
   property RootNode: InsContentsTreeNode
     read Get_RootNode;
     {* �������� ���� }
 end;//InsContentsTree

 InsDocumentTextProvider = interface(IUnknown)
  {* ����� ��� ������� � ������ ��������� }
   ['{0EF6063A-18E7-41D9-AE0A-C5B83CEAE2A5}']
   function Get_Contents: InsContentsTree;
   function Get_ChildComment(const anID: TnsEntryPoint): TnsEVDStream;
   procedure Set_ChildComment(const anID: TnsEntryPoint; const aValue: TnsEVDStream);
   function Get_ChildBookMarks(const anID: TnsEntryPoint): TnsBookmarks;
   procedure Set_ChildBookMarks(const anID: TnsEntryPoint; const aValue: TnsBookmarks);
   function Get_ChildText(const anID: TnsEntryPoint): IString;
   procedure Set_ChildText(const anID: TnsEntryPoint; const aValue: IString);
   function Get_ChildType(const anID: TnsEntryPoint): TnsEVDType;
   function Get_ChildID(const anID: TnsEntryPoint): TnsExternalID;
   function Get_ChildEVDStyle(const anID: TnsEntryPoint): TnsEVDStream;
   function Get_ChildData(const anID: TnsEntryPoint): IStream;
   function Get_LayerID(const anID: TnsEntryPoint): TnsLayerID;
   function AllLeafParaCount(const aLayerID: TnsLayerID): Integer;
     {* ����� ����� "�����" ��������� � ������� (��� ���������). ����� ������ ������������ ���������.

�.�. ��� ����� ��������� � ���������� �� ����� ���������������� ������. ��� AllChildrenCount }
   function ChildrenCount(const aLayerID: TnsLayerID): Integer;
     {* ���������� ����� �� ������ ������ }
   function FindBlockOrSub(anID: TnsExternalID): TnsEntryPoint;
     {* ����� �����/���� �� ������ }
   function FindPara(anID: TnsExternalID): TnsEntryPoint;
     {* ����� �������� �� �������� (�����������) ID }
   function FindContext(const aContext: IString): TnsFoundContexts;
     {* ����� ���������. ������ �� ��� ����� �������� ������ � ������ }
   property Contents: InsContentsTree
     read Get_Contents;
     {* ��������� ������ ����������. ������� � �������� ����� �� ������������ ������������� ID �����/���� ��� ���������, � ����� ����� �� ���. ������ ����� �� ���� (EVD-���, ID) }
   property ChildComment[const anID: TnsEntryPoint]: TnsEVDStream
     read Get_ChildComment
     write Set_ChildComment;
     {* ����������� �� ID ��������� (��������������). � ���� EVD. ������ � ��� �� ����� ����, � ����� �������� ��� �� ���� � ��������. ��� ������ "������" � ��� ���� ����� �� ������ ��������� }
   property ChildBookMarks[const anID: TnsEntryPoint]: TnsBookmarks
     read Get_ChildBookMarks
     write Set_ChildBookMarks;
     {* ������ �������� �� ID ��������� (��������������). ��� ������ "������" � ��� ���� ����� �� ������ ���������. � ��-����� � ������ �������� "�����" }
   property ChildText[const anID: TnsEntryPoint]: IString
     read Get_ChildText
     write Set_ChildText;
     {* ����� (���) }
   property ChildType[const anID: TnsEntryPoint]: TnsEVDType
     read Get_ChildType;
     {* ��� ������ � �������� evd }
   property ChildID[const anID: TnsEntryPoint]: TnsExternalID
     read Get_ChildID;
     {* ������������� }
   property ChildEVDStyle[const anID: TnsEntryPoint]: TnsEVDStream
     read Get_ChildEVDStyle;
     {* evd-����� (������� ������ ����� ���� � ���� ���� � ��������) }
   property ChildData[const anID: TnsEntryPoint]: IStream
     read Get_ChildData;
     {* data (��� ��������) }
   property LayerID[const anID: TnsEntryPoint]: TnsLayerID
     read Get_LayerID;
     {* ������������� ������ ��� ������ (������������) }
 end;//InsDocumentTextProvider

 InsListForFiltering = interface(IUnknown)
   ['{926A12FE-12A4-47CE-A44C-950106B1258B}']
   function Get_Count: Integer;
   function Get_Items(anIndex: Integer): IString;
   property Count: Integer
     read Get_Count;
   property Items[anIndex: Integer]: IString
     read Get_Items;
 end;//InsListForFiltering

 TnsFiltered = array of Integer;

 InsListFiltrator = interface(IUnknown)
   ['{648F2FC3-3809-4C67-918B-185CC98A24F7}']
   function Filtrate(const aList: InsListForFiltering;
    const aContext: IString): TnsFiltered;
 end;//InsListFiltrator

implementation

end.