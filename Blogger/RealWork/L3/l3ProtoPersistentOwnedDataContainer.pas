unit l3ProtoPersistentOwnedDataContainer;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "L3"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/L3/l3ProtoPersistentOwnedDataContainer.pas"
// Начат: 18.05.2011 19:51
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Low Level::L3::l3CoreObjects::Tl3ProtoPersistentOwnedDataContainer
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\L3\l3Define.inc}

interface

uses
  l3ProtoPersistentDataContainer
  ;

type
 _l3OwnedObject_Parent_ = Tl3ProtoPersistentDataContainer;
 {$Include ..\L3\l3OwnedObject.imp.pas}
 Tl3ProtoPersistentOwnedDataContainer = {abstract} class(_l3OwnedObject_)
 public
 // public methods
   constructor Create(anOwner: TObject = nil); reintroduce; virtual;
 end;//Tl3ProtoPersistentOwnedDataContainer

implementation

{$Include ..\L3\l3OwnedObject.imp.pas}

// start class Tl3ProtoPersistentOwnedDataContainer

constructor Tl3ProtoPersistentOwnedDataContainer.Create(anOwner: TObject = nil);
//#UC START# *4DD3EB5A01C3_4DD3EB050023_var*
//#UC END# *4DD3EB5A01C3_4DD3EB050023_var*
begin
//#UC START# *4DD3EB5A01C3_4DD3EB050023_impl*
 inherited Create;
 DoSetOwner(anOwner);
//#UC END# *4DD3EB5A01C3_4DD3EB050023_impl*
end;//Tl3ProtoPersistentOwnedDataContainer.Create

end.