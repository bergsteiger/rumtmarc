unit SegmentsLayer_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/SegmentsLayer_Const.pas"
// �����: 07.06.2008 19:47
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::SegmentsLayer
//
// ���� �������� ����������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� SegmentsLayer - "���� �������� ����������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idSegmentsLayer = 19;

function k2_typSegmentsLayer: Tk2Type;

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_SegmentsLayer : Tk2Type = nil;


// start class SegmentsLayerTag

function k2_typSegmentsLayer: Tk2Type;
begin
 if (g_SegmentsLayer = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_SegmentsLayer := TevdNativeSchema(Tk2TypeTable.GetInstance).t_SegmentsLayer;
 end;//g_SegmentsLayer = nil
 Result := g_SegmentsLayer;
end;

end.