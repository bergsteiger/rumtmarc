unit l3HackPersistentOwner1;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "L3"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/L3/l3HackPersistentOwner1.pas"
// Начат: 15.12.209 14:17
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Low Level::L3::RTL Tuning::Tl3HackPersistentOwner1
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\L3\l3Define.inc}

interface

uses
  Classes,
  l3HackPersistentOwner
  ;

type
 Tl3HackPersistentOwner1 = {abstract} class(Tl3HackPersistentOwner)
 public
 // public methods
   function GetOwner: TPersistent; virtual;
     {* Запрос владельца объекта }
 end;//Tl3HackPersistentOwner1

implementation

// start class Tl3HackPersistentOwner1

function Tl3HackPersistentOwner1.GetOwner: TPersistent;
//#UC START# *4B2770DA0349_4B27703D0320_var*
//#UC END# *4B2770DA0349_4B27703D0320_var*
begin
//#UC START# *4B2770DA0349_4B27703D0320_impl*
 Result := nil;
//#UC END# *4B2770DA0349_4B27703D0320_impl*
end;//Tl3HackPersistentOwner1.GetOwner

end.