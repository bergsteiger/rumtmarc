unit Font_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/Font_Const.pas"
// �����: 07.06.2008 19:47
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::Font
//
// �����
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� Font - "�����".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idFont = 36;
var k2_idFont_Index : Integer = -1;
var k2_idFont_Pitch : Integer = -1;

function k2_typFont: Tk2Type;

//#UC START# *484CEE9A0170const_intf*
//#UC END# *484CEE9A0170const_intf*

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_Font : Tk2Type = nil;


// start class FontTag

function k2_typFont: Tk2Type;
begin
 if (g_Font = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_Font := TevdNativeSchema(Tk2TypeTable.GetInstance).t_Font;
 end;//g_Font = nil
 Result := g_Font;
end;

end.