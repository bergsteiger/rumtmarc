unit npNavigatorListPrim;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "VT"
// Модуль: "w:/common/components/gui/Garant/VT/npNavigatorListPrim.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::VT::vtNavigator::TnpNavigatorListPrim
//
// список навигаторов созданных в приложении. Список используется для рассылки сообщений
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\VT\vtDefine.inc}

interface

uses
  l3ProtoDataContainer,
  vtNavigator,
  l3Types,
  l3Memory,
  l3Interfaces,
  l3Core,
  l3Except,
  Classes
  ;

type
 _ItemType_ = TvtNavigator;
 _l3ObjectPtrList_Parent_ = Tl3ProtoDataContainer;
 {$Define l3Items_IsProto}
 {$Include w:\common\components\rtl\Garant\L3\l3ObjectPtrList.imp.pas}
 TnpNavigatorListPrim = class(_l3ObjectPtrList_)
  {* список навигаторов созданных в приложении. Список используется для рассылки сообщений }
 public
 // public methods
   procedure Reg(aNavigator: TvtNavigator);
     {* зарегистрировать навигатор }
   procedure UnReg(aNavigator: TvtNavigator);
     {* дерегистрировать навигатор }
 end;//TnpNavigatorListPrim

implementation

uses
  l3Base,
  l3MinMax,
  RTLConsts,
  SysUtils
  ;

type _Instance_R_ = TnpNavigatorListPrim;

{$Include w:\common\components\rtl\Garant\L3\l3ObjectPtrList.imp.pas}

// start class TnpNavigatorListPrim

procedure TnpNavigatorListPrim.Reg(aNavigator: TvtNavigator);
//#UC START# *4F61E05F00EE_4F61DFF20168_var*
var
 lIndex : Integer;
//#UC END# *4F61E05F00EE_4F61DFF20168_var*
begin
//#UC START# *4F61E05F00EE_4F61DFF20168_impl*
 lIndex := IndexOf(Pointer(aNavigator));
 if (lIndex < 0) then
 // - чтобы ДВА раза не удалять, т.к. удаляется - ОДИН, как с канвой от Борланда
  Add(aNavigator);
//#UC END# *4F61E05F00EE_4F61DFF20168_impl*
end;//TnpNavigatorListPrim.Reg

procedure TnpNavigatorListPrim.UnReg(aNavigator: TvtNavigator);
//#UC START# *4F61E080034B_4F61DFF20168_var*
var
 lIndex : Integer;
//#UC END# *4F61E080034B_4F61DFF20168_var*
begin
//#UC START# *4F61E080034B_4F61DFF20168_impl*
 lIndex := IndexOf(Pointer(aNavigator));
 if (lIndex <> -1) then
  Delete(lIndex);
//#UC END# *4F61E080034B_4F61DFF20168_impl*
end;//TnpNavigatorListPrim.UnReg

end.