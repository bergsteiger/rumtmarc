unit nsParentedTagNode;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "f1DocumentTagsImplementation"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/f1DocumentTagsImplementation/nsParentedTagNode.pas"
// Начат: 2005/06/23 16:38:20
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Базовые определения предметной области::LegalDomain::f1DocumentTagsImplementation::DocumentTagNodes::TnsParentedTagNode
//
// Тег над адаптерной нодой, представляющий ссылку на родителя
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  k2Interfaces,
  nsTagNodePrim,
  k2Base,
  F1TagDataProviderInterface,
  Classes
  ;

type
 _k2ParentedTagObject_Parent_ = TnsTagNodePrim;
 {$Include w:\common\components\rtl\Garant\K2\k2ParentedTagObject.imp.pas}
 TnsParentedTagNode = class(_k2ParentedTagObject_)
  {* Тег над адаптерной нодой, представляющий ссылку на родителя }
 public
 // public methods
   class function MakeNodeTag(const aNode: DocTagNodeType;
     const aParent: Ik2Tag = nil;
     aState: TnsNodeStates = []): Ik2Tag;
   constructor Create(aType: Tk2Type;
    const aNode: DocTagNodeType;
    const aParent: Ik2Tag;
    aState: TnsNodeStates); reintroduce; virtual;
 end;//TnsParentedTagNode

implementation

uses
  nsTagNode,
  k2Facade,
  QueryCard_Const,
  Document_Const,
  nsDocumentTagNodePrim,
  CommentPara_Const,
  Block_Const,
  ReqRow_Const,
  ReqCell_Const,
  ParaList_Const,
  ControlPara_Const,
  TextPara_Const,
  BitmapPara_Const,
  SectionBreak_Const,
  LeafPara_Const,
  SysUtils,
  nsSubNode,
  nsSectionBreakNode,
  nsTextParaNode,
  nsControlParaNode,
  nsBitmapParaNode,
  nsReqCellNode,
  nsReqRowNode,
  nsBlockNode,
  nsBlockNodePrim,
  nsLeafParaNode
  ;

type _Instance_R_ = TnsParentedTagNode;

{$Include w:\common\components\rtl\Garant\K2\k2ParentedTagObject.imp.pas}

// start class TnsParentedTagNode

class function TnsParentedTagNode.MakeNodeTag(const aNode: DocTagNodeType;
  const aParent: Ik2Tag = nil;
  aState: TnsNodeStates = []): Ik2Tag;
//#UC START# *4C6E60FE0011_467FCD4401BD_var*
var
 l_Tag  : TnsParentedTagNode;
 l_Type : Tk2Type;
//#UC END# *4C6E60FE0011_467FCD4401BD_var*
begin
//#UC START# *4C6E60FE0011_467FCD4401BD_impl*
 if (aNode = nil) then
  Result := k2NullTag
 else
 begin
  l_Type := k2.TypeTable[aNode.TypeID];
  if (l_Type = nil) then
   Result := k2NullTag
  else
  begin
   l_Tag := nil;
   if (aParent = nil) OR not aParent.IsValid then
   begin
    if l_Type.InheritsFrom(k2_idQueryCard) then
    begin
     //l_Tag := TnsQueryCardNode.CreatePrim(aNode)
     l_Tag := nil;
     Assert(false, 'Устаревший код');
    end//l_Type.InheritsFrom(k2_idQueryCard)
    else
    if l_Type.InheritsFrom(k2_idDocument) then
    begin
     //l_Tag := TnsDocumentTagNode.CreatePrim(aNode);
     l_Tag := nil;
     Assert(false, 'Устаревший код');
    end;//l_Type.InheritsFrom(k2_idDocument)
   end;//aParent = nil..
   if (l_Tag = nil) then
   begin
    if l_Type.InheritsFrom(k2_idDocument) then
     l_Tag := TnsDocumentTagNodePrim.Create(l_Type, aNode, aParent, aState)
    else
    if l_Type.InheritsFrom(k2_idCommentPara) then
    begin
     //l_Tag := TnsCommentNode.Create(l_Type, aNode, aParent, aState);
     l_Tag := nil;
     Assert(false, 'Устаревший код');
    end
    else
    if l_Type.InheritsFrom(k2_idBlock) then
     l_Tag := TnsBlockNode.Create(l_Type, aNode, aParent, aState)
    else
    if l_Type.InheritsFrom(k2_idReqRow) then
    begin
     l_Tag := TnsReqRowNode.Create(l_Type, aNode, aParent, aState);
    end//l_Type.InheritsFrom(k2_idReqRow)
    else
    if l_Type.InheritsFrom(k2_idReqCell) then
    begin
     l_Tag := TnsReqCellNode.Create(l_Type, aNode, aParent, aState);
    end//l_Type.InheritsFrom(k2_idReqCell)
    else
    if l_Type.InheritsFrom(k2_idParaList) then
     l_Tag := TnsParaListNode.Create(l_Type, aNode, aParent, aState)
    else
    if l_Type.InheritsFrom(k2_idControlPara) then
    begin
     l_Tag := TnsControlParaNode.Create(l_Type, aNode, aParent, aState)
    end//l_Type.InheritsFrom(k2_idControlPara)
    else
    if l_Type.InheritsFrom(k2_idTextPara) then
     l_Tag := TnsTextParaNode.Create(l_Type, aNode, aParent, aState)
    else
    if l_Type.InheritsFrom(k2_idBitmapPara) then
     l_Tag := TnsBitmapParaNode.Create(l_Type, aNode, aParent, aState)
    else
    if l_Type.InheritsFrom(k2_idSectionBreak) then
     l_Tag := TnsSectionBreakNode.Create(l_Type, aNode, aParent, aState)
    else
    if l_Type.InheritsFrom(k2_idLeafPara) then
     l_Tag := TnsLeafParaNode.Create(l_Type, aNode, aParent, aState)
    else
     l_Tag := Create(l_Type, aNode, aParent, aState);
   end;//l_Tag = nil
   try
    Result := l_Tag;
   finally
    FreeAndNil(l_Tag);
   end;//try..finally
  end;//l_Type = nil
 end;//aNode = nil
//#UC END# *4C6E60FE0011_467FCD4401BD_impl*
end;//TnsParentedTagNode.MakeNodeTag

constructor TnsParentedTagNode.Create(aType: Tk2Type;
  const aNode: DocTagNodeType;
  const aParent: Ik2Tag;
  aState: TnsNodeStates);
//#UC START# *4C6E60C80037_467FCD4401BD_var*
//#UC END# *4C6E60C80037_467FCD4401BD_var*
begin
//#UC START# *4C6E60C80037_467FCD4401BD_impl*
 Parent := aParent;
 inherited Create(aType, aNode, aState);
//#UC END# *4C6E60C80037_467FCD4401BD_impl*
end;//TnsParentedTagNode.Create

end.