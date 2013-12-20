unit ddAutolinkDocEntryList;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "dd"
// Модуль: "w:/common/components/rtl/Garant/dd/ddAutolinkDocEntryList.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::dd::Autolink::TddAutolinkDocEntryList
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

interface

uses
  l3ProtoDataContainer,
  ddAutolinkInterfaces,
  l3Types,
  l3Memory,
  l3Interfaces,
  l3Core,
  l3Except,
  Classes
  ;

type
 _ItemType_ = IddAutolinkDocEntry;
 _l3InterfaceRefListPrim_Parent_ = Tl3ProtoDataContainer;
 {$Define l3Items_IsProto}
 {$Include w:\common\components\rtl\Garant\L3\l3InterfaceRefListPrim.imp.pas}
 TddAutolinkDocEntryList = class(_l3InterfaceRefListPrim_)
 end;//TddAutolinkDocEntryList

implementation

uses
  l3Base,
  l3MinMax,
  RTLConsts,
  SysUtils
  ;

// start class TddAutolinkDocEntryList

procedure AssignItem(const aTo: _ItemType_;
  const aFrom: _ItemType_); forward;

function CompareExistingItems(const CI: CompareItemsRec): Integer; forward;

{$If not defined(l3Items_IsAtomic)}
function IsSame(const A: _ItemType_;
  const B: _ItemType_): Boolean;
//#UC START# *47B07CF403D0_4E8ED0FC0333_var*
//#UC END# *47B07CF403D0_4E8ED0FC0333_var*
begin
//#UC START# *47B07CF403D0_4E8ED0FC0333_impl*
 Result := A.IsSame(B);
//#UC END# *47B07CF403D0_4E8ED0FC0333_impl*
end;//IsSame
{$IfEnd} //not l3Items_IsAtomic

procedure AssignItem(const aTo: _ItemType_;
  const aFrom: _ItemType_);
//#UC START# *47B2C42A0163_4E8ED0FC0333_var*
//#UC END# *47B2C42A0163_4E8ED0FC0333_var*
begin
//#UC START# *47B2C42A0163_4E8ED0FC0333_impl*
 Assert(False);
//#UC END# *47B2C42A0163_4E8ED0FC0333_impl*
end;//AssignItem

function CompareExistingItems(const CI: CompareItemsRec): Integer;
//#UC START# *47B99D4503A2_4E8ED0FC0333_var*
//#UC END# *47B99D4503A2_4E8ED0FC0333_var*
begin
//#UC START# *47B99D4503A2_4E8ED0FC0333_impl*
 Assert(False);
 Result := -1;
//#UC END# *47B99D4503A2_4E8ED0FC0333_impl*
end;//CompareExistingItems

type _Instance_R_ = TddAutolinkDocEntryList;

{$Include w:\common\components\rtl\Garant\L3\l3InterfaceRefListPrim.imp.pas}

end.