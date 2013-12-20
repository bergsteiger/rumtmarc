unit DictItem_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/DictItem_Const.pas"
// �����: 07.06.2008 19:47
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::DictItem
//
// ������� �������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� DictItem - "������� �������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idDictItem = 73;
var k2_idDictItem_Flags : Integer = -1;

function k2_typDictItem: Tk2Type;

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_DictItem : Tk2Type = nil;


// start class DictItemTag

function k2_typDictItem: Tk2Type;
begin
 if (g_DictItem = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_DictItem := TevdNativeSchema(Tk2TypeTable.GetInstance).t_DictItem;
 end;//g_DictItem = nil
 Result := g_DictItem;
end;

end.