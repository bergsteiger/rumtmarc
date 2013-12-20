unit vtNavigatorFormListPrim;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "VT"
// Модуль: "w:/common/components/gui/Garant/VT/vtNavigatorFormListPrim.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::VT::vtNavigator::TvtNavigatorFormListPrim
//
// Список форм навигатора, который позволяет искать элемент в списка по ключу объект.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\VT\vtDefine.inc}

interface

uses
  vtNavigatorFormListPrimPrim,
  l3Types
  ;

type
 TvtFormHandlerID = record
  {* Ключ для поиска элемента по объекту. }
   rObject : TObject; // Ключ поиска - объект
 end;//TvtFormHandlerID

 _FindDataType_ = TvtFormHandlerID;
 _l3Searcher_Parent_ = TvtNavigatorFormListPrimPrim;
 {$Include w:\common\components\rtl\Garant\L3\l3Searcher.imp.pas}
 TvtNavigatorFormListPrim = class(_l3Searcher_)
  {* Список форм навигатора, который позволяет искать элемент в списка по ключу объект. }
 end;//TvtNavigatorFormListPrim

function TvtFormHandlerID_C(anObject: TObject): TvtFormHandlerID;
  {* Возвращает заполненную запись }

implementation

uses
  l3Memory
  ;

{$If not Declared(_DataType_)}type _DataType_ = Tl3Ptr;{$IfEnd}

// start class TvtNavigatorFormListPrim

function CompareItemWithData(const anItem: _ItemType_;
  const aData: _FindDataType_;
  aSortIndex: Tl3SortIndex;
  aList: _l3Searcher_): Integer;
//#UC START# *47B9BAFD01F4_47D68267011D_var*
//#UC END# *47B9BAFD01F4_47D68267011D_var*
begin
//#UC START# *47B9BAFD01F4_47D68267011D_impl*
 Assert(aSortIndex = l3_siNative);
 Result := Integer(anItem.CloseHandler.Form) - Integer(aData.rObject);
//#UC END# *47B9BAFD01F4_47D68267011D_impl*
end;//CompareItemWithData

type _Instance_R_ = TvtNavigatorFormListPrim;

{$Include w:\common\components\rtl\Garant\L3\l3Searcher.imp.pas}


function TvtFormHandlerID_C(anObject: TObject): TvtFormHandlerID;
  {* Возвращает заполненную запись }
//#UC START# *4B7039C60392_47D67F4A01EA_var*
//#UC END# *4B7039C60392_47D67F4A01EA_var*
begin
 System.FillChar(Result, SizeOf(Result), 0);
//#UC START# *4B7039C60392_47D67F4A01EA_impl*
 Result.rObject := anObject;
//#UC END# *4B7039C60392_47D67F4A01EA_impl*
end;//TvtFormHandlerID.C

end.