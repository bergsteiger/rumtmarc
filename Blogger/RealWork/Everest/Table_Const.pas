unit Table_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/Table_Const.pas"
// �����: 09.06.2008 10:39
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::Table
//
// �������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� Table - "�������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idTable = 24;

function k2_typTable: Tk2Type;

//#UC START# *4857D48E00F4const_intf*
//#UC END# *4857D48E00F4const_intf*

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_Table : Tk2Type = nil;


// start class TableTag

function k2_typTable: Tk2Type;
begin
 if (g_Table = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_Table := TevNativeSchema(Tk2TypeTable.GetInstance).t_Table;
 end;//g_Table = nil
 Result := g_Table;
end;

end.