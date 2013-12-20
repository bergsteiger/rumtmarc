unit k2ParentedTypedSmallListTag;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2ParentedTypedSmallListTag.pas"
// Начат: 16.07.2009 16:36
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::K2::k2CoreObjects::Tk2ParentedTypedSmallListTag
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
  l3BitArr,
  k2Base,
  k2SimpleTagListPrimWithFind,
  Classes,
  l3Interfaces,
  k2Interfaces,
  l3Types,
  k2Prim,
  k2BaseStruct,
  k2PureMixIns,
  k2BaseTypes
  ;

type
//#UC START# *4A5F1EC002E5ci*
 {$Define k2Tag_No_f_TagType}
 {$Define k2TagIsList}
//#UC END# *4A5F1EC002E5ci*
 _HashType_ = Tl3OneBytePtrHash;
 _k2HashTag_Parent_ = Tk2SimpleTagListPrimWithFind;
 {$Include ..\K2\k2HashTag.imp.pas}
 _k2ParentedTagObject_Parent_ = _k2HashTag_;
 {$Include ..\K2\k2ParentedTagObject.imp.pas}
 Tk2ParentedTypedSmallListTag = class(_k2ParentedTagObject_)
  {* Список параграфов }
 protected
 // overridden protected methods
   function ExpandSize(aTargetSize: Integer): Integer; override;
 protected
 // protected methods
   function TagType: Tk2Type; virtual; abstract;
//#UC START# *4A5F1EC002E5publ*
//#UC END# *4A5F1EC002E5publ*
 end;//Tk2ParentedTypedSmallListTag

implementation

uses
  SysUtils,
  k2TagList,
  k2List,
  k2Tags,
  l3Dict,
  k2Const,
  l3Const,
  l3String,
  k2Except,
  k2Strings,
  TypInfo,
  l3Stream,
  l3Base,
  k2Facade
  ;

type _Instance_R_ = Tk2ParentedTypedSmallListTag;

{$Include ..\K2\k2HashTag.imp.pas}


{$Include ..\K2\k2ParentedTagObject.imp.pas}

// start class Tk2ParentedTypedSmallListTag

function Tk2ParentedTypedSmallListTag.ExpandSize(aTargetSize: Integer): Integer;
//#UC START# *47B975AF02ED_4A5F1EC002E5_var*
//#UC END# *47B975AF02ED_4A5F1EC002E5_var*
begin
//#UC START# *47B975AF02ED_4A5F1EC002E5_impl*
 if aTargetSize = 0 then
  Result := Succ(Capacity)
 else
  Result := aTargetSize;
//#UC END# *47B975AF02ED_4A5F1EC002E5_impl*
end;//Tk2ParentedTypedSmallListTag.ExpandSize

//#UC START# *4A5F1EC002E5impl*
//#UC END# *4A5F1EC002E5impl*

end.