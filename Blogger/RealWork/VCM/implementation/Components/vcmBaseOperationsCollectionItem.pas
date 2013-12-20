unit vcmBaseOperationsCollectionItem;
{* ������� ��������� ��������. }

{ ���������� "vcm"        }
{ �����: ����� �.�. �     }
{ ������: vcmBaseOperationsCollectionItem - }
{ �����: 11.03.2003 12:22 }
{ $Id: vcmBaseOperationsCollectionItem.pas,v 1.188 2013/07/18 12:28:34 morozov Exp $ }

// $Log: vcmBaseOperationsCollectionItem.pas,v $
// Revision 1.188  2013/07/18 12:28:34  morozov
// {RequestLink:273597589}
//
// Revision 1.187  2013/07/01 12:28:52  morozov
// {RequestLink:382416588}
//
// Revision 1.186  2013/04/25 14:22:38  lulin
// - ���������.
//
// Revision 1.185  2013/04/24 09:35:37  lulin
// - ���������.
//
// Revision 1.184  2013/02/14 15:20:04  lulin
// {RequestLink:430737914}
//
// Revision 1.183  2012/11/23 08:23:29  kostitsin
// ���� ������
//
// Revision 1.182  2012/11/22 12:47:46  kostitsin
// [$407738353]
//
// Revision 1.181  2012/08/07 14:37:42  lulin
// {RequestLink:358352265}
//
// Revision 1.180  2012/07/17 11:12:09  lulin
// {RequestLink:378541134}
//
// Revision 1.179  2012/04/13 18:22:34  lulin
// {RequestLink:237994598}
//
// Revision 1.178  2012/04/09 08:38:58  lulin
// {RequestLink:237994598}
// - ������ � VGScene.
//
// Revision 1.177  2012/03/22 06:40:09  lulin
// - ������ ��� �� ������.
//
// Revision 1.176  2011/12/08 16:30:03  lulin
// {RequestLink:273590436}
// - ������ ����.
//
// Revision 1.175  2011/06/20 13:46:02  lulin
// {RequestLink:269081712}.
//
// Revision 1.174  2011/01/24 16:11:50  lulin
// {RequestLink:236719144}.
//
// Revision 1.173  2010/09/15 18:15:01  lulin
// {RequestLink:235047275}.
//
// Revision 1.172  2010/09/13 10:37:10  lulin
// {RequestLink:197496539}.
//
// Revision 1.171  2010/09/10 16:24:33  lulin
// {RequestLink:197496539}.
//
// Revision 1.170  2010/09/10 16:12:44  lulin
// {RequestLink:197496539}.
//
// Revision 1.169  2010/08/31 18:25:46  lulin
// {RequestLink:224134305}.
//
// Revision 1.168  2010/07/15 11:40:33  lulin
// {RequestLink:207389954}.
//
// Revision 1.167  2010/07/12 12:57:39  lulin
// {RequestLink:207389954}.
// - ��������� �� ������ ����� "��������".
//
// Revision 1.166  2010/07/06 15:28:58  lulin
// {RequestLink:197496539}.
// - ������� ����� �������� �������. ��������� �� ������ � StdRes.
//
// Revision 1.165  2010/04/30 15:15:44  lulin
// {RequestLink:207389954}.
// - ������ ������������.
//
// Revision 1.164  2010/03/16 15:47:49  lulin
// {RequestLink:196968958}.
// - bug fix: ���������� ������ � ��.
//
// Revision 1.163  2010/03/16 14:50:54  lulin
// {RequestLink:196968958}.
// [$197496457].
// [$197496566].
//
// Revision 1.162  2010/01/15 14:34:57  lulin
// {RequestLink:178324372}.
//
// Revision 1.161  2009/11/18 13:06:00  lulin
// - ���������� ������� ��������� ��������.
//
// Revision 1.160  2009/11/12 18:07:34  lulin
// - ������� �������� ������������ ��������.
//
// Revision 1.159  2009/11/12 14:32:02  lulin
// - ������� ����������� ������ ������ ����������.
//
// Revision 1.158  2009/11/06 13:06:19  lulin
// - ��������� �� ������ �������� ���������� ����� ���� Data.
//
// Revision 1.157  2009/10/23 12:46:05  lulin
// {RequestLink:167353056}. ������ � ������ ������ ��������.
//
// Revision 1.156  2009/09/30 15:23:00  lulin
// - ������� �������� ���������� �� ������ �������� �����������.
//
// Revision 1.155  2009/09/28 17:12:48  lulin
// {RequestLink:159360578}. �31.
//
// Revision 1.154  2009/09/17 09:47:24  lulin
// - �������� ������ ��������� � run-time, � �� � ������.
//
// Revision 1.153  2009/08/28 17:15:47  lulin
// - �������� ���������� � �������� ���������� ��������.
//
// Revision 1.152  2009/08/20 17:19:04  lulin
// {RequestLink:159360595}.
//
// Revision 1.151  2009/08/11 14:24:03  lulin
// {RequestLink:129240934}. �16.
//
// Revision 1.150  2009/08/06 13:27:16  lulin
// {RequestLink:129240934}. �26.
//
// Revision 1.149  2009/02/20 18:50:23  lulin
// - <K>: 136941122. ������� �������� ���������� ��� ������� ��������� ��������.
//
// Revision 1.148  2009/02/20 17:57:39  lulin
// - <K>: 136941122. ������ ����.
//
// Revision 1.147  2009/02/20 17:29:20  lulin
// - ������ ������������.
//
// Revision 1.146  2009/02/20 15:19:00  lulin
// - <K>: 136941122.
//
// Revision 1.145  2009/02/20 13:44:19  lulin
// - <K>: 136941122.
//
// Revision 1.144  2009/02/12 17:09:15  lulin
// - <K>: 135604584. ������� ������ � ����������� �����������.
//
// Revision 1.143  2009/02/04 15:33:55  lulin
// - ���������� ������ ������������ �������. http://mdp.garant.ru/pages/viewpage.action?pageId=136260278&focusedCommentId=136260289#comment-136260289
//
// Revision 1.142  2009/02/04 09:53:46  lulin
// - ������������ �������� ������� <K>: 136259417.
//
// Revision 1.141  2009/02/03 15:44:42  lulin
// - <K>: 135136020. ��������� ��� �������� �� ������.
//
// Revision 1.140  2008/03/24 08:48:43  lulin
// - <K>: 87591840.
//
// Revision 1.139  2007/08/08 13:26:06  lulin
// - ���� ���������� ������ ���� (<K>-34505100).
//
// Revision 1.138  2007/08/08 10:06:49  lulin
// - ������������� ������������ �������� ��������� ���� ���.
//
// Revision 1.137  2007/08/08 08:17:22  lulin
// - ��-������� ������������ ����������� �� ����� - ����� �� ���� �������� � ������������� �� ���������.
//
// Revision 1.136  2007/08/07 18:51:41  lulin
// - ���� ��� ��������� �������� �� ������� ����������� ��������, �� �������� ����� �� ��� �����, ������� ���� ������� ��������.
//
// Revision 1.135  2007/07/10 12:40:10  lulin
// - ������ ���� � ����� � ������ ��� ��������, �� ����������� �������� ����� � Parent-���� (CQ-25867, <K>-29392957).
//
// Revision 1.134  2007/04/26 13:29:43  oman
// - new: �������� ����� �������� � DesignTime - ����������
//  �������� <_Operation>.IsDefault (cq24612)
//
// Revision 1.133  2007/04/26 11:43:11  oman
// - fix: �������� � ������ ���� ������ �������� �� ����� ��������
//  vcm_otLabel, � ������ vcm_ofDefault (cq24612)
//
// Revision 1.132  2007/04/04 10:24:19  oman
// - new: ����� ��� �������� vcm_otLabel - ����� ������� ������������
//  ������ � ���� � �� �������� �� ������. � ���� ������
//  ������������ ��� Default (������) (cq24612)
//
// Revision 1.131  2007/02/13 13:28:24  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.130  2007/02/13 12:09:00  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.129  2007/02/07 12:58:11  oman
// - fix: ��������� vcm_InternalOperations ������������� �
//  vcm_HiddenOperations � �� ���� �������� ����������
//  vcm_InternalOperations - ����� �� ���������� Hidden ��������
//  (cq24357)
//
// Revision 1.128  2007/01/26 11:53:02  oman
// - fix: �������� ��� ����������� ������������ �� ���� ������
//  ������������ (cq24210)
//
// Revision 1.127  2007/01/23 13:31:36  lulin
// - ����� ����� ��������� ����������.
//
// Revision 1.126  2007/01/20 20:28:50  lulin
// - ������� � ���������� �������� ����������.
//
// Revision 1.125  2007/01/20 17:35:45  lulin
// - ��������� �������� �������� ������ �� ������� ��������� ���������������.
//
// Revision 1.124  2007/01/20 15:31:09  lulin
// - ��������� ��������� �������� ��� ���������� � ��� ������������.
//
// Revision 1.123  2007/01/18 13:13:44  lulin
// - �������� � ������� ��������� ��� ����� � ��� ����������.
//
// Revision 1.122  2007/01/18 12:09:20  lulin
// - �������� � ������� ��������� ��� ����� � ��� ����������.
//
// Revision 1.121  2007/01/18 09:06:51  lulin
// - � ����� ���������� ������ �������� �����.
//
// Revision 1.120  2007/01/17 18:47:33  lulin
// - ������ ������ ���������� ��� ������������ ��������.
//
// Revision 1.119  2007/01/17 17:53:40  lulin
// - ������ ������ ���������� ��� ������������ ��������.
//
// Revision 1.118  2007/01/17 14:02:44  lulin
// - �������� ��������� ��������������� ��������� � ������ ��������.
//
// Revision 1.117  2007/01/17 12:27:30  lulin
// - ����������� �� ���������������� ��������� - ����������� ��������� ��������.
//
// Revision 1.116  2007/01/16 14:27:30  lulin
// - ����������� �� ���������������� ��������� - ��������� ��������.
//
// Revision 1.115  2007/01/16 14:13:11  lulin
// - ����������� �� ���������������� ��������� - ��������� ��������.
//
// Revision 1.114  2007/01/16 13:47:31  lulin
// - ����������� �� ���������������� ��������� - ������� �������.
//
// Revision 1.113  2007/01/16 12:06:38  lulin
// - ����������� �� ���������������� ��������� - ������ ��������.
//
// Revision 1.112  2007/01/15 17:17:07  lulin
// - cleanup.
//
// Revision 1.111  2007/01/11 11:15:06  lulin
// - ������ "������" ����.
//
// Revision 1.110  2007/01/05 18:17:33  lulin
// - ���������� ������� ���� ��� ���������� �������.
//
// Revision 1.109  2007/01/05 12:05:39  lulin
// - ������ ������� ���������������� ���������� � ����������.
//
// Revision 1.108  2006/12/28 14:42:05  lulin
// - bug fix: �������� Shortcut ��������, ���� �� �� ��� ��������� � �������� ���������.
//
// Revision 1.107  2006/11/14 12:02:20  oman
// Merge from B_NEMESIS_6_4
//
// Revision 1.106  2006/11/03 11:00:32  lulin
// - ��������� � ������ 6.4.
//
// Revision 1.105.2.1.2.1  2006/11/14 12:00:35  oman
// - fix: ���������� �������� (cq23620, 23621)
//
// Revision 1.105.2.1  2006/10/31 13:36:17  mmorozov
// - bugfix: ��� Exclude �������� ��������� OnTest (CQ: OIT5-23330);
//
// Revision 1.105  2006/09/07 10:41:57  oman
// - fix: ���� � �������� �������������� ��������� ��� �� ������
//  OnTest, �� ��� ����������� � ������ �� �����������.
//
// Revision 1.104  2006/06/15 12:22:15  oman
// - fix: ��� ����������� ��������� �������� OnTest � OnExecute ��
//  �������� ��������� �� ���������� �� ����� ������������ (cq21328)
//
// Revision 1.103  2006/06/07 12:53:02  oman
// - fix: ��� �������������� �������� �������� DesignTime �������� -
//  ������ ������� (cq21257)
//
// Revision 1.102  2006/06/06 10:55:56  oman
// - fix: �������� � ������������ ��������� ��� ������������ ������������ (cq17830)
//
// Revision 1.101  2006/05/18 10:50:35  mmorozov
// - new behavour: �������� �� ��������� ��� �������� ����������� ����������� "���������� � ����������� ����" ;
//
// Revision 1.100  2006/04/19 14:53:12  mmorozov
// - bugfix: ���������� ExludeUserTypes �� �������� ���������� ��� ���������� ��������;
//
// Revision 1.99  2006/03/31 07:41:46  lulin
// - ������� ��� ����������, ���������� � Execte ��������.
//
// Revision 1.98  2006/03/30 15:31:16  lulin
// - ������� ��� ���������� � OnTest.
//
// Revision 1.97  2006/03/30 10:36:26  lulin
// - ������ ������ ��������� ��������� �����, ����� ������� ���� ������������ �� �����������.
//
// Revision 1.96  2006/03/15 15:38:30  oman
// - new beh: vcm_DefaultOperationState ��������� � ����� ���������� �����
//
// Revision 1.95  2006/03/10 08:01:55  mmorozov
// - new behaviour: ��������������� ������� � �������� ��������� ���������� � ������ RTTI;
//
// Revision 1.94  2006/03/09 15:30:51  lulin
// - new behavior: ���� � �������� �������� �������, ������� �� �� ������������, �� ��������� ��� ��������.
//
// Revision 1.93  2006/03/09 15:29:11  mmorozov
// - bugfix: ��� ������������ �������� � dfm �� �������� ����������� �������;
//
// Revision 1.92  2006/03/07 13:00:48  mmorozov
// - bugfix: ��� ������ _options �������� ���������� ������������ ��� ����� ���������� � ����;
//
// Revision 1.91  2006/02/15 12:05:28  mmorozov
// - bugfix: � ��������� ������� ���� Enabled �� ����������, � ��������� ���� �� ������� Execute �������� (CQ: 19614);
//
// Revision 1.90  2006/02/07 07:59:36  mmorozov
// new behaviour: ��� �������� ��������� � ������������ ����� ��������� ������ _Options;
//
// Revision 1.89  2006/02/02 16:49:27  oman
// - fix: ��� ���������� �������� �������� onTest �� ������ �����
//  �������� ���������, �� � ��� �� Internal-�������� - ������
//
// Revision 1.88  2006/01/20 11:33:06  mmorozov
// 1. ������ ���� �� ������ ������������ �������� �������� �������� �� ������ ��������� � ����������� �������;
// 2. ���� � ������ ������������ ����������� �������� � ����������� ����������, �� �� ������������� ����������� ������� � ���� �������� ��������;
// 3. ��������� ����������� �������, ��� ����������� �������� �������� ������ ������������ � ��������� ������ ����;
// 3.
//
// Revision 1.87  2005/09/13 13:18:22  mmorozov
// - warning fix;
//
// Revision 1.86  2005/07/14 16:02:48  lulin
// - new behavior: � run-time �������� ID �������� �� �� ����� �� ����������, ������������ � MenuManager'�.
//
// Revision 1.85  2005/02/02 14:09:06  lulin
// - bug fix: ���� ���������� �������.
//
// Revision 1.84  2005/02/02 13:16:46  am
// bugfix: IfNDef -> IfDef � _Handled
//
// Revision 1.83  2005/02/02 12:53:55  am
// change: ������, ��������� � ����������� TvcmBaseOperationCollectionItem._Handled()
//
// Revision 1.82  2005/02/01 15:09:40  am
// new: function _Handled
//
// Revision 1.81  2005/02/01 15:04:50  am
// new: function _Handled
//
// Revision 1.80  2005/01/27 15:24:03  am
// change: ���������� � ��������� �������� ��������, ����������� ������ ����������
//
// Revision 1.79  2005/01/27 14:01:14  am
// change: ���������� � ��������� �������� ������ �� ��������, ��� ������� ���������� OnExecute.
//
// Revision 1.78  2005/01/27 13:43:28  lulin
// - bug fix: �� ��� �������� ������������ �� �������� (CQ OIT5-11924).
//
// Revision 1.77  2005/01/25 10:25:53  lulin
// - bug fix: � ��������� �� ������������ ��������, ������� ��-��������� �� ������������ �� Toolbar'��.
//
// Revision 1.76  2005/01/21 11:10:05  lulin
// - new behavior: �� ��������� ��������, ����������� ������ � ���������.
//
// Revision 1.75  2005/01/20 13:25:18  lulin
// - new consts: _vcm_otModuleInternal, _vcm_otFormConstructor.
//
// Revision 1.74  2005/01/20 10:55:29  demon
// - fix: syntax fix
//
// Revision 1.73  2005/01/20 10:49:46  demon
// - new behavior: �������� � �������� LongProcess (���������� ���������� �������� �������� crHourGlass).
//
// Revision 1.72  2005/01/19 12:34:15  lulin
// - new behavior: ��� ReadOnly-���������� �� ��������� �������� ��������������.
//
// Revision 1.71  2005/01/14 10:42:30  lulin
// - ������ Get*ParentForm ��������� � ���������� AFW.
//
// Revision 1.70  2004/11/25 10:44:11  lulin
// - rename type: _TvcmExecuteEvent -> TvcmControlExecuteEvent.
// - rename type: _TvcmTestEvent -> TvcmControlTestEvent.
// - new type: TvcmControlGetTargetEvent.
//
// Revision 1.69  2004/11/25 10:14:10  lulin
// - bug fix: AV ��� ������ �������� ��������.
//
// Revision 1.68  2004/11/25 09:58:15  lulin
// - new methods: _IvcmParams.SetControlEvent, CallControl.
// - new behavior: ���� ��������� ���������� �� �����, �� ����� ��� - ���� ���� ������ ��������� �������� ����� ������� aParams.CallControl.
//
// Revision 1.67  2004/11/25 09:39:29  lulin
// - ����� ������ �������� aContext - �.�. �� ����������� �� aParams._Target.
//
// Revision 1.66  2004/11/24 13:47:52  lulin
// - new behavior: ����������� �������� �� ��������� ������ ����������, ����� ���� ��������� ��������.
//
// Revision 1.65  2004/11/24 12:35:55  lulin
// - new behavior: ����������� �������� �� ��������� ������ ������������� � ���������.
//
// Revision 1.64  2004/11/18 17:57:22  lulin
// - new class: TvcmActiveControlsCollection.
//
// Revision 1.63  2004/11/18 16:29:55  lulin
// - ���������� ���������� �� VCM ��� ������������� inc'��.
//
// Revision 1.62  2004/10/26 13:11:35  mmorozov
// bugfix: � vcm_omExecute � f_Enabled = False ����� ������� OnTest ������������� aParams c Container = nil;
//
// Revision 1.61  2004/10/07 14:17:01  lulin
// - new: ������ � _IvcmParams ����� ����������� ������ �������� DoneStatus - ��� ����������. �� ������ ����� "��-�������" ������������ ShortCut'� ��� ����������� �������� (CQ OIT5-10123).
//
// Revision 1.60  2004/10/05 11:41:47  lulin
// - bug fix: ��� ������ ��������, ������� ����������� �� ��������� OnTest � ������� ��� ������ �� ����������, ����� ����� _Operation, � �� �� �������� (CQ OIT5-9844).
//
// Revision 1.59  2004/09/27 15:18:06  lulin
// - new behavior: ��� �������� � ����� vcm_otInternal �� ���� ����������� _Options.
//
// Revision 1.58  2004/09/22 15:50:10  lulin
// - cleanup.
//
// Revision 1.57  2004/09/22 13:34:41  mmorozov
// change: �� �������� Now � _Operation;
//
// Revision 1.56  2004/09/22 06:12:34  lulin
// - ����������� - ������ TvcmBaseCollection.FindItemByID ������� ������ � ��������� ��������� ��������.
//
// Revision 1.55  2004/09/22 05:41:24  lulin
// - ����������� - ������ ��� � ������, �� ������������ � Run-Time.
//
// Revision 1.54  2004/09/21 16:23:31  mmorozov
// new: ���������� ��������� IvcmIdentifiedUserFriendlyControl;
//
// Revision 1.53  2004/09/13 08:56:10  lulin
// - new behavior: TvcmPrimCollectionItem ������ ����� ������������ � �������������� � ���� ��������.
//
// Revision 1.52  2004/09/10 16:47:16  lulin
// - ����������� - ������� �������� ���������� ������������ OpDef.
//
// Revision 1.51  2004/09/10 16:21:46  lulin
// - ����������� - �������� OpDef � �������� ������ �� OperationItem, � �� �� ���� ����������.
//
// Revision 1.50  2004/09/10 12:47:40  lulin
// - new type: TvcmEffectiveUserType.
// - new behavior: �� ���������� ���������� ��� ��������, ���� � ��� ���� �����.
//
// Revision 1.49  2004/09/07 10:32:12  am
// change: ����������� � �������, ��������� � _VisibleToUser
//
// Revision 1.48  2004/09/02 09:19:12  am
// change: �� ������ OnTest ���� ��������� �������
//
// Revision 1.47  2004/08/31 07:56:43  am
// change: ������ ���������� "���������" �������� � def'� �� item
//
// Revision 1.46  2004/08/11 14:29:58  law
// - new behavior: ������ ����� Help'� ��� ������� ����.
//
// Revision 1.45  2004/07/30 13:07:18  law
// - cleanup.
//
// Revision 1.44  2004/07/30 10:00:05  nikitin75
// ��������� ������ ����������������� (disigntime) �������� � ����������� �� ��������, bugfix
//
// Revision 1.43  2004/07/30 08:44:04  law
// - bug fix: ����������� ������������ ������������� ���������� �������� SecondaryShortCuts.
//
// Revision 1.42  2004/07/29 10:16:08  nikitin75
// SetShortCuts fix
//
// Revision 1.41  2004/07/22 16:29:36  law
// - ��������� �������-helper.
//
// Revision 1.40  2004/07/20 11:04:26  law
// - "���������" ������������ OnTest.
//
// Revision 1.39  2004/07/19 11:03:08  law
// - ������ "������������" �������� OnTest (CQ OIT5-6989).
//
// Revision 1.38  2004/06/30 04:45:44  mmorozov
// bugfix: AutoFocus;
//
// Revision 1.37  2004/06/29 13:14:21  mmorozov
// bugfix: ������������ ���� ��� AutoFocus;
//
// Revision 1.36  2004/04/19 15:50:21  mmorozov
// change: TvcmBaseOperationsCollectionItem._pm_GetParams ADD "const aObject : TObject";
//
// Revision 1.35  2004/04/15 15:10:13  am
// new prop: AutoFocus. ���� ����������� - ����� ����������� �������� ����� ����� ��������, ������� ������ � ���������, ��� �����, �� ������� ��� �������� �����.
//
// Revision 1.34  2004/03/16 10:59:34  law
// - new const: _vcm_omAggregateExecute.
// - new behavior: ��� �������� ��������� �� ��������� ��������� Enabled.
//
// Revision 1.33  2004/03/13 14:09:48  law
// - bug fix: �� ��������� ��������, ���� � OnTest ��� �������, ��� ��� ���������� (CQ OIT5-6232).
//
// Revision 1.32  2004/03/11 15:16:08  nikitin75
// fix: SecondaryShortCuts �������� � designtime;
//
// Revision 1.31  2004/03/11 14:49:29  nikitin75
// + OnSecondaryShortCutsChange;
//
// Revision 1.30  2004/03/11 12:30:44  nikitin75
// + �������� SecondaryShortCuts � TvcmBaseOperationDef.Make;
//
// Revision 1.29  2004/03/11 11:42:32  nikitin75
// + function  SecondaryShortCutsStored: Boolean;
//
// Revision 1.28  2004/03/11 10:49:34  nikitin75
// fix: �� ������������� SecondaryShortCuts � disign-time;
//
// Revision 1.27  2004/03/09 11:37:03  nikitin75
// + ��������� ���������� shortcut'�� ��� ��������;
//
// Revision 1.26  2004/03/09 07:17:57  nikitin75
// + ��������� ���������� shortcut'�� ��� ��������;
//
// Revision 1.25  2004/03/02 09:23:30  nikitin75
// + try..except;
//
// Revision 1.24  2004/03/01 11:42:47  nikitin75
// + published _vcmByteShift(aShift: TShiftState): Byte;
//
// Revision 1.23  2004/02/27 19:22:16  law
// - bug fix: ���������� ��������� ShortCut'�� ��� �������� �������.
// - bug fix: ���������� ������� ��������� ShortCut'�� � ������ ���������.
//
// Revision 1.22  2004/02/27 15:55:01  nikitin75
// + OvcController ��� ��������� shortcuts;
//
// Revision 1.21  2004/02/02 15:02:42  law
// - remove proc: vcmMakeBaseOperationDef.
// - new method: TvcmBaseOperationDef.Make.
//
// Revision 1.20  2004/01/14 18:38:10  law
// - bug fix.
//
// Revision 1.19  2004/01/14 17:25:07  law
// - new behavior: �������� �������� _States �� ��������, ������� � StdRes.
//
// Revision 1.18  2004/01/14 16:34:38  law
// - new methods: TvcmBaseOperationsCollectionItem.pm_GetStates, StatesStored.
//
// Revision 1.17  2004/01/14 16:24:32  law
// - new method: TvcmBaseOperationsCollectionItem.StatesClass.
//
// Revision 1.16  2004/01/14 16:18:17  law
// - new units: vcmBaseOperationState, vcmBaseOperationStates.
//
// Revision 1.15  2004/01/14 15:07:04  law
// - ������� ��� � vcmInterfaces.
//
// Revision 1.14  2004/01/14 14:45:45  law
// - new prop: TvcmOperationState.Checked.
//
// Revision 1.13  2004/01/14 13:58:03  law
// - new units: vcmOperationState, vcmOperationStates.
//
// Revision 1.12  2004/01/14 13:07:52  law
// - new units: vcmOperationState, vcmOperationStates.
//
// Revision 1.11  2004/01/14 12:58:47  law
// - new units: vcmOperationParams.
//
// Revision 1.10  2004/01/14 12:40:39  law
// - new class: _TvcmOperationParams.
//
// Revision 1.9  2003/11/28 18:08:35  law
// - change: ��������, ��� ���, ����� �� ComboTree ����� ���� ���������� ��������� ����.
//
// Revision 1.8  2003/11/25 09:02:14  law
// - new behavior: ���� �������� ��������� � ����� UserType ������� ������ � _ExcludeUserTypes ��������, �� ����������� On*Execute ������ �� ����������.
//
// Revision 1.7  2003/11/25 08:45:33  law
// - new method: TvcmBaseOperationsCollectionItem.OwnerUserType.
//
// Revision 1.6  2003/11/24 11:56:35  law
// - bug fix: Hint'� ���� ������ ������� �� ����������������� ���������.
//
// Revision 1.5  2003/11/19 18:38:39  law
// - new prop: TvcmBaseOperationsCollectionItem.Params - ��������� ������ ���������� ��������.
// - new prop: TvcmOperationsCollectionItem.Linked - ���������� ������� �������� � ���������������� ���������� ��� ���.
//
// Revision 1.4  2003/11/19 15:41:24  law
// - change: �������� _ExcludeUserTypes ������� �� TvcmOperationsCollectionItem.
//
// Revision 1.3  2003/11/19 13:21:07  law
// - new behavior: ��������� �������� ShortCut �������� �� ������ �� ���������������� ���������.
//
// Revision 1.2  2003/11/19 12:56:52  law
// - new behavior: ��������� �������� �������� �� ������ �� ���������������� ��������� (_Caption, _ImageIndex, _GroupID, _Category, OperationType).
//
// Revision 1.1  2003/11/19 11:38:25  law
// - new behavior: ������������ ��� �������� � �������� � MenuManager'� ��� ���������� ������������� ��������������. ���� �������������� ���� �� ��������.
//

{$Include vcmDefine.inc }

interface

uses
  Classes,
  ActnList,

  vcmUserControls,
  vcmInterfaces,
  vcmExternalInterfaces,

  vcmBase,
  vcmOperationParams,
  vcmBaseOperationState,
  vcmBaseOperationStates,
  vcmForm,
  vcmAction,
  vcmActiveControlsCollection

  {$IfDef XE}
  ,
  System.Actions
  {$EndIf XE}
  ;

const
  vcm_DefaultOperationOptions = [vcm_ooShowInMainToolbar,
                                 vcm_ooShowInChildToolbar,
                                 vcm_ooShowInContextMenu,
                                 vcm_ooShowInMainMenu,
                                 vcm_ooShowInChildMenu];
    { ����� ���������� �� ��������� ��� �������
      TvcmOperationsCollectionItem.Options.     }

type
  TvcmGetStateEvent = procedure(var State: TvcmOperationStateIndex) of object;
    {-}
  TvcmContextTestEvent = TvcmTestEvent;
    { ���������� � ������ �������� ����������� �������� ��
      ������������ ����.                                   }
  TvcmContextExecuteEvent = TvcmExecuteEvent;
    { ���������� ��� ���������� �������� �� ������������ ����. }

  TvcmHandleType = (vcm_htContext, vcm_htGlobal, vcm_htControl);
  TvcmHandleTypes = set of TvcmHandleType;

  TvcmBaseOperationsCollectionItem = class(TvcmOperationParams)
   {* ������� ��������� ��������. }
    protected
    // property fields
      f_OperationType    : TvcmOperationType;
      f_Options          : TvcmOperationOptions;
      f_ContextMenuWeight : Integer;
    private
    // property fields
      f_OperationID      : Integer;
      f_AutoLock         : Boolean;
      f_AutoFocus        : Boolean;
      f_LongProcess      : Boolean;
      f_GroupID          : Integer;
      f_States           : TvcmBaseOperationStates;
      f_State            : TvcmOperationStateIndex;
      f_Enabled          : Boolean;
      f_VisibleToUser    : Integer;
      f_OpDef            : IvcmOperationDef;
      f_Controls         : TvcmActiveControlsCollection;

      f_OnGetState       : TvcmGetStateEvent;
      f_OnTest           : TvcmTestEvent;
      f_OnExecute        : TvcmExecuteEvent;

      f_FormGetState     : TvcmControlGetStateEvent;
      f_FormTest         : TvcmControlTestEvent;
      f_FormExecute      : TvcmControlExecuteEvent;

      f_OnContextTest    : TvcmContextTestEvent;
      f_OnContextExecute : TvcmContextExecuteEvent;
      f_IsCaptionUnique  : Boolean;
      f_SaveShortcut: TShortcut;
      f_SaveSecondaryShortcuts: AnsiString;
      f_IsDefault: Boolean;
    protected
    // property methods
      function  pm_GetVisibleToUser: Boolean;
        {-}
      procedure pm_SetOptions(aValue: TvcmOperationOptions);
        {-}
      function  pm_GetOptions: TvcmOperationOptions;
        virtual;
        {-}
      function  GetDefaultOptions: TvcmOperationOptions;
        virtual;
        {-}
      function  pm_GetOperationDef: IvcmOperationDef;
        {-}
      {$IfNDef DesignTimeLibrary}
      function  pm_GetCategory: AnsiString;
        virtual;
        {-}
      {$EndIf  DesignTimeLibrary}  
      function  pm_GetGroupID: Integer;
        virtual;
      procedure pm_SetGroupID(aValue: Integer);
        virtual;
      function  GroupIDStored: Boolean;
        virtual;
        {-}
      function  pm_GetOperationType: TvcmOperationType;
        virtual;
      procedure pm_SetOperationType(aValue: TvcmOperationType);
        virtual;
      function  OperationTypeStored: Boolean;
        virtual;
        {-}
      function  pm_GetExcludeUserTypes: TvcmEffectiveUserTypes;
        virtual;
      procedure pm_SetExcludeUserTypes(aValue: TvcmEffectiveUserTypes);
        virtual;
        {-}
      function  pm_GetStates: TvcmBaseOperationStates;
        virtual;
      procedure pm_SetStates(aValue: TvcmBaseOperationStates);
        {-}
      procedure pm_SetState(const aValue: TvcmOperationStateIndex);
        {-}
      function  pm_GetCurrentState: TvcmBaseOperationState;
        {-}
      function pm_GetIsDefault: Boolean;
        virtual;
        {-}
      procedure pm_SetIsDefault(const aValue: Boolean);
        virtual;
        {-}
      function  IsDefaultStored: Boolean;
        virtual;
        {-}
      procedure OnSecondaryShortCutsChange(Sender: TObject);
        {-}
      class procedure ResetShortCutHandler(var aValue: TShortCut; aCommandID: Word = 0);
        {-}
      function  IsLinkedToModule: Boolean;
        {-}
      function  ParentID: Integer;
        {-}  
      function  ControllerCommand: Word;
        {-������������� ��������-shortcut}
      function  GetLinkedAction: TvcmAction;
        {* - Action � �������� ��������� ��������. }
      function  pm_GetLinked: Boolean;
        virtual;
      procedure pm_SetLinked(aValue: Boolean);
        virtual;
        {-}
      function IsHandledToControl: Boolean;
        {* - �������� ������������ �����������. }
      function pm_GetContextMenuWeight: Integer;
      procedure pm_SetContextMenuWeight(aValue : Integer);
        {-}
    protected
    // internal methods
      procedure DoFormGetState(var State: TvcmOperationStateIndex);
      procedure DoFormTest(const aParams: IvcmTestParamsPrim);
      procedure DoFormExecute(const aParams: IvcmExecuteParams);
        {-}
      procedure FakeControlTest(const aParams: IvcmTestParamsPrim);
        {-}
      procedure ChangeName(const anOld, aNew: AnsiString);
        override;
        { ���������� ��� ��������� �����. }
      procedure ChangeCaption(const anOld, aNew: AnsiString);
        override;
        { ���������� ��� ��������� ���������. }
      function  OwnerUserType: TvcmEffectiveUserType;
        { ���������� ���������������� ��� "�����" �� ������� ���������� ��������. }
      procedure Cleanup;
        override;
        {-}
      procedure BeforeAddToCache;
        override;
        {-}
      class function StatesClass: RvcmBaseOperationStates;
        virtual;
        {-}
      procedure SetShortCuts(aShortCut: TShortCut; aSecondaryShortCuts: TShortCutList);
        virtual;
        {-}
      procedure ClearOp;
        {-}
    public
    // public methods
      constructor Create(Collection: TCollection);
        override;
        {-}
      function  OwnerForm: TvcmForm;
        { ���������� "�����" �� ������� ���������� ��������. }
      procedure ReplaceShortCuts(aShortCut: TShortCut; aSecondaryShortCuts: {$IfDef XE}TCustomShortCutList{$Else}TShortCutList{$EndIf});
        {-}
      procedure StoreDesignTimeShortcuts;
        {-}
      function  MakeID(const aName: AnsiString): Integer;
        override;
        {-}
      function GetID: Integer;
        override;
        {-}
      function  SomePropStored: Boolean;
        {-}
      procedure Operation(aControl            : TComponent;
                         const aTarget       : IUnknown;
                         aMode               : TvcmOperationMode;
                         const aParams       : IvcmParams;
                         aForce              : Boolean);
        { ���������� ��������. }
      function QueryInterface(const IID: TGUID; out Obj): HResult;
        override;
        {-}
      procedure Assign(P: TPersistent);
        override;
        {-}
      procedure RemoveShortCut(aShortCut: TShortCut);
        virtual;
        {-}
      procedure PublishOp(const aControl : TComponent;
                          anExecute      : TvcmControlExecuteEvent;
                          aTest          : TvcmControlTestEvent;
                          aGetState         : TvcmControlGetStateEvent);
        overload;
        {* - ������������ ��������. }
      procedure PublishOp(const aControl : TComponent;
                          anExecute      : TvcmExecuteEvent;
                          aTest          : TvcmControlTestEvent;
                          aGetState         : TvcmControlGetStateEvent);
        overload;
        {* - ������������ ��������. }
      procedure UnlinkControl(aControl : TComponent);
        {* - �������� �������. }
      function  Handled(aTypes: TvcmHandleTypes): Boolean;
        virtual;
        {-}
    public
    // public properties
      property OperationID: Integer
        read f_OperationID;
        { ������������� ��������. }
      property OperationDef: IvcmOperationDef
        read pm_GetOperationDef;
        {* - ��������� ��������. }
      property ExcludeUserTypes: TvcmEffectiveUserTypes
        read pm_GetExcludeUserTypes
        write pm_SetExcludeUserTypes
        default [];
        {-}
      property State: TvcmOperationStateIndex
        read f_State
        write pm_SetState;
        {-}
      property CurrentState: TvcmBaseOperationState
        read pm_GetCurrentState;
        {-}
      property VisibleToUser: Boolean
        read pm_GetVisibleToUser;
        {-}
      property Linked: Boolean
        read pm_GetLinked
        write pm_SetLinked
        stored false;
        {-}
      property Controls: TvcmActiveControlsCollection
        read f_Controls;
        {-}
      property IsCaptionUnique: Boolean
        read f_IsCaptionUnique
        write f_IsCaptionUnique;
        {-}
      property SaveShortcut: TShortcut
        read f_SaveShortcut;
        {-}
      property SaveSecondaryShortcuts: AnsiString
        read f_SaveSecondaryShortcuts;
        {-}
      property States: TvcmBaseOperationStates
        read pm_GetStates
        write pm_SetStates;
        {-}
      property OperationType: TvcmOperationType
        read pm_GetOperationType
        write pm_SetOperationType
        stored OperationTypeStored
        default vcm_otButton;
        { ��� ��������.

          Description
          � ����������� �� ���� �������� �������� ����������� ��������
          � ���� � �� ������ ������������.

          See Also
          TvcmOperationType                                            }
      property GroupID: Integer
        read pm_GetGroupID
        write pm_SetGroupID
        stored GroupIDStored
        default 0;
        {-}
      property IsDefault: Boolean
        read pm_GetIsDefault
       write pm_SetIsDefault
       stored IsDefaultStored
       default False;
      property Options: TvcmOperationOptions
        read pm_GetOptions
        write pm_SetOptions;
        { ��������� ��������.

          See Also
          <LINK vcm_DefaultOperationOptions>  }
      property OnGetState: TvcmGetStateEvent
        read f_OnGetState
        write f_OnGetState;
        {-}
      {$IfNDef DesignTimeLibrary}
      property Category: AnsiString
        read pm_GetCategory;
        { ��������� ��������.

          Note
          �������� �� ������ �������������� �����. ������������ ���
          ����������� ��������.                                     }
      {$EndIf DesignTimeLibrary}
      property ContextMenuWeight: Integer
        read pm_GetContextMenuWeight
        write pm_SetContextMenuWeight;    
    published
    // published properties
      property AutoLock: Boolean
        read f_AutoLock
        write f_AutoLock
        default false;
        { ���������� ������������� ���������� �� ����� ����������
          ��������.

          Description
          ���� AutoLock = True, � ������ � �� ��������� ���������
          �������� ����������� ������ ����������� ����������.     }
      property AutoFocus: Boolean
        read f_AutoFocus
        write f_AutoFocus
        default false;
        { ��������� ������ �� ����������
          ��������.

          Description
          ���� AutoFocus = True, ����� ����������� ��������,
          ����� ��������� ����� ��� ��������, � ������� ������� ��� �������� }
      property LongProcess: Boolean
        read  f_LongProcess
        write f_LongProcess
        default false;
        { ���������� ���������� �������� �������� crHourGlass. ����� ������ ���
          ���������� ���������� (vcm_otInternal) ��������, �.�. ��� ������ �����
          Action � ��� ��������� �������� �������.

          Description
          ���� LongProcess = True, ����� ����������� �������� ������ ����������
          �� crHourGlass, � ����� ���������� ������������ � ��������������� ���� }
    published
    // published events
      property OnTest: TvcmTestEvent
        read f_OnTest
        write f_OnTest;
        { Description
          ���������� ��� ����������� ��������� ��������.

          ������ ���������� ���������� ��� ����������� �����������
          ��������. � ������� aParams ����� ������� ����������
          ���������.


          <TABLE noborder>
          ������ ���������   ���        ��������
          -----------------  ---------  --------------------------------
          vcm_opEnabled      Boolean    ����������� ���������� ��������
          vcm_opVisible      Boolean    ��������� �������� � ���� � ��
                                         ������ ������������
          vcm_opChecked      Boolean    �������� ��������
          vcm_opLongHint     AnsiString     ����� ���������, ������������ �
                                         ��������� ������
          vcm_opCaption      AnsiString     ��������� ������ ����
          </TABLE>
          Note
          ��� ���� �������� vcm_otCombo � aParams.Op.SubItems
          ����� ������� ������ �����,
          �������������� ������ ��������� ����������� ������.
          
          Summary
          �������� ������������� ��������.                               }
      property OnExecute: TvcmExecuteEvent
        read f_OnExecute
        write f_OnExecute;
        { ���������� ��������. ���������� �� ���� ������� ����� ���
          ������ ������������.                                      }
      property OnContextTest: TvcmContextTestEvent
        read f_OnContextTest
        write f_OnContextTest;
        { Description
          ���������� �� ������������ ����.
          
          ������ ���������� ���������� ��� ����������� �����������
          ��������. � ������� aParams ����� ������� ����������
          ���������.


          <TABLE noborder>
          ������ ���������   ���        ��������
          -----------------  ---------  --------------------------------
          vcm_opEnabled      Boolean    ����������� ���������� ��������
          vcm_opVisible      Boolean    ��������� �������� � ���� � ��
                                         ������ ������������
          vcm_opChecked      Boolean    �������� ��������
          vcm_opLongHint     AnsiString     ����� ���������, ������������ �
                                         ��������� ������
          vcm_opCaption      AnsiString     ��������� ������ ����
          </TABLE>
          Note
          ��� ���� �������� vcm_otCombo � aParams.Op.SubItems
          ����� ������� ������ �����,
          �������������� ������ ��������� ����������� ������.
          

          
          Summary
          �������� ������������� ����������� ��������.                   }
      property OnContextExecute: TvcmContextExecuteEvent
        read f_OnContextExecute
        write f_OnContextExecute;
        { Description
          ���������� ��������. ���������� �� ������������ ����. }
  end;{ ��������� �������� }

function vcmByteShift(aShift: TShiftState): Byte;

implementation

uses
  TypInfo,

  SysUtils,
  DateUtils,

  Forms,
  Menus,
  Controls,

  OvcBase,
  OvcCmd,
  OvcData,

  {$IfDef vcmNeedL3}
  l3Types,
  {$EndIf vcmNeedL3}

  afwFacade,

  vcmBaseOperationDef,
  vcmModuleDef,
  vcmRepositoryEx,
  vcmBaseEntitiesCollection,
  vcmBaseEntitiesCollectionItem,
  vcmEntitiesCollectionItem,
  vcmEntities,
  vcmModule,
  vcmContainerForm,
  vcmModulesCollectionItem,
  vcmEntityAction,
  vcmModuleAction,
  vcmActiveControlsCollectionItem,
  vcmBaseCollection,
  vcmUtils,
  vcmInternalConst,
  vcmOVCCommands,
  vcmEntityForm,
  vcmBaseMenuManager
  ;

function vcmByteShift(aShift: TShiftState): Byte;
begin
 result := OvcByteShift(aShift);
end;

// start class TvcmBaseOperationsCollectionItem

constructor TvcmBaseOperationsCollectionItem.Create(Collection: TCollection);
  //override;
  {-}
begin
 inherited;
 //f_Controls := TvcmActiveControlsCollection.Create(Self);
 f_State := vcm_DefaultOperationState;
 f_States := StatesClass.Create(Self);
 f_Enabled := true;
 f_VisibleToUser := -1;
 f_IsCaptionUnique := True;
 SecondaryShortCuts.OnChange := OnSecondaryShortCutsChange;
 f_SaveShortcut := TShortcut(0);
 f_SaveSecondaryShortcuts := '';
 f_ContextMenuWeight := 0;
end;

class function TvcmBaseOperationsCollectionItem.StatesClass: RvcmBaseOperationStates;
  //virtual;
  {-}
begin
 Result := TvcmBaseOperationStates;
end;

procedure TvcmBaseOperationsCollectionItem.SetShortCuts(aShortCut: TShortCut;
 aSecondaryShortCuts: TShortCutList);
  //virtual;
  {-}
begin
end;

procedure TvcmBaseOperationsCollectionItem.Cleanup;
  //override;
  {-}
begin
 f_FormGetState := nil;
 f_FormTest := nil;
 f_FormExecute := nil;
 FreeAndNil(f_Controls);
 ClearOp;
 SetShortCuts(TShortcut(0), nil);
 f_SaveShortcut := TShortcut(0);
 f_SaveSecondaryShortcuts := '';
 FreeAndNil(f_States);
 inherited;
end;

procedure TvcmBaseOperationsCollectionItem.BeforeAddToCache;
  //override;
  {-}
begin
 inherited;
 f_Options := [];
 f_OperationType := Low(TvcmOperationType);
 f_AutoLock := false;
 f_AutoFocus := false;
 f_LongProcess := false;

 f_OnGetState := nil;
 f_OnTest := nil;
 f_OnExecute := nil;

 f_OnContextTest := nil;
 f_OnContextExecute := nil;
 f_IsDefault := False;
end;

procedure TvcmBaseOperationsCollectionItem.ClearOp;
  {-}
var
 l_Op : IvcmOpHolder;
begin
 if Supports(f_OpDef, IvcmOpHolder, l_Op) then
  try
   l_Op.ClearOp;
  finally
   l_Op := nil;
  end;//try..finally
 f_OpDef := nil;
end;
  
function TvcmBaseOperationsCollectionItem.OwnerForm: TvcmForm;
  {-}
var
 l_Col   : TCollection;
 l_Ow    : TPersistent;
 l_Form  : TCustomForm;
begin
 Result := nil;
 l_Col := Collection;
 if (l_Col <> nil) then
 begin
  l_Ow := l_Col.Owner;
  if (l_Ow Is TvcmEntitiesCollectionItem) then
  begin
   l_Col := TvcmEntitiesCollectionItem(l_Ow).Collection;
   if (l_Col <> nil) then
   begin
    l_Ow := l_Col.Owner;
    if (l_Ow <> nil) then
    begin
     l_Form := afw.GetParentForm(l_Ow);
     if (l_Form is TvcmEntityForm) then
      Result := TvcmEntityForm(l_Form);
    end;
   end;//l_Col <> nil
  end;//l_Ow Is vcmEntitiesCollectionItem
 end;//l_Col <> nil
end;

function TvcmBaseOperationsCollectionItem.OwnerUserType: TvcmEffectiveUserType;
  { ���������� ���������������� ��� "�����" �� ������� ���������� ��������. }
Var
 l_Form: TvcmEntityForm;
begin
 Result := 0;
 l_Form := TvcmEntityForm(OwnerForm);
 if l_Form <> nil then
  Result := l_Form.UserType;
end;

function TvcmBaseOperationsCollectionItem.GetID: Integer;
  //override;
  {-}
begin
 Result := OperationID;
end;

procedure TvcmBaseOperationsCollectionItem.Operation(aControl  : TComponent;
                                                const aTarget : IUnknown;
                                                aMode         : TvcmOperationMode;
                                                const aParams : IvcmParams;
                                                aForce        : Boolean);
  {* - ��������� �������� ��������. }
var
 l_FD           : IvcmFormDispatcher;
 l_AL           : Boolean;
 l_State        : TvcmOperationStateIndex;
 l_CurState     : TvcmBaseOperationState;
 l_Form         : TvcmEntityForm;
 l_ParentForm   : TCustomForm;
 {$IfDef vcmNeedL3}
 l_Test         : TvcmTestEvent;
 l_TestM        : Tl3Method absolute l_Test;
 {$EndIf vcmNeedL3}
 l_Action       : TvcmAction;
 l_ActionParams : IvcmTestParams;
 l_Control      : TvcmActiveControlsCollectionItem;
 l_Cursor       : TCursor;
 l_IsOpExcluded : Boolean;
 l_Part         : IvcmExecuteParams;
 l_TPart        : IvcmTestParams;
 l_Enabled      : Boolean;
begin
 Assert(Ord(AMode) <= Ord(High(TvcmOperationMode))); 
 l_FD := vcmDispatcher.FormDispatcher;
 l_AL := AutoLock AND (l_FD <> nil) AND (aMode in vcm_omExecutes);
 if l_AL then
  l_FD.Lock;
 try
  aParams.Target := aTarget;
  aParams.Control := aControl;
  if (Controls = nil) then
   l_Control := nil
  else
   l_Control := Controls.FindItemByControl(aControl) As TvcmActiveControlsCollectionItem;
  Case aMode of
   vcm_omTest :
   begin
    l_TPart := aParams.TestPart;
    if (l_Control = nil) then
     l_TPart.SetControlEvent(nil)
    else
    if Assigned(l_Control.OnTest) then
     l_TPart.SetControlEvent(l_Control.OnTest)
    else
     l_TPart.SetControlEvent(FakeControlTest);
    aParams.DoneStatus := vcm_dsDone;
    if not aForce AND l_FD.Locked then
     Exit;
    if Assigned(f_OnGetState) then
    begin
     l_State := State;
     f_OnGetState(l_State);
     State := l_State;
    end;//Assigned(f_OnGetState)
    l_CurState := CurrentState;
    l_IsOpExcluded := (ExcludeUserTypes <> []) AND
     (OwnerUserType in ExcludeUserTypes);
    if l_IsOpExcluded then
    begin
     l_TPart.Op.Flag[vcm_ofEnabled] := false;
     aParams.DoneStatus := vcm_dsExcludedInUserType;
    end//l_IsOpExcluded
    else
    begin
     if (l_CurState = nil) then
      l_TPart.Op.Flag[vcm_ofEnabled] := true
     else
      l_TPart.Op.Flag[vcm_ofEnabled] := l_CurState.Enabled;
    end;//ExcludeUserTypes <> []
    if (OperationType in vcm_HiddenOperations) then
     l_TPart.Op.Flag[vcm_ofVisible] := false
    else
    if (l_CurState <> nil) then
     l_TPart.Op.Flag[vcm_ofVisible] := l_CurState.Visible;
    if (l_CurState = nil) then
    begin
     l_TPart.Op.Hint := vcmCStr(Hint);
     l_TPart.Op.LongHint := vcmCStr(LongHint);
     l_TPart.Op.ShortCut := Integer(ShortCut);
     l_TPart.Op.ImageIndex := Integer(ImageIndex);
    end//l_CurState = nil
    else
    begin
     l_TPart.Op.Caption := vcmCStr(l_CurState.Caption);
     l_TPart.Op.Flag[vcm_ofChecked] := l_CurState.Checked;
     l_TPart.Op.Hint := vcmCStr(l_CurState.Hint);
     l_TPart.Op.LongHint := vcmCStr(l_CurState.LongHint);
     if (l_CurState.ShortCut = 0) then
      l_TPart.Op.ShortCut := Integer(ShortCut)
     else
      l_TPart.Op.ShortCut := Integer(l_CurState.ShortCut);
     l_TPart.Op.ImageIndex := Integer(l_CurState.ImageIndex);
    end;//l_CurState = nil
    if (aTarget <> nil) and Assigned(f_OnContextTest) then
     f_OnContextTest(l_TPart)
    else//(aTarget <> nil) and Assigned(f_OnContextTest)
    if Assigned(f_OnTest) and not l_IsOpExcluded then
    begin
     {$IfDef vcmNeedL3}
     l_Test := f_OnTest;
     if not (TObject(l_TestM.Data) Is TComponent) OR
        not (csDestroying in TComponent(l_TestM.Data).ComponentState) then
     {$EndIf vcmNeedL3}
     begin
      f_OnTest(l_TPart);
     end;//not (TObject(l_TestM.Data) Is TComponent)..
    end//Assigned(f_OnTest)
    else
    begin
     // ���� �� ����� ��� ������������ �������� ������ ��������
     l_Enabled := l_TPart.Op.Flag[vcm_ofEnabled];
     if not l_TPart.CallControl then
     begin
      // ���� ������� �� ���������� � ��� ������������ - ��������� �������� ������.
      if not ((Assigned(l_Control) and Assigned(l_Control.OnExecute)) OR
         Assigned(f_OnExecute) OR Assigned(f_OnContextExecute)) then
       l_TPart.Op.Flag[vcm_ofEnabled] := false
      else
       l_TPart.Op.Flag[vcm_ofEnabled] := l_Enabled;
     end;//not l_TPart.CallControl
    end;//Assigned(f_OnTest) and not l_IsOpExcluded
    f_Enabled := l_TPart.Op.Flag[vcm_ofEnabled];
    //aParams.DoneStatus := vcm_dsDone;
   end;//vcm_omTest
   vcm_omExecute,
   vcm_omAggregateExecute:
   begin
    l_Part := aParams.ExecutePart;
    if (l_Control = nil) then
     l_Part.SetControlEvent(nil)
    else
     l_Part.SetControlEvent(l_Control.OnExecute);
    if ((not f_Enabled or not (OperationType in vcm_HiddenOperations)) OR
       ((aMode = vcm_omAggregateExecute) AND (OperationType = vcm_otInternal)))
       // - ����� �� ����������� �������� ��������� ����� ���� ��������� ��������
       // ����� ���-�� ����������:
       // http://mdp.garant.ru/pages/viewpage.action?pageId=178324372&focusedCommentId=178324544#comment-178324544
       AND
       (((l_Control <> nil) AND Assigned(l_Control.OnTest)) OR
       (Assigned(f_OnTest) OR Assigned(f_OnContextTest))) then
    begin
     // - ���� ������� OnTest
     l_Action := GetLinkedAction;
     if (l_Action <> nil) then
     begin
      l_ActionParams := l_Action.MakeTestParams;
      // � ���������� ��������� ���������
      if not Assigned(l_ActionParams.Container) then
      begin
       l_Form := TvcmEntityForm(OwnerForm);
       // ��� �������� ������ OwnerForm = nil, ������� ����� ������� �������
       if not Assigned(l_Form) and Assigned(Dispatcher.FormDispatcher.CurrentMainForm) then
        l_Form := (Dispatcher.FormDispatcher.CurrentMainForm.VCLWinControl As TvcmEntityForm);
       if Assigned(l_Form) then
        begin
        if (l_Form is TvcmContainerForm) then
         l_ActionParams.BasePart.SetContainerPrim(TvcmContainerForm(l_Form), true)
        else
         l_ActionParams.BasePart.SetContainerPrim(l_Form.Container, true);
       end;//not Assigned(l_Form)
      end;//not Assigned(l_ActionParams.Container)
      // �������� OnTest
      Operation(aControl, aTarget, vcm_omTest, l_ActionParams.BasePart, True);
     end;//l_Action <> nil
    end;//not f_Enabled AND (OperationType in vcm_HiddenOperations)
    if not f_Enabled AND
       ((aMode = vcm_omExecute) OR
       (OperationType = vcm_otInternal))
       // - ����� ���� �� ����� ����������� ��������� �������� ���������
       // ����� ���-�� ����������:
       // http://mdp.garant.ru/pages/viewpage.action?pageId=178324372&focusedCommentId=178324544#comment-178324544
       then
    begin
     if ((ExcludeUserTypes <> []) AND (OwnerUserType in ExcludeUserTypes)) then
      aParams.DoneStatus := vcm_dsExcludedInUserType
     else
      aParams.DoneStatus := vcm_dsDisabled;
    end//not f_Enabled
    else
    if ((ExcludeUserTypes <> []) AND (OwnerUserType in ExcludeUserTypes)) then
     aParams.DoneStatus := vcm_dsExcludedInUserType
    else
    begin
     aParams.DoneStatus := vcm_dsDone;
     l_Cursor := Screen.Cursor;
     if f_LongProcess then
      Screen.Cursor := crHourGlass;
     try
      if (aTarget <> nil) and Assigned(f_OnContextExecute) then
       f_OnContextExecute(l_Part)
      else //(aTarget <> nil) and Assigned(f_OnContextExecute)
       if ((l_Control <> nil) AND Assigned(l_Control.OnExecute)) OR
          Assigned(f_OnExecute) then
       begin
        if (aMode = vcm_omExecute) and f_AutoFocus then
        begin
         if (aControl <> nil) then
         begin
          l_ParentForm := afw.GetTopParentForm(aControl);
          if Assigned(l_ParentForm) and l_ParentForm.Active and
            (aControl is TWinControl) then
           (aControl as TWinControl).SetFocus
         end
         else
         begin
          l_Form := TvcmEntityForm(OwnerForm);
          if l_Form <> nil then
           l_Form.SetFocus;
         end;
        end;//aMode = vcm_omExecute) and f_AutoFocus
        if Assigned(f_OnExecute) then
         f_OnExecute(l_Part)
        else
         l_Part.CallControl;
       end;//Assigned(f_OnExecute)
     finally
      if f_LongProcess then
       Screen.Cursor := l_Cursor;
     end;//try..finally
    end;//ExcludeUserTypes <> []..
   end;//vcm_omExecute
  end;//Case aMode
 finally
  if l_AL then
   l_FD.Unlock;
 end;//try..finally
end;

function TvcmBaseOperationsCollectionItem.QueryInterface(const IID: TGUID; out Obj): HResult;
  //override;
  {-}
begin
 if IsEqualGUID(IID, IvcmUserFriendlyControl) then
 begin
  Result := S_Ok;
  IvcmUserFriendlyControl(Obj) := OperationDef;
  if (IUnknown(Obj) = nil) then
   Result := E_NoInterface;
 end
 else
 if IsEqualGUID(IID, IvcmOperationDef) then
 begin
  Result := S_Ok;
  IvcmOperationDef(Obj) := OperationDef;
  if (IUnknown(Obj) = nil) then
   Result := E_NoInterface;
 end
 else
 if IsEqualGUID(IID, IvcmIdentifiedUserFriendlyControl) then
 begin
  Result := S_Ok;
  IvcmIdentifiedUserFriendlyControl(Obj) := OperationDef;
  if (IUnknown(Obj) = nil) then
   Result := E_NoInterface;
 end
 else
  Result := inherited QueryInterface(IID, Obj);
end;

procedure TvcmBaseOperationsCollectionItem.Assign(P: TPersistent);
  //override;
  {-}
begin
 inherited;
 if (P Is TvcmBaseOperationsCollectionItem) then
 begin
  GroupID := TvcmBaseOperationsCollectionItem(P).GroupID;
  OperationType := TvcmBaseOperationsCollectionItem(P).OperationType;
  AutoLock := TvcmBaseOperationsCollectionItem(P).AutoLock;
  ExcludeUserTypes := TvcmBaseOperationsCollectionItem(P).ExcludeUserTypes;
  OnTest := TvcmBaseOperationsCollectionItem(P).OnTest;
  OnExecute := TvcmBaseOperationsCollectionItem(P).OnExecute;
  OnContextTest := TvcmBaseOperationsCollectionItem(P).OnContextTest;
  OnContextExecute := TvcmBaseOperationsCollectionItem(P).OnContextExecute;
  Options := TvcmBaseOperationsCollectionItem(P).Options;
  IsDefault := TvcmBaseOperationsCollectionItem(P).IsDefault;
 end;//TvcmBaseOperationsCollectionItem
end;

procedure TvcmBaseOperationsCollectionItem.RemoveShortCut(aShortCut: TShortCut);
  //virtual;
  {-}
begin
 Assert(false);
end;

procedure TvcmBaseOperationsCollectionItem.DoFormGetState(var State: TvcmOperationStateIndex);
begin
 f_FormGetState(State);
end;

procedure TvcmBaseOperationsCollectionItem.DoFormTest(const aParams: IvcmTestParamsPrim);
  {-}
begin
 f_FormTest(aParams);
end;

procedure TvcmBaseOperationsCollectionItem.DoFormExecute(const aParams: IvcmExecuteParams);
  {-}
begin
 Assert(Assigned(f_FormExecute));
 f_FormExecute(aParams);
end;

procedure TvcmBaseOperationsCollectionItem.FakeControlTest(const aParams: IvcmTestParamsPrim);
  {-}
begin
end;
  
procedure TvcmBaseOperationsCollectionItem.PublishOp(const aControl : TComponent;
                                                     anExecute      : TvcmControlExecuteEvent;
                                                     aTest          : TvcmControlTestEvent;
                                                     aGetState         : TvcmControlGetStateEvent);
  {* - ������������ ��������. }
begin
 if (aControl Is TvcmEntityForm) OR (aControl Is TvcmModule) then
 begin
  if not Assigned(f_OnTest) AND not Assigned(f_OnExecute) then
  begin
   //Assert(not Assigned(f_OnContextTest));
   //Assert(not Assigned(f_OnContextExecute));
   f_FormTest := aTest;
   f_FormExecute := anExecute;
   f_FormGetState := aGetState;
   if Assigned(f_FormTest) then
   begin
    f_OnTest := DoFormTest;
    //f_OnContextTest := DoFormTest;
   end;//Assigned(f_FormTest)
   if Assigned(f_FormExecute) then
   begin
    f_OnExecute := DoFormExecute;
    //f_OnContextExecute := DoFormExecute;
   end;//Assigned(f_FormExecute)
   if Assigned(f_FormGetState) then
    f_OnGetState := DoFormGetState;
    // - ��� ��������� ��� ������
  end;//not Assigned(f_OnTest)
 end//aControl Is TvcmEntityForm
 else
 begin
  if (aControl <> nil) then
  begin
   if (f_Controls = nil) then
    f_Controls := TvcmActiveControlsCollection.Create(Self);
   f_Controls.PublishOp(aControl, anExecute, aTest);
  end;//aControl <> nil
 end;//aControl Is TvcmEntityForm
end;

procedure TvcmBaseOperationsCollectionItem.PublishOp(const aControl : TComponent;
                                                     anExecute      : TvcmExecuteEvent;
                                                     aTest          : TvcmControlTestEvent;
                                                     aGetState      : TvcmControlGetStateEvent);
  //overload;
  {* - ������������ ��������. }
begin
 if (aControl Is TvcmEntityForm) then
 begin
  if not Assigned(f_OnTest) AND not Assigned(f_OnExecute) then
  begin
   Assert(not Assigned(f_OnContextTest));
   Assert(not Assigned(f_OnContextExecute));
   f_FormTest := aTest;
   //f_FormExecute := anExecute;
   f_FormGetState := aGetState;
   if Assigned(f_FormTest) then
   begin
    f_OnTest := DoFormTest;
    //f_OnContextTest := DoFormTest;
   end;//Assigned(f_FormTest)
(*   if Assigned(f_FormExecute) then
   begin*)
    f_OnExecute := anExecute;
    //f_OnContextExecute := DoFormExecute;
(*   end;//Assigned(f_FormExecute)*)
   if Assigned(f_FormGetState) then
    f_OnGetState := DoFormGetState;
    // - ��� ��������� ��� ������
  end;//not Assigned(f_OnTest)
 end//aControl Is TvcmEntityForm
 else
 begin
  Assert(false);
(*  if (f_Controls = nil) then
   f_Controls := TvcmActiveControlsCollection.Create(Self);
  f_Controls.PublishOp(aControl, anExecute, aTest);*)
 end;//aControl Is TvcmEntityForm
end;

procedure TvcmBaseOperationsCollectionItem.UnlinkControl(aControl : TComponent);
  {* - �������� �������. }
begin
 if (f_Controls <> nil) then
  f_Controls.UnlinkControl(aControl);
end;
  
function TvcmBaseOperationsCollectionItem.MakeID(const aName: AnsiString): Integer;
  //override;
  {-}
begin
 Result := vcmGetID(vcm_repOperation, aName, ParentID);
end;

procedure TvcmBaseOperationsCollectionItem.ChangeName(const anOld, aNew: AnsiString);
  //override;
  {* - ���������� ��� ��������� �����. }
begin
 inherited;
 f_OperationID := MakeID(aNew);
end;

function TvcmBaseOperationsCollectionItem.pm_GetOptions: TvcmOperationOptions;
  {-}
begin
 if (f_Options = []) then
 begin
  Result := GetDefaultOptions;
  {$IfNDef DesignTimeLibrary}
  f_Options := Result;
  {$EndIf  DesignTimeLibrary}
 end//f_Options = []
 else
  Result := f_Options;
end;

procedure TvcmBaseOperationsCollectionItem.pm_SetOptions(aValue: TvcmOperationOptions);
begin
 if (Options <> aValue) then
 begin
  if (OperationType in vcm_HiddenOperations) then
   if (aValue <> []) then
    Exit;
  f_Options := aValue;
 end;//Options <> aValue
end;

function TvcmBaseOperationsCollectionItem.SomePropStored: Boolean;
  {-}
begin
 Result := OperationTypeStored OR GroupIDStored OR
           IsDefaultStored or vcmHasSetEvent(Self){ OR
           (ExcludeUserTypes <> [])};
end;

function TvcmBaseOperationsCollectionItem.GetDefaultOptions: TvcmOperationOptions;
  {-}
var
 l_Owner : TObject;
begin
 if (OperationType in vcm_HiddenOperations) then
  Result := []
 else
 if IsLinkedToModule then
  Result := []
 else
  if Handled([vcm_htGlobal, vcm_htControl]) then
  begin
   Result := vcm_DefaultOperationOptions;
   if (Collection <> nil) then
   begin
    l_Owner := Collection.Owner;
    if (l_Owner Is TvcmEntitiesCollectionItem) then
    begin
     // - ��� �������� ��������
     if (TvcmEntitiesCollectionItem(l_Owner).Controls <> nil) AND
        not TvcmEntitiesCollectionItem(l_Owner).Controls.LinkedToForm then
     begin
      // - �������� ��������� � ��������, � �� � ����� �������
      Exclude(Result, vcm_ooShowInMainToolbar);
      Exclude(Result, vcm_ooShowInMainMenu);
     end;//not TvcmEntitiesCollectionItem(l_Owner).Controls.LinkedToForm
    end;//l_Owner Is TvcmEntitiesCollectionItem
   end;//Collection <> nil
   if IsHandledToControl then
   begin
    Exclude(Result, vcm_ooShowInChildToolbar);
    Exclude(Result, vcm_ooShowInChildMenu);
   end;//HandledOnlyByControl
  end//Assigned(f_OnExecute)
  else
   if Handled([vcm_htContext]) then
    Result := [vcm_ooShowInContextMenu]
   else
    Result := [];
end;

function TvcmBaseOperationsCollectionItem.pm_GetOperationDef: IvcmOperationDef;
  {-}
begin
 if (Name = '') then
  // - ����� ���� - ������ �� �������� ������ ��������������� ���� ������� ������
  Result := nil
 else
 begin
  if (f_OpDef = nil) then
   f_OpDef := TvcmBaseOperationDef.Make(Self);
  Result := f_OpDef;
 end;//Name = ''
end;

{$IfNDef DesignTimeLibrary}
function TvcmBaseOperationsCollectionItem.pm_GetCategory: AnsiString;
  {-}
var
 l_Collection : TCollection;
 l_Owner      : TPersistent;
begin
 Result := '';
 l_Collection := Collection;
 if (l_Collection <> nil) then begin
  l_Owner := l_Collection.Owner;
  if (l_Owner <> nil) then
  begin
   if (GetPropInfo(l_Owner, 'Caption') <> nil) then
    Result := GetStrProp(l_Owner, 'Caption')
   else
   if (l_Owner Is TvcmCustomModuleDef) then
    Result := vcmStr(TvcmCustomModuleDef(l_Owner).ModuleDef.Caption);
  end;//l_Owner <> nil
 end;//l_Collection <> nil
end;
{$EndIf DesignTimeLibrary}

function TvcmBaseOperationsCollectionItem.pm_GetGroupID: Integer;
  //virtual;
  {-}
begin
 Result := f_GroupID;
end;

procedure TvcmBaseOperationsCollectionItem.pm_SetGroupID(aValue: Integer);
  //virtual;
  {-}
begin
 f_GroupID := aValue;
end;

function TvcmBaseOperationsCollectionItem.GroupIDStored: Boolean;
  //virtual;
  {-}
begin
 Result := (f_GroupID > 0);
end;

function TvcmBaseOperationsCollectionItem.pm_GetOperationType: TvcmOperationType;
  //virtual;
  {-}
begin
 Result := f_OperationType;
end;

procedure TvcmBaseOperationsCollectionItem.pm_SetOperationType(aValue: TvcmOperationType);
  //virtual;
  {-}
begin
 f_OperationType := aValue;
end;

function TvcmBaseOperationsCollectionItem.OperationTypeStored: Boolean;
  //virtual;
  {-}
begin
 Result := (f_OperationType <> vcm_otButton);
end;

function TvcmBaseOperationsCollectionItem.pm_GetExcludeUserTypes: TvcmEffectiveUserTypes;
  //virtual;
  {-}
begin
 Result := [];
end;

procedure TvcmBaseOperationsCollectionItem.pm_SetExcludeUserTypes(aValue: TvcmEffectiveUserTypes);
  //virtual;
  {-}
begin
end;

procedure TvcmBaseOperationsCollectionItem.ChangeCaption(const anOld, aNew: AnsiString);
  //override;
  {* - ���������� ��� ��������� ����������������� �����. }
begin
 inherited;
 {$IfDef DesignTimeLibrary}
 vcmGetID(vcm_repOperationCaption, aNew);
 {$EndIf DesignTimeLibrary}
end;

function TvcmBaseOperationsCollectionItem.pm_GetStates: TvcmBaseOperationStates;
  //virtual;
begin
 Result := f_States; 
end;

procedure TvcmBaseOperationsCollectionItem.pm_SetStates(aValue: TvcmBaseOperationStates);
  {-}
begin
 States.Assign(aValue);
end;

function TvcmBaseOperationsCollectionItem.pm_GetLinked: Boolean;
  //virtual;
  {-}
begin
 Result := false;
end;

function TvcmBaseOperationsCollectionItem.IsHandledToControl: Boolean;
  {* - �������� ������������ �����������. }
begin
 Result := Handled([vcm_htControl]) and not Handled([vcm_htGlobal,
  vcm_htContext]);
end;

procedure TvcmBaseOperationsCollectionItem.pm_SetLinked(aValue: Boolean);
  //virtual;
  {-}
begin
end;

procedure TvcmBaseOperationsCollectionItem.pm_SetState(const aValue: TvcmOperationStateIndex);
  {-}
begin
 if (f_State.rID <> aValue.rID) then
 begin
  if (aValue.rID >= vcm_DefaultOperationState.rID) AND (aValue.rID < States.Count) then
  begin
   f_State := aValue;
  end;//aValue >= vcm_DefaultOperationState..
 end;//f_State <> aValue
end;

function TvcmBaseOperationsCollectionItem.pm_GetCurrentState: TvcmBaseOperationState;
  {-}
begin
 if (f_State.rID = vcm_DefaultOperationState.rID) then
  Result := nil
 else
  Result := TvcmBaseOperationState(States.Items[f_State.rID]);
end;

procedure TvcmBaseOperationsCollectionItem.OnSecondaryShortCutsChange(Sender: TObject);
  {-}
begin
 SetShortCuts(ShortCut, SecondaryShortCuts);
end;

class procedure TvcmBaseOperationsCollectionItem.ResetShortCutHandler(var aValue: TShortCut;
 aCommandID: Word);
  {-}
var
 l_Controller : TOvcController;
 l_Key        : Word;
 l_Shift      : TShiftState;
begin
 if (aValue <> 0) then
 begin
  l_Controller := GetDefController;
  if Assigned(l_Controller) then
   with l_Controller.EntryCommands do
   begin
    if GetCommandTableIndex(c_vcmTableName) < 0 then
     CreateCommandTable(c_vcmTableName, true);
    if (aCommandID = 0) then
    begin
     ShortCutToKey(aValue, l_Key, l_Shift);
     DeleteCommand(c_vcmTableName, l_Key, vcmByteShift(l_Shift), 0, 0);
    end
    else
    begin
     ShortCutToKey(aValue, l_Key, l_Shift);
     try
      AddCommand(c_vcmTableName, l_Key, vcmByteShift(l_Shift), 0, 0, aCommandID);
     except
      aValue := 0;
     end;//try..except
    end;//aCommandID = 0
   end;//l_Controller.EntryCommands
 end;//aValue <> 0
end;

function TvcmBaseOperationsCollectionItem.IsLinkedToModule: Boolean;
  {-}
begin
 Result := false;
 if Assigned(Collection) then
  if (Collection.Owner is TvcmModulesCollectionItem) then
   Result := true
  else
  if (Collection.Owner is TvcmBaseEntitiesCollectionItem) then
   Result := false
  else
  if (Collection.Owner is TvcmCustomModuleDef) then
   with TvcmCustomModuleDef(Collection.Owner) do
    if Assigned(Owner) and (Owner is TvcmModule) then
      Result := true;
end;

function TvcmBaseOperationsCollectionItem.ParentID: Integer;
  {-}
begin
 Result := 0;
 if Assigned(Collection) then
  if (Collection.Owner is TvcmModulesCollectionItem) then
   with TvcmModulesCollectionItem(Collection.Owner) do
    Result := -ModuleID
  else
  if (Collection.Owner is TvcmBaseEntitiesCollectionItem) then
   with TvcmBaseEntitiesCollectionItem(Collection.Owner) do
    Result := EntityID
  else
  if (Collection.Owner is TvcmCustomModuleDef) then
   with TvcmCustomModuleDef(Collection.Owner) do
    if Assigned(Owner) and (Owner is TvcmModule) then
     with TvcmModule(Owner) do
      Result := -ID;
end;

function TvcmBaseOperationsCollectionItem.ControllerCommand: Word;
var
 l_ParentID : Integer;
begin
 Result := 0;
 l_ParentID := ParentID;
 if (l_ParentID > 0) then
  Result := vcmCommandID(l_ParentID, false, OperationID)
 else
 if (l_ParentID < 0) then
  Result := vcmCommandID(-l_ParentID, true, OperationID)
 else
  Assert(false, '�������� �� ��������� �� � ��������, �� � ������');
end;

function TvcmBaseOperationsCollectionItem.GetLinkedAction: TvcmAction;
  {* - Action � �������� ��������� ��������. }
begin
 Result := nil;
 if Assigned(Collection) then
  if (Collection.Owner is TvcmModulesCollectionItem) then
   with TvcmModulesCollectionItem(Collection.Owner) do
    Result := TvcmModuleAction.Make(Dispatcher.GetModuleByID(ModuleID).ModuleDef, OperationDef)
  else
  if (Collection.Owner is TvcmBaseEntitiesCollectionItem) then
   with TvcmBaseEntitiesCollectionItem(Collection.Owner) do
    Result := TvcmEntityAction.Make(EntityDef, OperationDef)
  else
  if (Collection.Owner is TvcmCustomModuleDef) then
   with TvcmCustomModuleDef(Collection.Owner) do
    if Assigned(Owner) and (Owner is TvcmModule) then
     with TvcmModule(Owner) do
      Result := TvcmModuleAction.Make(GetModuleDef, OperationDef);
end;

function TvcmBaseOperationsCollectionItem.pm_GetVisibleToUser: Boolean;
begin
 if f_VisibleToUser = -1 then
  if (Caption <> '') AND
     (OperationType in vcmToolbarOpTypes) then
   f_VisibleToUser := 1
  else
   f_VisibleToUser := 0;
 Result := f_VisibleToUser > 0;
end;

function TvcmBaseOperationsCollectionItem.Handled(aTypes: TvcmHandleTypes): Boolean;
var
 l_Index : Integer;
begin
 {$IfNDef DesignTimeLibrary}
 Result := ((vcm_htGlobal in aTypes) and Assigned(f_OnExecute)) or
           ((vcm_htContext in aTypes) and Assigned(f_OnContextExecute));
 {$Else  DesignTimeLibrary}
 Result := ((vcm_htGlobal in aTypes) and (GetMethodProp(Self, 'OnExecute').Code <> nil)) or
           ((vcm_htContext in aTypes) and (GetMethodProp(Self, 'OnContextExecute').Code <> nil));
 {$EndIf DesignTimeLibrary}

 if not Result and (vcm_htControl in aTypes) and
    ((Controls <> nil) AND (Controls.Count > 0)) then
  for l_Index := 0 to Pred(Controls.Count) do
   if Assigned(TvcmActiveControlsCollectionItem(Controls.Items[l_Index]).OnExecute) then
   begin
    Result := True;
    break;
   end;
end;

procedure TvcmBaseOperationsCollectionItem.ReplaceShortCuts(
  aShortCut: TShortCut; aSecondaryShortCuts: {$IfDef XE}TCustomShortCutList{$Else}TShortCutList{$EndIf});
begin
 SetShortCuts(aShortCut, TShortCutList(aSecondaryShortCuts));
end;

procedure TvcmBaseOperationsCollectionItem.StoreDesignTimeShortcuts;
begin
 f_SaveShortcut := Shortcut;
 f_SaveSecondaryShortcuts := SecondaryShortCuts.Text;
end;

function TvcmBaseOperationsCollectionItem.IsDefaultStored: Boolean;
begin
 Result := (f_IsDefault <> False);
end;

function TvcmBaseOperationsCollectionItem.pm_GetIsDefault: Boolean;
begin
 Result := f_IsDefault;
end;

procedure TvcmBaseOperationsCollectionItem.pm_SetIsDefault(
  const aValue: Boolean);
begin
 f_IsDefault := aValue;
end;

function TvcmBaseOperationsCollectionItem.pm_GetContextMenuWeight: Integer;
begin
 Result := f_ContextMenuWeight;
end;

procedure TvcmBaseOperationsCollectionItem.pm_SetContextMenuWeight(aValue : Integer);
begin
 f_ContextMenuWeight := aValue;
end;

end.

