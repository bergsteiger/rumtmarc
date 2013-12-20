unit ActiveInterval_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/ActiveInterval_Const.pas"
// �����: 07.06.2008 19:47
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::ActiveInterval
//
// �������� ��������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� ActiveInterval - "�������� ��������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idActiveInterval = 84;

function k2_typActiveInterval: Tk2Type;

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_ActiveInterval : Tk2Type = nil;


// start class ActiveIntervalTag

function k2_typActiveInterval: Tk2Type;
begin
 if (g_ActiveInterval = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_ActiveInterval := TevdNativeSchema(Tk2TypeTable.GetInstance).t_ActiveInterval;
 end;//g_ActiveInterval = nil
 Result := g_ActiveInterval;
end;

end.