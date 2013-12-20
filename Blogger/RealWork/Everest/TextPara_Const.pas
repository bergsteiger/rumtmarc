unit TextPara_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/TextPara_Const.pas"
// �����: 09.06.2008 10:39
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::TextPara
//
// ��������� ��������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� TextPara - "��������� ��������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idTextPara = 22;
var k2_idTextPara_Segments : Integer = -1;
var k2_idTextPara_TabStops : Integer = -1;

function k2_typTextPara: Tk2Type;

//#UC START# *485683750360const_intf*
//#UC END# *485683750360const_intf*

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_TextPara : Tk2Type = nil;


// start class TextParaTag

function k2_typTextPara: Tk2Type;
begin
 if (g_TextPara = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_TextPara := TevNativeSchema(Tk2TypeTable.GetInstance).t_TextPara;
 end;//g_TextPara = nil
 Result := g_TextPara;
end;

end.