unit NOT_FINISHED_evHAFPainterEx;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// ������: "w:/common/components/gui/Garant/Everest/NOT_FINISHED_evHAFPainterEx.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::Everest::Printing::evHAFPainterEx
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ���� ���� ������������ ������ ��� �������������, � �� ��� ����������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  l3Interfaces,
  evTypes,
  evHAFPainter
  ;

type
 TevHAFPainterEx = class(TevHAFPainter)
 end;//TevHAFPainterEx

 TevReadColontitulsEvent = 

 TevColontituls = array [TevPageColontituls] of Il3CString;

var g_OnReadColontituls : TevReadColontitulsEvent = nil;

implementation

end.