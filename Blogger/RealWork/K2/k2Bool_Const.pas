unit k2Bool_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2Bool_Const.pas"
// Начат: 17.07.1998 16:29
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Atom::Class>> Shared Delphi::K2::Standard::k2Native::Bool
//
// Логическое значение
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега Bool - "Логическое значение".
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idBool = 3;

function k2_typBool: Tk2Type;

implementation

uses
  k2Native_Schema,
  k2Facade {a}
  ;
var
 g_Bool : Tk2Type = nil;


// start class BoolAtom

function k2_typBool: Tk2Type;
begin
 if (g_Bool = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is Tk2NativeSchema);
  g_Bool := Tk2NativeSchema(Tk2TypeTable.GetInstance).t_Bool;
 end;//g_Bool = nil
 Result := g_Bool;
end;

end.