unit NodeGroup_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/NodeGroup_Const.pas"
// �����: 09.06.2008 10:39
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::NodeGroup
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� NodeGroup .
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idNodeGroup = 46;

function k2_typNodeGroup: Tk2Type;

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_NodeGroup : Tk2Type = nil;


// start class NodeGroupTag

function k2_typNodeGroup: Tk2Type;
begin
 if (g_NodeGroup = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_NodeGroup := TevNativeSchema(Tk2TypeTable.GetInstance).t_NodeGroup;
 end;//g_NodeGroup = nil
 Result := g_NodeGroup;
end;

end.