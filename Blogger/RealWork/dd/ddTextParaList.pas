unit ddTextParaList;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "dd"
// Модуль: "w:/common/components/rtl/Garant/dd/ddTextParaList.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::dd::ddCommon::TddTextParaList
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

interface

uses
  l3ProtoDataContainer,
  ddTextParagraph,
  l3Types,
  l3Memory,
  l3Interfaces,
  l3Core,
  l3Except,
  Classes
  ;

type
 _ItemType_ = TddTextParagraph;
 _l3UncomparabeObjectRefList_Parent_ = Tl3ProtoDataContainer;
 {$Define l3Items_IsProto}
 {$Include w:\common\components\rtl\Garant\L3\l3UncomparabeObjectRefList.imp.pas}
 TddTextParaList = class(_l3UncomparabeObjectRefList_)
 end;//TddTextParaList

implementation

uses
  l3Base,
  l3MinMax,
  RTLConsts,
  SysUtils
  ;

// start class TddTextParaList

function CompareExistingItems(const CI: CompareItemsRec): Integer; forward;

procedure AssignItem(const aTo: _ItemType_;
  const aFrom: _ItemType_);
//#UC START# *47B2C42A0163_5189EEE20329_var*
//#UC END# *47B2C42A0163_5189EEE20329_var*
begin
//#UC START# *47B2C42A0163_5189EEE20329_impl*
 Assert(False);
//#UC END# *47B2C42A0163_5189EEE20329_impl*
end;//AssignItem

function CompareExistingItems(const CI: CompareItemsRec): Integer;
//#UC START# *47B99D4503A2_5189EEE20329_var*
//#UC END# *47B99D4503A2_5189EEE20329_var*
begin
//#UC START# *47B99D4503A2_5189EEE20329_impl*
 Assert(False);
 Result := -1;
//#UC END# *47B99D4503A2_5189EEE20329_impl*
end;//CompareExistingItems

type _Instance_R_ = TddTextParaList;

{$Include w:\common\components\rtl\Garant\L3\l3UncomparabeObjectRefList.imp.pas}

end.