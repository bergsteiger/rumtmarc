unit k2IUnknown_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "K2"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/K2/k2IUnknown_Const.pas"
// Начат: 17.07.1998 16:29
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Atom::Class>> Shared Delphi::K2::Standard::k2Native::IUnknown
//
// Интерфейс
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега IUnknown - "Интерфейс".
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idIUnknown = 98;

function k2_typIUnknown: Tk2Type;

implementation

uses
  k2Native_Schema,
  k2Facade {a}
  ;
var
 g_IUnknown : Tk2Type = nil;


// start class IUnknownAtom

function k2_typIUnknown: Tk2Type;
begin
 if (g_IUnknown = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is Tk2NativeSchema);
  g_IUnknown := Tk2NativeSchema(Tk2TypeTable.GetInstance).t_IUnknown;
 end;//g_IUnknown = nil
 Result := g_IUnknown;
end;

end.