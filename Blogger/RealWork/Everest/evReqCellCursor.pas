unit evReqCellCursor;

{ ���������� "�������"    }
{ �����: ������ �.�.       }
{ ������: evReqCellCursor - }
{ �����: 28.09.1999 10:18 }
{ $Id: evReqCellCursor.pas,v 1.9 2009/07/14 14:56:27 lulin Exp $ }

// $Log: evReqCellCursor.pas,v $
// Revision 1.9  2009/07/14 14:56:27  lulin
// {RequestLink:141264340}. �25.
//
// Revision 1.8  2009/07/13 12:31:36  lulin
// {RequestLink:141264340}. �23ac.
//
// Revision 1.7  2009/07/11 17:11:05  lulin
// {RequestLink:141264340}. �19.
//
// Revision 1.6  2009/07/11 15:55:09  lulin
// {RequestLink:141264340}. �22.
//
// Revision 1.5  2009/04/13 13:43:19  lulin
// [$142613919]. �������� �������� ������� ��������.
//
// Revision 1.4  2008/04/15 08:23:46  lulin
// - ������� ��� � �������� ���������.
//
// Revision 1.3  2008/04/09 17:57:08  lulin
// - ������� ��� � ������ <K>: 89096854.
//
// Revision 1.2  2007/12/04 12:47:04  lulin
// - ������������� ����� � HEAD.
//
// Revision 1.1.2.4  2006/06/08 13:37:50  lulin
// - �������������� �������� � ��������� ����� ���������� ������� �������.
//
// Revision 1.1.2.3  2006/03/01 09:26:11  lulin
// - bug fix: ����������� �������� Tab � Shift-Tab.
//
// Revision 1.1.2.2  2006/01/13 11:56:04  lulin
// - bug fix: � ����� ���������� ������ ���������� �������� ���������� �������.
//
// Revision 1.1.2.1  2005/11/09 16:14:49  dinishev
// �� ������� ������������ ��������� (������ �� ������� ������ �����)
//

{$Include evDefine.inc }

interface

uses
 l3Types,

 evTableCellCursor,

 nevBase,
 nevTools
 ;

type 
 TevReqCellCursor = class(TevTableCellCursor)
   protected
   // internal methods
     function  DoMovePrim(const aView : InevView;
                          aCode      : Long;
                          const anOp : InevOp;
                          aCount     : Integer): TnevMoveResult;
       override;
       {-}
 end;//TevReqCellCursor

implementation

uses
 evOp
 ;

{ TevReqCellCursor }

function TevReqCellCursor.DoMovePrim(const aView : InevView;
                                     aCode      : Long;
                                     const anOp : InevOp;
                                     aCount     : Integer): TnevMoveResult;
begin
 case aCode of
  ev_ocColumnLeft,
  ev_ocColumnRight :
   if not Self.HasInner then
    Result := inherited DoMovePrim(aView, aCode, anOp, aCount)
   else
    Result := Self.GetInner.DoMove(aView, aCode, anOp, aCount);
(*  ev_ocColumnRight :
  begin
   Move(ev_ocListEnd, anOp);
   Move(ev_ocParaRight, anOp);
   Result := ev_dcDoneOk;
  end;//ev_ocColumnLeft*)
  else
   Result := inherited DoMovePrim(aView, aCode, anOp, aCount);
 end;
end;

end.

