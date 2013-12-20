unit TableCell_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/TableCell_Const.pas"
// �����: 09.06.2008 10:39
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::TableCell
//
// ������ �������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� TableCell - "������ �������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idTableCell = 27;
var k2_idTableCell_MergeStatus : Integer = -1;
var k2_idTableCell_VerticalAligment : Integer = -1;

function k2_typTableCell: Tk2Type;

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_TableCell : Tk2Type = nil;


// start class TableCellTag

function k2_typTableCell: Tk2Type;
begin
 if (g_TableCell = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_TableCell := TevNativeSchema(Tk2TypeTable.GetInstance).t_TableCell;
 end;//g_TableCell = nil
 Result := g_TableCell;
end;

end.