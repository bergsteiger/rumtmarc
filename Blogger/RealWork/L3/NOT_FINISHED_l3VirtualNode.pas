unit NOT_FINISHED_l3VirtualNode;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "L3"
// Модуль: "w:/common/components/rtl/Garant/L3/NOT_FINISHED_l3VirtualNode.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi Low Level::L3::l3Trees::l3VirtualNode
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include ..\L3\l3Define.inc}

interface

uses
  l3Tree_TLB,
  l3Nodes
  ;

type

 Rl3CustomVirtualNode = class of Tl3CustomVirtualNode;
 Tl3CustomVirtualNode = class(Tl3CustomNode)
 protected
 // realized methods
   procedure IncAllChildrenCount(aInc: Integer); override;
   procedure ReleaseChilds; override;
   function IterateChild(Action: Tl3NodeAction;
    IterMode: Integer;
    const aFromNode: Il3Node = nil): Il3Node; override;
 protected
 // protected methods
   procedure Set_ChildNode(const aValue: Il3Node); virtual;
   function ChildNodeClass: Rl3CustomVirtualNode; virtual;
   function ParentNodeClass: Rl3CustomVirtualNode; virtual;
   procedure Set_ParentNode(const aValue: Il3Node); virtual; abstract;
   procedure Set_PrevNode(const aValue: Il3Node); virtual; abstract;
   procedure Set_NextNode(const aValue: Il3Node); virtual; abstract;
 end;//Tl3CustomVirtualNode

 Tl3VirtualFlagsNode = class(Tl3CustomVirtualNode)
 protected
 // realized methods
   procedure Set_ParentNode(const aValue: Il3Node); override;
   procedure Set_PrevNode(const aValue: Il3Node); override;
   procedure Set_NextNode(const aValue: Il3Node); override;
 end;//Tl3VirtualFlagsNode

implementation

// start class Tl3CustomVirtualNode

procedure Tl3CustomVirtualNode.Set_ChildNode(const aValue: Il3Node);
//#UC START# *4ADEEFA00164_4ADDF3930121_var*
//#UC END# *4ADEEFA00164_4ADDF3930121_var*
begin
//#UC START# *4ADEEFA00164_4ADDF3930121_impl*
 !!! Needs to be implemented !!!
//#UC END# *4ADEEFA00164_4ADDF3930121_impl*
end;//Tl3CustomVirtualNode.Set_ChildNode

function Tl3CustomVirtualNode.ChildNodeClass: Rl3CustomVirtualNode;
//#UC START# *4B1CE7F6012A_4ADDF3930121_var*
//#UC END# *4B1CE7F6012A_4ADDF3930121_var*
begin
//#UC START# *4B1CE7F6012A_4ADDF3930121_impl*
 !!! Needs to be implemented !!!
//#UC END# *4B1CE7F6012A_4ADDF3930121_impl*
end;//Tl3CustomVirtualNode.ChildNodeClass

function Tl3CustomVirtualNode.ParentNodeClass: Rl3CustomVirtualNode;
//#UC START# *4B1CE80502F1_4ADDF3930121_var*
//#UC END# *4B1CE80502F1_4ADDF3930121_var*
begin
//#UC START# *4B1CE80502F1_4ADDF3930121_impl*
 !!! Needs to be implemented !!!
//#UC END# *4B1CE80502F1_4ADDF3930121_impl*
end;//Tl3CustomVirtualNode.ParentNodeClass

procedure Tl3CustomVirtualNode.IncAllChildrenCount(aInc: Integer);
//#UC START# *4ADEE9120163_4ADDF3930121_var*
//#UC END# *4ADEE9120163_4ADDF3930121_var*
begin
//#UC START# *4ADEE9120163_4ADDF3930121_impl*
 !!! Needs to be implemented !!!
//#UC END# *4ADEE9120163_4ADDF3930121_impl*
end;//Tl3CustomVirtualNode.IncAllChildrenCount

procedure Tl3CustomVirtualNode.ReleaseChilds;
//#UC START# *4ADEEA5A0206_4ADDF3930121_var*
//#UC END# *4ADEEA5A0206_4ADDF3930121_var*
begin
//#UC START# *4ADEEA5A0206_4ADDF3930121_impl*
 !!! Needs to be implemented !!!
//#UC END# *4ADEEA5A0206_4ADDF3930121_impl*
end;//Tl3CustomVirtualNode.ReleaseChilds

function Tl3CustomVirtualNode.IterateChild(Action: Tl3NodeAction;
  IterMode: Integer;
  const aFromNode: Il3Node = nil): Il3Node;
//#UC START# *4DFF22F202A1_4ADDF3930121_var*
//#UC END# *4DFF22F202A1_4ADDF3930121_var*
begin
//#UC START# *4DFF22F202A1_4ADDF3930121_impl*
 !!! Needs to be implemented !!!
//#UC END# *4DFF22F202A1_4ADDF3930121_impl*
end;//Tl3CustomVirtualNode.IterateChild
// start class Tl3VirtualFlagsNode

procedure Tl3VirtualFlagsNode.Set_ParentNode(const aValue: Il3Node);
//#UC START# *4DFF154E0063_4ADDF380009E_var*
//#UC END# *4DFF154E0063_4ADDF380009E_var*
begin
//#UC START# *4DFF154E0063_4ADDF380009E_impl*
 !!! Needs to be implemented !!!
//#UC END# *4DFF154E0063_4ADDF380009E_impl*
end;//Tl3VirtualFlagsNode.Set_ParentNode

procedure Tl3VirtualFlagsNode.Set_PrevNode(const aValue: Il3Node);
//#UC START# *4DFF15710135_4ADDF380009E_var*
//#UC END# *4DFF15710135_4ADDF380009E_var*
begin
//#UC START# *4DFF15710135_4ADDF380009E_impl*
 !!! Needs to be implemented !!!
//#UC END# *4DFF15710135_4ADDF380009E_impl*
end;//Tl3VirtualFlagsNode.Set_PrevNode

procedure Tl3VirtualFlagsNode.Set_NextNode(const aValue: Il3Node);
//#UC START# *4DFF15B3015B_4ADDF380009E_var*
//#UC END# *4DFF15B3015B_4ADDF380009E_var*
begin
//#UC START# *4DFF15B3015B_4ADDF380009E_impl*
 !!! Needs to be implemented !!!
//#UC END# *4DFF15B3015B_4ADDF380009E_impl*
end;//Tl3VirtualFlagsNode.Set_NextNode

end.