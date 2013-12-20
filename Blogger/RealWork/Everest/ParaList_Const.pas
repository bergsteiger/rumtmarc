unit ParaList_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/ParaList_Const.pas"
// �����: 09.06.2008 10:39
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::ParaList
//
// ������ ����������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� ParaList - "������ ����������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idParaList = 23;
var k2_idParaList_Orientation : Integer = -1;
var k2_idParaList_Children : Integer = -1;

function k2_typParaList: Tk2Type;

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_ParaList : Tk2Type = nil;


// start class ParaListTag

function k2_typParaList: Tk2Type;
begin
 if (g_ParaList = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_ParaList := TevNativeSchema(Tk2TypeTable.GetInstance).t_ParaList;
 end;//g_ParaList = nil
 Result := g_ParaList;
end;

end.