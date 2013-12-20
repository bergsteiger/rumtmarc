unit evCellInfoList;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Модуль: "w:/common/components/gui/Garant/Everest/evCellInfoList.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::CellUtils::TevCellInfoList
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  evEditorInterfaces,
  l3ProtoDataContainer,
  evCellInfo,
  l3Types,
  l3Memory,
  l3Interfaces,
  l3Core,
  l3Except,
  Classes
  ;

type
 _ItemType_ = TevCellInfo;
 _l3UncomparabeObjectRefList_Parent_ = Tl3ProtoDataContainer;
 {$Define l3Items_IsProto}
 {$Include w:\common\components\rtl\Garant\L3\l3UncomparabeObjectRefList.imp.pas}
 TevCellInfoList = class(_l3UncomparabeObjectRefList_)
 private
 // private fields
   f_RowType : TedRowType;
    {* Поле для свойства RowType}
 public
 // public methods
   function GetOffset(const aCellInfo: TevCellInfo): Integer;
 public
 // public properties
   property RowType: TedRowType
     read f_RowType
     write f_RowType;
     {* Тип строки. }
 end;//TevCellInfoList

implementation

uses
  l3Base,
  l3MinMax,
  RTLConsts,
  SysUtils
  ;

// start class TevCellInfoList

function CompareExistingItems(const CI: CompareItemsRec): Integer; forward;

procedure AssignItem(const aTo: _ItemType_;
  const aFrom: _ItemType_);
//#UC START# *47B2C42A0163_516D18D301B2_var*
//#UC END# *47B2C42A0163_516D18D301B2_var*
begin
//#UC START# *47B2C42A0163_516D18D301B2_impl*
 Assert(false);
//#UC END# *47B2C42A0163_516D18D301B2_impl*
end;//AssignItem

function CompareExistingItems(const CI: CompareItemsRec): Integer;
//#UC START# *47B99D4503A2_516D18D301B2_var*
//#UC END# *47B99D4503A2_516D18D301B2_var*
begin
//#UC START# *47B99D4503A2_516D18D301B2_impl*
 Result := -1;
 Assert(false);
//#UC END# *47B99D4503A2_516D18D301B2_impl*
end;//CompareExistingItems

type _Instance_R_ = TevCellInfoList;

{$Include w:\common\components\rtl\Garant\L3\l3UncomparabeObjectRefList.imp.pas}

// start class TevCellInfoList

function TevCellInfoList.GetOffset(const aCellInfo: TevCellInfo): Integer;
//#UC START# *516D1AA90041_516D18D301B2_var*
//#UC END# *516D1AA90041_516D18D301B2_var*
begin
//#UC START# *516D1AA90041_516D18D301B2_impl*
 Result := 0;
 Assert(False);
//#UC END# *516D1AA90041_516D18D301B2_impl*
end;//TevCellInfoList.GetOffset

end.