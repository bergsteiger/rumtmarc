unit SimpleDocumentTextPara_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/SimpleDocumentTextPara_Const.pas"
// �����: 09.06.2008 10:39
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::SimpleDocumentTextPara
//
// ��������� �������� � "������� ����������"
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� SimpleDocumentTextPara - "��������� �������� � "������� ����������"".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idSimpleDocumentTextPara = 52;

function k2_typSimpleDocumentTextPara: Tk2Type;

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_SimpleDocumentTextPara : Tk2Type = nil;


// start class SimpleDocumentTextParaTag

function k2_typSimpleDocumentTextPara: Tk2Type;
begin
 if (g_SimpleDocumentTextPara = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_SimpleDocumentTextPara := TevNativeSchema(Tk2TypeTable.GetInstance).t_SimpleDocumentTextPara;
 end;//g_SimpleDocumentTextPara = nil
 Result := g_SimpleDocumentTextPara;
end;

end.