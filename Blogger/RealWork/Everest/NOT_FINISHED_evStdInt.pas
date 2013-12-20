unit NOT_FINISHED_evStdInt;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/NOT_FINISHED_evStdInt.pas"
// �����: 03.12.1998 20:01
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<InterfaceFactoryPack::Class>> Shared Delphi::Everest::Standard::evStdInt
//
// ���������� "������ �����������" ��� ����������� ����� ����� ���������� "�������".
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ���� ���� ������������ ������ ��� �������������, � �� ��� ����������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Interfaces,
  nevBase,
  l3IID,
  k2Base,
  Para_Const,
  LeafPara_Const,
  PageBreak_Const,
  SectionBreak_Const,
  TextPara_Const,
  ControlPara_Const,
  Formula_Const,
  ParaList_Const,
  Block_Const,
  Document_Const,
  CommentPara_Const,
  TableCell_Const,
  SBSCell_Const,
  TableRow_Const,
  SBSRow_Const,
  Table_Const,
  SBS_Const,
  QueryCard_Const,
  ReqCell_Const,
  ReqRow_Const,
  ControlsBlock_Const,
  BitmapPara_Const,
  TreePara_Const
  ;

type
 TevParaInterfaceFactory = class(Tk2InterfaceFactory)
  {* ������� ����� "������� �����������" ��� ����������. }
 protected
 // protected methods
   function COMQueryTool(const aTag: Ik2Tag;
     const IID: Tl3GUID;
     out Tool;
     const aProcessor: InevProcessor): Boolean; virtual;
 end;//TevParaInterfaceFactory

 TevLeafParaInterfaceFactory = class(TevParaInterfaceFactory)
 end;//TevLeafParaInterfaceFactory

 TevSolidParaInterfaceFactory = class(TevLeafParaInterfaceFactory)
 end;//TevSolidParaInterfaceFactory

 TevPageBreakInterfaceFactory = class(TevSolidParaInterfaceFactory)
  {* "������� �����������" ��� ������� ��������. }
 end;//TevPageBreakInterfaceFactory

 TevSectionBreakInterfaceFactory = class(TevPageBreakInterfaceFactory)
  {* "������� �����������" ��� ������� �������. }
 end;//TevSectionBreakInterfaceFactory

 TevTextParaInterfaceFactory = class(TevLeafParaInterfaceFactory)
 end;//TevTextParaInterfaceFactory

 TevFormulaInterfaceFactory = class(TevTextParaInterfaceFactory)
 end;//TevFormulaInterfaceFactory

 TevParaListInterfaceFactory = class(TevParaInterfaceFactory)
  {* "������� �����������" ��� ������ ����������. }
 end;//TevParaListInterfaceFactory

 TevBlockInterfaceFactory = class(TevParaListInterfaceFactory)
  {* "������� �����������" ��� ����� ��������� (IevDocumentPart). }
 end;//TevBlockInterfaceFactory

 TevDocumentInterfaceFactory = class(TevParaListInterfaceFactory)
  {* "������� �����������" ��� ���������. }
 end;//TevDocumentInterfaceFactory

 TevCommentParaInterfaceFactory = class(TevBlockInterfaceFactory)
 end;//TevCommentParaInterfaceFactory

 TevTableCellInterfaceFactory = class(TevParaListInterfaceFactory)
  {* "������� �����������" ��� ������ �������. }
 end;//TevTableCellInterfaceFactory

 TevSBSCellInterfaceFactory = class(TevTableCellInterfaceFactory)
 end;//TevSBSCellInterfaceFactory

 TevTableRowInterfaceFactory = class(TevParaListInterfaceFactory)
 end;//TevTableRowInterfaceFactory

 TevSBSRowInterfaceFactory = class(TevTableRowInterfaceFactory)
 end;//TevSBSRowInterfaceFactory

 TevTableInterfaceFactory = class(TevParaListInterfaceFactory)
  {* "������� �����������" ��� �������. }
 end;//TevTableInterfaceFactory

 TevSBSInterfaceFactory = class(TevTableInterfaceFactory)
 end;//TevSBSInterfaceFactory

 TevQueryCardInterfaceFactory = class(TevDocumentInterfaceFactory)
  {* "������� �����������" ��� ����� ��. }
 end;//TevQueryCardInterfaceFactory

 TevReqCellInterfaceFactory = class(TevTableCellInterfaceFactory)
 end;//TevReqCellInterfaceFactory

 TevReqRowInterfaceFactory = class(TevTableRowInterfaceFactory)
 end;//TevReqRowInterfaceFactory

 TevControlParaInterfaceFactory = class(TevTextParaInterfaceFactory)
 end;//TevControlParaInterfaceFactory

 TevControlsBlockInterfaceFactory = class(TevBlockInterfaceFactory)
  {* "������� �����������" ��� ����� ���������. }
 end;//TevControlsBlockInterfaceFactory

 TevBitmapParaInterfaceFactory = class(TevSolidParaInterfaceFactory)
  {* "������� �����������" ��� ��������� � ���������. }
 end;//TevBitmapParaInterfaceFactory

 TevTreeParaInterfaceFactory = class
 end;//TevTreeParaInterfaceFactory

implementation

uses
  evParaPainter,
  nevPara,
  evLeafParaPainter,
  nevLeafPara,
  evBreakParaCursor,
  evPageBreakPainter,
  evSectionBreakPainter,
  evTextParaCursor,
  evTextParaPainterEx,
  nevTextPara,
  evFormulaPainter,
  nevFormulaPara,
  evParaListCursor,
  evParaListPainter,
  nevParaList,
  evDocumentPartCursor,
  evDocumentPartPainter,
  evDocumentPartHotSpotTester,
  evDocumentCursor,
  evDocumentPainter,
  evDocumentHotSpotTester,
  evCommentParaCursor,
  evCommentParaPainter,
  evTableCellPainter,
  nevTableCell,
  evSBSCellPainter,
  evTableRowPainter,
  nevTableRow,
  evTablePainter,
  evControlParaPainter,
  nevControlPara,
  evControlParaHotSpot,
  evControlsBlockPainter,
  nevControlsBlock,
  evControlsBlockHotSpotTester,
  evBitmapParaCursor,
  evBitmapParaPainter
  ;

// start class TevParaInterfaceFactory

function TevParaInterfaceFactory.COMQueryTool(const aTag: Ik2Tag;
  const IID: Tl3GUID;
  out Tool;
  const aProcessor: InevProcessor): Boolean;
//#UC START# *4D63C26E01AC_485678B701BD_var*
//#UC END# *4D63C26E01AC_485678B701BD_var*
begin
//#UC START# *4D63C26E01AC_485678B701BD_impl*
 !!! Needs to be implemented !!!
//#UC END# *4D63C26E01AC_485678B701BD_impl*
end;//TevParaInterfaceFactory.COMQueryTool
end.