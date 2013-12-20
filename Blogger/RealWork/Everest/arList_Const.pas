unit arList_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Модуль: "w:/common/components/gui/Garant/Everest/arList_Const.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evArchi::List
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега List .
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idList = 16;

function k2_typList: Tk2Type;

implementation

uses
  evArchi_Schema,
  k2Facade {a}
  ;
var
 g_List : Tk2Type = nil;


// start class ListTag

function k2_typList: Tk2Type;
begin
 if (g_List = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevArchiSchema);
  g_List := TevArchiSchema(Tk2TypeTable.GetInstance).t_List;
 end;//g_List = nil
 Result := g_List;
end;

end.