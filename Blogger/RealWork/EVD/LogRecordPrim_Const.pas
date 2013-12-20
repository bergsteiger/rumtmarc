unit LogRecordPrim_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/LogRecordPrim_Const.pas"
// �����: 07.06.2008 19:47
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::LogRecordPrim
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� LogRecordPrim .
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idLogRecordPrim = 112;

function k2_typLogRecordPrim: Tk2Type;

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_LogRecordPrim : Tk2Type = nil;


// start class LogRecordPrimTag

function k2_typLogRecordPrim: Tk2Type;
begin
 if (g_LogRecordPrim = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_LogRecordPrim := TevdNativeSchema(Tk2TypeTable.GetInstance).t_LogRecordPrim;
 end;//g_LogRecordPrim = nil
 Result := g_LogRecordPrim;
end;

end.