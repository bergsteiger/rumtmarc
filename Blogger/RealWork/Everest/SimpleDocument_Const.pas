unit SimpleDocument_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/SimpleDocument_Const.pas"
// �����: 09.06.2008 10:39
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::SimpleDocument
//
// ������� ��������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� SimpleDocument - "������� ��������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idSimpleDocument = 105;

function k2_typSimpleDocument: Tk2Type;

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_SimpleDocument : Tk2Type = nil;


// start class SimpleDocumentTag

function k2_typSimpleDocument: Tk2Type;
begin
 if (g_SimpleDocument = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_SimpleDocument := TevNativeSchema(Tk2TypeTable.GetInstance).t_SimpleDocument;
 end;//g_SimpleDocument = nil
 Result := g_SimpleDocument;
end;

end.