unit nsAACDocumentContainerPrim;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "F1DocumentProcessing"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/F1DocumentProcessing/nsAACDocumentContainerPrim.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Core::Common::F1DocumentProcessing::F1DocumentContainers::TnsAACDocumentContainerPrim
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  k2Interfaces,
  evdTypes,
  bsTypesNew,
  nsF1DocumentContainer,
  nevTools,
  nevBase
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TnsBlockViewKinds = set of TevBlockViewKind;

 InsAACDocumentContainer = interface(IUnknown)
   ['{1701839E-CED5-46B4-B26A-42565DD13B4D}']
   function GotPos: TbsDocPos;
   function GotViewKind: TevBlockViewKind;
 end;//InsAACDocumentContainer

 TnsAACDocumentContainerPrim = {abstract} class(TnsF1DocumentContainer, InsAACDocumentContainer)
 private
 // private fields
   f_OriginalDocument : Ik2Tag;
    {* ����� ��� ���� ����� ������� ������ �� Provider'� ��������� � ��������}
   f_GotPos : TbsDocPos;
   f_GotViewKind : TevBlockViewKind;
 protected
 // realized methods
   function GotPos: TbsDocPos;
   function GotViewKind: TevBlockViewKind;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* ������� ������� ����� �������. }
   procedure InitFields; override;
   function ReplaceContainerInOwner(const aDocumentContainer: InevDocumentContainer): Boolean; override;
   function CanBePlacedInDocumentsCache: Boolean; override;
   function GetIsSame(const aContainer: InevDocumentContainer): Boolean; override;
   function GetDocument: InevTag; override;
   function CanFindParaAsNode: Boolean; override;
   procedure ClearFields; override;
   procedure TransformMadeDocument(var theDocument: InevTag); override;
     {* �������������� �������� � ��� ������������, �������� ��� � ��� ��� �������� ������� }
   function DocumentForFindPara: InevTag; override;
 protected
 // protected methods
   function AcceptableBlockViewKinds: TnsBlockViewKinds; virtual; abstract;
 end;//TnsAACDocumentContainerPrim
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Document_Const,
  k2Tags,
  Block_Const,
  nsBlockNode,
  SysUtils,
  F1TagDataProviderInterface,
  k2Base,
  nsTagNodeToolsNew,
  evParaTools,
  Sub_Const,
  LeafPara_Const
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TnsAACDocumentContainerPrim

function TnsAACDocumentContainerPrim.GotPos: TbsDocPos;
//#UC START# *5023F94B0206_500E758002C7_var*
//#UC END# *5023F94B0206_500E758002C7_var*
begin
//#UC START# *5023F94B0206_500E758002C7_impl*
 Result := f_GotPos;
//#UC END# *5023F94B0206_500E758002C7_impl*
end;//TnsAACDocumentContainerPrim.GotPos

function TnsAACDocumentContainerPrim.GotViewKind: TevBlockViewKind;
//#UC START# *5023F97100D4_500E758002C7_var*
//#UC END# *5023F97100D4_500E758002C7_var*
begin
//#UC START# *5023F97100D4_500E758002C7_impl*
 Result := f_GotViewKind;
//#UC END# *5023F97100D4_500E758002C7_impl*
end;//TnsAACDocumentContainerPrim.GotViewKind

procedure TnsAACDocumentContainerPrim.Cleanup;
//#UC START# *479731C50290_500E758002C7_var*
//#UC END# *479731C50290_500E758002C7_var*
begin
//#UC START# *479731C50290_500E758002C7_impl*
 Document := nil;
 inherited;
//#UC END# *479731C50290_500E758002C7_impl*
end;//TnsAACDocumentContainerPrim.Cleanup

procedure TnsAACDocumentContainerPrim.InitFields;
//#UC START# *47A042E100E2_500E758002C7_var*
//#UC END# *47A042E100E2_500E758002C7_var*
begin
//#UC START# *47A042E100E2_500E758002C7_impl*
 inherited;
//#UC END# *47A042E100E2_500E758002C7_impl*
end;//TnsAACDocumentContainerPrim.InitFields

function TnsAACDocumentContainerPrim.ReplaceContainerInOwner(const aDocumentContainer: InevDocumentContainer): Boolean;
//#UC START# *47F1024C0150_500E758002C7_var*
//#UC END# *47F1024C0150_500E758002C7_var*
begin
//#UC START# *47F1024C0150_500E758002C7_impl*
 Result := inherited ReplaceContainerInOwner(aDocumentContainer);
 // - ��. ����������� � TnsChangesBetweenEditionsDocumentContainer.CanBePlacedInDocumentsCache
 //Result := false;
//#UC END# *47F1024C0150_500E758002C7_impl*
end;//TnsAACDocumentContainerPrim.ReplaceContainerInOwner

function TnsAACDocumentContainerPrim.CanBePlacedInDocumentsCache: Boolean;
//#UC START# *47F10C6E0240_500E758002C7_var*
//#UC END# *47F10C6E0240_500E758002C7_var*
begin
//#UC START# *47F10C6E0240_500E758002C7_impl*
 //Result := inherited CanBePlacedInDocumentsCache;
 Result := false;
 // http://mdp.garant.ru/pages/viewpage.action?pageId=305962757
 // - �� ����� ���� ������� - �������, �.�. ���� � TnevDocumentContainer.IsSame
 //   ��������� ��� � ����� ����������,
 //   � � TnsChangesBetweenEditionsDocumentContainer.GetIsSame ��� � ������ ��������
 //   ���� �� ��� ��������� ������ ���������� ��� � ��� ����������.
 // !!! ���� � ��� �������� ����� � ������� - ��� ��� �� �����������
//#UC END# *47F10C6E0240_500E758002C7_impl*
end;//TnsAACDocumentContainerPrim.CanBePlacedInDocumentsCache

function TnsAACDocumentContainerPrim.GetIsSame(const aContainer: InevDocumentContainer): Boolean;
//#UC START# *47F279E9037A_500E758002C7_var*
var
 l_Cont : InsAACDocumentContainer;
//#UC END# *47F279E9037A_500E758002C7_var*
begin
//#UC START# *47F279E9037A_500E758002C7_impl*
 Result := inherited GetIsSame(aContainer);
 if Result then
  if Supports(aContainer, InsAACDocumentContainer, l_Cont) then
   try
    Result := (Self.f_GotPos.EQ(l_Cont.GotPos) AND
               (Self.f_GotViewKind = l_Cont.GotViewKind));
   finally
    l_Cont := nil;
   end//try..finally
  else
   Result := false;
//#UC END# *47F279E9037A_500E758002C7_impl*
end;//TnsAACDocumentContainerPrim.GetIsSame

function TnsAACDocumentContainerPrim.GetDocument: InevTag;
//#UC START# *47F27DA80172_500E758002C7_var*
(*var
 l_D : Ik2Tag;
 l_Index : Integer;
 l_Child : Ik2Tag;
 l_BlockNode : TnsBlockNode;*)
//#UC END# *47F27DA80172_500E758002C7_var*
begin
//#UC START# *47F27DA80172_500E758002C7_impl*
 Result := inherited GetDocument;
(* if not f_GotDocument then
 begin
  f_GotDocument := true;
  try
   f_OriginalDocument := Result;
   l_D := Tk2Type(Result.TagType).MakeTag;
   try
    for l_Index := 0 to Pred(Result.ChildrenCount) do
    begin
     l_Child := Result.Child[l_Index];
     try
      if l_Child.InheritsFrom(k2_idBlock) then
       if (l_Child.IntA[k2_tiViewKind] = Ord(BlockViewKind)) then
       begin
        l_BlockNode := TnsBlockNode.Create(Tk2Type(l_Child.TagType), l_Child As If1TagDataProvider, l_D, []);
        try
         l_Child := l_BlockNode;
         l_D.AddChild(l_Child);
         Assert(l_Child.Owner.IsSame(l_D));
        finally
         FreeAndNil(l_BlockNode);
        end;//try..finally
 //       l_D.AddChild(l_Child);
        break;
       end;//l_Child.IntA[k2_tiViewKind] = Ord(BlockViewKind)
     finally
      l_Child := nil;
     end;//try..finally
    end;//for l_Index
    l_D.IntA[k2_tiExternalHandle] := Result.IntA[k2_tiExternalHandle];
    Result := l_D;
   finally
    l_D := nil;
   end;//try..finally
  finally
   Document := Result;
  end;//try..finally
 end;//not f_GotDocument*)
//#UC END# *47F27DA80172_500E758002C7_impl*
end;//TnsAACDocumentContainerPrim.GetDocument

function TnsAACDocumentContainerPrim.CanFindParaAsNode: Boolean;
//#UC START# *4A79B7020303_500E758002C7_var*
//#UC END# *4A79B7020303_500E758002C7_var*
begin
//#UC START# *4A79B7020303_500E758002C7_impl*
 // ���� false, � ���������� �� ��������� ������ para ��� �������� �� ������
 // http://mdp.garant.ru/pages/viewpage.action?pageId=420416039
 //Result := true; (*false;*)
 Result := false;
 // - ������ ���� �������, �.�. http://mdp.garant.ru/pages/viewpage.action?pageId=260447845&focusedCommentId=459281807#comment-459281807
//#UC END# *4A79B7020303_500E758002C7_impl*
end;//TnsAACDocumentContainerPrim.CanFindParaAsNode

procedure TnsAACDocumentContainerPrim.ClearFields;
 {-}
begin
 f_OriginalDocument := nil;
 Finalize(f_GotPos);
 inherited;
end;//TnsAACDocumentContainerPrim.ClearFields

procedure TnsAACDocumentContainerPrim.TransformMadeDocument(var theDocument: InevTag);
//#UC START# *500ED7750045_500E758002C7_var*

var
 l_D : Ik2Tag;
 
 procedure MakeBlock(const aChild : InevTag);
 var
  l_Child : Ik2Tag;
  l_BlockNode : TnsBlockNode;
  l_Obj       : InevObject;
 begin//MakeBlock
  l_BlockNode := TnsBlockNode.Create(Tk2Type(aChild.TagType),
                                     aChild As If1TagDataProvider,
                                     l_D,
                                     []);
  try
   l_Child := l_BlockNode;
   if not aChild.QT(InevObject, l_Obj) then
    Assert(false);
   l_Child.IntA[k2_tiExternalHandle] := l_Obj.PID; 
   l_D.AddChild(l_Child);
   l_D.IntA[k2_tiAllChildrenCount] := l_Child.IntA[k2_tiAllChildrenCount];
   Assert(l_Child.Owner.IsSame(l_D));
  finally
   FreeAndNil(l_BlockNode);
  end;//try..finally
  //l_D.AddChild(l_Child);
 end;//MakeBlock

 function CheckChild(const aChild : InevTag) : Boolean;
 begin//CheckChild
  Result := false;
  if aChild.InheritsFrom(k2_idBlock) then
  begin
   f_GotViewKind := TevBlockViewKind(aChild.IntA[k2_tiViewKind]);
   if (f_GotViewKind in Self.AcceptableBlockViewKinds) then
   begin
    f_GotPos := TbsDocPos_S(aChild.IntA[k2_tiHandle]);
    MakeBlock(aChild);
    Result := true;
   end//f_GotViewKind in Self.AcceptableBlockViewKinds
   else
    f_GotViewKind := ev_bvkNone;
  end;//aChild.InheritsFrom(k2_idBlock)
 end;//CheckChild
 
var
 l_Index : Integer;
 l_Child : Ik2Tag;
 l_Parent : Ik2Tag;
//#UC END# *500ED7750045_500E758002C7_var*
begin
//#UC START# *500ED7750045_500E758002C7_impl*
 f_OriginalDocument := theDocument;
 l_D := Tk2Type(theDocument.TagType).MakeTag;
 try
  try
   f_GotPos := f_DocumentInfo.Pos;
   if (f_GotPos.rPos <> 0) then
   begin
    l_Child := nil;
    Case f_GotPos.rRefType of
     dptSub:
     begin
      l_Child := NsFindTagByID(theDocument, k2_idBlock, f_GotPos.rPos);
      if (l_Child = nil) then
       l_Child := NsFindTagByID(theDocument, k2_idSub, f_GotPos.rPos);
     end;//dptSub
     dptPara:
      l_Child := NsFindTagByID(theDocument, k2_idLeafPara, f_GotPos.rPos);
     dptBookmark:
      if (f_GotPos.rPos <> 0) then
       l_Child := NsFindTagByID(theDocument, k2_idLeafPara, f_GotPos.rPos);
       //Assert(false, '�������� ������� �� ��������� ��������� ���');
     else
      Assert(false, '�������� ������� �� ��������� ��������� ���');
    end;//Case f_GotPos.rRefType
    while (l_Child <> nil) AND l_Child.IsValid do
    begin
     if CheckChild(l_Child) then
      Exit;
     if not EvInPara(l_Child.Owner, k2_idBlock, l_Parent) then
      break;
     l_Child := l_Parent;
    end;//l_Child <> nil
   end;//f_GotPos.rPos <> 0
   Finalize(f_GotPos);
   FillChar(f_GotPos, SizeOf(f_GotPos), 0);
   for l_Index := 0 to Pred(theDocument.ChildrenCount) do
   begin
    l_Child := theDocument.Child[l_Index];
    try
     if CheckChild(l_Child) then
      break;
    finally
     l_Child := nil;
    end;//try..finally
   end;//for l_Index
  finally
   f_DocumentInfo := f_DocumentInfo.Clone;
   // - ������, ����� ������ ��� ���� �� ���������
   //f_DocumentInfo.Pos := f_GotPos;
   l_D.IntA[k2_tiExternalHandle] := theDocument.IntA[k2_tiExternalHandle];
   l_D.PCharLenA[k2_tiName] := theDocument.PCharLenA[k2_tiName];
   l_D.PCharLenA[k2_tiShortName] := theDocument.PCharLenA[k2_tiShortName];
   theDocument := l_D;
  end;//try..finally
 finally
  l_D := nil;
 end;//try..finally
//#UC END# *500ED7750045_500E758002C7_impl*
end;//TnsAACDocumentContainerPrim.TransformMadeDocument

function TnsAACDocumentContainerPrim.DocumentForFindPara: InevTag;
//#UC START# *506982B0037E_500E758002C7_var*
//#UC END# *506982B0037E_500E758002C7_var*
begin
//#UC START# *506982B0037E_500E758002C7_impl*
 Result := f_OriginalDocument;
//#UC END# *506982B0037E_500E758002C7_impl*
end;//TnsAACDocumentContainerPrim.DocumentForFindPara

{$IfEnd} //not Admin AND not Monitorings

end.