unit NSRCTag_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/NSRCTag_Const.pas"
// �����: 07.06.2008 19:47
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::NSRCTag
//
// ������� ����� �����
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� NSRCTag - "������� ����� �����".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idNSRCTag = 89;

function k2_typNSRCTag: Tk2Type;

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_NSRCTag : Tk2Type = nil;


// start class NSRCTagTag

function k2_typNSRCTag: Tk2Type;
begin
 if (g_NSRCTag = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_NSRCTag := TevdNativeSchema(Tk2TypeTable.GetInstance).t_NSRCTag;
 end;//g_NSRCTag = nil
 Result := g_NSRCTag;
end;

end.