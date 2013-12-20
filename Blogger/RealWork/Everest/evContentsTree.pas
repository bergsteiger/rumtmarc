unit evContentsTree;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Инишев Д.А.
// Модуль: "w:/common/components/gui/Garant/Everest/evContentsTree.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::ContentsTree::TevContentsTree
//
// Дерево оглавления.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Interfaces,
  l3Tree_TLB,
  nevTools,
  evInternalInterfaces,
  l3Tree,
  l3IID,
  nevBase
  ;

type
 TevContentsTree = class(Tl3Tree, InevSubChangeListner)
  {* Дерево оглавления. }
 private
 // private fields
   f_ContentsNodeFilter : InevContentsNodeFilter;
 private
 // private methods
   procedure CreateRootChild(const aDocument: Ik2Tag);
 protected
 // realized methods
   procedure SubChanged(const aSub: InevTag;
     aChangeType: TevChangeType);
     {* Саб добавлен/удален. }
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   function COMQueryInterface(const IID: Tl3GUID;
    out Obj): Tl3HResult; override;
     {* Реализация запроса интерфейса }
 public
 // overridden public methods
   procedure Changed; override;
     {* нотификация о завершении изменения состояния объекта. Для перекрытия и использования в потомках. }
 public
 // public methods
   constructor Create(const aDocument: Ik2Tag); reintroduce; virtual;
   class function Make(const aDocument: Ik2Tag): Il3Tree;
 end;//TevContentsTree

implementation

uses
  evContentsNodeFilter,
  SysUtils,
  l3Base,
  l3Nodes,
  l3Types,
  evNode,
  Block_Const,
  l3Interfaces,
  evContentsNodeFactory,
  l3TreeInterfaces
  ;

// start class TevContentsTree

procedure TevContentsTree.CreateRootChild(const aDocument: Ik2Tag);
//#UC START# *4EAE7B0803B7_4DFEEEA000DA_var*
//#UC END# *4EAE7B0803B7_4DFEEEA000DA_var*
begin
//#UC START# *4EAE7B0803B7_4DFEEEA000DA_impl*
 RootNode.InsertChild(TevContentsNodeFactory.CreateContentsNode(aDocument, nil, f_ContentsNodeFilter));
 with f_ContentsNodeFilter do
  ColorNode(RootNode.ChildNode);
//#UC END# *4EAE7B0803B7_4DFEEEA000DA_impl*
end;//TevContentsTree.CreateRootChild

constructor TevContentsTree.Create(const aDocument: Ik2Tag);
//#UC START# *4DFEF08201FC_4DFEEEA000DA_var*
var
 l_Root     : InevNode;
 l_RootNode : Il3SimpleRootNode;
//#UC END# *4DFEF08201FC_4DFEEEA000DA_var*
begin
//#UC START# *4DFEF08201FC_4DFEEEA000DA_impl*
 f_ContentsNodeFilter := TevContentsNodeFilter.Make(aDocument);
 l_RootNode := TevContentsNodeFactory.CreateRoot;
 inherited Create;
 Set_RootNode(l_RootNode);
 CreateRootChild(aDocument);
//#UC END# *4DFEF08201FC_4DFEEEA000DA_impl*
end;//TevContentsTree.Create

class function TevContentsTree.Make(const aDocument: Ik2Tag): Il3Tree;
//#UC START# *4DFEF0A30330_4DFEEEA000DA_var*
var
 l_CT : TevContentsTree;
//#UC END# *4DFEF0A30330_4DFEEEA000DA_var*
begin
//#UC START# *4DFEF0A30330_4DFEEEA000DA_impl*
 l_CT := Create(aDocument);
 try
  Result := l_CT;
  l_CT.CommonExpanded := True;
 finally
  l3Free(l_CT);
 end;//try..finally
//#UC END# *4DFEF0A30330_4DFEEEA000DA_impl*
end;//TevContentsTree.Make

procedure TevContentsTree.SubChanged(const aSub: InevTag;
  aChangeType: TevChangeType);
//#UC START# *48EDB20501DD_4DFEEEA000DA_var*

  function lp_InParaEX(const anAtom  : Ik2Tag;
                       aTypeID       : Long;
                       out theParent : Ik2Tag): Boolean;
  var
   l_Parent : Ik2Tag;
  begin
   Result := false;
   l_Parent := anAtom.Owner;
   while (l_Parent <> nil) AND l_Parent.IsValid do
   begin
    if l_Parent.InheritsFrom(aTypeID) then
    begin
     theParent := l_Parent;
     Result := True;
     Break;
    end;//l_Parent.IhneritsFrom(aTypeID)
    l_Parent := l_Parent.Owner;
   end;//while l_Parent.IsValid
  end;

var
 l_Node        : InevNode;
 l_Root        : InevNode;
 l_Expanded    : Boolean;
 l_ParentBlock : InevTag;
//#UC END# *48EDB20501DD_4DFEEEA000DA_var*
begin
//#UC START# *48EDB20501DD_4DFEEEA000DA_impl*
 if aSub.IsValid then
 begin
  if aChangeType = ev_chtDocument then
  begin
   if Supports(Get_RootNode, InevNode, l_Root) then
   begin
    l_Root.ReleaseChilds;
    f_ContentsNodeFilter.ChangeDocument(aSub);
    CreateRootChild(aSub);
   end; // if Supports(Get_RootNode, InevNode, l_Root) then
   Exit;
  end; // if aChangeType = ev_chtDcoument then
  if Supports(RootNode, InevNode, l_Root) then
  begin
   if aChangeType = ev_chtAdded then
   begin
    f_ContentsNodeFilter.CheckTagList;
    lp_InParaEX(aSub, k2_idBlock, l_ParentBlock);
    if l_ParentBlock <> nil then
     if not l_ParentBlock.IsValid then //Нет смысла искать сам блок в дереве (если использовать _evInPara), если он только что добавился...
      l_ParentBlock := nil;
   end // if anAdded then
   else
   begin
    l_ParentBlock := aSub;
    f_ContentsNodeFilter.AddFilterTag(aSub);
   end;
   l_Node := FindNodeByTag(l_Root, l_ParentBlock, imExpandOnly);
   if l_Node <> nil then
   begin
    if aChangeType = ev_chtDeleted then
     l_Node := l_Node.ParentNode;
    if (l_Node <> nil) and l_Node.HasChild then
    begin
     l_Expanded := IsExpanded(l_Node);
     l_Node.Changing;
     try
      l_Node.ReleaseChilds;
      if l_Expanded then
       ChangeExpand(l_Node, sbSelect);
     finally
      l_Node.Changed;
     end;
    end // if (l_Node <> nil) and l_Node.HasChild then
    else
     // V - http://mdp.garant.ru/pages/viewpage.action?pageId=300028777
     if (l_Node <> nil) and (l_Node.GetLevel = 1) and (aChangeType = ev_chtAdded) then
      l_Node.ReleaseChilds;
   end; // if l_Node <> nil then
  end; // if Supports(RootNode, InevNode, l_Root) then
 end; // if aSub.IsValid then
//#UC END# *48EDB20501DD_4DFEEEA000DA_impl*
end;//TevContentsTree.SubChanged

procedure TevContentsTree.Cleanup;
//#UC START# *479731C50290_4DFEEEA000DA_var*
//#UC END# *479731C50290_4DFEEEA000DA_var*
begin
//#UC START# *479731C50290_4DFEEEA000DA_impl*
 inherited;
 f_ContentsNodeFilter := nil;
//#UC END# *479731C50290_4DFEEEA000DA_impl*
end;//TevContentsTree.Cleanup

procedure TevContentsTree.Changed;
//#UC START# *4A5CC00B03D5_4DFEEEA000DA_var*
//#UC END# *4A5CC00B03D5_4DFEEEA000DA_var*
begin
//#UC START# *4A5CC00B03D5_4DFEEEA000DA_impl*
 try
  inherited;
 except
  on EDoChangedAlreadyDone do ;
 end;
//#UC END# *4A5CC00B03D5_4DFEEEA000DA_impl*
end;//TevContentsTree.Changed

function TevContentsTree.COMQueryInterface(const IID: Tl3GUID;
  out Obj): Tl3HResult;
//#UC START# *4A60B23E00C3_4DFEEEA000DA_var*
//#UC END# *4A60B23E00C3_4DFEEEA000DA_var*
begin
//#UC START# *4A60B23E00C3_4DFEEEA000DA_impl*
 if IID.EQ(InevContentsNodeFilter) then
 begin
  InevContentsNodeFilter(Obj) := f_ContentsNodeFilter;
  Result.SetOk;
 end
 else
  Result := inherited COMQueryInterface(IID, Obj);
//#UC END# *4A60B23E00C3_4DFEEEA000DA_impl*
end;//TevContentsTree.COMQueryInterface

end.