unit k2AttrTree;

{ $Id: k2AttrTree.pas,v 1.1 2007/09/06 14:16:42 fireton Exp $}

// $Log: k2AttrTree.pas,v $
// Revision 1.1  2007/09/06 14:16:42  fireton
// - отвязываем l3 от k2
//

interface
uses
 l3Interfaces,
 l3TreeInterfaces,
 l3Tree_TLB,
 
 k2Interfaces;


procedure SetAttrToTree(aTree : Il3Tree; aAttr : Ik2Tag);

  {* - Select leaf of Tree by handles of the tag children. }

procedure GetAttrFromTree(const aTree : Il3Tree; aAttrTag : Ik2Tag; aOp: Il3OpPack = nil); overload;

implementation
uses
 k2Tags;

resourcestring
 estrWrongAttrValue = 'Неверное значение атрибута!';

procedure SetAttrToTree(aTree : Il3Tree; aAttr : Ik2Tag);
var
 l_Handle  : Integer;
 I         : Integer;
 lCurNode  : Il3Node;
begin
 If aAttr = nil then
  Exit;
 for I := 0 to Pred(aAttr.ChildrenCount) do
 begin
  l_Handle := aAttr.Child[I].rLong(k2_tiHandle, -1);
  Assert(l_Handle > -1, estrWrongAttrValue);
  lCurNode := aTree.FindNodeByParam(aTree.RootNode, l_Handle, 0);
  aTree.SelectedNode[lCurNode] := True;
 end;
end;

procedure GetAttrFromTree(const aTree : Il3Tree; aAttrTag : Ik2Tag; aOp: Il3OpPack = nil);
var
 l_Tag: Ik2Tag;
 l_Handle: Longint;
 I: Integer;
 lCurNode  : Il3Node;
begin
 if (aTree = nil) or (aAttrTag = nil) then
  Exit;
 // сначала удалим из тега то, чего нет в дереве
 I := 0;
 while I < aAttrTag.ChildrenCount do
 begin
  l_Handle := aAttrTag.Child[I].rLong(k2_tiHandle, -1);
  Assert(l_Handle > -1, estrWrongAttrValue);
  lCurNode := aTree.FindNodeByParam(aTree.RootNode, l_Handle, 0);
  if aTree.SelectedNode[lCurNode] then
   Inc(I)
  else
   aAttrTag.DeleteChild(I, aOp);
 end;
 // теперь внесем в тег то, чего там нет, из дерева...
 lCurNode := nil;
 repeat
  lCurNode := aTree.GetNextSelect(lCurNode);
  if lCurNode = nil then
   break;
  l_Handle := (lCurNode as Il3HandleNode).Handle;
  if not aAttrTag.rAtom([k2_tiChildren, k2_tiHandle, l_Handle]).IsValid then
  begin
   l_Tag := aAttrTag.TagType.ArrayProp[k2_tiChildren].DefaultChildType.MakeTag;
   l_Tag.IntWC[k2_tiHandle, aOp] := l_Handle;
   aAttrTag.AddChild(l_Tag, aOp);
  end;
 until false;
end;

end.
