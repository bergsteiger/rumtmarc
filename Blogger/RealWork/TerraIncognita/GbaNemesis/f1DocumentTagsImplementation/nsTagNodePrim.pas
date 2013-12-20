unit nsTagNodePrim;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "f1DocumentTagsImplementation"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/f1DocumentTagsImplementation/nsTagNodePrim.pas"
// Начат: 19.08.2010 15:27
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Базовые определения предметной области::LegalDomain::f1DocumentTagsImplementation::DocumentTagNodes::TnsTagNodePrim
//
// Реализация тега, представляющего данные из адаптерной ноды
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  IOUnit,
  k2Interfaces,
  l3CustomString,
  k2Base,
  k2BaseStruct,
  nsTagNodePrimPrim,
  F1TagDataProviderInterface,
  l3Interfaces,
  nevBase,
  DocumentUnit,
  l3IID
  ;

type
 DocTagNodeType = F1TagDataProviderInterface.If1TagDataProvider;

 _StyleParser_Parent_ = TnsTagNodePrimPrim;
 {$Include ..\f1DocumentTagsImplementation\StyleParser.imp.pas}
 TnsTagNodePrim = {abstract} class(_StyleParser_)
  {* Реализация тега, представляющего данные из адаптерной ноды }
 private
 // private fields
   f_TagDataProvider : DocTagNodeType;
    {* Поле для свойства TagDataProvider}
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   {$If not defined(_Box_) AND not defined(k2TagIsAtomic)}
   function GetHasSubAtom(aProp: Tk2Prop): Boolean; override;
   {$IfEnd} //not _Box_ AND not k2TagIsAtomic
   {$If not defined(_Box_)}
   function GetSubAtom(aProp: Tk2Prop;
    out Data: Integer): Boolean; override;
   {$IfEnd} //not _Box_
   procedure IterateProperties(Action: Ik2Tag_IterateProperties_Action;
    All: Boolean); override;
   function COMQueryInterface(const IID: Tl3GUID;
    out Obj): Tl3HResult; override;
     {* Реализация запроса интерфейса }
   procedure SetSubAtom(var aProp: _PropIn_;
    const aSubAtom); override;
   function MarkModified: Boolean; override;
   procedure ClearFields; override;
 protected
 // protected fields
   f_State : TnsNodeStates;
 protected
 // protected methods
   procedure ParseStyle;
   function GetTextAtomFromCaption(aProp: Tk2Prop;
     out Data: Integer): Boolean;
   procedure DoParseStyle; virtual;
   procedure DoSetSubAtom(var aProp: _PropIn_;
    const aSubAtom); virtual;
   function DoGetSubAtom(aProp: Tk2Prop;
    out Data: Integer): Boolean; virtual;
 public
 // public methods
   procedure ResetStyle;
   function CheckAtom(aProp: Tk2Prop): Ik2Tag;
   constructor Create(aType: Tk2Type;
     const aNode: DocTagNodeType;
     aState: TnsNodeStates); reintroduce;
   class function MakeNodeTag(const aNode: DocTagNodeType;
     aState: TnsNodeStates = []): Ik2Tag;
   function HasTagDataProvider: Boolean;
 protected
 // protected properties
   property TagDataProvider: DocTagNodeType
     read f_TagDataProvider
     write f_TagDataProvider;
     {* Источник данных тега }
 end;//TnsTagNodePrim

implementation

uses
  nsTagString,
  k2Tags,
  SysUtils,
  k2Facade,
  k2Const,
  l3Base,
  evdVer,
  DynamicTreeUnit,
  BitmapPara_Const,
  nsStyleParser
  ;

type _Instance_R_ = TnsTagNodePrim;

{$Include ..\f1DocumentTagsImplementation\StyleParser.imp.pas}

// start class TnsTagNodePrim

procedure TnsTagNodePrim.ParseStyle;
//#UC START# *4C6D1CE80342_467FCCB101CF_var*
//#UC END# *4C6D1CE80342_467FCCB101CF_var*
begin
//#UC START# *4C6D1CE80342_467FCCB101CF_impl*
 if not (ns_nsStyleParsed in f_State) then
 begin
  Include(f_State, ns_nsStyleParsed);
  DoParseStyle;
 end;//not (ns_nsStyleParsed in f_State)
//#UC END# *4C6D1CE80342_467FCCB101CF_impl*
end;//TnsTagNodePrim.ParseStyle

function TnsTagNodePrim.GetTextAtomFromCaption(aProp: Tk2Prop;
  out Data: Integer): Boolean;
//#UC START# *4C6D1D74024A_467FCCB101CF_var*
//#UC END# *4C6D1D74024A_467FCCB101CF_var*
var
 l_Text : Tl3CustomString;
 l_String : IString;
begin
//#UC START# *4C6D1D74024A_467FCCB101CF_impl*
 Result := false;
 l_String := f_TagDataProvider.Caption;
 if (l_String <> nil) then
 begin
  l_Text := TnsTagString.Create(l_String);
  try
   StoreObjAtom(aProp, l_Text);
   Result := true;
   Data := Integer(l_Text);
  finally
   FreeAndNil(l_Text);
  end;//try..finally
 end;//l_String <> nil
//#UC END# *4C6D1D74024A_467FCCB101CF_impl*
end;//TnsTagNodePrim.GetTextAtomFromCaption

procedure TnsTagNodePrim.ResetStyle;
//#UC START# *4C6D1DCA021E_467FCCB101CF_var*
//#UC END# *4C6D1DCA021E_467FCCB101CF_var*
begin
//#UC START# *4C6D1DCA021E_467FCCB101CF_impl*
 Exclude(f_State, ns_nsStyleParsed);
 Attr[k2_tiChildren] := nil;
//#UC END# *4C6D1DCA021E_467FCCB101CF_impl*
end;//TnsTagNodePrim.ResetStyle

function TnsTagNodePrim.CheckAtom(aProp: Tk2Prop): Ik2Tag;
//#UC START# *4C6D1DEE0339_467FCCB101CF_var*
var
 l_Data : Integer;
//#UC END# *4C6D1DEE0339_467FCCB101CF_var*
begin
//#UC START# *4C6D1DEE0339_467FCCB101CF_impl*
 if BaseGetSubAtom(aProp, l_Data) then
  Result := Tk2Type(aProp.AtomType).IntToTag(l_Data)
 else
 begin
  Result := Tk2Type(aProp.AtomType).MakeTag;
  StoreTagAtom(aProp, Result);
 end;//BaseGetSubAtom(aProp, l_Data)
//#UC END# *4C6D1DEE0339_467FCCB101CF_impl*
end;//TnsTagNodePrim.CheckAtom

constructor TnsTagNodePrim.Create(aType: Tk2Type;
  const aNode: DocTagNodeType;
  aState: TnsNodeStates);
//#UC START# *4C6D1E5C03C8_467FCCB101CF_var*
//#UC END# *4C6D1E5C03C8_467FCCB101CF_var*
begin
//#UC START# *4C6D1E5C03C8_467FCCB101CF_impl*
 f_TagDataProvider := aNode;
 f_State := aState;
 inherited Create(aType);
//#UC END# *4C6D1E5C03C8_467FCCB101CF_impl*
end;//TnsTagNodePrim.Create

class function TnsTagNodePrim.MakeNodeTag(const aNode: DocTagNodeType;
  aState: TnsNodeStates = []): Ik2Tag;
//#UC START# *4C6D1E950086_467FCCB101CF_var*
var
 l_Tag  : TnsTagNodePrim;
 l_Type : Tk2Type;
//#UC END# *4C6D1E950086_467FCCB101CF_var*
begin
//#UC START# *4C6D1E950086_467FCCB101CF_impl*
 if (aNode = nil) then
  Result := k2NullTag
 else
 begin
  l_Type := k2.TypeTable[aNode.TypeID];
  if (l_Type = nil) then
   Result := k2NullTag
  else
  begin
   l_Tag := Create(l_Type, aNode, aState);
   try
    Result := l_Tag;
   finally
    FreeAndNil(l_Tag);
   end;//try..finally
  end;//l_Type = nil
 end;//aNode = nil
//#UC END# *4C6D1E950086_467FCCB101CF_impl*
end;//TnsTagNodePrim.MakeNodeTag

function TnsTagNodePrim.HasTagDataProvider: Boolean;
//#UC START# *4C6E885102A4_467FCCB101CF_var*
//#UC END# *4C6E885102A4_467FCCB101CF_var*
begin
//#UC START# *4C6E885102A4_467FCCB101CF_impl*
 Result := (f_TagDataProvider <> nil);
//#UC END# *4C6E885102A4_467FCCB101CF_impl*
end;//TnsTagNodePrim.HasTagDataProvider

procedure TnsTagNodePrim.DoParseStyle;
//#UC START# *4C6D1D01003A_467FCCB101CF_var*
//#UC END# *4C6D1D01003A_467FCCB101CF_var*
begin
//#UC START# *4C6D1D01003A_467FCCB101CF_impl*
 DoDoParseStyle(f_TagDataProvider.Style);
//#UC END# *4C6D1D01003A_467FCCB101CF_impl*
end;//TnsTagNodePrim.DoParseStyle

procedure TnsTagNodePrim.DoSetSubAtom(var aProp: _PropIn_;
  const aSubAtom);
//#UC START# *4C6D1D220147_467FCCB101CF_var*
//#UC END# *4C6D1D220147_467FCCB101CF_var*
begin
//#UC START# *4C6D1D220147_467FCCB101CF_impl*
 Case aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.TagIndex of
  k2_tiHandle :
  begin
   BaseSetSubAtom(aProp, aSubAtom);
(*   Case aVT of
    vtInt :
     f_TagDataProvider.SetNodeId(Integer(aSubAtom));
    vtTag :
     if (Ik2Tag(aSubAtom) = nil) then
      f_TagDataProvider.SetNodeId(0)
     else
      f_TagDataProvider.SetNodeId(Ik2Tag(aSubAtom).AsLong);
    else
     Assert(false);
   end;//Case aVT*)
  end;//k2_tiHandle
  else
   BaseSetSubAtom(aProp, aSubAtom);
 end;//Case aProp.TagIndex
//#UC END# *4C6D1D220147_467FCCB101CF_impl*
end;//TnsTagNodePrim.DoSetSubAtom

function TnsTagNodePrim.DoGetSubAtom(aProp: Tk2Prop;
  out Data: Integer): Boolean;
//#UC START# *4C6D1D450332_467FCCB101CF_var*
//#UC END# *4C6D1D450332_467FCCB101CF_var*
begin
//#UC START# *4C6D1D450332_467FCCB101CF_impl*
 Result := true;
 Case aProp.TagIndex of
  k2_tiHandle :
  begin
   // http://mdp.garant.ru/pages/viewpage.action?pageId=425267808
   if Self.InheritsFrom(k2_idBitmapPara) then
    Result := False
   else
   begin
    if (f_TagDataProvider = nil) then
     Result := false
    else
    begin
     Data := Integer(f_TagDataProvider.ExternalID);
     if (Data <> 0) then
      StoreIntAtom(aProp, Data);
    end;
   end;
   if not Result OR (Data = 0) then
   begin
    ParseStyle;
    Result := BaseGetSubAtom(aProp, Data);
   end;//not Result OR (Data = 0)
  end;//k2_tiHandle
  k2_tiShortName,
  k2_tiText,
  k2_tiReqID :
  begin
   ParseStyle;
   Result := BaseGetSubAtom(aProp, Data);
   if not Result then
    Result := GetTextAtomFromCaption(aProp, Data);
  end;//k2_tiShortName
  k2_tiData :
  begin
   ParseStyle;
   Result := BaseGetSubAtom(aProp, Data);
   if not Result then
   begin
    Assert(false, 'Похоже, что сюда мы уже никогда не попадаем, т.к. получем картинку в TnsBitmapParaPictureGetter.GetPicture, а если так, то это смело можно откручивать с DocumentTextProvoder''а');
    // Найдено в результате разборок с http://mdp.garant.ru/pages/viewpage.action?pageId=342866160
    // http://mdp.garant.ru/pages/viewpage.action?pageId=342866160&focusedCommentId=342869010&#comment-342869010
    //Result := GetStreamAtomFromData(aProp, Data);
   end;//not Result
  end;//k2_tiData
  k2_tiChildren :
   Result := BaseGetSubAtom(aProp, Data);
  else
  begin
   ParseStyle;
   Result := BaseGetSubAtom(aProp, Data);
  end;//else
 end;//Case aProp.TagIndex
//#UC END# *4C6D1D450332_467FCCB101CF_impl*
end;//TnsTagNodePrim.DoGetSubAtom

procedure TnsTagNodePrim.Cleanup;
//#UC START# *479731C50290_467FCCB101CF_var*
//#UC END# *479731C50290_467FCCB101CF_var*
begin
//#UC START# *479731C50290_467FCCB101CF_impl*
 inherited;
 f_TagDataProvider := nil;
//#UC END# *479731C50290_467FCCB101CF_impl*
end;//TnsTagNodePrim.Cleanup

{$If not defined(_Box_) AND not defined(k2TagIsAtomic)}
function TnsTagNodePrim.GetHasSubAtom(aProp: Tk2Prop): Boolean;
//#UC START# *49A544E802B2_467FCCB101CF_var*
var
 l_Stream : IStream;
//#UC END# *49A544E802B2_467FCCB101CF_var*
begin
//#UC START# *49A544E802B2_467FCCB101CF_impl*
 if (aProp <> nil) then
 begin
  Case aProp.TagIndex of
   k2_tiExternalHandle,
   k2_tiHandle,
   k2_tiShortName,
   k2_tiText,
   k2_tiAllChildrenCount :
    Result := true;
(*   k2_tiData :
   begin
    l_Stream := f_TagDataProvider.Data;
    Result := (l_Stream <> nil);
   end;//k2_tiData*)
   else
   begin
    ParseStyle;
    Result := inherited GetHasSubAtom(aProp);
   end;//else
  end;//Case aProp.TagIndex
 end//(aProp <> nil)
 else
  Result := inherited GetHasSubAtom(aProp);
//#UC END# *49A544E802B2_467FCCB101CF_impl*
end;//TnsTagNodePrim.GetHasSubAtom
{$IfEnd} //not _Box_ AND not k2TagIsAtomic

{$If not defined(_Box_)}
function TnsTagNodePrim.GetSubAtom(aProp: Tk2Prop;
  out Data: Integer): Boolean;
//#UC START# *49A54517029C_467FCCB101CF_var*
//#UC END# *49A54517029C_467FCCB101CF_var*
begin
//#UC START# *49A54517029C_467FCCB101CF_impl*
 Assert(aProp <> nil);
(* if (aProp = nil) then
  Result := BaseGetSubAtom(aProp, Data)
 else*)
  Result := DoGetSubAtom(aProp, Data);
//#UC END# *49A54517029C_467FCCB101CF_impl*
end;//TnsTagNodePrim.GetSubAtom
{$IfEnd} //not _Box_

procedure TnsTagNodePrim.IterateProperties(Action: Ik2Tag_IterateProperties_Action;
  All: Boolean);
//#UC START# *49A545D501F6_467FCCB101CF_var*
var
 l_A : Ik2Tag;
//#UC END# *49A545D501F6_467FCCB101CF_var*
begin
//#UC START# *49A545D501F6_467FCCB101CF_impl*
 if not All then
 begin
  ParseStyle;
  // - чтобы вычитать все свойства из стиля
  l_A := Attr[k2_tiHandle];
 // http://mdp.garant.ru/pages/viewpage.action?pageId=356071766&focusedCommentId=469798191#comment-469798191
//  if l_A.IsValid AND (l_A.AsLong <> 0) then
//   Action(l_A, Tk2Prop(TagType.Prop[k2_tiHandle]));
 end;//not All
 inherited;
//#UC END# *49A545D501F6_467FCCB101CF_impl*
end;//TnsTagNodePrim.IterateProperties

function TnsTagNodePrim.COMQueryInterface(const IID: Tl3GUID;
  out Obj): Tl3HResult;
//#UC START# *4A60B23E00C3_467FCCB101CF_var*
//#UC END# *4A60B23E00C3_467FCCB101CF_var*
begin
//#UC START# *4A60B23E00C3_467FCCB101CF_impl*
 if IID.EQ(DocTagNodeType) then
 begin
  if (f_TagDataProvider = nil) then
   Result.SetNoInterface
  else
  begin
   Result.SetOk;
   DocTagNodeType(Obj) := f_TagDataProvider;
  end;//f_TagDataProvider = nil
 end//IID.EQ(DocTagNodeType)
 else
 if IID.EQ(IDocumentTextProvider) then
 begin
  if (f_TagDataProvider = nil) then
   Result.SetNoInterface
  else
  begin
   Result.SetOk;
   IDocumentTextProvider(Obj) := f_TagDataProvider.AsDocumentTextProvider;
   if (IDocumentTextProvider(Obj) <> nil) then
    Result.SetOk
   else
    Result.SetNoInterface;
  end;//f_TagDataProvider = nil
 end//IID.EQ(DocTagNodeType)
 else
 if IID.SomeOf([INodeBase]) then
 begin
  Result.SetNoInterface;
  Assert(false, 'Устаревший код');
 end//IID.SomeOf([INodeBase])
 else
  Result := inherited COMQueryInterface(IID, Obj);
//#UC END# *4A60B23E00C3_467FCCB101CF_impl*
end;//TnsTagNodePrim.COMQueryInterface

procedure TnsTagNodePrim.SetSubAtom(var aProp: _PropIn_;
  const aSubAtom);
//#UC START# *4C6D1C070249_467FCCB101CF_var*
//#UC END# *4C6D1C070249_467FCCB101CF_var*
begin
//#UC START# *4C6D1C070249_467FCCB101CF_impl*
 if (aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp = nil) then
  BaseSetSubAtom(aProp, aSubAtom)
 else
  DoSetSubAtom(aProp, aSubAtom);
//#UC END# *4C6D1C070249_467FCCB101CF_impl*
end;//TnsTagNodePrim.SetSubAtom

function TnsTagNodePrim.MarkModified: Boolean;
//#UC START# *4C6D1C29031F_467FCCB101CF_var*
//#UC END# *4C6D1C29031F_467FCCB101CF_var*
begin
//#UC START# *4C6D1C29031F_467FCCB101CF_impl*
 Result := true;
//#UC END# *4C6D1C29031F_467FCCB101CF_impl*
end;//TnsTagNodePrim.MarkModified

procedure TnsTagNodePrim.ClearFields;
 {-}
begin
 TagDataProvider := nil;
 inherited;
end;//TnsTagNodePrim.ClearFields

end.