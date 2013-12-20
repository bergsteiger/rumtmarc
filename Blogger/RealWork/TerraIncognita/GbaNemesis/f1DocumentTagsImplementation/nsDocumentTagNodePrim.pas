unit nsDocumentTagNodePrim;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "f1DocumentTagsImplementation"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/f1DocumentTagsImplementation/nsDocumentTagNodePrim.pas"
// Начат: 2005/11/22 17:01:16
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Базовые определения предметной области::LegalDomain::f1DocumentTagsImplementation::DocumentTagNodes::TnsDocumentTagNodePrim
//
// Базовая нода документа.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  nsBlockNodePrim,
  k2Base,
  k2Interfaces,
  k2BaseStruct
  ;

type
 TnsDocumentTagNodePrim = class(TnsBlockNodePrim)
  {* Базовая нода документа. }
 protected
 // overridden protected methods
   {$If not defined(_Box_) AND not defined(k2TagIsAtomic)}
   function GetHasSubAtom(aProp: Tk2Prop): Boolean; override;
   {$IfEnd} //not _Box_ AND not k2TagIsAtomic
   procedure IterateProperties(Action: Ik2Tag_IterateProperties_Action;
    All: Boolean); override;
   procedure DoSetSubAtom(var aProp: _PropIn_;
    const aSubAtom); override;
   function DoGetSubAtom(aProp: Tk2Prop;
    out Data: Integer): Boolean; override;
 end;//TnsDocumentTagNodePrim

implementation

uses
  nsTagString,
  DataAdapter,
  k2Tags,
  IOUnit,
  DocumentUnit,
  l3CustomString,
  SysUtils,
  k2Const,
  evTextStyle_Const,
  evdTextStyle_Const,
  evdStyles
  ;

// start class TnsDocumentTagNodePrim

{$If not defined(_Box_) AND not defined(k2TagIsAtomic)}
function TnsDocumentTagNodePrim.GetHasSubAtom(aProp: Tk2Prop): Boolean;
//#UC START# *49A544E802B2_467FCF9300AE_var*
//#UC END# *49A544E802B2_467FCF9300AE_var*
begin
//#UC START# *49A544E802B2_467FCF9300AE_impl*
 if (aProp <> nil) then
 begin
  Case aProp.TagIndex of
   k2_tiName :
    Result := true;
   else
    Result := inherited GetHasSubAtom(aProp);
  end;//Case aProp.TagIndex
 end//(aProp <> nil)
 else
  Result := inherited GetHasSubAtom(aProp);
//#UC END# *49A544E802B2_467FCF9300AE_impl*
end;//TnsDocumentTagNodePrim.GetHasSubAtom
{$IfEnd} //not _Box_ AND not k2TagIsAtomic

procedure TnsDocumentTagNodePrim.IterateProperties(Action: Ik2Tag_IterateProperties_Action;
  All: Boolean);
//#UC START# *49A545D501F6_467FCF9300AE_var*
//#UC END# *49A545D501F6_467FCF9300AE_var*
begin
//#UC START# *49A545D501F6_467FCF9300AE_impl*
 Attr[k2_tiLineSpacing];
 Attr[k2_tiStyle];
 if not All then
 begin
  Action(Attr[k2_tiExternalHandle], Tk2Prop(TagType.Prop[k2_tiExternalHandle]));
  //Action(rAtom(k2_tiName), TagType.Prop[k2_tiName]);
  Attr[k2_tiName];
  Attr[k2_tiShortName];
 end//not All
 else
  Attr[k2_tiExternalHandle];
 inherited;
//#UC END# *49A545D501F6_467FCF9300AE_impl*
end;//TnsDocumentTagNodePrim.IterateProperties

procedure TnsDocumentTagNodePrim.DoSetSubAtom(var aProp: _PropIn_;
  const aSubAtom);
//#UC START# *4C6D1D220147_467FCF9300AE_var*
//#UC END# *4C6D1D220147_467FCF9300AE_var*
begin
//#UC START# *4C6D1D220147_467FCF9300AE_impl*
 Case aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.TagIndex of
  k2_tiHandle :
   BaseSetSubAtom(aProp, aSubAtom);
  else
   inherited DoSetSubAtom(aProp, aSubAtom);
 end;//Case aProp.TagIndex
//#UC END# *4C6D1D220147_467FCF9300AE_impl*
end;//TnsDocumentTagNodePrim.DoSetSubAtom

function TnsDocumentTagNodePrim.DoGetSubAtom(aProp: Tk2Prop;
  out Data: Integer): Boolean;
//#UC START# *4C6D1D450332_467FCF9300AE_var*

 function HasInternetImage : Boolean;
 var
  l_Doc : IDocument;
  l_MI  : IMissingInfo;
 begin//HasInternetImage
  Result := false;
  if DefDataAdapter.CommonInterfaces.GetDocumentOnNumber(TagDataProvider.ExternalID, l_Doc, l_MI) then
   Result := l_Doc.HasInternetImage
  else
   Result := false;
 end;//HasInternetImage

 function GetNameFromDocument(const aProp : Tk2Prop;
                                 out Data    : Integer): Boolean;
 var
  l_Text   : Tl3CustomString;
  l_String : IString;
  l_Doc    : IDocument;
  l_MI     : IMissingInfo;
 begin//GetNameFromDocument
  Result := false;
  if DefDataAdapter.CommonInterfaces.GetDocumentOnNumber(TagDataProvider.ExternalID, l_Doc, l_MI) then
  //if Supports(Node, IDocument, l_Doc) then
   try
    l_Doc.GetName(l_String);
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
   finally
    l_Doc := nil;
   end;//try..finally
 end;//GetNameFromDocument

//#UC END# *4C6D1D450332_467FCF9300AE_var*
begin
//#UC START# *4C6D1D450332_467FCF9300AE_impl*
 Result := true;
 Case aProp.TagIndex of
  k2_tiExternalHandle:
   Data := Integer(TagDataProvider.ExternalID);
  k2_tiHandle :
   Result := BaseGetSubAtom(aProp, Data);
  k2_tiLineSpacing:
  begin
   Result := BaseGetSubAtom(aProp, Data);
   if not Result OR (Data = k2_TransparentValue) then
   begin
    Result := true;
    //Data := 125;
    Data := 100;
    StoreIntAtom(aProp, Data);
   end;//not Result
  end;//k2_tiLineSpacing
  k2_tiStyle:
  begin
   Result := BaseGetSubAtom(aProp, Data);
   if not Result then
   begin
    if HasInternetImage then
     Data := ev_saLinkToPublication
    else
     Data := ev_saTxtNormalANSI;
    StoreIntAtom(aProp, Data);
    Result := BaseGetSubAtom(aProp, Data);
   end;//not Result
  end;//k2_tiStyle
  k2_tiName:
  begin
   ParseStyle;
   Result := BaseGetSubAtom(aProp, Data);
   if not Result then
    Result := GetNameFromDocument(aProp, Data);
  end;//k2_tiName
  else
   Result := inherited DoGetSubAtom(aProp, Data);
 end;//Case aProp.TagIndex
//#UC END# *4C6D1D450332_467FCF9300AE_impl*
end;//TnsDocumentTagNodePrim.DoGetSubAtom

end.