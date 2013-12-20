unit FramePart_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/FramePart_Const.pas"
// �����: 07.06.2008 19:47
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::FramePart
//
// ����� ����� ������ �������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� FramePart - "����� ����� ������ �������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idFramePart = 40;

function k2_typFramePart: Tk2Type;

//#UC START# *484D27FD005Dconst_intf*
//#UC END# *484D27FD005Dconst_intf*

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_FramePart : Tk2Type = nil;


// start class FramePartTag

function k2_typFramePart: Tk2Type;
begin
 if (g_FramePart = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_FramePart := TevdNativeSchema(Tk2TypeTable.GetInstance).t_FramePart;
 end;//g_FramePart = nil
 Result := g_FramePart;
end;

end.