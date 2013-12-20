unit nsContentsTree;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1DocumentProcessing"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1DocumentProcessing/nsContentsTree.pas"
// Начат: 2005/09/05 08:12:25
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Core::Common::F1DocumentProcessing::F1DocumentContainers::TnsContentsTree
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  DynamicTreeUnit,
  k2Interfaces,
  l3TreeInterfaces,
  nsDataResetTreeStruct,
  DocumentInterfaces,
  nsINodeWrapBase,
  nsFilterableTreeStruct,
  afwInterfaces,
  nevBase
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TnsContentsTree = class(TnsDataResetTreeStruct, InsContentsTree)
 private
 // private fields
   f_NeedResetRoot : Boolean;
   f_RootWasResetted : Boolean;
   f_Document : Ik2Tag;
    {* Документ.}
 protected
 // realized methods
   function ReAqurieUnfilteredRoot: INodeBase; override;
   function FindBlock(aBlockID: Integer): Il3SimpleNode;
   function NeedResetRoot: Boolean;
   procedure ResetRoot(const aDocument: InevTag;
    const aRoot: Il3SimpleRootNode);
   function RootResetted: Boolean;
   procedure DataReceived;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure MakeRootNode(const aRoot: INodeBase); override;
   function RootNodeClass: RnsINodeWrap; override;
     {* определяет класс обертки для Root }
   function MakeChildNode(const aChild: INodeBase): Il3SimpleNode; override;
   constructor CreateFiltered(const aNewRoot: INodeBase;
    aSource: TnsFilterableTreeStruct;
    const aFilters: Il3TreeFilters); override;
   function SettingsID: TafwSettingId; override;
   procedure BeforeReset; override;
   procedure ClearFields; override;
 public
 // public methods
   constructor Create(const aRoot: INodeBase;
    const aDocument: Ik2Tag); reintroduce;
   class function Make(const aRoot: INodeBase;
    const aDocument: Ik2Tag): Il3SimpleTree; reintroduce;
   class function MakeTagNode(const aDocument: Ik2Tag;
    const aChild: INodeBase): Il3SimpleNode;
 end;//TnsContentsTree
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  nsContentsNode,
  SysUtils,
  nsConst,
  nsParentedTagNode,
  nsTagNodeTools,
  k2Tags,
  Document_Const,
  CommentPara_Const,
  Block_Const,
  LeafPara_Const,
  Bookmark_Const,
  Sub_Const,
  DocumentUnit,
  nsTagNodeToolsNew,
  k2Base,
  k2Facade,
  LeafParaDecorationsHolder_Const
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TnsContentsTree

constructor TnsContentsTree.Create(const aRoot: INodeBase;
  const aDocument: Ik2Tag);
//#UC START# *490860BD0003_4683630000A0_var*
//#UC END# *490860BD0003_4683630000A0_var*
begin
//#UC START# *490860BD0003_4683630000A0_impl*
 Assert(aDocument <> nil);
 f_Document := aDocument;
 inherited Create(aRoot, False);
//#UC END# *490860BD0003_4683630000A0_impl*
end;//TnsContentsTree.Create

class function TnsContentsTree.Make(const aRoot: INodeBase;
  const aDocument: Ik2Tag): Il3SimpleTree;
var
 l_Inst : TnsContentsTree;
begin
 l_Inst := Create(aRoot, aDocument);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

class function TnsContentsTree.MakeTagNode(const aDocument: Ik2Tag;
  const aChild: INodeBase): Il3SimpleNode;
//#UC START# *49086150030C_4683630000A0_var*
var
 l_Provider : IDocumentTextProvider;
 l_Tag     : Ik2Tag;
 l_Path    : INodeIndexPath;
 l_ID      : Integer;
 l_Type    : Tk2Type;
//#UC END# *49086150030C_4683630000A0_var*
begin
//#UC START# *49086150030C_4683630000A0_impl*
 Result := nil;
 l_Tag := nil;
 try
  if Supports(aDocument, IDocumentTextProvider, l_Provider) then
   try
    if (aChild <> nil) then
    begin
     l_Type := k2.TypeTable[aChild.GetType];
     if (l_Type <> nil) then
     // - иначе - это скрытый корень дерева
     begin
      l_ID := aChild.GetNodeId;
      // http://mdp.garant.ru/pages/viewpage.action?pageId=235055410&focusedCommentId=235056286#comment-235056286
      if l_Type.InheritsFrom(k2_idSub) then
      begin
       if (l_ID = 0) then
        l_Tag := aDocument
       else
       begin
        l_Provider.FindBlockOrSub(l_ID, l_Path);
        l_Tag := nsTagByPath(aDocument, l_Path, true);
        if (l_Tag <> nil) then
        begin
(*         if l_Type.InheritsFrom(k2_idBlock) AND
            l_Tag.InheritsFrom(k2_idLeafParaDecorationsHolder) then
         begin
          Assert(l_Tag.ChildrenCount >= 2);
          l_Tag := l_Tag.Child[1];
         end;//l_Type.InheritsFrom(k2_idBlock)*)
         Assert(l_Tag.InheritsFrom(l_Type.ID), l_Tag.TagType.AsString + ' != ' + l_Type.AsString);
         Assert(l_Tag.IntA[k2_tiHandle] = l_ID, IntToStr(l_Tag.IntA[k2_tiHandle]) + ' != ' + IntToStr(l_ID));
        end;//l_Tag <> nil
       end;//l_ID = 0
      end//l_Type.InheritsFrom(k2_idSub)
      else
      begin
       Assert(false, 'Неверный тип метки - ' + l_Type.AsString);
      end;//l_Type.InheritsFrom(k2_idSub)
     end;//l_Type <> nil
     //l_Tag := TnsParentedTagNode.MakeNodeTag(Tf1TagDataFromIDocTagNodeProvider.Make(l_DocNode));
    end;//aChild <> nil
   finally
    l_Provider := nil;
   end//try..finally
  ;
  if (l_Tag <> nil) AND l_Tag.IsValid then
  begin
   if l_Tag.InheritsFrom(k2_idDocument) then
    Result := TnsDocumentNode.Make(aChild, aDocument, l_Tag)
   else
   if l_Tag.InheritsFrom(k2_idCommentPara) then
    Result := TnsContentsCommentNode.Make(aChild, aDocument, l_Tag)
   else
   if l_Tag.InheritsFrom(k2_idBlock) then
    Result := TnsRealBlockNode.Make(aChild, aDocument, l_Tag)
   else
   if l_Tag.InheritsFrom(k2_idLeafPara) then
    Result := TnsContentsLeafParaNode.Make(aChild, aDocument, l_Tag)
   else
   if l_Tag.InheritsFrom(k2_idBookmark) then
    Result := TnsBookmarkNode.Make(aChild, aDocument, l_Tag)
   else
   if l_Tag.InheritsFrom(k2_idSub) then
    Result := TnsContentsSubNode.Make(aChild, aDocument, l_Tag);
  end;//(l_Tag <> nil) AND l_Tag.IsValid
 finally
  l_Tag := nil;
 end;//try..finally
//#UC END# *49086150030C_4683630000A0_impl*
end;//TnsContentsTree.MakeTagNode

function TnsContentsTree.ReAqurieUnfilteredRoot: INodeBase;
//#UC START# *48FF64F60078_4683630000A0_var*
//#UC END# *48FF64F60078_4683630000A0_var*
begin
//#UC START# *48FF64F60078_4683630000A0_impl*
 Result := nil;
  // - оглавление приходит из документа, нет фиксированного места из которого
  //   всегда можно получить корень для оглавления.
 f_NeedResetRoot := True;
//#UC END# *48FF64F60078_4683630000A0_impl*
end;//TnsContentsTree.ReAqurieUnfilteredRoot

function TnsContentsTree.FindBlock(aBlockID: Integer): Il3SimpleNode;
//#UC START# *49085E9202C5_4683630000A0_var*
var
 l_Root: INodeBase;
 l_List: IFilterList;
 l_Path: INodeIndexPath;
 l_FoundNode: INodeBase;
//#UC END# *49085E9202C5_4683630000A0_var*
begin
//#UC START# *49085E9202C5_4683630000A0_impl*
 Result := nil;
 if Supports(f_Document, IDocumentTextProvider) then
 begin
  if (aBlockID = 0) then
   Result := Root.Child
  else
  begin
   l_List := nsCreateFilterForFindTagByID(k2_idBlock, aBlockID);
   if Supports(Root, INodeBase, l_Root) then
   begin
    l_Root.GetFirstFit(l_List, l_Path);
    if Assigned(l_Path) then
    begin
     l_Root.GetNodeByPath(l_Path, l_FoundNode);
     Result := MakeTagNode(f_Document, l_FoundNode);
    end//Assigned(l_Path)
    else
     Result := nil;
   end;//Supports(Root, INodeBase, l_Root)
  end;//aBlockID = 0
 end;//Supports(f_Document, IDocumentTextProvider)
//#UC END# *49085E9202C5_4683630000A0_impl*
end;//TnsContentsTree.FindBlock

function TnsContentsTree.NeedResetRoot: Boolean;
//#UC START# *49085EA001E8_4683630000A0_var*
//#UC END# *49085EA001E8_4683630000A0_var*
begin
//#UC START# *49085EA001E8_4683630000A0_impl*
 Result := f_NeedResetRoot;
//#UC END# *49085EA001E8_4683630000A0_impl*
end;//TnsContentsTree.NeedResetRoot

procedure TnsContentsTree.ResetRoot(const aDocument: InevTag;
  const aRoot: Il3SimpleRootNode);
//#UC START# *49085EAE0132_4683630000A0_var*
var
 l_Root: INodeBase;
 l_Sync: Integer;
//#UC END# *49085EAE0132_4683630000A0_var*
begin
//#UC START# *49085EAE0132_4683630000A0_impl*
 f_Document := aDocument;
 if Supports(aRoot, INodeBase, l_Root) then
 begin
  Changing;
  try
   f_RootWasResetted := True;
   MakeRootNode(GetFilteredRoot(l_Root, Filters, nil, l_Sync, true, true, False));
  finally
   Changed;
  end;
 end;
 f_NeedResetRoot := False;
//#UC END# *49085EAE0132_4683630000A0_impl*
end;//TnsContentsTree.ResetRoot

function TnsContentsTree.RootResetted: Boolean;
//#UC START# *49085EDA00CC_4683630000A0_var*
//#UC END# *49085EDA00CC_4683630000A0_var*
begin
//#UC START# *49085EDA00CC_4683630000A0_impl*
 Result := f_NeedResetRoot or f_RootWasResetted;
//#UC END# *49085EDA00CC_4683630000A0_impl*
end;//TnsContentsTree.RootResetted

procedure TnsContentsTree.DataReceived;
//#UC START# *49085EE502F1_4683630000A0_var*
//#UC END# *49085EE502F1_4683630000A0_var*
begin
//#UC START# *49085EE502F1_4683630000A0_impl*
 f_RootWasResetted := False;
//#UC END# *49085EE502F1_4683630000A0_impl*
end;//TnsContentsTree.DataReceived

procedure TnsContentsTree.Cleanup;
//#UC START# *479731C50290_4683630000A0_var*
//#UC END# *479731C50290_4683630000A0_var*
begin
//#UC START# *479731C50290_4683630000A0_impl*
 inherited;
 f_NeedResetRoot := False;
 f_RootWasResetted := False;
//#UC END# *479731C50290_4683630000A0_impl*
end;//TnsContentsTree.Cleanup

procedure TnsContentsTree.MakeRootNode(const aRoot: INodeBase);
//#UC START# *48FDDE69025A_4683630000A0_var*
//#UC END# *48FDDE69025A_4683630000A0_var*
begin
//#UC START# *48FDDE69025A_4683630000A0_impl*
 Root := TnsContentsRoot.Make(aRoot, f_Document) as Il3SimpleRootNode;
//#UC END# *48FDDE69025A_4683630000A0_impl*
end;//TnsContentsTree.MakeRootNode

function TnsContentsTree.RootNodeClass: RnsINodeWrap;
//#UC START# *48FEE3640227_4683630000A0_var*
//#UC END# *48FEE3640227_4683630000A0_var*
begin
//#UC START# *48FEE3640227_4683630000A0_impl*
 Result := TnsContentsRoot;
//#UC END# *48FEE3640227_4683630000A0_impl*
end;//TnsContentsTree.RootNodeClass

function TnsContentsTree.MakeChildNode(const aChild: INodeBase): Il3SimpleNode;
//#UC START# *48FEE50002EB_4683630000A0_var*
//#UC END# *48FEE50002EB_4683630000A0_var*
begin
//#UC START# *48FEE50002EB_4683630000A0_impl*
 Result := MakeTagNode(f_Document, aChild);
 if (Result = nil) then
  Result := TnsContentsNode.Make(aChild, f_Document);//inherited MakeChildNode(aChild);
//#UC END# *48FEE50002EB_4683630000A0_impl*
end;//TnsContentsTree.MakeChildNode

constructor TnsContentsTree.CreateFiltered(const aNewRoot: INodeBase;
  aSource: TnsFilterableTreeStruct;
  const aFilters: Il3TreeFilters);
//#UC START# *48FF458602EC_4683630000A0_var*
//#UC END# *48FF458602EC_4683630000A0_var*
begin
//#UC START# *48FF458602EC_4683630000A0_impl*
 if aSource is TnsContentsTree then
  f_Document := TnsContentsTree(aSource).f_Document;
 inherited;
//#UC END# *48FF458602EC_4683630000A0_impl*
end;//TnsContentsTree.CreateFiltered

function TnsContentsTree.SettingsID: TafwSettingId;
//#UC START# *48FF56D003E6_4683630000A0_var*
//#UC END# *48FF56D003E6_4683630000A0_var*
begin
//#UC START# *48FF56D003E6_4683630000A0_impl*
 Result := gi_cpContents;
//#UC END# *48FF56D003E6_4683630000A0_impl*
end;//TnsContentsTree.SettingsID

procedure TnsContentsTree.BeforeReset;
//#UC START# *48FF64E700E5_4683630000A0_var*
//#UC END# *48FF64E700E5_4683630000A0_var*
begin
//#UC START# *48FF64E700E5_4683630000A0_impl*
 inherited;
 f_NeedResetRoot := True;
//#UC END# *48FF64E700E5_4683630000A0_impl*
end;//TnsContentsTree.BeforeReset

procedure TnsContentsTree.ClearFields;
 {-}
begin
 f_Document := nil;
 inherited;
end;//TnsContentsTree.ClearFields

{$IfEnd} //not Admin AND not Monitorings

end.