unit ObjectSegment_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/ObjectSegment_Const.pas"
// �����: 07.06.2008 19:47
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::ObjectSegment
//
// ��������� ��� �������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� ObjectSegment - "��������� ��� �������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idObjectSegment = 51;
var k2_idObjectSegment_Children : Integer = -1;

function k2_typObjectSegment: Tk2Type;

//#UC START# *48564C5800DDconst_intf*
//#UC END# *48564C5800DDconst_intf*

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_ObjectSegment : Tk2Type = nil;


// start class ObjectSegmentTag

function k2_typObjectSegment: Tk2Type;
begin
 if (g_ObjectSegment = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_ObjectSegment := TevdNativeSchema(Tk2TypeTable.GetInstance).t_ObjectSegment;
 end;//g_ObjectSegment = nil
 Result := g_ObjectSegment;
end;

end.