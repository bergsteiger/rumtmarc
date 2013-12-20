unit DictEntry_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/DictEntry_Const.pas"
// �����: 09.06.2008 10:39
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::DictEntry
//
// ��������� ������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� DictEntry - "��������� ������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idDictEntry = 49;
var k2_idDictEntry_ShortName : Integer = -1;

function k2_typDictEntry: Tk2Type;

//#UC START# *4857CB7D0340const_intf*
//#UC END# *4857CB7D0340const_intf*

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_DictEntry : Tk2Type = nil;


// start class DictEntryTag

function k2_typDictEntry: Tk2Type;
begin
 if (g_DictEntry = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_DictEntry := TevNativeSchema(Tk2TypeTable.GetInstance).t_DictEntry;
 end;//g_DictEntry = nil
 Result := g_DictEntry;
end;

end.