unit PageProperties_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "EVD"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/EVD/PageProperties_Const.pas"
// Начат: 07.06.2008 19:47
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::PageProperties
//
// Свойства страницы
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега PageProperties - "Свойства страницы".
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idPageProperties = 106;
var k2_idPageProperties_Orientation : Integer = -1;

function k2_typPageProperties: Tk2Type;

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_PageProperties : Tk2Type = nil;


// start class PagePropertiesTag

function k2_typPageProperties: Tk2Type;
begin
 if (g_PageProperties = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_PageProperties := TevdNativeSchema(Tk2TypeTable.GetInstance).t_PageProperties;
 end;//g_PageProperties = nil
 Result := g_PageProperties;
end;

end.