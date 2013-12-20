unit k2HugeTagObject;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "K2"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/K2/k2HugeTagObject.pas"
// �����: 15.12.1999 17:30
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::K2::k2CoreObjects::Tk2HugeTagObject
//
// ���� �� ���������� ��������� �����. � �������������� ����������� �������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\K2\k2Define.inc}

interface

uses
  l3BitArr,
  l3DataContainerWithoutIUnknown,
  Classes,
  k2Base,
  l3Interfaces,
  k2Interfaces,
  l3Types,
  k2Prim,
  k2BaseStruct,
  k2PureMixIns,
  k2BaseTypes
  ;

type
 _HashType_ = Tl3PtrHash;
 _k2HashTag_Parent_ = Tl3DataContainerWithoutIUnknown;
 {$Include ..\K2\k2HashTag.imp.pas}
 Tk2HugeTagObject = class(_k2HashTag_)
  {* ���� �� ���������� ��������� �����. � �������������� ����������� ������� }
 end;//Tk2HugeTagObject

implementation

uses
  SysUtils,
  k2TagList,
  k2List,
  k2Tags,
  l3Dict,
  k2Const,
  l3Const,
  l3String,
  k2Except,
  k2Strings,
  TypInfo,
  l3Stream,
  l3Base,
  k2Facade
  ;

type _Instance_R_ = Tk2HugeTagObject;

{$Include ..\K2\k2HashTag.imp.pas}

end.