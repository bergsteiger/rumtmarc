unit HyperLink_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/HyperLink_Const.pas"
// �����: 07.06.2008 19:47
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::HyperLink
//
// �������������� ������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� HyperLink - "�������������� ������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idHyperLink = 14;
var k2_idHyperLink_Children : Integer = -1;

function k2_typHyperLink: Tk2Type;

//#UC START# *485649E10305const_intf*
//#UC END# *485649E10305const_intf*

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_HyperLink : Tk2Type = nil;


// start class HyperLinkTag

function k2_typHyperLink: Tk2Type;
begin
 if (g_HyperLink = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_HyperLink := TevdNativeSchema(Tk2TypeTable.GetInstance).t_HyperLink;
 end;//g_HyperLink = nil
 Result := g_HyperLink;
end;

end.