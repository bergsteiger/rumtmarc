unit TabStop_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "EVD"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/EVD/TabStop_Const.pas"
// Начат: 07.06.2008 19:47
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::TabStop
//
// Позиция табуляции
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега TabStop - "Позиция табуляции".
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idTabStop = 114;
var k2_idTabStop_Type : Integer = -1;

function k2_typTabStop: Tk2Type;

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_TabStop : Tk2Type = nil;


// start class TabStopTag

function k2_typTabStop: Tk2Type;
begin
 if (g_TabStop = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_TabStop := TevdNativeSchema(Tk2TypeTable.GetInstance).t_TabStop;
 end;//g_TabStop = nil
 Result := g_TabStop;
end;

end.