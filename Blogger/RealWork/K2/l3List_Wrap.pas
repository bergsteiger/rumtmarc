unit l3List_Wrap;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/l3List_Wrap.pas"
// Начат: 07.09.1998 12:46
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Wrapper::Class>> Shared Delphi::K2::Standard::Wl3List
//
// Wl3List
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2OList_Const,
  Persistent_Wrap,
  k2Interfaces,
  k2Base
  ;

type
 Wl3List = class(WPersistent)
  {* Wl3List }
 protected
 // overridden protected methods
   function New(aType: Tk2Type): Ik2Tag; override;
     {* создает атом данного типа. }
 end;//Wl3List

implementation

uses
  k2List
  ;

// start class Wl3List

function Wl3List.New(aType: Tk2Type): Ik2Tag;
//#UC START# *484CEAAF03C5_4849461200AA_var*
type
 Rk2List = class of Tk2List;  
//#UC END# *484CEAAF03C5_4849461200AA_var*
begin
//#UC START# *484CEAAF03C5_4849461200AA_impl*
 Result := nil;
 // - очищаем предыдущий интерфейс, т.к. оказалось, что Delphi это не делает.
 Pointer(Result) := Pointer(Ik2Tag(Rk2List(aType.MakeClass).Create(aType)));
//#UC END# *484CEAAF03C5_4849461200AA_impl*
end;//Wl3List.New

end.