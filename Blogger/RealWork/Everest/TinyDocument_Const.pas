unit TinyDocument_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/TinyDocument_Const.pas"
// �����: 09.06.2008 10:39
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::TinyDocument
//
// ������� ��������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� TinyDocument - "������� ��������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idTinyDocument = 83;

function k2_typTinyDocument: Tk2Type;

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_TinyDocument : Tk2Type = nil;


// start class TinyDocumentTag

function k2_typTinyDocument: Tk2Type;
begin
 if (g_TinyDocument = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_TinyDocument := TevNativeSchema(Tk2TypeTable.GetInstance).t_TinyDocument;
 end;//g_TinyDocument = nil
 Result := g_TinyDocument;
end;

end.