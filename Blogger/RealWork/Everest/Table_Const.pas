unit Table_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/Table_Const.pas"
// Начат: 09.06.2008 10:39
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::Table
//
// Таблица
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега Table - "Таблица".
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idTable = 24;

function k2_typTable: Tk2Type;

//#UC START# *4857D48E00F4const_intf*
//#UC END# *4857D48E00F4const_intf*

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_Table : Tk2Type = nil;


// start class TableTag

function k2_typTable: Tk2Type;
begin
 if (g_Table = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_Table := TevNativeSchema(Tk2TypeTable.GetInstance).t_Table;
 end;//g_Table = nil
 Result := g_Table;
end;

end.