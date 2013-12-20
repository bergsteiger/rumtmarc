unit SgLHandle_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "EVD"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/EVD/SgLHandle_Const.pas"
// Начат: 07.06.2008 19:47
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Atom::Class>> Shared Delphi::EVD::Standard::evdNative::SgLHandle
//
// Идентификатор слоя отрезков оформления.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега SgLHandle - "Идентификатор слоя отрезков оформления.".
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idSgLHandle = 33;

function k2_typSgLHandle: Tk2Type;

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_SgLHandle : Tk2Type = nil;


// start class SgLHandleAtom

function k2_typSgLHandle: Tk2Type;
begin
 if (g_SgLHandle = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_SgLHandle := TevdNativeSchema(Tk2TypeTable.GetInstance).t_SgLHandle;
 end;//g_SgLHandle = nil
 Result := g_SgLHandle;
end;

end.