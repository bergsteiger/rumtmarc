unit ExtDataPara_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/ExtDataPara_Const.pas"
// �����: 09.06.2008 10:39
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::ExtDataPara
//
// �������� � ������� �� ������� �������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� ExtDataPara - "�������� � ������� �� ������� �������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idExtDataPara = 132;

function k2_typExtDataPara: Tk2Type;

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_ExtDataPara : Tk2Type = nil;


// start class ExtDataParaTag

function k2_typExtDataPara: Tk2Type;
begin
 if (g_ExtDataPara = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_ExtDataPara := TevNativeSchema(Tk2TypeTable.GetInstance).t_ExtDataPara;
 end;//g_ExtDataPara = nil
 Result := g_ExtDataPara;
end;

end.