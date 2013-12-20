unit k2Types;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "K2"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/K2/k2Types.pas"
// �����: 01.12.1998 19:16
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Interfaces::Category>> Shared Delphi::K2::k2Types
//
// ������� ����.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\K2\k2Define.inc}

interface

uses
  Classes,
  l3PrimString
  ;

type
 Tk2TypeKind = (
   k2_tkInteger
 , k2_tkBool
 , k2_tkObject
 , k2_tkTransparent
 , k2_tkStream
 );//Tk2TypeKind

 Tk2VarKind = (
   k2_vkInteger
 , k2_vkString
 , k2_vkTransparent
 , k2_vkStream
 );//Tk2VarKind

 Tk2Variant = record
  Case Kind: Tk2VarKind of
   k2_vkInteger: (AsInteger: Integer);
   k2_vkString: (AsString: Tl3PrimString);
   k2_vkStream: (AsStream: TStream);
 end;//Tk2Variant

implementation

end.