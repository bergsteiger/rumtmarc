unit eeSubExport;

{ ���������� "�������"    }
{ �����: ����� �.�. �     }
{ ������: eeSubExport -   }
{ �����: 18.02.2003 15:29 }
{ $Id: eeSubExport.pas,v 1.1 2010/04/21 16:52:40 lulin Exp $ }

// $Log: eeSubExport.pas,v $
// Revision 1.1  2010/04/21 16:52:40  lulin
// {RequestLink:144575972}.
// - ��������� � ���������� ����� ��� ���������� ������.
//
// Revision 1.6  2009/09/14 11:28:08  lulin
// - ������� ���� � ��� ������������� �������.
//
// Revision 1.3  2008/04/09 17:57:10  lulin
// - ������� ��� � ������ <K>: 89096854.
//
// Revision 1.2  2007/12/04 12:47:34  lulin
// - ������������� ����� � HEAD.
//
// Revision 1.1.50.5  2005/12/08 17:40:33  lulin
// - bug fix: � 3-� ��� ������� ����������� ������ ����� ���������.
// - bug fix: ����� ��� Back �� ������� - �.�. ���������� ���������� ��������� ���������.
//
// Revision 1.1.50.4  2005/10/06 08:02:47  lulin
// - cleanup.
//
// Revision 1.1.50.3  2005/06/14 14:51:53  lulin
// - new interface: _InevSelection.
// - remove interface: IevSelection.
//
// Revision 1.1.50.2  2005/06/10 16:16:31  lulin
// - ������������� ����������� ���������������� �� �����/��������/��������.
//
// Revision 1.1.50.1  2005/06/02 15:48:34  lulin
// - cleanup.
//
// Revision 1.1  2003/02/18 13:05:06  law
// - new behavior: ��� �������� �� ����� ������� ������ �� ������� ������� ����, �� ������ ������ �� ������ 6 (������ �2871).
//

{$I evDefine.inc }

interface

uses
  evInternalInterfaces,
  
  evSubImplementation,

  nevTools
  ;

type
  TeeSubExport = class(TevSubImplementation)
  end;//TeeSubExport

implementation

end.

