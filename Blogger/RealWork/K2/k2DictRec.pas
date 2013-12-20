unit k2DictRec;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2DictRec.pas"
// Начат: 11.10.1999 12:08
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::K2::k2CoreObjects::Tk2DictRec
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\K2\k2Define.inc}

interface

uses
  l3PrimString,
  l3BitArr,
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
 _k2DictRec_Parent_ = Tl3PrimString;
 {$Include ..\K2\k2DictRec.imp.pas}
 Tk2DictRec = class(_k2DictRec_)
 end;//Tk2DictRec

implementation

uses
  k2Tags,
  SysUtils,
  k2TagList,
  k2List,
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

type _Instance_R_ = Tk2DictRec;

{$Include ..\K2\k2DictRec.imp.pas}

end.