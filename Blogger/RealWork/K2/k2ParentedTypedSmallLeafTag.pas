unit k2ParentedTypedSmallLeafTag;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "K2"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/K2/k2ParentedTypedSmallLeafTag.pas"
// �����: 20.07.2009 19:04
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::K2::k2CoreObjects::Tk2ParentedTypedSmallLeafTag
//
// ��������� ��� � ������� ����������� �����, ������� ������ �� �������� � ������� ����� �� �����
// 32 (������������) ���������
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
  k2Base,
  l3DataContainerWithoutIUnknown,
  Classes,
  l3Interfaces,
  k2Interfaces,
  l3Types,
  k2Prim,
  k2BaseStruct,
  k2PureMixIns,
  k2BaseTypes
  ;

type
//#UC START# *4A64874301F2ci*
 {$Define k2Tag_No_f_TagType}
//#UC END# *4A64874301F2ci*
 _HashType_ = Tl3OneBytePtrHash;
 _k2HashTag_Parent_ = Tl3DataContainerWithoutIUnknown;
 {$Include ..\K2\k2HashTag.imp.pas}
 _k2ParentedTagObject_Parent_ = _k2HashTag_;
 {$Include ..\K2\k2ParentedTagObject.imp.pas}
 Tk2ParentedTypedSmallLeafTag = class(_k2ParentedTagObject_)
  {* ��������� ��� � ������� ����������� �����, ������� ������ �� �������� � ������� ����� �� ����� 32 (������������) ��������� }
 protected
 // protected methods
   function TagType: Tk2Type; virtual; abstract;
     {* ��� ��������� }
//#UC START# *4A64874301F2publ*
//#UC END# *4A64874301F2publ*
 end;//Tk2ParentedTypedSmallLeafTag

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

type _Instance_R_ = Tk2ParentedTypedSmallLeafTag;

{$Include ..\K2\k2HashTag.imp.pas}


{$Include ..\K2\k2ParentedTagObject.imp.pas}


//#UC START# *4A64874301F2impl*
//#UC END# *4A64874301F2impl*
end.