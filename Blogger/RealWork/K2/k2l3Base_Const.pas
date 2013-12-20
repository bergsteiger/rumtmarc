unit k2l3Base_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2l3Base_Const.pas"
// Начат: 17.07.1998 16:29
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Atom::Class>> Shared Delphi::K2::Standard::k2Native::l3Base
//
// Базовый класс с подсчетом ссылок
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега l3Base - "Базовый класс с подсчетом ссылок".
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idl3Base = 9;

function k2_typl3Base: Tk2Type;

implementation

uses
  k2Native_Schema,
  k2Facade {a}
  ;
var
 g_l3Base : Tk2Type = nil;


// start class l3BaseAtom

function k2_typl3Base: Tk2Type;
begin
 if (g_l3Base = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is Tk2NativeSchema);
  g_l3Base := Tk2NativeSchema(Tk2TypeTable.GetInstance).t_l3Base;
 end;//g_l3Base = nil
 Result := g_l3Base;
end;

end.