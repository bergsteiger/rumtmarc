unit FontName_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/FontName_Const.pas"
// �����: 07.06.2008 19:47
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::FontName
//
// ��������� ������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� FontName - "��������� ������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idFontName = 35;

function k2_typFontName: Tk2Type;

//#UC START# *484CE9CE0107const_intf*
//#UC END# *484CE9CE0107const_intf*

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_FontName : Tk2Type = nil;


// start class FontNameTag

function k2_typFontName: Tk2Type;
begin
 if (g_FontName = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_FontName := TevdNativeSchema(Tk2TypeTable.GetInstance).t_FontName;
 end;//g_FontName = nil
 Result := g_FontName;
end;

end.