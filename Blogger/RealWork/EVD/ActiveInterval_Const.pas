unit ActiveInterval_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "EVD"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/EVD/ActiveInterval_Const.pas"
// Начат: 07.06.2008 19:47
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::ActiveInterval
//
// Интервал действия
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега ActiveInterval - "Интервал действия".
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idActiveInterval = 84;

function k2_typActiveInterval: Tk2Type;

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_ActiveInterval : Tk2Type = nil;


// start class ActiveIntervalTag

function k2_typActiveInterval: Tk2Type;
begin
 if (g_ActiveInterval = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_ActiveInterval := TevdNativeSchema(Tk2TypeTable.GetInstance).t_ActiveInterval;
 end;//g_ActiveInterval = nil
 Result := g_ActiveInterval;
end;

end.