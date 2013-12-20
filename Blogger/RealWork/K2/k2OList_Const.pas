unit k2OList_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "K2"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/K2/k2OList_Const.pas"
// �����: 17.07.1998 16:29
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::K2::Standard::k2Native::OList
//
// ������ ��������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� OList - "������ ��������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idOList = 30;

function k2_typOList: Tk2Type;

implementation

uses
  k2Native_Schema,
  k2Facade {a}
  ;
var
 g_OList : Tk2Type = nil;


// start class OListTag

function k2_typOList: Tk2Type;
begin
 if (g_OList = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is Tk2NativeSchema);
  g_OList := Tk2NativeSchema(Tk2TypeTable.GetInstance).t_OList;
 end;//g_OList = nil
 Result := g_OList;
end;

end.