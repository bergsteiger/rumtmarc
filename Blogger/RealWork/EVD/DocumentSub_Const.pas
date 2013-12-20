unit DocumentSub_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/DocumentSub_Const.pas"
// �����: 07.06.2008 19:47
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::DocumentSub
//
// ����� � ���������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� DocumentSub - "����� � ���������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idDocumentSub = 11;

function k2_typDocumentSub: Tk2Type;

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_DocumentSub : Tk2Type = nil;


// start class DocumentSubTag

function k2_typDocumentSub: Tk2Type;
begin
 if (g_DocumentSub = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_DocumentSub := TevdNativeSchema(Tk2TypeTable.GetInstance).t_DocumentSub;
 end;//g_DocumentSub = nil
 Result := g_DocumentSub;
end;

end.