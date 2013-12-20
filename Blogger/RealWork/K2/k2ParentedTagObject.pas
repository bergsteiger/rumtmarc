unit k2ParentedTagObject;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2ParentedTagObject.pas"
// Начат: 11.07.2005 10:35
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::K2::k2CoreObjects::Tk2ParentedTagObject
//
// Хранилище тегов, обладающее ссылкой на родительский объект.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2SmallTagObject,
  k2Interfaces,
  Classes
  ;

type
 _k2ParentedTagObject_Parent_ = Tk2SmallTagObject;
 {$Include ..\K2\k2ParentedTagObject.imp.pas}
 Tk2ParentedTagObject = class(_k2ParentedTagObject_)
  {* Хранилище тегов, обладающее ссылкой на родительский объект. }
 end;//Tk2ParentedTagObject

implementation

uses
  k2Base
  ;

type _Instance_R_ = Tk2ParentedTagObject;

{$Include ..\K2\k2ParentedTagObject.imp.pas}

end.