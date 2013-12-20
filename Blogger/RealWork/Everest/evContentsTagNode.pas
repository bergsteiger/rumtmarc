unit evContentsTagNode;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Инишев Д.А.
// Модуль: "w:/common/components/gui/Garant/Everest/evContentsTagNode.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::ContentsTree::TevContentsTagNode
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
  l3TreeInterfaces,
  l3Tree_TLB,
  nevTools,
  evInternalInterfaces,
  evContentsNode,
  l3Interfaces,
  l3IID
  ;

type
 TevContentsTagNode = class(TevContentsNode, Il3HandleNode)
 private
 // private fields
   f_Filter : InevContentsNodeFilter;
   f_Tag : Ik2Tag;
    {* Узел тэга.}
 private
 // private methods
   procedure MakeChildNode(const aTag: Ik2Tag);
     {* Создает новую ноду. }
   procedure CheckTable(const aTag: Ik2Tag);
     {* Проверяет таблицу на метки. }
 protected
 // property methods
   function pm_GetDocument: Ik2Tag;
 protected
 // realized methods
   function Get_Handle: Integer;
   procedure Set_Handle(aValue: Integer);
   procedure DoTryGetChildren; override;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   function GetAsPCharLen: Tl3WString; override;
   function COMQueryInterface(const IID: Tl3GUID;
    out Obj): Tl3HResult; override;
     {* Реализация запроса интерфейса }
   procedure DoRemove; override;
 protected
 // protected methods
   function GetPara: InevTag;
     {* Получить параграф, на который ссылается узел. }
   function MakeAndInsertNode(const aNode: Il3Node;
     const aTag: Ik2Tag;
     const aSub: Ik2Tag): Il3Node;
     {* Чисто обобщающая функция вставки. }
   function GetLayerID: Integer;
   function GetHandle: Integer; virtual;
 public
 // public methods
   constructor Create(const aTag: Ik2Tag;
    const aFilter: InevContentsNodeFilter); reintroduce; virtual;
   class function Make(const aTag: Ik2Tag;
    const aFilter: InevContentsNodeFilter): Il3Node; virtual;
 public
 // public properties
   property Document: Ik2Tag
     read pm_GetDocument;
 end;//TevContentsTagNode

implementation

uses
  l3InterfacesMisc,
  l3Types,
  SysUtils,
  k2Tags,
  Block_Const,
  Table_Const,
  evdTypes,
  k2Base,
  Document_Const,
  Sub_Const,
  LeafPara_Const,
  l3Base,
  evDocumentPart,
  evContentsNodeFactory
  ;

// start class TevContentsTagNode

procedure TevContentsTagNode.MakeChildNode(const aTag: Ik2Tag);
//#UC START# *4DFF17350370_4DFEF1A701F9_var*

 function FindSub(const aSub: Ik2Tag; anIndex: Integer): Boolean;
 var
  l_Tag  : Ik2Tag;
  l_Node : Il3Node;
 begin
  if NeedCreate then
  begin
   if ChildNode <> nil then
   begin
    if not (Supports(ChildNode, Ik2Tag, l_Tag) and l_Tag.IsSame(aSub)) then
     MakeAndInsertNode(nil, aTag, aSub);
   end
   else
   begin
    l_Node := MakeAndInsertNode(nil, aTag, aSub);
    Set_ChildNode(l_Node);
   end;
  end; //if not f_OnlyCheck then
  Result := not NotReady;
 end;

var
 l_Tag  : Ik2Tag;
 l_Node : Il3Node;
//#UC END# *4DFF17350370_4DFEF1A701F9_var*
begin
//#UC START# *4DFF17350370_4DFEF1A701F9_impl*
 l_Node := nil;
 if aTag.InheritsFrom(k2_idBlock) then
 begin
  if NeedCreate then
  begin
   if ChildNode <> nil then
   begin
    if not (Supports(ChildNode, Ik2Tag, l_Tag) and l_Tag.IsSame(aTag)) then
     MakeAndInsertNode(nil, aTag, nil)
   end
   else
   begin
    l_Node := MakeAndInsertNode(nil, aTag, nil);
    Set_ChildNode(l_Node);
   end;
  end; //if not f_OnlyCheck then
 end
 else
  if aTag.InheritsFrom(k2_idTable) then
   CheckTable(aTag)
  else
   if aTag.InheritsFrom(k2_idLeafPara) then
    aTag.rAtomEx([k2_tiSubs,
                  k2_tiChildren, k2_tiHandle, ev_sbtSub]).IterateChildrenF(k2L2TIA(@FindSub));
//#UC END# *4DFF17350370_4DFEF1A701F9_impl*
end;//TevContentsTagNode.MakeChildNode

procedure TevContentsTagNode.CheckTable(const aTag: Ik2Tag);
//#UC START# *4DFF1768028A_4DFEF1A701F9_var*

 function lp_CheckRow(const aRow: Ik2Tag; anIndex: Long): Boolean;

  function lp_CheckCell(const aCell: Ik2Tag; anIndex: Long): Boolean;

   function lp_CheckCellChild(const aCellChild: Ik2Tag; anIndex: Long): Boolean;
   begin
    MakeChildNode(aCellChild);
    Result := not (NotReady and (ChildNode <> nil));
   end;

  begin
   aCell.IterateChildrenF(k2L2TIA(@lp_CheckCellChild));
   Result := not (NotReady and (ChildNode <> nil));
  end;

 begin
  aRow.IterateChildrenF(k2L2TIA(@lp_CheckCell));
  Result := not (NotReady and (ChildNode <> nil));
 end;

//#UC END# *4DFF1768028A_4DFEF1A701F9_var*
begin
//#UC START# *4DFF1768028A_4DFEF1A701F9_impl*
 aTag.IterateChildrenF(k2L2TIA(@lp_CheckRow));
//#UC END# *4DFF1768028A_4DFEF1A701F9_impl*
end;//TevContentsTagNode.CheckTable

function TevContentsTagNode.GetPara: InevTag;
//#UC START# *4DFF1D6203A6_4DFEF1A701F9_var*
//#UC END# *4DFF1D6203A6_4DFEF1A701F9_var*
begin
//#UC START# *4DFF1D6203A6_4DFEF1A701F9_impl*
 Result := f_Tag;
//#UC END# *4DFF1D6203A6_4DFEF1A701F9_impl*
end;//TevContentsTagNode.GetPara

function TevContentsTagNode.MakeAndInsertNode(const aNode: Il3Node;
  const aTag: Ik2Tag;
  const aSub: Ik2Tag): Il3Node;
//#UC START# *4DFF1DDA0163_4DFEF1A701F9_var*
var
 l_Node       : Il3Node;
 l_NeedCreate : Boolean;
//#UC END# *4DFF1DDA0163_4DFEF1A701F9_var*
begin
//#UC START# *4DFF1DDA0163_4DFEF1A701F9_impl*
 if aSub = nil then
  l_NeedCreate := f_Filter.NeedCreate(aTag)
 else
  l_NeedCreate := f_Filter.NeedCreate(aSub);
 if l_NeedCreate then
 begin
  l_Node := TevContentsNodeFactory.CreateContentsNode(aTag, aSub, f_Filter);
  try
   Result := InsertChildBefore(aNode, l_Node)
  finally
   l_Node := nil;
  end;
  IncThisChildrenCount;
  f_Filter.ColorNode(Result);
 end // if l_NeedCreate then
//#UC END# *4DFF1DDA0163_4DFEF1A701F9_impl*
end;//TevContentsTagNode.MakeAndInsertNode

function TevContentsTagNode.pm_GetDocument: Ik2Tag;
//#UC START# *4DFF1CB103D3_4DFEF1A701F9get_var*
var
 l_Tag : Ik2Tag;
//#UC END# *4DFF1CB103D3_4DFEF1A701F9get_var*
begin
//#UC START# *4DFF1CB103D3_4DFEF1A701F9get_impl*
 Result := k2NullTag;
 l_Tag := f_Tag;
 while l_Tag.IsValid do
 begin
  if l_Tag.InheritsFrom(k2_idDocument) then
  begin
   Result := l_Tag.Box;
   Exit;
  end;{k2_idDocument}
  l_Tag := l_Tag.Owner;
 end;//while l_Tag.IsValid
//#UC END# *4DFF1CB103D3_4DFEF1A701F9get_impl*
end;//TevContentsTagNode.pm_GetDocument

constructor TevContentsTagNode.Create(const aTag: Ik2Tag;
  const aFilter: InevContentsNodeFilter);
//#UC START# *4DFF1D17010D_4DFEF1A701F9_var*
//#UC END# *4DFF1D17010D_4DFEF1A701F9_var*
begin
//#UC START# *4DFF1D17010D_4DFEF1A701F9_impl*
 f_Tag := aTag;
 f_Filter := aFilter;
 inherited Create;
//#UC END# *4DFF1D17010D_4DFEF1A701F9_impl*
end;//TevContentsTagNode.Create

class function TevContentsTagNode.Make(const aTag: Ik2Tag;
  const aFilter: InevContentsNodeFilter): Il3Node;
//#UC START# *4DFF1D3501C1_4DFEF1A701F9_var*
var
 l_RCN: TevContentsTagNode;
//#UC END# *4DFF1D3501C1_4DFEF1A701F9_var*
begin
//#UC START# *4DFF1D3501C1_4DFEF1A701F9_impl*
 l_RCN := TevContentsTagNode.Create(aTag, aFilter);
 try
  Result := l_RCN;
 finally
  l3Free(l_RCN);
 end;
//#UC END# *4DFF1D3501C1_4DFEF1A701F9_impl*
end;//TevContentsTagNode.Make

function TevContentsTagNode.GetLayerID: Integer;
//#UC START# *4DFF1E5C023F_4DFEF1A701F9_var*
//#UC END# *4DFF1E5C023F_4DFEF1A701F9_var*
begin
//#UC START# *4DFF1E5C023F_4DFEF1A701F9_impl*
 with f_Tag do
  if InheritsFrom(k2_idBlock) then
   Result := rLong(k2_tiLayerID, ev_sbtSub)
  else
   Result := ev_sbtSub;
//#UC END# *4DFF1E5C023F_4DFEF1A701F9_impl*
end;//TevContentsTagNode.GetLayerID

function TevContentsTagNode.GetHandle: Integer;
//#UC START# *4DFF2034008D_4DFEF1A701F9_var*
//#UC END# *4DFF2034008D_4DFEF1A701F9_var*
begin
//#UC START# *4DFF2034008D_4DFEF1A701F9_impl*
 Result := f_Tag.IntA[k2_tiHandle];
//#UC END# *4DFF2034008D_4DFEF1A701F9_impl*
end;//TevContentsTagNode.GetHandle

function TevContentsTagNode.Get_Handle: Integer;
//#UC START# *46827CAF03CD_4DFEF1A701F9get_var*
//#UC END# *46827CAF03CD_4DFEF1A701F9get_var*
begin
//#UC START# *46827CAF03CD_4DFEF1A701F9get_impl*
 Result := GetHandle;
//#UC END# *46827CAF03CD_4DFEF1A701F9get_impl*
end;//TevContentsTagNode.Get_Handle

procedure TevContentsTagNode.Set_Handle(aValue: Integer);
//#UC START# *46827CAF03CD_4DFEF1A701F9set_var*
//#UC END# *46827CAF03CD_4DFEF1A701F9set_var*
begin
//#UC START# *46827CAF03CD_4DFEF1A701F9set_impl*
//#UC END# *46827CAF03CD_4DFEF1A701F9set_impl*
end;//TevContentsTagNode.Set_Handle

procedure TevContentsTagNode.DoTryGetChildren;
//#UC START# *4DFF03AF01A1_4DFEF1A701F9_var*

 function lp_CheckTag(const aTag: Ik2Tag; anIndex: Long): Boolean;
 begin
  MakeChildNode(aTag);
  Result := not (NotReady and (ChildNode <> nil));
 end;

//#UC END# *4DFF03AF01A1_4DFEF1A701F9_var*
begin
//#UC START# *4DFF03AF01A1_4DFEF1A701F9_impl*
 f_Tag.IterateChildrenF(k2L2TIA(@lp_CheckTag));
//#UC END# *4DFF03AF01A1_4DFEF1A701F9_impl*
end;//TevContentsTagNode.DoTryGetChildren

procedure TevContentsTagNode.Cleanup;
//#UC START# *479731C50290_4DFEF1A701F9_var*
//#UC END# *479731C50290_4DFEF1A701F9_var*
begin
//#UC START# *479731C50290_4DFEF1A701F9_impl*
 f_Filter := nil;
 inherited;
 f_Tag := nil;
//#UC END# *479731C50290_4DFEF1A701F9_impl*
end;//TevContentsTagNode.Cleanup

function TevContentsTagNode.GetAsPCharLen: Tl3WString;
//#UC START# *47A869BB02DE_4DFEF1A701F9_var*
//#UC END# *47A869BB02DE_4DFEF1A701F9_var*
begin
//#UC START# *47A869BB02DE_4DFEF1A701F9_impl*
 Result := evGetBlockName(f_Tag).AsWStr;
//#UC END# *47A869BB02DE_4DFEF1A701F9_impl*
end;//TevContentsTagNode.GetAsPCharLen

function TevContentsTagNode.COMQueryInterface(const IID: Tl3GUID;
  out Obj): Tl3HResult;
//#UC START# *4A60B23E00C3_4DFEF1A701F9_var*
var
 l_Tag      : Ik2Tag;
 l_Document : InevPara;
 l_SubList  : InevSubList;
 l_Sub      : IevSub;
//#UC END# *4A60B23E00C3_4DFEF1A701F9_var*
begin
//#UC START# *4A60B23E00C3_4DFEF1A701F9_impl*
 Result.SetNoInterface;
 if IID.EQ(Ik2Tag) then
 begin
  Ik2Tag(Obj) := f_Tag;
  Result.SetOk;
  Exit;
 end
 else
 if IID.EQ(IevSub) then
 begin
  l_Tag := f_Tag;
  if l_Tag.InheritsFrom(k2_idBlock) then
  begin
   if Document.QT(InevPara, l_Document, nil) then 
   begin
    if (l_Document <> nil) then
    begin
     l_SubList := l_Document.MainSubList;
     if (l_SubList <> nil) then
      try
       with l_Tag.Attr[k2_tiHandle] do
        if IsValid then begin
         IevSub(Obj) := l_SubList.BlockEx[AsLong, GetLayerID];
         if (IevSub(Obj) <> nil) then
         begin
          Result.SetOk;
          Exit;
         end;{IevSub(Obj) <> nil}
        end;{IsValid}
      finally
       l_SubList := nil;
      end;{try..finally}
    end;//l_Document <> nil
   end
   else
    Result.SetNoInterface;
  end//..k2_idBlock..
  else
  if l_Tag.InheritsFrom(k2_idSub) then
  begin
   if Document.QT(InevPara, l_Document, nil{Processor}) then
   begin
    if (l_Document <> nil) then
    begin
     l_SubList := l_Document.MainSubList;
     if (l_SubList <> nil) then
      try
       with l_Tag.Attr[k2_tiHandle] do
        if IsValid then
        begin
         IevSub(Obj) := l_SubList.SubEx[AsLong, GetLayerID];
         if (IevSub(Obj) <> nil) then
         begin
          Result.SetOk;
          Exit;
         end;{IevSub(Obj) <> nil}
        end;{IsValid}
      finally
       l_SubList := nil;
      end;{try..finally}
    end;//l_Document <> nil
   end
   else
    Result.SetNoInterface;
  end;//..k2_idSub..
 end//..IevSub..
 else
 if IID.EQ(IevDocumentPart) then
 begin
  if l3IOk(QueryInterface(IevSub, l_Sub)) then
   try
    Result := Tl3HResult_C(l_Sub.QueryInterface(IevDocumentPart, Obj));
    Exit;
   finally
    l_Sub := nil;
   end;{try..finally}
  {IevDocumentPart}
 end;
 Result := inherited COMQueryInterface(IID, Obj);
//#UC END# *4A60B23E00C3_4DFEF1A701F9_impl*
end;//TevContentsTagNode.COMQueryInterface

procedure TevContentsTagNode.DoRemove;
//#UC START# *4DFF218D002E_4DFEF1A701F9_var*
var
 l_ParentNode : Il3InternalNode;
//#UC END# *4DFF218D002E_4DFEF1A701F9_var*
begin
//#UC START# *4DFF218D002E_4DFEF1A701F9_impl*
 if ParentNode = nil then
  Exit;
 Changing;
 try
  Flags := Flags or nfWasDisappear;
  Notify(ntDelete, Self);
  try
   l_ParentNode := (ParentNode as Il3InternalNode);
   if IsFirst then
    if IsLast then
     l_ParentNode.ChildNode := nil
    else
     l_ParentNode.ChildNode := NextNode;

   if l_ParentNode.Child <> nil then
   begin
    (NextNode as Il3InternalNode).PrevNode := PrevNode;
    (PrevNode as Il3InternalNode).NextNode := NextNode;
   end;

   if l3IEQ(Self, NextNode) then
   begin
    Set_NextNode(nil);
    Set_PrevNode(nil);
   end;
   ParentNode.IncAllChildrenCount(-(AllChildrenCount + 1));
   //ParentNode := nil; Changed send to ParentNode!!!
  finally
   Notify(ntDeleteDone, Self);
  end;
 finally
  Changed;
 end;
 Set_ParentNode(nil);
 Free;
//#UC END# *4DFF218D002E_4DFEF1A701F9_impl*
end;//TevContentsTagNode.DoRemove

end.