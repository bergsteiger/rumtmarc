unit k2Layer;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2Layer.pas"
// Начат: 22.02.99 19:26
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::K2::k2CoreObjects::Tk2Layer
//
// Список тегов, с идентификатором.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2List,
  Classes,
  k2Base,
  k2BaseStruct,
  k2Interfaces
  ;

type
 Tk2Layer = class(Tk2List)
  {* Список тегов, с идентификатором. }
 private
 // private fields
   f_Handle : SmallInt;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   function ExpandSize(aTargetSize: Integer): Integer; override;
   {$If not defined(_Box_) AND not defined(k2TagIsAtomic)}
   function GetHasSubAtom(aProp: Tk2Prop): Boolean; override;
   {$IfEnd} //not _Box_ AND not k2TagIsAtomic
   {$If not defined(_Box_)}
   function GetSubAtom(aProp: Tk2Prop;
    out Data: Integer): Boolean; override;
   {$IfEnd} //not _Box_
   {$If not defined(_Box_) AND not defined(k2TagIsAtomic)}
   function SetAtomPrim(const aProp: _PropIn_;
    var V: Tk2Values): Boolean; override;
   {$IfEnd} //not _Box_ AND not k2TagIsAtomic
   procedure IterateProperties(Action: Ik2Tag_IterateProperties_Action;
    All: Boolean); override;
 public
 // overridden public methods
   procedure Assign(Source: TPersistent); override;
 end;//Tk2Layer

implementation

uses
  k2Tags
  ;

// start class Tk2Layer

procedure Tk2Layer.Assign(Source: TPersistent);
//#UC START# *478CF34E02CE_47AC597C0320_var*
//#UC END# *478CF34E02CE_47AC597C0320_var*
begin
//#UC START# *478CF34E02CE_47AC597C0320_impl*
 if (Source Is Tk2Layer) then
  f_Handle := Tk2Layer(Source).f_Handle;
 inherited;
//#UC END# *478CF34E02CE_47AC597C0320_impl*
end;//Tk2Layer.Assign

procedure Tk2Layer.Cleanup;
//#UC START# *479731C50290_47AC597C0320_var*
//#UC END# *479731C50290_47AC597C0320_var*
begin
//#UC START# *479731C50290_47AC597C0320_impl*
 f_Handle := 0;
 inherited;
//#UC END# *479731C50290_47AC597C0320_impl*
end;//Tk2Layer.Cleanup

function Tk2Layer.ExpandSize(aTargetSize: Integer): Integer;
//#UC START# *47B975AF02ED_47AC597C0320_var*
//#UC END# *47B975AF02ED_47AC597C0320_var*
begin
//#UC START# *47B975AF02ED_47AC597C0320_impl*
 if aTargetSize = 0 then
  Result := Succ(Capacity)
 else
  Result := aTargetSize;
//#UC END# *47B975AF02ED_47AC597C0320_impl*
end;//Tk2Layer.ExpandSize

{$If not defined(_Box_) AND not defined(k2TagIsAtomic)}
function Tk2Layer.GetHasSubAtom(aProp: Tk2Prop): Boolean;
//#UC START# *49A544E802B2_47AC597C0320_var*
//#UC END# *49A544E802B2_47AC597C0320_var*
begin
//#UC START# *49A544E802B2_47AC597C0320_impl*
 Result := inherited GetHasSubAtom(aProp) OR (aProp.TagIndex = k2_tiHandle)
//#UC END# *49A544E802B2_47AC597C0320_impl*
end;//Tk2Layer.GetHasSubAtom
{$IfEnd} //not _Box_ AND not k2TagIsAtomic

{$If not defined(_Box_)}
function Tk2Layer.GetSubAtom(aProp: Tk2Prop;
  out Data: Integer): Boolean;
//#UC START# *49A54517029C_47AC597C0320_var*
//#UC END# *49A54517029C_47AC597C0320_var*
begin
//#UC START# *49A54517029C_47AC597C0320_impl*
 if (aProp.TagIndex = k2_tiHandle) then
 begin
  Data := f_Handle;
  Result := true;
 end//aProp.TagIndex = k2_tiHandle
 else
  Result := inherited GetSubAtom(aProp, Data);
//#UC END# *49A54517029C_47AC597C0320_impl*
end;//Tk2Layer.GetSubAtom
{$IfEnd} //not _Box_

{$If not defined(_Box_) AND not defined(k2TagIsAtomic)}
function Tk2Layer.SetAtomPrim(const aProp: _PropIn_;
  var V: Tk2Values): Boolean;
//#UC START# *49A545580241_47AC597C0320_var*
var
 l_H : Integer;
//#UC END# *49A545580241_47AC597C0320_var*
begin
//#UC START# *49A545580241_47AC597C0320_impl*
 Assert(aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.TagIndex = k2_tiHandle);
 V.SetIntRef(l_H);
 if (l_H = f_Handle) then
  Result := false
 else 
 begin
  Result := true;
  V.rOld := Tk2Type(aProp{$IfDef XE4}.r_PropInPrim_{$EndIf}.rProp.AtomType).TagFromIntRef(f_Handle);
  f_Handle := l_H;
 end;//l_H = f_Handle
//#UC END# *49A545580241_47AC597C0320_impl*
end;//Tk2Layer.SetAtomPrim
{$IfEnd} //not _Box_ AND not k2TagIsAtomic

procedure Tk2Layer.IterateProperties(Action: Ik2Tag_IterateProperties_Action;
  All: Boolean);
//#UC START# *49A545D501F6_47AC597C0320_var*
var
 l_Prop : Tk2Prop;
//#UC END# *49A545D501F6_47AC597C0320_var*
begin
//#UC START# *49A545D501F6_47AC597C0320_impl*
 with TagType do
 begin//with TagType
  l_Prop := Tk2Prop(Prop[k2_tiHandle]);
  Action(Tk2Type(l_Prop.AtomType).TagFromIntRef(Self.f_Handle), l_Prop);
 end;//with TagType
 inherited IterateProperties(Action, All);
//#UC END# *49A545D501F6_47AC597C0320_impl*
end;//Tk2Layer.IterateProperties

end.