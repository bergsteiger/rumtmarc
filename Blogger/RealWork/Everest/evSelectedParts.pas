unit evSelectedParts;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/evSelectedParts.pas"
// Начат: 11.09.2008 14:39
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::ParaList Painters::TevSelectedParts
//
// Коллекция выделенных прямоугольников
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  nevBase,
  l3ProtoDataContainer,
  l3Memory,
  l3Interfaces,
  l3Types,
  l3Core,
  l3Except,
  Classes
  ;

type
 TevSelectedPart = record
   rRowIndex : Integer;
   rWidth : Integer;
   rSelection : Boolean;
   rWindowOrg : TnevPoint;
 end;//TevSelectedPart

 _ItemType_ = TevSelectedPart;
 _l3RecordListPrim_Parent_ = Tl3ProtoDataContainer;
 {$Define l3Items_IsProto}
 {$Include w:\common\components\rtl\Garant\L3\l3RecordListPrim.imp.pas}
 TevSelectedParts = class(_l3RecordListPrim_)
  {* Коллекция выделенных прямоугольников }
 end;//TevSelectedParts

implementation

uses
  l3Base,
  l3MinMax,
  RTLConsts,
  SysUtils
  ;

// start class TevSelectedParts

procedure AssignItem(const aTo: _ItemType_;
  const aFrom: _ItemType_); forward;

function CompareExistingItems(const CI: CompareItemsRec): Integer; forward;

{$If not defined(l3Items_IsAtomic)}
function IsSame(const A: _ItemType_;
  const B: _ItemType_): Boolean;
//#UC START# *47B07CF403D0_48C911C702A4_var*
//#UC END# *47B07CF403D0_48C911C702A4_var*
begin
//#UC START# *47B07CF403D0_48C911C702A4_impl*
 Result := CompareMem(@A, @B, SizeOf(A));
//#UC END# *47B07CF403D0_48C911C702A4_impl*
end;//IsSame
{$IfEnd} //not l3Items_IsAtomic

procedure AssignItem(const aTo: _ItemType_;
  const aFrom: _ItemType_);
//#UC START# *47B2C42A0163_48C911C702A4_var*
//#UC END# *47B2C42A0163_48C911C702A4_var*
begin
//#UC START# *47B2C42A0163_48C911C702A4_impl*
 Assert(false);
//#UC END# *47B2C42A0163_48C911C702A4_impl*
end;//AssignItem

function CompareExistingItems(const CI: CompareItemsRec): Integer;
//#UC START# *47B99D4503A2_48C911C702A4_var*
//#UC END# *47B99D4503A2_48C911C702A4_var*
begin
//#UC START# *47B99D4503A2_48C911C702A4_impl*
 Result := -1;
 Assert(false);
//#UC END# *47B99D4503A2_48C911C702A4_impl*
end;//CompareExistingItems

type _Instance_R_ = TevSelectedParts;

{$Include w:\common\components\rtl\Garant\L3\l3RecordListPrim.imp.pas}

end.