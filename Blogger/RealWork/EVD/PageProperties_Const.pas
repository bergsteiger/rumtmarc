unit PageProperties_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/PageProperties_Const.pas"
// �����: 07.06.2008 19:47
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::PageProperties
//
// �������� ��������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� PageProperties - "�������� ��������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idPageProperties = 106;
var k2_idPageProperties_Orientation : Integer = -1;

function k2_typPageProperties: Tk2Type;

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_PageProperties : Tk2Type = nil;


// start class PagePropertiesTag

function k2_typPageProperties: Tk2Type;
begin
 if (g_PageProperties = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_PageProperties := TevdNativeSchema(Tk2TypeTable.GetInstance).t_PageProperties;
 end;//g_PageProperties = nil
 Result := g_PageProperties;
end;

end.