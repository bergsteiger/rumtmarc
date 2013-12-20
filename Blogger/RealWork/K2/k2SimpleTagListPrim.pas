unit k2SimpleTagListPrim;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2SimpleTagListPrim.pas"
// Начат: 16.07.2009 17:18
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::K2::k2CoreObjects::Tk2SimpleTagListPrim
//
// Список параграфов
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2Interfaces,
  l3DataContainerWithoutIUnknown,
  l3Types,
  l3Memory,
  l3Interfaces,
  l3Core,
  l3Except,
  Classes
  ;

type
//#UC START# *4A5F28820363ci*
 {$Define l3Items_NoChanging}
 {$Define l3Items_NoSort}
 {$Define l3Items_NoOwner}
//#UC END# *4A5F28820363ci*
 _ItemType_ = Ik2Tag;
 _l3InterfaceRefListPrim_Parent_ = Tl3DataContainerWithoutIUnknown;
 {$Include w:\common\components\rtl\Garant\L3\l3InterfaceRefListPrim.imp.pas}
 Tk2SimpleTagListPrim = class(_l3InterfaceRefListPrim_)
  {* Список параграфов }
 protected
 // overridden protected methods
   {$If not defined(DesignTimeLibrary)}
   class function IsCacheable: Boolean; override;
     {* функция класса, определяющая могут ли объекты данного класса попадать в кэш повторного использования. }
   {$IfEnd} //not DesignTimeLibrary
//#UC START# *4A5F28820363publ*
//#UC END# *4A5F28820363publ*
 end;//Tk2SimpleTagListPrim

implementation

uses
  k2BaseTypes,
  l3Base,
  l3MinMax,
  RTLConsts,
  SysUtils
  ;

// start class Tk2SimpleTagListPrim

procedure AssignItem(const aTo: _ItemType_;
  const aFrom: _ItemType_); forward;

function CompareExistingItems(const CI: CompareItemsRec): Integer; forward;

{$If not defined(l3Items_IsAtomic)}
function IsSame(const A: _ItemType_;
  const B: _ItemType_): Boolean;
//#UC START# *47B07CF403D0_4A5F28820363_var*
//#UC END# *47B07CF403D0_4A5F28820363_var*
begin
//#UC START# *47B07CF403D0_4A5F28820363_impl*
 if (A = nil) then
  Result := (B = nil) OR B.IsNull
 else
  Result := A.Box.IsSame(B.Box);
//#UC END# *47B07CF403D0_4A5F28820363_impl*
end;//IsSame
{$IfEnd} //not l3Items_IsAtomic

procedure AssignItem(const aTo: _ItemType_;
  const aFrom: _ItemType_);
//#UC START# *47B2C42A0163_4A5F28820363_var*
//#UC END# *47B2C42A0163_4A5F28820363_var*
begin
//#UC START# *47B2C42A0163_4A5F28820363_impl*
 aTo.AssignTag(aFrom, k2_amAll - [k2_amNull]);
//#UC END# *47B2C42A0163_4A5F28820363_impl*
end;//AssignItem

function CompareExistingItems(const CI: CompareItemsRec): Integer;
//#UC START# *47B99D4503A2_4A5F28820363_var*
//#UC END# *47B99D4503A2_4A5F28820363_var*
begin
//#UC START# *47B99D4503A2_4A5F28820363_impl*
 {$IfDef l3Items_HasCustomSort}
 Result := CI.rA^.CompareWithTag(CI.rB^, CI.rSortIndex);
 {$Else  l3Items_HasCustomSort}
 Result := -1;
 Assert(false);
 {$EndIf l3Items_HasCustomSort}
//#UC END# *47B99D4503A2_4A5F28820363_impl*
end;//CompareExistingItems

type _Instance_R_ = Tk2SimpleTagListPrim;

{$Include w:\common\components\rtl\Garant\L3\l3InterfaceRefListPrim.imp.pas}

// start class Tk2SimpleTagListPrim

{$If not defined(DesignTimeLibrary)}
class function Tk2SimpleTagListPrim.IsCacheable: Boolean;
//#UC START# *47A6FEE600FC_4A5F28820363_var*
//#UC END# *47A6FEE600FC_4A5F28820363_var*
begin
//#UC START# *47A6FEE600FC_4A5F28820363_impl*
 Result := true;
//#UC END# *47A6FEE600FC_4A5F28820363_impl*
end;//Tk2SimpleTagListPrim.IsCacheable
{$IfEnd} //not DesignTimeLibrary

//#UC START# *4A5F28820363impl*
//#UC END# *4A5F28820363impl*

end.