unit k2l3Base_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "K2"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/K2/k2l3Base_Const.pas"
// �����: 17.07.1998 16:29
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Atom::Class>> Shared Delphi::K2::Standard::k2Native::l3Base
//
// ������� ����� � ��������� ������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� l3Base - "������� ����� � ��������� ������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idl3Base = 9;

function k2_typl3Base: Tk2Type;

implementation

uses
  k2Native_Schema,
  k2Facade {a}
  ;
var
 g_l3Base : Tk2Type = nil;


// start class l3BaseAtom

function k2_typl3Base: Tk2Type;
begin
 if (g_l3Base = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is Tk2NativeSchema);
  g_l3Base := Tk2NativeSchema(Tk2TypeTable.GetInstance).t_l3Base;
 end;//g_l3Base = nil
 Result := g_l3Base;
end;

end.