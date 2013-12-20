unit Formula_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/Formula_Const.pas"
// �����: 09.06.2008 10:39
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::Formula
//
// �������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� Formula - "�������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idFormula = 110;
var k2_idFormula_Data : Integer = -1;

function k2_typFormula: Tk2Type;

//#UC START# *4857926501CBconst_intf*
//#UC END# *4857926501CBconst_intf*

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_Formula : Tk2Type = nil;


// start class FormulaTag

function k2_typFormula: Tk2Type;
begin
 if (g_Formula = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_Formula := TevNativeSchema(Tk2TypeTable.GetInstance).t_Formula;
 end;//g_Formula = nil
 Result := g_Formula;
end;

end.