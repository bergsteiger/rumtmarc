unit NumANDDate_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/NumANDDate_Const.pas"
// �����: 07.06.2008 19:47
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::NumANDDate
//
// ����/�����
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� NumANDDate - "����/�����".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idNumANDDate = 82;

function k2_typNumANDDate: Tk2Type;

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_NumANDDate : Tk2Type = nil;


// start class NumANDDateTag

function k2_typNumANDDate: Tk2Type;
begin
 if (g_NumANDDate = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_NumANDDate := TevdNativeSchema(Tk2TypeTable.GetInstance).t_NumANDDate;
 end;//g_NumANDDate = nil
 Result := g_NumANDDate;
end;

end.