unit Division_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/Division_Const.pas"
// Начат: 09.06.2008 10:39
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::Division
//
// Раздел документа (не используется)
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега Division - "Раздел документа (не используется)".
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idDivision = 102;
var k2_idDivision_Headers : Integer = -1;
var k2_idDivision_Footers : Integer = -1;

function k2_typDivision: Tk2Type;

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_Division : Tk2Type = nil;


// start class DivisionTag

function k2_typDivision: Tk2Type;
begin
 if (g_Division = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_Division := TevNativeSchema(Tk2TypeTable.GetInstance).t_Division;
 end;//g_Division = nil
 Result := g_Division;
end;

end.