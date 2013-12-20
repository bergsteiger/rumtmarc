unit QueryCard_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/QueryCard_Const.pas"
// Начат: 09.06.2008 10:39
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::QueryCard
//
// Новая КЗ
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега QueryCard - "Новая КЗ".
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idQueryCard = 129;
var k2_idQueryCard_CardType : Integer = -1;

function k2_typQueryCard: Tk2Type;

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_QueryCard : Tk2Type = nil;


// start class QueryCardTag

function k2_typQueryCard: Tk2Type;
begin
 if (g_QueryCard = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_QueryCard := TevNativeSchema(Tk2TypeTable.GetInstance).t_QueryCard;
 end;//g_QueryCard = nil
 Result := g_QueryCard;
end;

end.