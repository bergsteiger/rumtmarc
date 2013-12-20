unit QueryCard_Form;

(*-----------------------------------------------------------------------------
 Unit Name: enNewQueryCard
 Author:    ������ ������� & ������ �������
 Purpose:   ����� �������� ��������
 History:
 $Id: QueryCard_Form.pas,v 1.34 2013/08/07 10:24:16 morozov Exp $
 
 $Log: QueryCard_Form.pas,v $
 Revision 1.34  2013/08/07 10:24:16  morozov
 {RequestLink:429695931}

 Revision 1.33  2013/05/31 06:07:28  lulin
 - ��������� ��� XE4.

 Revision 1.32  2013/04/24 09:35:57  lulin
 - ���������.

 Revision 1.31  2012/05/25 12:13:41  lulin
 - �� ������ �� ReadOnly ����.

 Revision 1.30  2012/04/13 18:24:43  lulin
 {RequestLink:237994598}

 Revision 1.29  2012/03/21 11:18:03  lulin
 {RequestLink:349114873}

 Revision 1.28  2011/11/16 17:35:57  lulin
 {RequestLink:232098711}

 Revision 1.27  2011/10/31 15:33:28  lulin
 {RequestLink:294589844}

 Revision 1.26  2011/10/14 16:37:03  lulin
 {RequestLink:265397719}.

 Revision 1.25  2011/08/31 19:32:41  lulin
 {RequestLink:280006084}.

 Revision 1.24  2011/07/20 11:17:09  lulin
 {RequestLink:228688745}.

 Revision 1.23  2011/06/28 19:19:56  lulin
 {RequestLink:254944102}.

 Revision 1.22  2011/06/23 15:31:36  lulin
 {RequestLink:254944102}.

 Revision 1.21  2011/05/19 12:19:08  lulin
 {RequestLink:266409354}.

 Revision 1.20  2011/04/19 16:49:41  lulin
 {RequestLink:264373571}.

 Revision 1.19  2011/03/30 13:46:43  lulin
 {RequestLink:259180243}.

 Revision 1.18  2011/03/18 13:01:54  lulin
 {RequestLink:228691765}.

 Revision 1.17  2011/03/11 18:05:11  lulin
 {RequestLink:228688510}.
 - ��������� �� � ���������� �������������� ���������.

 Revision 1.16  2011/03/05 16:44:58  lulin
 {RequestLink:228688510}.

 Revision 1.15  2011/03/05 14:41:39  lulin
 {RequestLink:228688510}.

 Revision 1.14  2011/02/24 13:57:44  lulin
 {RequestLink:182157315}.

 Revision 1.13  2011/02/14 15:18:25  lulin
 {RequestLink:231670346}.

 Revision 1.12  2010/12/23 14:20:56  lulin
 {RequestLink:248195558}.

 Revision 1.11  2010/12/23 12:53:22  lulin
 {RequestLink:248194836}.

 Revision 1.10  2010/12/22 18:26:05  lulin
 {RequestLink:242845936}.

 Revision 1.9  2010/12/09 13:30:35  lulin
 - ��� ��������� ���������� � � ������������ �������� ����.

 Revision 1.8  2010/11/01 17:20:15  lulin
 {RequestLink:237994238}.
 - ������� ������ �� "������".
 - ������, ����� ���������� ������ �������.

 Revision 1.7  2010/11/01 13:20:52  lulin
 {RequestLink:237994238}.

 Revision 1.6  2010/09/21 12:57:59  oman
 - fix: {RequestLink:234366672}

 Revision 1.5  2010/09/09 11:18:32  lulin
 {RequestLink:197496539}.

 Revision 1.4  2010/09/08 17:45:09  lulin
 {RequestLink:197496539}.

 Revision 1.208  2010/07/02 18:20:10  lulin
 {RequestLink:207389954}.
 - ��������� �� ������ ��.

 Revision 1.207  2010/04/26 17:19:37  lulin
 {RequestLink:159352361}.
 - �������� ��� ������� �����.

 Revision 1.206  2009/12/09 13:11:31  lulin
 {RequestLink:124453871}.

 Revision 1.205  2009/12/07 19:09:44  lulin
 - ������ �������� ������.

 Revision 1.204  2009/11/30 18:32:56  lulin
 - ����� �������� ��������� ������.

 Revision 1.203  2009/11/30 08:57:14  oman
 - fix: {RequestLink:172365361}

 Revision 1.202  2009/11/26 11:44:11  oman
 - new: Search {RequestLink:121157219}

 Revision 1.201  2009/11/18 13:06:09  lulin
 - ���������� ������� ��������� ��������.

 Revision 1.200  2009/11/12 14:32:37  lulin
 - ������� ����������� ������ ������ ����������.

 Revision 1.199  2009/11/11 18:48:07  lulin
 - ������� ��������� ��������������� ��������.

 Revision 1.198  2009/11/10 12:29:23  lulin
 - �������� �������� �������������� ���������� ��������.

 Revision 1.197  2009/11/06 13:06:29  lulin
 - ��������� �� ������ �������� ���������� ����� ���� Data.

 Revision 1.196  2009/11/05 14:59:51  lulin
 - ��������� �������� � ����������� ���������� ��������.

 Revision 1.195  2009/11/05 11:41:44  oman
 - new: {RequestLink:121160631}

 Revision 1.194  2009/11/02 09:25:00  oman
 - new: {RequestLink:136253296}

 Revision 1.193  2009/10/29 14:35:47  lulin
 - ������ ����� �������� �� ������ �� ������� ����������� ����������.

 Revision 1.192  2009/10/26 09:23:55  oman
 - fix: {RequestLink:121160631}

 Revision 1.191  2009/10/16 15:14:41  lulin
 {RequestLink:159360578}. �52.

 Revision 1.190  2009/10/16 13:26:54  oman
 - new: ��������� �� ������ {RequestLink:164596503}

 Revision 1.189  2009/10/13 15:50:18  lulin
 {RequestLink:166855739}.

 Revision 1.188  2009/10/02 16:48:58  lulin
 - ����������� �� �������������� ������ �������� � �����������.

 Revision 1.187  2009/09/24 10:12:50  lulin
 - �������� �������� �������� ��������.

 Revision 1.186  2009/09/22 14:49:23  lulin
 - ��������� ������ ������ �� ������.

 Revision 1.185  2009/09/22 07:32:06  oman
 - fix: ��������� - {RequestLink:96482372}

 Revision 1.184  2009/09/22 07:22:59  oman
 - fix: ��������� - {RequestLink:96482372}

 Revision 1.183  2009/09/11 16:46:20  lulin
 - ������� �������� ��������.
 - ������ ������ �� �����.
 - ���������� �������� ������������� ����.

 Revision 1.182  2009/09/03 18:49:13  lulin
 - ����������������� ������ � ������� ��������.

 Revision 1.181  2009/09/03 13:26:17  lulin
 - ������ ���������� ����� �������������� ���� �� �����.

 Revision 1.180  2009/08/26 08:15:25  lulin
 - ���������� ����� ��������, ����� ����� ���� ������.
 - bug fix: �� ���������� �����������.

 Revision 1.179  2009/08/11 17:03:50  lulin
 - ������������ ��������� ������ � ��������� ��������.

 Revision 1.178  2009/08/10 13:09:33  lulin
 - ��������� � ������ ����� ��������� � ��������� ����.

 Revision 1.177  2009/07/31 17:30:07  lulin
 - ������� �����.

 Revision 1.176  2009/07/23 13:42:29  lulin
 - ��������� ��������� �������� ���� ���� ����.

 Revision 1.175  2009/07/11 09:24:48  lulin
 - ����������� �� ������� ������� ��������� ������.

 Revision 1.174  2009/06/02 13:47:58  lulin
 [$148574526].

 Revision 1.173  2009/06/01 11:16:30  lulin
 [$148572848].

 Revision 1.172  2009/05/29 17:18:17  lulin
 [$142610853].

 Revision 1.171  2009/04/16 05:30:05  oman
 �� ���������� �����������

 Revision 1.170  2009/04/09 14:12:49  lulin
 [$140837386]. �15.

 Revision 1.169  2009/04/08 11:18:47  oman
 - new: � JumpTo ������ �� ��������� ���� � �������� ��������� - [$140287160]

 Revision 1.168  2009/04/02 15:28:15  lulin
 - [$98828322]. ��������� ��-�������� ����������� ������ ��� ����� ����������.

 Revision 1.167  2009/03/05 10:12:03  lulin
 - <K>: 138547857. �� ������� ������� ���� "��������".

 Revision 1.166  2009/03/04 13:32:47  lulin
 - <K>: 137470629. ���������� �������������� ����� � ������ � ������� �� �� ����� �������.

 Revision 1.165  2009/02/10 19:04:03  lulin
 - <K>: 133891247. �������� �������� ���������� ������.

 Revision 1.164  2009/01/27 12:36:22  lulin
 - <K>: 136251752.

 Revision 1.163  2009/01/27 07:57:49  lulin
 - <K>: 135607658.

 Revision 1.162  2009/01/12 15:58:38  lulin
 - <K>: 133138664. � 22.

 Revision 1.161  2009/01/11 10:44:22  lulin
 - <K>: 134709278. �������� �������� � ������� ��������.

 Revision 1.160  2008/12/29 16:41:04  lulin
 - <K>: 134316705.

 Revision 1.159  2008/12/29 10:55:01  oman
 - fix: �� ���������� (�-122675365)

 Revision 1.158  2008/12/29 10:48:40  lulin
 - bug fix: �� ����������.

 Revision 1.157  2008/12/24 19:49:51  lulin
 - <K>: 121153186.

 Revision 1.156  2008/12/23 06:37:12  oman
 - new: � ���� ������ ��������� �� ����� ���� ���� ��� ������� (�-122675365)

 Revision 1.155  2008/12/19 15:43:09  migel
 - fix: F1Prime ��������� � ������ ����� ������ �� ���� (�: 131793204).

 Revision 1.154  2008/12/05 07:35:34  lulin
 - ������ ���� � �������������.

 Revision 1.153  2008/09/30 16:12:46  lulin
 - <K>: 120718188.

 Revision 1.152  2008/09/25 15:43:11  lulin
 - <K>: 118394577.

 Revision 1.151  2008/07/22 12:48:54  mmorozov
 - new: ������ �� ������� ������� ��� ������ (K<96484593>);

 Revision 1.150  2008/06/18 13:27:53  oman
 - fix: �������� ���������� ������� ��������� �������� (cq29204)

 Revision 1.149  2008/06/18 11:20:12  oman
 - fix: �������� ����� ���������� ���������� (cq29204)

 Revision 1.148  2008/06/18 10:43:09  oman
 - new: ��������� ����������� �������� (cq29204)

 Revision 1.147  2008/06/07 17:31:38  lulin
 - ������ ������� ����� �� ������.

 Revision 1.146  2008/05/26 11:46:23  mmorozov
 - format code;

 Revision 1.145  2008/05/16 15:58:12  lulin
 - cleanup.

 Revision 1.144  2008/05/16 15:21:13  lulin
 - ������ �� ������.

 Revision 1.143  2008/05/16 10:57:21  lulin
 - ������������� ���������.

 Revision 1.142  2008/05/08 04:58:23  mmorozov
 - rename: QueryInfo -> SearchInfo;

 Revision 1.141  2008/05/05 12:05:49  mmorozov
 - new: ����� ��������� � ����������� �������� ������ ����� ������ � ������� ������� �������� ��������� "������\����" (CQ: OIT5-9285, 9656).

 Revision 1.140  2008/04/29 07:05:53  mmorozov
 - new: ����������� ������� - "��������� ������� ����������� � ������ �������� ��������� ������";

 Revision 1.139  2008/04/14 13:43:54  lulin
 - <K>: 89096854.

 Revision 1.138  2008/03/12 09:36:03  oman
 - new: ��������� ��� ��� - �������� �����������

 Revision 1.137  2008/03/12 08:28:37  oman
 - new: ��������� ��� ��� - ���� ����

 Revision 1.136  2008/03/12 07:51:30  oman
 - new: ��������� ��� ������ �������������� ��������� (���)

 Revision 1.135  2008/03/06 18:50:25  lulin
 - <K> 86477264.

 Revision 1.134  2008/03/06 11:52:39  lulin
 - <K>: 86476694.

 Revision 1.133  2008/01/10 07:23:08  oman
 ������� �� ����� �������

 Revision 1.130.2.4  2007/12/26 12:43:13  mmorozov
 - MERGE WITH HEAD;

 Revision 1.130.2.3  2007/12/11 09:32:08  mmorozov
 - MERGE WITH HEAD;

 Revision 1.130.2.2  2007/11/23 10:41:26  oman
 cleanup

 Revision 1.130.2.1  2007/11/22 13:20:25  oman
 ������������ �� ����� �������

 Revision 1.131  2007/12/10 12:51:07  mmorozov
 - new: ��������� ������ publisher\subscriber ��� �������������� ��������, ������ �������� (������������ ������������), ��������� ������� ������������ (� ������ CQ: OIT5-27823);

 Revision 1.132  2007/12/25 11:32:04  mmorozov
 - new: �������� �� ���������� ������ ���������� (CQ: OIT5-27823);

 Revision 1.131  2007/12/10 12:51:07  mmorozov
 - new: ��������� ������ publisher\subscriber ��� �������������� ��������, ������ �������� (������������ ������������), ��������� ������� ������������ (� ������ CQ: OIT5-27823);

 Revision 1.130  2007/11/01 13:21:15  oman
 - fix: ����������� ����� ����� ���������� ��� ��������������
 - fix: ��� �������� ����� ������� ����������� (cq27269)

 Revision 1.129  2007/10/05 13:08:28  lulin
 - bug fix: ������ ��� ������� ����� ��� ������ (CQ OIT5-26930).

 Revision 1.128  2007/09/13 10:51:34  lulin
 - bug fix: �� ��������� ������� � ����� ������.

 Revision 1.127  2007/09/10 14:19:59  lulin
 - bug fix: ������ �� ��� ��� ������������ ��� (CQ OIT5-26548).

 Revision 1.126  2007/08/28 10:33:48  oman
 - new: ������ �� ������� ������ � ��� (cq26503)

 Revision 1.125  2007/08/14 14:29:57  lulin
 - ������������ ����������� ������ ������.

 Revision 1.124  2007/08/09 11:26:05  oman
 - fix: ������� ��������� && �� ��������� (cq26313)

 Revision 1.123  2007/07/18 15:07:04  lulin
 - ���������� �����������. ����� ���������, ������ �� ������� �� ��������.

 Revision 1.122  2007/06/20 12:06:10  lulin
 - �������� �������� ������ (<K>-20219395).

 Revision 1.121  2007/06/15 12:44:18  lulin
 - ������������ ����� - ��� ������������� (<K>-19759257).

 Revision 1.120  2007/06/14 07:40:18  lulin
 - ������ � ����� �������� ���� ��������� ���� ��� ��� �������� ������� ������� (<K>-18677854).

 Revision 1.119  2007/06/13 17:18:22  lulin
 - ����� �������� � ����� ���������� (<K>-18677805).

 Revision 1.118  2007/06/13 15:13:57  lulin
 - ����� ������������ � ������������ � ���, ��� �� ������ (<K>-18219651).

 Revision 1.117  2007/06/13 14:00:17  lulin
 - �������� �������� ��������� ���������� (<K>-18219525).

 Revision 1.116  2007/06/13 13:51:04  lulin
 - ����� �������� � ���������� � ���������� ������� (<K>-18219517).

 Revision 1.115  2007/06/08 12:15:18  lulin
 - ��������� �� ������� ��������� � ���� � ��������� ������ (<K>-17335138).

 Revision 1.114  2007/06/05 12:26:05  oman
 - fix: ����� �������� �� �������� ����������� ������� �����
  �������  (cq25518)

 Revision 1.113  2007/06/04 10:43:15  oman
 - fix: ��� �������� ��������� ����������� ������� ���������
  ����� (cq25528)

 Revision 1.112  2007/05/30 14:18:45  lulin
 - � ��������� ������ �������� �������� �������� (<K>-14516583).

 Revision 1.111  2007/05/30 12:41:33  oman
 - fix: �������� ��� ����������� ���� "������� ��������" ����� �� ������ �����

 Revision 1.110  2007/05/23 15:46:39  lulin
 - ��������������� ����� �������� ��������� �������� � ������������ � ���, ��� �� ������ (<K>-13239271).

 Revision 1.109  2007/05/22 11:11:52  lulin
 - ������� ��� ����� ��������.

 Revision 1.108  2007/05/22 10:57:46  oman
 - fix: ���� ���� � ���������� ������� �� �� �������� �������
  �����������, ����� �� ����������������� SHapesPainted

 Revision 1.107  2007/05/17 14:23:15  oman
 - new: ��� ������� �������� ������� ����������� ��������
  ��������� ������� ����������� ���� (cq25300)

 Revision 1.106  2007/05/16 14:36:08  oman
 ������ ������� ��������� �� ������� �����

 Revision 1.105  2007/04/19 06:26:22  oman
 - fix: ��� ������� ������� �� ������� ����������� �� ������
  ������� ������������.

 Revision 1.104  2007/04/16 09:20:34  oman
 - new: ������� EMail ��� �������� ��������� ������/������ �
  ������� (cq24416)

 Revision 1.103  2007/04/13 13:05:34  oman
 - fix: ���������� ����������� ���������

 Revision 1.102  2007/04/13 08:08:07  oman
 - new: ����� �������� - e-mail � ����� ��������� - ��������
  ����������� � �� (cq24926, 24416)

 Revision 1.101  2007/04/05 13:42:51  lulin
 - ����������� �� ������ �������������� �����.

 Revision 1.100  2007/04/05 07:58:27  lulin
 - ����������� �� ������ �������������� ����� ��� ������ � ���������.

 Revision 1.99  2007/03/28 14:51:20  oman
 - new: ����������� �� ContextParams � �� (cq24456)

 Revision 1.98  2007/03/27 11:59:33  oman
 ��������� ��� ��������� �� ����������� ������

 Revision 1.97  2007/03/20 08:52:05  lulin
 - �� ������ ��������� ��� ������������ ���������� ����.

 Revision 1.96  2007/03/16 16:57:16  lulin
 - ����������� �� ��������� ����������� � �������������� �����.

 Revision 1.95  2007/03/14 15:36:48  lulin
 - cleanup.

 Revision 1.94  2007/02/28 14:17:48  lulin
 - ��������� �� ������ � ����������.

 Revision 1.93  2007/02/14 17:49:30  lulin
 - ����������� �� ������������� ����������� �����.

 Revision 1.92  2007/02/14 16:51:00  lulin
 - ����������� �� ������������� ����������� �����.

 Revision 1.91  2007/02/13 14:33:31  lulin
 - cleanup.

 Revision 1.90  2007/02/12 18:55:51  lulin
 - ��������� �� ������ � ����������.

 Revision 1.89  2007/02/12 18:45:01  lulin
 - ��������� �� ������ � ����������.

 Revision 1.88  2007/02/09 16:05:53  mmorozov
 - �� ���������� �����������;

 Revision 1.87  2007/02/07 17:48:54  lulin
 - ����������� �� ����������� ����� ��� ������ �� ��������.

 Revision 1.86  2007/02/05 09:07:26  lulin
 - bug fix: �� ���������� �����������.

 Revision 1.85  2007/02/02 13:23:58  lulin
 - �������� �������������� �����.

 Revision 1.84  2007/02/02 08:39:24  lulin
 - ��������� �� ������ � ����������.

 Revision 1.83  2007/01/26 15:53:10  lulin
 - ������ �������� ���������� ��������.

 Revision 1.82  2007/01/20 15:30:33  lulin
 - ��������� ��������� �������� ��� ���������� � ��� ������������.

 Revision 1.81  2007/01/19 09:47:25  lulin
 - �������� ��������� ���������� ��� �������� �����.

 Revision 1.80  2007/01/17 14:03:08  lulin
 - �������� ��������� ��������������� ��������� � ������ ��������.

 Revision 1.79  2006/12/29 12:15:50  lulin
 - ������ �������� ������.

 Revision 1.78  2006/12/13 14:19:33  oman
 - fix: �������� ��������� PhoneReq �� �������� � DateReq (cq23855)

 Revision 1.77  2006/12/13 09:30:35  mmorozov
 - new: ����������� ��������� ������������� ������ ��� ��� �������� ������� ������������ �����, � ������ ������ ��� CQ: OIT5-13323;

 Revision 1.76  2006/12/10 14:24:09  lulin
 - �� ������ ������ �������� ������ ���, ����� ��������� ��.

 Revision 1.75  2006/12/05 14:16:03  lulin
 - ������� �������� � ���������� ����������.

 Revision 1.74  2006/11/24 16:04:55  lulin
 - ������ �������� ���������.

 Revision 1.73  2006/11/20 12:12:10  oman
 Merge from B_NEMESIS_6_4

 Revision 1.72  2006/11/17 13:13:54  mmorozov
 MERGE WITH B_NEMESIS_6_4 ( bugfix: ��� ������� ������� (����������/��������/���������), � �������� ������ � �����, ��������� �� ��������� ����� ������� ����� (CQ: OIT5-23672));

 Revision 1.71  2006/11/15 08:12:37  oman
 Merge from B_NEMESIS_6_4

 Revision 1.70  2006/11/10 16:00:02  oman
 Merge from B_NEMESIS_6_4

 Revision 1.69  2006/11/03 09:46:20  oman
 Merge with B_NEMESIS_6_4_0

 Revision 1.68.2.3.2.4  2006/11/20 12:09:05  oman
 - fix: ��� ������������ ������������, ���� ���� ����������
  ���� � ��, �� �� ������������ ���� �������� �������� (cq23691)

 Revision 1.68.2.3.2.3  2006/11/17 13:02:58  mmorozov
 - bugfix: ��� ������� ������� (����������/��������/���������), � �������� ������ � �����, ��������� �� ��������� ����� ������� ����� (CQ: OIT5-23672);

 Revision 1.68.2.3.2.2  2006/11/15 08:04:11  oman
 - fix: ������ ������ �� DocumentContainer (cq23630)

 Revision 1.68.2.3.2.1  2006/11/10 10:05:34  oman
 - fix: ��������� �������� "��������" (cq23581)

 Revision 1.68.2.3  2006/10/24 09:46:54  oman
 - fix: � �� ��� �������� �� ������� ���������� �������� ����
  - ������ ������ ���� ��������� _�����_ ����������� (cq23114)

 Revision 1.68.2.2  2006/10/24 09:43:54  oman
 no message

 Revision 1.68.2.1  2006/10/23 05:51:19  lulin
 - ������� �� ������ ��������� � ��������� ���� �� ���������� ��� ����� ���������� �������.
 - �������� �������� ��������.

 Revision 1.68  2006/10/06 10:09:41  lulin
 - ������ ������������� "��������" ��������.

 Revision 1.67  2006/10/04 09:49:51  oman
 - fix: ��� �� �� ��� � ������� �� ��������� �� ������ � Undo (cq22838)

 Revision 1.66  2006/10/04 08:56:00  oman
 - fix: ����� ����� ������� �� (���� ���� ������������� ��������)
   (cq22823)

 Revision 1.65  2006/09/29 08:33:24  lulin
 - ��� ���������� ����� ��������� �������� "���������� �����������".

 Revision 1.64  2006/09/21 10:21:51  oman
 - new beh: ��� �������� �� �� ���� ��������� ���������
  ���/������� - �������� �� ����� ������� (cq22667)

 Revision 1.63  2006/09/19 12:29:15  oman
 - new: ����� ����� ��� ���������������� ������ �� ������������
  (cq22633)

 Revision 1.62  2006/09/18 11:33:40  oman
 -new: ��� �� �� ��������� ��� � ������� ����� �������� �������
  � ��������� � ��������������� �� ��� �������� (cq22612)

 Revision 1.61  2006/09/18 09:08:41  oman
 - fix: ���������� �������� ������������ �����
 - fix: ���������� ����������� �� ����� �����
 cleanup (�������� ��������/���������/��������)

 Revision 1.60  2006/09/14 14:16:27  oman
 - new: ��������� � �� �� (cq22535)

 Revision 1.59  2006/09/11 14:02:16  oman
 - new: ����������� ��������� � ��� (cq21474)
 - fix: ����� ���������� ������ � ������������� � ��.

 Revision 1.58  2006/09/05 10:05:11  oman
 - fix: �� ������������� ������, ��� ���������� � ������������
  Assert (cq22460)

 Revision 1.57  2006/07/31 15:04:22  mmorozov
 - new: ��������� �������� ��������� ���� (CQ: OIT500021555);

 Revision 1.56  2006/07/27 13:39:21  mmorozov
 - new: ������ �������� ������ ����� ������ (CQ: OIT500021557);
 - rename: ���������� �����������, �������� ������, ���������;

 Revision 1.55  2006/07/27 11:20:58  mmorozov
 - new: ������ ������� �������� �������� ������� (CQ: OIT500021553);

 Revision 1.54  2006/07/20 18:28:07  lulin
 - ����� ������ ��������.

 Revision 1.53  2006/07/20 17:35:07  lulin
 - ������ ��������� �� ���������.

 Revision 1.52  2006/06/19 07:19:10  oman
 - fix: AV ��� ������������ �� ������ ����� ��� �������� ����������
  (cq21364)

 Revision 1.51  2006/06/16 10:44:38  oman
 - fix: ����� ������������ ��� ��� �� ������ ������ �����-�� ��������
  Query => AV. �� ������ �. ������� ��� ����� � ��������, ������
  ������  (cq21353)

 Revision 1.50  2006/06/16 09:23:48  oman
 - fix: ������������ ������� ����������� ������������ ��� ������� -
 �� ��� ����... (cq21330)

 Revision 1.49  2006/06/16 07:45:41  oman
 - fix: � �������� ������ ��� ��������� ��������, ������� �����
  ������������ ��� ���������� ������ => ����� AV (cq21336)

 Revision 1.48  2006/06/15 08:35:48  oman
 - fix: ������������ ������� ����������� ������������ ��� ������� (cq21330)

 Revision 1.47  2006/06/08 14:41:49  dinishev
 Bug fix: ����������� ������ ��� ������� ��� ���������� �� ���������� �� ���������� ��� ������������ ����������

 Revision 1.46  2006/06/08 07:38:08  oman
 - fix: ������ ImageList �� PngImgList - ����� ���������� �������� ��������
  ��� W95

 Revision 1.45  2006/05/30 15:21:35  dinishev
 Remove procedure nsMakeImageListWrapper

 Revision 1.44  2006/05/25 08:19:50  oman
 - fix: ��� ��������� (cq21081)

 Revision 1.43  2006/05/25 06:39:47  oman
 - fix: ������ ����������� l3 �� vt. ����� ������� nsMakeImageListWrapper
 ��� ��������� ���������� ���������� Il3ImageList

 Revision 1.42  2006/05/24 15:48:51  dinishev
 Cleanup

 Revision 1.41  2006/05/23 07:29:57  mmorozov
 - change: ������� �� �������� enSystemopWriteBackSettingsExecute � ���������� DoWriteBackSettings ��� ���������� � ��������� ����� ������������� ������������ � ��������� ������� ��������;

 Revision 1.40  2006/05/22 12:11:42  dinishev
 Bug fix: ������������ ��������� ������� ����������� ���� � �������� ����

 Revision 1.39  2006/05/19 13:09:24  dinishev
 Cleanup

 Revision 1.38  2006/05/19 10:11:46  oman
 - fix: ������������ ������ ��� ��������� ����� (cq20984)

 Revision 1.37  2006/05/16 10:28:12  dinishev
 Bug fix: �� ���������������

 Revision 1.36  2006/05/05 10:55:24  dinishev
 _CleanUp

 Revision 1.35  2006/05/03 12:25:34  dinishev
 ����� ���������� ��������� ��������� � ������������� ������� ������������

 Revision 1.34  2006/04/28 12:29:13  dinishev
 ����������� �������� �������� � Help'�

 Revision 1.33  2006/04/21 13:47:22  dinishev
 ����� ������� ��� ����� ��

 Revision 1.32  2006/04/21 12:12:15  dinishev
 Bug fix: ���� ����������� ��������� ������ � ������� ������ �������� � ������ ������

 Revision 1.31  2006/04/19 13:59:34  oman
 - new beh: ������������� StdStr � _StdRes

 Revision 1.30  2006/04/11 14:17:08  dinishev
 Bug fix: �������� ������ ��������� �� ������� � ����� �� � ������� ������ ��������.

 Revision 1.29  2006/04/10 14:38:53  dinishev
 Bug fix: �������� ������ ��������� � ������ ����� � ����� ������ ��������

 Revision 1.28  2006/04/07 13:50:54  dinishev
 ��������� �������� k2_tiCardType - ���� ��

 Revision 1.27  2006/04/07 08:25:24  mmorozov
 - ���������� � ������ ����������� ������ � �������� ����������, ������� �� ������������, ������������;

 Revision 1.26  2006/04/05 15:57:12  dinishev
 no message

 Revision 1.25  2006/04/05 15:47:02  dinishev
 Bug fix: ���� � ������ ������ ���������� ������

 Revision 1.24  2006/04/04 12:28:30  dinishev
 �������� �� ���������� �������� �������

 Revision 1.23  2006/04/03 15:52:55  dinishev
 ����� ��

 Revision 1.22  2006/03/31 07:42:33  lulin
 - ������� ��� ����������, ���������� � Execte ��������.

 Revision 1.21  2006/03/30 15:31:43  lulin
 - ������� ��� ���������� � _OnTest.

 Revision 1.20  2006/03/30 14:01:56  lulin
 - �������� ������������� ��������� �� ��� - � ����������� � ��� - ��� ����, ����� � ����� ��������� �� ������.

 Revision 1.19  2006/03/28 15:08:47  dinishev
 Bug fix: ������ �� ��� �������� �� ������� ��������� ������ �� ����������������� ������

 Revision 1.18  2006/03/22 11:12:24  dinishev
 Bug fix: �� ����������� ���������� ������ �� ������

 Revision 1.17  2006/03/22 07:30:08  oman
 - new beh: ������������� ��� ��������� ��������� � ��� ����� (StdStr, DebugStr � SystemStr)

 Revision 1.16  2006/03/21 15:03:56  oman
 - new beh: ������������� ��� ��������� ��������� � ��� ����� (StdStr, DebugStr � SystemStr)

 Revision 1.15  2006/03/16 15:24:15  dinishev
 Bug fix: ��� ��������� ������ ����� �� ���������� ������ ����

 Revision 1.14  2006/03/15 15:04:11  dinishev
 �������� ������� �� ������ ��������

 Revision 1.13  2006/03/10 13:44:23  dinishev
 ����������� ����� ��

 Revision 1.12  2006/02/10 14:51:18  mmorozov
 - change: vcm_opVisible -> vcm_opEnabled;

 Revision 1.11  2006/02/10 11:16:00  dinishev
 Cleanup

 Revision 1.10  2005/12/28 18:20:13  dinishev
 Bug fix: ����� ���������� ��� �������� �� ������� ��������� ������������ ��

 Revision 1.9  2005/12/14 11:19:17  dinishev
 Cleanup: remove hint

 Revision 1.8  2005/12/12 17:15:54  dinishev
 Bug fix: ����������� �� ��� ������� ����� ���������

 Revision 1.7  2005/12/08 13:23:54  oman
 - new behavior: rename System_BeforeActiveConfigChange => System_WriteBackSettings
 - ������� ����� ������������� ��������

 Revision 1.6  2005/12/06 06:57:34  dinishev
 Cleanup

 Revision 1.5  2005/12/02 22:50:26  lulin
 - �������� �������� ����������� TextSource �������� - ����������� ����� ������ ���������.

 Revision 1.4  2005/11/29 08:40:40  lulin
 - ������ ������ ��.

 Revision 1.3  2005/11/23 10:18:51  lulin
 - ������� ��� ����� �������� �������� � ��������� ������.

 Revision 1.2  2005/11/22 17:01:19  lulin
 - �����-������� ��� ����� ��� ���������� ��������� ������� � ��������� ������.

 Revision 1.1  2005/11/17 05:46:17  dinishev
 _Move to directory 'Search'

 Revision 1.61  2005/11/14 18:37:44  lulin
 - ������ ��� ������ � ����� ������ � ���� �������� ��������� ���������, � �� TextSource - ������ �������� ������ CQ OIT5-17870.

 Revision 1.60  2005/11/10 15:52:49  dinishev
 Bug fix: ����������� ������� �� ������� ������

 Revision 1.59  2005/11/09 18:45:26  dinishev
 ����������� ����������

 Revision 1.58  2005/11/08 15:11:15  mmorozov
 bugfix: ����������� �� ��������������� ��������;

 Revision 1.57  2005/11/08 13:17:38  mmorozov
 - �������������� ����;

 Revision 1.56  2005/11/04 16:49:45  dinishev
 ������� Enter �������� � �������� ���� ������ ��� ������� ������ (� ����������� �� ���������)

 Revision 1.55  2005/10/20 12:59:23  lulin
 - bug fix: ��������� �� AV ��� ������� ����� � ��.

 Revision 1.54  2005/10/18 17:18:55  dinishev
 Bug fix: �������������� �������� � �� � ������������

 Revision 1.53  2005/10/14 13:33:10  dinishev
 Lock/Unlock ��� ������ ��������

 Revision 1.52  2005/10/14 09:14:18  dinishev
 ������� ������ �� View

 Revision 1.51  2005/10/13 17:25:08  dinishev
 ������� �������� ������ �� ��������� � ��������� � � DocumentContainer

 Revision 1.50  2005/10/12 16:43:22  dinishev
 ��������������� ��������� ��� ���������� ��������� ������� ����������

 Revision 1.49  2005/10/12 14:04:05  dinishev
 Bug fix: �������� � ������ ���� "����������/��������" �� ����������� ������������ ������

 Revision 1.48  2005/10/12 05:05:00  lulin
 - ��� �������� ���������� ����� ������ ��� ��������.

 Revision 1.47  2005/10/11 17:07:55  dinishev
 Bug fix: AV ��� ������� ��������� ������������� ������ � F1Prime

 Revision 1.46  2005/10/11 14:49:10  dinishev
 ����� ��������� ��� ����������� ������ � �������� ������ ����� �� ������

 Revision 1.45  2005/10/11 08:40:24  lulin
 - cleanup.

 Revision 1.44  2005/10/11 07:56:07  dinishev
 Bug fix: �� ����� �� ������� ���������� �������� ��� ������ ������������ ���� ��������� AV

 Revision 1.43  2005/10/10 17:09:56  dinishev
 Bug fix: ����������� �������������� ��������� ������ "����������" ��� ����� � ����������.

 Revision 1.42  2005/10/10 11:43:22  lulin
 - cleanup: ���������� ���������� �� ���������� ����������.

 Revision 1.41  2005/10/06 17:48:25  dinishev
 �� ������������ ������� ����� �� ��������� ���� + �� ������ ����������� ���������� ������

 Revision 1.40  2005/10/06 16:16:20  dinishev
 _CleanUp

 Revision 1.39  2005/10/05 17:36:16  dinishev
 ����������� ����

 Revision 1.38  2005/10/03 16:58:23  dinishev
 ����������� ����

 Revision 1.37  2005/09/27 15:05:49  dinishev
 Bug fix: �������� ������ �����������/������� � ���������

 Revision 1.36  2005/09/22 08:32:03  dinishev
 Bug fix: AV ��� �������� �� ������ ���������������� ��������� � ������ �� �����

 Revision 1.35  2005/09/16 15:03:14  dinishev
 ������ ����������� ��������� ����������� + �������������� ������������ �������� + �������� E-mail

 Revision 1.34  2005/09/14 12:23:32  lulin
 - �� ������� "�����".

 Revision 1.33  2005/09/09 16:07:20  lulin
 - ������ ������� ������.

 Revision 1.32  2005/09/09 14:27:48  lulin
 - �������� ������ ������� ����� �� � ������� �����������.

 Revision 1.31  2005/09/07 09:08:29  dinishev
 Remove interface InevInputListner

 Revision 1.30  2005/09/02 14:51:54  dinishev
 �������� � ���������� �� (� ��������� �������) �� �������

 Revision 1.29  2005/09/02 09:44:00  dinishev
 Bug fix: �� ���������������

 Revision 1.28  2005/09/02 09:22:09  dinishev
 ��������/���������� �������� ������� + ���������� ������� �����

 Revision 1.27  2005/09/01 14:48:45  dinishev
 no message
*)

interface

{$Include nsDefine.inc }

uses
  Windows, 
  Messages, 

  SysUtils,                                                              
  Classes, 
  Graphics, 

  Controls, 
  Forms, 
  Dialogs, 
  ImgList,

  OvcBase,   

  l3InternalInterfaces,
  afwControl,
  l3ProgressComponent,
  l3InterfacedComponent,

  afwInterfaces,
  afwNavigation,

  k2Interfaces,

  evEditor,
  evCustomTextSource,
  evTunedEditor,
  evCustomEditor,
  evEditorWindow,
  evInternalInterfaces,
  evQueryCardInt,
  evMultiSelectEditorWindow,
  evEditorWithOperations,
  evEditorWindowTextSource,
  evQueryCardEditor,

  nevBase,
  nevTools,

  eeTextSource,
  eeTextSourceExport,

  vtPngImgList,

  lgTypes,

  vcmBase,
  vcmForm,
  vcmInterfaces,
  vcmEntityForm,
  vcmEntities,
  vcmComponent,
  vcmBaseEntities,
  vcmExternalInterfaces,

  nscTextSource,

  nsQueryInterfaces,
  nsQueryAttribute,
  nsManagers,
  evTextSource, afwControlPrim, afwBaseControl, nevControl,

  evCustomEditorWindowModelPart,

  SearchUnit,
  
  PrimQueryCard_Form, evCustomEditorWindowPrim, evCustomEditorModelPart,

  PrimQueryCardOptions_Form, evCustomEditorWindow
  ;

type
  TenQueryCard = class(TvcmEntityFormRef)
    Entities : TvcmEntities;
    TextSource: TevTextSource;
    Editor: TevQueryCardEditor;
    procedure TextSourceDocumentChanged(aSender: TObject;
      const anOldDocument, aNewDocument: Ik2Tag);
    procedure TextSourceGetControlItemImg(aSender: TObject;
      const aControl: TnevControlInfo; out theImageInfo: TnevControlImageInfo);
    function EditorJumpTo(Sender         : TObject;
                          anEffects : TafwJumpToEffects;
                          const aMoniker : IevMoniker): Boolean;
    procedure vcmEntityFormLoadState(const aState: IvcmBase;
      aStateType: TvcmStateType; var Loaded: Boolean);
    procedure vcmEntityFormSaveState(out aState: IvcmBase;
      aStateType: TvcmStateType; var Saved: Boolean);
    procedure vcmEntityFormChangedDataSource(aSender: TObject; const aOld,
      aNew: IvcmFormDataSource; const aFromHistory: Boolean);
    procedure EditorAfterFirstPaint(Sender: TObject);
  private
    { Private declarations }
    f_QueryCard  : IevQueryCard;
      {-}
    f_Update     : Boolean;
      {-}
    function IsQueryCardSupportFormSets: Boolean;
      {* - ������������ �� ����� ������. }
    function GetQueryType: TlgQueryType;
      {* - � ����������� �� UserType ���������� ��� �������. }
    procedure ReadDocument;
      {-}
    procedure HandleException(anException: EqaException); override;
      {-}
    procedure SaveConsultationCreditnails; override;
      {-}
    procedure LoadConsultationCreditnails; override;
      {-}
    function CalcUserNameSettings: TafwSettingID;
      {-}
    function CalcUserPhoneCodeSettings: TafwSettingID;
      {-}
    function CalcUserPhoneNumberSettings: TafwSettingID;
      {-}
    function CalcEMailSettings: TafwSettingID;
      {-}
  protected
  // protected methods
      procedure MakeSearchManager(const aQuery: IQuery);
        {-}
      procedure DoInit(aFormHistory  : Boolean);
        override;
        {-}
    procedure OnDateQuery(const aValue: IqaDateReqDataHolder);
      {-}
    procedure OnNeedExecQuery(Sender: TObject);
      {-}
    procedure OnModifiedChanged(Sender: TObject);
      {-}
    procedure Cleanup; override;
      {-}
    procedure CleanDependencies; override;
  {$IfDef vcmUseSettings}
  protected
    procedure FinishDataUpdate;
      override;
      {* �������� �� ��������� ���������� }
  protected
  // IafwSettingsReplaceListener
    procedure SettingsReplaceStart;
      override;
      {* - ����� ������� ��������. }
  {$EndIf vcmUseSettings}
  end;

implementation

uses
  Types,
  ActiveX,
  StrUtils,

  afwFacade,

  l3Tree,
  l3Nodes,
  l3Base,
  l3Memory,
  l3InterfacesMisc,
  l3Types,
  l3Interfaces,
  l3String,

  k2Tags,

  vtUtils,

  evdTypes,

  evEvdDataObject,
  evControlContainerEX,
  //evQueryCardModelEX,
  evControlParaConst,
  evQueryDocumentContainer,
  evParaTools,
  evControlParaTools,

  nevInternalInterfaces,
  nevGUIInterfaces,
  nevNavigation,

  DataAdapter,

  nsTypes,
  {$IFDEF Monitorings}
  nsPostingsLine,
  Printers,
  nsPostingsTreeSingle,
  {$ENDIF Monitorings}
  nsQuery,
  nsQueryUtils,
  nsDocumentPreview,
  nsHAFPainter,
  nsbQueryUtils,
  nsTreeStruct,
  nsAttributeTreeCacheNew,
  nsConst,
  nsSettings,
  nsFixedHAFMacroReplacer,

  vcmEntitiesCollectionItem,
  vcmOperationsCollectionItem,

  ConsultingUnit,
  DynamicTreeUnit,
  ExternalOperationUnit,

  StdRes,
  SearchRes,
  DebugStr,
  SearchInterfaces,

  {$If not Defined(Admin) AND not Defined(Monitorings)}
  BaseSearchInterfaces,
  nsContextHistory,
  nsLogEvent,
  LoggingUnit,
  {$IfEnd}

  ReqRow_Const,

  PrimQueryCard_utqcAttributeSearch_UserType,
  PrimQueryCard_utqcPostingOrder_UserType,
  PrimQueryCard_utqcLegislationReview_UserType,
  PrimQueryCard_utqcSendConsultation_UserType,
  PrimQueryCard_utqcInpharmSearch_UserType,

  f1QueryDocumentContainer,

  MainMenuNewRes,

  ControlsBlock_Const
  ;

const
 cOldUserTypes = [utqcAttributeSearch,
                  utqcPostingOrder,
                  utqcLegislationReview,
                  utqcInpharmSearch];

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TnsSendTestRequestToLegalAdviceEvent = class(TnsLogEvent)
 public
 // public methods
   class procedure Log;
 end;//TnsSendTestRequestToLegalAdviceEvent
{$IfEnd} //not Admin AND not Monitorings


procedure TenQueryCard.MakeSearchManager(const aQuery: IQuery);
  {-}
{$If not Defined(Admin) AND not Defined(Monitorings)}
var
 l_ContextHistory: InsContextSearchHistory;
{$IfEnd}
begin
  {$If not Defined(Admin) AND not Defined(Monitorings)}
  if UserType = utqcInpharmSearch then
   l_ContextHistory := nsGetContextHistory(ns_chkInpharm)
  else
   l_ContextHistory := nsGetContextHistory(ns_chkDocument);
  {$IfEnd}
  f_MgrSearch := TqaMgrSearch.Make(aQuery, GetQueryType, nsCStr(CurUserType.Name),
    OnDateQuery, OnNeedExecQuery, OnModifiedChanged
    {$If not Defined(Admin) AND not Defined(Monitorings)}
    , l_ContextHistory
    {$IfEnd}
    );
end;

procedure TenQueryCard.DoInit(aFormHistory  : Boolean);
  {-}
begin
 inherited;
 f_Update := False;
 if not IsQueryCardSupportFormSets then
 begin
  MakeSearchManager(nil);
  {$IFDEF Monitorings}
  TnsPostingsTreeSingle.Instance.MgrSearch := f_MgrSearch;
  {$ENDIF Monitorings}
  if not aFormHistory then
   ReadDocument;
 end;//not IsQueryCardSupportFormSets
end;

{$IfDef vcmUseSettings}
procedure TenQueryCard.SettingsReplaceStart;
  // override;
  {* - ��� ���������� � ��������, ��������� ���������� ����� �������������
       ������������, ��������� ������� ��������. }
begin
 Self.WriteMgrSettings;
end;
{$EndIf vcmUseSettings}

procedure TenQueryCard.Cleanup;
begin
 if Assigned(f_MgrSearch) then
 begin
  { �����������/������������� ����� }
  Self.WriteMgrSettings;
  if l3SystemDown then // <K: 138547857>
   f_MgrSearch.Clear; // <�: 131793204> 
  {$IFDEF Monitorings}
  TnsPostingsTreeSingle.Instance.MgrSearch := nil;
  // http://mdp.garant.ru/pages/viewpage.action?pageId=294589844
  {$ENDIF Monitorings}
  f_MgrSearch := nil;
  f_QueryCard := nil;
 end;//if Assigned(f_MgrSearch) then
 inherited;
end;

{$IfDef vcmUseSettings}
procedure TenQueryCard.FinishDataUpdate;
  //override;
  {* �������� �� ��������� ���������� }
begin
 inherited;
 Editor.TextSource.Lock(Self);
 try
  if Assigned(f_MgrSearch) then
  begin
   f_Update := True;
   try
    f_QueryCard := nil;
    Self.WriteMgrSettings;
    f_MgrSearch.InitUpdate;
    ReadDocument;
   finally
    f_Update := False;
   end;//try..finally
  end;//Assigned(f_MgrSearch)
 finally
  Editor.TextSource.UnLock(Self);
 end;//try..finally
end;
{$EndIf vcmUseSettings}

function TenQueryCard.GetQueryType: TlgQueryType;
begin
 Result := lg_qtNone;
 case UserType of
  utqcAttributeSearch   : Result := lg_qtAttribute;
  utqcPostingOrder      : Result := lg_qtPostingOrder;
  utqcLegislationReview : Result := lg_qtLegislationReview;
  utqcSendConsultation  : Result := lg_qtSendConsultation;
  utqcInpharmSearch     : Result := lg_qtInpharmSearch;
 end;
end;

procedure TenQueryCard.TextSourceDocumentChanged(aSender: TObject;
  const anOldDocument, aNewDocument: Ik2Tag);
var
 l_QueryContainer : InevQueryDocumentContainer;
begin
 if (Editor <> nil) then
 begin
  IevQueryCardEditor(Editor).ClearCardCache;
  if l3IOk(Editor.TextSource.DocumentContainer.
   QueryInterface(InevQueryDocumentContainer, l_QueryContainer)) then
    l_QueryContainer.ReleaseListners;
  if (aNewDocument <> nil) AND aNewDocument.IsValid then
  begin
   f_QueryCard := TevControlContainerEX.Make;
   f_QueryCard.LinkListner(f_MgrSearch As IevAdapterModel);
   f_QueryCard.LinkView(l_QueryContainer);
   if (f_MgrSearch <> nil) then
   begin
    f_MgrSearch.CreateTree(f_QueryCard);
    f_MgrSearch.ReadSettings;
   end;
  end; //(aNewDocument <> nil)...
 end;//Editor <> nil
end;//TextSourceDocumentChanged

procedure TenQueryCard.TextSourceGetControlItemImg(aSender: TObject;
  const aControl: TnevControlInfo; out theImageInfo: TnevControlImageInfo);
var
 l_ControlType : TevControlType;
begin
 if aControl.rControl.InheritsFrom(k2_idControlsBlock) then
  l_ControlType := ev_ctCollapsedPanel
 else
  l_ControlType := TevControlType(aControl.rControl.IntA[k2_tiType]);
 Case l_ControlType of
  ev_ctCalEdit:
  begin
   theImageInfo.rImageList := vtMakeImageListWrapper(nsSearchRes.ImageList16x16);
   theImageInfo.rFirstIndex := 1;
  end;//ev_ctCalEdit
  ev_ctPictureLabel:
  begin
   theImageInfo.rImageList := vtMakeImageListWrapper(nsSearchRes.ImageList);
   if l3Same(aControl.rControl.Owner.Owner.PCharLenA[k2_tiReqID],
             'AT_CHECK_LAW_SUPPORT_AVAILABLE', true) then
    theImageInfo.rFirstIndex := 2
   else
    theImageInfo.rFirstIndex := 0;
  end;//ev_ctPictureLabel
  ev_ctCollapsedPanel:
  begin
   if (dmMainMenuNew <> nil) then
   begin
    theImageInfo.rImageList := vtMakeImageListWrapper(dmMainMenuNew.ilSmallIcons);
    theImageInfo.rFirstIndex := -1;
   end;//dmMainMenuNew <> nil
  end;//ev_ctCollapsedPanel
  else
  begin
   theImageInfo.rImageList := vtMakeImageListWrapper(dmStdRes.SmallImageList);
   theImageInfo.rFirstIndex := -1;
  end;//else
 end;//Case l_ControlType
end;

function TenQueryCard.EditorJumpTo(Sender         : TObject;
                                   anEffects : TafwJumpToEffects;
                                   const aMoniker : IevMoniker): Boolean;
var
 l_HyperLink : IevHyperlink;
 l_Control   : IevEditorControl;
 l_Req       : IevComboReq;
 l_Para      : InevPara;
 l_DescReq: Ik2Tag;
 l_Desc: IevDescriptionReq;
 l_DocID: LongWord;
 l_Modified: Boolean;
 l_QueryToSend: IQuery;
begin
 Result := False;
 if Supports(aMoniker, IevHyperlink, l_HyperLink) then
  try
   if l_HyperLink.Exists then
   begin
    Assert(l_HyperLink.Address{$IfDef XE4}.rTafwAddress{$EndIf}.TypeID = CI_ExternalOperation,'Wrong hyperlink type');
    if l_HyperLink.Para.QT(InevPara, l_Para) then
    try
     l_DocID := l_HyperLink.Address{$IfDef XE4}.rTafwAddress{$EndIf}.DocID;
     if (l_DocID = EOI_OPEN_ATTRIBUTE_CARD) then
     begin
      if l_Para.QT(IevEditorControl, l_Control) then
       try
        if Supports(l_Control.Req, IevComboReq, l_Req) then
         try
          if l_Control.Enabled then
           l_Req.HyperLinkClick;
          Result := True;
         finally
          l_Req := nil;
         end;//try..finally
       finally
        l_Control := nil;
       end;//try..finally
     end//l_DocID = EOI_OPEN_ATTRIBUTE_CARD
     else
      if l_DocID = EOI_SHOW_HELP_TOPIC then
       with f_MgrSearch.QueryCard, Application.HelpSystem do
        case CardType of
         ev_qtConsultations:
          ShowTopicHelp(cHelpConsultingRules, '');
         ev_qtAttributeSearch:
          ShowTopicHelp(cHelpAttributeRules, '');
         ev_qtInpharm:
          ShowTopicHelp(cHelpSearchInpharm, '');
         else
          Assert(False);
        end//case CardType of
     else
      if l_DocID = EOI_SHOW_LC_HELP then
       Application.HelpSystem.ShowTopicHelp('page-man-search-req-fields.htm#law_calendar', '')
      else
       if l_DocID = EOI_CHANGE_COLLAPSED then
       begin
        if evInPara(l_Para,k2_idReqRow,l_DescReq) and l_DescReq.IsValid then
         with l_DescReq.Attr[k2_tiReqID] do
          if IsValid then
          begin
           l_Desc := f_MgrSearch.QueryCard.FindDescriptionReq(AsPCharLen);
           if Assigned(l_Desc) then
            l_Desc.Collapsed := not l_Desc.Collapsed;
           Result := True;
          end;
       end
       else
        if (l_DocID = EOI_CHECK_LEGAL_ADVISE_AVAILABLE) and
           (f_MgrSearch.QueryCard.CardType = ev_qtConsultations) and
           Ask(qr_CheckLegalAdviseAvailable) then
        begin
         if not defDataAdapter.ConsultationManager.CheckConsultingAvailable then
          Say(war_NoSubscription, [defDataAdapter.GetDealerInfo])
         else
         begin
          l_Modified := f_MgrSearch.Modified;
          try
           f_MgrSearch.Save(True);
           f_MgrSearch.Query.Clone(l_QueryToSend);
           try
            SaveContextNew(l_QueryToSend,
                           nsCStr(AT_LAW_SUPPORT_TEXT),
                           vcmCStr(str_CheckLegalAdviseAvailable),
                           True);
            try
             {$If not defined(Admin) AND not defined(Monitorings)}
             TnsSendTestRequestToLegalAdviceEvent.Log;
             {$IfEnd}
             l_QueryToSend.SendQuery;
             Say(inf_ConsultationSuccessCheck);
            except
             on ENoConnection do
              Say(war_NoConnectionOnSend, [defDataAdapter.GetDealerInfo]);
             on ENoSubscription do
              Say(war_NoSubscription, [defDataAdapter.GetDealerInfo]);
            end;//try..except
           finally
            l_QueryToSend := nil
           end;
          finally
           f_MgrSearch.Modified := l_Modified;
          end;
         end;//if not defDataAdapter.ConsultationManager.CheckConsultingAvailable
        end;//if (l_DocID = 7) and (f_MgrSearch.QueryCard.CardType = ev_qtConsultations) and...
    finally
     l_Para := nil;
    end;//try..finally
   end;//l_HyperLink.Exists
  finally
   l_HyperLink := nil;
  end;//try..finally
end;

procedure TenQueryCard.OnDateQuery(const aValue: IqaDateReqDataHolder);
begin
 {$IFDEF Monitorings}
  Assert(false);
 {$ELSE}
  TdmStdRes.DateQuery(Self.As_IvcmEntityForm, aValue);
 {$ENDIF Monitorings}
end;

procedure TenQueryCard.vcmEntityFormLoadState(const aState: IvcmBase;
  aStateType: TvcmStateType; var Loaded: Boolean);
var
 l_History : IqaHistory;
begin
 if (aStateType = vcm_stContent) and not IsQueryCardSupportFormSets then
 begin
  { ������� ������������ }
  if Supports(aState, IqaHistory, l_History) then
  begin
   try
    { ���� ���� ���������� ������, �� ������ �� ������ }
    if not l_History.DataReset then
    begin
     f_MgrSearch.FromHistory := True; //����� �� ������� ������
     f_MgrSearch.Query := l_History.Query;
     f_MgrSearch.FromHistory := False;
     if (f_MgrSearch.QueryCard.CardType = ev_qtConsultations) then
      f_MgrSearch.Modified := l_History.ConsultationSended
     {$IFDEF Monitorings}
     else
      f_MgrSearch.Modified := TnsPostingsTreeSingle.Instance.OldModifed;
     {$ELSE Monitorings}
      ;
     {$ENDIF Monitorings}
    end//if not l_History.DataReset then
    { ��������� ����� ��� ��������� �������� }
    else
     FinishDataUpdate;
   finally
    l_History := nil;
   end;//if Supports(aState, IasHistory, l_History) then
  end//if Supports(aState, IasHistory, l_History) then
  { ������� ����������� ������ ��������� �� "������������� �����" �� ��������� }
  else
   if Assigned(f_MgrSearch) then
    f_MgrSearch.ReadSettings;
 end;
end;

procedure TenQueryCard.vcmEntityFormSaveState(out aState: IvcmBase;
  aStateType: TvcmStateType; var Saved: Boolean);
var
 l_IHistory : IqaHistory;
 l_THistory : TqaHistory;
begin
 // ������� ��� �������� ����������.
 if (f_MgrSearch.QueryCard <> nil) then
  (f_MgrSearch.QueryCard As InevControlListner).HideDroppedControl(True);
 if not IsQueryCardSupportFormSets and (aStateType = vcm_stContent) then
 begin
  { ������� ��������� "������������� �����" �� ��������� }
  Self.WriteMgrSettings;
  l_THistory := TqaHistory.Create{(Self)};
  try
   if Supports(l_THistory, IqaHistory, l_IHistory) then
    try
     if f_MgrSearch.Modified then
      Saved := f_MgrSearch.Save(True)
     else
      Saved := True;
     if Saved then
     begin
      l_IHistory.Query := f_MgrSearch.Query;
      if (f_MgrSearch.QueryCard <> nil) AND
         (f_MgrSearch.QueryCard.CardType = ev_qtConsultations) then
       l_IHistory.ConsultationSended := not f_MgrSearch.Modified;
      aState := l_IHistory as IvcmBase;
     end;
    finally
     l_IHistory := nil;
    end;
  finally
   vcmFree(l_THistory);
  end;
 end;
end;

procedure TenQueryCard.OnNeedExecQuery(Sender: TObject);
begin
 if Assigned(Aggregate) then
  Aggregate.Operation(TdmStdRes.opcode_Result_OkExt);
end;

procedure TenQueryCard.ReadDocument;
begin
 if f_Update then
  TextSource.DocumentContainer := nil; //���� ���������� "�������" DocumentContainer.
 TextSource.DocumentContainer := Tf1QueryDocumentContainer.Make(GetQueryType, f_MgrSearch As IevAdapterModel);
 if not TextSource.Document.TagType.Prop[k2_tiBackColor].ReadOnly then
  TextSource.Document.Attr[k2_tiBackColor] := nil;
 if f_MgrSearch.QueryCard.CardType = ev_qtConsultations then
  LoadConsultationCreditnails;
end;

procedure TenQueryCard.vcmEntityFormChangedDataSource(aSender: TObject;
  const aOld, aNew: IvcmFormDataSource; const aFromHistory: Boolean);
begin
 if (dsQuery <> nil) then
 begin
  Editor.TextSource.Lock(Self);
  try
   f_MgrSearch := nil;
   MakeSearchManager(dsQuery.Query);
   if not aFromHistory then
    ReadDocument
   else
   begin
    if (f_QueryCard <> nil) then
    begin
     f_MgrSearch.CreateTree(f_QueryCard);
     if (f_MgrSearch.QueryCard.CardType = ev_qtConsultations) then
      f_MgrSearch.Modified := not dsQuery.IsQuerySaved;
    end;//f_QueryCard <> nil
   end;//not aFromHistory
  finally
   Editor.TextSource.UnLock(Self);
  end;//try..finally
 end;//dsQuery <> nil
end;//vcmEntityFormChangedDataSource

function TenQueryCard.IsQueryCardSupportFormSets: Boolean;
begin
 Result := not (UserType in cOldUserTypes);
end;//IsQueryCardSupportFormSets

procedure TenQueryCard.OnModifiedChanged(Sender: TObject);
begin
 if (dsQuery <> nil) then
  dsQuery.IsQuerySaved := not f_MgrSearch.Modified;
end;

procedure TenQueryCard.EditorAfterFirstPaint(Sender: TObject);
begin
 {$IfDef vcmUseProfilers}
 ProfilersManager.QueryCard.Finish;
 {$EndIf vcmUseProfilers}
end;

procedure TenQueryCard.HandleException(anException: EqaException);
var
 l_CardType : TevQueryType;
 l_ReqName  : Il3CString;
begin
 l_CardType := f_MgrSearch.QueryCard.CardType;
 if ((l_CardType = ev_qtConsultations) or
  (l_CardType = ev_qtSearchWithLawSupport)) and (anException is EqaRequiredValue) then
 begin
  l_ReqName := anException.ErrorControl.Req.ReqName;
  if (l3Same(l_ReqName, AT_CONSULTATION_TEXT)) or
     (l3Same(l_ReqName, AT_LAW_SUPPORT_TEXT)) then
   Say(inf_QueryTextIsEmpy)
  else
  if (l3Same(l_ReqName, AT_USER_NAME)) or
     (l3Same(l_ReqName, AT_USER_PHONE)) then
   Say(err_UserCredinailsIsEmpy)
  else
   MessageDlg(nsCStr(StringReplace(anException.Message,'&&','&',[rfReplaceAll])), 'TenQueryCard.HandleException', mtError);
 end//l_CardType = ev_qtConsultations..
 else
 if not (anException is EqaSilentAbort) then
  MessageDlg(nsCStr(StringReplace(anException.Message,'&&','&',[rfReplaceAll])), 'TenQueryCard.HandleException', mtError);
end;

procedure TenQueryCard.LoadConsultationCreditnails;
var
 l_Req          : IqaReq;
 l_PhoneReq     : IqaPhoneReq;
 l_FocusControl : IevEditorControlField;
 l_S            : Il3CString;
 l_Pack         : InevOp;
begin
 l_FocusControl := nil;
 l_Pack := Editor.Processor.StartOp(0, True);
 try
  l_Pack.SaveUndo := False;
  with afw.Application.PermanentSettings do
  begin
   l_Req := f_MgrSearch.FindAttr(nsCStr(AT_USER_NAME));
   if (l_Req <> nil) then
   begin
    l_S := LoadString(CalcUserNameSettings);
    l_Req.EditorReq.FirstField.Text := l_S;
    if l3IsNil(l_S) then
     l_FocusControl := l_Req.EditorReq.FirstField;
   end;//l_Req <> nil
   l_Req := f_MgrSearch.FindAttr(nsCStr(AT_USER_PHONE));
   if (l_Req <> nil) and Supports(l_Req, IqaPhoneReq, l_PhoneReq) then
   begin
    l_S := LoadString(CalcUserPhoneCodeSettings);
    l_PhoneReq.Code := l_S;
    if l3IsNil(l_S) and (l_FocusControl = nil) then
     l_FocusControl := l_Req.EditorReq.FirstField;
    l_S := LoadString(CalcUserPhoneNumberSettings);
    l_PhoneReq.Number := l_S;
    if l3IsNil(l_S) and (l_FocusControl = nil) then
     l_FocusControl := (l_Req.EditorReq.FirstField as IevEditorPhoneField).GetOtherField;
   end;//l_Req <> nil
   l_Req := f_MgrSearch.FindAttr(nsCStr(AT_EMAIL));
   if (l_Req <> nil) then
   begin
    l_S := LoadString(CalcEMailSettings);
    l_Req.EditorReq.FirstField.Text := l_S;
    if l3IsNil(l_S) and (l_FocusControl = nil) then
     l_FocusControl := l_Req.EditorReq.FirstField;
   end;//l_Req <> nil
  end;//afw.Application.Settings
 finally
  l_Pack := nil;
 end;//try..finally
 if l_FocusControl = nil then
  l_FocusControl := f_MgrSearch.FindAttr(nsCStr(AT_LAW_SUPPORT_TEXT)).EditorReq.FirstField;
 l_FocusControl.Req.SetFocus(l_FocusControl, True);
end;

procedure TenQueryCard.SaveConsultationCreditnails;
var
 l_Req: IqaReq;
 l_PhoneReq: IqaPhoneReq;
begin
 with afw.Application.PermanentSettings do
 begin
  l_Req := f_MgrSearch.FindAttr(nsCStr(AT_USER_NAME));
  if Assigned(l_Req) then
   SaveString(CalcUserNameSettings, l_Req.GetReqAsString(nil));
  l_Req := f_MgrSearch.FindAttr(nsCStr(AT_USER_PHONE));
  if Assigned(l_Req) and Supports(l_Req, IqaPhoneReq, l_PhoneReq) then
  begin
   SaveString(CalcUserPhoneCodeSettings, l_PhoneReq.Code);
   SaveString(CalcUserPhoneNumberSettings, l_PhoneReq.Number);
  end;//Assigned(l_Req)
  l_Req := f_MgrSearch.FindAttr(nsCStr(AT_EMAIL));
  if Assigned(l_Req) then
   SaveString(CalcEMailSettings, l_Req.GetReqAsString(nil));
 end;//with afw.Application.Settings
end;

function TenQueryCard.CalcUserNameSettings: TafwSettingID;
begin
 Result := pi_ConsultationAttributes+'/'+AT_USER_NAME;
end;

function TenQueryCard.CalcUserPhoneCodeSettings: TafwSettingID;
begin
 Result := pi_ConsultationAttributes+'/'+AT_USER_PHONE+'/Code';
end;

function TenQueryCard.CalcUserPhoneNumberSettings: TafwSettingID;
begin
 Result := pi_ConsultationAttributes+'/'+AT_USER_PHONE+'/Number';
end;

function TenQueryCard.CalcEMailSettings: TafwSettingID;
begin
 Result := pi_ConsultationAttributes+'/'+AT_EMAIL;
end;

{$If not defined(Admin) AND not defined(Monitorings)}
{ TnsSendTestRequestToLegalAdviceEvent }

class procedure TnsSendTestRequestToLegalAdviceEvent.Log;
begin
 GetLogger.AddEvent(LE_SEND_TEST_REQUEST_TO_LEGAL_ADVISE, MakeParamsList);
end;
{$IfEnd} //not Admin AND not Monitorings

procedure TenQueryCard.CleanDependencies;
//http://mdp.garant.ru/pages/viewpage.action?pageId=429695931
begin
 inherited;
 f_MgrSearch := nil;
 f_QueryCard := nil;
end;

end.
