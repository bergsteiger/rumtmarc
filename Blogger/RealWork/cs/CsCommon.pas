unit CsCommon;

{ $Id: CsCommon.pas,v 1.8 2008/10/01 07:45:40 narry Exp $ }

// $Log: CsCommon.pas,v $
// Revision 1.8  2008/10/01 07:45:40  narry
// - �������� ���� � ������� ����������
//
// Revision 1.7  2008/07/14 07:47:53  narry
// - ��������� ����� � ���� � ������� (������ ���, ������� � �������)
//
// Revision 1.6  2006/11/22 16:23:56  fireton
// - ���������� � �������� UserID
//
// Revision 1.5  2006/08/03 13:22:01  narry
// - ���������� ������ ��������� � ������� �� �� �� ����������
//
// Revision 1.4  2006/06/14 12:25:15  narry
// - �����: ������� �� ����� �������� �������� �����������
//
// Revision 1.3  2006/06/08 15:54:40  fireton
// - ���������� � �������� �� ������� User ID
//
// Revision 1.2  2006/02/08 17:24:29  step
// ���������� �������� ���������� �� �������-�������� � ��������� ��������
//

{$I CsDefine.inc}

interface

uses
 IdGlobal;

type
 TCsClientId = LongWord;
 TCsPort = TIdPort; 
 TCsIp = string; // �������� �� ������ �����������
 TcsError = Integer;

 TcsLoginExDataEvent = procedure(out aDocBaseVer, aAdminBaseVer: Integer; out aFamilyRoot,
                                     aTablePath, aHomePath, aLockpath, aImagesPath: String) of object;

implementation

end.

