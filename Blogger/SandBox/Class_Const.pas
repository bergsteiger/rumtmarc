unit Class_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "SandBox"
// ������: "Class_Const.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: Tag::Class Shared Delphi Sand Box::SandBox::Meta::Meta::Class
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� Class .
{$Include ..\SandBox\sbDefine.inc}

interface

uses
  k2Base {a}
  ;
var k2_idClass_Extends : Integer = -1;
var k2_idClass_Children : Integer = -1;

function k2_typClass: Tk2Type;

implementation

uses
  Meta_Schema,
  k2Facade {a}
  ;
var
 g_Class : Tk2Type = nil;


// start class ClassTag

function k2_typClass: Tk2Type;
begin
 if (g_Class = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TMetaSchema);
  g_Class := TMetaSchema(Tk2TypeTable.GetInstance).t_Class;
 end;//g_Class = nil
 Result := g_Class;
end;

end.