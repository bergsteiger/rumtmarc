unit k2SimpleTagListPrimWithFind;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "K2"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/K2/k2SimpleTagListPrimWithFind.pas"
// �����: 16.07.2009 17:29
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::K2::k2CoreObjects::Tk2SimpleTagListPrimWithFind
//
// ������ ����� � ������� ����������� �����, ������� ������ �� �������� � ������� ����� �� �����
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
  k2SimpleTagListPrim,
  l3Types
  ;

type
 _k2TagByIntegerSearcher_Parent_ = Tk2SimpleTagListPrim;
 {$Include ..\K2\k2TagByIntegerSearcher.imp.pas}
 Tk2SimpleTagListPrimWithFind = class(_k2TagByIntegerSearcher_)
  {* ������ ����� � ������� ����������� �����, ������� ������ �� �������� � ������� ����� �� ����� 32 (������������) ��������� }
 end;//Tk2SimpleTagListPrimWithFind

implementation

type _Instance_R_ = Tk2SimpleTagListPrimWithFind;

{$Include ..\K2\k2TagByIntegerSearcher.imp.pas}

end.