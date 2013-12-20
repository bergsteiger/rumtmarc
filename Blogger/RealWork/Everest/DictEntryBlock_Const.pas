unit DictEntryBlock_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/DictEntryBlock_Const.pas"
// �����: 09.06.2008 10:39
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::DictEntryBlock
//
// ������� ��������� ������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� DictEntryBlock - "������� ��������� ������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idDictEntryBlock = 48;

function k2_typDictEntryBlock: Tk2Type;

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_DictEntryBlock : Tk2Type = nil;


// start class DictEntryBlockTag

function k2_typDictEntryBlock: Tk2Type;
begin
 if (g_DictEntryBlock = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_DictEntryBlock := TevNativeSchema(Tk2TypeTable.GetInstance).t_DictEntryBlock;
 end;//g_DictEntryBlock = nil
 Result := g_DictEntryBlock;
end;

end.