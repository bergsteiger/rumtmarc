unit l3CBase;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "L3"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/L3/l3CBase.pas"
// Начат: 02.02.2005 14:30
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Low Level::L3::l3CoreObjects::Tl3CBase
//
// Базовый класс объектов библиотеки L3, поддерживающий подсчет ссылок, интерфейс IUnknown и кэш
// повторного использования.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\L3\l3Define.inc}

interface

uses
  l3ProtoPersistent,
  l3IID,
  l3Interfaces
  ;

type
 _l3Changing_Parent_ = Tl3ProtoPersistent;
 {$Include ..\L3\l3Changing.imp.pas}
 _l3OwnedObject_Parent_ = _l3Changing_;
 {$Include ..\L3\l3OwnedObject.imp.pas}
 _l3COMQueryInterface_Parent_ = _l3OwnedObject_;
 {$Include ..\L3\l3COMQueryInterface.imp.pas}
 Tl3CBase = {abstract} class(_l3COMQueryInterface_)
  {* Базовый класс объектов библиотеки L3, поддерживающий подсчет ссылок, интерфейс IUnknown и кэш повторного использования. }
 protected
 // property methods
   function pm_GetOwner: TObject;
   procedure pm_SetOwner(aValue: TObject);
 public
 // public methods
   constructor Create(anOwner: TObject = nil); reintroduce; virtual;
     {* конструктор объекта. Возвращает объект, со счетчиком ссылок равным 1. }
 public
 // public properties
   property Owner: TObject
     read pm_GetOwner
     write pm_SetOwner;
     {* "владелец" объекта. По умолчанию используется для трансляции запросов интерфейсов, которые не реализует сам объект. }
 end;//Tl3CBase

implementation

uses
  SysUtils,
  l3Base,
  l3InterfacesMisc
  ;

{$Include ..\L3\l3Changing.imp.pas}

{$Include ..\L3\l3OwnedObject.imp.pas}

{$Include ..\L3\l3COMQueryInterface.imp.pas}

// start class Tl3CBase

function Tl3CBase.pm_GetOwner: TObject;
//#UC START# *47914F36016D_47913EC50014get_var*
//#UC END# *47914F36016D_47913EC50014get_var*
begin
//#UC START# *47914F36016D_47913EC50014get_impl*
 Result := GetOwner;
//#UC END# *47914F36016D_47913EC50014get_impl*
end;//Tl3CBase.pm_GetOwner

procedure Tl3CBase.pm_SetOwner(aValue: TObject);
//#UC START# *47914F36016D_47913EC50014set_var*
//#UC END# *47914F36016D_47913EC50014set_var*
begin
//#UC START# *47914F36016D_47913EC50014set_impl*
 if (Owner <> aValue) then
  DoSetOwner(aValue);
//#UC END# *47914F36016D_47913EC50014set_impl*
end;//Tl3CBase.pm_SetOwner

constructor Tl3CBase.Create(anOwner: TObject = nil);
//#UC START# *47914F960008_47913EC50014_var*
//#UC END# *47914F960008_47913EC50014_var*
begin
//#UC START# *47914F960008_47913EC50014_impl*
 inherited Create;
 if (anOwner <> nil) then
  Owner := anOwner;
//#UC END# *47914F960008_47913EC50014_impl*
end;//Tl3CBase.Create

end.