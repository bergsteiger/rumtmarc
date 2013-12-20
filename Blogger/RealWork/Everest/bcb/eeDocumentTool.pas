unit eeDocumentTool;

{ ���������� "�������"    }
{ �����: ����� �.�. �     }
{ ������: eeDocumentTool - }
{ �����: 11.02.2003 15:53 }
{ $Id: eeDocumentTool.pas,v 1.4 2007/12/04 12:47:33 lulin Exp $ }

// $Log: eeDocumentTool.pas,v $
// Revision 1.4  2007/12/04 12:47:33  lulin
// - ������������� ����� � HEAD.
//
// Revision 1.3.14.1  2005/12/05 06:04:55  lulin
// - ���������� ������������ ���������� � ������� ����������.
//
// Revision 1.3  2005/01/28 15:35:02  lulin
// - bug fix: ��� ������� ������ ����� �������� ����� HotSpot'� � ��������� - �������������� �� ��������� ������� ������ �� �������� � ��� AV.
//
// Revision 1.2  2003/08/29 12:17:22  law
// - bug fix: �� ��������� inherited Notification.
// - bug fix: ���� ����������� ����������� ����� TeeDocumentTool � ����������.
// - bug fix: ����� ������� inherited ���� ��������� (����������� ��������).
// - bug fix: � ����� ���������� ������ �� ��������.
//
// Revision 1.1  2003/02/11 14:20:20  law
// - change: ��������� ������ �� ������� ����� - ������� ����������� ��������� � ������� �����.
//

{$Include evDefine.inc }

interface

uses
  l3Types,
  l3Base,
  l3Tool,

  eeInterfacesEx
  ;

type
  TeeDocumentTool = class(Tl3Tool)
    protected
    // property methods
      function pm_GetDocument: IeeDocumentEx;
        {-}
    public
    // public methods
      constructor Create(const aDocument: IeeDocumentEx);
        reintroduce;
        {-}
    protected
    // protected properties
      property Document: IeeDocumentEx
        read pm_GetDocument;
        {-}
  end;//TeeDocumentTool

implementation

// start class TeeDocumentTool

constructor TeeDocumentTool.Create(const aDocument: IeeDocumentEx);
  //reintroduce;
  {-}
begin
 inherited Create(aDocument As IeeToolOwner);
end;

function TeeDocumentTool.pm_GetDocument: IeeDocumentEx;
  {-}
begin
 Result := IeeToolOwner(f_Owner) As IeeDocumentEx;
end;

end.

