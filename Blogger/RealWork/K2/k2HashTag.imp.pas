{$IfNDef k2HashTag_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2HashTag.imp.pas"
// Начат: 08.02.2008 16:17
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi::K2::k2CoreObjects::k2HashTag
//
// Одна из реализаций хранилища тегов.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define k2HashTag_imp}
//#UC START# *47AC562D0134ci*
  {$Define k2TagComplexAssign}
  {$Define k2TagUseMapping}
  {$Define k2TagUseDefaultValue}
//#UC END# *47AC562D0134ci*
 _k2Tag_Parent_ = _k2HashTag_Parent_;
 {$Include ..\K2\k2Tag.imp.pas}
 _k2HashTag_ = {mixin} class(_k2Tag_)
  {* Одна из реализаций хранилища тегов. }
 private
 // private fields
   f_SubAtoms : _HashType_;
    {* Поле для свойства SubAtoms}
 protected
 // realized methods
   {$If not defined(_Box_) AND not defined(k2TagIsAtomic)}
   function SetAtomPrim(const aProp: _PropIn_;
    var V: Tk2Values): Boolean; override;
   {$IfEnd} //not _Box_ AND not k2TagIsAtomic
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   {$If not defined(DesignTimeLibrary)}
   class function IsCacheable: Boolean; override;
     {* функция класса, определяющая могут ли объекты данного класса попадать в кэш повторного использования. }
   {$IfEnd} //not DesignTimeLibrary
   {$If not defined(_Box_) AND not defined(k2TagIsAtomic)}
   function GetHasSubAtom(aProp: Tk2Prop): Boolean; override;
   {$IfEnd} //not _Box_ AND not k2TagIsAtomic
   {$If not defined(_Box_)}
   function GetSubAtom(aProp: Tk2Prop;
    out Data: Integer): Boolean; override;
   {$IfEnd} //not _Box_
   procedure IterateProperties(Action: Ik2Tag_IterateProperties_Action;
    All: Boolean); override;
   procedure ClearAtoms; override;
   function GetEmpty: Boolean; override;
 protected
 // protected methods
   procedure Assign(P: TPersistent); override;
 public
 // public methods
   constructor Create(aTagType: Tk2Type); reintroduce;
 protected
 // protected properties
   property SubAtoms: _HashType_
     read f_SubAtoms;
//#UC START# *47AC562D0134publ*
//#UC END# *47AC562D0134publ*
 end;//_k2HashTag_

{$Else k2HashTag_imp}


{$Include ..\K2\k2Tag.imp.pas}

// start class _k2HashTag_

procedure _k2HashTag_.Assign(P: TPersistent);
//#UC START# *49A550000170_47AC562D0134_var*
//#UC END# *49A550000170_47AC562D0134_var*
begin
//#UC START# *49A550000170_47AC562D0134_impl*
 if (P Is _k2HashTag_) then
  AssignTag(_k2HashTag_(P))
 else
  inherited;
//#UC END# *49A550000170_47AC562D0134_impl*
end;//_k2HashTag_.Assign

constructor _k2HashTag_.Create(aTagType: Tk2Type);
//#UC START# *49A55029014C_47AC562D0134_var*
//#UC END# *49A55029014C_47AC562D0134_var*
begin
//#UC START# *49A55029014C_47AC562D0134_impl*
 {$IfDef k2Tag_No_f_TagType}
 Assert(aTagType = _Instance_R_(Self).TagType);
 {$Else  k2Tag_No_f_TagType}
 f_TagType := aTagType;
 {$EndIf k2Tag_No_f_TagType}
 f_SubAtoms.Init;
 inherited Create;
//#UC END# *49A55029014C_47AC562D0134_impl*
end;//_k2HashTag_.Create

{$If not defined(_Box_) AND not defined(k2TagIsAtomic)}
function _k2HashTag_.SetAtomPrim(const aProp: _PropIn_;
  var V: Tk2Values): Boolean;
//#UC START# *49A545580241_47AC562D0134_var*

 function FreeData1(SubAtom: PLong): Bool;
 begin//FreeData
  SetAtomPrim := true;
  V.rOld := Tk2Type(aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.AtomType).TagFromIntRef(SubAtom^);
  if not aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.Shared then
   V.rOld.Owner := nil;
  FreeIntRef(Tk2TypePrim(aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.AtomType), SubAtom^);
  Result := true;
 end;//FreeData

var
 l_Ref : Integer;

 function FreeData2(SubAtom: PLong): Bool;
 var
  l_Change : Boolean;
 begin//FreeData
  l_Change := (SubAtom^ <> l_Ref);
  SetAtomPrim := l_Change;
  if l_Change then
   V.rOld := Tk2Type(aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.AtomType).TagFromIntRef(SubAtom^)
  else
   V.rOld := V.rNew^;
  if not aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.Shared then
   if (V.rOld <> nil) then
    V.rOld.Owner := nil;
  FreeIntRef(Tk2TypePrim(aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.AtomType), SubAtom^);
  Result := true;
 end;//FreeData

var
 FA : Tl3FreeAction;
//#UC END# *49A545580241_47AC562D0134_var*
begin
//#UC START# *49A545580241_47AC562D0134_impl*
 {$IfDef k2TagIsList}
 Assert(aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.TagIndex <> k2_tiChildren);
 {$EndIf k2TagIsList}
 if V.IsNull then
 begin
  Result := false;
  FA := l3L2FA(@FreeData1);
  try
   SubAtoms.DeleteItem(aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.AtomIndex, FA)
  finally
   l3FreeFA(FA);
  end;//try..finally
 end//(NewValue = nil) OR NewValue.IsNull
 else
 begin
  Result := true;
  FA := l3L2FA(@FreeData2);
  try
   V.SetOwner;
   V.SetIntRef(l_Ref);
   try
    SubAtoms.SetItem(aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.AtomIndex, FA, l_Ref);
   except
    FreeIntRef(Tk2TypePrim(aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.AtomType), l_Ref);
    raise;
   end;//try..except
  finally
   l3FreeFA(FA);
  end;//try..finally
 end;//NewValue = nil..
//#UC END# *49A545580241_47AC562D0134_impl*
end;//_k2HashTag_.SetAtomPrim
{$IfEnd} //not _Box_ AND not k2TagIsAtomic

procedure _k2HashTag_.Cleanup;
//#UC START# *479731C50290_47AC562D0134_var*
//#UC END# *479731C50290_47AC562D0134_var*
begin
//#UC START# *479731C50290_47AC562D0134_impl*
 ClearAtoms;
 inherited;
//#UC END# *479731C50290_47AC562D0134_impl*
end;//_k2HashTag_.Cleanup

{$If not defined(DesignTimeLibrary)}
class function _k2HashTag_.IsCacheable: Boolean;
//#UC START# *47A6FEE600FC_47AC562D0134_var*
//#UC END# *47A6FEE600FC_47AC562D0134_var*
begin
//#UC START# *47A6FEE600FC_47AC562D0134_impl*
 Result := true;
//#UC END# *47A6FEE600FC_47AC562D0134_impl*
end;//_k2HashTag_.IsCacheable
{$IfEnd} //not DesignTimeLibrary

{$If not defined(_Box_) AND not defined(k2TagIsAtomic)}
function _k2HashTag_.GetHasSubAtom(aProp: Tk2Prop): Boolean;
//#UC START# *49A544E802B2_47AC562D0134_var*
//#UC END# *49A544E802B2_47AC562D0134_var*
begin
//#UC START# *49A544E802B2_47AC562D0134_impl*
 Result := f_SubAtoms.CheckItem(aProp.AtomIndex);
//#UC END# *49A544E802B2_47AC562D0134_impl*
end;//_k2HashTag_.GetHasSubAtom
{$IfEnd} //not _Box_ AND not k2TagIsAtomic

{$If not defined(_Box_)}
function _k2HashTag_.GetSubAtom(aProp: Tk2Prop;
  out Data: Integer): Boolean;
//#UC START# *49A54517029C_47AC562D0134_var*
var
 pSubAtom : PLong;
//#UC END# *49A54517029C_47AC562D0134_var*
begin
//#UC START# *49A54517029C_47AC562D0134_impl*
 if _Instance_R_(Self).TagType.Wrapper.PreGetAtomData(Self, Tk2CustomProperty(aProp), Data) then
  Result := true
 else
 begin
  pSubAtom := f_SubAtoms.GetItem(aProp.AtomIndex);
  if (pSubAtom = nil) then
   Result := _Instance_R_(Self).TagType.Wrapper.GetAtomData(Self, Tk2CustomProperty(aProp), Data)
  else
  begin
   Result := true;
   Data := pSubAtom^;
  end;//pSubAtom = nil
 end;//TagType.Wrapper.PreGetAtomData(Self, aProp, Data)
//#UC END# *49A54517029C_47AC562D0134_impl*
end;//_k2HashTag_.GetSubAtom
{$IfEnd} //not _Box_

procedure _k2HashTag_.IterateProperties(Action: Ik2Tag_IterateProperties_Action;
  All: Boolean);
//#UC START# *49A545D501F6_47AC562D0134_var*

 function CheckProp(anAtom: PLong; anAtomIndex: Long): Bool;
 var
  l_Prop : Tk2Prop;
 begin//CheckProp
  l_Prop := _Instance_R_(Self).TagType.GetPropByOffset(anAtomIndex);
  {$IfDef k2TagIsList}
  Assert(l_Prop.TagIndex <> k2_tiChildren);
  {$EndIf k2TagIsList}
  Result := Action(Tk2Type(l_Prop.AtomType).TagFromIntRef(anAtom^), Tk2CustomProperty(l_Prop));
 end;//CheckProp

 function CheckPropAll(Prop: Pk2CustomProperty; aPropIndex: Long): Bool;
 begin//CheckPropAll
  Result := Action(rOwnAtom(Prop^.TagIndex), Prop^);
 end;//CheckPropAll

//#UC END# *49A545D501F6_47AC562D0134_var*
begin
//#UC START# *49A545D501F6_47AC562D0134_impl*
 if All then
  _Instance_R_(Self).TagType.Properties.StoreF(l3L2IA(@CheckPropAll))
 else
  f_SubAtoms.StoreF(l3L2IA(@CheckProp));
 inherited 
//#UC END# *49A545D501F6_47AC562D0134_impl*
end;//_k2HashTag_.IterateProperties

procedure _k2HashTag_.ClearAtoms;
//#UC START# *49A54FAA028F_47AC562D0134_var*

 function FreeData(SubAtom: PLong; AtomIndex: Long): Bool; far;
 var
  l_P : Tk2CustomProperty;
 begin//FreeData
  Assert(_Instance_R_(Self).TagType <> nil);
  l_P := _Instance_R_(Self).TagType.GetPropByOffset(AtomIndex);
  Assert(l_P <> nil);
  FreeIntRef(Tk2TypePrim(l_P.AtomType), SubAtom^);
  Result := true;
 end;//FreeData

var
 IA : Tl3IteratorAction;
//#UC END# *49A54FAA028F_47AC562D0134_var*
begin
//#UC START# *49A54FAA028F_47AC562D0134_impl*
 IA := l3L2IA(@FreeData);
 try
  f_SubAtoms.Clear(IA);
 finally
  l3FreeIA(IA);
 end;//try..finally
 inherited;
//#UC END# *49A54FAA028F_47AC562D0134_impl*
end;//_k2HashTag_.ClearAtoms

function _k2HashTag_.GetEmpty: Boolean;
//#UC START# *4A54E03B009A_47AC562D0134_var*
//#UC END# *4A54E03B009A_47AC562D0134_var*
begin
//#UC START# *4A54E03B009A_47AC562D0134_impl*
 Result := f_SubAtoms.Empty;
//#UC END# *4A54E03B009A_47AC562D0134_impl*
end;//_k2HashTag_.GetEmpty

//#UC START# *47AC562D0134impl*
//#UC END# *47AC562D0134impl*

{$EndIf k2HashTag_imp}
