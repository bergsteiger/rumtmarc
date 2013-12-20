unit Navigator_Form;

// $Id: Navigator_Form.pas,v 1.23 2013/04/24 09:35:56 lulin Exp $

// $Log: Navigator_Form.pas,v $
// Revision 1.23  2013/04/24 09:35:56  lulin
// - ���������.
//
// Revision 1.22  2013/01/22 15:59:11  kostitsin
// [$424399029]
//
// Revision 1.21  2012/04/05 15:52:54  lulin
// {RequestLink:237994598}
//
// Revision 1.20  2012/04/04 09:03:07  lulin
// {RequestLink:237994598}
//
// Revision 1.19  2012/02/08 13:43:13  kostitsin
// [$332568675]
//
// Revision 1.18  2011/06/28 17:54:55  lulin
// {RequestLink:254944102}.
//
// Revision 1.17  2011/05/13 11:56:15  lulin
// - ������ ������������.
//
// Revision 1.16  2011/01/13 15:53:04  lulin
// {RequestLink:248195582}.
// - �������������� �������������� ��� ������������� ������ ��������.
//
// Revision 1.15  2010/12/22 18:25:46  lulin
// {RequestLink:242845936}.
//
// Revision 1.14  2010/09/08 15:35:35  lulin
// {RequestLink:197496539}.
//
// Revision 1.13  2009/12/09 13:12:28  lulin
// {RequestLink:124453871}.
//
// Revision 1.12  2009/11/30 16:04:53  lulin
// {RequestLink:159352472}.
//
// Revision 1.11  2009/11/18 13:06:17  lulin
// - ���������� ������� ��������� ��������.
//
// Revision 1.10  2009/11/12 14:32:44  lulin
// - ������� ����������� ������ ������ ����������.
//
// Revision 1.9  2009/11/11 18:50:22  lulin
// - ������� ��������� ��������������� ��������.
//
// Revision 1.8  2009/11/10 12:29:30  lulin
// - �������� �������� �������������� ���������� ��������.
//
// Revision 1.7  2009/11/05 14:59:57  lulin
// - ��������� �������� � ����������� ���������� ��������.
//
// Revision 1.6  2009/09/30 17:25:05  lulin
// - ��������������� �������� ��������� ������� �����, ����� � ����� ���� ������.
//
// Revision 1.5  2009/09/30 16:18:55  lulin
// {RequestLink:159360578}. �44.
//
// Revision 1.4  2009/09/30 15:39:10  lulin
// - ������ ����.
//
// Revision 1.3  2009/09/30 15:23:19  lulin
// - ������� �������� ���������� �� ������ �������� �����������.
//
// Revision 1.2  2009/09/30 13:39:32  lulin
// - ������ �����������.
//
// Revision 1.1  2009/09/25 10:16:33  lulin
// - ���������� ���������� �� ������ ������ Common.
//
// Revision 1.178  2009/09/18 12:21:33  lulin
// - ������������� �������, ������ ��������� �� ������.
//
// Revision 1.177  2009/09/15 16:32:43  lulin
// - �������� ������ ������������ ��������� �������� �� ������.
//
// Revision 1.176  2009/09/02 11:49:12  lulin
// {RequestLink:159360578}. �20.
//
// Revision 1.175  2009/08/26 08:15:13  lulin
// - ���������� ����� ��������, ����� ����� ���� ������.
// - bug fix: �� ���������� �����������.
//
// Revision 1.174  2009/02/10 19:03:55  lulin
// - <K>: 133891247. �������� �������� ���������� ������.
//
// Revision 1.173  2009/01/21 19:18:18  lulin
// - <K>: 135602528.
//
// Revision 1.172  2008/12/25 12:20:11  lulin
// - <K>: 121153186.
//
// Revision 1.171  2008/12/16 14:30:37  lulin
// - <K>: 122674167. ��� ��� ������ �������� ���������� InitialUseCaseData � ���������� �����.
//
// Revision 1.170  2008/10/29 16:12:49  lulin
// - <K>: 121166916.
//
// Revision 1.169  2008/10/28 15:05:13  lulin
// - <K>: 121159763.
//
// Revision 1.168  2008/10/24 14:56:35  lulin
// - ������ ����.
//
// Revision 1.167  2008/07/22 10:42:45  oman
// - new: ���������� ������� - ����� ����� �� (�-103940886)
//
// Revision 1.166  2008/07/01 12:47:54  oman
// - new: ��� ������� �� ��������� ����������������� ������ ����������� (�-96474339)
//
// Revision 1.165  2008/01/10 07:23:30  oman
// ������� �� ����� �������
//
// Revision 1.164  2007/12/26 07:57:48  mmorozov
// - new: ������ ������ ���������� ���������� � ���� ���������� + ����������� ���, ���� ��� ��������� (� ������ CQ: OIT5-27823);
//
// Revision 1.163  2007/12/25 11:32:10  mmorozov
// - new: �������� �� ���������� ������ ���������� (CQ: OIT5-27823);
//
// Revision 1.162  2007/12/21 07:12:20  mmorozov
// - new: �������� �� ����������� �� ���������� ������ (CQ: OIT5-27823);
//
// Revision 1.161.4.4  2007/12/26 12:43:17  mmorozov
// - MERGE WITH HEAD;
//
// Revision 1.161.4.3  2007/12/21 09:45:49  mmorozov
// - MERGE WITH HEAD;
//
// Revision 1.161.4.2  2007/11/23 10:41:09  oman
// cleanup
//
// Revision 1.161.4.1  2007/11/22 10:50:08  oman
// ������������ �� ����� �������
//
// Revision 1.162  2007/12/21 07:12:20  mmorozov
// - new: �������� �� ����������� �� ���������� ������ (CQ: OIT5-27823);
//
// Revision 1.161  2007/04/10 12:38:26  mmorozov
// - new: ������������� ����� ��������������� ��������� ���������� (CQ: OIT5-24602);
//
// Revision 1.160  2007/04/02 07:40:40  oman
// - fix: ������ ������� ResetData
//
// Revision 1.159  2007/03/23 09:34:56  oman
// - new: ������ ����������� ����� ����������� ���������� ��
//  �������� ���������� (cq24456)
//
// Revision 1.158  2007/03/16 16:57:11  lulin
// - ����������� �� ��������� ����������� � �������������� �����.
//
// Revision 1.157  2007/03/16 07:48:28  oman
// - new: �������� ����� ����������� ������ (cq24456)
//
// Revision 1.156  2007/02/14 14:24:12  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.155  2007/02/13 14:33:26  lulin
// - cleanup.
//
// Revision 1.154  2007/02/09 12:37:47  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.153  2007/02/08 12:39:41  mmorozov
// - change: �������� � �������� ������ �� ������ � ���������� ������ ���������� (CQ: OIT5-23939);
//
// Revision 1.152  2007/01/23 14:34:12  lulin
// - bug fix: ������� ���� ������� �� ������������� �����.
//
// Revision 1.151  2007/01/17 14:03:03  lulin
// - �������� ��������� ��������������� ��������� � ������ ��������.
//
// Revision 1.150  2007/01/12 13:55:51  oman
// - fix: ���� �������� "��������" � "����������" ��� �������� (cq24116)
//
// Revision 1.149  2006/12/20 13:34:15  lulin
// - ������ �������� ������.
//
// Revision 1.148  2006/12/05 14:15:55  lulin
// - ������� �������� � ���������� ����������.
//
// Revision 1.147  2006/12/05 13:49:56  lulin
// - ������� �������� � ���������� ����������.
//
// Revision 1.146  2006/09/13 09:46:16  oman
// - new beh: ��������� ��������/���������� ��� ����� �������� -
//  ��������� ���������� ��������/�����������(InsExpandedState)
//  /������� (cq22540)
//
// Revision 1.145  2006/04/07 08:25:21  mmorozov
// - ���������� � ������ ����������� ������ � �������� ����������, ������� �� ������������, ������������;
//
// Revision 1.144  2006/04/04 14:25:26  mmorozov
// - new: �������� ��������� � ���������� � �������� ���� (CQ: 20273);
//
// Revision 1.143  2006/03/31 07:42:20  lulin
// - ������� ��� ����������, ���������� � Execte ��������.
//
// Revision 1.142  2006/03/30 15:31:33  lulin
// - ������� ��� ���������� � OnTest.
//
// Revision 1.141  2006/03/30 14:01:45  lulin
// - �������� ������������� ��������� �� ��� - � ����������� � ��� - ��� ����, ����� � ����� ��������� �� ������.
//
// Revision 1.140  2006/03/30 10:36:18  lulin
// - ������ ������ ��������� ��������� �����, ����� ������� ���� ������������ �� �����������.
//
// Revision 1.139  2006/03/16 07:14:31  oman
// - new beh: ������� � OnTest �� OnGetState ��� ��������
//
// Revision 1.138  2006/03/07 10:39:22  mmorozov
// - new: ��������� ������ ���� ������� "� �������� ����������" (cq: 19882);
//
// Revision 1.137  2006/02/16 12:51:58  mmorozov
// - bugfix: ����� ���������� ��� ������ ������ �� ���������� ����������� ������ (CQ: 17586) + ��������� InscContextParams �������� � ���������� �����;
//
// Revision 1.136  2006/02/14 10:39:16  mmorozov
// - bugfix: � ����� � ������� Visible �� Enabled (CQ: 19619);
//
// Revision 1.135  2006/02/10 14:51:26  mmorozov
// - change: vcm_opVisible -> vcm_opEnabled;
//
// Revision 1.134  2005/12/02 15:24:24  oman
// - fix: ��� ����� ������������ �� ����������� ��������� ������������ ������
//
// Revision 1.133  2005/11/21 17:32:01  lulin
// - cleanup.
//
// Revision 1.132  2005/11/14 15:29:01  mmorozov
// - cleanup: �������� ���� ������ - "��������� �� �����������", "�����������", "����� ������";
// - new: ��������� ����������� ������ �������� ������ �� ������� ������;
//
// Revision 1.131  2005/10/13 08:21:11  mmorozov
// - �������� ������;
//
// Revision 1.130  2005/09/30 14:07:38  mmorozov
// - �������� ������������;
//
// Revision 1.129  2005/09/30 07:58:41  mmorozov
// change: ����� ����� ������� �� ������;
//
// Revision 1.128  2005/09/13 13:31:17  mmorozov
// change: ��� �������� ������ ������������ TdeHyperlink;
//
// Revision 1.127  2005/09/06 16:15:36  demon
// - new behavior: ��������� ����������� ����
//
// Revision 1.126  2005/09/06 15:47:26  demon
// - new behavior: ����� �����, ���������� �� ������� ��������
//
// Revision 1.125  2005/08/15 14:02:15  mmorozov
// change: ��������� _TdeListSet.Make;
//
// Revision 1.124  2005/08/12 08:34:52  mmorozov
// - ����������� ������;
// new: �������� ����� �������;
//
// Revision 1.123  2005/06/30 07:48:17  cyberz
// READY FOR TIE-TEMPLATE GENERATION
//
// Revision 1.122  2005/06/02 09:27:38  demon
// - new uses afwControl
//
// Revision 1.121  2005/05/27 14:46:36  lulin
// - ������� ������� �������� � ���������� L3.
//
// Revision 1.120  2005/03/22 11:16:35  demon
// - new behavior: ����� �������� opOpenNewsLineInt, ������� ������ ��������� ��������� ����� (�� checked)
//
// Revision 1.119  2005/03/21 14:05:50  am
// change: ��� �������� ������ �� �����������\���������� ��������� ����������� ���������� �� ����, ��� � ����������
//
// Revision 1.118  2005/03/06 15:22:42  demon
// - new behavior: ���������� ������, ���������� ������������ � ���������� (����)
//
// Revision 1.117  2005/03/05 11:36:31  am
// change: ������� TeeTreeView �� TnscTreeView
//
// Revision 1.116  2005/02/24 15:08:15  dinishev
// new: ������������� lgTypes.pas;
// change: �������� �����;
//
// Revision 1.115  2005/01/21 17:53:50  lulin
// - ���������� ����� lg._OpenQuery ��� ��������.
//
// Revision 1.114  2005/01/21 13:46:04  lulin
// - � ���������������� ��������� ������� ����������� ������� user.
//
// Revision 1.113  2005/01/21 12:27:11  lulin
// - � ���������������� �������� ����������� ������� user.
//
// Revision 1.112  2005/01/08 12:08:02  mmorozov
// new: ������������� ���������� ����������� ���������� � �����������;
//
// Revision 1.111  2004/12/23 11:15:13  lulin
// - rename prop: TvtCustomOutliner.TreeSource -> TreeStruct.
//
// Revision 1.110  2004/12/21 15:43:58  mmorozov
// bugfix: ��������� �������� �� ������������� �������;
//
// Revision 1.109  2004/12/21 11:49:07  mmorozov
// new: ������������� ���������� TnscContextParams ��� ����������� ����������;
//
// Revision 1.108  2004/09/23 11:15:42  demon
// - refactoring: �������� ����� �������� IsSameContextFilter
//
// Revision 1.107  2004/09/22 14:14:05  demon
// - new behavior: nsTreeFilterHandler �� ��������� ���� ��������
//
// Revision 1.106  2004/09/20 15:45:12  demon
// - formating
//
// Revision 1.105  2004/09/19 11:16:42  am
// change: �� ��� �������� ������ ���������� ��� ������ �������
//
// Revision 1.104  2004/09/17 13:22:30  demon
// - fix: ����� ������ �� ���������� ��� �������� ��� ������� ���������
//
// Revision 1.103  2004/09/17 07:32:54  am
// change: ������
//
// Revision 1.102  2004/09/16 12:37:33  demon
// - fix: �� ��������� ������������� ��� ����� ���������
//
// Revision 1.101  2004/09/15 10:38:50  am
// change: ������� � Update'��. ��� ������� �������������� ���������� � ���, ��� ���� ��.
//
// Revision 1.100  2004/09/14 14:35:12  am
// change: ������
//
// Revision 1.99  2004/09/13 11:30:15  am
// change: ���������� �� ������������ ����������� ���������� �������� ����������� ��� ����� ������� � ���� � ������� ���������� ��� ����� ������ ������
//
// Revision 1.98  2004/09/10 13:05:37  demon
// - fix: ������� ���������� ���������.
//
// Revision 1.97  2004/09/08 08:53:47  am
// change: ������ ��� ���������� ������ ��� ���������� TreeSource
//
// Revision 1.96  2004/09/06 14:13:26  am
// change: ������ (����� Lock\Unlock) � ����� � ���, ��� � ���������� �������� ���� ��������������� ������
//
// Revision 1.95  2004/09/06 12:53:52  am
// change: ������� � ���������� �������������� ����
//
// Revision 1.94  2004/09/06 09:30:34  am
// change: ������������ ����������
//
// Revision 1.93  2004/09/04 13:38:41  am
// new: ����������� ����������� ����������
//
// Revision 1.92  2004/09/02 13:38:41  am
// change: ������� ����������� �� ����� ���������
//
// Revision 1.91  2004/09/01 15:21:34  am
// change: ������� �� ����� ���������
//
// Revision 1.90  2004/09/01 14:51:15  demon
// - new behavior: ������ ������������� ������ ��������� FocusMustStore ��� ������ � ���������� ������.
//
// Revision 1.89  2004/08/31 15:38:28  am
// change: ������� ����������� �� ����� ���������
//
// Revision 1.88  2004/08/31 12:02:55  am
// change: ������ ������ �����������
//
// Revision 1.87  2004/08/30 12:40:57  mmorozov
// - ��������� ��������� � ���������� ����;
//
// Revision 1.86  2004/08/24 08:29:33  demon
// - new behavior: ����������� ���������������� ������� ��������� ���������� � ���� �����.
//
// Revision 1.85  2004/08/24 08:00:53  demon
// - new behavior: ��������� ������ ��������� ���������� � ���� ����� (���� ��� ����������).
//
// Revision 1.84  2004/08/19 12:46:07  demon
// - cleanup: ������� �������������� ������ ���� (����������)
//
// Revision 1.83  2004/08/17 06:35:06  demon
// - new behavior: ��������� �� ����� ������ (merge � ������ newIcons)
//
// Revision 1.82.2.1  2004/08/17 06:24:03  demon
// - new icons
//
// Revision 1.82  2004/08/06 14:34:18  demon
// - cleanup: remove warnings and hints
//
// Revision 1.81  2004/08/02 09:52:03  demon
// - fix: �������� ��������� ���� NM_EXPLANATORY_DICTIONARY
//
// Revision 1.80  2004/07/10 13:42:42  mmorozov
// new: ������������� ��������� ���������� �������� �����������;
//
// Revision 1.79  2004/07/02 05:31:08  mmorozov
// fix: warning;
//
// Revision 1.78  2004/07/01 15:56:40  demon
// - new behavior: ������� ������ ������ �������� ResetData(const aTreeSource : Il3SimpleTree)
//
// Revision 1.77  2004/07/01 10:28:33  mmorozov
// new: ������������� ��������������� ����� � ����;
//
// Revision 1.76  2004/07/01 10:22:49  mmorozov
// new: ������������� ������� _GetMainMenuImageIndex;
//
// Revision 1.75  2004/06/01 08:25:50  demon
// - new behavior: �������� �������� ������������ �������� � ����� ������� ��������� � VT
//
// Revision 1.74  2004/05/27 12:58:47  am
// add: ��������� ����� NM_DOCUMENT
//
// Revision 1.73  2004/05/26 16:59:48  law
// - new behavior: TvtCustomOutliner ������ ����� ������ ��� ���������� Il3SimpleTree � Il3Tree, � �� ��� ������ _Tl3Tree.
//
// Revision 1.72  2004/05/22 10:15:21  am
// change: ���������� ��������� mop_List_Open. �������� ��������������� �������� �� �������� � ������ ������ ����������� ������ ��������.
//
// Revision 1.71  2004/04/05 13:54:18  nikitin75
// - ��������� �� IStringOld;
//
// Revision 1.70  2004/04/01 15:40:48  demon
// - new behavior: ����������� �������� ���������� (������ � ������ ������� ��������� ��������� � ���� ������ ������������� �������)
//
// Revision 1.69  2004/04/01 07:14:05  mmorozov
// new: ���������� � ������� ��� ���������� ����������� ����� ��������� TvcmEntityForm (_XSetActiveInParent, _SetInactiveInParent, _IsActiveInParent);
//
// Revision 1.68  2004/03/09 10:46:56  mmorozov
// new: �������� _opSetActive;
//
// Revision 1.67  2004/03/04 16:37:35  law
// - rename unit: VLister -> vtLister.
//
// Revision 1.66  2004/03/04 15:39:47  law
// - rename unit: VOtliner -> vtOutliner.
//
// Revision 1.65  2004/03/03 18:05:10  law
// - rename unit: l3Tree2 -> l3Tree.
//
// Revision 1.64  2004/03/01 08:54:29  demon
// - new: ��������� ������������ ���� ������ ����� ����������.
//
// Revision 1.63  2004/02/27 07:06:55  mmorozov
// - ��������� ������ ������������;
//
// Revision 1.62  2004/01/28 12:27:41  law
// - change: ��������� �� ����� � ���������������.
//
// Revision 1.61  2004/01/28 09:36:54  law
// - change: ������� �������� ���������.
//
// Revision 1.60  2004/01/28 08:23:38  law
// - change: ��� ������������� �������������� ��������� ����� ������ � ��� ������� � ���������, ���������� � MenuManager.
//
// Revision 1.59  2004/01/27 18:08:24  law
// - change: ��������� �� ����� � ����������.
//
// Revision 1.58  2004/01/27 14:30:56  law
// - rename proc: _MessageDlg -> _vcmMessageDlg.
//
// Revision 1.57  2004/01/27 14:11:10  law
// - change: ��������� �� _MessageDlg.
//
// Revision 1.56  2004/01/14 15:16:13  law
// - new behavior: _enNavigator - ������� ��������� �������� ExpandCollapceAll �� "���������".
//
// Revision 1.55  2004/01/05 15:04:40  migel
// - fix: ��� ���������� � ��������� ���� ��������� �������� �����, ���� ������ ������� �� ������ �������� (�� ����������� ��� ��������� � ������, �.�. ��� � ����� ������ �� ��������� � ������ ���� �� �������� �������� ������).
//
// Revision 1.54  2003/12/30 12:38:55  migel
// - change: ��������� �������� �����, ���� ������ ������� �� ������ ���������.
// - fix: ����� ��������� ������ ��������� ����������.
//
// Revision 1.53  2003/12/23 11:52:08  nikitin75
// ActionElementMode = ee_amSingleClick
//
// Revision 1.52  2003/12/11 16:12:09  law
// - ���������, ������� ������������� ������ Delphi.
//
// Revision 1.51  2003/12/05 17:12:03  law
// - cleanup: ������ "������" ����������� ������ � FormInit.
//
// Revision 1.50  2003/12/05 16:01:42  law
// - cleanup: �������� _UserTypes[UserType] �� CurUserType.
//
// Revision 1.49  2003/12/02 11:02:07  law
// - cleanup: ������ ������� �������� ��������� � TvcmUserTypesCollectionItem.
//
// Revision 1.48  2003/11/30 17:03:47  law
// - change: _ModuleOperation ��������� �� ���� � ���������������.
//
// Revision 1.47  2003/11/30 13:10:20  law
// - cleanup: ������ �������� ������ ���������.
//
// Revision 1.46  2003/11/26 17:08:27  law
// - cleanup: ����� �������� Container <> nil.
//
// Revision 1.45  2003/11/25 17:37:06  law
// - cleanup: ����������� (ContainerX As XIvcmEntity)._Operation ������� �� Container._Operation.
//
// Revision 1.44  2003/11/25 17:02:16  law
// - cleanup: ����������� (this As XIvcmEntity)._Operation ������� �� _Operation.
//
// Revision 1.43  2003/11/21 13:02:09  law
// - change: �������� aMode ��������� � ����� � ������ ��������������.
//
// Revision 1.42  2003/11/21 12:11:20  law
// - change: �������� aMode ��������� � ����� � ������ ��������������.
//
// Revision 1.41  2003/11/20 20:39:50  law
// - new behavior: ��������� ���������� ������ ��������������� ��������.
// - new behavior: ����� �������� ��������� �������� ������ ������ �� ��������������.
// - cleanup: �������� � Design-Time ���������� �� GblAdapter (�� ����������).
//
// Revision 1.40  2003/11/19 11:39:15  law
// - new behavior: ������������ ��� �������� � �������� � MenuManager'� ��� ���������� ������������� ��������������. ���� �������������� ���� �� ��������.
//
// Revision 1.39  2003/11/12 07:06:20  kool
// fixes for defines
//
// Revision 1.38  2003/10/23 13:29:12  demon
// - fix: remove 5.� Searches
//
// Revision 1.37  2003/10/23 11:51:01  demon
// - new behavior: ��������� ��������, ��������� � �������� �-�� 5.�.
//
// Revision 1.36  2003/10/10 11:59:42  migel
// - fix: ��������� ������ �� ���������
//
// Revision 1.35  2003/10/09 16:54:40  migel
// - add/change: ��������� ������ �� ���������
//
// Revision 1.34  2003/09/22 07:55:54  demon
// - fix: ������� �� ������������� IeeTreeView.CurrentNode
//
// Revision 1.33  2003/09/18 18:30:12  law
// - bug fix: ��� ������� TeeTreeView ��� IeeTreeView ��������� ��� "�������" ������ (AV - � ��������� � �����������).
//
// Revision 1.32  2003/09/16 15:00:05  demon
// - add: ��������� �������� �������� �������� ������ � Dll
//
// Revision 1.31  2003/09/04 13:03:26  demon
// - cleanup
//
// Revision 1.30  2003/08/21 14:00:26  demon
// - new: ���������� �������� �������� ������ ��������� ��������.
//
// Revision 1.29  2003/08/18 11:14:30  demon
// - new: ������� ���� ������ �������� "������ ��������� ���������"
//
// Revision 1.28  2003/08/14 18:00:25  demon
// - new behavior: ������� ���������� �������� ����� ���������� ��������.
//
// Revision 1.27  2003/08/11 12:48:51  migel
// added handler for new item with `NAV_COMPLECT_INFO` type
//
// Revision 1.26  2003/08/01 13:46:11  demon
// - new: �������� ��������� Query ��� ������ ����������� ���������.
//
// Revision 1.25  2003/07/29 09:54:57  demon
// - bug fix: ��� �������� ������ ������������ ��������� (� �� ������ ����)
//
// Revision 1.24  2003/07/25 15:46:19  demon
// - new: ������� � ��� ����� ����������� ������� ������ � ����������.
//
// Revision 1.23  2003/07/25 11:59:09  demon
// - new behavior: �������� Open ��������� � IBaseCatalog �� INode
//
// Revision 1.22  2003/07/25 11:42:20  demon
// - new: ��������� �������� �������� ����� ���
//
// Revision 1.21  2003/07/23 14:40:43  demon
// - new: �������� ������ �� ������������ �������� �������� �� ��������������� ��� ����� ����
//
// Revision 1.20  2003/07/23 13:24:26  migel
// - add: �������� ���������� ��� �������� � ����� `NAV_LIST`
//
// Revision 1.19  2003/07/22 11:53:21  demon
// - add: �� �������� �������� ��� �������� �������� �������� "������ ��������� �� �������".
//
// Revision 1.18  2003/07/09 15:59:22  demon
// - add: ��������� �������� �� ������������� ��� �������� ������� � �.�. ��� �����.
//
// Revision 1.17  2003/07/01 15:45:30  demon
// - fix: ������� ������ ��������� � ��������������� �������� �� nsTree
//
// Revision 1.16  2003/06/24 19:00:32  demon
// - refactoring: ��������� ���� ���������, ����������� ����
//
// Revision 1.15  2003/06/18 15:10:28  nikitin75
// - visual update;
//
// Revision 1.14  2003/06/10 15:04:36  nikitin75
// - ������ ����������� ImageList'� � runtime: �.�. ������ ��� �� ���������;
//
// Revision 1.13  2003/06/06 14:44:41  nikitin75
// ������� ���� ������/���������� - intermediate update
//
// Revision 1.12  2003/06/06 08:22:01  nikitin75
// ��������� ����� fcSynchroView - "���������� ��������".
//
// Revision 1.11  2003/06/04 06:35:56  demon
// - update: �������� ������������ imageList'��
//
// Revision 1.10  2003/06/03 16:55:24  demon
// - new units: nsNodes, nsTree.
// - bug fix: �� �������� ������ � ����� �������.
//
// Revision 1.9  2003/06/03 11:28:50  nikitin75
// update
//
// Revision 1.8  2003/06/02 13:45:44  nikitin75
// update
//
// Revision 1.7  2003/06/02 06:30:27  nikitin75
// update
//
// Revision 1.6  2003/06/02 05:52:38  nikitin75
// update
//
// Revision 1.5  2003/06/01 13:37:07  nikitin75
// update
//
// Revision 1.4  2003/06/01 08:30:20  nikitin75
// update
//
// Revision 1.3  2003/05/28 11:39:31  nikitin75
// �������� ����������.
//
// Revision 1.2  2003/05/23 14:19:16  demon
// - new behavior: ��������� ���������� � ��������� �����������
// "������/���������� ������ � ��������".
//

{$I nsDefine.inc}

interface

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
  ComCtrls,

  afwControl,
  l3InterfacedComponent,
  l3Tree,
  l3Tree_TLB,
  l3TreeInterfaces,

  afwInputControl,

  eeInterfaces,
  eeTreeView,
  eeTreeViewExport,

  OvcBase,

  vcmBase,
  vcmBaseEntities,
  vcmComponent,
  vcmEntities,
  vcmEntityForm,
  vcmInterfaces,

  vtLister,
  vtOutliner,
  vtOutlinerWithDragDrop,
  vtOutlinerWithQuickSearch,
  vtPanel,

  bsTypes,

  nscTreeView,
  nscContextFilter,

  afwControlPrim, afwBaseControl, afwTextControlPrim,
  afwTextControl,

  bsInterfaces,

  PrimNavigator_Form,
  vcmExternalInterfaces,
  PrimNavigatorOptions_Form
  ;

type
 Ten_Navigator = class(TvcmEntityFormRef,
                       InsTreeDataListener)
  {* ����� ��� ����������� ������ ����������.}
    Entities      : TvcmEntities;
    BackgroundPanel: TvtPanel;
    ContextFilter: TnscContextFilter;
    NavigatorTree: TnscTreeView;
    procedure vcmEntityFormInit;
    procedure NavigatorTreeActionElement(Sender: TObject; Index: Integer);
    function  NavigatorTreeGetItemImage(Sender: TObject; Index: Integer;
                                       var aImages: TCustomImageList): Integer;
    procedure SwitcheropSetActiveExecute(const aParams: IvcmExecuteParams);
    procedure NavigatorTreeNewCharPressed(aChar: AnsiChar);
    procedure NavigatorTreeMakeTreeSource(out theTree: Il3SimpleTree);
    procedure ContextFilterChange(Sender: TObject);
    procedure NavigatorTreeTreeChanged(aSender: TObject; const anOldTree,
      aNewTree: Il3SimpleTree);
    procedure ContextFilterWrongContext(Sender: TObject);
  private
  // InsTreeDataListener
   procedure TreeDataUpdated;
   procedure InsTreeDataListener.Updated = TreeDataUpdated;
    {* - ������ ������ ���� ���������. ������� �� ���������� ������
         ����������. }
  procedure ExecuteCurrentElement; override;
    {-}
  protected
  // methods
    procedure Cleanup;
      override;
      {-}
 end;

 procedure ExecuteNavigatorItem(const aNode     : Il3SimpleNode;
                                const aTree     : TeeTreeView;
                                const aMainForm : IvcmContainer);

implementation

{$R *.DFM}

uses
 Math,

 l3Nodes,
 l3InterfacesMisc,
 l3String,
 l3Types,

 lgTypes,

 vcmUserTypesCollectionItem,
 vcmForm,

 bsConst,

 DataAdapter,

 nsUtils,
 nsOpenUtils,
 nsTypes,
 nsNodes,
 
 nsSettings,
 nsTreeUtils,
 nsTreeStruct,

 moCommon,
 NavigatorRes,

 BaseTypesUnit,
 DynamicTreeUnit,

 StdRes,

 nsNavigatorTreeStruct,
 Common_Rubricator_Controls
 ;

procedure Ten_Navigator.vcmEntityFormInit;
begin
 f_Lock := 0;
 NavigatorTree.Images := nsNavigatorRes.NavigatorItemsImageList;
 NavigatorTree.TreeStruct := TnsNavigatorTreeStruct.Make;
 ContextFilter.Images := dmStdRes.SmallImageList;
end;

procedure Ten_Navigator.NavigatorTreeActionElement(Sender: TObject; Index: Integer);
begin
 if (f_Lock = 0) then
 begin
  Inc(f_Lock);
  try
   ExecuteCurrentElement;
  finally
   Dec(f_Lock);
  end;//try..finally
 end;//f_Lock = 0
end;

function Ten_Navigator.NavigatorTreeGetItemImage(Sender: TObject; Index: Integer;
                                                 var aImages: TCustomImageList): Integer;
var
 l_l3Node : Il3SimpleNode;
 l_Node   : INodeBase;
begin
 Result := -1;
 l_l3Node := NavigatorTree.GetNode(Index);
 try
  if Supports(l_l3Node, INodeBase, l_Node) then
  try
   Result := NavigatorRes.GetMainMenuImageIndex(l_Node,
    TNavigatorMenuItemType(l_Node.GetType));
  finally
   l_Node := nil;
  end;{try..finally}
 finally
 end;{try..finally}
end;//NavigatorTreeGetItemImage

procedure ExecuteNavigatorItem(const aNode     : Il3SimpleNode;
                               const aTree     : TeeTreeView;
                               const aMainForm : IvcmContainer);
var
 l_ItemType : TNavigatorMenuItemType;
 l_Node     : INodeBase;
begin
 if Supports(aNode, INodeBase, l_Node) then
 begin
  l_ItemType := TNavigatorMenuItemType(l_Node.GetType);
  case l_ItemType of
   NM_INPHARM, {http://mdp.garant.ru/pages/viewpage.action?pageId=332568675}
   NM_LAW_NAVIGATOR_FOLDER,
   NM_BUSINESS_INFO_FOLDER,
   NM_SEARCH_FOLDER,
   NM_UPDATE_FOLDER,
   NM_RECENTLY_DOCUMENTS_FOLDER,
   NM_PRIME_FOLDER:
   begin
    if (aTree<> nil) and aNode.HasChild then
     aTree.ExpandNode(aNode, not aTree.TreeStruct.IsExpanded(aNode));
   end;
   else
    nsOpenNavigatorItem(aNode, aMainForm);
  end;//case l_ItemType of
 end;//if Supports(aNode, INodeBase, l_Node) then
end;//ExecuteNavigatorItem

procedure Ten_Navigator.ExecuteCurrentElement;
  {-}
begin
 ExecuteNavigatorItem(NavigatorTree.GetCurrentNode,
                      NavigatorTree,
                      NativeMainForm);
end;

procedure Ten_Navigator.SwitcheropSetActiveExecute(const aParams: IvcmExecuteParams);
begin
 SetActiveInParent;
end;

procedure Ten_Navigator.NavigatorTreeNewCharPressed(aChar : AnsiChar);
begin
 ContextFilter.PressChar(aChar);
end;

procedure Ten_Navigator.NavigatorTreeMakeTreeSource(out theTree: Il3SimpleTree);
begin
 theTree := TnsNavigatorTreeStruct.Make;
end;

procedure Ten_Navigator.ContextFilterChange(Sender: TObject);
var
 l_Tree: Il3FilterableTree;
 l_Filtered: Il3SimpleTree;
 l_Node: Il3SimpleNode;
 l_NewNodeIndex: Integer;
begin
 if Supports(NavigatorTree.TreeStruct, Il3FilterableTree, l_Tree) then
 try
  Inc(f_Lock);
  try
   l_Node := NavigatorTree.GetCurrentNode;
   try
    l_Filtered := l_Tree.MakeFiltered(l_Tree.
                                       CloneFilters.
                                       SetContext(ContextFilter.ActiveContext),
                                      l_Node,
                                      l_NewNodeIndex,
                                      True,
                                      ContextFilter.NeedRefilterTree);
    if Assigned(l_Filtered) and (l_Filtered.CountView > 0) then
    begin
     NavigatorTree.TreeStruct := l_Filtered;
     if l_Node <> nil then
      NavigatorTree.GotoOnNode(l_Node);
    end;
   finally
    l_Node := nil;
   end;
  finally
   Dec(f_Lock);
  end;
 finally
  l_Tree := nil;
 end;
end;

procedure Ten_Navigator.TreeDataUpdated;
begin
 op_Rubricator_Synchronize.Call(Aggregate);
end;

procedure Ten_Navigator.NavigatorTreeTreeChanged(aSender: TObject;
  const anOldTree, aNewTree: Il3SimpleTree);
begin
 if (anOldTree <> nil) then
  anOldTree.Unsubscribe(InsTreeDataListener(Self));
 if (aNewTree <> nil) then
  aNewTree.Subscribe(InsTreeDataListener(Self));
end;

procedure Ten_Navigator.Cleanup;
begin
 if (NavigatorTree.TreeStruct <> nil) then
  NavigatorTree.TreeStruct.Unsubscribe(InsTreeDataListener(Self));
 inherited;
end;

procedure Ten_Navigator.ContextFilterWrongContext(Sender: TObject);
begin
 nsBeepWrongContext;
end;

end.