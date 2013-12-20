unit NOT_FINISHED_k2List;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/NOT_FINISHED_k2List.pas"
// Начат: 22.02.99 19:26
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::K2::k2CoreObjects::Tk2List
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2TagList,
  l3Interfaces,
  k2Interfaces,
  l3Types,
  k2Base,
  k2Prim,
  k2BaseStruct,
  k2PureMixIns,
  k2BaseTypes
  ;

type
 _k2Tag_Parent_ = Tk2TagList;
 {$Include ..\K2\k2Tag.imp.pas}
 Tk2List = class(_k2Tag_)
 protected
 // realized methods
   {$If not defined(_Box_) AND not defined(k2TagIsAtomic)}
   function SetAtomPrim(const aProp: _PropIn_;
    var V: Tk2Values): Boolean; override;
   {$IfEnd} //not _Box_ AND not k2TagIsAtomic
 protected
 // overridden protected methods
   function ExpandSize(aTargetSize: Integer): Integer; override;
 end;//Tk2List

implementation

uses
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

type _Instance_R_ = Tk2List;

{$Include ..\K2\k2Tag.imp.pas}

// start class Tk2List

{$If not defined(_Box_) AND not defined(k2TagIsAtomic)}
function Tk2List.SetAtomPrim(const aProp: _PropIn_;
  var V: Tk2Values): Boolean;
//#UC START# *49A545580241_47AC59170251_var*
//#UC END# *49A545580241_47AC59170251_var*
begin
//#UC START# *49A545580241_47AC59170251_impl*
 !!! Needs to be implemented !!!
//#UC END# *49A545580241_47AC59170251_impl*
end;//Tk2List.SetAtomPrim
{$IfEnd} //not _Box_ AND not k2TagIsAtomic

function Tk2List.ExpandSize(aTargetSize: Integer): Integer;
//#UC START# *47B975AF02ED_47AC59170251_var*
//#UC END# *47B975AF02ED_47AC59170251_var*
begin
//#UC START# *47B975AF02ED_47AC59170251_impl*
 !!! Needs to be implemented !!!
//#UC END# *47B975AF02ED_47AC59170251_impl*
end;//Tk2List.ExpandSize

end.