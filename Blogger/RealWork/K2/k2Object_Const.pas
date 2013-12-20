unit k2Object_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "K2"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/K2/k2Object_Const.pas"
// �����: 17.07.1998 16:29
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Atom::Class>> Shared Delphi::K2::Standard::k2Native::Object
//
// ������� �����
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� Object - "������� �����".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idObject = 6;

function k2_typObject: Tk2Type;

implementation

uses
  k2Native_Schema,
  k2Facade {a}
  ;
var
 g_Object : Tk2Type = nil;


// start class ObjectAtom

function k2_typObject: Tk2Type;
begin
 if (g_Object = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is Tk2NativeSchema);
  g_Object := Tk2NativeSchema(Tk2TypeTable.GetInstance).t_Object;
 end;//g_Object = nil
 Result := g_Object;
end;

end.