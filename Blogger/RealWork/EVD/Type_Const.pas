unit Type_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/Type_Const.pas"
// �����: 07.06.2008 19:47
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Atom::Class>> Shared Delphi::EVD::Standard::evdNative::Type
//
// ��� �������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� Type - "��� �������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idType = 76;

function k2_typType: Tk2Type;

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_Type : Tk2Type = nil;


// start class TypeAtom

function k2_typType: Tk2Type;
begin
 if (g_Type = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_Type := TevdNativeSchema(Tk2TypeTable.GetInstance).t_Type;
 end;//g_Type = nil
 Result := g_Type;
end;

end.