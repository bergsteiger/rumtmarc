unit k2ParentedTypedHugeListTag;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Модуль: "w:/common/components/rtl/Garant/K2/k2ParentedTypedHugeListTag.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::K2::k2CoreObjects::Tk2ParentedTypedHugeListTag
//
// Список параграфов с числом атрибутов больше 32
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
  evHugeParaListPrimWithFind,
  Classes,
  l3Interfaces,
  k2Interfaces,
  l3Types,
  k2Prim,
  k2BaseStruct,
  k2PureMixIns,
  k2BaseTypes
  ;

 {$Define k2TagIsList}

 {$Define k2Tag_No_f_TagType}

type
 _HashType_ = Tl3PtrHash;
 _k2HashTag_Parent_ = TevHugeParaListPrimWithFind;
 {$Include ..\K2\k2HashTag.imp.pas}
 _k2ParentedTagObject_Parent_ = _k2HashTag_;
 {$Include ..\K2\k2ParentedTagObject.imp.pas}
 Tk2ParentedTypedHugeListTag = class(_k2ParentedTagObject_)
  {* Список параграфов с числом атрибутов больше 32 }
 protected
 // protected methods
   function TagType: Tk2Type; virtual; abstract;
 end;//Tk2ParentedTypedHugeListTag

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

type _Instance_R_ = Tk2ParentedTypedHugeListTag;

{$Include ..\K2\k2HashTag.imp.pas}


{$Include ..\K2\k2ParentedTagObject.imp.pas}

end.