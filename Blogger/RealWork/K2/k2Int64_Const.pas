unit k2Int64_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "K2"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/K2/k2Int64_Const.pas"
// �����: 17.07.1998 16:29
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::K2::Standard::k2Native::Int64
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� Int64 .
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2Base {a}
  ;

function k2_typInt64: Tk2Type;

implementation

uses
  k2Native_Schema,
  k2Facade {a}
  ;
var
 g_Int64 : Tk2Type = nil;


// start class Int64Tag

function k2_typInt64: Tk2Type;
begin
 if (g_Int64 = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is Tk2NativeSchema);
  g_Int64 := Tk2NativeSchema(Tk2TypeTable.GetInstance).t_Int64;
 end;//g_Int64 = nil
 Result := g_Int64;
end;

end.