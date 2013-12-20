unit k2SmallTagObject;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2SmallTagObject.pas"
// Начат: 20.07.2009 14:20
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::K2::k2CoreObjects::Tk2SmallTagObject
//
// Хранилище тегов. С количеством свойств до 32 (включительно)
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
 _HashType_ = Tl3OneBytePtrHash;
 _k2HashTag_Parent_ = Tl3DataContainerWithoutIUnknown;
 {$Include ..\K2\k2HashTag.imp.pas}
 Tk2SmallTagObject = class(_k2HashTag_)
  {* Хранилище тегов. С количеством свойств до 32 (включительно) }
 end;//Tk2SmallTagObject

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

type _Instance_R_ = Tk2SmallTagObject;

{$Include ..\K2\k2HashTag.imp.pas}

end.