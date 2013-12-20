unit DocSubLayer_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/DocSubLayer_Const.pas"
// �����: 07.06.2008 19:47
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::DocSubLayer
//
// ���� ����� ���������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� DocSubLayer - "���� ����� ���������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idDocSubLayer = 18;

function k2_typDocSubLayer: Tk2Type;

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_DocSubLayer : Tk2Type = nil;


// start class DocSubLayerTag

function k2_typDocSubLayer: Tk2Type;
begin
 if (g_DocSubLayer = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_DocSubLayer := TevdNativeSchema(Tk2TypeTable.GetInstance).t_DocSubLayer;
 end;//g_DocSubLayer = nil
 Result := g_DocSubLayer;
end;

end.