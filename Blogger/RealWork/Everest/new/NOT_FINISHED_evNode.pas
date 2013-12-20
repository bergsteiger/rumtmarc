unit NOT_FINISHED_evNode;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/new/NOT_FINISHED_evNode.pas"
// Начат: 26.08.1999 14:49
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::Everest::DocumentContainers::evNode
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include w:\common\components\gui\Garant\Everest\evDefine.inc}

interface

uses
  nevBase,
  l3TreeInterfaces,
  l3Nodes,
  k2Interfaces,
  l3Interfaces,
  l3Types,
  k2Base,
  k2Prim,
  k2BaseStruct,
  k2PureMixIns,
  k2BaseTypes
  ;

type
 _k2TagHolder_Parent_ = Tl3PlaceNode;
 {$Include w:\common\components\rtl\Garant\K2\k2TagHolder.imp.pas}
 _k2TagBox_Parent_ = _k2TagHolder_;
 {$Include w:\common\components\rtl\Garant\K2\k2TagBox.imp.pas}
 TevCustomNode = class(_k2TagBox_, Il3HandleNode)
 protected
 // realized methods
   function Get_Handle: Integer;
   procedure Set_Handle(aValue: Integer);
 end;//TevCustomNode

function FindNodeByTag(const Parent: InevNode;
  const Param: InevTag;
  FindMode: Byte = 0): InevNode;

implementation

uses
  k2TagList,
  k2List,
  k2Tags,
  l3Dict,
  k2Const,
  l3Const,
  SysUtils,
  l3String,
  k2Except,
  k2Strings,
  TypInfo,
  l3Stream,
  l3Base,
  k2Facade,
  Classes
  ;

{$Include w:\common\components\rtl\Garant\K2\k2TagHolder.imp.pas}

type _Instance_R_ = TevCustomNode;

{$Include w:\common\components\rtl\Garant\K2\k2TagBox.imp.pas}

// start class TevCustomNode

function TevCustomNode.Get_Handle: Integer;
//#UC START# *46827CAF03CD_4A573D87036Dget_var*
//#UC END# *46827CAF03CD_4A573D87036Dget_var*
begin
//#UC START# *46827CAF03CD_4A573D87036Dget_impl*
 !!! Needs to be implemented !!!
//#UC END# *46827CAF03CD_4A573D87036Dget_impl*
end;//TevCustomNode.Get_Handle

procedure TevCustomNode.Set_Handle(aValue: Integer);
//#UC START# *46827CAF03CD_4A573D87036Dset_var*
//#UC END# *46827CAF03CD_4A573D87036Dset_var*
begin
//#UC START# *46827CAF03CD_4A573D87036Dset_impl*
 !!! Needs to be implemented !!!
//#UC END# *46827CAF03CD_4A573D87036Dset_impl*
end;//TevCustomNode.Set_Handle

function FindNodeByTag(const Parent: InevNode;
  const Param: InevTag;
  FindMode: Byte = 0): InevNode;
//#UC START# *47F259C00067_47F259A300DA_var*
//#UC END# *47F259C00067_47F259A300DA_var*
begin
//#UC START# *47F259C00067_47F259A300DA_impl*
 !!! Needs to be implemented !!!
//#UC END# *47F259C00067_47F259A300DA_impl*
end;//FindNodeByTag

end.