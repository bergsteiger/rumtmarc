unit k2SomeDataContainer_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2SomeDataContainer_Const.pas"
// Начат: 17.07.1998 16:29
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Atom::Class>> Shared Delphi::K2::Standard::k2Native::SomeDataContainer
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега SomeDataContainer .
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2Base {a}
  ;

function k2_typSomeDataContainer: Tk2Type;

implementation

uses
  k2Native_Schema,
  k2Facade {a}
  ;
var
 g_SomeDataContainer : Tk2Type = nil;


// start class SomeDataContainerAtom

function k2_typSomeDataContainer: Tk2Type;
begin
 if (g_SomeDataContainer = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is Tk2NativeSchema);
  g_SomeDataContainer := Tk2NativeSchema(Tk2TypeTable.GetInstance).t_SomeDataContainer;
 end;//g_SomeDataContainer = nil
 Result := g_SomeDataContainer;
end;

end.