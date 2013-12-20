unit DictItemEx_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/DictItemEx_Const.pas"
// �����: 07.06.2008 19:47
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::DictItemEx
//
// ����������� ������� �������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� DictItemEx - "����������� ������� �������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idDictItemEx = 87;

function k2_typDictItemEx: Tk2Type;

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_DictItemEx : Tk2Type = nil;


// start class DictItemExTag

function k2_typDictItemEx: Tk2Type;
begin
 if (g_DictItemEx = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_DictItemEx := TevdNativeSchema(Tk2TypeTable.GetInstance).t_DictItemEx;
 end;//g_DictItemEx = nil
 Result := g_DictItemEx;
end;

end.