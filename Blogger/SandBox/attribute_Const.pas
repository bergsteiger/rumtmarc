unit attribute_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "SandBox"
// Модуль: "attribute_Const.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: Tag::Class Shared Delphi Sand Box::SandBox::Meta::Meta::attribute
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега attribute .
{$Include ..\SandBox\sbDefine.inc}

interface

uses
  k2Base {a}
  ;

function k2_typattribute: Tk2Type;

implementation

uses
  Meta_Schema,
  k2Facade {a}
  ;
var
 g_attribute : Tk2Type = nil;


// start class attributeTag

function k2_typattribute: Tk2Type;
begin
 if (g_attribute = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TMetaSchema);
  g_attribute := TMetaSchema(Tk2TypeTable.GetInstance).t_attribute;
 end;//g_attribute = nil
 Result := g_attribute;
end;

end.