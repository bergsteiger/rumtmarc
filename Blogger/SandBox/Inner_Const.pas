unit Inner_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "SandBox"
// ������: "Inner_Const.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: Tag::Class Shared Delphi Sand Box::SandBox::Meta::Meta::Inner
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� Inner .
{$Include ..\SandBox\sbDefine.inc}

interface

uses
  k2Base {a}
  ;

function k2_typInner: Tk2Type;

implementation

uses
  Meta_Schema,
  k2Facade {a}
  ;
var
 g_Inner : Tk2Type = nil;


// start class InnerTag

function k2_typInner: Tk2Type;
begin
 if (g_Inner = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TMetaSchema);
  g_Inner := TMetaSchema(Tk2TypeTable.GetInstance).t_Inner;
 end;//g_Inner = nil
 Result := g_Inner;
end;

end.