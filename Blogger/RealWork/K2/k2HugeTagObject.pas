unit k2HugeTagObject;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2HugeTagObject.pas"
// Начат: 15.12.1999 17:30
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::K2::k2CoreObjects::Tk2HugeTagObject
//
// Одна из реализаций хранилища тегов. С неограниченным количеством свойств
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
  l3DataContainerWithoutIUnknown,
  Classes,
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
 _HashType_ = Tl3PtrHash;
 _k2HashTag_Parent_ = Tl3DataContainerWithoutIUnknown;
 {$Include ..\K2\k2HashTag.imp.pas}
 Tk2HugeTagObject = class(_k2HashTag_)
  {* Одна из реализаций хранилища тегов. С неограниченным количеством свойств }
 end;//Tk2HugeTagObject

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

type _Instance_R_ = Tk2HugeTagObject;

{$Include ..\K2\k2HashTag.imp.pas}

end.