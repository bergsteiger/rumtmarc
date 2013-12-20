unit k2Tag_Wrap;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2Tag_Wrap.pas"
// Начат: 07.09.1998 12:46
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Wrapper::Class>> Shared Delphi::K2::Standard::Wk2Tag
//
// Wk2Tag
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2Tag_Const,
  Persistent_Wrap,
  k2Interfaces,
  k2Base
  ;

type
 Wk2Tag = class(WPersistent)
  {* Wk2Tag }
 protected
 // overridden protected methods
   function New(aType: Tk2Type): Ik2Tag; override;
     {* создает атом данного типа. }
 end;//Wk2Tag

implementation

uses
  k2SmallTagObject
  ;

// start class Wk2Tag

function Wk2Tag.New(aType: Tk2Type): Ik2Tag;
//#UC START# *484CEAAF03C5_484941DA0047_var*
type
 Rk2TagObject = class of Tk2SmallTagObject;
//#UC END# *484CEAAF03C5_484941DA0047_var*
begin
//#UC START# *484CEAAF03C5_484941DA0047_impl*
 Result := nil;
 Assert(aType.MakeClass.InheritsFrom(Tk2SmallTagObject));
 // - очищаем предыдущий интерфейс, т.к. оказалось, что Delphi это не делает.
 Pointer(Result) := Pointer(Ik2Tag(Rk2TagObject(aType.MakeClass).Create(aType)));
//#UC END# *484CEAAF03C5_484941DA0047_impl*
end;//Wk2Tag.New

end.