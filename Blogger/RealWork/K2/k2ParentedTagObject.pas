unit k2ParentedTagObject;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "K2"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/K2/k2ParentedTagObject.pas"
// �����: 11.07.2005 10:35
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::K2::k2CoreObjects::Tk2ParentedTagObject
//
// ��������� �����, ���������� ������� �� ������������ ������.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2SmallTagObject,
  k2Interfaces,
  Classes
  ;

type
 _k2ParentedTagObject_Parent_ = Tk2SmallTagObject;
 {$Include ..\K2\k2ParentedTagObject.imp.pas}
 Tk2ParentedTagObject = class(_k2ParentedTagObject_)
  {* ��������� �����, ���������� ������� �� ������������ ������. }
 end;//Tk2ParentedTagObject

implementation

uses
  k2Base
  ;

type _Instance_R_ = Tk2ParentedTagObject;

{$Include ..\K2\k2ParentedTagObject.imp.pas}

end.