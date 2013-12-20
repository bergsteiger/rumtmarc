unit AutoClass_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "EVD"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/EVD/AutoClass_Const.pas"
// Начат: 07.06.2008 19:47
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::AutoClass
//
// Авто-класс
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега AutoClass - "Авто-класс".
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idAutoClass = 86;

function k2_typAutoClass: Tk2Type;

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_AutoClass : Tk2Type = nil;


// start class AutoClassTag

function k2_typAutoClass: Tk2Type;
begin
 if (g_AutoClass = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_AutoClass := TevdNativeSchema(Tk2TypeTable.GetInstance).t_AutoClass;
 end;//g_AutoClass = nil
 Result := g_AutoClass;
end;

end.