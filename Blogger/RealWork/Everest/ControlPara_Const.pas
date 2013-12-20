unit ControlPara_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/ControlPara_Const.pas"
// �����: 09.06.2008 10:39
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::ControlPara
//
// �������� �������������� ����� ������� �����
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� ControlPara - "�������� �������������� ����� ������� �����".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idControlPara = 119;
var k2_idControlPara_Type : Integer = -1;

function k2_typControlPara: Tk2Type;

//#UC START# *4857923F0186const_intf*
//#UC END# *4857923F0186const_intf*

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_ControlPara : Tk2Type = nil;


// start class ControlParaTag

function k2_typControlPara: Tk2Type;
begin
 if (g_ControlPara = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_ControlPara := TevNativeSchema(Tk2TypeTable.GetInstance).t_ControlPara;
 end;//g_ControlPara = nil
 Result := g_ControlPara;
end;

end.