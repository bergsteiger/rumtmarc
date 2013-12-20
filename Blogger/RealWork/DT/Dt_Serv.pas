Unit Dt_Serv;
{$DEFINE UseCommServer}

{ $Id: Dt_Serv.pas,v 1.249 2013/06/17 15:47:37 voba Exp $ }

// $Log: Dt_Serv.pas,v $
// Revision 1.249  2013/06/17 15:47:37  voba
//  ���������� ������������ �������� ��-��������� ��� ����������� �����
//
// Revision 1.248  2013/04/19 13:07:39  lulin
// - ���������.
//
// Revision 1.247  2012/10/18 12:02:52  voba
// no message
//
// Revision 1.246  2012/10/10 10:12:07  narry
// ����������
//
// Revision 1.245  2012/09/26 10:26:43  fireton
// - ������ DocImageServer "on demand" (K 397280929)
//
// Revision 1.244  2012/09/13 12:52:53  narry
// �� ����������� �����
//
// Revision 1.243  2012/06/21 11:04:35  narry
// ������ ������� ������ ��� ������ � ��� ����� �������
//
// Revision 1.242  2012/04/27 12:51:16  narry
// ����� ����� ������� ��� ����������
//
// Revision 1.241  2012/03/11 10:06:34  fireton
// - �������� ������������ ��������� �� ������
//
// Revision 1.240  2012/03/07 12:53:17  narry
// ���������� ��������� �� ����
//
// Revision 1.239  2012/03/06 10:51:03  fireton
// - ��������� ������ ��������� �� ����������� zip-�����
//
// Revision 1.238  2011/06/10 12:01:32  voba
// - DocumentServer ������ �������� function DocumentServer(aFamily : TFamilyID), ��� �� �������� Family �� �����������
//
// Revision 1.237  2011/06/08 13:31:44  dinishev
// ������� ������ ��������� � ��� ������.
//
// Revision 1.236  2011/05/18 12:08:41  lulin
// {RequestLink:266409354}.
//
// Revision 1.235  2011/01/28 11:28:37  voba
// - k : 251343383
//
// Revision 1.234  2010/09/24 12:11:14  voba
// - k : 235046326
//
// Revision 1.233  2010/08/13 10:29:40  voba
// - k:229214076
//
// Revision 1.232  2010/04/21 09:57:11  voba
// [K:204932853]
//
// Revision 1.231  2010/04/16 14:03:57  narry
// - �������� ���� � ������� ������ ������������
//
// Revision 1.230  2010/04/05 06:23:11  narry
// - ����������
//
// Revision 1.229  2010/02/17 13:08:17  fireton
// - UserIDBelongsToRegion
//
// Revision 1.228  2009/12/18 09:00:14  voba
// - add THTServer.Family
//
// Revision 1.227  2009/12/02 08:31:32  fireton
// - �������������� �������� ����������
//
// Revision 1.226  2009/10/14 11:09:14  voba
// - ����������� �� ���������� mg
//
// Revision 1.225  2009/09/17 11:44:33  lulin
// {RequestLink:163065542}.
//
// Revision 1.224  2009/07/29 14:45:56  voba
// - add verload function StartTransaction ������ ������ �������� ��� aTables : Il3CBaseList
//
// Revision 1.223  2009/07/22 11:27:26  narry
// - ��������� ������� � DictServer
//
// Revision 1.222  2009/07/21 15:10:13  lulin
// - bug fix: �� ��������� � �� ������� ���������� � �����.
//
// Revision 1.221  2009/07/20 12:38:48  voba
// - ������� renum � ��������
//
// Revision 1.220  2009/06/23 07:32:59  voba
// - �������������� ������� � ���������
//
// Revision 1.219  2009/05/19 12:15:10  voba
// - ��
//
// Revision 1.218  2009/05/08 11:10:08  voba
// - ������� TblH �� Handle
//
// Revision 1.217  2009/04/21 08:06:08  voba
// - ����� �������� ������������� �������
//
// Revision 1.216  2009/04/13 07:10:58  narry
// - ���������� ����������� ����� � ����������
//
// Revision 1.215  2009/04/02 15:16:39  narry
// - � ������������ �� ��������� �������
//
// Revision 1.214  2009/03/23 11:01:34  voba
// - ������� ������, �� ���������� ����������
//
// Revision 1.213  2009/03/16 16:17:39  narry
// - ����� �������������� ������ � ����� ������ "��� �������"
//
// Revision 1.212  2009/03/02 08:21:27  voba
// - enh.  ��������� �������� ������ ������� �������� ����� �� �������� �������������� �������, ��� ���� ����������� ��������� ��������� ID ��� ����� ������� (������) ��. TOpenTblRec
//                 rFamily    : TFamilyID;
//                 rTblID     : Integer;
//                 rATP       : TdtAttrTblPart;
//                 rObj       : TPrometTbl;
//                end;
//
// Revision 1.211  2009/02/16 14:19:14  narry
// - ����������� ��������� �������� ���� ������
//
// Revision 1.210  2009/02/05 12:37:40  narry
// - ����������
//
// Revision 1.209  2009/02/05 10:25:23  narry
// - ����������� ��������� ��������� ����� ����
//
// Revision 1.208  2009/01/26 08:06:17  fireton
// - ������� � ������ b_archi_NewSrch2 (����� ��-������)
//
// Revision 1.207  2009/01/16 10:04:55  voba
// - bug fix
//
// Revision 1.206  2009/01/14 07:56:39  narry
// - ����� �������� - BaseLanguage
//
// Revision 1.205  2008/11/25 12:52:03  narry
// - ����������
//
// Revision 1.204  2008/10/28 11:41:19  narry
// - ����������
//
// Revision 1.203  2008/10/22 06:16:49  fireton
// - ������ � �� ������ ���������� � ����� ������
//
// Revision 1.202  2008/10/15 09:06:57  fireton
// - ����������� ����, ���������� � �������� ���������� (��������� DocImageServer)
//
// Revision 1.201  2008/10/13 12:39:29  narry
// - ������������� ����������
//
// Revision 1.200.2.2.2.3  2009/01/23 14:06:30  fireton
// - ������� ����� �� Query
//
// Revision 1.200.2.2.2.2  2008/12/22 11:09:25  fireton
// - ������� ������� �� TdtQuery
//
// Revision 1.200.2.2.2.1  2008/11/21 11:49:23  fireton
// no message
//
// Revision 1.200.2.2  2008/10/06 07:20:24  voba
// no message
//
// Revision 1.200.2.1  2008/10/01 13:36:21  voba
// no message
//
// Revision 1.200  2008/09/26 09:30:05  narry
// - �����������
// - ���������� ����������� ������ -80
//
// Revision 1.199  2008/09/23 08:48:22  voba
// no message
//
// Revision 1.198  2008/09/18 07:13:03  voba
// - move AskList to DT_AskList
//
// Revision 1.197  2008/09/15 09:04:01  voba
// -add function CheckExists
//
// Revision 1.196  2008/07/03 11:16:56  narry
// - ������������ ����� ReadParams � �������� ExtDocIDsFromRange
//
// Revision 1.195  2008/05/08 14:04:12  fireton
// - ������� �������� � ������� �� �����
//
// Revision 1.194  2008/04/04 15:16:32  fireton
// - ������� ������ ���������� �� ���������
//
// Revision 1.193  2008/04/04 14:49:23  narry
// - �� ����������
//
// Revision 1.192  2008/03/21 17:31:56  narry
// - ����� ������������� ��������� �� ������
//
// Revision 1.191  2008/03/20 09:48:36  lulin
// - cleanup.
//
// Revision 1.190  2008/02/07 14:44:41  lulin
// - ����� _Tl3LongintList �������� � ����������� ������.
//
// Revision 1.189  2008/02/04 12:30:33  voba
// - chng. procedure VerifyFamily
//
// Revision 1.188  2008/02/01 16:41:34  lulin
// - ���������� �������� ������.
//
// Revision 1.187  2007/09/14 15:26:57  voba
// - merge
//
// Revision 1.186  2007/08/14 20:25:14  lulin
// - bug fix: �� ���������� ����������.
//
// Revision 1.185  2007/08/14 19:31:56  lulin
// - ������������ ������� ������.
//
// Revision 1.184  2007/08/14 14:30:08  lulin
// - ������������ ����������� ������ ������.
//
// Revision 1.183.2.2  2007/08/20 06:31:30  voba
// no message
//
// Revision 1.183.2.1  2007/08/13 06:56:24  voba
// - move Procedure   GetUserTypeSab, GetDocTypeSab to DT_Srch
//
// Revision 1.183  2007/07/24 12:32:33  narry
// - ����������� ������� ���������
//
// Revision 1.182  2007/07/04 09:18:49  narry
// - ����������� ��������� ������������� HyTech
//
// Revision 1.181  2007/06/28 11:16:25  voba
// - refact. ����� �� function TAbstractList.GetItem ������ ��������
//
// Revision 1.180  2007/05/18 12:23:40  fireton
// - ������������� �������� �����:
//   * ������ ���������� �� ����������� ���� � ��
//   * ���������� OperationHandle
//
// Revision 1.179  2007/05/07 13:37:31  fireton
// - bug fix: ����������� �������� ������� FREE
//
// Revision 1.178  2007/04/27 07:49:33  fireton
// - ����������� DT. ������� THTServer �� �������������� ������.
//
// Revision 1.177  2007/04/26 10:01:43  fireton
// - ����������� DT. ������� DT_Link � DT_Dict �� ������ � ����� ��������.
//
// Revision 1.176  2007/04/25 07:52:37  fireton
// - �����������. ������ �� ������ ���������� ���� ������ � ������ ������������ ����� � DT_Types
//
// Revision 1.175  2007/04/20 14:21:59  fireton
// - ������ ����� �������� ������ �� ���������
//
// Revision 1.174  2007/04/17 11:38:13  fireton
// - ������� � ����� �������������
//
// Revision 1.173  2007/04/09 11:46:54  fireton
// - ��������� �������� �� �������
//
// Revision 1.172  2007/03/26 09:34:03  fireton
// - ��������� ������ l3System.FreeLocalMem
//
// Revision 1.171  2007/03/15 12:29:17  voba
// - merge with b_archi_BigDictID
//
// Revision 1.170  2007/03/14 15:14:32  fireton
// - merge �������� ���� �� ����� b_archi_BigDictID
// - ��� ����� ������������� ������ �� TDictID, � TUserGrID
// - �������� ��� ������ ������ �������������
// - ������ ��������� �� ���.������ ��� ������� ����� �������������
//
// Revision 1.169.4.3  2007/03/14 13:44:50  fireton
// - TRegionID
//
// Revision 1.169  2007/01/19 14:04:06  voba
// - bug fix
//
// Revision 1.168  2006/11/16 10:48:31  fireton
// - ���������� � �������� UserID
//
// Revision 1.167  2006/11/07 11:14:42  voba
// - bug fix
//
// Revision 1.166  2006/10/27 07:52:15  voba
// - cc
//
// Revision 1.165  2006/10/12 11:31:32  narry
// - ������ ��� ��������
//
// Revision 1.164  2006/10/04 08:37:19  voba
// - merge with b_archi_ht64
//
// Revision 1.163.2.1  2006/09/19 08:23:25  voba
// - ������� �� HTStub
//
// Revision 1.163  2006/08/29 15:28:40  voba
// - use procedure HTErr_NeedStackOut
//
// Revision 1.162  2006/08/23 08:52:18  voba
// - merge with b_archi_ifltr_opt
//
// Revision 1.161  2006/06/14 12:24:54  narry
// - �����: ������� �� ����� �������� �������� �����������
//
// Revision 1.160  2006/06/08 15:54:46  fireton
// - ���������� � �������� �� ������� User ID
//
// Revision 1.159.2.1  2006/06/08 09:08:01  fireton
// - ������� User ID �� Longword
//
// Revision 1.159  2006/05/05 07:41:37  lulin
// - cleanup.
//
// Revision 1.158  2006/04/25 11:16:38  lulin
// - cleanup.
//
// Revision 1.157.6.3  2006/06/15 11:30:07  voba
// - merge
//
// Revision 1.157.6.2  2006/06/02 07:58:50  voba
// no message
//
// Revision 1.159  2006/05/05 07:41:37  lulin
// - cleanup.
//
// Revision 1.158  2006/04/25 11:16:38  lulin
// - cleanup.
// Revision 1.157.6.1  2006/05/30 11:50:36  voba
// no message
//
// Revision 1.157  2006/03/21 08:34:45  narry
// no message
//
// Revision 1.156  2006/02/06 13:33:09  voba
// - new beh. ������� ��������� ����� ��������� (����� 2)
//
// Revision 1.155  2005/12/23 17:30:21  step
// ������� ����������� ������ ���� ������ �������
//
// Revision 1.154  2005/12/23 10:47:12  step
// ���������� THTServer.CheckLocalTime
//
// Revision 1.153  2005/12/23 10:37:17  step
// ������������� g_AppKind
//
// Revision 1.152  2005/12/06 11:59:39  voba
// - �������� ��������� ������ ��� �������� ���������
// - del Procedure   SetEmptyDestOnDocs(DestDocs : SAB);
// - del Procedure   SetEmptyDestOnSab(RecSab : Sab;IDSab : Sab);
//
// Revision 1.151  2005/11/29 06:34:08  step
// �������� ��������� � ������� ������ �� ������� ��
//
// Revision 1.150  2005/11/21 10:11:55  step
// ������ �� ������� �� ������� ��
//
// Revision 1.149  2005/11/02 16:30:05  narry
// - ���������: ������ ������ ������������� ������
//
// Revision 1.148  2005/11/02 08:53:13  step
// ��������� �������� Ht �� ������. ������
//
// Revision 1.147  2005/10/21 15:23:35  step
// Procedure CreateHt �������� ����� �������� � ������� �����. �������� � ���
//
// Revision 1.146  2005/10/06 11:08:39  step
// ���������� THTServer.CheckExportResults
//
// Revision 1.145  2005/10/05 06:53:40  step
// � CreateHtEx �������� ����� ���������� � ���
//
// Revision 1.144  2005/09/21 08:05:05  step
// ������� � ������ B_UPDATE_INDY_TO_10_1_1
//
// Revision 1.143  2005/08/30 15:27:26  step
// ����������� THTServer.UpdateTbl
//
// Revision 1.142  2005/08/30 14:11:21  step
// ��������� THTServer.UpdateTbl ��� � ������� ����� ������
//
// Revision 1.141.4.1  2005/08/15 15:43:37  step
// �������� ��� ����� ���������� Indy
//
// Revision 1.141  2005/06/24 09:54:30  step
// ����� � ��� ������ ��� ����������� ����������� ��������
//
// Revision 1.140  2005/06/23 11:44:07  step
// ����� ����� ����������������� ��������: c_AllStations
//
// Revision 1.139  2005/06/23 08:35:54  step
// �������������� SendMessage --> SendNetMessage (�� ��������� ��������)
//
// Revision 1.138  2005/06/22 18:01:43  step
// ���������
//
// Revision 1.137  2005/06/22 15:26:27  step
// ����������������� �������� ��������� �������� �� �������� �� ������ ''
//
// Revision 1.136  2005/06/16 12:29:26  step
// ������� � ������ b_use_net_comm
//
// Revision 1.135.6.3  2005/06/07 15:22:20  step
// ���������� Dt_NetComm.LocalAddress ������ GetWorkStationName
//
// Revision 1.135.6.2  2005/06/03 16:56:52  step
// �������� ������ THTServer.CheckExportResults � THTServer.CheckLocalTime ��� ����� Dt_NetComm
//
// Revision 1.135.6.1  2005/06/03 13:26:19  step
// ����� �� ������������� dt_Comm
//
// Revision 1.135  2005/05/12 14:10:08  step
// ��������� ������� ���������� UseCommServer
//
// Revision 1.134  2005/05/12 13:13:16  step
// ��������� ������� ���������� UseCommServer
//
// Revision 1.133  2005/05/12 10:28:43  step
// ��������� �������� ���������� ������� �� ������� (������������ �������)
//
// Revision 1.132  2005/05/11 15:09:18  step
// �������� THTServer.CheckExportResults: ������� ������ ���������� � �������������� TFilesCommClient
//
// Revision 1.131  2005/04/28 15:04:06  lulin
// - ��������� ����� B_Tag_Box � HEAD.
//
// Revision 1.130.4.1  2005/04/26 14:30:51  lulin
// - �������� l3Free � _l3Use.
//
// Revision 1.130  2005/03/23 15:27:49  step
// ����������� ���� ����������� �� ��������
//
// Revision 1.129  2005/02/18 17:41:45  step
// ��������������: dlAnnoClass -> dlAnnoClasses
//
// Revision 1.128  2005/02/16 15:29:48  step
// no message
//
// Revision 1.127  2005/02/16 15:05:57  step
// ���������� THTServer.SabToList (� �������������� TValuesIterator)
//
// Revision 1.126  2005/02/16 14:34:13  step
// ���������� THTServer.SabToList
//
// Revision 1.125  2005/02/15 13:12:02  step
// �������� ��� TDLType - ��������� dlAnnoClass
//
// Revision 1.124  2005/02/11 11:50:13  step
// no message
//
// Revision 1.123  2005/02/11 11:44:58  step
// ����������� Lock-Unlock
//
// Revision 1.122  2005/02/11 11:02:25  step
// ����� �� ������ � ��� ��������� "Table locked"
//
// Revision 1.121  2005/02/10 14:40:50  step
// ����������� THTServer.PhisicalVerifyAllTbl
//
// Revision 1.120  2005/02/10 12:44:27  step
// �������� THTServer.PhisicalVerifyAllTbl (����� ������������ ���������)
//
// Revision 1.119  2005/02/10 11:16:13  step
// �������� THTServer.PhisicalVerifyAllTbl (����� ������������ ���������)
//
// Revision 1.118  2004/12/23 11:42:13  lulin
// - rename unit: User_Cfg -> l3IniFile.
//
// Revision 1.117  2004/12/23 08:40:43  lulin
// - ������� �������� ������.
//
// Revision 1.116  2004/10/06 18:16:01  lulin
// - ������ �� ����������.
//
// Revision 1.115  2004/09/21 16:14:56  lulin
// - �������� ��������.
//
// Revision 1.114  2004/09/21 12:04:21  lulin
// - Release ������� �� Cleanup.
//
// Revision 1.113  2004/09/14 15:58:15  lulin
// - ������ ������ Str_Man - ����������� ������ ���� - l3String.
//
// Revision 1.112  2004/09/13 14:19:45  lulin
// - ��� ������������� ������ ���������� ��������� � ���������.
// - ��������� �� ����������� �� RX.
//
// Revision 1.111  2004/08/30 14:04:51  law
// - new method: Im4DB.CompileDictionary.
//
// Revision 1.110  2004/08/27 16:39:58  voba
// -bug fix
//
// Revision 1.109  2004/08/27 15:13:34  voba
// - merge with B_New_Text_Base
//
// Revision 1.108.2.1  2004/08/25 16:11:50  law
// - ���������� ������������ �� ������� ������������� ������� ���������.
//
// Revision 1.108  2004/08/24 17:01:11  voba
// - add propertyTextBase - ��������� ���� � ��������� ����� ����
//
// Revision 1.107  2004/08/06 09:15:59  step
// ��������� ���. ������ �� ������ � ��� �������� �� ������� HT
//
// Revision 1.106  2004/08/05 18:03:14  step
// �������� ����� ������ ���������� ��� HyTech
//
// Revision 1.105  2004/08/03 08:52:47  step
// ������ dt_def.pas �� DtDefine.inc
//
// Revision 1.104  2004/07/30 10:05:00  step
// ���������� THTServer.CheckExportResults - �������� ����� ��������� ��� ������ ����������� ������
//
// Revision 1.103  2004/07/27 15:40:41  step
// ��������� ����. ���-�� ����������� ������
//
// Revision 1.102  2004/07/20 11:13:19  step
// � CheckDbVersion ��������� �������� ������������ �������� ����� � ��
//
// Revision 1.101  2004/07/19 12:53:15  step
// ����� ������ raise (��������� ���������� � main)
//
// Revision 1.100  2004/07/16 09:00:34  step
// ������� ��� TOnHtIdleProc
//
// Revision 1.99  2004/07/16 08:29:53  step
// ��������� "��� ����������� ����" ���������� �� ����� CreateHt, � ����� property THTServer.OnIdle
//
// Revision 1.98  2004/07/14 12:52:48  step
// ����� ����������������� ���������� �������� ������ ����� �������� ������ TAbsHtTbl.StartTA
//
// Revision 1.97  2004/07/14 10:45:41  step
// CreateHt ������� ��� ���� �������� - OnIdle
//
// Revision 1.96  2004/06/11 13:01:54  step
// � CheckDbVersion ��������� �������� ������� ������ � ������� ������ � ���
//
// Revision 1.95  2004/06/04 12:40:26  step
// bugfix: THTServer.FillValueSABfromList(Ex) ��������� ���������� ���������-������
//
// Revision 1.94  2004/06/02 16:42:35  law
// - ������ ����� Tl3VList.
//
// Revision 1.93  2004/05/25 16:44:43  step
// ������ �� ����������� �� �� archi.version, � �� base.ini
//
// Revision 1.92  2004/05/24 17:21:23  step
// new: THTServer.GetTblObject(aSab: Sab)
//
// Revision 1.91  2004/05/21 19:01:21  step
// ���������� SabToList �������� � GlobalHtServer.SabToList
//
// Revision 1.90  2004/05/21 10:38:56  step
// ��� �������� HtServer'� ������� FREE ��������� ���������
//
// Revision 1.89  2004/05/18 09:50:08  step
// ������� MaxFamilyID �� THtServer � TFamilyTbl;
//
// Revision 1.88  2004/05/18 09:18:36  step
// change: GlobalFamPaths, GlobalFamAttrib ���������� � TFamilyTbl;
// change: GlobalFamPaths[] --> GlobalHtServer.FamilyTbl.FamilyPath();
//
// Revision 1.87  2004/05/13 13:48:38  step
// new: StartTransaction, CommitTransaction, RollbackTransaction
//
// Revision 1.86  2004/05/06 13:40:04  step
// new: property THTServer.FreeTbl
//
// Revision 1.85  2004/05/06 09:15:51  voba
// merge with adding_diapasons_table_free2
//
// Revision 1.84  2004/04/19 13:23:10  step
// ��������� �������� �������� ������
//
// Revision 1.83  2004/03/31 11:58:26  fireton
// - ��������� CreateHtEx
//
// Revision 1.82  2004/03/29 15:43:54  step
// bug fix
//
// Revision 1.81  2004/03/26 14:09:41  voba
// no message
//
// Revision 1.80  2004/03/18 14:26:09  fireton
// - �������� ����
//
// Revision 1.79.2.1  2004/03/19 17:11:56  step
// �����������, ��������� � ����������� ���� DT#A.PRIVATE
//
// Revision 1.80  2004/03/18 14:26:09  fireton
// - �������� ����
//
// Revision 1.79  2004/03/15 13:02:17  step
// �������� �������� ������ �� (������ � ���������� c_DbVersion)
//
// Revision 1.78  2004/03/10 16:58:00  fireton
// - ���������� CreateHtEx
//
// Revision 1.77  2004/03/09 15:59:32  step
// � fn_OnHtError ������������ ������ � 90
//
// Revision 1.76  2004/03/05 16:56:45  step
// ������ ����
//
// Revision 1.75  2004/02/26 09:03:55  step
// �������� fn_OnHtError (�������. ������ #25)
//
// Revision 1.74  2004/02/17 15:03:09  step
// ����� ��������� ����� LockTimeOut  (40-->80)
//
// Revision 1.73  2004/02/17 12:00:53  step
// �������� ��������� HT-������ � fn_OnHtError � fn_OnIOError
//
// Revision 1.72  2004/02/17 11:50:07  step
// �������� ��������� HT-������ � fn_OnHtError � fn_OnIOError
//
// Revision 1.71  2004/02/16 11:55:19  step
// �������� THTServer.ClearTableLocks
//
// Revision 1.70  2004/02/16 10:53:05  step
// ������� �������� ClearLocks
//
// Revision 1.69  2004/02/12 16:04:27  step
// ���������� fn_OnIOError � fn_OnHtError
//
// Revision 1.68  2004/02/12 15:57:50  step
// ���������� fn_OnIOError � fn_OnHtError
//
// Revision 1.67  2004/02/12 10:42:10  step
// ��������� ������ HT-������ � ���
//
// Revision 1.66  2004/01/29 16:38:50  voba
// - code clean
//
// Revision 1.65  2003/11/06 11:59:00  step
// �������� ����� THTServer.FillValueSABfromListEx
//
// Revision 1.64  2003/09/22 14:00:14  voba
// code clean
//
// Revision 1.63  2003/09/08 08:56:47  step
// ������ Pred(High(TFamTbls)) �� High(TFamTbls)
//
// Revision 1.62  2003/09/03 09:02:59  narry
// - cleanup
//
// Revision 1.61  2003/08/04 13:01:30  voba
// - �������� ������� ���������
//
// Revision 1.60  2003/01/23 16:42:52  demon
// - bug fix
//
// Revision 1.59  2002/11/21 17:23:47  voba
// - bug fix.
//
// Revision 1.58  2002/11/21 17:14:54  law
// - bug fix: ����������� �������������� ��������� MonoUser.
//
// Revision 1.57  2002/08/08 10:51:36  voba
// -new behavior: ������� ������ ������� StartTransactionWithWait, ������ ��� ������������� OnLongProcess ������� ��������� ������� ������ ���������� �� ���������
//
// Revision 1.56  2002/06/18 15:57:08  voba
// -new behavior : ������� �������� exception � CheckExportResults
//
// Revision 1.55  2002/05/23 14:58:32  law
// - rename class: TCommonReceiveServer -> TdtCommonReceiveServer.
//
// Revision 1.54  2002/05/22 11:11:43  law
// - new behavior: �������� �������� ��������� �� ������ ����.
//
// Revision 1.53  2002/05/10 12:25:55  voba
// no message
//
// Revision 1.52  2002/04/29 11:51:36  demon
// - new behavior: in saveDocFilter now Hyperlinks and Subs deleted all at once
//
// Revision 1.51  2002/02/11 14:30:49  voba
// -lib sincro : change some m0 modules to m2
//
// Revision 1.50  2002/01/16 11:03:06  demon
// - cleanup HtDebugInfo and merge with tag NullJournal_bug
//
// Revision 1.49.2.11  2001/10/04 07:39:52  demon
// - new behavior: changed export mechanizm throu server
//
// Revision 1.49.2.10  2001/09/06 12:05:53  narry
// - change: ������������� � Delphi 6.
//
// Revision 1.49.2.9  2001/09/04 13:59:10  voba
// - rename unit: MyUtil -> l3FileUtils.
//
// Revision 1.49.2.8  2001/08/23 11:22:11  demon
// - new behavior: ShowDocFlag now renamed to UserTypeFilter
// - new: add filter on DocType - DocTypeFilter
//
// Revision 1.49.2.7  2001/07/17 11:10:51  demon
// no message
//
// Revision 1.49.2.6  2001/07/16 12:40:20  demon
// no message
//
// Revision 1.49.2.5  2001/07/16 12:22:34  voba
// - new behavior: ������� ��������� �������� � ������������� ���� � ������
//
// Revision 1.49.2.4  2001/07/09 15:28:47  demon
// no message
//
// Revision 1.49.2.3  2001/07/09 15:01:52  voba
// no message
//
// Revision 1.49.2.2  2001/07/09 14:54:59  voba
// no message
//
// Revision 1.49.2.1  2001/07/09 13:14:07  demon
// - new behavior: add OurProjectHtError function for callback from DLL
//
// Revision 1.49  2001/07/06 14:38:15  demon
// - new behavior: add transactions to all massive operation of Add, Modify and Delete of tbl records
//
// Revision 1.48  2001/06/21 10:33:38  demon
// - new behavior: now time on server writes to log only if Delta > 10 sec
//
// Revision 1.47  2001/05/29 14:50:40  voba
// -new behavior : ������ �������� ��� ������� ������� ��������� ������ "TmpDirPath" ���� �� ��������� �����������
//
// Revision 1.46  2001/03/20 16:19:47  demon
// - bug fix
//
// Revision 1.45  2001/03/20 15:41:31  demon
// - bug fix in PhisicalVerifyAllTbl
//
// Revision 1.44  2000/12/15 15:36:17  law
// - ��������� ��������� Log.
//

{$Include DtDefine.inc}

interface

uses
  Windows,
  Classes,
  SysUtils,

  l3Types,
  l3Base,
  l3IniFile,
  l3DatLst,
  l3Date,
  l3LongintList,
  l3CBaseRefInterfacedList,
  l3ChangeNotifier,

  HT_Const,
  Dt_Types,
  Dt_Const,
  dt_AttrSchema,

  dt_Table,
  Dt_User,
  Dt_Fam,
  DT_Log,
  Dt_Doc,
  Dt_Hyper,
  DT_ATbl,
  Dt_ReNum,
  Dt_BBLog,
  DT_Dict,
  //Dt_NetUs,
  Dt_Free,

  CsCommon, csServer, csClient,

  m3DBInterfaces,
  m3StorageInterfaces,

  m4DBInterfaces,
  l3languages,
  l3ProtoObjectRefList;

const
 // Server Notification Identifiers
 sni_Destroy = 0;  

type
{+------------------------------------------------------------------------+
 | ������ ��� ������ � ���������                                          |
 +------------------------------------------------------------------------+}
 POpenTblRec = ^TOpenTblRec;
 TOpenTblRec = Record
                rFamily    : TFamilyID;
                rTblID     : Integer;
                rATP       : TdtAttrTblPart;
                rObj       : TPrometTbl;
               end;

 POpenSabRec = ^TOpenSabRec;
 TOpenSabRec = Record
                Tbl    : TPrometTbl;
                Obj    : TPrometSAB;
               end;

 TOnHtIdleProc = procedure of object;

 THTServer = Class(Tl3ChangeNotifier)
  private
   f_AliasList: TStrings;
   f_HtInitData: HT_Const.INIT;
   f_TransTime: Word;
   f_OnIdle: TOnHtIdleProc;
   f_AllLocked: Boolean;
   f_BaseLang: TLanguageObj;
   f_CSClient: TcsClient;
   f_CSServer: TcsServer;
   f_RegionID: TRegionID;
   function GetAliasValue(const aAlias: AnsiString): ShortString;
   function pm_GetBaseLanguage(aFamily: TFamilyID): TLanguageObj;
   function pm_GetExtDocIDsFromRange: Boolean;
   function pm_GetRegionTbl: TDictionaryTbl;
   procedure pm_SetAliasList(const Value: TStrings);
   procedure ReleaseTables; // ������� ��� �������� ������� ������������� ������������� �������
   procedure SetTransTime(const aSeconds: Word);
  protected
   fTmpOTRec      : TOpenTblRec;
   fOpenTbls      : Tl3DataList;
   fTmpOSRec      : TOpenSabRec;
   fOpenSabs      : Tl3DataList;

   fBigBrother    : TBigBrotherTbl;
   fFamilyTbl     : TFamilyTbl;
   fFamilyList    : Tl3StringDataList;

   fFamilyLst     : Tl3ProtoObjectRefList;

   f_RegionTbl    : TDictionaryTbl;
   fLockPath      : TPathStr;

   (* ������� ��� ������ � �������� ����������� *)
   fProgressProc  : Tl3ProgressProc;

   (* ������� ��� ��������� � ����������� ���������� ���������� ��������� *)
   fLongProcessProc : TOnLongProcess;

   Function  GetBigBrother : TBigBrotherTbl;
   Function  GetFamilyTbl : TFamilyTbl;
   Function  GetFamilyList : Tl3StringDataList;
   Function  GetFamily(aFamilyID : TFamilyID) : TdtFamily;

   //Function  GetLogBook(aFamily : TFamilyID) : TLogBookTbl;
   //Function  GetReNumTbl(aFamily : TFamilyID) : TReNumTbl;
   Function  GetFreeTbl(aFamily : TFamilyID): TFreeTbl;
   function  GetTextBase(aFamily : TFamilyID) : AnsiString;
   Procedure Cleanup; override;

   function  DoOnLongProcess(aState : TProcessState) : Boolean;
   function  SweepTable(aTable: AnsiString; aDeadStation: AnsiString): Integer;
   // ������ ��������, ������� �� ����� ������� ������� ����������� ����� ����� � �������
   procedure ClearTransIds(const aTransId: Ht_Const.TRID);
   procedure GoingToDie;

   // ��������������� ��������� �� ���. ��������� ������ HT
   // (��������������� � �������� ��� ������ ���. �������� � ���)
   procedure OnHtError(aErrorMessID: SmallInt);
   procedure OnHtIOError(aFileName: PAnsiChar;
                         aIoErrorCode: SmallInt;
                         aDosErrorNumber: SmallInt);
   Function  StartTransactionWithWait(aTables : LPTHANDLE;
                                      aTblCnt : SmallInt;
                                      Var TransID : TRID) : Boolean;
   property    TransTime: Word read f_TransTime write SetTransTime;
  public
   CurUserID      : TUserID;
   CurUserGr      : TUserGrIDArr;
   //CurUGCount     : TUserGrID;

   CurStationName : TStationID;
   CurTblPath,
   CurHomePath,
   GlobalHomePath : TPathStr;
   AdminRights    : Boolean;
   TblShare       : Byte;

   ControlTblFName: ShortString;
   ControlTbl     : HT_Const.THANDLE;

   Constructor Create(aNetUserName,aLockPath : TPathStr;
                      aMode        : Byte;
                      aCurPathRec  : TPathRec); Reintroduce;


   procedure ReadRegionID(aDefaultRegion: TRegionID = 0);
   (* ������ �� ������� �������� ������ *)
   Procedure   AddTblObj(aOTRec : TOpenTblRec);
   Procedure   DelTblObj(aTblObj : TPrometTbl);
   Procedure   CloseAllTbls(aFamily : TFamilyID);
   Procedure   OpenClosedTbls;
   Function    GetTblObject(aSab: Sab) : TPrometTbl; overload;
   function    GetTblObject(aFamily : TFamilyID; aTable : Integer; aATP : TdtAttrTblPart = atpMain): TPrometTbl; overload;
   function    GetTblObjectEx(aFamily : TFamilyID; aTable : Integer; aATP : TdtAttrTblPart = atpMain): TPrometTbl;

   (* ������ �� ������� �������� ����������� *)
   Procedure   AddSabObj(aOSRec : TOpenSabRec);
   Procedure   DelSabObj(aSabObj : TPrometSAB);
   Procedure   CloseAllSabs(aTblObj : TAbsHtTbl);
   Procedure   OpenClosedSabs;

   Procedure   ClearFamilyData(aFamily : TFamilyID);

   Procedure   UpdateTbl(aName : TTblNameStr;aFamily : TFamilyID;
                         aPass : TPassStr);
   Procedure   UpdateAllTbl(aFamily : TFamilyID);

   Function    LockAll : Boolean;
   Procedure   UnLockAll;

   function    ClearTableLocks: Integer;
   // ������ �������, ���������� � HyTech ��, ����� ������������ ����������� ������ � ��.
   // � ������ ������ ������� ���������� 0, ����� - ��� ������.

   Procedure   PhisicalVerifyAllTbl(aFamily : TFamilyID; out aErrorFound: Boolean; out aMess: AnsiString);
   Procedure   VerifyFamily(aFamily : TFamilyID;VType : TVerifyType;
                            WithFixErrors : Boolean);

   Procedure   ReceiveServerTime(aMessage : PAnsiChar);
   Function    StartTransaction(aTables : array of TPrometTbl;
                                Var TransID : TRID;
                                aTransTime: Word = DefaultTransTime): Boolean;   overload;

   function    StartTransaction(aTables : Il3CBaseList;
                                     var TransID: TRID;
                                     aTransTime: Word = DefaultTransTime): Boolean; overload;

   procedure   CommitTransaction(var aTransID : TRID);
   procedure   RollbackTransaction(var aTransID : TRID);

   function    IsRegionExists(aID: TRegionID): Boolean;
   function    GetRegionName(aID: TRegionID): AnsiString;

   Function    GetHomePathName(aUserID : TUserID) : TPathStr;
   Function    GetHomePath(aUserID : TUserID) : TPathStr;
   Function    CheckArchivariusPassword(aShortName : TPassNameStr;
                                        aPassWord  : TPassStr) : Boolean;
   Function    CheckAdminPassword(aShortName : TPassNameStr;
                                  aPassWord  : TPassStr) : Boolean;

   function    LoginAsServer: Boolean;
   function    CheckCSPassword(const aLoginName: AnsiString; const aPassword: AnsiString; out theUserID: TCsClientID): Boolean;

   Procedure   SetPauseFlag(aLength : LongInt);
   Procedure   SetDocPrintFlag(aFamily : TFamilyID;aDocID : TDocID);
   Procedure   SetDocSaveFlag(aFamily : TFamilyID;aDocID : TDocID);

   procedure   FillValueSABfromList(var aSAB : SAB;aList : Tl3LongintList);
   procedure   FillValueSABfromListEx(var aSAB: SAB;
                                      anId: Longint;
                                      aList: Tl3LongintList);

   class procedure   SabToList(var aSrcSab: Sab; aDstList: Tl3LongintList);
    // ������� ������������� �������� �� Sab � ������

   Procedure SessionDone;

   function CheckFreeResource(aFamily : TFamilyID; aResourceName : AnsiString): Boolean;
   function GetFreeExtObjID(aFamily : TFamilyID): TDocID;
   function GetFreeExtDocID(aFamily : TFamilyID): TDocID;

   {Check in tables HLink and Renum records
        for documents not currently in base;
        Result - Count of Deleted Docs}
   //Function    CheckNullDocuments(aFamily : TFamilyID;
   //                               Clear,Report : Boolean;
   //                               LogName : TFileName) : LongInt;

   {Check in base documents without GarantID;
        Result - Count of this Docs}
   //Function  CheckDocumentsWithOutGarantID(aFamily : TFamilyID;
   //                                          Report  : Boolean;
   //                                          LogName : TFileName) : LongInt;
   function  ConvertAliasPath(CurPath : ShortString): AnsiString;
   //function  GetFreeExtDocID: TDocID;
   procedure SetUserParams(aIsAdmin: Boolean);
   property  AliasList: TStrings read f_AliasList write pm_SetAliasList;
   property  BaseLanguage[aFamily: TFamilyID]: TLanguageObj read pm_GetBaseLanguage;
   Property  BigBrother : TBigBrotherTbl read GetBigBrother;

   property  CSClient: TcsClient read f_CSClient write f_CSClient;
   property  CSServer: TcsServer read f_CSServer write f_CSServer;

   property  ExtDocIDsFromRange: Boolean read pm_GetExtDocIDsFromRange;
   Property  FamilyTbl : TFamilyTbl read GetFamilyTbl;
   Property  FamilyList : Tl3StringDataList read GetFamilyList;
   property  Family[aFamily : TFamilyID] : TdtFamily read GetFamily;

   Property  FreeTbl[aFamily : TFamilyID] : TFreeTbl read GetFreeTbl;

   property  TextBase[aFamily : TFamilyID] : AnsiString read GetTextBase;
   Property  ProgressProc : Tl3ProgressProc read fProgressProc write fProgressProc;
   property  RegionID: TRegionID read f_RegionID;
   property  RegionTbl: TDictionaryTbl read pm_GetRegionTbl;
   Property  OnLongProcess : TOnLongProcess read fLongProcessProc write fLongProcessProc;
   property  OnIdle: TOnHtIdleProc read f_OnIdle write f_OnIdle;
                // ����� ���������� HyTech'�� ��� ���������� ��������.
                // ����� ����� ������������ ��� ����������� ���� ����������.
                // ��� ����������� ������� (��������� ������) - ��� �������� ���� ��������!!!

 end;

 Procedure CreateHt(ReadOnly : Boolean; aAppKind: TAppKind = akClient);
 procedure CreateHtEx(ReadOnly: Boolean; aAppKind: TAppKind; aStationName: AnsiString; aRPath: TPathRec; aDocBaseVersion,
     aAdminBaseVersion: Integer; aAliasList: TStrings = nil);

 Procedure DestroyHt;

 Procedure OurProjectHtYield; {$IFDEF HT_MODE64} stdcall {$ELSE} pascal {$ENDIF};

 Function  TestError(nErrCode : SmallInt;
                     fpRecord : Pointer) : Error_Mode; {$IFDEF HT_MODE64} stdcall {$ELSE} pascal {$ENDIF};

 function _ConvertAliasPath(CurPath : ShortString): ShortString;



 Const
{ ����  ������������ ��������� }
  YieldProcFlag  : Boolean = False;

{ ��������� �� ������ ������� ��� ������ }
  GlobalHtServer : THTServer = Nil;

  YieldProc  : TFarProc = Nil;
  cTestError : TFarProc = Nil;

// Var
//  StationJornal : TNetUsersJournal;

function dtGetDB(aFamily    : TFamilyID;
                 aOnYield   : TNotifyEvent = nil;
                 aFileMeter : Tl3ProgressProc = nil;
                 aFilesMeter : Tl3ProgressProc = nil): Im3DB;
  {-}
function dtGetDBEx(aFamily    : TFamilyID;
                   aOnYield   : TNotifyEvent = nil;
                   aFileMeter : Tl3ProgressProc = nil;
                   aFilesMeter : Tl3ProgressProc = nil): Im4DB;

procedure CheckDbVersion(DocBaseVersion, AdminBaseVersion: Integer);

procedure LoadDbVersion(const DocBaseFolder, AdminBaseFolder: AnsiString; out theDocBaseVersion, theAdminBaseVersion:
    Integer);

  {-}

function dtGetObjectStream(aFamily: TFamilyID; aDocID: TDocID; var anObjID: Integer; aMode: Tm3StoreAccess): IStream;

function ExtractParams(out theStationName: TStationName; out theFolders: TPathRec; aStandAlone: Boolean): Boolean;

 function CheckPath(Var aPath : ShortString;Alias,Slash,Create : Boolean): Boolean;

procedure PackParams(const theStationName: TStationName; theFolders: TPathRec);

function UserIDBelongsToRegion(const aUserID: TUserID; aRegion: Byte): Boolean;

const
 g_AppKind: TAppKind = akClient;
 
implementation

uses
  Forms, Math, StrUtils,

  l3String,
  l3MinMax,
  l3FileUtils,

  HT_Dll,WinProcs,
  Dt_Err,
  Dt_Acces,
  Dt_Lock,
  Dt_LinkServ,
  //Dt_NetComm,
  //Dt_Srch,
  DT_AskList,
  Dt_List,
  //dt_NetCommSup,
  //Dt_ServerService,
  DT_DocImages,

  vtVerInf,
  vtDialogs,

  m2XltLib,
  m2TmpLib,

  m3DB,

  m4DB,

  m0LNGLib,

  l3Interfaces, BAse_CFG, dt_UserConst;

const
 c_BadVersion = 0;


procedure fn_OnIOError(fpFileName: PAnsiChar;
                       nIoCode:    SmallInt;
                       nDosError:  SmallInt); {$IFDEF HT_MODE64} stdcall {$ELSE} pascal {$ENDIF};
var
 l_Buff220: array[0..220] of Char;
begin
 // ������ "File locking violation" ���������� (������� ����� ���������)
 if nDosError = 33 then
  Exit;

 try
  htIOMessage(@l_Buff220);
  l3System.Msg2Log('IOError: ' + IntToStr(nDosError) + ', ' + IntToStr(nIoCode) +
                   '; ' + StrPas(l_Buff220));

  if GlobalHtServer <> nil then
   GlobalHtServer.OnHtIOError(fpFileName, nIoCode, nDosError);

 except // ���� ��� � ������������. �� ������ �� ������ ���������� ���������� ������
  on E: Exception do
   l3System.Exception2Log(E);
 end;
end;

procedure fn_OnHtError(nMessID: SmallInt); {$IFDEF HT_MODE64} stdcall {$ELSE} pascal {$ENDIF};
var
 l_Buff220: array[0..220] of Char;
begin
 // ������������ ������
 if nMessID in [
  72, // "������� ������������� � �����������" (��� ����� �� ������)

  25, // "Unique key doublet value found" - ��������� ��� ��������� ������,
      //   ��� ���� ��������� ��������� �������������, ��� ��� ����� �� ������������

  90, // "Heap block already freed" - ���������� ������ ���������� HT (�� ���� ����������) -
      // �� �� ����� �� ����� �������� �� �� ���������

  58  // "������� ��������� �������" - ��������� ��� ������� ������� �������, �������
      // ������������ ���-�� ������ - �������-�� ������� ��������, ���-��� ������ ��� ��� ��������.

 ] then
  Exit;

 try
  htMessage(nMessID, @l_Buff220);
  l3System.Msg2Log('HtError: %d; %s', [nMessID, StrPas(l_Buff220)]);
  HTErr_NeedStackOut(nMessID);
  if GlobalHtServer <> nil then
   GlobalHtServer.OnHtError(nMessID);

 except // ���� ��� � ������������. �� ������ �� ������ ���������� ���������� ������
  on E: Exception do
   l3System.Exception2Log(E);
 end;
end;

procedure fn_OnHtIdle; {$IFDEF HT_MODE64} stdcall {$ELSE} pascal {$ENDIF};
begin
 if (GlobalHtServer <> nil) and Assigned(GlobalHtServer.OnIdle) then
  try
   GlobalHtServer.OnIdle;
  except // ��� ���������� �����, ����� �� ��������� ������ HyTech'�
   on E: Exception do
    l3System.Exception2Log(E);
  end;
end;

procedure CreateHtEx(ReadOnly: Boolean; aAppKind: TAppKind; aStationName: AnsiString; aRPath: TPathRec; aDocBaseVersion,
    aAdminBaseVersion: Integer; aAliasList: TStrings = nil);
Var
 CurDll      : TVersionInfo;
 constVer,
 CurVer      : TLongVersion;
 I           : LongInt;
 l_Port      : Integer;
 l_CurHostName : AnsiString;
Begin
 if GlobalHTServer = nil then
 begin
  CurDll:=TVersionInfo.Create(HTDLL);
  try
   constVer:=StringToLongVersion(htDllVersion);
   CurVer:=CurDll.FileLongVersion;
   If (CurVer.MS <> constVer.MS) or (CurVer.LS < constVer.LS) then
    raise Exception.Create('� ��� ������������ ������ ������ Dll HyTech!'#13+
                           '��������� � ��������������.')
  finally
   l3Free(CurDll);
  end;
  CheckDBVersion(aDocBaseVersion, aAdminBaseVersion);

  if aRPath.TmpPath = '' then
   aRPath.TmpPath := m2TMPGetFilePath;
  ForceDirectories(aRPath.TmpPath);

  if aRPath.HomePath = '' then
   aRPath.HomePath:=aRPath.TblPath;

  g_AppKind := aAppKind;
  { DONE 5 -o������� ����� -c��������� : ��������� ������ � ������������ ����� ������� }
  //StationJornal:=TNetUsersJournal.Create(aStationName, l_CurHostName, ConcatDirName(aRPath.LockPath,'NetUsr.Log'), l_Port);


  Try
   GlobalHTServer:=THTServer.Create(aStationName,aRPath.LockPath, IfThen(ReadOnly, TAB_CONST, TAB_SHARE), aRPath);
   GlobalHTServer.AliasList := aAliasList;
   LockServer:=TLockServer.Create;
   For I:=0 to GlobalHTServer.FamilyList.Count - 1 do
    LockServer.InitFamilyLocks(PFamilyID(GlobalHTServer.FamilyList.Data[I])^);
   //LinkServer:=TLinkServer.Create;
   //DictServer:=TDictionaryServer.Create;
   cDocumentServer:=TDocumentServer.Create;
   AccessServer:=TAccessServer.Create;
   UserManager:=TUserManager.Create;
   SetDocImagePath(aRPath.DocImgPath);
  except
   on E: Exception do
   begin
    l3System.Exception2Log(E);
    raise Exception.Create('������� ������������� �� ������!'#13#10 +
                           '�������: ' + E.Message + #13#10 +
                           '��������� � ��������������.');
   end;
  end;
 end; 
end;

Procedure DestroyHt;
Begin
 if GlobalHtServer <> nil then
  GlobalHtServer.GoingToDie;
 FreeLinkServer;
 l3Free(LockServer);
 FreeDictServer;
 l3Free(cDocumentServer);
 l3Free(AccessServer);
 l3Free(UserManager);
 //l3Free(ServerServiceMessenger);
 If Assigned(GlobalHtServer) then
  GlobalHtServer.SessionDone;
 l3FreeGlobal(GlobalHtServer);
// l3Free(StationJornal);
end;

Procedure OurProjectHtYield;
Var
 Msg : TMsg;
Begin
 If YieldProcFlag then
  Begin
   If PeekMessage(Msg,0,0,0,pm_Remove) then
    Begin
     TranslateMessage(Msg);
     DispatchMessage(Msg);
    end;
  end
 else
  Begin
  end;
end;

Function TestError(nErrCode : SmallInt;fpRecord : Pointer) : Error_Mode;
Begin
 Result:=Error_Delete;
end;

function _ConvertAliasPath(CurPath : ShortString): ShortString;
var
 SecondPos : Byte;
 CfgPath,
 PathConst,
 SaveSection : ShortString;
Begin
 If CurPath[1]='%' then
  Begin
   SecondPos:=PosEx('%',CurPath,2);
   If SecondPos=0 then
    raise EHtErrors.CreateInt(ecPathNotFound);
   PathConst:=Copy(CurPath,2,SecondPos-2);
   SaveSection:=ServerConfig.Section;
   Try
    ServerConfig.Section:=FamilySection;
    If Not ServerConfig.ReadParamStr(PathConst,CfgPath) then
     raise EHtErrors.CreateInt(ecPathNotFound);
    If CfgPath[Length(CfgPath)]<>'\' then CfgPath:=CfgPath+'\';
    If SecondPos=Length(CurPath) then
     Result:=CfgPath
    else
     Begin
      If CurPath[SecondPos+1]='\' then
       Result:=CfgPath+Copy(CurPath,SecondPos+2,Length(CurPath))
      else
       Result:=CfgPath+Copy(CurPath,SecondPos+1,Length(CurPath));
     end;
   finally
    ServerConfig.Section:=SaveSection;
   end;
  end
 else
  Result:=CurPath;
 If Result[Length(Result)]<>'\' then Result:=Result+'\';
end;


procedure CheckDbVersion(DocBaseVersion, AdminBaseVersion: Integer);
begin
 if DocBaseVersion = c_BadVersion then
  raise Exception.Create('���������� ���������� ����� ������ �� (���.)');

 if AdminBaseVersion = c_BadVersion then
  raise Exception.Create('���������� ���������� ����� ������ �� (�����.)');

 if (DocBaseVersion <> c_DocBaseVersion) then
  raise Exception.CreateFmt('���������� �������������� ������ ��������� � ��!'+
                            #10'������ ���� ��������� ���������� %d, ��������� ������ %d', [DocBaseVersion, c_DocBaseVersion]);
 if (AdminBaseVersion <> c_AdminBaseVersion) then
  raise Exception.CreateFmt('���������� �������������� ������ ��������� � ��!'+
                            #10'������ ���������������� ���� %d, ��������� ������ %d', [AdminBaseVersion, c_AdminBaseVersion]);
end;

 function CheckPath(Var aPath : ShortString;Alias,Slash,Create : Boolean): Boolean;
 Begin
  Result:=False;
  If Alias then
   aPath:= _ConvertAliasPath(aPath);
  If Slash then
   aPath := IncludeTrailingPathDelimiter(aPath)
  else
   aPath := ExcludeTrailingPathDelimiter(aPath);

  // lowcase aPath
  aPath:=AnsiLowerCase(aPath);

  If Not l3FileUtils.FileExists(aPath) then
    If Create then
     MakeDir(aPath)
    else
     exit;
  Result:=True;
 end;

function ExtractParams(out theStationName: TStationName; out theFolders: TPathRec; aStandAlone: Boolean): Boolean;
begin
 Result:= False;
 If (ServerConfig=Nil) or (StationConfig=Nil) then exit;

 StationConfig.Section:=BaseSection;

{$IFNDEF InsiderTest}
 If Not StationConfig.ReadParamStr('StationName', theStationName) and aStandAlone then
  l3System.Msg2Log('�� ����� ��� �������! ������� �������� StationName � ������ [%s] ����� %s.', [BaseSection, StationConfig.GetCfgFile]);
{$ENDIF InsiderTest}

 If Not ServerConfig.ReadParamStr('TablePath',theFolders.TblPath) and aStandAlone  then
  l3System.Msg2Log('�� ����� ���� � �����! ������� �������� TablePath � ������ [%s] ����� %s.', [BaseSection, StationConfig.GetCfgFile])
 else
 begin
  if CheckPath(theFolders.TblPath,True,False,False) then
   theFolders.TblPath := NormalizedPath(theFolders.TblPath)
  else
  begin
   l3System.Msg2Log('����������� ������ ���� TblPath : %s', [theFolders.TblPath]);
   exit;
  end;
 end;

 ServerConfig.Section:= BaseSection;
 If Not ServerConfig.ReadParamStr('LockPath', theFolders.LockPath) and aStandAlone  then
  l3System.Msg2Log('�� ����� ���� � ����������� ��������! ������� �������� LockPath � ������ [%s] ����� %s.', [BaseSection, ServerConfig.GetCfgFile])
 else
 begin
  theFolders.LockPath := NormalizedPath(theFolders.LockPath);
  if not CheckPath(theFolders.LockPath, True, False, True) then
   exit;
 end;

 If (AnsiCompareFileName(theFolders.LockPath, theFolders.TblPath) = 0)  and aStandAlone  then
  l3System.Msg2Log('������������ ���� � ����������� ��������! �������� LockPath = TablePath.');

 if ServerConfig.ReadParamStr('HomeDirPath', theFolders.HomePath) then
 begin
  theFolders.HomePath := NormalizedPath(theFolders.HomePath);
  if not CheckPath(theFolders.HomePath,True,False,True) then
   exit;
 end;

 if ServerConfig.ReadParamStr('TmpDirPath',theFolders.TmpPath) then
 begin
  theFolders.TmpPath := NormalizedPath(theFolders.TmpPath);
  if not CheckPath(theFolders.TmpPath,True,False,True) then
   exit;
 end;

 if ServerConfig.ReadParamStr('ImageStoragePath',theFolders.DocImgPath) then
 begin
  theFolders.DocImgPath := NormalizedPath(theFolders.DocImgPath);
  if not CheckPath(theFolders.DocImgPath,True,True,False) then
   theFolders.DocImgPath:= '';
 end;

 ServerConfig.InitSubsts('FamilyConst');

 ServerConfig.Section:= 'FamilyConst';
 theFolders.DocsPath := ServerConfig.ReadParamStrDef('FamilyPath', '');
 if (theFolders.DocsPath = '') and aStandAlone  then
  l3System.Msg2Log('�� ������� ������������ �� (���.)');

 Result:= True;
end;

Procedure CreateHt(ReadOnly : Boolean; aAppKind: TAppKind = akClient);
Var
 CurHostName : ShortString;
 aPathR      : TPathRec;
 StationName  : TStationName;
 l_Port      : Integer;
 l_DocVer,
 l_AdminVer  : Integer;
 l_List      : TStrings;
 l_ImgFolder : AnsiString;


 procedure LoadAliasList(aList: TStrings);
 var
  l_SaveSection: AnsiString;
  i: Integer;
 begin
  if ServerConfig <> nil then
  begin
   l_SaveSection:=ServerConfig.Section;
   Try
    ServerConfig.Section:=FamilySection;
    ServerConfig.ReadSection(aList);
    for i:= 0 to Pred(aList.Count) do
     aList.Values[aList.Strings[i]] := ServerConfig.ReadParamStrDef(aList.Strings[i], '');
   finally
    ServerConfig.Section:= l_SaveSection;
   end;
  end
 end;

Begin
 If Assigned(GlobalHtServer) then exit;

 if ExtractParams(StationName, aPathR, False) then
 begin
  LoadDBVersion(aPathR.DocsPath, aPathR.TblPath, l_DocVer, l_AdminVer);
  l_List:= TStringList.Create;
  try
   LoadAliasList(l_List);
   CreateHtEx(ReadOnly, aAppKind, StationName, aPathR, l_DocVer, l_AdminVer, l_List);
  finally
   l3Free(l_List);
  end;
 end;
end;

(********************************* THTServer ************************************)

Constructor THTServer.Create(aNetUserName,aLockPath : TPathStr;
                             aMode        : Byte;
                             aCurPathRec  : TPathRec);
Var
 TmpStr,
 TmpStr1,
 TmpStr2    : ShortString;
 l_MemoryStatus: MEMORYSTATUS;



Begin
 Inherited Create(Nil);
 f_TransTime := MaxTrsTime;
 f_AliasList := TStringList.Create;
 l3FillChar(f_HtInitData, SizeOf(f_HtInitData), $00);
 With f_HtInitData do
 Begin
  nTableCnt:=MaxTbls;      (* ����� ������, � �������� ����� ��������*)
  nTaskCnt:=20;            (* ����� ������, ������� ����� ������� ������*)
  nHtCnt:= 6 + 7 * nTableCnt + 1;  (* ����� ������, ������� ����� ������� ����*)
  nLockTimeOut:=80;        (* ������� ���������� �������� ���� *)
  nPollDelay:=40;          (* �������� ������ ���� (�����) *)
  nTransTimeOut := f_TransTime; (* ������� ���������� ���������� *)
  nTrsMode:=TRS_HARD;      (* ������ ��������� ���������� *)
  TmpStr2:=aCurPathRec.TmpPath+#0;
  fpTmpPath:=@TmpStr2[1];  (* ������� ��� �������� ��������� ������ *)
  TmpStr:=aLockPath+#0;
  fpNetPath:=@TmpStr[1];   (* ������� ��� ������� ������ *)
  fpTrtPath:=@TmpStr[1];   (* ������� ������� ���������� *)
  TmpStr1:=aNetUserName+#0;
  fpNetName:=@TmpStr1[1];  (* ��� ������� � ���� (�� 8 ��������) *)
  fpfInfo:=Pointer(-1);    (* ������� ��������������� ��������� *)
  fpfIoMess := @fn_OnIOError;  (* ������� ��������� �� ������ �/� *)
  fpfErrMess := @fn_OnHtError; (* ������� ��������� �� ������ *)
  fpfPiStart:=Pointer(-1); (* ������� ������������� ��������-���������� *)
  fpfPiDraw:=Pointer(-1);  (* ������� ����������� ��������-���������� *)
  fpfPiStop:=Pointer(-1);  (* ������� ������ ��������-���������� *)
  fpfYield := @fn_OnHtIdle;     (* ������� ��������� ������ ��������� *)

  // ����� ������ ��� HT:
  // �������� ������� ��������� ���������� (�� �� ����� 4� � �� ����� 200�) ������� ��� ������-����������
  // ��������� ������� ��������� ���������� (�� �� ����� 1� � �� ����� 50�) ������� ��� ����
  // ������������ ������ �� �������, �.�. ����� ��������������� ����� � �����������, � �� ���������� ������.
  GlobalMemoryStatus(l_MemoryStatus);
  gHeapCtrl:= Min(200*1024*1024, Max(4*1024*1024, l_MemoryStatus.dwAvailPhys div 4));
  gHeapTask:= Min( 50*1024*1024, Max(1*1024*1024, l_MemoryStatus.dwAvailPhys div 8));
 end;

 Ht(htInit(@f_HtInitData, SizeOf(f_HtInitData)));

 TmpStr1:=aNetUserName;
 TmpStr1:=TmpStr1+#0;

 l3FillChar(CurStationName,SizeOf(TStationID));
 l3Move(TmpStr1[1],CurStationName,Min(Length(TmpStr1),SizeOf(TStationID)));

 CurHomePath:=aCurPathRec.HomePath;
 GlobalHomePath:=aCurPathRec.HomePath;
 CurTblPath:=aCurPathRec.TblPath;
 TblShare:=aMode;
 ControlTblFName:= ConcatDirName(CurTblPath, TableName(MainTblsFamily, Ord(mtCtrl))) + #0;

 Try
  Ht(htTableOpen(@ControlTblFName[1],Nil,Nil,TblShare,ControlTbl));
 except
  htShut;
  raise EHtErrors.CreateFmt('�� ������� ������� ������� %s', [AnsiString(ControlTblFName)]);
 end;

 //CurUserGr:=Nil;
 //CurUGCount:=0;

 AdminRights:=False;
 fOpenTbls:=Tl3DataList.CreateSize(SizeOf(TOpenTblRec));
 fOpenSabs:=Tl3DataList.CreateSize(SizeOf(TOpenSabRec));

 fLockPath := aLockPath;

 ReadRegionID;
end;

procedure THTServer.Cleanup;
Begin
 CurUserGr := nil;
 l3Free(f_BaseLang);
 L3Free(fBigBrother);
 L3Free(fFamilyTbl);
 L3Free(fFamilyList);
 l3Free(f_RegionTbl);

 If Assigned(fOpenSabs) then
  Begin
   While fOpenSabs.Count<>0 do
    POpenSabRec(fOpenSabs.Data[fOpenSabs.Count-1])^.Obj.Free;
   L3Free(fOpenSabs);
  end;
 ReleaseTables;

 L3Free(fFamilyLst);
 htShut;
 l3Free(f_AliasList);
 Inherited;
end;

procedure THTServer.ReadRegionID(aDefaultRegion: TRegionID = 0);
var
 l_BaseIniPath: AnsiString;
 l_BaseIni: TCfgList;
begin
 l_BaseIniPath := ConcatDirName(CurTblPath, 'base.ini');
 if not FileExists(l_BaseIniPath) then
  raise Exception.Create('�� ������ ���� ' + l_BaseIniPath);

 l_BaseIni := TCfgList.Create(l_BaseIniPath);
 try
  l_BaseIni.Section:= 'Tables';
  f_RegionID := l_BaseIni.ReadParamIntDef('Region', aDefaultRegion);
 finally
  l_BaseIni.Free;
 end;
end;

Function THTServer.GetBigBrother : TBigBrotherTbl;
Begin
 If fBigBrother = Nil then fBigBrother:=TBigBrotherTbl.Create(TblShare and TAB_CONST = TAB_CONST);
 Result:=fBigBrother;
end;

Function THTServer.GetFamilyTbl : TFamilyTbl;
Begin
 If fFamilyTbl = Nil then fFamilyTbl:=TFamilyTbl.Create(False);
 Result:=fFamilyTbl;
end;

function THTServer.GetFamilyList : Tl3StringDataList;
begin
 if fFamilyList = Nil then
  Begin
   fFamilyList:=Tl3StringDataList.Create;
   FamilyTbl.GetFamilysList(fFamilyList);
  end;
 Result:=fFamilyList;
end;

function THTServer.GetFamily(aFamilyID : TFamilyID) : TdtFamily;
var
 lFamily : TdtFamily;
begin
 if fFamilyLst = nil then
  fFamilyLst := Tl3ProtoObjectRefList.Create;

 if fFamilyLst.Count < Succ(aFamilyID) then
  if aFamilyID = MainTblsFamily then
   fFamilyLst.Count := 1
  else
  begin
   fFamilyLst.Count := 1 + FamilyTbl.MaxFamilyID;
   Assert(fFamilyLst.Count > aFamilyID);
  end;

 if fFamilyLst[aFamilyID] = nil then
 begin
  if aFamilyID = MainTblsFamily then
   lFamily := TdtFamily.Create(aFamilyID, CurTblPath)
  else
   lFamily := TdtFamily.Create(aFamilyID, FamilyTbl.FamilyPath(aFamilyId));
  try
   fFamilyLst[aFamilyID] := lFamily;
  finally
   l3Free(lFamily);
  end;
 end;

 Result := TDTFamily(fFamilyLst[aFamilyID]);
end;

{Function THTServer.GetLogBook(aFamily : TFamilyID) : TLogBookTbl;
Begin
 Result := TLogBookTbl(GetTblObject(aFamily, Ord(ftLog)));
 if Result = nil then
  Result := TLogBookTbl.Create(aFamily);
end;}

{Function THTServer.GetReNumTbl(aFamily : TFamilyID) : TReNumTbl;
Begin
 Result := TReNumTbl(GetTblObject(aFamily, Ord(ftRenum)));
 if Result = nil then
 begin
  Result := TReNumTbl.Create(aFamily);
  Result.Free; // �������� ���������� ������
 end;
end;}

(******************* ������ �� ������� �������� ������ **************)

Procedure THTServer.AddTblObj(aOTRec : TOpenTblRec);
Begin
 If fOpenTbls.IndexOfData(Pointer(aOTRec.rObj),SizeOf(Pointer),
                          fOpenTbls.DataSize-SizeOf(Pointer))=-1 then
 begin
  aOTRec.rObj.Use;
  fOpenTbls.Add(@aOTRec);
 end;
end;

procedure THTServer.DelTblObj(aTblObj : TPrometTbl);
var
 lIndex : LongInt;
begin
 lIndex := fOpenTbls.IndexOfData(Pointer(aTblObj),SizeOf(Pointer),
                                 fOpenTbls.DataSize-SizeOf(Pointer));
 if lIndex <> -1 then
 begin
  fOpenTbls.Delete(lIndex);
  l3Free(aTblObj);
 end;
end;

Procedure THTServer.CloseAllTbls(aFamily : TFamilyID);
Var
 I : LongInt;
Begin
 If fOpenTbls.Count=0 then exit;
 For I:=0 to Pred(fOpenTbls.Count) do
  If (POpenTblRec(fOpenTbls.Data[I])^.rFamily = aFamily)  then
   Begin
    fOpenTbls.Select[I] := True;
    CloseAllSabs(POpenTblRec(fOpenTbls.Data[I])^.rObj);
    POpenTblRec(fOpenTbls.Data[I])^.rObj.CloseTbl;
   end;
end;

Procedure THTServer.OpenClosedTbls;
Var
 I : LongInt;
Begin
 If fOpenTbls.Count=0 then exit;
 For I:=0 to fOpenTbls.Count-1 do
  If fOpenTbls.Select[I] then
   Begin
    fOpenTbls.Select[I]:=False;
    POpenTblRec(fOpenTbls.Data[I])^.rObj.OpenTbl;
   end;
 OpenClosedSabs;
end;

function THTServer.GetTblObject(aFamily : TFamilyID; aTable : Integer; aATP : TdtAttrTblPart = atpMain): TPrometTbl;
Var
 TmpInd : LongInt;
Begin
 Result := nil;
 l3FillChar(fTmpOTRec,SizeOf(fTmpOTRec));
 with fTmpOTRec do
 begin
  rFamily := aFamily;
  rTblID  := aTable;
  rATP    := aATP;
 end;
 TmpInd := fOpenTbls.IndexOfData(fTmpOTRec, fOpenTbls.DataSize - SizeOf(Pointer), 0);
 if TmpInd >= 0 then
  Result := POpenTblRec(fOpenTbls.Data[TmpInd])^.rObj;
end;

(******************** ������ �� ������� �������� ����������� *******************)

Procedure THTServer.AddSabObj(aOSRec : TOpenSabRec);
Begin
 If fOpenSabs.IndexOfData(Pointer(aOSRec.Obj),SizeOf(Pointer),
                          fOpenSabs.DataSize-SizeOf(Pointer)) = -1 then
  fOpenSabs.Add(@aOSRec);
end;

Procedure THTServer.DelSabObj(aSabObj : TPrometSAB);
Var
 TmpIndex : LongInt;
Begin
 TmpIndex:=fOpenSabs.IndexOfData(Pointer(aSabObj),SizeOf(Pointer),
                                 fOpenSabs.DataSize-SizeOf(Pointer));
 If TmpIndex <> -1 then fOpenSabs.Delete(TmpIndex);
end;

Procedure THTServer.CloseAllSabs(aTblObj : TAbsHtTbl);
Var
 I : LongInt;
Begin
 If fOpenSabs.Count=0 then exit;
 For I:=0 to fOpenSabs.Count-1 do
  If POpenSabRec(fOpenSabs.Data[I])^.Tbl=aTblObj then
   Begin
    fOpenSabs.Select[I]:=True;
    POpenSabRec(fOpenSabs.Data[I])^.Obj.CloseSab;
   end;
end;

Procedure THTServer.OpenClosedSabs;
Var
 I : LongInt;
Begin
 If fOpenSabs.Count=0 then exit;
 For I:=0 to fOpenSabs.Count-1 do
  If fOpenSabs.Select[I] then
   Begin
    fOpenSabs.Select[I]:=False;
    POpenSabRec(fOpenSabs.Data[I])^.Obj.OpenSab;
   end;
end;

Procedure THTServer.ClearFamilyData(aFamily : TFamilyID);
Var
 Suffix  : String[4];
 TmpName : ShortString;
 TmpTblH : HT_Const.THandle;
 I       : TFamTbls;
 J       : Byte;
 TmpFrRec: TFreeRec;
 TmpHnd  : Integer;
Begin

 CloseAllTbls(aFamily);
 Try
  Suffix:=IntToHex(aFamily,3);
  For I:=Low(TFamTbls) to High(TFamTbls) do
   Begin
    if I in cFictTables then
     Continue;
    If I<>ftDt6 then
     Begin
      TmpName:=FamilyTbl.FamilyPath(aFamily)+FamTblNames[I]+Suffix+#0;
      htDropTableData(@TmpName[1],Nil,Nil);
     end;
    If (I = ftDt1) or (I = ftDt2) or (I = ftDt3) then
     Begin
      TmpName:=FamilyTbl.FamilyPath(aFamily)+FamTblNames[I]+Suffix+'.tre';
      TmpHnd:=FileCreate(TmpName);
      FileClose(TmpHnd);
     end;
   end;
  TmpName:=FamilyTbl.FamilyPath(aFamily)+FamTblNames[ftFree]+Suffix+#0;
  htTableOpen(@TmpName[1],Nil,Nil,Tab_Private,TmpTblH);
  Try
   TmpFrRec.FreeNum:=1;
   TmpFrRec.Limit:=NO_LIMIT;
   For J:=1 to FreeRecCount do
    Begin
     l3StringToArray(TmpFrRec.TblName,SizeOf(TmpFrRec.TblName),
                   FamTblNames[FreeRecIndex[J]]);
     htRecordAdd(TmpTblH,@TmpFrRec);
    end;
  finally
   Ht(htTableClose(TmpTblH));
   Ht(htUpdateTable(@TmpName[1],Nil,Nil,True,False));
  end;
 finally
  OpenClosedTbls;
 end;
end;

Procedure THTServer.UpdateTbl(aName : TTblNameStr;aFamily : TFamilyID;
                              aPass : TPassStr);
Var
 hTable : HT_Const.THANDLE;
 TmpPath: ShortString;
 TmpPass: ShortString;
 Ok     : LongInt;
 l_FamilyPath: TPathStr;
 l_TableName: AnsiString;
Begin
 l_FamilyPath := FamilyTbl.FamilyPath(aFamily);
 TmpPass:=aPass;
 TmpPass:=TmpPass+#0;
 TmpPath:=l_FamilyPath+aName+#0;
 Ok:=htTableHandleByName(@TmpPath[1],hTable);
 If Ok<0 then
 begin
  Ht(htUpdateTable(@TmpPath[1],@TmpPass[1],@TmpPass[1],True,False));

  l_TableName := Trim(aName);
  SysUtils.DeleteFile(ConcatDirName(l_FamilyPath, ChangeFileExt(l_TableName, '.HLK'))); // ����������� ���� �����
  DeleteFilesByMaskRecur(fLockPath, ChangeFileExt(l_TableName, '.!*')); // "���������" ����� ������
 end
 else
  raise EHtErrors.CreateInt(ecTblOpen);
end;

Procedure THTServer.UpdateAllTbl(aFamily : TFamilyID);
Var
 I      : TMainTbls;
 J      : TFamTbls;
 Suffix : String[4];
Begin
 CloseAllTbls(aFamily);
 Try
  If aFamily=MainTblsFamily then
   Begin
    If Assigned(fProgressProc) then
     fProgressProc(piStart,Byte(High(TMainTbls)),'���������� �������� ������');
    Try
     For I:=Low(TMainTbls) to High(TMainTbls) do
     begin
      If Assigned(fProgressProc) then
       fProgressProc(piCurrent, Byte(I)+1, MainTblNames[I]);
      if I = mtCtrl then
       Continue;
      Try
       UpdateTbl(MainTblNames[I],aFamily,TblPassW[MainPassIndex[I]]);
      except
      end;
     end;
    finally
     If Assigned(fProgressProc) then fProgressProc(piEnd, Byte(High(TMainTbls)),'');
    end;
   end
  else
   Begin
    Suffix:=IntToHex(aFamily,3);
    If Assigned(fProgressProc) then
     fProgressProc(piStart, Byte(High(TFamTbls)),'���������� ������ ���������');
    Try
     For J:=Low(TFamTbls) to High(TFamTbls) do
     begin
      If Assigned(fProgressProc) then
       fProgressProc(piCurrent,Byte(J)+1, FamTblNames[J]+Suffix);
      if J in cFictTables then
       Continue;
      Try
       UpdateTbl(FamTblNames[J]+Suffix,aFamily,TblPassW[FamPassIndex[J]]);
      except
      end;
     end;
    finally
     If Assigned(fProgressProc) then
      fProgressProc(piEnd, Byte(High(TFamTbls)),'');
    end;
   end;
 finally
  OpenClosedTbls;
 end;
end;

Function THTServer.LockAll : Boolean;
Begin
 Result:=False;
 Ht(HtTableClose(ControlTbl));
 Try
  Ht(htTableOpen(@ControlTblFName[1],Nil,Nil,TAB_PRIVATE,ControlTbl));
  Result:=True;
 except
  Ht(htTableOpen(@ControlTblFName[1],Nil,Nil,TblShare,ControlTbl));
 end;
 f_AllLocked := Result;
end;

Procedure THTServer.UnLockAll;
Begin
 Ht(HtTableClose(ControlTbl));
 Ht(htTableOpen(@ControlTblFName[1],Nil,Nil,TblShare,ControlTbl));
 f_AllLocked := False;
end;

function THTServer.SweepTable(aTable: AnsiString; aDeadStation: AnsiString): Integer;
const
 cExeName = 'ClearLocks.exe';
 cWaitTimeout = 60*1000; // 1 ���.
var
 l_CurDir: AnsiString;
 l_ExeFile: AnsiString;
 l_StartupInfo: {$IfDef XE}TStartupInfoA{$Else}TStartupInfo{$EndIf};
 l_ProcessInfo: TProcessInformation;
 l_ExitCode: DWORD;
 l_ExitCodeAsInteger: Integer absolute l_ExitCode;
begin
 l_CurDir := GetCurrentDir;
 l_ExeFile := l_CurDir + '\' + cExeName;
 if not FileExists(l_ExeFile) then
  Result := cCLExeFilelNotFound
 else
 begin
  l3FillChar(l_StartupInfo, SizeOf(l_StartupInfo));
  l_StartupInfo.cb := SizeOf(l_StartupInfo);

  if CreateProcessA(PAnsiChar('Sweeping HyTech table'),
                   PAnsiChar(l_ExeFile + ' ' +
                         aDeadStation + ' ' +
                         fLockPath + ' ' +
                         aTable),
                   nil,
                   nil,
                   TRUE,
                   NORMAL_PRIORITY_CLASS,
                   nil,
                   PAnsiChar(l_CurDir),
                   l_StartupInfo,
                   l_ProcessInfo)
  then
   case WaitForSingleObject(l_ProcessInfo.hProcess, cWaitTimeout) of
    WAIT_FAILED:
     begin
      TerminateProcess(l_ProcessInfo.hProcess, WAIT_FAILED);
      Result := cCLProcessFailed;
     end;
    WAIT_TIMEOUT:
     begin
      TerminateProcess(l_ProcessInfo.hProcess, WAIT_TIMEOUT);
      Result := cCLProcessIsTimedOut;
     end;
    WAIT_OBJECT_0:
     if GetExitCodeProcess(l_ProcessInfo.hProcess, l_ExitCode) then
      Result := l_ExitCodeAsInteger
     else
      Result := cThereNoResultOfCLProcess;
   end // case
  else
   Result := cCLProcessNotStarted;
 end;
end;

function THTServer.ClearTableLocks: Integer;
var
 l_TableNameSuffix: String[4];
 l_Table: AnsiString;
 l_TableId: TFamTbls;
 l_TableHandle: HT_Const.THandle;
 l_AllRecs: Sab;
 l_DeadStation: HT_Const.OWNER;
begin
 Result := 0; // �����
 begin
  CloseAllTbls(CurrentFamily);
  try
   // ������� ���� ������
   l_TableNameSuffix := IntToHex(CurrentFamily, 3) + #0;
   for l_TableId := Low(TFamTbls) to High(TFamTbls) do
   begin
    if not (l_TableID in cFictTables) then
    begin
     l_Table := FamilyTbl.FamilyPath(CurrentFamily) + FamTblNames[l_TableId] + l_TableNameSuffix;
     Result := htTableOpen(PAnsiChar(l_Table), nil, nil, TAB_SHARE, l_TableHandle);
     if Result = 0 then
     try
      // ������� ������
      if htWhoLockTable(PAnsiChar(l_Table), l_DeadStation) > 0 then
       Result := SweepTable(l_Table, StrPas(l_DeadStation.szUser));

      if Result = 0 then
      begin
       // ������� �������
       htSearch(nil, l_AllRecs, l_TableHandle, AbsNumFld, GREAT, @Zero, nil);
       Result := l_AllRecs.nRetCode;
       if Result = 0 then
       try
        while htWhoLockSet(l_AllRecs, l_DeadStation) > 0 do
        begin
         // ������� ���������
         Result := SweepTable(l_Table, StrPas(l_DeadStation.szUser));
         if Result <> 0 then
          Break;
        end; // while
       finally
        htClearResults(l_AllRecs);
       end;
      end; // if
     finally
      htTableClose(l_TableHandle);
     end;

     if Result <> 0 then Break;
    end; // not (l_TableID in cFictTables)
   end; // for
  finally
   OpenClosedTbls;
  end;
 end;
end;

type
 ThtRepairModes = (repFixConst, repFixVar, repDropIdx, repBuildIdx);
 ThtRepairModeSet = set of ThtRepairModes;

Procedure THTServer.PhisicalVerifyAllTbl(aFamily : TFamilyID; out aErrorFound: Boolean; out aMess: AnsiString);
Var
 I      : TMainTbls;
 J      : TFamTbls;
 Suffix : String[4];
 TmpName,
 TmpPass : ShortString;
 l_NeededTemporaryLock: Boolean;

 function lp_AnalyzeResult(const aShortName, aFullName, aPassword: ShortString; aResult: Integer): Integer;
 var
  l_Mode: ThtRepairModeSet;
  l_Count: Integer;
  nDosError : SmallInt; // ���� ������� ���, ������������ ���
  nOperation: SmallInt; // ���� ������� ��� ��������, ��������� � ������
  lErrstr : array[0..1000] of char;
  lErrstr2 : PAnsiChar;
 begin
   if Length(aMess) > 0 then
    aMess := aMess + #13#10;
   if aResult = -1 then
   begin
    lErrstr2 := htExtError(nDosError, nOperation, @lErrstr[0]);
    if nDosError <> 32 then
     aMess := aMess + SysUtils.Format('���������� ������ �����-������ %d, %d � ������� %s. ����� ������������ ������� �� ��������� �����', [nDosError, nOperation, aShortName])
    else
     aResult:= 0;
   end // aResult = -1
   else
    aMess := aMess + SysUtils.Format('���������� ������ %d � ������� %s.', [aResult, aShortName]);
   if aResult <> 0 then
   begin
    l_Mode:= [];
    case aResult of
     HT_ERR_ASSO_DAMAGED:
      begin
       Include(l_Mode, repDropIdx);
       Include(l_Mode, repBuildIdx);
      end;
     HT_ERR_DATA_CORRUPTED:
      begin
       Include(l_Mode, repFixConst);
       Include(l_Mode, repFixVar);
      end;
     HT_ERR_INDEX_NOT_SORTED,
     HT_ERR_NOT_INDEXED:
      Include(l_Mode, repBuildIdx);
     HT_ERR_LOG_CORRUPTED:
      Include(l_Mode, repFixVar);
    end; // case l_Result
    if l_Mode <> [] then
    begin
     Result:= 0;
     if repFixConst in l_Mode then
      Result:= htRepairTable(@aFullName[1], @aPassword[1], @aPassword[1]);
     if (Result >= 0) and (repFixVar in l_Mode) then
      Result:= htRepairTableLog(@aFullName[1], @aPassword[1], @aPassword[1], l_Count);
     if Result >= 0 then
      Result:= htUpdateTable(@aFullName[1], @aPassword[1], @aPassword[1], True, False);
     if Result < 0 then
      Result:= lp_AnalyzeResult(aShortName, aFullName, aPassword, Result);

     if (Result >= 0) and (repDropIdx in l_Mode) then
      Result:= htDropIndexes(@aFullName[1], @aPassword[1], @aPassword[1]);
     if (Result >= 0) and (repBuildIdx in l_Mode) then
      Result:= htBuildIndexes(@aFullName[1], @aPassword[1], @aPassword[1], True, False);
     if Result >=0 then
      aMess := aMess + ' ������ ����������.'
     else
      aMess := aMess + ' ������ ��������� �� �������.';
    end
    else
    begin
     Result:= aResult;
     if aResult = -54 then
      aMess:= aMess + ' ���������� �������� HTB-����.';
    end;
   end; // aResult <> 0
 end;

 procedure VerifyTable(const aShortName, aFullName, aPassword: ShortString; aProcessState: Longint);
 var
  l_Result: Integer;
 begin
  // ����� �������� �������
  l_Result:= htTableVerify(@aFullName[1], @aPassword[1], @aPassword[1], 0);
  if l_Result < 0 then
   l_Result:= lp_AnalyzeResult(aShortName, aFullName, aPassword, l_Result);
  if l_Result = 0 then
  begin
   // �������� �������. ��������, �� ����� ���������
   l_Result:= htTableVerify(@aFullName[1], @aPassword[1], @aPassword[1], HTVF_INDEX);
   if l_Result < 0 then
    lp_AnalyzeResult(aShortName, aFullName, aPassword, l_Result);
  end; // l_Result = 0
  If Assigned(fProgressProc) then
   fProgressProc(piCurrent,aProcessState+1, aFullName);
 end;

Begin
 l_NeededTemporaryLock := not f_AllLocked;
 if l_NeededTemporaryLock then
  if not LockAll then
   raise EHtErrors.Create('���������� ��������� �������� � ����������� ������, '#13#10+
                          '�.�. ��� ����� �� ������� �������� ������������ ������ � ��.');
 try
  aMess := '';
  CloseAllTbls(aFamily);
  Try
   If aFamily=MainTblsFamily then
   Begin
    If Assigned(fProgressProc) then
     fProgressProc(piStart,Byte(High(TMainTbls)),'�������� �������� ������');
    Try
     For I:=Low(TMainTbls) to High(TMainTbls) do
     begin
      //if i <> mtCtrl then // ������� Ctrl ������ ���������� ������ :(
      begin
       l3System.Msg2Log('������� %s...', [MainTblNames[I]]);
       VerifyTable(MainTblNames[I],
                  FamilyTbl.FamilyPath(aFamily)+MainTblNames[I]+#0,
                  TblPassW[MainPassIndex[I]]+#0,
                  Byte(I));
       htPurgeError;
      end;
     end;
    finally
     If Assigned(fProgressProc) then
      fProgressProc(piEnd,0,'');
    end;
   end
   else
   Begin
    Suffix:=IntToHex(aFamily,3)+#0;
    If Assigned(fProgressProc) then
     fProgressProc(piStart,Byte(High(TFamTbls))+1,'�������� ������ ���������');
    Try

     For J:=Low(TFamTbls) to High(TFamTbls) do
     begin
      if J in (cFictTables - [ftCtrl]) then
       Continue;
      TmpName:=FamilyTbl.FamilyPath(aFamily)+FamTblNames[J]+Suffix;
      TmpPass:=TblPassW[FamPassIndex[J]]+#0;
      l3System.Msg2Log('������� %s...', [FamTblNames[j]]);
      VerifyTable(FamTblNames[J],
                  FamilyTbl.FamilyPath(aFamily)+FamTblNames[J]+Suffix,
                  TblPassW[FamPassIndex[J]]+#0,
                  Byte(J));
      htPurgeError;
     end;
     If Assigned(fProgressProc) then
      fProgressProc(piCurrent, Byte(j)+1, FamilyTbl.FamilyPath(aFamily)+FamTblNames[J]+Suffix);

    finally
     If Assigned(fProgressProc) then
      fProgressProc(piEnd,0,'');
    end;
   end;
  finally
   OpenClosedTbls;
  end;

  aErrorFound := Length(aMess) > 0;
  if aErrorFound then
   l3System.Msg2Log(aMess);
 finally
  if l_NeededTemporaryLock then
   UnLockAll;
 end;
end;

Procedure THTServer.VerifyFamily(aFamily : TFamilyID;VType : TVerifyType;  WithFixErrors : Boolean);
Var
 ReportFile : Text;
 I          : TDLType;
Begin
 AssignFile(ReportFile,'Verify.log');
 ReWrite(ReportFile);
 WriteLn(ReportFile,' �������� ���������� ����������� ��������� N ',aFamily);
 WriteLn(ReportFile,'-----------------------------------------------');
 WriteLn(ReportFile);
 Try
  If aFamily<>0 then
  Begin
   If (VType = vtAll) or (VType = vtDiction) then
   Begin
    For I := dlSources to High(TDLType) do
    Begin
     WriteLn(ReportFile,' �������� ������� '+ cDLPassports[I].rName);
     WriteLn(ReportFile);
     try
      LinkServer(aFamily).VerifyLink(I, @ReportFile, WithFixErrors);
     except
      WriteLn(ReportFile,'!! Exception');
     end;
     WriteLn(ReportFile);
    end;
   end;

   If (VType = vtAll) or (VType = vtDocs) then ;
   If (VType = vtAll) or
      (VType = vtHLinks) then ;
  end
  else
  begin
   // �������� main ���������
  end;
 finally
  CloseFile(ReportFile);
 end;
end;


Procedure THTServer.ReceiveServerTime(aMessage : PAnsiChar);
var
 DeltaStr   : ShortString;
 DeltaTime  : TDateTime;
begin
 DeltaTime:=Now - PDateTime(aMessage)^;
 if (Abs(DeltaTime)*24*3600) > 10 then
  begin
   DeltaStr:=TimeToStr(DeltaTime);
   if DeltaTime < 0 then
    DeltaStr:='-'  + DeltaStr;
   l3System.Msg2Log('����� �� �������: ' + DateTimeToStr(PDateTime(aMessage)^) +
                    '; Delta = ' + DeltaStr);
  end;
end;

Function THTServer.DoOnLongProcess(aState : TProcessState) : Boolean;
begin
 If Assigned(OnLongProcess) then
  Result := OnLongProcess(aState)
 else
  Result := False; // ������� ���� �� ��������� �����
end;

Function THTServer.StartTransactionWithWait(aTables : LPTHANDLE;
                                            aTblCnt : SmallInt;
                                            Var TransID : TRID) : Boolean;
Var
 OpRes      : LongInt;
 CancelFlag : Boolean;
begin
 Result:=False;
 CancelFlag:=False;

 OpRes:=htStartTransaction(aTables,aTblCnt,TransID);
 If OpRes = 0 then
  begin
   Result:=True;
   exit;
  end
 else
  begin
   If (OpRes = -72) (* Table used in other transaction *)
      {and Assigned(OnLongProcess)} then
    begin
     DoOnLongProcess(psStart);
     Repeat
      Sleep(200);
      OpRes:=htStartTransaction(aTables,aTblCnt,TransID);
      If OpRes = 0 then
       begin
        Result:=True;
        DoOnLongProcess(psEnd);
        exit;
       end
      else
       If (OpRes = -72) then
        CancelFlag:=DoOnLongProcess(psCurrent)
       else
        begin
         DoOnLongProcess(psEnd);
         Ht(OpRes);
        end;
     until CancelFlag;
     DoOnLongProcess(psEnd);
    end
   else
    Ht(OpRes);
  end;
end;

function THTServer.GetHomePathName(aUserID : TUserID) : TPathStr;
Var
 DirName     : TPathStr;
Begin
 DirName:='Usr#'+IntToHex(aUserID,4)+'\';
 Result:=ConcatDirName(GlobalHomePath, DirName);
end;

function THTServer.GetHomePath(aUserID : TUserID) : TPathStr;
Begin
 Result := GetHomePathName(aUserID);
 if not l3FileUtils.FileExists(Result) then
  MakeDir(Result);
end;

Function THTServer.CheckArchivariusPassword(aShortName : TPassNameStr;
                                            aPassWord  : TPassStr) : Boolean;
Begin
 Result:=False;
 If UserManager.CheckPassword(CurUserID, aShortName,aPassword) then
 begin
  Result:= True;
  SetUserParams(False);
 end; // UserManager.CheckPassword(CurUserID, aShortName,aPassword)
end;

Function THTServer.CheckAdminPassword(aShortName : TPassNameStr;
                                      aPassWord  : TPassStr) : Boolean;
Begin
 Result:=False;
 If UserManager.CheckPassword(CurUserID,aShortName,aPassword) then
  Begin
   Result:=True;
   SetUserParams(True);
  end;
end;

Procedure THTServer.SetPauseFlag(aLength : LongInt);
begin
 BigBrother.LogPause(aLength);
end;

Procedure THTServer.SetDocPrintFlag(aFamily : TFamilyID;aDocID : TDocID);
begin
 BigBrother.LogPrintDoc(aFamily, aDocID);
end;

Procedure THTServer.SetDocSaveFlag(aFamily : TFamilyID;aDocID : TDocID);
Begin
 BigBrother.LogSaveDoc(aFamily, aDocID);
end;

procedure THTServer.FillValueSABfromList(var aSAB : SAB;aList : Tl3LongintList);
const
 MaxBufRecords = 64000 div SizeOf(TDocID);
var
 TmpBuf     : Pointer;
 I,
 MaxCount   : Word;
 CurListPos,
 CurInsPos  : LongInt;
begin
 if aList = nil then
  Exit;
 aList.Sorted := True;
 Ht(htOpenResults(aSAB,ROPEN_READ,nil,0));
 try
  if aList.Count <= MaxBufRecords then
   MaxCount:=aList.Count
  else
   MaxCount:=MaxBufRecords;
  I:=0;
  CurListPos:=0;
  CurInsPos:=0;
  l3System.GetLocalMem(TmpBuf,MaxCount*SizeOf(LongInt));
  try
   repeat
    PLongArr(TmpBuf)^[I]:=aList[CurListPos];
    Inc(I);
    Inc(CurListPos);
    if (CurListPos = aList.Count) or
       (I = MaxCount) then
     begin
      Ht(htIncludeResultsBlock(aSAB,CurInsPos,TmpBuf,I*SizeOf(LongInt)));
      Inc(CurInsPos,I);
      I:=0;
     end;
   until CurListPos = aList.Count;
  finally
   l3System.FreeLocalMem(TmpBuf);
  end;
 finally
  htCloseResults(aSAB);
 end;
end;

procedure THTServer.FillValueSABfromListEx(var aSAB: SAB;
                                           anId: Integer;
                                           aList: Tl3LongintList);
const
 MaxBufRecords = 64000 div SizeOf(TPairLong);
var
 TmpBuf     : Pointer;
 I,
 MaxCount   : Word;
 CurListPos,
 CurInsPos  : LongInt;
begin
 if aList = nil then
  Exit;
 aList.Sorted := True;
 Ht(htOpenResults(aSAB, ROPEN_READ, nil, 0));
 try
  if aList.Count <= MaxBufRecords then
   MaxCount := aList.Count
  else
   MaxCount := MaxBufRecords;
  I := 0;
  CurListPos := 0;
  CurInsPos := 0;
  l3System.GetLocalMem(TmpBuf, MaxCount * SizeOf(TPairLong));
  try
   repeat
    PPairLongArr(TmpBuf)^[I].Doc := anId;
    PPairLongArr(TmpBuf)^[I].Sub := aList[CurListPos];
    Inc(I);
    Inc(CurListPos);
    if (CurListPos = aList.Count) or (I = MaxCount) then
    begin
     Ht(htIncludeResultsBlock(aSAB, CurInsPos, TmpBuf, I * SizeOf(TPairLong)));
     Inc(CurInsPos, I);
     I := 0;
    end;
   until CurListPos = aList.Count;
  finally
   l3System.FreeLocalMem(TmpBuf);
  end;
 finally
  htCloseResults(aSAB);
 end;
end;

Procedure THTServer.SessionDone;
Begin
 If Assigned(fBigBrother) then fBigBrother.SessionDone;
end;

(*function THTServer.CheckDocumentsWithOutGarantID(aFamily : TFamilyID;
                                                 Report  : Boolean;
                                                 LogName : TFileName) : LongInt;
Const
 Suffix : Array [1..2] of Char = #13#10;
Var
 tmpReNumTbl : TRenumTbl;

 RenumKeys,
 DocKeys,
 RelKeys,
 CorrectID,
 WrongID     : SAB;

 CurFl       : TmgExFileStream;
 CurBuf      : TmgBuffStream;

 procedure WriteToLog(CurIDSab : Sab;aTitle : ShortString);
 Var
  CurID : TDocID;
  TmpStr  : ShortString;
 begin
  If CurIDSab.gFoundCnt>0 then
   Begin
    Result:=Result+CurIDSab.gFoundCnt;

    if Report then
     begin
      Ht(htOpenResults(CurIDSab,ROPEN_READ,Nil,0));
      Try
       If aTitle<>'' then
        begin
         CurBuf.WriteBuffer(Suffix,2);
         CurBuf.WriteBuffer(aTitle[1],Length(aTitle));
         CurBuf.WriteBuffer(Suffix,2);
        end;
       While htReadResults(CurIDSab,@CurID,SizeOf(TDocID)) > 0 do
        Begin
         TmpStr:=IntToStr(CurID);
         CurBuf.WriteBuffer(TmpStr[1],Length(TmpStr));
         CurBuf.WriteBuffer(Suffix,2);
        end;
      finally
       htCloseResults(CurIDSab);
      end;
     end;
   end;
 end;

begin
 Result:=0;
 DocumentServer.Family:=aFamily;
 tmpReNumTbl:=ReNumTbl[aFamily];

 If Report then
  begin
   If LogName = '' then LogName:='BadGarID.log';
   CurFl:=TmgExFileStream.Create(LogName,l3_fmWrite);
   CurBuf:=TmgBuffStream.Create(CurFl,32000);
  end;
 Try
  tmpReNumTbl.RefreshSrchList;
  htValuesOfKey(RenumKeys,rnRealID_fld,tmpReNumTbl.fSrchList);
  Try
   DocumentServer.FileTbl.RefreshSrchList;
   htValuesOfKey(DocKeys,fId_Fld,DocumentServer.FileTbl.fSrchList);
   Try
    htTransferToPhoto(RenumKeys,DocumentServer.FileTbl.fSrchList,fId_Fld);
    htAndResults(CorrectID,DocKeys,RenumKeys);
    Try
     htNotResults(WrongID,CorrectID);
     Try
      WriteToLog(WrongID,'��������� ��� �������� ID.');
     finally
      htClearResults(WrongID);
     end;
    finally
     htClearResults(CorrectID);
    end;
   finally
    htClearResults(DocKeys);
   end;

   htValuesOfKey(RelKeys,fRelated_fld,DocumentServer.FileTbl.fSrchList);
   Try
    htTransferToPhoto(RenumKeys,DocumentServer.FileTbl.fSrchList,fRelated_fld);
    htAndResults(CorrectID,RelKeys,RenumKeys);
    Try
     htNotResults(WrongID,CorrectID);
     Try
      WriteToLog(WrongID,'������� ��� �������� ID.');
     finally
      htClearResults(WrongID);
     end;
    finally
     htClearResults(CorrectID);
    end;
   finally
    htClearResults(RelKeys);
   end;
  finally
   htClearResults(RenumKeys);
  end;
 finally
  if Report then
   begin
    l3Free(CurBuf);
    l3Free(CurFl);
   end;
 end;
end;
*)
(*
Function THTServer.CheckNullDocuments(aFamily : TFamilyID;
                                      Clear,Report : Boolean;
                                      LogName : TFileName) : LongInt;
Const
 tmpFldCount = 1;
 tmpFld : SmallInt = rnImportID_fld;
 Suffix : Array [1..2] of Char = #13#10;

Var
 tmpReNumTbl  : TRenumTbl;

 RenumKeys,
 DocKeys,
 RelKeys,
 AllIDKeys,
 RealRenumKeys,
 FakeRenumKeys   : SAB;

 TmpSab  : SAB;
 TmpList : TAbstractList;
 TmpMode : TOpenMode;
 TmpRec  : PAnsiChar;
 TmpID,
 I       : LongInt;
 TmpStr  : ShortString;

 CurFl   : TmgExFileStream;
 CurBuf  : TmgBuffStream;
Begin
 Result:=0;
 HLServer.Family:=aFamily;
 DocumentServer.Family:=aFamily;
 tmpReNumTbl:=ReNumTbl[aFamily];

 tmpReNumTbl.RefreshSrchList;
 htValuesOfKey(RenumKeys,rnRealID_fld,tmpReNumTbl.fSrchList);
 Try
  DocumentServer.FileTbl.RefreshSrchList;
  htValuesOfKey(DocKeys,fId_Fld,DocumentServer.FileTbl.fSrchList);
  Try
   htValuesOfKey(RelKeys,fRelated_fld,DocumentServer.FileTbl.fSrchList);
   Try
    htOrResults(AllIDKeys,DocKeys,RelKeys);
    Try
     htTransferToPhoto(AllIDKeys,tmpReNumTbl.fSrchList,rnRealID_fld);
     htAndResults(RealRenumKeys,AllIDKeys,RenumKeys);
     Try
      htNotResults(FakeRenumKeys,RealRenumKeys);
      Try
       If FakeRenumKeys.gFoundCnt>0 then
        Begin
         Result:=FakeRenumKeys.gFoundCnt;

         if Report then
          begin
           htRecordsByKey(TmpSAB,FakeRenumKeys);
           Try
            TmpMode.openMode:=ROPEN_READ;
            TmpMode.Count:=tmpFldCount;
            TmpMode.FldArr:=@tmpFld;
            TmpList:=TAbstractList.Create(@TmpSab,TmpMode);
            TmpList.ReadForvard:=True;
            Try
             CurFl:=TmgExFileStream.Create(LogName,l3_fmWrite);
             CurBuf:=TmgBuffStream.Create(CurFl,32000);
             Try
              For I:=0 to TmpList.Count-1 do
               Begin
                TmpRec:=TmpList.GetItem(I);
                TmpID:=0;
                l3Move(TmpRec[0],TmpID,SizeOf(TDocID));
                TmpStr:=IntToStr(TmpID);
                CurBuf.WriteBuffer(TmpStr[1],Length(TmpStr));
                CurBuf.WriteBuffer(Suffix,2);
               end;
             finally
              l3Free(CurBuf);
              l3Free(CurFl);
             end;
            finally
             l3Free(TmpList);
            end;
           finally
            htClearResults(TmpSAB);
           end;
          end;
         if Clear then
          begin
           tmpReNumTbl.DelRealNumbers(FakeRenumKeys);
           //HLServer.HLinkTbl.SetEmptyDestOnDocs(FakeRenumKeys);
          end;
        end;
      finally
       htClearResults(FakeRenumKeys);
      end;
     finally
      htClearResults(RealRenumKeys);
     end;
    finally
     htClearResults(AllIDKeys);
    end;
   finally
    htClearResults(RelKeys);
   end;
  finally
   htClearResults(DocKeys);
  end;
 finally
  htClearResults(RenumKeys);
 end;
end;
*)

function THTServer.GetTblObjectEx(aFamily: TFamilyID; aTable: Integer; aATP : TdtAttrTblPart = atpMain): TPrometTbl;
var
 l_FTbl: TFamTbls;
 l_MTbl: TMainTbls;
 l_DictType: TDLType;
 I: Integer;
Begin
 Result := GetTblObject(aFamily, aTable, aATP);

 {
 // ������� ���� ���������� GetTblObject
 for I := 0 to fOpenTbls.Count - 1 do
  with POpenTblRec(fOpenTbls.Data[I])^ do
   if (Family = aFamily) and (CompareText(Name, aPrefName) = 0) then
   begin
    Result := Obj;
    Break;
   end;
 }

 if Result = nil then
 begin
  // ������ ���� �� ������ ��������
  if aFamily = 0 then
  begin
   Assert(false, 'GetTblObjectEx');
   {l_MTbl := TMainTbls(aTable);
   case l_MTbl of
    mtGUDt  : Result := UserManager.UsGrDt;  // GUDT
    mtUsers : Result := UserManager.UserTbl; // USERS
   end;}
  end
  else
  begin
   l_FTbl := TFamTbls(aTable);
   Assert(l_FTbl in [ftFile, ftFileDup1, ftFileDup2], 'GetTblObjectEx');

   case l_FTbl of
    ftFile  :
      Result := DocumentServer(aFamily).FileTbl; // FILE
    ftHlink :
      ;//Result := LinkServer(aFamily)[atHLink].Table;      // HLINK
    ftActiv :
      ;//Result := LinkServer(aFamily)[atActiveIntervals].Table;
    ftLog   :
      ;//Result := LinkServer(aFamily)[atLogRecords].Table
   else
    // DT*
    for l_DictType := dlSources to dlAnnoClasses do
     if cDLPassports[l_DictType].rDict = l_FTbl then
     begin
      {DictServer.Family := aFamily;
      Result := DictServer.DictTbl[l_DictType];
      if Result <> nil then
       Break;}
     end;
   end; // case l_FTbl of
  end; // if-else
 end; // if

 if Result = nil then
 begin
  Result := TPrometTbl.Create(aFamily, aTable, aATP);
  Result.Free; // ��������� ������� ������
 end;
end;

function THTServer.GetFreeTbl(aFamily : TFamilyID): TFreeTbl;
var
 l_OpenTblRec: TOpenTblRec;
begin
 if aFamily = MainTblsFamily then
  Result := TFreeTbl(GetTblObject(aFamily, Ord(mtFree)))
 else
  Result := TFreeTbl(GetTblObject(aFamily, Ord(ftFree)));

 if Result = nil then
 begin
  Result := TFreeTbl.Create(aFamily);
  Result.Free; // �������� ���������� ������
 end;
end;

function THTServer.GetTextBase(aFamily : TFamilyID) : AnsiString;
begin
 Result := FamilyTbl.FamilyPath(aFamily) + 'bserv' + IntToHex(aFamily, 3);
end;

function THTServer.StartTransaction(aTables: array of TPrometTbl;
                                    var TransID: TRID;
                                    aTransTime: Word = DefaultTransTime): Boolean;
var
 l_TableHandles: array of HT_Const.THANDLE;
 l_TablesAmount: Integer;
 I: Integer;
begin
 l_TablesAmount := Length(aTables);
 // ���������� ������ Handle'��
 SetLength(l_TableHandles, l_TablesAmount);
 try
  for I := 0 to l_TablesAmount - 1 do
   l_TableHandles[I] := aTables[I].Handle;

  // ���������� subj
  TransTime := aTransTime;
  Result := StartTransactionWithWait(@l_TableHandles[0],
                                     l_TablesAmount,
                                     TransID);
  // ������ ������� �� �������, ����������� � ���� ���������� (������ ������� ������ ���� ����������)
  if Result then
   for I := 0 to l_TablesAmount - 1 do
    aTables[I].TransID := TransId;
 finally
  l_TableHandles := nil;
 end;
end;

function THTServer.StartTransaction(aTables : Il3CBaseList;
                                     var TransID: TRID;
                                     aTransTime: Word = DefaultTransTime): Boolean;
var
 l_TableHandles: array of HT_Const.THANDLE;
 l_TablesAmount: Integer;
 I: Integer;
begin
 l_TablesAmount := aTables.Count;
 // ���������� ������ Handle'��
 SetLength(l_TableHandles, l_TablesAmount);
 try
  for I := 0 to l_TablesAmount - 1 do
   l_TableHandles[I] := TdtTable(aTables[I]).Handle;

  // ���������� subj
  TransTime := aTransTime;
  Result := StartTransactionWithWait(@l_TableHandles[0],
                                     l_TablesAmount,
                                     TransID);
  // ������ ������� �� �������, ����������� � ���� ���������� (������ ������� ������ ���� ����������)
  if Result then
   for I := 0 to l_TablesAmount - 1 do
    TdtTable(aTables[I]).TransID := TransId;
 finally
  l_TableHandles := nil;
 end;
end;

procedure THTServer.CommitTransaction(var aTransID: TRID);
begin
 try
  Ht(htCommitTransaction(aTransID));
 finally
  ClearTransIds(aTransID); // ������ �������
 end;
 TransTime := DefaultTransTime;
end;

procedure THTServer.RollbackTransaction(var aTransID: TRID);
begin
 try
  Ht(htRollBackTransaction(aTransID));
 finally
  ClearTransIds(aTransID); // ������ �������
 end;
 TransTime := DefaultTransTime;
end;

procedure THTServer.ClearTransIds(const aTransId: Ht_Const.TRID);
var
 I: Integer;
 l_Table: TPrometTbl;
begin
 for I := 0 to fOpenTbls.Count - 1 do
 begin
  l_Table := POpenTblRec(fOpenTbls.Data[I])^.rObj;
  if CompareMem(@l_Table.TransID,
                @aTransId,
                SizeOf(Ht_Const.TRID))
  then
   l_Table.ClearTransId;
 end;
end;

procedure THTServer.ReleaseTables;
var
 I         : Integer;
 lCurTable : TPrometTbl;
begin
 if Assigned(fOpenTbls) then
 begin
  // ������� ��������� ��� �������, ����� FREE
  for I := Pred(fOpenTbls.Count) downto 0 do
  begin
   lCurTable := POpenTblRec(fOpenTbls.Data[I])^.rObj;
   if (lCurTable <> nil) and not (lCurTable is TFreeTbl) then
   begin
    fOpenTbls.Delete(I);
    l3Free(lCurTable);
   end;
  end;

  // ������ ��������� ��� ���������, �.�. FREE
  for I := Pred(fOpenTbls.Count) downto 0 do
   l3Free(POpenTblRec(fOpenTbls.Data[I])^.rObj);

  L3Free(fOpenTbls);
 end;
end;

(*procedure THTServer.DelTblObj(aTblObj : TPrometTbl);
var
 lIndex : LongInt;
begin
 lIndex := fOpenTbls.IndexOfData(Pointer(aTblObj),SizeOf(Pointer),
                                 fOpenTbls.DataSize-SizeOf(Pointer));
 if lIndex <> -1 then
 begin
  fOpenTbls.Delete(lIndex);
  l3Free(aTblObj);
 end;
end;
*)

class procedure THTServer.SabToList(var aSrcSab: Sab; aDstList: Tl3LongintList);
var
 l_ValIter: TValuesIterator;
 l_Value: Longint;
begin
 if (aDstList = nil)
  or (htResultsType(aSrcSab) <> RES_VALUE)
  or htIsResultOpen(aSrcSab)
 then
  Exit;

 aDstList.Clear;
 aDstList.Capacity := aSrcSab.gFoundCnt;
 l_ValIter := TValuesIterator.Create(aSrcSab);
 try
  if l_ValIter.RecordSize > SizeOf(l_Value) then
   Exit;
  while not l_ValIter.EOF do
  begin
   l_Value := 0;
   l_ValIter.Read(l_Value);
   aDstList.Add(l_Value);
   l_ValIter.Next;
  end;
 finally
  L3Free(l_ValIter);
 end;
end;

function THTServer.GetTblObject(aSab: Sab): TPrometTbl;
var
 l_Handle: Ht_Const.THandle;
 I: Integer;
begin
 Ht(htResultsTable(aSab, l_Handle));
 Result := nil;
 for I := 0 to fOpenTbls.Count - 1 do
  if (POpenTblRec(fOpenTbls.Data[I])^.rObj.Handle = l_Handle)  then
  begin
   Result := POpenTblRec(fOpenTbls.Data[I])^.rObj;
   Break;
  end;
end;

procedure THTServer.SetTransTime(const aSeconds: Word);
begin
 if f_TransTime <> aSeconds then
 begin
  f_TransTime := aSeconds;
  htSetTransTimeOut(f_TransTime);
 end;
end;

procedure THTServer.OnHtError(aErrorMessID: SmallInt);
begin
 case aErrorMessID of
  2: // "not enough memory"
  begin
   l3System.Msg2Log(Format('HtInitData.gHeapCtrl = %d, HtInitData.gHeapTask = %d',
                           [f_HtInitData.gHeapCtrl, f_HtInitData.gHeapTask]));
  end;

 end; // case

end;

procedure THTServer.OnHtIOError(aFileName: PAnsiChar;
                                aIoErrorCode,
                                aDosErrorNumber: SmallInt);
begin
 ; // �����
end;

function dtGetDB(aFamily     : TFamilyID;
                 aOnYield    : TNotifyEvent = nil;
                 aFileMeter  : Tl3ProgressProc = nil;
                 aFilesMeter : Tl3ProgressProc = nil): Im3DB;
  {-}
begin
 Result := Tm3DB.Make(GlobalHtServer.TextBase[aFamily], aOnYield, aFileMeter, aFilesMeter);
end;

function dtGetDBEx(aFamily     : TFamilyID;
                   aOnYield    : TNotifyEvent = nil;
                   aFileMeter  : Tl3ProgressProc = nil;
                   aFilesMeter : Tl3ProgressProc = nil): Im4DB;
  {-}
begin
 Result := Tm4DB.Make(GlobalHtServer.TextBase[aFamily], aOnYield, aFileMeter, aFilesMeter);
end;

procedure LoadDbVersion(const DocBaseFolder, AdminBaseFolder: AnsiString; out theDocBaseVersion, theAdminBaseVersion:
    Integer);
var
 l_BaseIni: TCfgList;
 l_BaseIniPath: AnsiString;
 l_DbPath: AnsiString;
{$IFDEF TestDb}
 l_PathToFlagFile : AnsiString;
{$EndIF TestDb}
begin
 if DirectoryExists(DocBaseFolder) and DirectoryExists(AdminBaseFolder) then
 begin
  l_DBPath := DocBaseFolder;
 {$IFDEF TestDb}
  l_PathToFlagFile := ConcatDirName(l_DbPath, 'Testing');
  if not FileExists(l_PathToFlagFile) then
   raise Exception.Create(SysUtils.Format('������ �� �� "%s" ���������.',
                                          [l_DbPath]));
 {$ENDIF}


  l_BaseIniPath := ConcatDirName(l_DbPath, 'garant\base.ini');
  if not FileExists(l_BaseIniPath) then
   raise Exception.Create('�� ������ ���� ' + l_BaseIniPath);

  l_BaseIni := TCfgList.Create(l_BaseIniPath);
  try
   l_BaseIni.Section:= 'Tables';
   theDocBaseVersion := l_BaseIni.ReadParamIntDef('Version', c_BadVersion);
  finally
   l_BaseIni.Free;
  end;

  l_DbPath := NormalizedPath(AdminBaseFolder);
  if l_DbPath = '' then
   raise Exception.Create('�� ������� ������������ �� (�����.)');

  l_BaseIniPath := ConcatDirName(l_DbPath, 'base.ini');
  if not FileExists(l_BaseIniPath) then
   raise Exception.Create('�� ������ ���� ' + l_BaseIniPath);

  l_BaseIni := TCfgList.Create(l_BaseIniPath);
  try
   l_BaseIni.Section:= 'Tables';
   theAdminBaseVersion := l_BaseIni.ReadParamIntDef('Version', c_BadVersion);
  finally
   l_BaseIni.Free;
  end;
 end // DirectoryExists(DocBaseFolder) and DirectoryExists(AdminBaseFolder)
 else
  l3System.Msg2Log('�� ������� ����� %s', [IfThen(DirectoryExists(DocBaseFolder), AdminBaseFolder, DocBaseFolder)])
end;

function THTServer.LoginAsServer: Boolean;
Begin
 CurUserID := usServerService;
 //StationJornal.SetCurUser(CurUserID);
 Result:=True;
 UserManager.GetUserGroup(CurUserID);
 CurHomePath:=GetHomePath(CurUserID);
 AccessServer.ReLoadMasks(MainTblsFamily);
 BigBrother.UserID:=CurUserID;
end;

function THTServer.CheckCSPassword(const aLoginName: AnsiString; const aPassword: AnsiString; out theUserID: TCsClientID):
    Boolean;
begin
 Result := UserManager.CSCheckPassword(aLoginName, aPassword, theUserID);
end;

function THTServer.GetRegionName(aID: TRegionID): AnsiString;
begin
 Result := '';
 try
  Result := RegionTbl.GetNameStr(aID);
 except
  Result := '';
 end;
end;

function THTServer.IsRegionExists(aID: TRegionID): Boolean;
begin
 Result := False;
 try
  Result := RegionTbl.CheckExists(aID);
 except
  Result := False;
 end;
end;

function THTServer.pm_GetRegionTbl: TDictionaryTbl;
begin
 if f_RegionTbl = nil then
 begin
  f_RegionTbl := TDictionaryTbl.Create(MainTblsFamily, dlNone, Ord(mtRegions));
  f_RegionTbl.NameFld := 2;
  f_RegionTbl.GetItemList;
 end;
 Result := f_RegionTbl;
end;

function THTServer.ConvertAliasPath(CurPath : ShortString): AnsiString;
var
 SecondPos : Byte;
 CfgPath,
 PathConst,
 SaveSection : ShortString;
Begin
 If CurPath[1]='%' then
 Begin
   SecondPos:=PosEx('%',CurPath,2);
   If SecondPos=0 then
    raise EHtErrors.CreateInt(ecPathNotFound);
   PathConst:= AnsiDequotedStr(CurPath, '%'); // Copy(CurPath,2,SecondPos-2);
   CfgPath := IncludeTrailingBackslash(GetAliasValue(PathConst));

   If SecondPos=Length(CurPath) then
    Result:=CfgPath
   else
   Begin
    If CurPath[SecondPos+1]='\' then
     Result:=CfgPath+Copy(CurPath,SecondPos+2,Length(CurPath))
    else
     Result:=CfgPath+Copy(CurPath,SecondPos+1,Length(CurPath));
   end;
  end
 else
  Result := CurPath;
 Result := IncludeTrailingBackslash(Result);
end;

function THTServer.GetAliasValue(const aAlias: AnsiString): ShortString;
var
 PathConst: ShortString;
 SaveSection: ShortString;
begin
 if f_AliasList.Count > 0 then
 begin
  Result := f_AliasList.Values[aAlias];
 end (* depricated �� ����� �� �������
 else
 if ServerConfig <> nil then
 begin
  SaveSection:=ServerConfig.Section;
  Try
   ServerConfig.Section:=FamilySection;
   If Not ServerConfig.ReadParamStr(aAlias, Result) then
    raise EHtErrors.CreateInt(ecPathNotFound);
  finally
   ServerConfig.Section:=SaveSection;
  end;
 end *)
 else
  raise EHTErrors.CreateInt(ecPathNotFound);
end;

procedure THTServer.GoingToDie;
begin
 CallNotify(sni_Destroy, 0);
end;

function THTServer.pm_GetBaseLanguage(aFamily: TFamilyID): TLanguageObj;
begin
 if BaseConfig = nil then
  InitBaseConfig(CurrentFamily);
 if f_BaseLang = nil then
 begin
  f_BaseLang:= TLanguageObj.Create;
  f_BaseLang.LanguageID:= BaseConfig['Settings'].ReadParamIntDef('Language', -1);
 end;
 Result:= f_BaseLang;
end;

function THTServer.CheckFreeResource(aFamily : TFamilyID; aResourceName : AnsiString): Boolean;
begin
 Result := FreeTbl[aFamily].AnyRangesPresent(ftnDocIDExternal);
end;

function THTServer.pm_GetExtDocIDsFromRange: Boolean;
begin
 Result := CheckFreeResource(CurrentFamily, ftnDocIDExternal);
end;

procedure THTServer.pm_SetAliasList(const Value: TStrings);
begin
 if Value <> nil then
  f_AliasList.Assign(Value);
end;

procedure THTServer.SetUserParams(aIsAdmin: Boolean);
begin
 If aIsAdmin or ((CurUserID <> usSupervisor) and (CurUserID < usAdminReserved)) then
 begin
  UserManager.GetUserGroup(CurUserID);
  CurHomePath:=GetHomePath(CurUserID);
  AccessServer.ReLoadMasks(MainTblsFamily);
 end;
 BigBrother.UserID:=CurUserID;
end;

function THTServer.GetFreeExtObjID(aFamily : TFamilyID): TDocID;
var
 lRenum : TReNumTbl;
begin
 Result := 0;
 // ���� ���� ftnObjIDExternal ������ �� ����
 if CheckFreeResource(aFamily, ftnObjIDExternal) then
 try
  Result := GlobalHtServer.FreeTbl[aFamily].GetFree(ftnObjIDExternal);
 except
  Result := 0;
 end;

 if (Result <= 0) and (CheckFreeResource(aFamily, ftnDocIDExternal)) then
 try
  Result := GlobalHtServer.FreeTbl[aFamily].GetFree(ftnDocIDExternal);
 except
  Result := 0;
 end;
end;

function THTServer.GetFreeExtDocID(aFamily : TFamilyID): TDocID;
var
 lRenum : TReNumTbl;
begin
 if not ExtDocIDsFromRange then
  Result := 0
 else
 begin
  lRenum := LinkServer(aFamily).Renum;
  repeat
   Result := GlobalHtServer.FreeTbl[aFamily].GetFree(ftnDocIDExternal);
  until lRenum.ConvertToRealNumber(Result) = cUndefDocID;
 end;
end;

                                       
function dtGetObjectStream(aFamily: TFamilyID; aDocID: TDocID; var anObjID: Integer; aMode: Tm3StoreAccess): IStream;
var
 l_DB  : Im3DB;
 l_Doc : Im3DBDocument;
begin
 l_DB := dtGetDB(aFamily);
 try
  l_Doc := l_DB.GetDocument(aDocID);
  try
   if anObjID < 0 then
    anObjID := l_Doc.GetFreeObjectID;
   Result := l_Doc.Open(aMode, m3_dsObject, anObjID);
  finally
   l_Doc := nil;
  end;
 finally
  l_DB := nil;
 end;//try..finally
end;

procedure PackParams(const theStationName: TStationName; theFolders: TPathRec);
begin
 If (ServerConfig=Nil) or (StationConfig=Nil) then exit;

 StationConfig.Section:=BaseSection;
 ServerConfig.Section:=BaseSection;

 StationConfig.WriteParamStr('StationName', theStationName);
 ServerConfig.WriteParamStr('TablePath',theFolders.TblPath);
 ServerConfig.WriteParamStr('LockPath', theFolders.LockPath);
 ServerConfig.WriteParamStr('HomeDirPath',theFolders.HomePath);
 ServerConfig.WriteParamStr('TmpDirPath',theFolders.TmpPath);
 ServerConfig.Section:= 'FamilyConst';
 ServerConfig.WriteParamStr('FamilyPath', theFolders.DocsPath);
end;

function UserIDBelongsToRegion(const aUserID: TUserID; aRegion: Byte): Boolean;
begin
 Result := (aUserID shr 24) = aRegion;
end;

Initialization
 htGlobalInit(HInstance);
 YieldProc:=@OurProjectHtYield;
 cTestError:=@TestError;
Finalization
 htGlobalShut;
end.
