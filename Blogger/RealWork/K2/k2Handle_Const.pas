unit k2Handle_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2Handle_Const.pas"
// Начат: 17.07.1998 16:29
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Atom::Class>> Shared Delphi::K2::Standard::k2Native::Handle
//
// Целочисленный идентификатор объекта
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега Handle - "Целочисленный идентификатор объекта".
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idHandle = 28;

function k2_typHandle: Tk2Type;

implementation

uses
  k2Native_Schema,
  k2Facade {a}
  ;
var
 g_Handle : Tk2Type = nil;


// start class HandleAtom

function k2_typHandle: Tk2Type;
begin
 if (g_Handle = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is Tk2NativeSchema);
  g_Handle := Tk2NativeSchema(Tk2TypeTable.GetInstance).t_Handle;
 end;//g_Handle = nil
 Result := g_Handle;
end;

end.