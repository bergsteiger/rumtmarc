unit Division_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/Division_Const.pas"
// �����: 09.06.2008 10:39
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::Division
//
// ������ ��������� (�� ������������)
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� Division - "������ ��������� (�� ������������)".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idDivision = 102;
var k2_idDivision_Headers : Integer = -1;
var k2_idDivision_Footers : Integer = -1;

function k2_typDivision: Tk2Type;

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_Division : Tk2Type = nil;


// start class DivisionTag

function k2_typDivision: Tk2Type;
begin
 if (g_Division = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_Division := TevNativeSchema(Tk2TypeTable.GetInstance).t_Division;
 end;//g_Division = nil
 Result := g_Division;
end;

end.