unit F1DocumentAPIPrototype;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "SandBox"
// Автор: Люлин А.В.
// Модуль: "F1DocumentAPIPrototype.pas"
// Начат: 29.07.2010 16:26
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: Interfaces::Category F1 Базовые определения предметной области::LegalDomain::SandBox::F1DocumentAPIPrototype
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
  {* Идентификатор нелистьевого параграфа. Конкретный вид зависит от выбора схемы хранения документа. Либо это путь, либо просто смещение }
 end;//TnsLayerID

 TnsChildID = record
  {* Идентификатор листьевого параграфа. Конкретный вид зависит от выбора схемы хранения документа. Скорее всего просто long - т.е. порядковый номер ребёнка. Проблемы с дополнительными "дырками" от комментарие скорее всего может решить оболочка }
 end;//TnsChildID

 TnsExternalID = Integer;
  {* Уникальный идентификатор элемента документа }

 TnsBoormark = record
  {* Закладка }
 end;//TnsBoormark

 TnsBookmarks = array of TnsBoormark;
  {* Список закладок }

 TnsEVDStream = IOUnit.IStream;
  {* Поток с EVD }

 InsContentsTreeNode = interface(IUnknown)
  {* Узел дерева оглавления }
   ['{107BDB51-3B1E-40EF-B5AE-8D0CA2485C15}']
 end;//InsContentsTreeNode

 TnsEntryPoint = record
  {* Точка входа в документ }
   rLayer : TnsLayerID; // Уровень
   rChild : TnsChildID; // Ребёнок на уровне
 end;//TnsEntryPoint

 TnsFoundContextEntry = record
  {* Единичный найденный контекст }
   rPara : TnsEntryPoint; // Параграф в котором найден контекст
   rStart : Integer; // Начальная позиция
   rFinish : Integer; // Конечная позиция
 end;//TnsFoundContextEntry

 TnsFoundContexts = array of TnsFoundContextEntry;
  {* Все найденные вхождения }

 TnsEVDType = Byte;
  {* Тип элемента в терминах EVD }

 InsContentsTree = interface(IUnknown)
  {* Дерево оглавления }
   ['{AA4AA042-3610-48CD-84EC-E68DB2CC9868}']
   function Get_RootNode: InsContentsTreeNode;
   function FindContentsNode(anID: TnsExternalID;
    aType: TnsEVDType;
    anInheritable: Boolean): InsContentsTreeNode;
     {* Которое в качестве одной из возможностей предоставляло ID блока/саба или параграфа, а также поиск по ним. Точнее поиск по паре (EVD-тип, ID) }
   property RootNode: InsContentsTreeNode
     read Get_RootNode;
     {* Корневой узел }
 end;//InsContentsTree

 InsDocumentTextProvider = interface(IUnknown)
  {* Ручка для доступа к тексту документа }
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
     {* Общее число "детей" вытянутых в линейку (для скроллера). Можно вообще компилятором посчитать.

М.б. эта ручка избыточна и вычитывать из стиля соответствующего уровня. Тег AllChildrenCount }
   function ChildrenCount(const aLayerID: TnsLayerID): Integer;
     {* Количество детей на каждом уровне }
   function FindBlockOrSub(anID: TnsExternalID): TnsEntryPoint;
     {* Поиск блока/саба по номеру }
   function FindPara(anID: TnsExternalID): TnsEntryPoint;
     {* Найти параграф по внешнему (уникальному) ID }
   function FindContext(const aContext: IString): TnsFoundContexts;
     {* Поиск контекста. Сейчас он идёт через механизм поиска в дереве }
   property Contents: InsContentsTree
     read Get_Contents;
     {* ОТДЕЛЬНОЕ дерево оглавления. Которое в качестве одной из возможностей предоставляло ID блока/саба или параграфа, а также поиск по ним. Точнее поиск по паре (EVD-тип, ID) }
   property ChildComment[const anID: TnsEntryPoint]: TnsEVDStream
     read Get_ChildComment
     write Set_ChildComment;
     {* Комментарий по ID параграфа (модифицируемый). В виде EVD. Точнее в том же самом виде, в каком оболочка его же сама и записала. Они кстати "раньше" и так были сбоку от дерева документа }
   property ChildBookMarks[const anID: TnsEntryPoint]: TnsBookmarks
     read Get_ChildBookMarks
     write Set_ChildBookMarks;
     {* Список закладок по ID параграфа (модифицируемый). Они кстати "раньше" и так были сбоку от дерева документа. И по-моему и сейчас остались "сбоку" }
   property ChildText[const anID: TnsEntryPoint]: IString
     read Get_ChildText
     write Set_ChildText;
     {* текст (имя) }
   property ChildType[const anID: TnsEntryPoint]: TnsEVDType
     read Get_ChildType;
     {* Тип ребёнка в терминах evd }
   property ChildID[const anID: TnsEntryPoint]: TnsExternalID
     read Get_ChildID;
     {* идентификатор }
   property ChildEVDStyle[const anID: TnsEntryPoint]: TnsEVDStream
     read Get_ChildEVDStyle;
     {* evd-стиль (который сейчас лежит либо в базе либо в индексах) }
   property ChildData[const anID: TnsEntryPoint]: IStream
     read Get_ChildData;
     {* data (для картинок) }
   property LayerID[const anID: TnsEntryPoint]: TnsLayerID
     read Get_LayerID;
     {* Идентификатор уровня для ребёнка (нелистьевого) }
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