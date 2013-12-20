unit ObjectWithHandle_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "EVD"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/EVD/ObjectWithHandle_Const.pas"
// Начат: 07.06.2008 19:47
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::ObjectWithHandle
//
// Объект с идентификатором
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега ObjectWithHandle - "Объект с идентификатором".
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idObjectWithHandle = 32;

function k2_typObjectWithHandle: Tk2Type;

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_ObjectWithHandle : Tk2Type = nil;


// start class ObjectWithHandleTag

function k2_typObjectWithHandle: Tk2Type;
begin
 if (g_ObjectWithHandle = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_ObjectWithHandle := TevdNativeSchema(Tk2TypeTable.GetInstance).t_ObjectWithHandle;
 end;//g_ObjectWithHandle = nil
 Result := g_ObjectWithHandle;
end;

end.