unit SectionBreak_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/SectionBreak_Const.pas"
// �����: 07.06.2008 19:47
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::SectionBreak
//
// ������ �������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� SectionBreak - "������ �������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idSectionBreak = 104;

function k2_typSectionBreak: Tk2Type;

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_SectionBreak : Tk2Type = nil;


// start class SectionBreakTag

function k2_typSectionBreak: Tk2Type;
begin
 if (g_SectionBreak = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_SectionBreak := TevdNativeSchema(Tk2TypeTable.GetInstance).t_SectionBreak;
 end;//g_SectionBreak = nil
 Result := g_SectionBreak;
end;

end.