unit SbLHandle_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/SbLHandle_Const.pas"
// �����: 07.06.2008 19:47
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Atom::Class>> Shared Delphi::EVD::Standard::evdNative::SbLHandle
//
// ������������� ���� �����
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� SbLHandle - "������������� ���� �����".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idSbLHandle = 34;

function k2_typSbLHandle: Tk2Type;

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_SbLHandle : Tk2Type = nil;


// start class SbLHandleAtom

function k2_typSbLHandle: Tk2Type;
begin
 if (g_SbLHandle = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_SbLHandle := TevdNativeSchema(Tk2TypeTable.GetInstance).t_SbLHandle;
 end;//g_SbLHandle = nil
 Result := g_SbLHandle;
end;

end.