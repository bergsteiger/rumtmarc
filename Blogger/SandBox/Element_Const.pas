unit Element_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "SandBox"
// Модуль: "Element_Const.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: Tag::Class Shared Delphi Sand Box::SandBox::Meta::Meta::Element
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега Element .
{$Include ..\SandBox\sbDefine.inc}

interface

uses
  k2Base {a}
  ;
var k2_idElement_Visisbility : Integer = -1;
var k2_idElement_Abstract : Integer = -1;

function k2_typElement: Tk2Type;

implementation

uses
  Meta_Schema,
  k2Facade {a}
  ;
var
 g_Element : Tk2Type = nil;


// start class ElementTag

function k2_typElement: Tk2Type;
begin
 if (g_Element = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TMetaSchema);
  g_Element := TMetaSchema(Tk2TypeTable.GetInstance).t_Element;
 end;//g_Element = nil
 Result := g_Element;
end;

end.