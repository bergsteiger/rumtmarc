unit SBSCell_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/SBSCell_Const.pas"
// �����: 09.06.2008 10:39
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::SBSCell
//
// ������ �������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� SBSCell - "������ �������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idSBSCell = 109;

function k2_typSBSCell: Tk2Type;

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_SBSCell : Tk2Type = nil;


// start class SBSCellTag

function k2_typSBSCell: Tk2Type;
begin
 if (g_SBSCell = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_SBSCell := TevNativeSchema(Tk2TypeTable.GetInstance).t_SBSCell;
 end;//g_SBSCell = nil
 Result := g_SBSCell;
end;

end.