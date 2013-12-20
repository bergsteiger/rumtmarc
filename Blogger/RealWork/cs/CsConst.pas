unit CsConst;

{ $Id: CsConst.pas,v 1.14 2012/03/06 09:18:12 narry Exp $ }

// $Log: CsConst.pas,v $
// Revision 1.14  2012/03/06 09:18:12  narry
// �������� � ������� ������ ����� ������� ���������� � ������ (273581950)
//
// Revision 1.13  2010/07/06 12:31:02  narry
// - �222759027
//
// Revision 1.12  2010/03/04 07:47:56  narry
// - ���������� ������ �������������
//
// Revision 1.11  2010/02/24 10:30:50  narry
// - �������� ����������� �������� �� �����
//
// Revision 1.10  2007/11/28 11:16:47  narry
// - ���������� ������ ��������� ������ �����������
//
// Revision 1.9  2006/11/28 11:19:25  narry
// - ������: ���������� ���� ��� ��������� ��������� �� �������
//
// Revision 1.8  2006/09/15 06:51:26  narry
// - ������� ������ ����������� ����� �������� � ��������
//
// Revision 1.7  2006/09/01 13:55:00  narry
// - ��� ����������� ������� � ������� ����������� ������ ������� � �������
//
// Revision 1.6  2006/08/03 13:22:01  narry
// - ���������� ������ ��������� � ������� �� �� �� ����������
//
// Revision 1.5  2006/08/02 12:57:32  narry
// - ���������� ������ ���������
//
// Revision 1.4  2006/03/16 15:50:16  narry
// - ��� ���� ����� � ������� ������-�������
//
// Revision 1.3  2006/02/08 17:24:29  step
// ���������� �������� ���������� �� �������-�������� � ��������� ��������
//

{$I CsDefine.inc}

interface

const
 c_CsVersion: Integer = 18;

 c_AllStations = '*'; // ����� ��� �������������
 c_WrongClientId = MaxInt; // ������� �� ������ � �����������
 c_DuplicateClient = Pred(c_WrongClientID); // ������� ����� ��������
 c_DeadClient = Pred(c_DuplicateClient); // �� �������� �� �������

// ���� ������ ��������� ��������
 cs_errOk = 0;
 cs_errError = 1;
 cs_errConnClosedGracefully = 2;
 cs_errConnectTimeout = 3;
 cs_errSocketError = 4;
 cs_errConnAborted = 5;
 cs_errConnRefused = 6;

 cs_errWrongServerVersion = 7;


implementation

end.

