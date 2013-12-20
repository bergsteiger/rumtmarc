unit eeBaseTypes;

{ ���������� "�������"    }
{ �����: ����� �.�. �     }
{ ������: eeBaseTypes -   }
{ �����: 28.05.2003 19:02 }
{ $Id: eeBaseTypes.pas,v 1.4 2011/04/14 16:19:23 lulin Exp $ }

// $Log: eeBaseTypes.pas,v $
// Revision 1.4  2011/04/14 16:19:23  lulin
// {RequestLink:257822128}.
//
// Revision 1.3  2003/07/09 13:10:30  law
// - new behavior: � ������� _OnMouseAction ������ ���������� �������� aWasSelection.
//
// Revision 1.2  2003/05/29 18:30:16  law
// - bug fix: ������������� ������� ��������� �� ������� �����.
//
// Revision 1.1  2003/05/28 16:15:20  law
// - change: ������� ee.dll.
//

{$I eeDefine.inc }

interface

uses
  Windows,
  eeInterfaces
  ;
  
type
  TeeMouseActionEvent = function (aSender           : TObject;
                                  const aHotSpot    : IeeHotSpot;
                                  aButton           : TeeMouseButton;
                                  anAction          : TeeMouseAction;
                                  Keys              : TeeShiftState;
                                  aWasSelection     : Windows.Bool
                                  {;
                                  var NeedAsyncLoop : Bool}): Windows.Bool of object;
   {* - ������� ��� ������� �� �������� �����. }

implementation

end.

