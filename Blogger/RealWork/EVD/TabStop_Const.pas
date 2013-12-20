unit TabStop_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/TabStop_Const.pas"
// �����: 07.06.2008 19:47
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::TabStop
//
// ������� ���������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� TabStop - "������� ���������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idTabStop = 114;
var k2_idTabStop_Type : Integer = -1;

function k2_typTabStop: Tk2Type;

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_TabStop : Tk2Type = nil;


// start class TabStopTag

function k2_typTabStop: Tk2Type;
begin
 if (g_TabStop = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_TabStop := TevdNativeSchema(Tk2TypeTable.GetInstance).t_TabStop;
 end;//g_TabStop = nil
 Result := g_TabStop;
end;

end.