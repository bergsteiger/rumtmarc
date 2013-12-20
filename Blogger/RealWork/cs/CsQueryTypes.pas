unit CsQueryTypes;

{ $Id: CsQueryTypes.pas,v 1.23 2013/04/03 09:51:26 fireton Exp $ }

// $Log: CsQueryTypes.pas,v $
// Revision 1.23  2013/04/03 09:51:26  fireton
// - ������ ����������� VANONCED
//
// Revision 1.22  2012/10/18 06:49:55  narry
// ������ pipeout2, ������� ������� ������ ����� � ���������� (383583730)
//
// Revision 1.21  2012/03/06 09:17:14  narry
// �������� � ������� ������ ����� ������� ���������� � ������ (273581950)
//
// Revision 1.20  2010/03/02 08:24:16  narry
// - ��������� splash
//
// Revision 1.19  2009/07/22 08:20:23  narry
// - ����� ��������� KeepAlive
// - cleanup
//
// Revision 1.18  2009/03/13 15:15:40  narry
// - ��������� ������ � ���� ���������� �� �������� ����� � ����������
//
// Revision 1.17  2009/01/13 16:18:23  narry
// - ���������� ���������
//
// Revision 1.16  2008/11/25 12:59:34  narry
// - ����������
//
// Revision 1.15  2008/07/10 13:02:24  fireton
// - ����� ��� ������� - ��������� ������� ���� ���������� ����
//
// Revision 1.14  2008/03/21 17:32:22  narry
// - ����� ��� ����������� ����� � ������
//
// Revision 1.13  2007/10/04 07:53:59  narry
// - ���������� ��������� ����������� �������
//
// Revision 1.12  2007/07/24 12:32:27  narry
// - ����������� ������� ���������
//
// Revision 1.11  2006/09/01 13:55:01  narry
// - ��� ����������� ������� � ������� ����������� ������ ������� � �������
//
// Revision 1.10  2006/08/02 12:18:46  narry
// - ������� ��� ��������� � �������
//
// Revision 1.9  2006/06/26 12:12:32  narry
// - ����������
//
// Revision 1.8  2006/06/22 11:41:21  fireton
// - ����� ����������� ����� �������� � ��������
//
// Revision 1.7  2006/06/05 14:52:55  narry
// - ����������: ���������� ������ �����
//
// Revision 1.6  2006/03/31 12:46:18  narry
// - ����������
//
// Revision 1.5  2006/03/16 15:50:16  narry
// - ��� ���� ����� � ������� ������-�������
//
// Revision 1.4  2006/03/09 11:47:12  narry
// - ���������: ����� ���������� �������� �������
//
// Revision 1.3  2006/02/08 17:24:29  step
// ���������� �������� ���������� �� �������-�������� � ��������� ��������
//

{$I CsDefine.inc}

interface

type
 TCsQueryId = (qtTest,
               qtClientIp,
               qtLogin,
               qtLogout,
               qtFile,
               qtDirectory,
               qtTask,
               // ���� ������������ �������
               qtServerStatus,
               qtAllLine,
               qtMyLine,
               qtDeleteTask,
               qtTaskChanged,
               qtStartMonitoring,
               qtStartMyMonitoring,
               qtEndMonitoring,
               qtServerTask,
               qtTaskResult,
               qtGetTask,
               qtGetActiveUsersList,
               qtSendMail,
               qtDictEdit,
               qtGetDictEdit,
               qtGetMyMessages,
               qtGetTime,
               qtGetMyResults,
               qtPrepareDocument,
               qtGetPreparedDocument,
               qtReturnChangedDocument,
               qtGetProtocolVersion,
               qtDeleteDocs,
               qtGetCommonData, // ��������� ����� ������ � ������� N
               qtGetBaseConfig,
               qtLoginEx,
               qtGetCommands,
               qtExecuteCommand,
               qtGetVersionDate,
               qtGetBaseStatus,
               qtGetNonEditableDicts,
               qtGetBaseParams,
               qtGetAllUsersList,
               qtGetExecuteStatus,
               qtGetDictChangeFileName,
               qtKeepAlive,
               qtGetLogo,
               qtGetToRegionList,
               qtGetAEParams,
               qtGetCompileDate,
               qtGetAnouncedDate);

implementation

end.
