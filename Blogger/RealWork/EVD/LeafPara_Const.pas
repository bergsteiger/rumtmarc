unit LeafPara_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/LeafPara_Const.pas"
// �����: 07.06.2008 19:47
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::LeafPara
//
// "���������" ��������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� LeafPara - ""���������" ��������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idLeafPara = 117;

function k2_typLeafPara: Tk2Type;

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_LeafPara : Tk2Type = nil;


// start class LeafParaTag

function k2_typLeafPara: Tk2Type;
begin
 if (g_LeafPara = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_LeafPara := TevdNativeSchema(Tk2TypeTable.GetInstance).t_LeafPara;
 end;//g_LeafPara = nil
 Result := g_LeafPara;
end;

end.