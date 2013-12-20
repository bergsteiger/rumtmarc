unit k2Inch_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "K2"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/K2/k2Inch_Const.pas"
// �����: 17.07.1998 16:29
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Atom::Class>> Shared Delphi::K2::Standard::k2Native::Inch
//
// ����
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� Inch - "����".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idInch = 29;

function k2_typInch: Tk2Type;

implementation

uses
  k2Native_Schema,
  k2Facade {a}
  ;
var
 g_Inch : Tk2Type = nil;


// start class InchAtom

function k2_typInch: Tk2Type;
begin
 if (g_Inch = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is Tk2NativeSchema);
  g_Inch := Tk2NativeSchema(Tk2TypeTable.GetInstance).t_Inch;
 end;//g_Inch = nil
 Result := g_Inch;
end;

end.