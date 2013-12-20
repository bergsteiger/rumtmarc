unit Sub_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "EVD"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/EVD/Sub_Const.pas"
// Начат: 07.06.2008 19:47
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::Sub
//
// Метка
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега Sub - "Метка".
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idSub = 15;
var k2_idSub_Classes : Integer = -1;
var k2_idSub_AutoClasses : Integer = -1;
var k2_idSub_Types : Integer = -1;
var k2_idSub_KeyWords : Integer = -1;
var k2_idSub_Prefix : Integer = -1;
var k2_idSub_ServiceInfo : Integer = -1;

function k2_typSub: Tk2Type;

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_Sub : Tk2Type = nil;


// start class SubTag

function k2_typSub: Tk2Type;
begin
 if (g_Sub = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_Sub := TevdNativeSchema(Tk2TypeTable.GetInstance).t_Sub;
 end;//g_Sub = nil
 Result := g_Sub;
end;

end.