unit nsTagNodePrimPrim;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "f1DocumentTagsImplementation"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/f1DocumentTagsImplementation/nsTagNodePrimPrim.pas"
// Начат: 10.08.2010 15:06
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Базовые определения предметной области::LegalDomain::f1DocumentTagsImplementation::DocumentTagNodes::TnsTagNodePrimPrim
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  nevBase,
  nsBaseTagNode,
  k2Base,
  k2BaseStruct
  ;

type
 TnsTagNodePrimPrim = {abstract} class(TnsBaseTagNode)
 protected
 // protected methods
   function BaseGetSubAtom(aProp: Tk2Prop;
     out Data: Integer): Boolean;
   procedure BaseSetSubAtom(var aProp: _PropIn_;
     const aSubAtom);
   procedure StoreIntAtom(aProp: Tk2Prop;
     aValue: Integer);
   procedure StoreTagAtom(aProp: Tk2Prop;
     const aValue: InevTag);
   procedure StoreObjAtom(aProp: Tk2Prop;
     aValue: TObject);
 end;//TnsTagNodePrimPrim

implementation

uses
  k2Interfaces
  ;

// start class TnsTagNodePrimPrim

function TnsTagNodePrimPrim.BaseGetSubAtom(aProp: Tk2Prop;
  out Data: Integer): Boolean;
//#UC START# *4C6D103002F8_4C6D0FD10112_var*
//#UC END# *4C6D103002F8_4C6D0FD10112_var*
begin
//#UC START# *4C6D103002F8_4C6D0FD10112_impl*
 Result := inherited GetSubAtom(aProp, Data)
//#UC END# *4C6D103002F8_4C6D0FD10112_impl*
end;//TnsTagNodePrimPrim.BaseGetSubAtom

procedure TnsTagNodePrimPrim.BaseSetSubAtom(var aProp: _PropIn_;
  const aSubAtom);
//#UC START# *4C6D106F0367_4C6D0FD10112_var*
//#UC END# *4C6D106F0367_4C6D0FD10112_var*
begin
//#UC START# *4C6D106F0367_4C6D0FD10112_impl*
 inherited SetSubAtom(aProp, aSubAtom);
//#UC END# *4C6D106F0367_4C6D0FD10112_impl*
end;//TnsTagNodePrimPrim.BaseSetSubAtom

procedure TnsTagNodePrimPrim.StoreIntAtom(aProp: Tk2Prop;
  aValue: Integer);
//#UC START# *4E68A61B0222_4C6D0FD10112_var*
var
 l_P : _PropLoc_;
//#UC END# *4E68A61B0222_4C6D0FD10112_var*
begin
//#UC START# *4E68A61B0222_4C6D0FD10112_impl*
 l_P{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp := aProp;
 l_P.rOp := nil;
 l_P{$IfDef XE4}.r_PropInPrim_{$EndIf}.rDeleteMapped := true;
 l_P{$IfDef XE4}.r_PropInPrim_{$EndIf}.rVT := vtInt;
 BaseSetSubAtom(_PropIn_(l_P), aValue);
//#UC END# *4E68A61B0222_4C6D0FD10112_impl*
end;//TnsTagNodePrimPrim.StoreIntAtom

procedure TnsTagNodePrimPrim.StoreTagAtom(aProp: Tk2Prop;
  const aValue: InevTag);
//#UC START# *4E68A69B0273_4C6D0FD10112_var*
var
 l_P : _PropLoc_;
//#UC END# *4E68A69B0273_4C6D0FD10112_var*
begin
//#UC START# *4E68A69B0273_4C6D0FD10112_impl*
 l_P{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp := aProp;
 l_P.rOp := nil;
 l_P{$IfDef XE4}.r_PropInPrim_{$EndIf}.rDeleteMapped := true;
 l_P{$IfDef XE4}.r_PropInPrim_{$EndIf}.rVT := vtTag;
 BaseSetSubAtom(_PropIn_(l_P), aValue);
//#UC END# *4E68A69B0273_4C6D0FD10112_impl*
end;//TnsTagNodePrimPrim.StoreTagAtom

procedure TnsTagNodePrimPrim.StoreObjAtom(aProp: Tk2Prop;
  aValue: TObject);
//#UC START# *4E68AAAC0086_4C6D0FD10112_var*
//#UC END# *4E68AAAC0086_4C6D0FD10112_var*
begin
//#UC START# *4E68AAAC0086_4C6D0FD10112_impl*
 StoreTagAtom(aProp, Tk2TypeTable(aProp.AtomType.TypeTable).ObjToTag(aValue));
//#UC END# *4E68AAAC0086_4C6D0FD10112_impl*
end;//TnsTagNodePrimPrim.StoreObjAtom

end.