unit evParaListPainter;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/evParaListPainter.pas"
// �����: 07.04.2009 18:15
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::ParaList Painters::TevParaListPainter
//
// ���������� ������ ����������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  nevTools,
  nevRealTools,
  l3Interfaces,
  nevBase,
  l3InternalInterfaces,
  l3Units,
  k2Interfaces,
  l3ProtoObject
  ;

 {$Define ParaPainter_IsParaListPainter}
 { ���������� ��������� �������� ����������� ������ ���������� }

type
 _X_ = InevParaList;
 {$Include ..\Everest\evParaListPainter.imp.pas}
 TevParaListPainter = class(_evParaListPainter_)
  {* ���������� ������ ���������� }
 end;//TevParaListPainter

implementation

uses
  k2Tags,
  l3VirtualCanvas,
  nevVirtualDrawView,
  evParaDrawTools,
  nevAfterEndPoint,
  l3MinMax,
  nevFacade,
  l3Const,
  Graphics,
  l3SmartCanvas,
  l3Base,
  l3Tree,
  evParaTools,
  evdTypes,
  TableCell_Const,
  DocumentSub_Const,
  Mark_Const,
  LeafPara_Const,
  CommentPara_Const,
  TreePara_Const,
  Block_Const,
  TextPara_Const,
  k2Base,
  SysUtils,
  Table_Const,
  Windows
  ;

{$Include ..\Everest\evParaListPainter.imp.pas}

end.