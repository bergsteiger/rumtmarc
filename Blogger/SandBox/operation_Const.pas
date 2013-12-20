unit operation_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "SandBox"
// Модуль: "operation_Const.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: Tag::Class Shared Delphi Sand Box::SandBox::Meta::Meta::operation
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега operation .
{$Include ..\SandBox\sbDefine.inc}

interface

uses
  k2Base {a}
  ;

function k2_typoperation: Tk2Type;

implementation

uses
  Meta_Schema,
  k2Facade {a}
  ;
var
 g_operation : Tk2Type = nil;


// start class operationTag

function k2_typoperation: Tk2Type;
begin
 if (g_operation = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TMetaSchema);
  g_operation := TMetaSchema(Tk2TypeTable.GetInstance).t_operation;
 end;//g_operation = nil
 Result := g_operation;
end;

end.