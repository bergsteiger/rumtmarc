unit HFParent_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/HFParent_Const.pas"
// �����: 09.06.2008 10:39
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::HFParent
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� HFParent .
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idHFParent = 99;
var k2_idHFParent_Type : Integer = -1;

function k2_typHFParent: Tk2Type;

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_HFParent : Tk2Type = nil;


// start class HFParentTag

function k2_typHFParent: Tk2Type;
begin
 if (g_HFParent = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_HFParent := TevNativeSchema(Tk2TypeTable.GetInstance).t_HFParent;
 end;//g_HFParent = nil
 Result := g_HFParent;
end;

end.