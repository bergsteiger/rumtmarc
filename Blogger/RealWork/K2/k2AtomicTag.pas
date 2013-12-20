unit k2AtomicTag;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2AtomicTag.pas"
// Начат: 13.09.2007 17:12
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::K2::k2CoreObjects::Tk2AtomicTag
//
// Атомарный тег
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\K2\k2Define.inc}

interface

uses
  l3CacheableBase,
  k2Base,
  l3Interfaces,
  k2Interfaces,
  l3Types,
  k2Prim,
  k2BaseStruct,
  k2PureMixIns,
  k2BaseTypes
  ;

type
//#UC START# *49A53F52035Aci*
  {$Define k2TagIsAtomic}
  {.$Define k2TagComplexAssign}
  {.$Define k2TagUseMapping}
  {.$Define k2TagUseDefaultValue}
//#UC END# *49A53F52035Aci*
 _k2Tag_Parent_ = Tl3CacheableBase;
 {$Include ..\K2\k2Tag.imp.pas}
 Tk2AtomicTag = class(_k2Tag_)
  {* Атомарный тег }
 protected
 // realized methods
   {$If not defined(_Box_) AND not defined(k2TagIsAtomic)}
   function SetAtomPrim(const aProp: _PropIn_;
    var V: Tk2Values): Boolean; override;
   {$IfEnd} //not _Box_ AND not k2TagIsAtomic
 public
 // public methods
   constructor Create(aValue: Integer;
    aType: Tk2Type); reintroduce;
//#UC START# *49A53F52035Apubl*
//#UC END# *49A53F52035Apubl*
 end;//Tk2AtomicTag

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

type _Instance_R_ = Tk2AtomicTag;

{$Include ..\K2\k2Tag.imp.pas}

// start class Tk2AtomicTag

constructor Tk2AtomicTag.Create(aValue: Integer;
  aType: Tk2Type);
//#UC START# *49A53F910362_49A53F52035A_var*
//#UC END# *49A53F910362_49A53F52035A_var*
begin
//#UC START# *49A53F910362_49A53F52035A_impl*
 f_TagType := aType;
 f_Value := aValue;
 inherited Create;
//#UC END# *49A53F910362_49A53F52035A_impl*
end;//Tk2AtomicTag.Create

{$If not defined(_Box_) AND not defined(k2TagIsAtomic)}
function Tk2AtomicTag.SetAtomPrim(const aProp: _PropIn_;
  var V: Tk2Values): Boolean;
//#UC START# *49A545580241_49A53F52035A_var*
//#UC END# *49A545580241_49A53F52035A_var*
begin
//#UC START# *49A545580241_49A53F52035A_impl*
 !!! Needs to be implemented !!!
//#UC END# *49A545580241_49A53F52035A_impl*
end;//Tk2AtomicTag.SetAtomPrim
{$IfEnd} //not _Box_ AND not k2TagIsAtomic

//#UC START# *49A53F52035Aimpl*
//#UC END# *49A53F52035Aimpl*

end.