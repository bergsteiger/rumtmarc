unit NOT_FINISHED_evParaListCursorPair;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// ������: "w:/common/components/gui/Garant/Everest/NOT_FINISHED_evParaListCursorPair.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::Cursors::TevParaListCursorPair
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ���� ���� ������������ ������ ��� �������������, � �� ��� ����������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  nevTools,
  evCursorPair
  ;

type
 TevParaListCursorPair = class(TevCursorPair)
 protected
 // protected methods
   function GetParaBlockBordersPrim(const aChildPara: InevPara;
     aPID: LongInt;
     out cParaStart: InevBasePoint;
     out cParaFinish: InevBasePoint): Boolean; virtual;
 end;//TevParaListCursorPair

implementation

// start class TevParaListCursorPair

function TevParaListCursorPair.GetParaBlockBordersPrim(const aChildPara: InevPara;
  aPID: LongInt;
  out cParaStart: InevBasePoint;
  out cParaFinish: InevBasePoint): Boolean;
//#UC START# *5108D4820232_4A2D2D6E027B_var*
//#UC END# *5108D4820232_4A2D2D6E027B_var*
begin
//#UC START# *5108D4820232_4A2D2D6E027B_impl*
 !!! Needs to be implemented !!!
//#UC END# *5108D4820232_4A2D2D6E027B_impl*
end;//TevParaListCursorPair.GetParaBlockBordersPrim

end.