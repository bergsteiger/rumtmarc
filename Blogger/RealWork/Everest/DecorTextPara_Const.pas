unit DecorTextPara_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/DecorTextPara_Const.pas"
// �����: 09.06.2008 10:39
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::DecorTextPara
//
// ��������� �������� - ����������, �� �������������, �� ��������� � ������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� DecorTextPara - "��������� �������� - ����������, �� �������������, �� ��������� � ������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idDecorTextPara = 72;

function k2_typDecorTextPara: Tk2Type;

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_DecorTextPara : Tk2Type = nil;


// start class DecorTextParaTag

function k2_typDecorTextPara: Tk2Type;
begin
 if (g_DecorTextPara = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_DecorTextPara := TevNativeSchema(Tk2TypeTable.GetInstance).t_DecorTextPara;
 end;//g_DecorTextPara = nil
 Result := g_DecorTextPara;
end;

end.