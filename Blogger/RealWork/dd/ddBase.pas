{.$DEFINE ExpandTabs}
unit ddBase;

// $Id: ddBase.pas,v 1.259 2013/07/31 10:27:31 dinishev Exp $

// $Log: ddBase.pas,v $
// Revision 1.259  2013/07/31 10:27:31  dinishev
// Cleanup.
//
// Revision 1.258  2013/07/31 10:09:43  dinishev
// Cleanup.
//
// Revision 1.257  2013/07/31 07:43:16  dinishev
// Cleanup.
//
// Revision 1.255  2013/07/12 12:59:52  dinishev
// {Requestlink:422512540}
//
// Revision 1.254  2013/07/12 12:34:13  dinishev
// {Requestlink:422512540}
//
// Revision 1.253  2013/07/12 09:08:42  dinishev
// Cleanup
//
// Revision 1.252  2013/05/08 12:33:00  dinishev
// {Requestlink:453164226}
//
// Revision 1.251  2013/04/11 16:46:27  lulin
// - ���������� ��� XE3.
//
// Revision 1.250  2013/04/03 09:34:33  narry
// �� ��������� �����
//
// Revision 1.249  2013/01/31 12:14:55  narry
// ����������
//
// Revision 1.248  2013/01/31 07:07:13  narry
// ����������
//
// Revision 1.247  2013/01/30 11:51:57  narry
// ����������� ����������� ������ ����
//
// Revision 1.246  2013/01/24 06:55:32  narry
// ��������� ������������ ������� (���� �� ��������)
//
// Revision 1.245  2013/01/22 12:19:52  narry
// ����������� RTFReader
//

// Revision 1.215.2.5  2010/11/09 12:50:15  lulin
// {RequestLink:238947629}.
//
// Revision 1.215.2.4  2010/09/21 07:11:39  narry
// k235054056. �� ���������� ������ �������
//
// Revision 1.215.2.3  2010/09/21 06:51:28  narry
// k235053891. ������� ����� ������ ������
//
// Revision 1.215.2.2  2010/09/06 10:12:05  narry
// K228688401. ������ ���� �� ������, ���������� �� exception
//
// Revision 1.218  2010/09/03 12:59:23  narry
// K228688401
//
// Revision 1.217.2.3  2010/09/02 10:40:05  narry
// - ������������� ����������
//
// Revision 1.217.2.2  2010/08/30 05:59:13  narry
// - ������������� ����������
//
// Revision 1.217.2.1  2010/08/24 04:38:43  narry
// - ������������� ����������
//
// Revision 1.217  2010/07/13 11:52:46  narry
// - �121164205
//
// Revision 1.216  2010/07/13 11:38:13  narry
// - �121164205
//
// Revision 1.214  2010/04/12 11:39:20  narry
// - ������� �������
// - ������ ������ ��� ������
//
// Revision 1.213  2010/02/24 18:16:27  lulin
// - ����������� �� ��������� � �������� ���������, ������������ � ���������� �� ������ ���������.
//
// Revision 1.212  2010/02/18 08:16:10  narry
// - �� ���������� �������
//
// Revision 1.211  2010/02/10 15:25:02  narry
// - ����������� ������������ �������
//
// Revision 1.210  2009/10/01 11:02:00  narry
// - ���������� �������� �������� ������
// - ���������� ������ ��������� ��� LiteVersion
//
// Revision 1.209  2009/08/06 07:58:01  dinishev
// [$159352948]
//
// Revision 1.208  2009/07/31 11:10:53  narry
// - ��������� ��������� ����� �� ���������
//
// Revision 1.207  2009/07/31 08:48:47  narry
// - ��������� ��������� ����� �� ���������
//
// Revision 1.206  2009/07/23 13:42:39  lulin
// - ��������� ��������� �������� ���� ���� ����.
//
// Revision 1.205  2009/07/23 08:15:10  lulin
// - �������� �������� ������������� ���������� ��������.
//
// Revision 1.204  2009/06/24 10:58:27  narry
// - ������-�������� RTF �� OpenOffice
//
// Revision 1.203  2009/04/09 15:08:18  lulin
// [$140280550]. ���������� �����.
//
// Revision 1.202  2009/03/04 13:33:06  lulin
// - <K>: 137470629. ���������� �������������� ����� � ������ � ������� �� �� ����� �������.
//
// Revision 1.201  2008/10/28 08:55:46  narry
// - ����������
//
// Revision 1.200  2008/10/24 15:03:12  lulin
// - bug fix: �� ���������� ����������.
//
// Revision 1.199  2008/10/21 12:47:39  narry
// - �������� ������
//
// Revision 1.198  2008/10/13 12:39:27  narry
// - ������������� ����������
//
// Revision 1.197  2008/06/20 14:49:11  lulin
// - ���������� �������� ���������.
//
// Revision 1.196  2008/06/20 14:02:52  lulin
// - ���������� �������� ���������.
//
// Revision 1.195  2008/05/22 12:30:37  narry
// - ������ ���������� ��������
//
// Revision 1.194  2008/05/12 11:43:40  narry
// - ������ ���������� ��������
// - ��������� ������ ��������
//
// Revision 1.193  2008/04/22 10:09:20  narry
// - ����� ��������� ����� ��������
//
// Revision 1.192  2008/04/17 14:44:44  narry
// - ������, ������, ��������
//
// Revision 1.191  2008/04/16 14:35:26  dinishev
// ��������� ���������� ������
//
// Revision 1.190  2008/04/10 10:59:13  narry
// - ������ �������� �������� ��� ��������� ������
//
// Revision 1.189  2008/04/09 13:51:02  narry
// - �����������
// - ������ �������� ������� �� (*, �, #)
//
// Revision 1.188  2008/04/08 10:33:16  narry
// - ������ ���������� ������ � ����� � ������
//
// Revision 1.187  2008/03/21 14:09:21  lulin
// - cleanup.
//
// Revision 1.186  2008/03/14 11:36:54  narry
// - ������ � ���������� ������� �������� ������ ������
//
// Revision 1.185  2008/03/13 14:42:08  narry
// - �����������
//
// Revision 1.184  2008/02/27 12:12:17  dinishev
// Comment changed
//
// Revision 1.183  2008/02/22 09:06:37  lulin
// - �������� ������������.
//
// Revision 1.182  2008/02/21 18:37:21  lulin
// - ������� �������� ��������.
//
// Revision 1.181  2008/02/21 18:13:25  lulin
// - ����������� �� �������� �����.
//
// Revision 1.180  2008/02/21 15:00:36  lulin
// - ���������� ������ ������ ���������.
//
// Revision 1.179  2008/02/21 13:21:23  lulin
// - �������� ������������.
//
// Revision 1.178  2008/02/21 10:55:10  lulin
// - �������� ������������.
//
// Revision 1.177  2008/02/20 11:40:59  lulin
// - bug fix: �� ��������� ����������.
//
// Revision 1.176  2008/02/20 10:47:08  lulin
// - ������� �������� ������� ������� �������.
//
// Revision 1.175  2008/02/14 17:09:10  lulin
// - cleanup.
//
// Revision 1.174  2008/02/12 12:53:15  lulin
// - ����������� �� ��������� ������ �� ������� ������.
//
// Revision 1.173  2008/02/12 10:31:20  lulin
// - ����������� �� ��������� ������ �� ������� ������.
//
// Revision 1.172  2008/02/07 19:13:09  lulin
// - ����������� �� ������� ������������� ������� ������� �������.
//
// Revision 1.171  2008/02/05 09:57:59  lulin
// - �������� ������� ������� � ��������� ����� � ��������� �� �� ������.
//
// Revision 1.170  2008/02/01 15:14:44  lulin
// - ����������� �� �������� ��������������� �������.
//
// Revision 1.169  2008/01/10 16:50:53  lulin
// - cleanup.
//
// Revision 1.168  2007/12/24 15:25:26  lulin
// - ������� �������� �����.
//
// Revision 1.167  2007/12/05 12:45:49  dinishev
// Bug fix: ����� �������������� "��������" ������ ����� � �����.
// Bug fix: �������� ����� ��� ������������� �� ������
// Bug fix: ������������ ������ ����������� � ����� ���� ���������� �����, ���� �������� ������ �� ���� �������������
// Bug fix: "���������" ������� ������� � ������, ���� ��� ��������� �� ������������.
// Bug fix: ��� ������������ ������ �� ��������� ��������� ��� ����
//
// Revision 1.166  2007/10/29 12:07:33  narry
// - ����������
//
// Revision 1.165  2007/10/23 09:46:55  narry
// - ���������� ������� �������
//
// Revision 1.164  2007/10/23 05:53:54  narry
// - ��������� �������� ������. ���� ������ � RTF
//
// Revision 1.163  2007/09/03 12:29:09  lulin
// - ��������������� ���.
//
// Revision 1.162  2007/08/22 11:33:56  narry
// - ������� ������ � �������������� ������ ��������
//
// Revision 1.161  2007/08/21 10:51:49  narry
// - �� ������������ ���������� ������ � ��������
//
// Revision 1.160  2007/08/14 19:31:52  lulin
// - ������������ ������� ������.
//
// Revision 1.159  2007/07/18 15:07:28  lulin
// - ���������� �����������. ����� ���������, ������ �� ������� �� ��������.
//
// Revision 1.158  2007/06/13 11:29:22  narry
// - ������ ����
//
// Revision 1.157  2007/01/30 11:35:58  narry
// - ���������� �������� ���������� � RTF
//
// Revision 1.156  2006/12/04 15:39:39  lulin
// - ������ ������������ � ������������ � ��� ���������.
//
// Revision 1.155  2006/11/17 13:36:11  lulin
// - ������� ������ ��� ������������ ��������.
//
// Revision 1.154  2006/09/21 11:48:14  narry
// - ��������� ����� ������
//
// Revision 1.153  2006/09/19 11:33:33  narry
// - ��������� "���������" ������ �� ������ RTF
//
// Revision 1.152  2006/09/07 13:25:06  narry
// - ��������� ����������� ������ ��������� � AV
//
// Revision 1.151  2006/07/20 06:12:12  narry
// - ����� ���������� �������������� ����������� ������ � ������
//
// Revision 1.150  2006/07/18 14:08:41  narry
// - �����������: �� ����������� ������ � ����������
//
// Revision 1.149  2006/05/16 08:46:47  narry
// - �����������: ������ ��������� �������, ��������� �� �������
//
// Revision 1.148  2006/05/07 09:49:08  narry
// - ����������
//
// Revision 1.147  2006/05/06 13:37:09  narry
// - ������� ��� �����, ������� ������
//
// Revision 1.146  2006/05/06 06:40:40  lulin
// - cleanup.
//
// Revision 1.145  2006/05/06 06:33:13  lulin
// - cleanup.
//
// Revision 1.144  2006/01/05 15:03:06  narry
// - �����: ������ ������������ �� ����������� ����� (�� ������ ���������)
//
// Revision 1.143  2005/12/06 14:37:34  narry
// - ������: AV ��� ��������� ��������� ������
// - �������: ��������� ������� ������
//
// Revision 1.142  2005/10/18 08:13:46  zakharov
// - fixed: ���������� Value � f_Stream
//
// Revision 1.141  2005/10/17 13:44:36  zakharov
// - bug fix: ������ ����������� ������
//
// Revision 1.140  2005/10/11 08:57:20  narry
// - �����������: ����������� �������������� �����
//
// Revision 1.139  2005/10/04 11:44:30  narry
// - ����������: ������ ������ �� ��������� 10
//
// Revision 1.138  2005/09/20 14:29:56  narry
// - �����������: AV ��� ���������� � ��������� ������� ������
//
// Revision 1.137  2005/06/01 16:22:33  lulin
// - remove unit: evIntf.
//
// Revision 1.136  2005/05/27 10:14:37  narry
// - bug fix: ������������ ������� ������
//
// Revision 1.135  2005/05/26 17:44:39  lulin
// - ������� ����� ������ ��������� �� �������� � L3.
//
// Revision 1.134  2005/05/24 14:50:06  lulin
// - ������� ������ evGraph � �������� � L3.
//
// Revision 1.133  2005/05/19 13:49:47  lulin
// - ����� TevFont ������� � ��������� ������.
//
// Revision 1.132  2005/05/12 09:59:19  narry
// - bug fix: �������������� �������������� ��������
//
// Revision 1.131  2005/04/09 09:38:54  narry
// - bug fix: ������ � ������ �������� ��������
//
// Revision 1.130  2005/04/08 13:51:23  narry
// - bug fix: ��������� ������������� RTF
//
// Revision 1.129  2005/03/28 14:30:04  lulin
// - �� ������ ����������� ��������� � ����������.
//
// Revision 1.128  2005/03/02 16:29:43  narry
// - �����������: ����� �� ������ ��������� ���������
//
// Revision 1.127  2004/12/30 11:46:29  lulin
// - ���������� ����������� � Preview ��������� � ���������� AFW.
//
// Revision 1.126  2004/12/23 08:40:38  lulin
// - ������� �������� ������.
//
// Revision 1.125  2004/12/14 16:47:02  lulin
// - print-preview ������ ��������� �� ���� ��������.
//
// Revision 1.124  2004/09/21 12:21:04  lulin
// - Release ������� �� Cleanup.
//
// Revision 1.123  2004/09/13 14:19:41  lulin
// - ��� ������������� ������ ���������� ��������� � ���������.
// - ��������� �� ����������� �� RX.
//
// Revision 1.122  2004/06/17 15:58:57  law
// - �������� Empty ������������� � ������ _Tl3Base �� ����� _Tl3SomeDataContainer.
//
// Revision 1.121  2004/06/01 16:51:22  law
// - ������ ����������� Tl3VList.MakePersistent - ����������� _Tl3ObjectRefList.
//
// Revision 1.120  2004/04/15 14:38:39  narry
// - new property: _OneStep - ��������� ������� �������� � ���� ������
//
// Revision 1.119  2004/04/14 14:59:14  law
// - rename proc: ev_lPAnsiCharSetPresent -> l3CharSetPresent.
//
// Revision 1.118  2004/04/09 12:17:35  narry
// - new: �������������� �������� ��������, �� �������������� MS Word � png
//
// Revision 1.117  2004/04/05 11:13:29  narry
// - new: ������������� ���������� ������ � ������ (������ � ���������) ��� ��������
//
// Revision 1.116  2004/03/04 13:42:18  narry
// - bug fix: ������� � ��������� ������
// -bug fix: ��������� ���������� ����� ������� ������
//
// Revision 1.115  2004/01/21 16:14:43  narry
// - update
//
// Revision 1.114  2004/01/19 14:44:41  narry
// - bug fix: ������������ ����������� ������ ������� �������
// - update
// - cleanup
//
// Revision 1.113  2004/01/16 10:11:06  narry
// - update:
//
// Revision 1.112  2004/01/08 12:43:36  narry
// - bug fix: �� ������������ ������ ������
//
// Revision 1.111  2003/12/29 14:06:18  narry
// - bug fix: �� ��������������� ��������� �������� ��������� ����������
//
// Revision 1.110  2003/12/29 12:06:17  narry
// - cleanup: �����, ������������� ��������� � ������� ��������� � ��������� �����
// - change: ��� ���������� �������� ������������� ������ ������� � ��������� �� ������� �������
//
// Revision 1.109  2003/12/24 11:06:41  narry
// - bug fix
//
// Revision 1.108  2003/12/23 17:01:16  narry
// - update: ��������� ��������� ������������ ������
// - add: ���������� ������������� ������������ ����� �������
//
// Revision 1.107  2003/12/17 14:44:16  narry
// - bug fix: �� ����������� ��������, ����� ������� ��������� ����� ������
//
// Revision 1.106  2003/12/09 09:44:00  narry
// - bug fix: ������������ ������
//
// Revision 1.105  2003/12/04 16:22:43  narry
// - bug fix: ������������ ������������ ����� Normal
// - bug fix: ���������� � ������� ������������ ���������� ������ � ������
//
// Revision 1.104  2003/11/28 14:11:11  law
// - new unit: evSegmentsListConst.
//
// Revision 1.103  2003/11/06 15:15:05  narry
// - bug fix: ���������� �������� � RTF. ����������� ��� BMP
//
// Revision 1.102  2003/06/30 12:54:14  narry
// - update: ����������� � �������� ������
//
// Revision 1.101.2.1  2003/06/30 12:53:33  narry
// - update: ��������� ��������� � HTML
//
// Revision 1.101  2003/05/15 15:27:05  law
// - new type: Tl3TabStop.
//
// Revision 1.100  2003/05/15 11:45:13  narry
// - add: ��������� ���������
//
// Revision 1.99  2003/05/13 13:38:14  narry
// - change: ������ Bool �� Boolean
//
// Revision 1.98  2003/05/12 09:18:35  narry
// - bug fix: �������������� ������, ������������ ���������
//
// Revision 1.97  2003/04/30 12:42:05  narry
// - add: ��������� rtfTwip
// - change: ������ 1440 �� rtfTwip
//
// Revision 1.96  2003/04/29 13:38:50  narry
// - bug fix: ������ ��� _Handle ����������� ���� �������
//
// Revision 1.95  2003/04/19 12:30:36  law
// - new file: ddDefine.inc.
//
// Revision 1.94  2003/01/17 10:24:09  narry
// - update
//
// Revision 1.93  2003/01/08 11:14:04  narry
// - update
//
// Revision 1.92  2002/12/24 13:01:59  law
// - change: ��������� Int64_Seek c �������� ������.
//
// Revision 1.91.2.1  2002/12/24 11:56:42  law
// - new behavior: ���������� 64-������ Seek ������ 32-�������.
//
// Revision 1.91  2002/12/17 12:42:47  law
// - change: k2_idTableColumn ������������� � k2_idTableCell ��� �������� ����������� ������ ����.
//
// Revision 1.90  2002/10/22 10:40:22  narry
// - update
//
// Revision 1.89  2002/10/18 11:33:33  law
// - bug fix.
//
// Revision 1.88  2002/09/19 13:09:15  narry
// - remove unit: ddHTML.
//
// Revision 1.87  2002/09/09 13:52:19  narry
// - cleanup
//
// Revision 1.86  2002/08/28 08:14:24  narry
// - bug fix
//
// Revision 1.85  2002/08/01 14:46:34  narry
// - bug fix & new behavior: ��������� ���������� � ������. ��������� ��������� Field SYMBOL
//
// Revision 1.84  2002/07/30 15:58:16  narry
// - new behavior: ��������� Strikeout
//
// Revision 1.83  2002/07/15 13:15:07  narry
// - bug fix: ������������ �� ��������� ����� "������������"
//
// Revision 1.82  2002/07/10 11:23:43  narry
// - bug fix: ���������� ������ � ������,  ������������ �� ���������, �� �� � ������ ������������
//
// Revision 1.81  2002/07/09 12:02:17  law
// - rename unit: evUnits -> l3Units.
//
// Revision 1.80  2002/07/03 09:00:57  narry
// - update, cleanup � new behavior
//
// Revision 1.79.2.17  2002/07/03 08:09:29  narry
// - release
//
// Revision 1.79.2.16  2002/07/02 14:30:45  narry
// - alpha release
//
// Revision 1.79.2.15  2002/07/01 06:38:32  narry
// - prerelease
//
// Revision 1.79.2.14  2002/06/28 13:30:32  narry
// - not ready : ��������� ��������� ���������
//
// Revision 1.79.2.13  2002/06/27 13:17:17  narry
// - not ready: ����������� ���������
//
// Revision 1.79.2.12  2002/06/27 09:19:29  narry
// - not ready: ����������� ���������
//
// Revision 1.79.2.11  2002/06/21 12:27:29  narry
// - not ready
//
// Revision 1.79.2.10  2002/06/21 09:28:08  narry
// - not ready
//
// Revision 1.79.2.9  2002/06/20 06:23:52  narry
// - not ready (����� � ���������)
//
// Revision 1.79.2.8  2002/06/17 11:24:31  narry
// - not ready (����� � ���������)
//
// Revision 1.79.2.7  2002/06/14 14:09:23  narry
// - not ready (����� � ���������)
//
// Revision 1.79.2.6  2002/06/14 07:15:34  narry
// - not ready (����������� ����� �������)
//
// Revision 1.79.2.5  2002/06/13 11:30:27  narry
// - not ready (����������� ����� �������)
//
// Revision 1.79.2.4  2002/06/11 15:10:52  narry
// - not ready
//
// Revision 1.79.2.3  2002/06/11 11:02:48  narry
// no message
//
// Revision 1.79.2.2  2002/06/07 13:20:38  narry
// - not ready
//
// Revision 1.79.2.1  2002/06/07 10:56:20  narry
// - update
//
// Revision 1.79  2002/06/05 13:21:02  narry
// - update: ��������� ����� ������� HTML
//
// Revision 1.78  2002/05/30 13:49:43  narry
// - new property: TddTableRow.CellPropByPos
//
// Revision 1.77  2002/05/29 15:12:21  narry
// - bug fix : ������������ ����� Bool � Boolean
//
// Revision 1.76  2002/05/29 14:29:31  narry
// - bug fix, update and new behavior
//
// Revision 1.75  2002/04/23 11:09:30  narry
// - bug fix: ����� � ������ ���������
//
// Revision 1.74  2002/04/23 08:01:33  narry
// - bug fix and update
//
// Revision 1.73  2002/04/16 16:27:19  narry
// - bug fix: ���������� ��������� ������� � ������� ������� �����
//
// Revision 1.72  2002/04/15 10:58:40  narry
// - bug fix: ������������ ��������� ��� ������ RTF
//
// Revision 1.71  2002/04/15 07:11:11  narry
// - update: ����� ������
//
// Revision 1.70  2002/04/08 14:12:42  narry
// - bug fix: �� ����������� ����� ������, ��������� �� ���������
//
// Revision 1.69  2002/04/02 13:44:56  narry
// - bug fix: ������������ �������� ��� ���������� �� � ��������
//
// Revision 1.68  2002/03/14 13:57:00  narry
// - new methods & properties
//
// Revision 1.67  2002/02/01 11:59:29  narry
// - bug fix: ��������� ������ ���������� ���������
//
// Revision 1.66  2001/11/22 13:58:42  narry
// - update : ������ ���������� ����� �������
//
// Revision 1.65  2001/09/12 14:43:34  narry
// - bug fix: ���� ���� � ��������
//
// Revision 1.64  2001/09/03 12:04:01  narry
// - bug fix: ������� ���������� ������ �� ���������
//
// Revision 1.63  2001/08/31 07:05:09  narry
// - new behavior: ������ ������� ����� ������ � ������ Lite
//
// Revision 1.62  2001/08/29 14:40:08  narry
// - bug fix:������� �������� �� ���������
//
// Revision 1.61  2001/08/29 12:52:15  narry
// - bug fix
//
// Revision 1.60  2001/08/29 07:01:05  law
// - split unit: l3Intf -> l3BaseStream, l3BaseDraw, l3InterfacedComponent.
//
// Revision 1.59  2001/08/28 13:29:02  narry
// - update
//
// Revision 1.58  2001/08/21 12:25:16  narry
// - update: ���������� ����� ������� � �������, ������� ���������
//
// Revision 1.57  2001/07/16 10:46:31  narry
// -bug fix: ��� ���������� ������, �� ���������� ���������� �����
//        ��������� ������ �������
//
// Revision 1.56  2001/07/09 07:43:18  narry
// -new behavior: ��������� �������� ������ � ������ Lite
//
// Revision 1.55  2001/07/05 12:32:17  narry
// - bug fix: ��� ���������� ���������� �������� � ������
//     �������������� ������� ��� ����������
//
// Revision 1.54  2001/06/27 13:34:49  narry
// -new behavior: ��������� ��������� �������� �����������
//        ���������� ����������
//
// Revision 1.53  2001/06/04 09:15:11  narry
// - new behavior - ��������� ��� �������������� ���������
//
// Revision 1.52  2001/05/31 11:49:41  narry
// Update - ������� ����� ��� �������
//
// Revision 1.51  2001/05/31 10:41:21  narry
// Update - ������ ������� ����� ������ �������
//
// Revision 1.50  2001/05/28 15:35:12  narry
// Update - ��������� ��� ����������� ���������
//
// Revision 1.49  2001/05/16 10:47:45  narry
// Update - ������ �������� �� � ����� ������ �� ������ ������ � ������ ������������� ���������
//
// Revision 1.48  2001/05/10 14:19:22  narry
// Update - ������� ���������� ������
//
// Revision 1.47  2001/05/07 14:02:36  narry
// Update - ��������� ��������� ��� ������ ������ �� html
//
// Revision 1.46  2001/04/27 09:13:36  narry
// Update - �������� ��������� �������� ParagraphProperty
//
// Revision 1.45  2001/04/25 07:18:01  narry
// Update - ��������� �������� �� ������-������ ������ ������� � ���
//
// Revision 1.44  2001/04/12 12:58:49  narry
// Update - ������-������ ���������� ������ � ���
//
// Revision 1.43  2001/04/11 14:08:22  narry
// bug fix - ��������� ������������� � RTF
//
// Revision 1.42  2001/04/11 12:29:58  narry
// Update - ������������� �������������� ������������ ������ ��� ������ �� RTF
//
// Revision 1.41  2001/04/09 14:03:58  narry
// update - ��������� ��������� ��������� ���������� ������
// ��� ������ RTF-������. ������������ � ���� �������� ���������
// �������������� ������������� ������
//
// Revision 1.40  2001/03/14 16:28:14  narry
// Update HTML_r
//
// Revision 1.39  2001/03/06 14:19:58  narry
// ��� ��������������� ������� ������ ������� ������� � * �� -
//
// Revision 1.38  2001/03/06 12:31:31  narry
// ��������� �������� ��� �������� ����
//
// Revision 1.37  2001/03/06 11:27:51  narry
// ���������� - ����� � ������
// ��������� - ��������� ������
//
// Revision 1.36  2001/03/02 11:52:35  narry
// Update for ddHTML_r
//
// Revision 1.35  2001/01/25 14:45:08  narry
// Add section break parameters
//
// Revision 1.34  2001/01/25 12:08:11  narry
// Fix   - possible lost text
// Add - simple read section break
//
// Revision 1.33  2001/01/25 10:38:17  narry
// Fix - page dimensions for RTF-writer
//
// Revision 1.32  2001/01/25 09:08:06  narry
// Fix - wrong page width, lost character format
// Add - write page break
//
// Revision 1.31  2001/01/16 10:39:23  narry
// Vertical alignment in table cell
//
// Revision 1.30  2000/12/19 15:06:26  law
// - #13#10 -> cc_EOL.
//
// Revision 1.29  2000/12/19 13:49:33  narry
// no message
//
// Revision 1.28  2000/12/18 10:53:55  narry
// Fix Lost text and soft hyph
//
// Revision 1.27  2000/12/15 15:29:53  law
// - ��������� ��������� Log � Id.
//

{$Include ddDefine.inc }

interface

uses
  Windows, Classes,
  l3Interfaces,
  l3InternalInterfaces,
  l3Types,
  l3CBase,
  l3Base, l3Memory, l3Chars,
  evdTypes, l3Units, evConst,
  k2Interfaces,
  k2TagGen,
  {$IFDEF Envision}
  ddPictDetector,
  {$ELSE}
  ImageEnIO,
  {$ENDIF}
  RTFTypes,

  l3ProtoPersistentDataContainer,
  l3ProtoPersistentOwnedDataContainer,
  l3SimpleDataContainer,
  l3ObjectRefList,
  l3SimpleObjectRefList,
  l3CBaseRefList,
  l3ProtoPersistentRefList
  , l3StringList{, RTfListTable};

type
  TddPropertyObject = class(Tl3Base)
  private
    f_IsDefault: Boolean;
  public
    constructor Create(aOwner: TObject); override;
    function JoinWith(P: TObject): Long; virtual;
    function Diff(P: TddPropertyObject): TddPropertyObject; virtual; abstract;
    procedure MergeWith(P: TddPropertyObject); virtual; abstract;
    procedure Reset; virtual; abstract;
    procedure Write2Generator(const Generator: Ik2TagGenerator); virtual; abstract;
    procedure Clear; virtual;
    procedure InheriteFrom(P: TddPropertyObject); virtual; abstract;
    property IsDefault: Boolean read f_IsDefault write f_IsDefault;
  end;

  TddDocumentProperty = class(TddPropertyObject)
  public
    CharSet: TrtfCharacterSet;
    CodePage: Integer;
    DefFont: Integer;
    DefLang: Integer;
    DefTab: Integer;
    fFacingp: Boolean;
    FirstSpec: Boolean;
    fLandscape: Boolean;
    pgnStart: Integer;
    xaLeft: Integer;
    xaPage: Integer;
    xaRight: Integer;
    xGutter: Integer;
    yaBottom: Integer;
    yaPage: Integer;
    yaTop: Integer;
    constructor Create(anOwner: TObject); override;
    procedure Assign(aSource: TPersistent); override;
    procedure Clear; override;
  end;
  
  TddSectionProperty = class(TddDocumentProperty)
  public
    Bin: Byte;
    cCols: Integer;
    ColsSpace: Integer;
    EndHere: Boolean;
    FirstBin: Byte;
    Landscape: Boolean;
    LineBetween: Boolean;
    pgnFormat: TPGN;
    SBK: Tsbk;
    Unlocked: Boolean;
    constructor Create(anOwner: TObject); override;
    procedure Assign(aSource: TPersistent); override;
    procedure Clear; override;
  end;
  
  TddBorderPart = class(Tl3CBase)
  private
    FSpace: Integer;
    FType: TddBorderType;
    f_Color: Byte;
    f_Width: Byte;
    function pm_GetEnable: Boolean;
    procedure pm_SetEnable(Value: Boolean);
  public
    procedure Assign(BP: TPersistent); override;
    procedure Clear; virtual;
    property Color: Byte read f_Color write f_Color;
    property Enable: Boolean read pm_GetEnable write pm_SetEnable;
    property FrameType: TddBorderType read FType write FType;
    property Width: Byte read f_Width write f_Width;
  end;
  
  TddBorderParts = (bpTop, bpLeft, bpBottom, bpRight, bpHorizontal, bpVertical, bpBox);

  TddBorder = class(TddPropertyObject)
  private
    f_BorderOwner: TddBorderOwner;
    f_BorderParts: Array[TddBorderParts] of TddBorderPart;
  protected
    function GetFrameColor(Index: TddBorderParts): LongInt;
    function GetFrames(Index: TddBorderParts): TddBorderPart;
    function GetFrameSpace(Index: TddBorderParts): Integer;
    function GetFrameType(Index: TddBorderParts): TddBorderType;
    function GetFrameWidth(Index: TddBorderParts): LongInt;
    function GetIsFramed: Boolean;
    procedure Cleanup; override;
    procedure SetFrameColor(Index: TddBorderParts; Value: LongInt);
    procedure SetFrames(Index: TddBorderParts; Value: TddBorderPart);
    procedure SetFrameSpace(Index: TddBorderParts; Value: Integer);
    procedure SetFrameType(Index: TddBorderParts; Value: TddBorderType);
    procedure SetFrameWidth(Index: TddBorderParts; Value: LongInt);
    procedure SetisFramed(Value: Boolean);
  public
    constructor Create(AReader: TObject); override;
    procedure Assign(aBorder: TPersistent); override;
    procedure Clear; override;
    procedure MergeWith(P: TddPropertyObject); override;
    procedure InheriteFrom(P: TddPropertyObject); override;
    procedure Write2Generator(const Generator: Ik2TagGenerator); override;
    property BorderOwner: TddBorderOwner read f_BorderOwner write f_BorderOwner;
    property FrameColor[Index: TddBorderParts]: LongInt read GetFrameColor
            write SetFrameColor;
    property Frames[Index: TddBorderParts]: TddBorderPart read GetFrames write
            SetFrames;
    property FrameSpace[Index: TddBorderParts]: Integer read GetFrameSpace
            write SetFrameSpace;
    property FrameType[Index: TddBorderParts]: TddBorderType read GetFrameType
            write SetFrameType;
    property FrameWidth[Index: TddBorderParts]: LongInt read GetFrameWidth
            write SetFrameWidth;
    property IsFramed: Boolean read GetIsFramed write SetIsFramed;
  end;
  
  TddCharProperties = (ddAnime, ddUnderline, ddCaps, ddContour, ddCharPosition,
                       ddBold, ddItalic, ddHidden, ddStrikeout, ddDeleted,
                       ddCharScale, ddSubPos, ddFontNumber, ddFontSize, ddFontCharSet,
                       ddLanguage, ddFColor, ddBColor, ddForeColor,
                       ddBackColor, ddHighlight, ddStyle, ddEvdStyle, ddPrintFontSize
                       );

  TddTab = class(Tl3CBase)
  private
    F_Kind: TTabKind;
    F_TabBar: LongInt;
    F_TabLead: TTabLead;
    F_TabPos: LongInt;
  public
    constructor Create(aOwner: TObject); override;
    procedure Assign(P: TPersistent); override;
    property Kind: TTabKind read F_Kind write F_Kind;
    property TabBar: LongInt read F_TabBar write F_TabBar;
    property TabLead: TTabLead read F_TabLead write F_TabLead;
    property TabPos: LongInt read F_TabPos write F_TabPos;
  end;
  
  TddCellProperty = class(TddPropertyObject)
  private
    f_Border: TddBorder;
    f_BottomPad: LongInt;
    f_CellJust: TddCellJust;
    f_CellSpan: Integer;
    f_Index: Integer;
    f_IsPercent: Boolean;
    f_LeftPad: LongInt;
    f_Merged: Boolean;
    f_MergeFirst: Boolean;
    f_PatternBackColor: LongInt;
    f_PatternBackColorIndex: Integer;
    f_PatternForeColor: LongInt;
    f_PatternForeColorIndex: Integer;
    f_RightPad: LongInt;
    f_RowSpan: Integer;
    f_TopPad: LongInt;
    f_VMerged: Boolean;
    f_VMergeFirst: Boolean;
    f_Width: LongInt;
  protected
    function GetIsBorder: Boolean;
    procedure Cleanup; override;
    procedure SetIsBorder(Value: Boolean);
  public
    constructor Create(aOwner: TObject); override;
    procedure Assign(P: TPersistent); override;
    procedure Clear; override;
    property Border: TddBorder read f_Border;
    property BottomPad: LongInt read f_BottomPad write f_BottomPad;
    property CellSpan: Integer read f_CellSpan write f_CellSpan;
    property Index: Integer read f_Index write f_Index;
    property IsBorder: Boolean read GetIsBorder write SetIsBorder;
    property IsPercent: Boolean read f_IsPercent write f_IsPercent;
    property Just: TddCellJust read f_CellJust write f_CellJust;
    property LeftPad: LongInt read f_LeftPad write f_LeftPad;
    property Merged: Boolean read f_Merged write f_Merged;
    property MergeFirst: Boolean read f_MergeFirst write f_MergeFirst;
    property PatternBackColor: LongInt read f_PatternBackColor write
            f_PatternBackColor;
    property PatternBackColorIndex: Integer read f_PatternBackColorIndex write
            f_PatternBackColorIndex;
    property PatternForeColor: LongInt read f_PatternForeColor write
            f_PatternForeColor;
    property PatternForeColorIndex: Integer read f_PatternForeColorIndex write
            f_PatternForeColorIndex;
    property RightPad: LongInt read f_RightPad write f_RightPad;
    property RowSpan: Integer read f_RowSpan write f_RowSpan;
    property TopPad: LongInt read f_TopPad write f_TopPad;
    property VMerged: Boolean read f_VMerged write f_VMerged;
     {* - ������ ����������� � ����������� �� ���������. }
    property VMergeFirst: Boolean read f_VMergeFirst write f_VMergeFirst;
     {* - ���� ���������������, ����� ����� ���� ���������� ������������ ������������:
          ���� ���������� ��� ���� ������ � ����� ������ � �������, �� �� �������������
          ���� VMerged. ������ ����������� VMergeFirst = False. }
    property Width: LongInt read f_Width write f_Width;
     {* - �� ����� ���� ��� �� ������, � �������� (�� ������� ���� � �������������� �� ������ � �������). }
  end;

  TddSub = class(Tl3CBase)
  private
    f_Attributes: Tl3ObjectRefList;
    f_ID: Long;
    f_IsRealName: Boolean;
    f_Name: Tl3String;
  protected
    procedure Cleanup; override;
  public
    constructor Create(Owner: TObject); override;
    procedure Assign(aSource: TPersistent); override;
    property Attributes: Tl3ObjectRefList read f_Attributes;
    property ID: Long read f_ID write f_ID;
    property IsRealName: Boolean read f_IsRealName write f_IsRealName;
    property Name: Tl3String read f_Name;
  end;
  
  TddDocAtomType = (dd_docTextParagraph, dd_docPicture, dd_docTableCell,
                    dd_docTableRow, dd_docTable, dd_docBreak, dd_docParaList,
                    dd_docField);


  TddHyperlinkTarget = class(Tl3CBase)
  private
    f_DocID: LongInt;
    f_SubID: LongInt;
    f_TypeID : Integer;
  public
    constructor Create(aOwner: TObject); override;
    procedure Assign(aSource: TPersistent); override;
    property DocID: LongInt read f_DocID write f_DocID;
    property SubID: LongInt read f_SubID write f_SubID;
    property TypeID: LongInt read f_TypeID write f_TypeID;
  end;
  
  TddSegmentType = (dd_segText, dd_segHLink, dd_segObject);
  TddSegmentObjectType = (dd_sotFormula, dd_sotPicture);

  TddListType  = (ltOrdered, ltUnordered);
  TddOrderType = (otCapitalLetters, otSmallLetters, otLargeRoman, otSmallRoman, otNumbers);


function ColorToHighlight(Color: Longint): Integer;
function HighlightToColor(No: Integer): Longint;
function k2JustToJust(Just: TevIndentType): TJust;
function JustTok2Just(Just: TJust): TevIndentType;
function ConvertStyleNumber(aNum: Longint): Integer;


const
 propUndefined  = High(Longint);


 DocAtomName : array[TddDocAtomType] of AnsiString =
            ('��������� �����', '��������', '������ �������',
             '������ �������', '�������', '������', '������', '����');


implementation


Uses
  SysUtils, Graphics, Math,
  evDef, l3MinMax, l3UnitsTools,
  k2Tags, l3FontManager, l3Math, l3String,  evdStyles,
  ddRTFKeywords, ddRTFConst,

  evTypes,
  TextPara_Const,
  SegmentsLayer_Const,
  TextSegment_Const,
  Hyperlink_Const,
  Address_Const,
  SubLayer_Const,
  Sub_Const,
  TabStop_Const,
  BitmapPara_const,
  TableRow_Const,
  TableCell_Const,
  Table_Const,
  PageBreak_Const,
  SectionBreak_Const
  , evdFrame_Const, l3Defaults, ImageEnView, Controls, ieview, ddRTFUnits, Forms,
  StrUtils;


{
****************************** TddHyperlinkTarget ******************************
}
constructor TddHyperlinkTarget.Create(aOwner: TObject);
begin
  inherited Create(aOwner);
  f_DocID:= -1;
  f_SubID:= -1; 
end;

procedure TddHyperlinkTarget.Assign(aSource: TPersistent);
begin
  if aSource is TddHyperlinkTarget then
  begin
   DocID:= TddHyperlinkTarget(aSource).DocID;
   SubID:= TddHyperlinkTarget(aSource).SubID;
  end
  else
   inherited;
end;


function Hex2Dec(const St: AnsiString): Byte;
var
 B: Byte;
begin
 if St[1] in ['0'..'9'] then
   B:= Ord(St[1]) - Ord('0')
 else
   B:= Ord(Upcase(St[1])) - Ord('A')+10;
 B:= B*16;
 if St[2] in ['0'..'9'] then
   B:= B+Ord(St[2]) - Ord('0')
 else
   B:= B+Ord(Upcase(St[2])) - Ord('A')+10;
 Hex2Dec:= B;
end;






{
******************************* TddCellProperty ********************************
}
constructor TddCellProperty.Create(aOwner: TObject);
begin
  inherited;
  f_Border:= TddBorder.Create(nil);
  Clear;
end;

procedure TddCellProperty.Assign(P: TPersistent);
begin
  if (P Is TddCellProperty) then
  begin
   f_Index := TddCellProperty(P).Index;
   F_Border.Assign(TddCellProperty(P).Border);
   F_Width:= TddCellProperty(P).Width;
   f_VMerged:= TddCellProperty(P).VMerged;
   f_VMergeFirst:= TddCellProperty(P).VMergeFirst;
   f_Merged:= TddCellProperty(P).Merged;
   f_MergeFirst:= TddCellProperty(P).MergeFirst;
   f_PatternForeColor:= TddCellProperty(P).PatternForeColor;
   f_PatternForeColorIndex:= TddCellProperty(P).PatternForeColorIndex;
   f_PatternBackColor:= TddCellProperty(P).PatternBackColor;
   f_PatternBackColorIndex:= TddCellProperty(P).PatternBackColorIndex;
   f_CellJust:= TddCellProperty(P).Just;
   f_IsPercent:= TddCellProperty(P).IsPercent;
   f_CellSpan := TddCellProperty(P).CellSpan;
   f_RowSpan := TddCellProperty(P).RowSpan;
  end
  else
   inherited Assign(P);
end;

function TddCellProperty.GetIsBorder: Boolean;
begin
  Result:= f_Border.IsFramed;
end;

procedure TddCellProperty.Cleanup;
begin
  l3Free(f_Border);
  inherited
end;

procedure TddCellProperty.Clear;
begin
 f_LeftPad:= 108;
 f_RightPad:= 108;
 f_TopPad:= 0;
 f_BottomPad:= 0;
 f_Width:= 0;
 f_VMerged:= False;
 f_VMergeFirst:= False;
 f_CellJust:= cellTop;
 f_Merged:= False;
 f_MergeFirst:= False;

 f_Border.BorderOwner:= boCell;
 f_Border.IsFramed:= True;
 f_PatternForeColor:= propUndefined;
 f_PatternForeColorIndex:= propUndefined;
 f_PatternBackColor:= propUndefined;
 f_PatternBackColorIndex:= propUndefined;
 f_IsPercent:= False;
 f_CellSpan:= 1;
 f_RowSpan := 1;
end;

procedure TddCellProperty.SetIsBorder(Value: Boolean);
begin
  f_Border.IsFramed:= Value;
end;


{
********************************** TddBorder ***********************************
}
constructor TddBorder.Create(AReader: TObject);
var
  i: TddBorderParts;
begin
 inherited;
 for i:= Low(TddBorderParts) to High(TddBorderParts) do
  f_BorderParts[i] := TddBorderPart.Create(nil);
 IsFramed := False;
end;

procedure TddBorder.Assign(aBorder: TPersistent);
var
 i: TddBorderParts;
begin
 if (aBorder Is TddBorder) then
 begin
  for i:= Low(TddBorderParts) to High(TddBorderParts) do
    f_BorderParts[i].Assign(TddBorder(aBorder).F_BorderParts[i]);
  f_BorderOwner:= TddBorder(aBorder).BorderOwner;
 end // if (aBorder Is TddBorder) then
 else
  inherited Assign(aBorder);
end;

procedure TddBorder.Clear;
var
  i: TddBorderParts;
begin
 inherited Clear;
 for i := Low(TddBorderParts) to High(TddBorderParts) do
   f_BorderParts[i].Clear;
 f_BorderOwner := boPara;
end;

function TddBorder.GetFrameColor(Index: TddBorderParts): LongInt;
begin
 if Frames[Index].Color > 0 then
  Result := Frames[Index].Color
 else
  Result := 0;
end;

function TddBorder.GetFrames(Index: TddBorderParts): TddBorderPart;
begin
  Result:= f_BorderParts[Index];
end;

function TddBorder.GetFrameSpace(Index: TddBorderParts): Integer;
begin
  Result:= Frames[Index].FSpace;
end;

function TddBorder.GetFrameType(Index: TddBorderParts): TddBorderType;
begin
  Result:= Frames[Index].FType
end;

function TddBorder.GetFrameWidth(Index: TddBorderParts): LongInt;
begin
  if Frames[Index].Width > 0 then
    Result:= Frames[Index].Width
  else
    Result:= 0;
end;

function TddBorder.GetisFramed: Boolean;
begin
  Result:= (Frames[bpTop].Enable) or
           (Frames[bpLeft].Enable) or
           (Frames[bpBottom].Enable) or
           (Frames[bpRight].Enable);
end;

procedure TddBorder.Cleanup;
var
  i: TddBorderParts;
begin
 for i:= Low(TddBorderParts) to High(TddBorderParts) do
  l3Free(f_BorderParts[i]);
 inherited;
end;

procedure TddBorder.MergeWith(P: TddPropertyObject);
var
 aBorder: TddBorder absolute P;
 index: TddBorderParts;
begin
 if (P Is TddBorder) then
 begin
  IsDefault := False;
  for index := Low(TddBorderParts) to High(TddBorderParts) do
   if (aBorder.FrameType[Index] <> btNone) and (aBorder.FrameType[index] <> FrameType[index]) then
     Frames[index] := aBorder.Frames[Index];
 end // if (P Is TddBorder) then
 else
  inherited Assign(P);
end;

procedure TddBorder.InheriteFrom(P: TddPropertyObject);
var
 aBorder: TddBorder absolute P;
 index: TddBorderParts;
begin
 if (P Is TddBorder) then
 begin
  IsDefault := False;
  for index := Low(TddBorderParts) to High(TddBorderParts) do
   if (aBorder.FrameType[Index] <> btNone) and (FrameType[index] <> btNone) then
     Frames[index] := aBorder.Frames[Index];
 end
 else
  inherited Assign(P);
end;

procedure TddBorder.SetFrameColor(Index: TddBorderParts; Value: LongInt);
begin
 if Index = bpBox then
 begin
  FrameColor[bpTop] := Value;
  FrameColor[bpLeft] := Value;
  FrameColor[bpRight] := Value;
  FrameColor[bpBottom] := Value;
 end // if Index = bpBox then
 else
 if Frames[Index].Color <> Value then
   Frames[Index].Color := Value;
end;

procedure TddBorder.SetFrames(Index: TddBorderParts; Value: TddBorderPart);
begin
  Frames[Index].Assign(Value);
end;

procedure TddBorder.SetFrameSpace(Index: TddBorderParts; Value: Integer);
begin
  Frames[Index].FSpace:= Value;
end;

procedure TddBorder.SetFrameType(Index: TddBorderParts; Value: TddBorderType);
begin
 if Index = bpBox then
 begin
  FrameType[bpTop] := Value;
  FrameType[bpLeft] := Value;
  FrameType[bpRight] := Value;
  FrameType[bpBottom] := Value;
  Frames[bpTop].Enable := Value <> btNone;
  Frames[bpLeft].Enable := Value <> btNone;
  Frames[bpBottom].Enable := Value <> btNone;
  Frames[bpRight].Enable := Value <> btNone;
 end
 else
 if Frames[Index].FType <> Value then
 begin
  Frames[Index].FType := Value;
  Frames[Index].Enable := Value <> btNone;
 end;
end;

procedure TddBorder.SetFrameWidth(Index: TddBorderParts; Value: LongInt);
begin                                                                                                     
 if Index = bpBox then
 begin
  FrameWidth[bpTop]:= Value;
  FrameWidth[bpLeft]:= Value;
  FrameWidth[bpRight]:= Value;
  FrameWidth[bpBottom]:= Value;
 end
 else
  if Frames[Index].Width <> Value then
   Frames[Index].Width := Value;
 IsDefault := False;
end;

procedure TddBorder.SetisFramed(Value: Boolean);
begin
 if  Value <> IsFramed then
 begin
  Frames[bpTop].Enable:= Value;
  Frames[bpLeft].Enable:= Value;
  Frames[bpBottom].Enable:= Value;
  Frames[bpRight].Enable:= Value;
 end
end;

procedure TddBorder.Write2Generator(const Generator: Ik2TagGenerator);
const
  k2: Array[TddBorderParts] of Longint = (k2_tiFrameUp, k2_tiFrameLeft, k2_tiFrameDown, k2_tiFrameRight, 0, 0, 0);
var
  i: TddBorderParts;
begin
 if IsFramed then
 begin
  Generator.StartTag(k2_tiFrame);  { ����� }
  try
    for i:= bpTop to bpRight do
    begin
     if (FrameType[i] <> btNone) then
     begin
      Generator.StartTag(k2[i]);
      try
       Generator.AddIntegerAtom(k2_tiLineType, Ord(FrameType[i])-1);
       Generator.AddIntegerAtom(k2_tiWidth, FrameWidth[i]);
       Generator.AddIntegerAtom(k2_tiForeColor, FrameColor[i]);
      finally
       Generator.Finish;
      end;
     end;{FrameType[i] <> btNone}
    end;
  finally
   Generator.Finish;
  end;{try..finally}
 end {IsFramed}
end;

{ start class TddBorderPart }

{
******************************** TddBorderPart *********************************
}
procedure TddBorderPart.Assign(BP: TPersistent);
begin
 if (BP Is TddBorderPart) then
 begin
  FType := TddBorderPart(BP).FType;
  f_Color := TddBorderPart(BP).f_Color;
  f_Width := TddBorderPart(BP).f_Width;
  FSpace := TddBorderPart(BP).FSpace;
 end
 else
  inherited Assign(BP);
end;

procedure TddBorderPart.Clear;
begin
 FType := btNone;
 f_Color := 0;
 f_Width := 0;
 FSpace := 20;
 inherited;
end;

function TddBorderPart.pm_GetEnable: Boolean;
begin
 Result := FType <> btNone;
end;

procedure TddBorderPart.pm_SetEnable(Value: Boolean);
begin
 if Value <> Enable then
 begin
  if Value then
  begin
   FType := btSingleThick;
   f_Color := clBlack;
   f_Width := 10;
  end // if Enable
  else
   FType := btNone;  
 end; // if Value <> Enable
end;

{ start class TPropertyObject }

{
****************************** TddPropertyObject *******************************
}
constructor TddPropertyObject.Create(aOwner: TObject);
  
  {override;}
  {-}
  
begin
  inherited Create(aOwner);
  f_IsDefault:= True;
end;

const
  TddColorSet : Array[1..16] of Longint = (
                    clBlack, clBlue, clAqua, clLime, clFuchsia, clRed,
                    clYellow, clWhite, clNavy,clTeal, clGreen, clPurple,
                    clMaroon, clOlive, clGray, clSilver );



function HighlightToColor(No: Integer): Longint;
begin
 try
  Result:= TddColorset[No];
 except
  Result:= 0;
 end;
end;

function ColorToHighlight(Color: Longint): Integer;
var
 i: Integer;
begin
  i:= 1;
  while (i <= 16) do
  begin
    if Color = TddColorSet[i] then
      Break;
    Inc(i);
  end;
  if I > 16 then
    Result:= 1
  else
    Result:= i;
end;

function k2JustToJust(Just: TevIndentType): TJust;
begin
  case Just of
    ev_itRight        : Result:= justR;
    ev_itCenter       : Result:= justC;
    ev_itWidth        : Result:= justF;
    ev_itPreformatted : Result:= justP;
  else
    Result:= justL;
  end; { case Just}
end;

function JustTok2Just(Just: TJust): TevIndentType;
begin
  case Just of
    justL: Result:= ev_itLeft;
    justR: Result:= ev_itRight;
    justC: Result:= ev_itCenter;
    justF: Result:= ev_itWidth;
  else
    Result:= ev_itLeft;
  end; { case Just}
end;


{  TTabKind = (tkLeft, tkRight, tkCentered, tkDecimal, tkNotDefined);
  TTabLead = (tlNone, tlDots, tlHyphens, tlUnderline, tlThickLine, tlEqualSign);
}

{
************************************ TddTab ************************************
}
constructor TddTab.Create(aOwner: TObject);
begin
  inherited;
  F_Kind := tkLeft;   {\tqr\tqc\tqdec}
  F_TabLead := tlNone;{\tldot\tlhyph\tlul\tleq}
  F_TabPos:= 0;   {\tx}
  F_TabBar:= 0;   {\tb}
end;

procedure TddTab.Assign(P: TPersistent);
var
  aTab: TddTab absolute P;
begin
  if (P Is TddTab) then
  begin
    f_Kind:= aTab.Kind;
    f_TabPos:= aTab.TabPos;
    f_TabLead:= aTab.TabLead;
    f_TabBar:= aTab.TabBar;
  end
  else
  inherited;
end;

{ start class TddDocumentProperty }

{
***************************** TddDocumentProperty ******************************
}
constructor TddDocumentProperty.Create(anOwner: TObject);
begin
  inherited Create(anOwner);
  Clear;
end;

procedure TddDocumentProperty.Assign(aSource: TPersistent);
begin
  if (aSource Is TddDocumentProperty) then
  begin
   CharSet:= TddDocumentProperty(aSource).CharSet;
   CodePage:= TddDocumentProperty(aSource).Codepage;
   DefFont:= TddDocumentProperty(aSource).DefFont;
   DefLang:=  TddDocumentProperty(aSource).defLang;
   DefTab:= TddDocumentProperty(aSource).DefTab;
   fFacingp:= TddDocumentProperty(aSource).fFacingp;
   FirstSpec:= TddDocumentProperty(aSource).FirstSpec;
   fLandscape:= TddDocumentProperty(aSource).fLandscape;
   pgnStart:= TddDocumentProperty(aSource).pgnStart;
   xaLeft:= TddDocumentProperty(aSource).xaLeft;
   xaPage:= TddDocumentProperty(aSource).xaPage;
   xaRight:= TddDocumentProperty(aSource).xaRight;
   xGutter:= TddDocumentProperty(aSource).xGutter;
   yaBottom:= TddDocumentProperty(aSource).yaBottom;
   yaPage:=  TddDocumentProperty(aSource).yaPage;
   yaTop:= TddDocumentProperty(aSource).yaTop;
  end else
   inherited Assign(aSource);
end;

procedure TddDocumentProperty.Clear;
begin
  inherited;
  xaPage:= 11906;
  yaPage:= 16838;
  xaLeft:= 1800;
  xaRight:= 1800;
  yaTop:= rtfTwip;
  yaBottom:= rtfTwip;
  xGutter:= 0;
  CodePage:= langRussian;
  CharSet:= rtfAnsi;
  DefTab:= 720;
  DefFont:= 0;
end;

{
****************************** TddSectionProperty ******************************
}
constructor TddSectionProperty.Create(anOwner: TObject);
begin
  inherited Create(anOwner);
  Clear;
end;

procedure TddSectionProperty.Assign(aSource: TPersistent);
begin
  if (aSource Is TddSectionProperty) then
  begin
   Bin:= TddSectionProperty(aSource).Bin;
   cCols:= TddSectionProperty(aSource).cCols;
   ColsSpace:= TddSectionProperty(aSource).ColsSpace;
   EndHere:= TddSectionProperty(aSource).EndHere;
   FirstBin:= TddSectionProperty(aSource).FirstBin;
   Landscape:= TddSectionProperty(aSource).Landscape;
   LineBetween:= TddSectionProperty(aSource).LineBetween;
   pgnFormat:= TddSectionProperty(aSource).pgnFormat;
   SBK:= TddSectionProperty(aSource).SBK;
   Unlocked:= TddSectionProperty(aSource).Unlocked;
  end else
   inherited Assign(aSource);
end;

procedure TddSectionProperty.Clear;
begin
  inherited;
  cCols:= 1;                  { number of column }
  ColsSpace:= 720;    { ������������ ����� ��������� }
  LineBetween:= False;  { ����� ����� ��������� }
  SBK:= sbkPg;                    { section break type  }
  pgnFormat:= pgDec;              { how the page number is formatted      }
  EndHere:= False; { �������� ������ � ����� ������ }
  FirstBin:= 1;   { ���������� ������ ��� ������ �������� }
  Bin     := 1;   { ��� ���� ��������� ������� }
  Unlocked:= True; { ������ ������ ��� ���� }
  Landscape:= False;
end;



function ConvertStyleNumber(aNum: Longint): Integer;
begin
  case aNum of
   0  : Result:= 0;
   -1 : Result:= 0;
   -3 : Result:= 1;
   -4 : Result:= 2;
   -5 : Result:= 3;
   -6 : Result:= 4;
  else
    Result:= Abs(aNum)+16;
  end;
end;

{
************************************ TddSub ************************************
}
constructor TddSub.Create(Owner: TObject);
begin
  inherited;
  f_Name:= Tl3String.Create;
  f_IsRealName:= True;
  f_ID:= 0;
  f_Attributes:= Tl3ObjectRefList.Make;
end;

procedure TddSub.Assign(aSource: TPersistent);
var
  Value: TddSub absolute aSource;
begin
  inherited Assign(aSource);
  if (aSource Is TddSub) then
  begin
   f_Name.Assign(Value.Name);
   f_Attributes.Assign(Value.Attributes);
   f_ID:= Value.ID;
   f_IsRealName:= Value.IsRealName;
  end;{aSource Is TddSub}
end;

procedure TddSub.Cleanup;
begin
  l3Free(f_Name);
  l3Free(f_Attributes);
  inherited;
end;

// start class TddPropertyObject

function TddPropertyObject.JoinWith(P: TObject): Long;
begin
 Result := -1;
end;

procedure TddPropertyObject.Clear;
begin
end;

end.
