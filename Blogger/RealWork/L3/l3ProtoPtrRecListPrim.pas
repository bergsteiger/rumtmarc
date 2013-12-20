unit l3ProtoPtrRecListPrim;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "L3"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/L3/l3ProtoPtrRecListPrim.pas"
// �����: 20.04.2006 17:10
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Low Level::L3::RecLists::Tl3ProtoPtrRecListPrim
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\L3\l3Define.inc}

interface

uses
  l3Memory,
  l3ProtoPersistentDataContainer,
  l3Interfaces,
  l3Types,
  l3Except,
  Classes
  ;

 {$Define l3Items_NeedsBeforeFreeItem}

type
 _DataType_ = Tl3Ptr;
 _l3UntypedList_Parent_ = Tl3ProtoPersistentDataContainer;
 {$Include ..\L3\l3UntypedList.imp.pas}
 Tl3ProtoPtrRecListPrim = class(_l3UntypedList_)
 end;//Tl3ProtoPtrRecListPrim

implementation

uses
  SysUtils,
  RTLConsts,
  l3Base,
  l3MinMax
  ;

type _Instance_R_ = Tl3ProtoPtrRecListPrim;

{$Include ..\L3\l3UntypedList.imp.pas}

end.