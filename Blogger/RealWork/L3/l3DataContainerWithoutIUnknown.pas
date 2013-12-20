unit l3DataContainerWithoutIUnknown;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "L3"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/L3/l3DataContainerWithoutIUnknown.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Low Level::L3::l3CoreObjects::Tl3DataContainerWithoutIUnknown
//
// Контейнер данных без реализации IUnknown, но во всей интерфейсной поддержкой
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\L3\l3Define.inc}

interface

uses
  l3CastablePersistent,
  l3Interfaces,
  l3IID
  ;

 {$Define l3Unknown_NoMultiThread}

 {$Define l3Unknown_NoIUnknown}

type
 _l3Unknown_Parent_ = Tl3CastablePersistent;
 {$Include ..\L3\l3Unknown.imp.pas}
 _l3DataContainer_Parent_ = _l3Unknown_;
 {$Include ..\L3\l3DataContainer.imp.pas}
 _l3Changing_Parent_ = _l3DataContainer_;
 {$Include ..\L3\l3Changing.imp.pas}
 _l3OwnedObject_Parent_ = _l3Changing_;
 {$Include ..\L3\l3OwnedObject.imp.pas}
 _l3COMQueryInterface_Parent_ = _l3OwnedObject_;
 {$Include ..\L3\l3COMQueryInterface.imp.pas}
 Tl3DataContainerWithoutIUnknown = {abstract} class(_l3COMQueryInterface_)
  {* Контейнер данных без реализации IUnknown, но во всей интерфейсной поддержкой }
 end;//Tl3DataContainerWithoutIUnknown

implementation

uses
  SysUtils,
  l3Base,
  l3Core,
  Windows,
  Classes,
  l3InterfacesMisc
  ;

{$Include ..\L3\l3Unknown.imp.pas}

{$Include ..\L3\l3DataContainer.imp.pas}

{$Include ..\L3\l3Changing.imp.pas}

{$Include ..\L3\l3OwnedObject.imp.pas}

{$Include ..\L3\l3COMQueryInterface.imp.pas}

end.