unit NOT_FINISHED_l3Nodes;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "L3"
// Автор: Бабанин В.Б.
// Модуль: "w:/common/components/rtl/Garant/L3/NOT_FINISHED_l3Nodes.pas"
// Начат: 24.06.1999
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi Low Level::L3::l3Trees::l3Nodes
//
// Рализации различных узлов дерева.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include ..\L3\l3Define.inc}

interface

uses
  l3Interfaces,
  l3TreeInterfaces,
  l3Tree_TLB,
  l3CustomString
  ;

type
 Tl3PrimNode = class(Tl3CustomString, Il3SimpleNode, Il3SimpleRootNode)
 protected
 // realized methods
   function IsFirst: Boolean;
     {* это первый узел внутри родителя? }
   function IsLast: Boolean;
     {* это последний узел внутри родителя? }
   function HasChild: Boolean;
     {* есть ли дочерние узлы? }
   function MaybeChild: Boolean;
     {* может ли иметь дочерние узлы? }
   function GetLevel: Integer;
   function GetLevelFor(const aNode: Il3SimpleNode): Integer;
   function IsSame(const aNode: Il3SimpleNode): Boolean;
     {* сравнивает ноды. }
   function IsDisappeared: Boolean;
     {* True если интерфейс на удаленную ноду,
             применяется в виртуальных нодах - указателях на данные. }
   procedure BeginMove(var aUserParam: Pointer);
     {* начать перемещение узла. }
   procedure EndMove(aUserParam: Pointer);
     {* закончить перемещение узла. }
   procedure Delete;
     {* удалить узел из дерева, а его данные с постоянного носителя (например из БД) или связанные объекты. }
   function Get_Text: Tl3PCharLenPrim;
   function Get_Parent: Il3SimpleNode;
   function Get_Child: Il3SimpleNode;
   function Get_Next: Il3SimpleNode;
   function Get_Flag(anIndex: Integer): Boolean;
   procedure Set_Flag(anIndex: Integer; aValue: Boolean);
   function Get_Flags: Integer;
   function Get_ThisChildrenCount: Integer;
   function pm_GetIndexInParent: Integer;
   function CanExpandCollapseAll: Boolean;
   procedure ExpandCollapseAll(anExpand: Boolean);
   function CanAcceptData(const aData: Tl3TreeData): Boolean;
     {* может ли узел принять данные }
   function DropData(const aData: Tl3TreeData): Boolean;
     {* принять данные }
   function CanMove: Boolean;
     {* определяет возможность перемещения узла }
   function Get_Prev: Il3SimpleNode;
 protected
 // protected methods
   function IsSame(const aNode: Il3SimpleNode): Boolean; virtual;
   function GetLevelForParent(const aNode: Il3SimpleNode): Integer; virtual; abstract;
   function Get_AllChildrenCount: Integer; virtual; abstract;
   function Get_ChildNode: Il3Node; virtual;
   function GetLevel: Integer; virtual;
   function Get_ParentNode: Il3Node; virtual; abstract;
   function Get_NextNode: Il3Node; virtual; abstract;
   function Get_PrevNode: Il3Node; virtual; abstract;
   function GetThisChildrenCount: Integer; virtual; abstract;
   function IsLastNode: Boolean; virtual; abstract;
   function IsFirstNode: Boolean; virtual; abstract;
   function HasChildNode: Boolean; virtual; abstract;
   procedure DoRemove; virtual; abstract;
 end;//Tl3PrimNode

 Tl3CustomNode = class(Tl3PrimNode, Il3Node)
 protected
 // realized methods
   function InsertChild(const aNode: Il3Node): Il3Node;
   function InsertChildBefore(const aNextChild: Il3Node;
    const aNode: Il3Node): Il3Node;
   function IsAcceptChild(const aChild: Il3Node): Boolean;
   function GetChildByNumber(aNum: Integer): Il3Node;
     {* получить дочерний узел по номеру. }
   function GetNodeByNumber(aNum: Integer): Il3Node;
     {* получить узел по номеру. 0 = Self, остальные дочерние, }
   function GetNumInParent(aOnlyOneLevel: Boolean = false): Integer;
     {* получить порядковый номер узла в родительском узле.
          aOnlyOneLevel - считаем только непосредственных "детей",
          без учета вложенных }
   procedure Changing;
     {* начать изменение узла. }
   procedure Changed;
     {* закончить изменение узла. }
   procedure Notify(aOperation: Integer;
    const aNode: Il3Node);
     {* нотификация об операции над узлом. anOperation см. ntNone etc. }
   procedure IncAllChildrenCount(aInc: Integer);
   procedure Remove;
     {* удалить узел из дерева. }
   function Move(aDirection: Tl3Direction): Boolean;
     {* переместить узел. }
   function Iterate(Action: Tl3NodeAction;
    IterMode: Integer = 0;
    const aFromNode: Il3Node = nil): Il3Node;
     {* перебрать все дочерние узлы. IterMode см. imExpandOnly etc. }
   function IterateF(Action: Tl3NodeAction;
    IterMode: Integer = 0;
    const aFromNode: Il3Node = nil): Il3Node;
     {* перебрать все дочерние узлы и освободить заглушку для Action. }
   procedure ReleaseChilds;
     {* освободить дочерние узлы. }
   function CompareChild(const aChildrenNode1: Il3Node;
    const aChildrenNode2: Il3Node): Integer;
     {* сравнивает aChildrenNode1 и aChildrenNode2 (обычно Text), используется при сортировке ветки дерева. }
   procedure SortChilds(const aChild: Il3Node = nil);
     {* пересортировывает aChild относительно других Nodes на том же уровне,
         обычно в случае изменения Text,
          если aChild = nil пересортировывает всю ветку (один уровень). }
   procedure Sort;
     {* пересортировывает себя относительно других Nodes на том же уровне. }
   function Get_Text: Tl3PCharLenPrim;
   procedure Set_Text(const aValue: Tl3PCharLenPrim);
   function Get_AllChildrenCount: Integer;
   function Get_ChildSorted: Boolean;
   procedure Set_ChildSorted(aValue: Boolean);
   function Get_ChildSortedFromParent: Boolean;
   procedure Set_ChildSortedFromParent(aValue: Boolean);
   function Get_Flags: Integer;
   procedure Set_Flags(aValue: Integer);
   function Get_NextNode: Il3Node;
   function Get_PrevNode: Il3Node;
   function Get_ParentNode: Il3Node;
   function Get_ChildNode: Il3Node;
   function GetLevelForParent(const aNode: Il3SimpleNode): Integer; override;
   function Get_AllChildrenCount: Integer; override;
   function Get_ParentNode: Il3Node; override;
   function Get_NextNode: Il3Node; override;
   function Get_PrevNode: Il3Node; override;
   function GetThisChildrenCount: Integer; override;
   function IsLastNode: Boolean; override;
   function IsFirstNode: Boolean; override;
   function HasChildNode: Boolean; override;
   procedure DoRemove; override;
 protected
 // protected methods
   function DoCompareChild(const aChildNode1: Il3Node;
     const aChildNode2: Il3Node): Integer; virtual;
   function GetNumInParent(aOnlyOneLevel: Boolean = false): Integer; virtual;
   procedure IncAllChildrenCount(aInc: Integer); virtual; abstract;
   procedure SortChilds(const aChild: Il3Node = nil); virtual;
   procedure ReleaseChilds; virtual; abstract;
   function IterateChild(Action: Tl3NodeAction;
    IterMode: Integer;
    const aFromNode: Il3Node = nil): Il3Node; virtual; abstract;
 end;//Tl3CustomNode

 Tl3CustomUsualNode = class(Tl3CustomNode, Il3ChangeNotifier, Il3RootNode)
 protected
 // realized methods
   procedure Subscribe(const aRecipient: Il3Notify);
     {* подписка на извещения. }
   procedure Unsubscribe(const aRecipient: Il3Notify);
     {* "отписка" от извещений. }
   procedure IncAllChildrenCount(aInc: Integer); override;
   procedure ReleaseChilds; override;
   function IterateChild(Action: Tl3NodeAction;
    IterMode: Integer;
    const aFromNode: Il3Node = nil): Il3Node; override;
 protected
 // Методы преобразования к реализуемым интерфейсам
   function As_Il3ChangeNotifier: Il3ChangeNotifier;
 end;//Tl3CustomUsualNode

 Tl3PlaceNode = class(Tl3CustomUsualNode)
 end;//Tl3PlaceNode

 Tl3HandleNode = class(Tl3PlaceNode, Il3HandleNode)
 protected
 // realized methods
   function Get_Handle: Integer;
   procedure Set_Handle(aValue: Integer);
 end;//Tl3HandleNode

 Tl3UsualNode = class(Tl3HandleNode)
 end;//Tl3UsualNode

 Tl3CacheableNode = class(Tl3PlaceNode)
 end;//Tl3CacheableNode

 Tl3CustomListContainerNode = class(Tl3UsualNode, Il3ChangeRecipient, Il3ItemNotifyRecipient)
 protected
 // realized methods
   procedure Notify(const aNotifier: Il3ChangeNotifier;
    aOperation: Integer;
    aIndex: Integer);
     {* прошла операция. }
   procedure Changing;
     {* началось изменение. }
   procedure Changed;
     {* закончилось изменение. }
 end;//Tl3CustomListContainerNode

 Tl3ListContainerNode = class(Tl3CustomListContainerNode)
 end;//Tl3ListContainerNode

 Tl3DataListContainerNode = class(Tl3CustomListContainerNode)
 end;//Tl3DataListContainerNode

 Tl3IListContainerNode = class(Tl3CustomListContainerNode)
 end;//Tl3IListContainerNode

 Tl3ListItemNode = class(Tl3CustomNode, Il3HandleNode, Il3NodeNotifyRecipient)
 protected
 // realized methods
   function Get_Handle: Integer;
   procedure Set_Handle(aValue: Integer);
   procedure Notify(aOperation: Integer;
    const aNode: Il3SimpleNode);
     {* прошла операция. }
   procedure IncAllChildrenCount(aInc: Integer); override;
   procedure ReleaseChilds; override;
   function IterateChild(Action: Tl3NodeAction;
    IterMode: Integer;
    const aFromNode: Il3Node = nil): Il3Node; override;
 end;//Tl3ListItemNode

 Tl3StrListItemNode = class(Tl3ListItemNode)
 end;//Tl3StrListItemNode

 Tl3DataListItemNode = class(Tl3ListItemNode)
 end;//Tl3DataListItemNode

 Tl3RootNode = Tl3UsualNode;

function MakeNode(const aNodeName: AnsiString): Il3Node;
procedure L3L2NA;
   {* Сигнатура метода l3L2NA }
procedure L3SearchByName;
   {* Сигнатура метода l3SearchByName }
procedure L3L2SNA;
   {* Сигнатура метода l3L2SNA }

implementation

// start class Tl3PrimNode

function Tl3PrimNode.IsSame(const aNode: Il3SimpleNode): Boolean;
//#UC START# *4ADEE0F60264_4ADDDFE60236_var*
//#UC END# *4ADEE0F60264_4ADDDFE60236_var*
begin
//#UC START# *4ADEE0F60264_4ADDDFE60236_impl*
 !!! Needs to be implemented !!!
//#UC END# *4ADEE0F60264_4ADDDFE60236_impl*
end;//Tl3PrimNode.IsSame

function Tl3PrimNode.Get_ChildNode: Il3Node;
//#UC START# *4ADEF5410241_4ADDDFE60236_var*
//#UC END# *4ADEF5410241_4ADDDFE60236_var*
begin
//#UC START# *4ADEF5410241_4ADDDFE60236_impl*
 !!! Needs to be implemented !!!
//#UC END# *4ADEF5410241_4ADDDFE60236_impl*
end;//Tl3PrimNode.Get_ChildNode

function Tl3PrimNode.GetLevel: Integer;
//#UC START# *4ADF00F4023A_4ADDDFE60236_var*
//#UC END# *4ADF00F4023A_4ADDDFE60236_var*
begin
//#UC START# *4ADF00F4023A_4ADDDFE60236_impl*
 !!! Needs to be implemented !!!
//#UC END# *4ADF00F4023A_4ADDDFE60236_impl*
end;//Tl3PrimNode.GetLevel

function Tl3PrimNode.IsFirst: Boolean;
//#UC START# *47723CDB00A4_4ADDDFE60236_var*
//#UC END# *47723CDB00A4_4ADDDFE60236_var*
begin
//#UC START# *47723CDB00A4_4ADDDFE60236_impl*
 !!! Needs to be implemented !!!
//#UC END# *47723CDB00A4_4ADDDFE60236_impl*
end;//Tl3PrimNode.IsFirst

function Tl3PrimNode.IsLast: Boolean;
//#UC START# *47723CFF0148_4ADDDFE60236_var*
//#UC END# *47723CFF0148_4ADDDFE60236_var*
begin
//#UC START# *47723CFF0148_4ADDDFE60236_impl*
 !!! Needs to be implemented !!!
//#UC END# *47723CFF0148_4ADDDFE60236_impl*
end;//Tl3PrimNode.IsLast

function Tl3PrimNode.HasChild: Boolean;
//#UC START# *47723D0F0392_4ADDDFE60236_var*
//#UC END# *47723D0F0392_4ADDDFE60236_var*
begin
//#UC START# *47723D0F0392_4ADDDFE60236_impl*
 !!! Needs to be implemented !!!
//#UC END# *47723D0F0392_4ADDDFE60236_impl*
end;//Tl3PrimNode.HasChild

function Tl3PrimNode.MaybeChild: Boolean;
//#UC START# *47723D1D03D6_4ADDDFE60236_var*
//#UC END# *47723D1D03D6_4ADDDFE60236_var*
begin
//#UC START# *47723D1D03D6_4ADDDFE60236_impl*
 !!! Needs to be implemented !!!
//#UC END# *47723D1D03D6_4ADDDFE60236_impl*
end;//Tl3PrimNode.MaybeChild

function Tl3PrimNode.GetLevel: Integer;
//#UC START# *47723D2E0051_4ADDDFE60236_var*
//#UC END# *47723D2E0051_4ADDDFE60236_var*
begin
//#UC START# *47723D2E0051_4ADDDFE60236_impl*
 !!! Needs to be implemented !!!
//#UC END# *47723D2E0051_4ADDDFE60236_impl*
end;//Tl3PrimNode.GetLevel

function Tl3PrimNode.GetLevelFor(const aNode: Il3SimpleNode): Integer;
//#UC START# *47723D3B0058_4ADDDFE60236_var*
//#UC END# *47723D3B0058_4ADDDFE60236_var*
begin
//#UC START# *47723D3B0058_4ADDDFE60236_impl*
 !!! Needs to be implemented !!!
//#UC END# *47723D3B0058_4ADDDFE60236_impl*
end;//Tl3PrimNode.GetLevelFor

function Tl3PrimNode.IsSame(const aNode: Il3SimpleNode): Boolean;
//#UC START# *47723D4C0360_4ADDDFE60236_var*
//#UC END# *47723D4C0360_4ADDDFE60236_var*
begin
//#UC START# *47723D4C0360_4ADDDFE60236_impl*
 !!! Needs to be implemented !!!
//#UC END# *47723D4C0360_4ADDDFE60236_impl*
end;//Tl3PrimNode.IsSame

function Tl3PrimNode.IsDisappeared: Boolean;
//#UC START# *47723DB901CA_4ADDDFE60236_var*
//#UC END# *47723DB901CA_4ADDDFE60236_var*
begin
//#UC START# *47723DB901CA_4ADDDFE60236_impl*
 !!! Needs to be implemented !!!
//#UC END# *47723DB901CA_4ADDDFE60236_impl*
end;//Tl3PrimNode.IsDisappeared

procedure Tl3PrimNode.BeginMove(var aUserParam: Pointer);
//#UC START# *47723DD1008F_4ADDDFE60236_var*
//#UC END# *47723DD1008F_4ADDDFE60236_var*
begin
//#UC START# *47723DD1008F_4ADDDFE60236_impl*
 !!! Needs to be implemented !!!
//#UC END# *47723DD1008F_4ADDDFE60236_impl*
end;//Tl3PrimNode.BeginMove

procedure Tl3PrimNode.EndMove(aUserParam: Pointer);
//#UC START# *47723DE0009F_4ADDDFE60236_var*
//#UC END# *47723DE0009F_4ADDDFE60236_var*
begin
//#UC START# *47723DE0009F_4ADDDFE60236_impl*
 !!! Needs to be implemented !!!
//#UC END# *47723DE0009F_4ADDDFE60236_impl*
end;//Tl3PrimNode.EndMove

procedure Tl3PrimNode.Delete;
//#UC START# *47723DED006A_4ADDDFE60236_var*
//#UC END# *47723DED006A_4ADDDFE60236_var*
begin
//#UC START# *47723DED006A_4ADDDFE60236_impl*
 !!! Needs to be implemented !!!
//#UC END# *47723DED006A_4ADDDFE60236_impl*
end;//Tl3PrimNode.Delete

function Tl3PrimNode.Get_Text: Tl3PCharLenPrim;
//#UC START# *47723E8C0086_4ADDDFE60236get_var*
//#UC END# *47723E8C0086_4ADDDFE60236get_var*
begin
//#UC START# *47723E8C0086_4ADDDFE60236get_impl*
 !!! Needs to be implemented !!!
//#UC END# *47723E8C0086_4ADDDFE60236get_impl*
end;//Tl3PrimNode.Get_Text

function Tl3PrimNode.Get_Parent: Il3SimpleNode;
//#UC START# *4772408A0361_4ADDDFE60236get_var*
//#UC END# *4772408A0361_4ADDDFE60236get_var*
begin
//#UC START# *4772408A0361_4ADDDFE60236get_impl*
 !!! Needs to be implemented !!!
//#UC END# *4772408A0361_4ADDDFE60236get_impl*
end;//Tl3PrimNode.Get_Parent

function Tl3PrimNode.Get_Child: Il3SimpleNode;
//#UC START# *477240B10267_4ADDDFE60236get_var*
//#UC END# *477240B10267_4ADDDFE60236get_var*
begin
//#UC START# *477240B10267_4ADDDFE60236get_impl*
 !!! Needs to be implemented !!!
//#UC END# *477240B10267_4ADDDFE60236get_impl*
end;//Tl3PrimNode.Get_Child

function Tl3PrimNode.Get_Next: Il3SimpleNode;
//#UC START# *477241AC00B9_4ADDDFE60236get_var*
//#UC END# *477241AC00B9_4ADDDFE60236get_var*
begin
//#UC START# *477241AC00B9_4ADDDFE60236get_impl*
 !!! Needs to be implemented !!!
//#UC END# *477241AC00B9_4ADDDFE60236get_impl*
end;//Tl3PrimNode.Get_Next

function Tl3PrimNode.Get_Flag(anIndex: Integer): Boolean;
//#UC START# *4772423302AF_4ADDDFE60236get_var*
//#UC END# *4772423302AF_4ADDDFE60236get_var*
begin
//#UC START# *4772423302AF_4ADDDFE60236get_impl*
 !!! Needs to be implemented !!!
//#UC END# *4772423302AF_4ADDDFE60236get_impl*
end;//Tl3PrimNode.Get_Flag

procedure Tl3PrimNode.Set_Flag(anIndex: Integer; aValue: Boolean);
//#UC START# *4772423302AF_4ADDDFE60236set_var*
//#UC END# *4772423302AF_4ADDDFE60236set_var*
begin
//#UC START# *4772423302AF_4ADDDFE60236set_impl*
 !!! Needs to be implemented !!!
//#UC END# *4772423302AF_4ADDDFE60236set_impl*
end;//Tl3PrimNode.Set_Flag

function Tl3PrimNode.Get_Flags: Integer;
//#UC START# *477242700004_4ADDDFE60236get_var*
//#UC END# *477242700004_4ADDDFE60236get_var*
begin
//#UC START# *477242700004_4ADDDFE60236get_impl*
 !!! Needs to be implemented !!!
//#UC END# *477242700004_4ADDDFE60236get_impl*
end;//Tl3PrimNode.Get_Flags

function Tl3PrimNode.Get_ThisChildrenCount: Integer;
//#UC START# *4772429202E4_4ADDDFE60236get_var*
//#UC END# *4772429202E4_4ADDDFE60236get_var*
begin
//#UC START# *4772429202E4_4ADDDFE60236get_impl*
 !!! Needs to be implemented !!!
//#UC END# *4772429202E4_4ADDDFE60236get_impl*
end;//Tl3PrimNode.Get_ThisChildrenCount

function Tl3PrimNode.pm_GetIndexInParent: Integer;
//#UC START# *477242A40219_4ADDDFE60236get_var*
//#UC END# *477242A40219_4ADDDFE60236get_var*
begin
//#UC START# *477242A40219_4ADDDFE60236get_impl*
 !!! Needs to be implemented !!!
//#UC END# *477242A40219_4ADDDFE60236get_impl*
end;//Tl3PrimNode.pm_GetIndexInParent

function Tl3PrimNode.CanExpandCollapseAll: Boolean;
//#UC START# *4772433F0008_4ADDDFE60236_var*
//#UC END# *4772433F0008_4ADDDFE60236_var*
begin
//#UC START# *4772433F0008_4ADDDFE60236_impl*
 !!! Needs to be implemented !!!
//#UC END# *4772433F0008_4ADDDFE60236_impl*
end;//Tl3PrimNode.CanExpandCollapseAll

procedure Tl3PrimNode.ExpandCollapseAll(anExpand: Boolean);
//#UC START# *47724349030A_4ADDDFE60236_var*
//#UC END# *47724349030A_4ADDDFE60236_var*
begin
//#UC START# *47724349030A_4ADDDFE60236_impl*
 !!! Needs to be implemented !!!
//#UC END# *47724349030A_4ADDDFE60236_impl*
end;//Tl3PrimNode.ExpandCollapseAll

function Tl3PrimNode.CanAcceptData(const aData: Tl3TreeData): Boolean;
//#UC START# *47A86F070101_4ADDDFE60236_var*
//#UC END# *47A86F070101_4ADDDFE60236_var*
begin
//#UC START# *47A86F070101_4ADDDFE60236_impl*
 !!! Needs to be implemented !!!
//#UC END# *47A86F070101_4ADDDFE60236_impl*
end;//Tl3PrimNode.CanAcceptData

function Tl3PrimNode.DropData(const aData: Tl3TreeData): Boolean;
//#UC START# *47A86F1C016B_4ADDDFE60236_var*
//#UC END# *47A86F1C016B_4ADDDFE60236_var*
begin
//#UC START# *47A86F1C016B_4ADDDFE60236_impl*
 !!! Needs to be implemented !!!
//#UC END# *47A86F1C016B_4ADDDFE60236_impl*
end;//Tl3PrimNode.DropData

function Tl3PrimNode.CanMove: Boolean;
//#UC START# *47ADA09C019B_4ADDDFE60236_var*
//#UC END# *47ADA09C019B_4ADDDFE60236_var*
begin
//#UC START# *47ADA09C019B_4ADDDFE60236_impl*
 !!! Needs to be implemented !!!
//#UC END# *47ADA09C019B_4ADDDFE60236_impl*
end;//Tl3PrimNode.CanMove

function Tl3PrimNode.Get_Prev: Il3SimpleNode;
//#UC START# *47B5759A03C0_4ADDDFE60236get_var*
//#UC END# *47B5759A03C0_4ADDDFE60236get_var*
begin
//#UC START# *47B5759A03C0_4ADDDFE60236get_impl*
 !!! Needs to be implemented !!!
//#UC END# *47B5759A03C0_4ADDDFE60236get_impl*
end;//Tl3PrimNode.Get_Prev
// start class Tl3CustomNode

function Tl3CustomNode.DoCompareChild(const aChildNode1: Il3Node;
  const aChildNode2: Il3Node): Integer;
//#UC START# *508FAF0002EA_4ADDDFD50118_var*
//#UC END# *508FAF0002EA_4ADDDFD50118_var*
begin
//#UC START# *508FAF0002EA_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *508FAF0002EA_4ADDDFD50118_impl*
end;//Tl3CustomNode.DoCompareChild

function Tl3CustomNode.GetNumInParent(aOnlyOneLevel: Boolean = false): Integer;
//#UC START# *4ADEDD64015A_4ADDDFD50118_var*
//#UC END# *4ADEDD64015A_4ADDDFD50118_var*
begin
//#UC START# *4ADEDD64015A_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *4ADEDD64015A_4ADDDFD50118_impl*
end;//Tl3CustomNode.GetNumInParent

procedure Tl3CustomNode.SortChilds(const aChild: Il3Node = nil);
//#UC START# *4ADEEA340039_4ADDDFD50118_var*
//#UC END# *4ADEEA340039_4ADDDFD50118_var*
begin
//#UC START# *4ADEEA340039_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *4ADEEA340039_4ADDDFD50118_impl*
end;//Tl3CustomNode.SortChilds

function Tl3CustomNode.InsertChild(const aNode: Il3Node): Il3Node;
//#UC START# *47710BBE0052_4ADDDFD50118_var*
//#UC END# *47710BBE0052_4ADDDFD50118_var*
begin
//#UC START# *47710BBE0052_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *47710BBE0052_4ADDDFD50118_impl*
end;//Tl3CustomNode.InsertChild

function Tl3CustomNode.InsertChildBefore(const aNextChild: Il3Node;
  const aNode: Il3Node): Il3Node;
//#UC START# *47710BCC0099_4ADDDFD50118_var*
//#UC END# *47710BCC0099_4ADDDFD50118_var*
begin
//#UC START# *47710BCC0099_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *47710BCC0099_4ADDDFD50118_impl*
end;//Tl3CustomNode.InsertChildBefore

function Tl3CustomNode.IsAcceptChild(const aChild: Il3Node): Boolean;
//#UC START# *47710BF103B7_4ADDDFD50118_var*
//#UC END# *47710BF103B7_4ADDDFD50118_var*
begin
//#UC START# *47710BF103B7_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *47710BF103B7_4ADDDFD50118_impl*
end;//Tl3CustomNode.IsAcceptChild

function Tl3CustomNode.GetChildByNumber(aNum: Integer): Il3Node;
//#UC START# *47710BFD00A6_4ADDDFD50118_var*
//#UC END# *47710BFD00A6_4ADDDFD50118_var*
begin
//#UC START# *47710BFD00A6_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *47710BFD00A6_4ADDDFD50118_impl*
end;//Tl3CustomNode.GetChildByNumber

function Tl3CustomNode.GetNodeByNumber(aNum: Integer): Il3Node;
//#UC START# *47710C0E00D9_4ADDDFD50118_var*
//#UC END# *47710C0E00D9_4ADDDFD50118_var*
begin
//#UC START# *47710C0E00D9_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *47710C0E00D9_4ADDDFD50118_impl*
end;//Tl3CustomNode.GetNodeByNumber

function Tl3CustomNode.GetNumInParent(aOnlyOneLevel: Boolean = false): Integer;
//#UC START# *47710C1F0389_4ADDDFD50118_var*
//#UC END# *47710C1F0389_4ADDDFD50118_var*
begin
//#UC START# *47710C1F0389_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *47710C1F0389_4ADDDFD50118_impl*
end;//Tl3CustomNode.GetNumInParent

procedure Tl3CustomNode.Changing;
//#UC START# *47710C2B0317_4ADDDFD50118_var*
//#UC END# *47710C2B0317_4ADDDFD50118_var*
begin
//#UC START# *47710C2B0317_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *47710C2B0317_4ADDDFD50118_impl*
end;//Tl3CustomNode.Changing

procedure Tl3CustomNode.Changed;
//#UC START# *47710C390040_4ADDDFD50118_var*
//#UC END# *47710C390040_4ADDDFD50118_var*
begin
//#UC START# *47710C390040_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *47710C390040_4ADDDFD50118_impl*
end;//Tl3CustomNode.Changed

procedure Tl3CustomNode.Notify(aOperation: Integer;
  const aNode: Il3Node);
//#UC START# *47710C4A017A_4ADDDFD50118_var*
//#UC END# *47710C4A017A_4ADDDFD50118_var*
begin
//#UC START# *47710C4A017A_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *47710C4A017A_4ADDDFD50118_impl*
end;//Tl3CustomNode.Notify

procedure Tl3CustomNode.IncAllChildrenCount(aInc: Integer);
//#UC START# *47710C5B0032_4ADDDFD50118_var*
//#UC END# *47710C5B0032_4ADDDFD50118_var*
begin
//#UC START# *47710C5B0032_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *47710C5B0032_4ADDDFD50118_impl*
end;//Tl3CustomNode.IncAllChildrenCount

procedure Tl3CustomNode.Remove;
//#UC START# *47710C6002AA_4ADDDFD50118_var*
//#UC END# *47710C6002AA_4ADDDFD50118_var*
begin
//#UC START# *47710C6002AA_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *47710C6002AA_4ADDDFD50118_impl*
end;//Tl3CustomNode.Remove

function Tl3CustomNode.Move(aDirection: Tl3Direction): Boolean;
//#UC START# *47710C8C007B_4ADDDFD50118_var*
//#UC END# *47710C8C007B_4ADDDFD50118_var*
begin
//#UC START# *47710C8C007B_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *47710C8C007B_4ADDDFD50118_impl*
end;//Tl3CustomNode.Move

function Tl3CustomNode.Iterate(Action: Tl3NodeAction;
  IterMode: Integer = 0;
  const aFromNode: Il3Node = nil): Il3Node;
//#UC START# *47710C9F001E_4ADDDFD50118_var*
//#UC END# *47710C9F001E_4ADDDFD50118_var*
begin
//#UC START# *47710C9F001E_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *47710C9F001E_4ADDDFD50118_impl*
end;//Tl3CustomNode.Iterate

function Tl3CustomNode.IterateF(Action: Tl3NodeAction;
  IterMode: Integer = 0;
  const aFromNode: Il3Node = nil): Il3Node;
//#UC START# *47710CC30122_4ADDDFD50118_var*
//#UC END# *47710CC30122_4ADDDFD50118_var*
begin
//#UC START# *47710CC30122_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *47710CC30122_4ADDDFD50118_impl*
end;//Tl3CustomNode.IterateF

procedure Tl3CustomNode.ReleaseChilds;
//#UC START# *47710CE400B0_4ADDDFD50118_var*
//#UC END# *47710CE400B0_4ADDDFD50118_var*
begin
//#UC START# *47710CE400B0_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *47710CE400B0_4ADDDFD50118_impl*
end;//Tl3CustomNode.ReleaseChilds

function Tl3CustomNode.CompareChild(const aChildrenNode1: Il3Node;
  const aChildrenNode2: Il3Node): Integer;
//#UC START# *47710DC10100_4ADDDFD50118_var*
//#UC END# *47710DC10100_4ADDDFD50118_var*
begin
//#UC START# *47710DC10100_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *47710DC10100_4ADDDFD50118_impl*
end;//Tl3CustomNode.CompareChild

procedure Tl3CustomNode.SortChilds(const aChild: Il3Node = nil);
//#UC START# *47710DE4027E_4ADDDFD50118_var*
//#UC END# *47710DE4027E_4ADDDFD50118_var*
begin
//#UC START# *47710DE4027E_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *47710DE4027E_4ADDDFD50118_impl*
end;//Tl3CustomNode.SortChilds

procedure Tl3CustomNode.Sort;
//#UC START# *47710DF70238_4ADDDFD50118_var*
//#UC END# *47710DF70238_4ADDDFD50118_var*
begin
//#UC START# *47710DF70238_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *47710DF70238_4ADDDFD50118_impl*
end;//Tl3CustomNode.Sort

function Tl3CustomNode.Get_Text: Tl3PCharLenPrim;
//#UC START# *47710E430313_4ADDDFD50118get_var*
//#UC END# *47710E430313_4ADDDFD50118get_var*
begin
//#UC START# *47710E430313_4ADDDFD50118get_impl*
 !!! Needs to be implemented !!!
//#UC END# *47710E430313_4ADDDFD50118get_impl*
end;//Tl3CustomNode.Get_Text

procedure Tl3CustomNode.Set_Text(const aValue: Tl3PCharLenPrim);
//#UC START# *47710E430313_4ADDDFD50118set_var*
//#UC END# *47710E430313_4ADDDFD50118set_var*
begin
//#UC START# *47710E430313_4ADDDFD50118set_impl*
 !!! Needs to be implemented !!!
//#UC END# *47710E430313_4ADDDFD50118set_impl*
end;//Tl3CustomNode.Set_Text

function Tl3CustomNode.Get_AllChildrenCount: Integer;
//#UC START# *47710E730361_4ADDDFD50118get_var*
//#UC END# *47710E730361_4ADDDFD50118get_var*
begin
//#UC START# *47710E730361_4ADDDFD50118get_impl*
 !!! Needs to be implemented !!!
//#UC END# *47710E730361_4ADDDFD50118get_impl*
end;//Tl3CustomNode.Get_AllChildrenCount

function Tl3CustomNode.Get_ChildSorted: Boolean;
//#UC START# *47710E8D018C_4ADDDFD50118get_var*
//#UC END# *47710E8D018C_4ADDDFD50118get_var*
begin
//#UC START# *47710E8D018C_4ADDDFD50118get_impl*
 !!! Needs to be implemented !!!
//#UC END# *47710E8D018C_4ADDDFD50118get_impl*
end;//Tl3CustomNode.Get_ChildSorted

procedure Tl3CustomNode.Set_ChildSorted(aValue: Boolean);
//#UC START# *47710E8D018C_4ADDDFD50118set_var*
//#UC END# *47710E8D018C_4ADDDFD50118set_var*
begin
//#UC START# *47710E8D018C_4ADDDFD50118set_impl*
 !!! Needs to be implemented !!!
//#UC END# *47710E8D018C_4ADDDFD50118set_impl*
end;//Tl3CustomNode.Set_ChildSorted

function Tl3CustomNode.Get_ChildSortedFromParent: Boolean;
//#UC START# *47710E9D0055_4ADDDFD50118get_var*
//#UC END# *47710E9D0055_4ADDDFD50118get_var*
begin
//#UC START# *47710E9D0055_4ADDDFD50118get_impl*
 !!! Needs to be implemented !!!
//#UC END# *47710E9D0055_4ADDDFD50118get_impl*
end;//Tl3CustomNode.Get_ChildSortedFromParent

procedure Tl3CustomNode.Set_ChildSortedFromParent(aValue: Boolean);
//#UC START# *47710E9D0055_4ADDDFD50118set_var*
//#UC END# *47710E9D0055_4ADDDFD50118set_var*
begin
//#UC START# *47710E9D0055_4ADDDFD50118set_impl*
 !!! Needs to be implemented !!!
//#UC END# *47710E9D0055_4ADDDFD50118set_impl*
end;//Tl3CustomNode.Set_ChildSortedFromParent

function Tl3CustomNode.Get_Flags: Integer;
//#UC START# *47710EAD0211_4ADDDFD50118get_var*
//#UC END# *47710EAD0211_4ADDDFD50118get_var*
begin
//#UC START# *47710EAD0211_4ADDDFD50118get_impl*
 !!! Needs to be implemented !!!
//#UC END# *47710EAD0211_4ADDDFD50118get_impl*
end;//Tl3CustomNode.Get_Flags

procedure Tl3CustomNode.Set_Flags(aValue: Integer);
//#UC START# *47710EAD0211_4ADDDFD50118set_var*
//#UC END# *47710EAD0211_4ADDDFD50118set_var*
begin
//#UC START# *47710EAD0211_4ADDDFD50118set_impl*
 !!! Needs to be implemented !!!
//#UC END# *47710EAD0211_4ADDDFD50118set_impl*
end;//Tl3CustomNode.Set_Flags

function Tl3CustomNode.Get_NextNode: Il3Node;
//#UC START# *4771102F01C3_4ADDDFD50118get_var*
//#UC END# *4771102F01C3_4ADDDFD50118get_var*
begin
//#UC START# *4771102F01C3_4ADDDFD50118get_impl*
 !!! Needs to be implemented !!!
//#UC END# *4771102F01C3_4ADDDFD50118get_impl*
end;//Tl3CustomNode.Get_NextNode

function Tl3CustomNode.Get_PrevNode: Il3Node;
//#UC START# *477110580184_4ADDDFD50118get_var*
//#UC END# *477110580184_4ADDDFD50118get_var*
begin
//#UC START# *477110580184_4ADDDFD50118get_impl*
 !!! Needs to be implemented !!!
//#UC END# *477110580184_4ADDDFD50118get_impl*
end;//Tl3CustomNode.Get_PrevNode

function Tl3CustomNode.Get_ParentNode: Il3Node;
//#UC START# *4771108100D0_4ADDDFD50118get_var*
//#UC END# *4771108100D0_4ADDDFD50118get_var*
begin
//#UC START# *4771108100D0_4ADDDFD50118get_impl*
 !!! Needs to be implemented !!!
//#UC END# *4771108100D0_4ADDDFD50118get_impl*
end;//Tl3CustomNode.Get_ParentNode

function Tl3CustomNode.Get_ChildNode: Il3Node;
//#UC START# *477110A2026C_4ADDDFD50118get_var*
//#UC END# *477110A2026C_4ADDDFD50118get_var*
begin
//#UC START# *477110A2026C_4ADDDFD50118get_impl*
 !!! Needs to be implemented !!!
//#UC END# *477110A2026C_4ADDDFD50118get_impl*
end;//Tl3CustomNode.Get_ChildNode

function Tl3CustomNode.GetLevelForParent(const aNode: Il3SimpleNode): Integer;
//#UC START# *4ADEE15703E7_4ADDDFD50118_var*
//#UC END# *4ADEE15703E7_4ADDDFD50118_var*
begin
//#UC START# *4ADEE15703E7_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *4ADEE15703E7_4ADDDFD50118_impl*
end;//Tl3CustomNode.GetLevelForParent

function Tl3CustomNode.Get_AllChildrenCount: Integer;
//#UC START# *4ADEE8EE025E_4ADDDFD50118_var*
//#UC END# *4ADEE8EE025E_4ADDDFD50118_var*
begin
//#UC START# *4ADEE8EE025E_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *4ADEE8EE025E_4ADDDFD50118_impl*
end;//Tl3CustomNode.Get_AllChildrenCount

function Tl3CustomNode.Get_ParentNode: Il3Node;
//#UC START# *4DFF11E50055_4ADDDFD50118_var*
//#UC END# *4DFF11E50055_4ADDDFD50118_var*
begin
//#UC START# *4DFF11E50055_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *4DFF11E50055_4ADDDFD50118_impl*
end;//Tl3CustomNode.Get_ParentNode

function Tl3CustomNode.Get_NextNode: Il3Node;
//#UC START# *4DFF12480351_4ADDDFD50118_var*
//#UC END# *4DFF12480351_4ADDDFD50118_var*
begin
//#UC START# *4DFF12480351_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *4DFF12480351_4ADDDFD50118_impl*
end;//Tl3CustomNode.Get_NextNode

function Tl3CustomNode.Get_PrevNode: Il3Node;
//#UC START# *4DFF1269012B_4ADDDFD50118_var*
//#UC END# *4DFF1269012B_4ADDDFD50118_var*
begin
//#UC START# *4DFF1269012B_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *4DFF1269012B_4ADDDFD50118_impl*
end;//Tl3CustomNode.Get_PrevNode

function Tl3CustomNode.GetThisChildrenCount: Integer;
//#UC START# *4DFF132503B6_4ADDDFD50118_var*
//#UC END# *4DFF132503B6_4ADDDFD50118_var*
begin
//#UC START# *4DFF132503B6_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *4DFF132503B6_4ADDDFD50118_impl*
end;//Tl3CustomNode.GetThisChildrenCount

function Tl3CustomNode.IsLastNode: Boolean;
//#UC START# *4DFF13AB0076_4ADDDFD50118_var*
//#UC END# *4DFF13AB0076_4ADDDFD50118_var*
begin
//#UC START# *4DFF13AB0076_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *4DFF13AB0076_4ADDDFD50118_impl*
end;//Tl3CustomNode.IsLastNode

function Tl3CustomNode.IsFirstNode: Boolean;
//#UC START# *4DFF13C0006D_4ADDDFD50118_var*
//#UC END# *4DFF13C0006D_4ADDDFD50118_var*
begin
//#UC START# *4DFF13C0006D_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *4DFF13C0006D_4ADDDFD50118_impl*
end;//Tl3CustomNode.IsFirstNode

function Tl3CustomNode.HasChildNode: Boolean;
//#UC START# *4DFF21140378_4ADDDFD50118_var*
//#UC END# *4DFF21140378_4ADDDFD50118_var*
begin
//#UC START# *4DFF21140378_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *4DFF21140378_4ADDDFD50118_impl*
end;//Tl3CustomNode.HasChildNode

procedure Tl3CustomNode.DoRemove;
//#UC START# *4DFF218D002E_4ADDDFD50118_var*
//#UC END# *4DFF218D002E_4ADDDFD50118_var*
begin
//#UC START# *4DFF218D002E_4ADDDFD50118_impl*
 !!! Needs to be implemented !!!
//#UC END# *4DFF218D002E_4ADDDFD50118_impl*
end;//Tl3CustomNode.DoRemove
// start class Tl3CustomUsualNode

procedure Tl3CustomUsualNode.Subscribe(const aRecipient: Il3Notify);
//#UC START# *46A44F6B035E_4ADDDFC50302_var*
//#UC END# *46A44F6B035E_4ADDDFC50302_var*
begin
//#UC START# *46A44F6B035E_4ADDDFC50302_impl*
 !!! Needs to be implemented !!!
//#UC END# *46A44F6B035E_4ADDDFC50302_impl*
end;//Tl3CustomUsualNode.Subscribe

procedure Tl3CustomUsualNode.Unsubscribe(const aRecipient: Il3Notify);
//#UC START# *46A44FFE0143_4ADDDFC50302_var*
//#UC END# *46A44FFE0143_4ADDDFC50302_var*
begin
//#UC START# *46A44FFE0143_4ADDDFC50302_impl*
 !!! Needs to be implemented !!!
//#UC END# *46A44FFE0143_4ADDDFC50302_impl*
end;//Tl3CustomUsualNode.Unsubscribe

procedure Tl3CustomUsualNode.IncAllChildrenCount(aInc: Integer);
//#UC START# *4ADEE9120163_4ADDDFC50302_var*
//#UC END# *4ADEE9120163_4ADDDFC50302_var*
begin
//#UC START# *4ADEE9120163_4ADDDFC50302_impl*
 !!! Needs to be implemented !!!
//#UC END# *4ADEE9120163_4ADDDFC50302_impl*
end;//Tl3CustomUsualNode.IncAllChildrenCount

procedure Tl3CustomUsualNode.ReleaseChilds;
//#UC START# *4ADEEA5A0206_4ADDDFC50302_var*
//#UC END# *4ADEEA5A0206_4ADDDFC50302_var*
begin
//#UC START# *4ADEEA5A0206_4ADDDFC50302_impl*
 !!! Needs to be implemented !!!
//#UC END# *4ADEEA5A0206_4ADDDFC50302_impl*
end;//Tl3CustomUsualNode.ReleaseChilds

function Tl3CustomUsualNode.IterateChild(Action: Tl3NodeAction;
  IterMode: Integer;
  const aFromNode: Il3Node = nil): Il3Node;
//#UC START# *4DFF22F202A1_4ADDDFC50302_var*
//#UC END# *4DFF22F202A1_4ADDDFC50302_var*
begin
//#UC START# *4DFF22F202A1_4ADDDFC50302_impl*
 !!! Needs to be implemented !!!
//#UC END# *4DFF22F202A1_4ADDDFC50302_impl*
end;//Tl3CustomUsualNode.IterateChild

// Методы преобразования к реализуемым интерфейсам

function Tl3CustomUsualNode.As_Il3ChangeNotifier: Il3ChangeNotifier;
begin
 Result := Self;
end;
// start class Tl3HandleNode

function Tl3HandleNode.Get_Handle: Integer;
//#UC START# *46827CAF03CD_4ADDDFB20186get_var*
//#UC END# *46827CAF03CD_4ADDDFB20186get_var*
begin
//#UC START# *46827CAF03CD_4ADDDFB20186get_impl*
 !!! Needs to be implemented !!!
//#UC END# *46827CAF03CD_4ADDDFB20186get_impl*
end;//Tl3HandleNode.Get_Handle

procedure Tl3HandleNode.Set_Handle(aValue: Integer);
//#UC START# *46827CAF03CD_4ADDDFB20186set_var*
//#UC END# *46827CAF03CD_4ADDDFB20186set_var*
begin
//#UC START# *46827CAF03CD_4ADDDFB20186set_impl*
 !!! Needs to be implemented !!!
//#UC END# *46827CAF03CD_4ADDDFB20186set_impl*
end;//Tl3HandleNode.Set_Handle
// start class Tl3CustomListContainerNode

procedure Tl3CustomListContainerNode.Notify(const aNotifier: Il3ChangeNotifier;
  aOperation: Integer;
  aIndex: Integer);
//#UC START# *46A4504B03C4_4ADDE0F50179_var*
//#UC END# *46A4504B03C4_4ADDE0F50179_var*
begin
//#UC START# *46A4504B03C4_4ADDE0F50179_impl*
 !!! Needs to be implemented !!!
//#UC END# *46A4504B03C4_4ADDE0F50179_impl*
end;//Tl3CustomListContainerNode.Notify

procedure Tl3CustomListContainerNode.Changing;
//#UC START# *46A453AA0065_4ADDE0F50179_var*
//#UC END# *46A453AA0065_4ADDE0F50179_var*
begin
//#UC START# *46A453AA0065_4ADDE0F50179_impl*
 !!! Needs to be implemented !!!
//#UC END# *46A453AA0065_4ADDE0F50179_impl*
end;//Tl3CustomListContainerNode.Changing

procedure Tl3CustomListContainerNode.Changed;
//#UC START# *46A453D1015C_4ADDE0F50179_var*
//#UC END# *46A453D1015C_4ADDE0F50179_var*
begin
//#UC START# *46A453D1015C_4ADDE0F50179_impl*
 !!! Needs to be implemented !!!
//#UC END# *46A453D1015C_4ADDE0F50179_impl*
end;//Tl3CustomListContainerNode.Changed
// start class Tl3ListItemNode

function Tl3ListItemNode.Get_Handle: Integer;
//#UC START# *46827CAF03CD_4ADDE17D0077get_var*
//#UC END# *46827CAF03CD_4ADDE17D0077get_var*
begin
//#UC START# *46827CAF03CD_4ADDE17D0077get_impl*
 !!! Needs to be implemented !!!
//#UC END# *46827CAF03CD_4ADDE17D0077get_impl*
end;//Tl3ListItemNode.Get_Handle

procedure Tl3ListItemNode.Set_Handle(aValue: Integer);
//#UC START# *46827CAF03CD_4ADDE17D0077set_var*
//#UC END# *46827CAF03CD_4ADDE17D0077set_var*
begin
//#UC START# *46827CAF03CD_4ADDE17D0077set_impl*
 !!! Needs to be implemented !!!
//#UC END# *46827CAF03CD_4ADDE17D0077set_impl*
end;//Tl3ListItemNode.Set_Handle

procedure Tl3ListItemNode.Notify(aOperation: Integer;
  const aNode: Il3SimpleNode);
//#UC START# *477244190062_4ADDE17D0077_var*
//#UC END# *477244190062_4ADDE17D0077_var*
begin
//#UC START# *477244190062_4ADDE17D0077_impl*
 !!! Needs to be implemented !!!
//#UC END# *477244190062_4ADDE17D0077_impl*
end;//Tl3ListItemNode.Notify

procedure Tl3ListItemNode.IncAllChildrenCount(aInc: Integer);
//#UC START# *4ADEE9120163_4ADDE17D0077_var*
//#UC END# *4ADEE9120163_4ADDE17D0077_var*
begin
//#UC START# *4ADEE9120163_4ADDE17D0077_impl*
 !!! Needs to be implemented !!!
//#UC END# *4ADEE9120163_4ADDE17D0077_impl*
end;//Tl3ListItemNode.IncAllChildrenCount

procedure Tl3ListItemNode.ReleaseChilds;
//#UC START# *4ADEEA5A0206_4ADDE17D0077_var*
//#UC END# *4ADEEA5A0206_4ADDE17D0077_var*
begin
//#UC START# *4ADEEA5A0206_4ADDE17D0077_impl*
 !!! Needs to be implemented !!!
//#UC END# *4ADEEA5A0206_4ADDE17D0077_impl*
end;//Tl3ListItemNode.ReleaseChilds

function Tl3ListItemNode.IterateChild(Action: Tl3NodeAction;
  IterMode: Integer;
  const aFromNode: Il3Node = nil): Il3Node;
//#UC START# *4DFF22F202A1_4ADDE17D0077_var*
//#UC END# *4DFF22F202A1_4ADDE17D0077_var*
begin
//#UC START# *4DFF22F202A1_4ADDE17D0077_impl*
 !!! Needs to be implemented !!!
//#UC END# *4DFF22F202A1_4ADDE17D0077_impl*
end;//Tl3ListItemNode.IterateChild
// unit methods

procedure L3L2NA;
//#UC START# *4ADEEDB1033B_47F25741021C_var*
//#UC END# *4ADEEDB1033B_47F25741021C_var*
begin
//#UC START# *4ADEEDB1033B_47F25741021C_impl*
 !!! Needs to be implemented !!!
//#UC END# *4ADEEDB1033B_47F25741021C_impl*
end;//L3L2NA

procedure L3SearchByName;
//#UC START# *4AE826DB0089_47F25741021C_var*
//#UC END# *4AE826DB0089_47F25741021C_var*
begin
//#UC START# *4AE826DB0089_47F25741021C_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AE826DB0089_47F25741021C_impl*
end;//L3SearchByName

procedure L3L2SNA;
//#UC START# *4B1CD77B0238_47F25741021C_var*
//#UC END# *4B1CD77B0238_47F25741021C_var*
begin
//#UC START# *4B1CD77B0238_47F25741021C_impl*
 !!! Needs to be implemented !!!
//#UC END# *4B1CD77B0238_47F25741021C_impl*
end;//L3L2SNA

function MakeNode(const aNodeName: AnsiString): Il3Node;
//#UC START# *47F257820265_47F25741021C_var*
//#UC END# *47F257820265_47F25741021C_var*
begin
//#UC START# *47F257820265_47F25741021C_impl*
 !!! Needs to be implemented !!!
//#UC END# *47F257820265_47F25741021C_impl*
end;//MakeNode

end.