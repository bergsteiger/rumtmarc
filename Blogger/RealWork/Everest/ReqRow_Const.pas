unit ReqRow_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/ReqRow_Const.pas"
// Начат: 09.06.2008 10:39
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::ReqRow
//
// Строка контролов
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега ReqRow - "Строка контролов".
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idReqRow = 130;
var k2_idReqRow_ReqKind : Integer = -1;

function k2_typReqRow: Tk2Type;

//#UC START# *4857EA97011Dconst_intf*
//#UC END# *4857EA97011Dconst_intf*

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_ReqRow : Tk2Type = nil;


// start class ReqRowTag

function k2_typReqRow: Tk2Type;
begin
 if (g_ReqRow = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_ReqRow := TevNativeSchema(Tk2TypeTable.GetInstance).t_ReqRow;
 end;//g_ReqRow = nil
 Result := g_ReqRow;
end;

end.