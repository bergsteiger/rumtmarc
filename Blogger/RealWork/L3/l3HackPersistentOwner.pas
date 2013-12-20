unit l3HackPersistentOwner;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "L3"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/L3/l3HackPersistentOwner.pas"
// Начат: 15.12.2009 14:16
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Low Level::L3::RTL Tuning::Tl3HackPersistentOwner
//
// Связка Tl3HackPersistentOwner и Tl3HackPersistentOwner1 используется для преобразования
// динамического GetOwner в виртуальный
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\L3\l3Define.inc}

interface

uses
  Classes
  ;

type
 Tl3HackPersistentOwner = {abstract} class(TPersistent)
  {* Связка Tl3HackPersistentOwner и Tl3HackPersistentOwner1 используется для преобразования динамического GetOwner в виртуальный }
 protected
 // overridden protected methods
   function GetOwner: TPersistent; override;
 end;//Tl3HackPersistentOwner

implementation

uses
  l3HackPersistentOwner1
  ;

// start class Tl3HackPersistentOwner

function Tl3HackPersistentOwner.GetOwner: TPersistent;
//#UC START# *480DD1890221_4B27700102A0_var*
//#UC END# *480DD1890221_4B27700102A0_var*
begin
//#UC START# *480DD1890221_4B27700102A0_impl*
 Result := Tl3HackPersistentOwner1(Self).GetOwner;
//#UC END# *480DD1890221_4B27700102A0_impl*
end;//Tl3HackPersistentOwner.GetOwner

end.